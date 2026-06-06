import axios from "axios";
import FormData from "form-data";
import dotenv from 'dotenv';


dotenv.config(); // <-- loads .env into process.env


// Debug your environment variables
console.log('MAILGUN_DOMAIN:', process.env.MAILGUN_DOMAIN);
console.log('MAILGUN_API_KEY length:', process.env.MAILGUN_API_KEY?.length);
console.log('SENDER_EMAIL:', process.env.EMAIL_USER);

const testEmail = async (to, subject, htmlContent) => {
  const form = new FormData();
  form.append("from", `Richfield <${process.env.EMAIL_USER}>`);
  form.append("to", to);
  form.append("subject", subject);
  form.append("html", htmlContent);

  try {
    const res = await axios.post(
      `https://api.mailgun.net/v3/${process.env.MAILGUN_DOMAIN}/messages`,
      form,
      {
        auth: { username: "api", password: process.env.MAILGUN_API_KEY },
        headers: { ...form.getHeaders() },
      }
    );
    console.log(`✅ Email sent successfully to: ${to}`);
    return res.data;
  } catch (err) {
    console.error("❌ Mailgun error response:", err.response?.data || err.response || err);
    throw new Error(`Failed to send email to ${to}`);
  }
};

// Call the function with test values
testEmail(
  "ogidimoses3@gmail.com", 
  "be a good boy", 
  "<p>This is a test email from Mailgun setup.</p>"
);
