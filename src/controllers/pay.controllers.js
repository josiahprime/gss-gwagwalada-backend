import crypto from "crypto";
import {generateTrackingID} from '../lib/trackingId.js'
import { createAdminAlert } from "../lib/adminAlert.js";
import { paystackInitSchema } from "../validations/paystackInitValidation.js";
import axios from "axios";
import { v4 as uuidv4 } from "uuid";
import { addBusinessDays } from "../utils/addBusinessDays.js";
import { DEFAULT_DELIVERY_WINDOW } from "../lib/lib/shippingConfig.js";
import { prisma } from "../lib/prisma.js";
import dotenv from "dotenv";


dotenv.config();

const PAYSTACK_SECRET_KEY = process.env.PAYSTACK_SECRET_KEY;
if (!PAYSTACK_SECRET_KEY) {
  throw new Error("PAYSTACK_SECRET_KEY is not set in environment variables.");
}

const FRONTEND_URL = process.env.FRONTEND_URL;
if (!FRONTEND_URL) {
  throw new Error("FRONTEND_URL is not set in environment variables.");
}



export const paystackInitialize = async (req, res) => {
  // console.log("📢 Incoming request to Paystack initialize:", JSON.stringify(req.body, null, 2));

  const { error } = paystackInitSchema.validate(req.body);
  if (error) {
    console.error("❌ Joi Validation Error:", error.details);
    return res.status(400).json({ message: "Validation failed", details: error.details });
  }

  const {
    name, email, phone, address, state, city, postalCode,
    landmark, extraInstructions, pickupStation, deliveryType, items,
  } = req.body;

  try {
    const user = await prisma.user.findUnique({ where: { id: req.user.id } });
    if (!user) return res.status(404).json({ message: "User not found" });

    // Validate state + city from database
    const validLocation = await prisma.shippingRate.findFirst({
      where: {
        state: { equals: state, mode: 'insensitive' },
        city: { equals: city, mode: 'insensitive' }
      }
    });

    console.log(validLocation)


    if (!validLocation) {
      return res.status(400).json({
        message: `Invalid location: ${city} is not under ${state}.`
      });
    }


    // Fetch product prices in one go
    const productIds = items.map(i => i.productId);
    const products = await prisma.product.findMany({
      where: { id: { in: productIds } },
      select: { id: true, productName: true, images: true, priceInKobo: true, discount: true },
    });

    // console.log('products from paystack initialize',products)


    let subtotal = 0;
    const now = new Date();

    let finalPrices = {};
    for (const item of items) {
      const product = products.find(p => p.id === item.productId);
      if (!product) {
        console.warn(`Product not found for ID: ${item.productId}`);
        continue;
      }
      

      let price = product.priceInKobo;

      // Apply discount if product has one
      const discount = product.discount;

      if (discount) {
        // Check if discount is active and within date range
        const withinDate =
          (!discount.startDate || now >= discount.startDate) &&
          (!discount.endDate || now <= discount.endDate);

        if (discount.isActive && withinDate) {
          if (discount.type === "PERCENTAGE") {
            price = Math.round(price - price * (discount.value / 100));
          } else if (discount.type === "FIXED") {
            price = Math.max(0, price - discount.value);
          }

          console.log(
            `💸 Applied discount on ${item.productId}: ₦${price} after discount`
          );
        }
      }

      // Save this price to use later
      finalPrices[item.productId] = price;

      // Multiply by quantity and add to subtotal
      subtotal += price * item.quantity;
      console.log(`🛍 Product ${item.productId}: ₦${price} x ${item.quantity}`);
    }

    console.log("Subtotal (after discounts):", subtotal);


    // 🧮 Tax calculation
    const taxRate = 0.075;
    const taxAmount = parseFloat((subtotal * taxRate).toFixed(2));
    console.log("Tax amount:", taxAmount);

    // 🚚 Shipping
    let shippingFee = 0;


    if (deliveryType === "home") {
      const shippingRate = validLocation; 
      shippingFee = subtotal > 50000 ? 0 : shippingRate.fee;
    }


    // 💰 Final total
    const total = subtotal + taxAmount + shippingFee;
    const amount = total;
    console.log("🧾 Final total before sending to Paystack:", total);

    // ✅ 7. Generate refs
    // const tx_ref = `TX-${Date.now()}`;
    const tx_ref = `TX-${uuidv4()}-${Date.now()}`;
    const trackingId = `TRK-${Math.random().toString(36).substring(2, 15)}`;
    const fullAddress = [address, landmark, city, state, postalCode]
    .filter(Boolean)
    .join(", ");


    // Estimated Delivery Logic
    const estimatedStart = addBusinessDays(now, DEFAULT_DELIVERY_WINDOW.minDays);
    const estimatedEnd = addBusinessDays(now, DEFAULT_DELIVERY_WINDOW.maxDays);



     // ✅ 8. Save order
    await prisma.$transaction(async (trx) => {
      // 1. Fetch full product data WITH stock for order item details (price, name, images, discount, stock)
      const stockProducts = await trx.product.findMany({
        where: { id: { in: productIds } },
        select: {
          id: true,
          productName: true,
          images: true,
          priceInKobo: true,
          discount: true,
          stock: true,
          reserved: true,
          unitType: true,
        },
      });

      // map for quick lookup
      const productMap = new Map(stockProducts.map(p => [p.id, p]));

      // 2. Try to atomically reserve stock per item using a single UPDATE ... RETURNING
      // If any reservation fails (no row returned), throw OUT_OF_STOCK and rollback entire transaction
      for (const cartItem of items) {
        const product = productMap.get(cartItem.productId);
        if (!product) {
          throw new Error(`PRODUCT_NOT_FOUND:${cartItem.productId}`);
        }

        if (!Number.isInteger(cartItem.quantity) || cartItem.quantity <= 0) {
          throw new Error(`INVALID_QUANTITY:${cartItem.productId}`);
        }

        // Atomic update: increment reserved only if available stock >= quantity
        // Using parameterized prisma.$queryRaw tagged template to avoid SQL injection.
        const updated = await trx.$queryRaw`
          UPDATE "Product"
          SET "reserved" = "reserved" + ${cartItem.quantity}
          WHERE "id" = ${cartItem.productId} AND (("stock" - "reserved") >= ${cartItem.quantity})
          RETURNING "id", "stock", "reserved";
        `;

        // $queryRaw returns an array of rows. If empty, reservation failed.
        if (!Array.isArray(updated) || updated.length === 0) {
          // Determine a friendly product name for error message (if available)
          const name = product.productName || cartItem.productId;
          throw new Error(`OUT_OF_STOCK:${name}`);
        }

        // Optional: update local productMap reserved value so subsequent logic can read it if needed
        product.reserved = product.reserved + cartItem.quantity;
      }

      // 3. All reservations succeeded — create the order inside the same transaction
      await trx.order.create({
        data: {
          userId: user.id,
          tx_ref,
          trackingId,
          name,
          email,
          phone,
          address: fullAddress,
          state,
          city,
          postalCode,
          landmark,
          pickupStation,
          extraInstructions,
          amount,
          subtotal,
          taxAmount,
          taxRate,
          shippingFee,
          deliveryType,
          total,
          items: items.map(i => {
            const product = productMap.get(i.productId);
            const finalPrice = finalPrices[i.productId]; 
            const originalPrice = product?.priceInKobo || 0;

            return {
              productId: i.productId,
              productName: product?.productName || "Unknown Product",
              image: Array.isArray(product?.images) ? product.images[0] : product?.images,
              originalPriceInKobo: originalPrice,             // store original price
              unitPriceInKobo: finalPrice,                    // store price after discount
              discountAppliedInKobo: Math.max(0, originalPrice - finalPrice), // discount applied safely
              quantity: i.quantity,
              discountId: i.discountId || null,
              unitType: product?.unitType || "default", 
            };
          }),
          expiresAt: new Date(Date.now() + 15 * 60 * 1000), // 15 minutes
          estimatedDeliveryStart: estimatedStart,
          estimatedDeliveryEnd: estimatedEnd,
          status: "pending",
        },
      });

      await createAdminAlert({
        type: "order_created",
        title: "New Order Created",
        message: `New order created (${tx_ref}) for ₦${total.toLocaleString()}`,
        entityId: tx_ref,
      });


    });



    const productUnitTypes = new Map(products.map(p => [p.id, p.unitType]));

    const params = {
      email,
      amount: Math.round(total * 100),
      reference: tx_ref,
      callback_url: `${process.env.FRONTEND_URL}/cart/checkout/payment-verification`,
      metadata: {
        userId: user.id,
        orderRef: tx_ref,
        items: items.map(i => ({
          productId: i.productId,
          quantity: i.quantity,
          discountId: i.discountId || null,
          unitType: productUnitTypes.get(i.productId) || "default",
        })),
        deliveryType,
        referrer: process.env.FRONTEND_URL,
      }
    };


    console.log("💰 Paystack payload:", params);
    // Then continue with your Paystack request logic...
    try {
      const paystackRes = await axios.post(
        "https://api.paystack.co/transaction/initialize",
        params, // params was a JSON string; axios needs an object
        {
          headers: {
            Authorization: `Bearer ${process.env.PAYSTACK_SECRET_KEY}`,
            "Content-Type": "application/json",
          },
        }
      );

      return res.json(paystackRes.data);

    } catch (err) {
      console.error("Paystack init error:", err);

      return res.status(500).json({
        error: "Payment initialization failed",
      });
    }
    
    
  } catch (error) {
    console.error("💥 Error in paystackInitialize:", error);

    if (error.message?.startsWith("OUT_OF_STOCK")) {
      const productName = error.message.split(":")[1];
      return res.status(400).json({
        message: `${productName} just went out of stock. Please update your cart.`
      });
    }

    if (error.message?.startsWith("PRODUCT_NOT_FOUND")) {
      return res.status(400).json({ message: "One of your products no longer exists." });
    }

    if (error.message?.startsWith("INVALID_QUANTITY")) {
      return res.status(400).json({
        success: false,
        message: "Invalid quantity. Please refresh your cart.",
      });
    }



    return res.status(500).json({ message: "Internal server error" });
  }
};


export const webhook = async (req, res) => {
  const signature = req.headers['x-paystack-signature'];
  const hash = crypto
    .createHmac("sha512", process.env.PAYSTACK_SECRET_KEY)
    .update(req.body)
    .digest("hex");

  if (hash !== signature) return res.status(401).send("Invalid signature");

  const payload = JSON.parse(req.body.toString('utf8'));
  const event = payload.event;
  const data = payload.data;

  try {
    const order = await prisma.order.findUnique({
      where: { tx_ref: data.reference }
    });

    if (!order) return res.sendStatus(200);
    if (order.status === "paid") return res.sendStatus(200);

    // Parse items from JSON field
    const items = order.items || [];

    // Failure events: release reserved stock
    if (["charge.failed"].includes(event)) {
      if (order.status === "pending") {
        for (const item of items) {
          await prisma.product.update({
            where: { id: item.productId },
            data: { reserved: { decrement: item.quantity } }
          });
        }

        await prisma.order.update({
          where: { id: order.id },
          data: { status: "failed" }
        });
      }

      await createAdminAlert({
        type: "payment_failed",
        title: "Payment Failed",
        message: `Payment failed for order ${order.tx_ref}`,
        entityId: order.tx_ref,
      });


      return res.sendStatus(200);
    }

    // Success event: deduct stock and reserved, increment sold
    if (event === "charge.success") {
      for (const item of items) {
        await prisma.product.update({
          where: { id: item.productId },
          data: {
            stock: { decrement: item.quantity },
            reserved: { decrement: item.quantity },
            soldCount: { increment: item.quantity }
          }
        });

        if (updatedProduct.stock <= updatedProduct.lowStockThreshold) {
          await createAdminAlert({
            type: "stock_alert",
            title: "Low Stock Alert",
            message: `${updatedProduct.productName} is low on stock (${updatedProduct.stock} left)`,
            entityId: updatedProduct.id,
          });
        }
      }




      await prisma.order.update({
        where: { id: order.id },
        data: { status: "paid", trackingId: order.trackingId || generateTrackingID() }
      });

      await createAdminAlert({
        type: "order_paid",
        title: "Order Paid",
        message: `Order ${order.tx_ref} was successfully paid`,
        entityId: order.tx_ref,
      });



      return res.sendStatus(200);
    }

    return res.sendStatus(200);
  } catch (err) {
    console.error("Webhook error:", err);
    return res.status(500).json({ message: "Internal error" });
  }
};







export const verifyPayment = async (req, res) => {
  const { reference } = req.params;
  console.log("Verifying payment for:", reference);

  try {
    // 1. Fetch order first
    const order = await prisma.order.findUnique({
      where: { tx_ref: reference },
      // include: { items: true }
    });

    if (!order) {
      return res.status(404).json({ message: "Order not found." });
    }

    // 2. If webhook already handled it
    if (order.status === "paid" || order.status === "failed") {
      return res.json({
        status: order.status,
        message: `Order status is ${order.status}`,
        reference,
      });
    }

    // 3. Query Paystack
    const paystackRes = await axios.get(
      `https://api.paystack.co/transaction/verify/${reference}`,
      { headers: { Authorization: `Bearer ${process.env.PAYSTACK_SECRET_KEY}` } }
    );

    const paystackData = paystackRes.data.data;
    const paymentStatus = paystackData.status === "success" ? "paid" : "failed";

    console.log("Paystack returned:", paymentStatus);

    // ===============================
    // IMPORTANT: HANDLE CLEANUP BEFORE STATUS CHANGE
    // ===============================

    if (paymentStatus === "failed") {
      // Release reserved stock since payment failed
      for (const item of order.items) {
        await prisma.product.update({
          where: { id: item.productId },
          data: { reserved: { decrement: item.quantity } }
        });
      }
    }

    if (paymentStatus === "paid") {
      const items = order.items || [];
      // Only increment soldCount if webhook didn’t already do the real work
      for (const item of items) {
        await prisma.product.update({
          where: { id: item.productId },
          data: {
            // stock NOT touched here
            // reserved NOT touched here
            soldCount: { increment: item.quantity }
          },
        });
      }
    }

    // ===============================
    // UPDATE ORDER STATUS LAST
    // ===============================
    await prisma.order.update({
      where: { tx_ref: reference },
      data: { status: paymentStatus },
    });

    return res.json({
      status: paymentStatus,
      message: `Order status is ${paymentStatus}`,
      reference,
    });

  } catch (err) {
    console.error("Error verifying payment:", err);
    return res.status(500).json({ message: "Internal server error" });
  }
};





export const getOrderStatus = async (req, res) => {
  const { tx_ref } = req.query;

  try {
    const order = await prisma.order.findUnique({ where: { tx_ref } });

    if (!order) {
      return res.status(404).json({ message: "Order not found" });
    }

    res.json({ status: order.status, trackingId: order.trackingId });
  } catch (error) {
    console.error("Error fetching order:", error);
    res.status(500).json({ message: "Internal server error" });
  }
};

// where: filters,
//       take: takePlusOne, // Ask for 17 if limit is 16
//       skip: cursor ? 1 : 0,
//       cursor: cursor ? { id: cursor } : undefined,
//       orderBy: { id: "desc" },
//       select: { /* your select fields */ },

