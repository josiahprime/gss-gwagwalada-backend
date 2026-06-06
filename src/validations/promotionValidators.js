import Joi from "joi";

export const promotionSchema = Joi.object({
  badgeText: Joi.string().required(),
  headline: Joi.string().required(),
  description: Joi.string().required(),
    theme: Joi.string()
  .valid("CHRISTMAS", "BLACK_FRIDAY", "VALENTINES", "CUSTOM")
  .required(),
  startDate: Joi.date().iso().required(),
  endDate: Joi.date().iso().greater(Joi.ref("startDate")).required(),
  isActive: Joi.boolean().optional(),
  featureOnHomepage: Joi.boolean().optional(),
  autoDeactivateOnExpire: Joi.boolean().optional(),
  selectedProductIds: Joi.array().items(Joi.string()).optional(),
  bannerImage: Joi.string().optional(),
});
