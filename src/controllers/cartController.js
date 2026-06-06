import { prisma } from "../lib/prisma.js";


// GET /cart
export const getCart = async (req, res) => {
  console.log('📦 We hit get cart route');
  try {
    if (!req.user?.id) {
      return res.status(401).json({ error: "Unauthorized - No user found" });
    }

    const userId = req.user.id;

    const cartItems = await prisma.cartItem.findMany({
      where: { userId },
      include: {
        product: {
          include: {
            images: {
              orderBy: { index: 'asc' },
              select: { url: true },
              take: 1,
            },
            discount: true,
          },
        },
      },
      orderBy: { createdAt: 'asc' },
    });

    const updates = [];
    const now = new Date();

    const refreshedCart = cartItems
      .map(item => {
        const product = item.product;
        if (!product || product.stock === 0) {
          // Remove unavailable product
          updates.push(prisma.cartItem.delete({ where: { id: item.id } }));
          return null;
        }

        let adjustedQuantity = Math.min(item.quantity, product.stock);
        let adjustedPrice = product.priceInKobo;
        let isAdjusted = false;

        // 1️⃣ Adjust quantity if needed
        if (adjustedQuantity !== item.quantity) {
          updates.push(prisma.cartItem.update({
            where: { id: item.id },
            data: { quantity: adjustedQuantity }
          }));
          isAdjusted = true;
        }

        // 2️⃣ Update base price if changed
        if (item.basePriceInKobo !== product.priceInKobo) {
          adjustedPrice = product.priceInKobo;
          updates.push(prisma.cartItem.update({
            where: { id: item.id },
            data: {
              basePriceInKobo: product.priceInKobo,
              priceInKobo: adjustedPrice,
            },
          }));
          isAdjusted = true;
        }

        // 3️⃣ Apply discount if active
        const discount = product.discount;
        const isDiscountActive =
          discount &&
          discount.isActive &&
          (!discount.startDate || now >= discount.startDate) &&
          (!discount.endDate || now <= discount.endDate);

        const discountChanged =
          (discount?.id || null) !== (item.discountAppliedId || null) ||
          (discount?.type || null) !== (item.discountAppliedType || null) ||
          (discount?.value || 0) !== (item.discountAppliedValue || 0);

        if (isDiscountActive && discountChanged) {
          let newPrice = adjustedPrice;

          if (discount.type === "PERCENTAGE") {
            newPrice = Math.round(adjustedPrice - adjustedPrice * (discount.value / 100));
          } else if (discount.type === "FIXED") {
            newPrice = Math.max(0, adjustedPrice - discount.value);
          }

          if (newPrice !== adjustedPrice || item.discountAppliedId !== discount.id) {
            adjustedPrice = newPrice;
            isAdjusted = true;
            updates.push(prisma.cartItem.update({
              where: { id: item.id },
              data: {
                priceInKobo: adjustedPrice,
                discountAppliedId: discount.id,
                discountAppliedType: discount.type,
                discountAppliedValue: discount.value,
              },
            }));
          }
        }

        return {
          id: item.id,
          productId: item.productId,
          userId: item.userId,
          productName: product.productName,
          quantity: adjustedQuantity,
          priceInKobo: adjustedPrice,
          image: product.images[0]?.url || null,
          unitType: product.unitType,
          isAdjusted,
          available: true,
        };
      })
      .filter(Boolean);

    // Log adjustments
    refreshedCart.forEach(item => {
      if (item.isAdjusted) {
        console.log("Adjusted item details:", {
          productName: item.productName,
          quantity: item.quantity,
          priceInKobo: item.priceInKobo,
          originalQuantity: cartItems.find(ci => ci.id === item.id)?.quantity,
          originalPrice: cartItems.find(ci => ci.id === item.id)?.priceInKobo,
        });
      }
    });

    if (updates.length > 0) await Promise.all(updates);

    const adjustedItems = refreshedCart.filter(i => i.isAdjusted).map(i => ({
      productId: i.productId,
      productName: i.productName,
      quantity: i.quantity,
      priceInKobo: i.priceInKobo,
    }));

    res.json({
      items: refreshedCart,
      message: adjustedItems.length
        ? "Some items in your cart were updated due to stock or price changes."
        : null,
      adjustedItems,
    });

  } catch (err) {
    console.error("Get cart error:", err);
    res.status(500).json({ error: "Failed to fetch cart" });
  }
};



export const addToCart = async (req, res) => {
  try {
    if (!req.user?.id) {
      return res.status(401).json({ error: "Unauthorized" });
    }

    const userId = req.user.id;
    const { productId, quantity } = req.body;

    if (!productId || isNaN(quantity)) {
      return res.status(400).json({ error: "Invalid product or quantity" });
    }

    const now = new Date();

    // Fetch product + discount
    const product = await prisma.product.findUnique({
      where: { id: productId },
      include: {
        discount: true
      },
    });

    if (!product) {
      return res.status(404).json({ error: "Product not found" });
    }

    // Determine if discount is active
    const discount = product.discount;
    const isDiscountActive =
      discount &&
      discount.isActive &&
      (!discount.startDate || now >= discount.startDate) &&
      (!discount.endDate || now <= discount.endDate);

    // Compute final price
    let finalPrice = product.priceInKobo;
    if (isDiscountActive) {
      if (discount.type === "PERCENTAGE") {
        finalPrice = Math.round(finalPrice - finalPrice * (discount.value / 100));
      } else if (discount.type === "FIXED") {
        finalPrice = Math.max(0, finalPrice - discount.value);
      }
    }

    // Check existing
    const existing = await prisma.cartItem.findFirst({
      where: { userId, productId },
    });

    let updatedItem;

    if (existing) {
      updatedItem = await prisma.cartItem.update({
        where: { id: existing.id },
        data: {
          quantity: existing.quantity + (quantity || 1),
          basePriceInKobo: product.priceInKobo,
          priceInKobo: finalPrice,
          discountAppliedId: discount?.id || null,
          discountAppliedType: discount?.type || null,
          discountAppliedValue: discount?.value || null
        },
      });
    } else {
      updatedItem = await prisma.cartItem.create({
        data: {
          userId,
          productId,
          quantity: quantity || 1,
          priceInKobo: finalPrice,
          basePriceInKobo: product.priceInKobo,
          discountAppliedId: discount?.id || null,
          discountAppliedType: discount?.type || null,
          discountAppliedValue: discount?.value || null
        },
      });

    }

    res.json(updatedItem);
  } catch (err) {
    console.error("Add to cart error:", err);
    res.status(500).json({ error: "Failed to add to cart" });
  }
};




// PUT /cart/:id
export const updateCartItem = async (req, res) => {
  try {
    const { id } = req.params;
    const { quantity } = req.body;

    if (!req.user || !req.user.id) {
      return res.status(401).json({ error: "Unauthorized - No user found" });
    }

    if (!id || typeof quantity !== "number" || quantity < 1) {
      return res.status(400).json({ error: "Invalid input" });
    }

    const item = await prisma.cartItem.findUnique({ where: { id } });
    if (!item || item.userId !== req.user.id) {
      return res.status(404).json({ error: "Item not found" });
    }

    const updated = await prisma.cartItem.update({
      where: { id },
      data: { quantity },
    });

    res.json(updated);
  } catch (err) {
    console.error("Update cart item error:", err);
    res.status(500).json({ error: "Failed to update item" });
  }
};

// DELETE /cart/:id
export const deleteCartItem = async (req, res) => {
  try {
    if (!req.user || !req.user.id) {
      return res.status(401).json({ error: "Unauthorized - No user found" });
    }

    const { id } = req.params;
    const item = await prisma.cartItem.findUnique({ where: { id } });
    console.log(item)

    console.log("🧩 Checking item ownership...");
    console.log("Item userId:", item?.userId);
    console.log("Request userId:", req.user.id);

    if (!item || item.userId !== req.user.id) {
      return res.status(404).json({ error: "Item not found" });
    }

    await prisma.cartItem.delete({ where: { id } });
    res.json({ message: "Item removed" });
  } catch (err) {
    console.error("Delete cart item error:", err);
    res.status(500).json({ error: "Failed to remove item" });
  }
};

// POST /cart/merge
// export const mergeCart = async (req, res) => {
//   try {
//     if (!req.user || !req.user.id) {
//       return res.status(401).json({ error: "Unauthorized - No user found" });
//     }

//     const userId = req.user.id;
//     const { items } = req.body;

//     if (!Array.isArray(items) || items.length === 0) {
//       return res.status(400).json({ error: "No cart items to merge" });
//     }

//     for (const { productId, quantity } of items) {
//       if (!productId || typeof quantity !== "number" || quantity < 1) continue;

//       const productExists = await prisma.product.findUnique({ where: { id: productId } });
//       if (!productExists) continue;

//       const existing = await prisma.cartItem.findFirst({
//         where: { userId, productId },
//       });

//       if (existing) {
//         await prisma.cartItem.update({
//           where: { id: existing.id },
//           data: { quantity: existing.quantity + quantity },
//         });
//       } else {
//         await prisma.cartItem.create({
//           data: { userId, productId, quantity },
//         });
//       }
//     }

//     const updatedCart = await prisma.cartItem.findMany({
//       where: { userId },
//       include: { product: true },
//     });

//     console.log(updatedCart)
//     res.json(updatedCart);
//   } catch (err) {
//     console.error("Merge cart error:", err);
//     res.status(500).json({ error: "Failed to merge cart" });
//   }
// };


// DELETE /cart/clear
export const clearCart = async (req, res) => {
    console.log('trying to clear cart')
  try {
    if (!req.user || !req.user.id) {
      return res.status(401).json({ error: "Unauthorized - No user found" });
    }

    const userId = req.user.id;

    await prisma.cartItem.deleteMany({
      where: { userId },
    });

    res.json({ message: "Cart cleared" });
  } catch (err) {
    console.error("❌ Clear cart error:", err);
    res.status(500).json({ error: "Failed to clear cart" });
  }
};

// POST /cart/merge
export const mergeCart = async (req, res) => {
  try {
    if (!req.user || !req.user.id) {
      return res.status(401).json({ error: "Unauthorized - No user found" });
    }

    const userId = req.user.id;
    const { items } = req.body; // guest cart items

    if (!Array.isArray(items) || items.length === 0) {
      return res.status(400).json({ error: "No cart items to merge" });
    }

    // Step 1️⃣ Merge guest items into user's cart
    for (const { productId, quantity } of items) {
      if (!productId || typeof quantity !== "number" || quantity < 1) continue;

      const productExists = await prisma.product.findUnique({ where: { id: productId } });
      if (!productExists) continue;

      const existing = await prisma.cartItem.findFirst({ where: { userId, productId } });

      if (existing) {
        await prisma.cartItem.update({
          where: { id: existing.id },
          data: { quantity: existing.quantity + quantity },
        });
      } else {
        await prisma.cartItem.create({
          data: { userId, productId, quantity },
        });
      }
    }

    // Step 2️⃣ Fetch all cart items for user after merge
    const cartItems = await prisma.cartItem.findMany({
      where: { userId },
      include: {
        product: {
          include: {
            images: { select: { url: true }, take: 1 },
            discount: true,
          },
        },
      },
      orderBy: { createdAt: "asc" },
    });

    const updates = [];
    const now = new Date();

    // Step 3️⃣ Adjust items like getCart
    const refreshedCart = cartItems
      .map((item) => {
        const product = item.product;

        if (!product) {
          updates.push(prisma.cartItem.delete({ where: { id: item.id } }));
          return null;
        }

        let adjustedQuantity = item.quantity;
        let adjustedPrice = product.priceInKobo;
        let isAdjusted = false;

        // Stock adjustments
        if (product.stock === 0) {
          updates.push(prisma.cartItem.delete({ where: { id: item.id } }));
          return null;
        }
        if (product.stock < item.quantity) {
          adjustedQuantity = product.stock;
          updates.push(
            prisma.cartItem.update({
              where: { id: item.id },
              data: { quantity: adjustedQuantity },
            })
          );
          isAdjusted = true;
        }

        // Price adjustments
        if (item.priceInKobo !== product.priceInKobo) {
          adjustedPrice = product.priceInKobo;
          updates.push(
            prisma.cartItem.update({
              where: { id: item.id },
              data: { priceInKobo: adjustedPrice },
            })
          );
          isAdjusted = true;
        }

        // Discount adjustments
        const discount = product.discount;
        const isDiscountActive =
          discount &&
          discount.isActive &&
          (!discount.startDate || now >= discount.startDate) &&
          (!discount.endDate || now <= discount.endDate);

        const discountChanged =
          (discount?.id || null) !== (item.discountAppliedId || null) ||
          (discount?.type || null) !== (item.discountAppliedType || null) ||
          (discount?.value || 0) !== (item.discountAppliedValue || 0);

        if (isDiscountActive && discountChanged) {
          if (discount.type === "PERCENTAGE") {
            adjustedPrice = Math.round(adjustedPrice - adjustedPrice * (discount.value / 100));
          } else if (discount.type === "FIXED") {
            adjustedPrice = Math.max(0, adjustedPrice - discount.value);
          }

          isAdjusted = true;

          updates.push(
            prisma.cartItem.update({
              where: { id: item.id },
              data: {
                priceInKobo: adjustedPrice,
                discountAppliedId: discount.id,
                discountAppliedType: discount.type,
                discountAppliedValue: discount.value,
              },
            })
          );
        }

        return {
          id: item.id,
          productId: item.productId,
          userId: item.userId,
          productName: product.productName,
          quantity: adjustedQuantity,
          priceInKobo: adjustedPrice,
          image: product.images[0]?.url || null,
          unitType: product.unitType,
          isAdjusted,
        };
      })
      .filter(Boolean);

    // Execute all updates in parallel
    if (updates.length > 0) await Promise.all(updates);

    const hasAdjustments = refreshedCart.some((item) => item.isAdjusted);
    const adjustedItems = refreshedCart
      .filter((item) => item.isAdjusted)
      .map((item) => ({
        productId: item.productId,
        productName: item.productName,
        quantity: item.quantity,
        priceInKobo: item.priceInKobo,
      }));

    const adjustmentMessage = hasAdjustments
      ? "Some items in your cart were updated due to stock or price changes."
      : null;

    res.json({
      items: refreshedCart,
      adjustedItems,
      message: adjustmentMessage,
    });
  } catch (err) {
    console.error("Merge cart error:", err);
    res.status(500).json({ error: "Failed to merge cart" });
  }
};


