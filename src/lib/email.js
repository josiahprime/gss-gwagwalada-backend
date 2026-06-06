// emailService.js
import axios from "axios";
import FormData from "form-data";
import dotenv from "dotenv";

dotenv.config();

const MAILGUN_DOMAIN = process.env.MAILGUN_DOMAIN;
const MAILGUN_API_KEY = process.env.MAILGUN_API_KEY;
const SENDER_EMAIL = process.env.EMAIL_USER;
const FRONTEND_URL = process.env.FRONTEND_URL;

const MAILGUN_BASE_URL = `https://api.mailgun.net/v3/${MAILGUN_DOMAIN}/messages`;

// Helper to send transactional emails
export const sendEmail = async (to, subject, htmlContent) => {
  const form = new FormData();

  form.append("from", `Richfield <${SENDER_EMAIL}>`);
  form.append("to", to);
  form.append("subject", subject);
  form.append("html", htmlContent);

  try {
    const res = await axios.post(MAILGUN_BASE_URL, form, {
      auth: {
        username: "api",
        password: MAILGUN_API_KEY,
      },
      headers: {
        ...form.getHeaders(),
      },
    });


    console.log(`✅ Email sent successfully to: ${to}`);
    return res.data;
  } catch (err) {
    const errorMsg =
      err.response?.data?.message ||
      err.response?.statusText ||
      err.message;

    console.error(`❌ Failed to send email to ${to}:`, errorMsg);
    throw new Error(`Failed to send email to ${to}`);
  }
};

// Styled HTML wrapper
const emailWrapper = (title, bodyHtml) => `
  <div style="font-family: Helvetica, Arial, sans-serif; background: #f4f4f7; padding: 40px 0;">
    <div style="max-width: 600px; margin: 0 auto; background: #ffffff; border-radius: 8px; overflow: hidden;">
      <div style="background: #4CAF50; padding: 20px; text-align: center; color: white; font-size: 24px; font-weight: bold;">
        Richfield
      </div>
      <div style="padding: 30px; font-size: 16px; color: #333;">
        <h2>${title}</h2>
        ${bodyHtml}
      </div>
      <div style="padding: 20px; background: #f4f4f7; text-align: center; font-size: 12px; color: #999;">
        © ${new Date().getFullYear()} Richfield. If you didn’t request this, ignore it.
      </div>
    </div>
  </div>
`;

// ✅ Verification email
export const sendVerificationEmail = async (email, verificationToken) => {
  const verificationLink = `${FRONTEND_URL}/verify-email?token=${verificationToken}`;

  const bodyHtml = `
    <p>Thank you for signing up.</p>
    <p style="text-align:center;margin:30px 0;">
      <a href="${verificationLink}"
         style="background:#4CAF50;color:white;padding:12px 24px;border-radius:4px;text-decoration:none;font-weight:bold;">
         Verify Email
      </a>
    </p>
    <p>This link expires in 24 hours.</p>
  `;

  await sendEmail(
    email,
    "Verify Your Email",
    emailWrapper("Verify Your Email", bodyHtml)
  );

  return true;
};

// ✅ Password reset email
export const sendPasswordResetEmail = async (user, resetToken) => {
  const resetLink = `${FRONTEND_URL}/reset-password?token=${resetToken}`;

  const bodyHtml = `
    <p>Hello ${user.username},</p>
    <p>Click below to reset your password:</p>
    <p style="text-align:center;margin:30px 0;">
      <a href="${resetLink}"
         style="background:#4CAF50;color:white;padding:12px 24px;border-radius:4px;text-decoration:none;font-weight:bold;">
         Reset Password
      </a>
    </p>
  `;

  await sendEmail(
    user.email,
    "Password Reset Request",
    emailWrapper("Password Reset Request", bodyHtml)
  );

  return true;
};

// ✅ Email change verification
export const sendEmailChangeVerification = async (newEmail, verificationToken) => {
  const verificationLink = `${FRONTEND_URL}/verify-new-email?token=${verificationToken}`;

  const bodyHtml = `
    <p>You requested to change your email.</p>
    <p style="text-align:center;margin:30px 0;">
      <a href="${verificationLink}"
         style="background:#4CAF50;color:white;padding:12px 24px;border-radius:4px;text-decoration:none;font-weight:bold;">
         Confirm New Email
      </a>
    </p>
  `;

  await sendEmail(
    newEmail,
    "Confirm Your New Email Address",
    emailWrapper("Confirm Your New Email Address", bodyHtml)
  );

  return true;
};
