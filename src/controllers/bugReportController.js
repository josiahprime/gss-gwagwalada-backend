import { prisma } from "../lib/prisma.js";
import cloudinary from "../lib/cloudinary.js";
import streamifier from "streamifier";
import { bugReportSchema } from "../validations/bugReportValidation.js";
import sharp from "sharp";

// POST /bug-report
export const createBugReport = async (req, res) => {
  try {
    const { error, value } = bugReportSchema.validate(req.body, {
      abortEarly: false,
      stripUnknown: true,
    });

    if (error) {
      return res.status(400).json({ error: error.details.map(d => d.message) });
    }

    const { title, description, steps, severity, contact } = value;

    let fileUrl = null;
    let filePublicId = null;

    if (req.file && req.file.buffer) {
      const compressedBuffer = await sharp(req.file.buffer)
        .resize({ width: 800 })
        .webp({ quality: 80 })
        .toBuffer();

      const result = await new Promise((resolve, reject) => {
        const stream = cloudinary.uploader.upload_stream(
          { folder: "bug_reports", format: "webp" },
          (err, result) => (err ? reject(err) : resolve(result))
        );
        streamifier.createReadStream(compressedBuffer).pipe(stream);
      });

      fileUrl = result.secure_url;
      filePublicId = result.public_id;
    }

    const bugReport = await prisma.bugReport.create({
      data: {
        title,
        description,
        steps: steps || null,
        severity,
        contact: contact || null,
        fileUrl,
        filePublicId,
      },
    });

    return res.status(201).json(bugReport);
  } catch (error) {
    console.error(error);
    return res.status(500).json({ error: "Internal server error" });
  }
};



// GET /bug-report
export const getBugReports = async (req, res) => {
  try {
    const bugs = await prisma.bugReport.findMany({
      orderBy: { createdAt: "desc" },
    });
    console.log(bugs)
    return res.json(bugs);
  } catch (error) {
    console.error(error);
    return res.status(500).json({ error: "Internal server error" });
  }
};

export const updateBugStatus = async (req, res) => {
  try {
    const { id } = req.params;
    const { status } = req.body; // should be "UNRESOLVED" | "IN_PROGRESS" | "RESOLVED"
    console.log(id, status)

    if (!["UNRESOLVED", "IN_PROGRESS", "RESOLVED"].includes(status)) {
      return res.status(400).json({ error: "Invalid status" });
    }

    const updatedBug = await prisma.bugReport.update({
      where: { id: Number(id) },
      data: { status },
    });

    return res.json(updatedBug);
  } catch (error) {
    console.error(error);
    return res.status(500).json({ error: "Internal server error" });
  }
};

