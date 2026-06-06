import Joi from "joi";

// Allowed severity and status values
export const validSeverities = ["low", "medium", "high", "critical"];
export const validStatuses = ["UNRESOLVED", "IN_PROGRESS", "RESOLVED"];

// Joi schema for bug report
export const bugReportSchema = Joi.object({
  title: Joi.string().trim().max(200).required().messages({
    "string.empty": "Title is required",
    "string.max": "Title cannot exceed 200 characters",
  }),
  description: Joi.string().trim().max(2000).required().messages({
    "string.empty": "Description is required",
    "string.max": "Description cannot exceed 2000 characters",
  }),
  steps: Joi.string().trim().allow("").optional(),
  severity: Joi.string()
    .valid(...validSeverities)
    .required()
    .messages({
      "any.only": `Severity must be one of: ${validSeverities.join(", ")}`,
      "string.empty": "Severity is required",
    }),
  status: Joi.string()
    .valid(...validStatuses)
    .optional()
    .messages({
      "any.only": `Status must be one of: ${validStatuses.join(", ")}`,
    }),
  contact: Joi.string()
    .email({ tlds: { allow: false } })
    .allow(null, "")
    .messages({
      "string.email": "Invalid email address",
    }),
  fileUrl: Joi.string().uri().optional(),
  filePublicId: Joi.string().optional(),
});
