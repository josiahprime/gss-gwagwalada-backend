--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES ('d228d64a-614e-4f9d-8d88-1630d6e06ef2', 'Josiah Attah', 'josiahattah0@gmail.com', NULL, 'customer', 'active', 'google', 'https://lh3.googleusercontent.com/a/ACg8ocJoeQaWiKoH9bjLm7f46RdSnCAVMGh9EVa_fit9STLxBb5NeCqO=s96-c', true, NULL, NULL, NULL, '2025-06-07 19:57:24.295', '2025-06-18 20:11:45.15', '115373710281126274875', NULL, NULL, NULL, NULL, NULL, NULL, NULL, false);
INSERT INTO public.users VALUES ('1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'Chouji Akimichi', 'choujiakimichi02@gmail.com', NULL, 'customer', 'active', 'google', 'https://lh3.googleusercontent.com/a/ACg8ocKsBHw3upCaI5iydg4S9Fl5iaHHiEF48f7TcpPtYs4-h-imNG0=s96-c', true, NULL, NULL, NULL, '2025-10-13 08:30:50.892', '2025-10-21 15:09:26.672', '102369865591107655148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, false);
INSERT INTO public.users VALUES ('ff1f0b6c-774a-4b82-acba-2081fe0ba9d9', 'prime codes', 'primecodes69@gmail.com', '$2b$10$m.XdJS0RuboSqTT49x7rP.zbCX.5hIbOXqVdYpUuBE34GW9GV.Pwy', 'customer', 'active', 'local', '', true, NULL, NULL, NULL, '2025-06-08 21:13:55.758', '2025-11-06 10:23:49.835', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false);
INSERT INTO public.users VALUES ('92ca7aba-87f8-43a2-ae74-67f0d026158e', 'starflex', 'ogidimoses3@gmail.com', '$2b$10$A9eXdnX1GGrV.zkqc/YQjueFpj856hEnEKQYHNCCGVCRN3nHPUDfq', 'customer', 'active', 'local', '', false, '2025-12-23 18:50:09.615', '2025-12-24 18:50:09.615', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im9naWRpbW9zZXMzQGdtYWlsLmNvbSIsImlhdCI6MTc2NjUxNTgwNywiZXhwIjoxNzY2NjAyMjA3fQ.fE3gRc_JfMuxU8Vxs_oc-ocJS5t3C1BTdK08ZHMxwmg', '2025-12-23 18:50:09.617', '2025-12-23 18:50:09.617', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true);
INSERT INTO public.users VALUES ('ed64963a-ccd8-4b57-af80-95617043e107', 'deleted_user_ed64963a-ccd8-4b57-af80-95617043e107', 'deleted+ed64963a-ccd8-4b57-af80-95617043e107@example.com', NULL, 'customer', 'deleted', 'local', '', false, NULL, NULL, NULL, '2025-11-15 19:21:46.521', '2025-11-16 07:55:23.168', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false);
INSERT INTO public.users VALUES ('c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'prime', 'bivinslawrence27@gmail.com', '$2b$12$NsnmiauA.SDNX76aTcpFc.5Bo76RFJf5hO4OY7sbQhD1POFvu9NHm', 'admin', 'active', 'local', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1761341739/profile_pics/hj7xttgj7t4vp0c2xidd.webp', true, NULL, NULL, NULL, '2025-06-01 07:08:43.676', '2025-11-25 08:50:59.074', NULL, 'profile_pics/hj7xttgj7t4vp0c2xidd', NULL, NULL, NULL, NULL, '2025-10-06 16:37:45.866', '+2349023773875', false);


--
-- Data for Name: Address; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Address" VALUES ('cmggqn6r40003vqscsrvxjfjr', 'Chouji Akimichi', 'choujiakimichi02@gmail.com', 'FCT', 'Gwagwalada', 'Opposite Lea primary school chukuku', 'lea primary schol chukuku', '902101', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e');


--
-- Data for Name: AdminAlert; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."AdminAlert" VALUES ('b983e696-655f-430a-aa69-978b9bfadf00', 'order_created', 'New order created (TX-8ccfb071-9a34-446b-be00-1e7aca8fcd46-1768336372792) for ₦6,809.88', '2026-01-13 20:32:53.493', false, 'TX-8ccfb071-9a34-446b-be00-1e7aca8fcd46-1768336372792', false, 'New Order Created');
INSERT INTO public."AdminAlert" VALUES ('42d11383-323e-4a26-b5a7-3e499912ccc6', 'order_created', 'New order created (TX-652536c6-64ca-416e-8ea8-ba6e0bfcae84-1781168767179) for ₦3,085.25', '2026-06-11 09:06:09.11', false, 'TX-652536c6-64ca-416e-8ea8-ba6e0bfcae84-1781168767179', false, 'New Order Created');
INSERT INTO public."AdminAlert" VALUES ('d36a9b3a-0ed4-45e4-843d-470d81972e03', 'order_created', 'New order created (TX-610c1079-e238-4567-bcbe-dd9dc0b22007-1781169658691) for ₦3,085.25', '2026-06-11 09:20:58.808', false, 'TX-610c1079-e238-4567-bcbe-dd9dc0b22007-1781169658691', false, 'New Order Created');


--
-- Data for Name: BugReport; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."BugReport" VALUES (1, 'sdfe set', '3 sts4eg5aws4a', 'awa aewr asrt', 'critical', 'choujiakimichi02@gmail.com', NULL, '2025-11-19 14:41:34.848', NULL, 'UNRESOLVED');
INSERT INTO public."BugReport" VALUES (2, 're rhrthr dr', 'szd dcrtrthrstrn', 'w ergsertsrt', 'critical', 'choujiakimichi02@gmail.com', NULL, '2025-11-19 17:50:11.783', NULL, 'UNRESOLVED');
INSERT INTO public."BugReport" VALUES (3, 'wd vgesre', 'sd veff', 'sd vxzsfvfv', 'critical', 'choujiakimichi02@gmail.com', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1763575934/bug_reports/mzwc6jxigvn9eyifpur1.webp', '2025-11-19 18:12:14.857', 'bug_reports/mzwc6jxigvn9eyifpur1', 'IN_PROGRESS');


--
-- Data for Name: Discount; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Discount" VALUES ('fec38a68-b52a-47d6-a9ce-d2d4ca72ceba', 'PERCENTAGE', 11, 'DAILY_2026-06-15_6b3638', true, '2026-06-15 08:49:35.36', '2026-06-16 08:49:35.36', '2026-06-15 08:49:35.362');
INSERT INTO public."Discount" VALUES ('65d35a06-c1bb-48f5-a46f-39df631f9d2f', 'PERCENTAGE', 23, 'DAILY_2026-06-15_8faad4', true, '2026-06-15 08:49:35.359', '2026-06-16 08:49:35.359', '2026-06-15 08:49:35.362');
INSERT INTO public."Discount" VALUES ('80a058dd-5d3d-4653-b27d-a7adae2c9113', 'PERCENTAGE', 25, 'DAILY_2026-06-15_7deb49', true, '2026-06-15 08:49:35.36', '2026-06-16 08:49:35.36', '2026-06-15 08:49:35.362');
INSERT INTO public."Discount" VALUES ('b3a925eb-ac97-4f20-a929-e40c93435fca', 'PERCENTAGE', 7, 'DAILY_2026-06-15_49b64d', true, '2026-06-15 08:49:35.359', '2026-06-16 08:49:35.359', '2026-06-15 08:49:35.362');
INSERT INTO public."Discount" VALUES ('3600e900-d116-42e2-b6c9-959dad36e990', 'PERCENTAGE', 20, 'DAILY_2026-06-15_b78351', true, '2026-06-15 08:49:35.36', '2026-06-16 08:49:35.36', '2026-06-15 08:49:35.362');
INSERT INTO public."Discount" VALUES ('c4a46c73-a658-4072-91a4-4ab807b0841a', 'PERCENTAGE', 9, 'DAILY_2026-06-15_f272bb', true, '2026-06-15 08:49:35.36', '2026-06-16 08:49:35.36', '2026-06-15 08:49:35.362');


--
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Product" VALUES ('025d3854-b55a-4724-a8b7-bdbe4a3e3458', 'Whole Fresh Coconut', 'Naturally refreshing whole coconuts with sweet coconut water and creamy flesh. Perfect for hydration and cooking.', '{Fresh}', 'fresh-produce', 1300, 1, 9, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-10 18:48:21.052', '2026-06-15 21:02:23.904', false, NULL, 'piece', true, '2026-06-15 21:02:23.898', NULL, 'NONE', 'active', NULL, 1, 0, 0, 0, 'HIDDEN');
INSERT INTO public."Product" VALUES ('49b64d48-2213-445e-bcae-1121b06df0d4', 'Crunchy Mixed Snacks', 'A delicious mix of crispy fried snacks including chips, chin chin, and savory bites. Perfect for parties, quick hunger fixes, or emotional eating disguised as productivity.', '{}', 'fresh-produce', 300, 1, 19, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2026-06-14 19:45:14.564', '2026-06-15 21:02:23.904', false, NULL, 'piece', true, '2026-06-15 21:02:23.898', NULL, 'NONE', 'active', 'Snacks', 0, 0, 0, 0, 'VISIBLE');
INSERT INTO public."Product" VALUES ('8faad4d1-d31b-40bb-badd-aa7bad7b4e81', 'Chilled Zobo Drink', 'Refreshing homemade Zobo drink made from hibiscus petals, ginger, and natural spices. Lightly sweetened and served chilled for a rich, tangy, and healthy refreshment.', '{Meat,Organic,Fresh}', 'fresh-produce', 100, 1, 21, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2026-06-14 19:36:50.002', '2026-06-15 21:02:23.904', false, NULL, 'piece', true, '2026-06-15 21:02:23.898', '65d35a06-c1bb-48f5-a46f-39df631f9d2f', 'NONE', 'active', 'Drinks', 0, 0, 0, 0, 'VISIBLE');
INSERT INTO public."Product" VALUES ('a1cc367d-f953-4d9c-8d0b-790e4abde541', 'Fresh Ripe Mangoes', 'Sweet, juicy, and perfectly ripe mangoes. Ideal for snacking, smoothies, desserts, or fresh juice. Naturally rich in vitamins A and C.', '{Fresh,tropical,"vitamin c"}', 'fresh-produce', 2000, 1, 9, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-11-09 17:49:00.112', '2026-06-15 21:02:23.904', false, NULL, 'kg', true, '2026-06-15 21:02:23.898', NULL, 'DAILY_DEAL', 'active', NULL, 1, 0, 0, 0, 'HIDDEN');
INSERT INTO public."Product" VALUES ('9fa3a263-843a-4049-ac15-1705147637d7', 'Fresh Cow Milk', 'Pure, fresh cow milk sourced from healthy, pasture-raised cows. Packed with essential nutrients like calcium, protein, and vitamins for strong bones and overall health. Perfect for drinking, cooking, baking, or making dairy products like yoghurt and cheese. No preservatives or additives.', '{Fresh,"Dairy Products"}', 'Dairy & Eggs', 3735, 1, 9, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-08-04 19:59:31.599', '2026-06-15 21:02:23.904', false, NULL, 'litre', false, NULL, NULL, 'NONE', 'active', NULL, 1, 0, 0, 0, 'HIDDEN');
INSERT INTO public."Product" VALUES ('34426ef4-06ae-4582-9c8e-ebd756b834c0', 'Fresh Spinach', 'Fresh, tender spinach leaves rich in iron, vitamins, and antioxidants. Ideal for salads, smoothies, stir-fries, and soups. Harvested at peak freshness to preserve flavor and nutrients.', '{Fresh}', 'fresh-produce', 2870, 1, 6, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-07-18 08:31:57.634', '2026-06-15 21:02:23.904', false, NULL, 'piece', false, NULL, NULL, 'NONE', 'active', NULL, 1, 0, 0, 0, 'HIDDEN');
INSERT INTO public."Product" VALUES ('f272bb02-2677-4059-aadc-bd36e360236d', 'Elegant Evening Gown', 'Floor-length elegant evening gown designed with a fitted bodice and flowing silhouette. Perfect for weddings, formal events, and special occasions. Made with premium fabric for comfort and style.', '{}', 'fresh-produce', 9500, 1, 9, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2026-06-14 19:18:50.05', '2026-06-15 21:02:23.904', false, NULL, 'piece', true, '2026-06-15 21:02:23.898', 'c4a46c73-a658-4072-91a4-4ab807b0841a', 'DAILY_DEAL', 'active', 'Clothes', 0, 0, 0, 0, 'VISIBLE');
INSERT INTO public."Product" VALUES ('8cca2491-a86d-4299-a75f-fe2856d46634', 'Free Range Eggs', 'Fresh, high-quality eggs from hens raised in open pastures. Rich in flavor, free from hormones and antibiotics.', '{Organic,Fresh,poultry}', 'dairy-eggs', 1750, 1, 7, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-07-18 06:54:25.301', '2026-06-15 21:02:23.904', false, NULL, 'crate', true, '2026-06-15 21:02:23.898', NULL, 'DAILY_DEAL', 'active', NULL, 1, 0, 0, 0, 'HIDDEN');
INSERT INTO public."Product" VALUES ('de0f5a36-66f3-45ce-9ef5-c0ed92695581', 'Elegant Leather Handbag', 'Stylish premium leather handbag designed for everyday elegance. Features a spacious interior, secure zip closure, inner pockets, and durable gold-tone hardware for a refined finish.', '{}', 'fresh-produce', 2870, 1, 16, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2026-06-14 19:09:41.044', '2026-06-15 21:02:23.904', false, NULL, 'piece', false, NULL, NULL, 'DAILY_DEAL', 'active', 'Bagts', 0, 0, 0, 0, 'VISIBLE');
INSERT INTO public."Product" VALUES ('b7835176-40f8-4f7f-93e9-12fb07b393a6', 'Chilled Soft Drink', 'Refreshing carbonated soft drink served chilled. Perfect companion for meals, snacks, and gatherings. Sweet, fizzy, and instantly energizing.', '{}', 'fresh-produce', 250, 1, 34, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2026-06-14 19:33:49.524', '2026-06-15 21:02:23.904', false, NULL, 'piece', false, NULL, '3600e900-d116-42e2-b6c9-959dad36e990', 'NONE', 'active', 'Drinks', 0, 0, 0, 0, 'VISIBLE');
INSERT INTO public."Product" VALUES ('830dfba1-6a7c-450c-a4f1-bfcef582675f', 'groundnuts', 'Freshly harvested groundnuts, rich in protein and healthy fats. Ideal for direct consumption, roasting, oil extraction, or use in various traditional and modern recipes. Sourced from trusted local farms to ensure quality and freshness.', '{Legumes}', 'Crops & Produce', 2870, 1, 9, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-08-04 19:11:58.827', '2026-06-15 21:02:23.904', false, NULL, 'kg', true, '2026-06-15 21:02:23.898', NULL, 'NONE', 'active', NULL, 1, 0, 0, 0, 'HIDDEN');
INSERT INTO public."Product" VALUES ('bed3fe26-eef3-471a-8de1-21a321b23b9e', 'Classic School Backpack', 'Durable and spacious school backpack designed for students. Features multiple compartments, padded shoulder straps, a laptop sleeve, and water-resistant material for everyday use', '{bags}', 'fresh-produce', 5800, 1, 10, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2026-06-14 18:39:11.116', '2026-06-15 21:02:23.904', false, NULL, 'piece', false, NULL, NULL, 'DAILY_DEAL', 'active', 'Bags', 0, 0, 0, 0, 'VISIBLE');
INSERT INTO public."Product" VALUES ('7deb49db-9d7f-461a-b7f1-7160dfe14204', 'Classic Summer Dress', 'Lightweight and stylish summer dress designed for comfort and elegance. Features a breathable fabric, knee-length cut, and a flattering waist fit suitable for casual and semi-formal occasions.', '{}', 'fresh-produce', 2500, 1, 17, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2026-06-14 19:24:51.875', '2026-06-15 21:02:23.904', false, NULL, 'piece', false, NULL, NULL, 'NONE', 'active', 'Clothes', 0, 0, 0, 0, 'VISIBLE');
INSERT INTO public."Product" VALUES ('556255a2-5946-4ea4-b63c-a948f3ee69ed', 'tomatoes', 'Fresh, juicy tomatoes packed with flavor and nutrients. Perfect for salads, sauces, sandwiches, and cooking. Grown without harmful chemicals to preserve natural taste and health benefits.', '{Fresh}', 'perishable', 15370, 1, 90, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-07-18 08:28:13.849', '2026-06-15 21:02:23.904', false, NULL, 'kg', false, NULL, NULL, 'NONE', 'active', NULL, 3, 0, 0, 1, 'HIDDEN');
INSERT INTO public."Product" VALUES ('801766ca-b0e5-40e3-bac1-a1315be66113', 'cherry', 'Juicy, sweet, and freshly handpicked red cherries — perfect for snacking, baking, or blending into smoothies. Packed with natural antioxidants and vitamins.', '{Fresh}', 'fresh-produce', 4500, 1, 8, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-09 22:09:16.777', '2026-06-15 21:02:23.904', false, NULL, 'pack', true, '2026-06-15 21:02:23.898', NULL, 'NEW_ARRIVAL', 'active', NULL, 1, 0, 0, 0, 'HIDDEN');
INSERT INTO public."Product" VALUES ('a61cb6b9-49db-4bb4-bc05-1ccb73150c60', 'corn', 'Freshly picked sweet corn, great for grilling.', '{Fresh,vegetables}', 'fresh-produce', 780, 1, 4, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-07-18 08:53:33.098', '2026-06-15 21:02:23.904', false, NULL, 'piece', false, NULL, NULL, 'DAILY_DEAL', 'active', NULL, 4, 0, 0, 0, 'HIDDEN');
INSERT INTO public."Product" VALUES ('6b3638b2-150b-408c-b446-a276f3050edf', 'Crispy Egg Roll', 'Freshly prepared Nigerian-style egg roll with a soft, fluffy dough exterior and a rich egg center. Deep-fried to golden perfection and ideal as a quick snack or breakfast option.', '{}', 'fresh-produce', 250, 1, 29, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2026-06-14 19:30:08.619', '2026-06-15 21:02:23.904', false, NULL, 'piece', false, NULL, 'fec38a68-b52a-47d6-a9ce-d2d4ca72ceba', 'NONE', 'active', 'Snacks', 0, 0, 0, 0, 'VISIBLE');
INSERT INTO public."Product" VALUES ('42f6b4be-aa26-45d9-b929-61ce0c3ae29b', 'Fresh Organic Carrots', 'Crisp, sweet, and packed with nutrients, our Fresh Organic Carrots are perfect for snacking, juicing, or adding to your favorite recipes. Grown without synthetic pesticides or fertilizers, these carrots deliver farm-fresh flavor you can trust.', '{Fresh}', 'fresh-produce', 570, 1, 8, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-07-20 19:32:53.932', '2026-06-15 21:02:23.904', false, NULL, 'piece', false, NULL, NULL, 'NONE', 'active', NULL, 1, 0, 0, 0, 'HIDDEN');
INSERT INTO public."Product" VALUES ('2a31145a-b9cf-4a4d-b065-1bd544eaf9c6', 'Pure Natural Honey', 'Raw, unprocessed honey harvested from natural bee hives. Rich in antioxidants, enzymes, and antibacterial properties. Ideal for sweetening drinks, baking, skincare, or natural remedies. No additives, preservatives, or artificial sweeteners — just 100% pure honey from trusted local beekeepers.', '{Fresh,Organic}', '"Value-Added', 12350, 1, 0, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-08-04 20:16:57.033', '2026-06-15 21:02:23.904', false, NULL, 'litre', true, '2026-06-15 21:02:23.898', NULL, 'DAILY_DEAL', 'active', NULL, 0, 0, 0, 0, 'HIDDEN');
INSERT INTO public."Product" VALUES ('33bfd50e-7d2b-417f-95fd-a1c2fc73f19b', 'fresh chicken', 'Fresh, tender chicken meat sourced from richfield farms. Perfect for grilling, roasting, frying, or stewing. High in protein and versatile in countless recipes. Available in whole, parts, or fillets, and processed under hygienic conditions to maintain quality and taste.', '{Fresh}', 'meat-poultry', 2870, 1, 1, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-06-25 18:02:57.918', '2026-06-15 21:02:23.904', false, NULL, 'kg', false, NULL, NULL, 'DAILY_DEAL', 'active', NULL, 1, 0, 0, 0, 'HIDDEN');
INSERT INTO public."Product" VALUES ('7173277f-8ebb-4468-aea6-2d02a36910e6', 'Fresh Sweet Oranges', 'Juicy, naturally sweet oranges packed with vitamin C and antioxidants. Perfect for fresh juice, snacking, or adding a citrus twist to your meals.', '{Meat,Organic,Fresh}', 'fresh-produce', 1250, 1, 61, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-15 12:00:13.1', '2026-06-15 21:02:23.904', false, NULL, 'pack', false, NULL, NULL, 'DAILY_DEAL', 'active', NULL, 1, 0, 0, 0, 'HIDDEN');
INSERT INTO public."Product" VALUES ('12a23137-1929-465a-92dd-85eeeb890dbe', 'Fresh Catfish', 'Fresh, high-quality catfish, perfect for grilling, frying, or stews. Sustainably sourced and packed for maximum freshness.', '{Meat,Fresh}', 'fish-seafood', 3549, 1, 19, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-12-22 21:12:35.24', '2026-06-15 21:02:23.904', false, NULL, 'piece', false, NULL, NULL, 'NONE', 'active', 'Fresh Fish', 2, 0, 0, 0, 'HIDDEN');
INSERT INTO public."Product" VALUES ('335e811b-649e-4241-a1d7-832b0d006769', 'Premium Rice', 'Clean, stone-free local rice sourced from Nigerian farms. Naturally grown and processed with minimal polishing to retain its rich taste and nutrients. Ideal for daily meals like jollof rice, fried rice, or plain white rice. Free from chemical preservatives and additives.', '{Grains,Cereals}', 'Grains & Cereals', 1800, 1, 4, 0.1904761904761905, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-08-04 20:37:00.437', '2026-06-15 21:02:23.904', false, NULL, 'kg', false, NULL, NULL, 'NONE', 'active', NULL, 5, 1, 4, 0, 'HIDDEN');
INSERT INTO public."Product" VALUES ('7b01818a-e1b5-4ba5-8b54-1547ceb12e6b', 'Roasted Cashew Nuts', 'Crunchy, lightly salted roasted cashew nuts packed with healthy fats and protein. Perfect for snacking or adding to meals.', '{Fresh}', 'pantry-Sweeteners', 570, 1, 8, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-10 15:47:45.716', '2026-06-15 21:02:23.904', false, NULL, 'pack', true, '2026-06-15 21:02:23.898', NULL, 'NONE', 'active', NULL, 4, 0, 0, 2, 'HIDDEN');
INSERT INTO public."Product" VALUES ('260cd0b5-6d85-4f35-ae84-573165329529', 'cow beef', 'Tender and fresh red beef, sourced from high-quality farms, ideal for cooking hearty meals and stews.', '{beef}', 'perishable', 2870, 1, 5, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-07-18 08:37:57.277', '2026-06-15 21:02:23.904', false, NULL, 'kg', false, NULL, NULL, 'NONE', 'active', NULL, 3, 0, 0, 0, 'HIDDEN');
INSERT INTO public."Product" VALUES ('46430be5-d5bf-4907-98e4-722a98369b06', 'Vanilla Celebration Cake', 'Soft, moist vanilla cake layered with creamy butter frosting. Perfect for birthdays, parties, or anyone who just wants a good slice of sweetness.', '{Fresh}', 'pantry-sweeteners', 8750, 1, 9, 0, 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-11-23 18:44:40.08', '2026-06-15 21:02:23.904', false, NULL, 'piece', false, NULL, NULL, 'NONE', 'active', 'Cakes', 1, 0, 0, 0, 'HIDDEN');


--
-- Data for Name: CartItem; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."CartItem" VALUES ('16987304-3b2f-4f84-9f16-23469c93bc0a', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '8faad4d1-d31b-40bb-badd-aa7bad7b4e81', 1, '2026-06-15 09:43:56.682', '2026-06-15 10:13:12.075', 77, '65d35a06-c1bb-48f5-a46f-39df631f9d2f', 'PERCENTAGE', 23, 100);
INSERT INTO public."CartItem" VALUES ('12d7f766-2e3d-4d6e-bc32-3b88906ce0bd', 'ff1f0b6c-774a-4b82-acba-2081fe0ba9d9', 'a61cb6b9-49db-4bb4-bc05-1ccb73150c60', 1, '2025-11-19 07:14:00.971', '2026-01-09 14:17:16.856', 780, NULL, NULL, NULL, 780);
INSERT INTO public."CartItem" VALUES ('f48f56e8-a21b-41a5-ba3e-c3757cf236a9', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '6b3638b2-150b-408c-b446-a276f3050edf', 1, '2026-06-15 09:44:01.188', '2026-06-15 09:44:01.188', 223, 'fec38a68-b52a-47d6-a9ce-d2d4ca72ceba', 'PERCENTAGE', 11, 250);
INSERT INTO public."CartItem" VALUES ('45af1981-1976-4686-a662-ab1a1181bf2e', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '7deb49db-9d7f-461a-b7f1-7160dfe14204', 1, '2026-06-15 09:44:11.632', '2026-06-15 09:47:20.062', 2500, '80a058dd-5d3d-4653-b27d-a7adae2c9113', 'PERCENTAGE', 25, 2500);
INSERT INTO public."CartItem" VALUES ('6f999fab-fb30-4da3-99fc-4d7dc586992c', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'de0f5a36-66f3-45ce-9ef5-c0ed92695581', 1, '2026-06-15 10:12:30.275', '2026-06-15 10:12:30.275', 2440, '46d74c27-3cfe-4677-88e3-e5975fea8e7a', 'PERCENTAGE', 15, 2870);
INSERT INTO public."CartItem" VALUES ('76911ba1-22cd-4eea-a31e-9709392cb82d', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'b7835176-40f8-4f7f-93e9-12fb07b393a6', 1, '2026-06-15 10:12:42.829', '2026-06-15 10:12:42.829', 200, '3600e900-d116-42e2-b6c9-959dad36e990', 'PERCENTAGE', 20, 250);


--
-- Data for Name: DailyDeal; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."DailyDeal" VALUES ('7173277f-8ebb-4468-aea6-2d02a36910e6', '2025-10-16 19:55:44.948', '2025-10-16 19:56:30.207', '2025-10-16 23:00:00', 222);
INSERT INTO public."DailyDeal" VALUES ('33bfd50e-7d2b-417f-95fd-a1c2fc73f19b', '2025-10-16 19:55:44.948', '2025-10-16 19:56:30.282', '2025-10-16 23:00:00', 223);
INSERT INTO public."DailyDeal" VALUES ('a61cb6b9-49db-4bb4-bc05-1ccb73150c60', '2025-10-16 19:55:44.948', '2025-10-16 19:56:30.285', '2025-10-16 23:00:00', 224);
INSERT INTO public."DailyDeal" VALUES ('2a31145a-b9cf-4a4d-b065-1bd544eaf9c6', '2025-10-16 19:55:44.948', '2025-10-16 19:56:30.292', '2025-10-16 23:00:00', 225);
INSERT INTO public."DailyDeal" VALUES ('8cca2491-a86d-4299-a75f-fe2856d46634', '2025-10-16 19:55:44.948', '2025-10-16 19:56:30.298', '2025-10-16 23:00:00', 226);


--
-- Data for Name: DailyTaskTracker; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."DailyTaskTracker" VALUES (1, '2026-06-15 08:49:35.696');


--
-- Data for Name: Favorite; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Favorite" VALUES ('9e392913-b1ed-4034-93bf-42b6b28cfb1e', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '46430be5-d5bf-4907-98e4-722a98369b06', '2025-11-23 20:58:33.963');
INSERT INTO public."Favorite" VALUES ('4b07df83-1d1b-4a9c-a4f4-8c4614376c5a', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '7173277f-8ebb-4468-aea6-2d02a36910e6', '2025-11-25 10:24:52.351');
INSERT INTO public."Favorite" VALUES ('477deb37-c62a-43a7-a5bd-fc831cbd7cb4', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '025d3854-b55a-4724-a8b7-bdbe4a3e3458', '2025-12-21 20:15:05.672');
INSERT INTO public."Favorite" VALUES ('35367e5e-00c8-458e-b394-6f2d5bf6f330', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '12a23137-1929-465a-92dd-85eeeb890dbe', '2025-12-30 11:59:28.841');
INSERT INTO public."Favorite" VALUES ('6c1a30c6-3f14-4f38-8489-ffa251af5ca7', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '9fa3a263-843a-4049-ac15-1705147637d7', '2025-10-09 12:09:43.021');
INSERT INTO public."Favorite" VALUES ('63bc5951-6356-446b-b8a5-c6c18e506968', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '260cd0b5-6d85-4f35-ae84-573165329529', '2025-10-09 18:57:06.858');
INSERT INTO public."Favorite" VALUES ('53fdde4d-6026-4aae-a425-b2c5b3cbbf01', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '801766ca-b0e5-40e3-bac1-a1315be66113', '2025-10-30 11:22:22.195');
INSERT INTO public."Favorite" VALUES ('73f9485b-3fac-4dfe-8db2-448f0f12550d', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '33bfd50e-7d2b-417f-95fd-a1c2fc73f19b', '2025-11-01 15:24:15.379');
INSERT INTO public."Favorite" VALUES ('6aa2fcc0-1c18-4c3d-9f0c-6b4e0fc6a72e', 'ff1f0b6c-774a-4b82-acba-2081fe0ba9d9', 'a1cc367d-f953-4d9c-8d0b-790e4abde541', '2025-11-16 16:21:56.928');
INSERT INTO public."Favorite" VALUES ('72b2e856-3381-47ef-9346-1e2c3078547e', 'ff1f0b6c-774a-4b82-acba-2081fe0ba9d9', '8cca2491-a86d-4299-a75f-fe2856d46634', '2025-11-18 10:23:17.597');
INSERT INTO public."Favorite" VALUES ('ffb9fe86-8b24-4530-bb67-622a0d16a819', 'ff1f0b6c-774a-4b82-acba-2081fe0ba9d9', '34426ef4-06ae-4582-9c8e-ebd756b834c0', '2025-11-18 17:50:16.457');
INSERT INTO public."Favorite" VALUES ('13f50a2c-4c66-40b4-806b-5d87a5ca9346', 'ff1f0b6c-774a-4b82-acba-2081fe0ba9d9', '335e811b-649e-4241-a1d7-832b0d006769', '2025-11-18 19:59:29.929');
INSERT INTO public."Favorite" VALUES ('d9944f7e-4891-4bbb-bfcc-82fa7b8f52dd', 'ff1f0b6c-774a-4b82-acba-2081fe0ba9d9', '025d3854-b55a-4724-a8b7-bdbe4a3e3458', '2025-11-19 06:53:17.48');
INSERT INTO public."Favorite" VALUES ('983fea3a-0584-4d03-b841-1b683d435946', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '7b01818a-e1b5-4ba5-8b54-1547ceb12e6b', '2025-11-22 12:35:55.95');
INSERT INTO public."Favorite" VALUES ('19de0127-6026-477e-8bfe-181f832a3ea0', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '830dfba1-6a7c-450c-a4f1-bfcef582675f', '2025-11-23 08:07:27.207');


--
-- Data for Name: Log; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Log" VALUES (2, 'AUTH', 'INFO', 'User logged in successfully', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "email": "bivinslawrence27@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2025-12-15 18:57:03.374');
INSERT INTO public."Log" VALUES (1, 'AUTH', 'INFO', 'Tokens generated', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2025-12-15 18:57:03.374');
INSERT INTO public."Log" VALUES (4, 'AUTH', 'INFO', 'Tokens generated', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2025-12-22 19:04:13.589');
INSERT INTO public."Log" VALUES (3, 'AUTH', 'INFO', 'User logged in successfully', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "email": "bivinslawrence27@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2025-12-22 19:04:13.589');
INSERT INTO public."Log" VALUES (6, 'AUTH', 'INFO', 'Tokens generated', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2025-12-23 16:38:42.685');
INSERT INTO public."Log" VALUES (5, 'AUTH', 'INFO', 'User logged in successfully', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "email": "bivinslawrence27@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2025-12-23 16:38:42.685');
INSERT INTO public."Log" VALUES (7, 'AUTH', 'INFO', 'reCAPTCHA verification passed', NULL, NULL, 'signup', 'null', '2025-12-23 16:41:28.489');
INSERT INTO public."Log" VALUES (8, 'AUTH', 'INFO', 'New user registered', NULL, '91d789dd-b5b4-4a98-b186-511aa92e13b1', 'signup', '{"role": "customer", "provider": "local"}', '2025-12-23 16:41:28.71');
INSERT INTO public."Log" VALUES (9, 'SYSTEM', 'ERROR', 'Signup failed due to server error', NULL, NULL, 'signup', '{"name": "Error", "error": "Failed to send email to ogidimoses3@gmail.com"}', '2025-12-23 16:41:29.919');
INSERT INTO public."Log" VALUES (10, 'AUTH', 'INFO', 'Verification email recently sent, resend blocked', '91d789dd-b5b4-4a98-b186-511aa92e13b1', NULL, 'signup', 'null', '2025-12-23 16:51:07.096');
INSERT INTO public."Log" VALUES (11, 'AUTH', 'INFO', 'reCAPTCHA verification passed', NULL, NULL, 'signup', 'null', '2025-12-23 16:51:06.989');
INSERT INTO public."Log" VALUES (12, 'AUTH', 'INFO', 'Verification email recently sent, resend blocked', '91d789dd-b5b4-4a98-b186-511aa92e13b1', NULL, 'signup', 'null', '2025-12-23 16:52:02.201');
INSERT INTO public."Log" VALUES (13, 'AUTH', 'INFO', 'reCAPTCHA verification passed', NULL, NULL, 'signup', 'null', '2025-12-23 16:52:01.442');
INSERT INTO public."Log" VALUES (14, 'AUTH', 'INFO', 'User logged in successfully', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "email": "bivinslawrence27@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2025-12-23 16:52:58.937');
INSERT INTO public."Log" VALUES (15, 'AUTH', 'INFO', 'Tokens generated', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2025-12-23 16:52:58.936');
INSERT INTO public."Log" VALUES (16, 'AUTH', 'INFO', 'reCAPTCHA verification passed', NULL, NULL, 'signup', 'null', '2025-12-23 16:56:22.967');
INSERT INTO public."Log" VALUES (17, 'AUTH', 'INFO', 'New user registered', NULL, '81836e0a-afcc-401f-bafa-39ec7a581718', 'signup', '{"role": "customer", "provider": "local"}', '2025-12-23 16:56:23.119');
INSERT INTO public."Log" VALUES (18, 'SYSTEM', 'ERROR', 'Signup failed due to server error', NULL, NULL, 'signup', '{"name": "Error", "error": "Failed to send email to ogidimoses3@gmail.com"}', '2025-12-23 16:56:24.304');
INSERT INTO public."Log" VALUES (19, 'AUTH', 'INFO', 'reCAPTCHA verification passed', NULL, NULL, 'signup', 'null', '2025-12-23 17:13:10.094');
INSERT INTO public."Log" VALUES (20, 'AUTH', 'INFO', 'Verification email recently sent, resend blocked', '81836e0a-afcc-401f-bafa-39ec7a581718', NULL, 'signup', 'null', '2025-12-23 17:13:10.104');
INSERT INTO public."Log" VALUES (21, 'AUTH', 'INFO', 'reCAPTCHA verification passed', NULL, NULL, 'signup', 'null', '2025-12-23 18:03:11.401');
INSERT INTO public."Log" VALUES (22, 'SYSTEM', 'ERROR', 'Signup failed due to server error', NULL, NULL, 'signup', '{"name": "Error", "error": "Failed to send email to ogidimoses3@gmail.com"}', '2025-12-23 18:03:13.48');
INSERT INTO public."Log" VALUES (23, 'AUTH', 'INFO', 'reCAPTCHA verification passed', NULL, NULL, 'signup', 'null', '2025-12-23 18:42:46.459');
INSERT INTO public."Log" VALUES (24, 'SYSTEM', 'ERROR', 'Signup failed due to server error', NULL, NULL, 'signup', '{"name": "Error", "error": "Failed to send email to ogidimoses3@gmail.com"}', '2025-12-23 18:42:48.886');
INSERT INTO public."Log" VALUES (25, 'AUTH', 'INFO', 'reCAPTCHA verification passed', NULL, NULL, 'signup', 'null', '2025-12-23 18:45:31.392');
INSERT INTO public."Log" VALUES (26, 'AUTH', 'INFO', 'Verification email resent', '81836e0a-afcc-401f-bafa-39ec7a581718', NULL, 'signup', 'null', '2025-12-23 18:45:33.769');
INSERT INTO public."Log" VALUES (27, 'AUTH', 'INFO', 'Tokens generated', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2025-12-23 18:48:24.522');
INSERT INTO public."Log" VALUES (28, 'AUTH', 'INFO', 'User logged in successfully', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "email": "bivinslawrence27@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2025-12-23 18:48:24.522');
INSERT INTO public."Log" VALUES (29, 'AUTH', 'INFO', 'reCAPTCHA verification passed', NULL, NULL, 'signup', 'null', '2025-12-23 18:50:07.376');
INSERT INTO public."Log" VALUES (30, 'AUTH', 'INFO', 'Verification email sent to new user', NULL, '92ca7aba-87f8-43a2-ae74-67f0d026158e', 'signup', 'null', '2025-12-23 18:50:09.648');
INSERT INTO public."Log" VALUES (31, 'AUTH', 'INFO', 'reCAPTCHA verification passed', NULL, NULL, 'signup', 'null', '2025-12-24 11:50:06.28');
INSERT INTO public."Log" VALUES (32, 'SYSTEM', 'ERROR', 'Signup failed due to server error', NULL, NULL, 'signup', '{"name": "PrismaClientKnownRequestError", "error": "\nInvalid `prisma.user.create()` invocation:\n\n\nUnique constraint failed on the fields: (`username`)"}', '2025-12-24 11:50:10.969');
INSERT INTO public."Log" VALUES (33, 'AUTH', 'INFO', 'reCAPTCHA verification passed', NULL, NULL, 'signup', 'null', '2025-12-24 13:29:20.812');
INSERT INTO public."Log" VALUES (34, 'AUTH', 'INFO', 'Signup validation failed', NULL, NULL, 'signup', '{"field": "password"}', '2025-12-24 13:29:20.812');
INSERT INTO public."Log" VALUES (35, 'AUTH', 'INFO', 'reCAPTCHA verification passed', NULL, NULL, 'signup', 'null', '2025-12-24 13:29:32.485');
INSERT INTO public."Log" VALUES (36, 'AUTH', 'INFO', 'Verification email recently sent, resend blocked', '92ca7aba-87f8-43a2-ae74-67f0d026158e', NULL, 'signup', 'null', '2025-12-24 13:29:32.656');
INSERT INTO public."Log" VALUES (37, 'AUTH', 'INFO', 'reCAPTCHA verification passed', NULL, NULL, 'signup', 'null', '2025-12-24 13:32:05.695');
INSERT INTO public."Log" VALUES (38, 'AUTH', 'INFO', 'reCAPTCHA verification passed', NULL, NULL, 'signup', 'null', '2025-12-24 13:32:17.46');
INSERT INTO public."Log" VALUES (39, 'AUTH', 'INFO', 'Verification email sent to new user', NULL, 'ee07ca5b-6221-4d45-8a2d-bd3f7b082c7d', 'signup', 'null', '2025-12-24 13:32:21.065');
INSERT INTO public."Log" VALUES (40, 'AUTH', 'INFO', 'Login attempt with unverified email', '92ca7aba-87f8-43a2-ae74-67f0d026158e', NULL, NULL, '{"ip": "127.0.0.1", "email": "ogidimoses3@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2025-12-24 13:33:00.018');
INSERT INTO public."Log" VALUES (41, 'AUTH', 'INFO', 'User logged in successfully', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "email": "bivinslawrence27@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2025-12-24 13:33:23.548');
INSERT INTO public."Log" VALUES (42, 'AUTH', 'INFO', 'Tokens generated', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2025-12-24 13:33:23.548');
INSERT INTO public."Log" VALUES (43, 'AUTH', 'ERROR', 'Login error', NULL, NULL, NULL, '{"error": "data and hash arguments required", "stack": "Error: data and hash arguments required\n    at Object.compare (C:\\Users\\richfield-nextjs\\backend\\node_modules\\bcrypt\\bcrypt.js:208:17)\n    at C:\\Users\\richfield-nextjs\\backend\\node_modules\\bcrypt\\promises.js:29:12\n    at new Promise (<anonymous>)\n    at module.exports.promise (C:\\Users\\richfield-nextjs\\backend\\node_modules\\bcrypt\\promises.js:20:12)\n    at Object.compare (C:\\Users\\richfield-nextjs\\backend\\node_modules\\bcrypt\\bcrypt.js:204:25)\n    at comparePasswords (file:///C:/Users/richfield-nextjs/backend/src/lib/password.js:8:23)\n    at login (file:///C:/Users/richfield-nextjs/backend/src/controllers/auth.controllers.js:424:27)"}', '2026-01-09 13:57:02.698');
INSERT INTO public."Log" VALUES (44, 'AUTH', 'ERROR', 'Login error', NULL, NULL, NULL, '{"error": "data and hash arguments required", "stack": "Error: data and hash arguments required\n    at Object.compare (C:\\Users\\richfield-nextjs\\backend\\node_modules\\bcrypt\\bcrypt.js:208:17)\n    at C:\\Users\\richfield-nextjs\\backend\\node_modules\\bcrypt\\promises.js:29:12\n    at new Promise (<anonymous>)\n    at module.exports.promise (C:\\Users\\richfield-nextjs\\backend\\node_modules\\bcrypt\\promises.js:20:12)\n    at Object.compare (C:\\Users\\richfield-nextjs\\backend\\node_modules\\bcrypt\\bcrypt.js:204:25)\n    at comparePasswords (file:///C:/Users/richfield-nextjs/backend/src/lib/password.js:8:23)\n    at login (file:///C:/Users/richfield-nextjs/backend/src/controllers/auth.controllers.js:424:27)"}', '2026-01-09 13:57:25.594');
INSERT INTO public."Log" VALUES (45, 'AUTH', 'INFO', 'Tokens generated', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2026-01-09 13:59:02.989');
INSERT INTO public."Log" VALUES (46, 'AUTH', 'INFO', 'User logged in successfully', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "email": "bivinslawrence27@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2026-01-09 13:59:02.99');
INSERT INTO public."Log" VALUES (48, 'AUTH', 'INFO', 'Tokens generated', 'ff1f0b6c-774a-4b82-acba-2081fe0ba9d9', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2026-01-09 14:02:14.494');
INSERT INTO public."Log" VALUES (47, 'AUTH', 'INFO', 'User logged in successfully', 'ff1f0b6c-774a-4b82-acba-2081fe0ba9d9', NULL, NULL, '{"ip": "127.0.0.1", "email": "primecodes69@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2026-01-09 14:02:14.494');
INSERT INTO public."Log" VALUES (50, 'AUTH', 'INFO', 'Tokens generated', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2026-01-10 15:36:01.107');
INSERT INTO public."Log" VALUES (49, 'AUTH', 'INFO', 'User logged in successfully', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "email": "bivinslawrence27@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2026-01-10 15:36:01.107');
INSERT INTO public."Log" VALUES (52, 'AUTH', 'INFO', 'User logged in successfully', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "email": "bivinslawrence27@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2026-01-17 18:43:41.883');
INSERT INTO public."Log" VALUES (51, 'AUTH', 'INFO', 'Tokens generated', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2026-01-17 18:43:41.883');
INSERT INTO public."Log" VALUES (53, 'AUTH', 'INFO', 'User logged in successfully', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "email": "bivinslawrence27@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2026-01-24 19:54:29.496');
INSERT INTO public."Log" VALUES (54, 'AUTH', 'INFO', 'Tokens generated', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36"}', '2026-01-24 19:54:29.496');
INSERT INTO public."Log" VALUES (55, 'AUTH', 'INFO', 'User logged in successfully', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "email": "bivinslawrence27@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36"}', '2026-02-01 18:12:24.545');
INSERT INTO public."Log" VALUES (56, 'AUTH', 'INFO', 'Tokens generated', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36"}', '2026-02-01 18:12:24.544');
INSERT INTO public."Log" VALUES (58, 'AUTH', 'INFO', 'User logged in successfully', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "email": "bivinslawrence27@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36"}', '2026-02-02 07:39:03.302');
INSERT INTO public."Log" VALUES (57, 'AUTH', 'INFO', 'Tokens generated', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36"}', '2026-02-02 07:39:03.302');
INSERT INTO public."Log" VALUES (59, 'AUTH', 'INFO', 'Tokens generated', 'ff1f0b6c-774a-4b82-acba-2081fe0ba9d9', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36"}', '2026-06-11 08:37:42.275');
INSERT INTO public."Log" VALUES (60, 'AUTH', 'INFO', 'User logged in successfully', 'ff1f0b6c-774a-4b82-acba-2081fe0ba9d9', NULL, NULL, '{"ip": "127.0.0.1", "email": "primecodes69@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36"}', '2026-06-11 08:37:42.275');
INSERT INTO public."Log" VALUES (62, 'AUTH', 'INFO', 'User logged in successfully', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "email": "bivinslawrence27@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36"}', '2026-06-11 08:49:03.165');
INSERT INTO public."Log" VALUES (61, 'AUTH', 'INFO', 'Tokens generated', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36"}', '2026-06-11 08:49:03.165');
INSERT INTO public."Log" VALUES (63, 'AUTH', 'INFO', 'User logged in successfully', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "email": "bivinslawrence27@gmail.com", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36"}', '2026-06-15 22:05:31.092');
INSERT INTO public."Log" VALUES (64, 'AUTH', 'INFO', 'Tokens generated', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', NULL, NULL, '{"ip": "127.0.0.1", "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36"}', '2026-06-15 22:05:31.094');


--
-- Data for Name: Message; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Notification" VALUES ('a26f4dff-7195-49f4-97e6-9a44ebfb2e2b', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'Your Order Has Been Shipped', 'Exciting news! Your order #TRK-1f1sudpersa has left our facility and is now with the delivery partner. You can expect your items to arrive within the estimated delivery window. For any questions or updates, feel free to check your order status or contact our support team.', true, '2025-10-14 21:13:04.844', true, 'ORDER');
INSERT INTO public."Notification" VALUES ('4fda1217-db3c-42fc-ab21-013bc4070010', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'Your Order Has Been Shipped', 'Exciting news! Your order #TRK-rk4c3s3wuk has left our facility and is now with the delivery partner. You can expect your items to arrive within the estimated delivery window. For any questions or updates, feel free to check your order status or contact our support team.', false, '2025-12-05 14:34:26.345', true, 'ORDER');
INSERT INTO public."Notification" VALUES ('6d220061-69c4-4805-abeb-5151c6ee55f7', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'Your Order Has Been Shipped', 'Exciting news! Your order #TRK-qy8q58kbnf has left our facility and is now with the delivery partner. You can expect your items to arrive within the estimated delivery window. For any questions or updates, feel free to check your order status or contact our support team.', true, '2025-07-24 20:18:55.923', true, 'ORDER');
INSERT INTO public."Notification" VALUES ('ec018709-2a16-4650-b424-602833751a81', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'Order Delivered', 'Your order #TRK-rk4c3s3wuk has been delivered. We hope you enjoy your purchase!', true, '2025-12-05 14:34:42.221', true, 'ORDER');
INSERT INTO public."Notification" VALUES ('e7172142-5670-4684-8b6c-cd0abd6f656d', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'Your Order is Out for Delivery', 'Your order #TRK-qy8q58kbnf is currently out for delivery and will be arriving shortly. Please ensure someone is available to receive the package. We’re committed to delivering your order on time and in perfect condition. If you miss the delivery, don’t worry — we’ll provide a follow-up update.', true, '2025-07-25 06:11:31.572', true, 'ORDER');
INSERT INTO public."Notification" VALUES ('7e00f09e-6d79-4633-bd7f-ba035bca714f', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'Your Order Has Been Shipped', 'Exciting news! Your order #TRK-eex3glbwnxq has left our facility and is now with the delivery partner. You can expect your items to arrive within the estimated delivery window. For any questions or updates, feel free to check your order status or contact our support team.', true, '2025-07-28 21:47:42.992', true, 'ORDER');
INSERT INTO public."Notification" VALUES ('97a2ca3c-b025-44a4-8ea7-a8143633a0b0', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'Your Order is Out for Delivery', 'Your order #TRK-eex3glbwnxq is currently out for delivery and will be arriving shortly. Please ensure someone is available to receive the package. We’re committed to delivering your order on time and in perfect condition. If you miss the delivery, don’t worry — we’ll provide a follow-up update.', true, '2025-08-04 19:37:54.992', true, 'ORDER');
INSERT INTO public."Notification" VALUES ('2ce83530-29f0-4950-8b74-f2a4bac60251', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'Your Order is Out for Delivery', 'Your order #TRK-rk4c3s3wuk is currently out for delivery and will be arriving shortly. Please ensure someone is available to receive the package. We’re committed to delivering your order on time and in perfect condition. If you miss the delivery, don’t worry — we’ll provide a follow-up update.', true, '2025-12-05 14:34:37.703', true, 'ORDER');


--
-- Data for Name: Order; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Order" VALUES ('d7a1f3ac-3ea8-422a-8eed-e8d83f3d7a48', 'TRK-obcmew167gc', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '[{"image": {"id": "8d7d767a-62d1-4096-b7f6-5bd87d1544d3", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1760111263/products/hpz2p6atecsxqnd1osls.webp", "index": 0, "publicId": "products/hpz2p6atecsxqnd1osls", "createdAt": "2025-10-10T15:47:45.716Z", "productId": "7b01818a-e1b5-4ba5-8b54-1547ceb12e6b"}, "quantity": 1, "unitType": "pack", "productId": "7b01818a-e1b5-4ba5-8b54-1547ceb12e6b", "discountId": null, "productName": "Premium Roasted Cashew Nuts", "unitPriceInKobo": 399, "originalPriceInKobo": 570, "discountAppliedInKobo": 171}]', 'Chouji Akimichi', 'choujiakimichi02@gmail.com', '07064742435', 'Opposite Lea primary school chukuku, lea primary schol chukuku, Gwagwalada, FCT, 902101', 3728, 'paid', 'Processing', NULL, NULL, '2025-12-04 08:30:26.235', 'TX-4952cbd0-3d43-4169-bf79-465f25ed4786-1764837025856', 'Gwagwalada', '', 'lea primary schol chukuku', '', '902101', 'FCT', 3300, 399, 29, 0.075, 3728, 'home', '2025-12-04 08:45:26.214', '2025-12-04 08:30:49.943', '2025-12-16 08:30:25.808', '2025-12-10 08:30:25.808');
INSERT INTO public."Order" VALUES ('d2ea43de-020e-4909-bafc-9dc73e111d9c', 'TRK-kuw4q0w1rwj', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '[{"image": {"id": "d529a43e-810d-4e3a-b6ca-a8be8c96d78f", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1752827872/products/h8tn99xnow6jjoeudj4o.webp", "index": 0, "publicId": "products/h8tn99xnow6jjoeudj4o", "createdAt": "2025-07-18T08:37:57.277Z", "productId": "260cd0b5-6d85-4f35-ae84-573165329529"}, "quantity": 1, "unitType": "kg", "productId": "260cd0b5-6d85-4f35-ae84-573165329529", "discountId": null, "productName": "cow beef", "unitPriceInKobo": 2440, "originalPriceInKobo": 2870, "discountAppliedInKobo": 430}, {"image": {"id": "e8c32bc6-54c4-4287-a039-cbb3f60cc9f5", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1752827289/products/mznmkslucvosv5aq6mmo.webp", "index": 0, "publicId": "products/mznmkslucvosv5aq6mmo", "createdAt": "2025-07-18T08:28:13.849Z", "productId": "556255a2-5946-4ea4-b63c-a948f3ee69ed"}, "quantity": 1, "unitType": "kg", "productId": "556255a2-5946-4ea4-b63c-a948f3ee69ed", "discountId": null, "productName": "tomatoes", "unitPriceInKobo": 13679, "originalPriceInKobo": 15370, "discountAppliedInKobo": 1691}, {"image": {"id": "8d7d767a-62d1-4096-b7f6-5bd87d1544d3", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1760111263/products/hpz2p6atecsxqnd1osls.webp", "index": 0, "publicId": "products/hpz2p6atecsxqnd1osls", "createdAt": "2025-10-10T15:47:45.716Z", "productId": "7b01818a-e1b5-4ba5-8b54-1547ceb12e6b"}, "quantity": 1, "unitType": "pack", "productId": "7b01818a-e1b5-4ba5-8b54-1547ceb12e6b", "discountId": null, "productName": "Premium Roasted Cashew Nuts", "unitPriceInKobo": 399, "originalPriceInKobo": 570, "discountAppliedInKobo": 171}, {"image": {"id": "4073bd54-8144-4549-bd6d-ffe373da4ff2", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1760529604/products/f8y2umwzvswxw2l7kg1d.webp", "index": 0, "publicId": "products/f8y2umwzvswxw2l7kg1d", "createdAt": "2025-10-15T12:00:13.100Z", "productId": "7173277f-8ebb-4468-aea6-2d02a36910e6"}, "quantity": 1, "unitType": "pack", "productId": "7173277f-8ebb-4468-aea6-2d02a36910e6", "discountId": null, "productName": "Fresh Sweet Oranges", "unitPriceInKobo": 875, "originalPriceInKobo": 1250, "discountAppliedInKobo": 375}, {"image": {"id": "ae34335a-6402-481c-9e2b-ad67fb1322aa", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1763923474/products/fbafvegybkj96dfkqajx.webp", "index": 0, "publicId": "products/fbafvegybkj96dfkqajx", "createdAt": "2025-11-23T18:44:40.080Z", "productId": "46430be5-d5bf-4907-98e4-722a98369b06"}, "quantity": 1, "unitType": "piece", "productId": "46430be5-d5bf-4907-98e4-722a98369b06", "discountId": null, "productName": "Vanilla Celebration Cake", "unitPriceInKobo": 8750, "originalPriceInKobo": 8750, "discountAppliedInKobo": 0}, {"image": {"id": "aa0cd560-3d5a-4d1d-b32d-e87445899011", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1751888986/products/kc1klwcl8k3dtlhnbgrs.webp", "index": 2, "publicId": "products/kc1klwcl8k3dtlhnbgrs", "createdAt": "2025-06-25T18:02:57.918Z", "productId": "33bfd50e-7d2b-417f-95fd-a1c2fc73f19b"}, "quantity": 1, "unitType": "kg", "productId": "33bfd50e-7d2b-417f-95fd-a1c2fc73f19b", "discountId": null, "productName": "fresh chicken", "unitPriceInKobo": 2440, "originalPriceInKobo": 2870, "discountAppliedInKobo": 430}, {"image": {"id": "60399395-f7a6-494c-9bdc-722def47fffd", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1752821659/products/wo6yvbeioxau5dv8q0g3.webp", "index": 0, "publicId": "products/wo6yvbeioxau5dv8q0g3", "createdAt": "2025-07-18T06:54:25.301Z", "productId": "8cca2491-a86d-4299-a75f-fe2856d46634"}, "quantity": 1, "unitType": "crate", "productId": "8cca2491-a86d-4299-a75f-fe2856d46634", "discountId": null, "productName": "Free Range Eggs", "unitPriceInKobo": 1558, "originalPriceInKobo": 1750, "discountAppliedInKobo": 192}, {"image": {"id": "be8dd312-12b8-40f8-93bf-6e0a7e9ae4a4", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1752827513/products/v6sseyrhow4bzgvi1qkn.webp", "index": 0, "publicId": "products/v6sseyrhow4bzgvi1qkn", "createdAt": "2025-07-18T08:31:57.634Z", "productId": "34426ef4-06ae-4582-9c8e-ebd756b834c0"}, "quantity": 1, "unitType": "piece", "productId": "34426ef4-06ae-4582-9c8e-ebd756b834c0", "discountId": null, "productName": "Fresh Spinach", "unitPriceInKobo": 2153, "originalPriceInKobo": 2870, "discountAppliedInKobo": 717}, {"image": {"id": "8ed098c6-add6-44e7-87a0-d4dcccf20776", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1753039964/products/yyyqrekdc5iep5rgdxzw.webp", "index": 0, "publicId": "products/yyyqrekdc5iep5rgdxzw", "createdAt": "2025-07-20T19:32:53.932Z", "productId": "42f6b4be-aa26-45d9-b929-61ce0c3ae29b"}, "quantity": 1, "unitType": "piece", "productId": "42f6b4be-aa26-45d9-b929-61ce0c3ae29b", "discountId": null, "productName": "Fresh Organic Carrots", "unitPriceInKobo": 570, "originalPriceInKobo": 570, "discountAppliedInKobo": 0}, {"image": {"id": "95e129d3-f72a-43c5-a9ab-e05dfaad24aa", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1762776536/products/bzpqzmf43ammcfowtmsb.webp", "index": 0, "publicId": "products/bzpqzmf43ammcfowtmsb", "createdAt": "2025-11-10T12:08:59.069Z", "productId": "a1cc367d-f953-4d9c-8d0b-790e4abde541"}, "quantity": 1, "unitType": "kg", "productId": "a1cc367d-f953-4d9c-8d0b-790e4abde541", "discountId": null, "productName": "Fresh Ripe Mangoes", "unitPriceInKobo": 2000, "originalPriceInKobo": 2000, "discountAppliedInKobo": 0}, {"image": {"id": "d61101fc-a340-4270-ba43-50ffd27cd82e", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1754337565/products/triido4wksdlpb2mxypx.webp", "index": 0, "publicId": "products/triido4wksdlpb2mxypx", "createdAt": "2025-08-04T19:59:31.599Z", "productId": "9fa3a263-843a-4049-ac15-1705147637d7"}, "quantity": 1, "unitType": "litre", "productId": "9fa3a263-843a-4049-ac15-1705147637d7", "discountId": null, "productName": "Fresh Cow Milk", "unitPriceInKobo": 3735, "originalPriceInKobo": 3735, "discountAppliedInKobo": 0}, {"image": {"id": "301d14c9-5af8-417f-8b6c-d70961bcdebb", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1760122095/products/crhsfnfwqg9em8vu3ifb.webp", "index": 0, "publicId": "products/crhsfnfwqg9em8vu3ifb", "createdAt": "2025-10-10T18:48:21.052Z", "productId": "025d3854-b55a-4724-a8b7-bdbe4a3e3458"}, "quantity": 1, "unitType": "piece", "productId": "025d3854-b55a-4724-a8b7-bdbe4a3e3458", "discountId": null, "productName": "Whole Fresh Coconut", "unitPriceInKobo": 910, "originalPriceInKobo": 1300, "discountAppliedInKobo": 390}, {"image": {"id": "17ca0b79-ff3b-4694-9aa0-02bf91f794d7", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1754339816/products/yymnz8eakzcfg4b3o7pv.webp", "index": 0, "publicId": "products/yymnz8eakzcfg4b3o7pv", "createdAt": "2025-08-04T20:37:00.437Z", "productId": "335e811b-649e-4241-a1d7-832b0d006769"}, "quantity": 1, "unitType": "kg", "productId": "335e811b-649e-4241-a1d7-832b0d006769", "discountId": null, "productName": "Premium Rice", "unitPriceInKobo": 1260, "originalPriceInKobo": 1800, "discountAppliedInKobo": 540}, {"image": {"id": "04a40bfe-b047-452f-87a7-19ca79043be6", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1752828808/products/nk9stc6t7jvr3w3isciq.webp", "index": 0, "publicId": "products/nk9stc6t7jvr3w3isciq", "createdAt": "2025-07-18T08:53:33.098Z", "productId": "a61cb6b9-49db-4bb4-bc05-1ccb73150c60"}, "quantity": 1, "unitType": "piece", "productId": "a61cb6b9-49db-4bb4-bc05-1ccb73150c60", "discountId": null, "productName": "corn", "unitPriceInKobo": 780, "originalPriceInKobo": 780, "discountAppliedInKobo": 0}, {"image": {"id": "c8d37833-0ea0-426e-8285-f37cf0c93daf", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1760047754/products/zxvodsdazbrfkoijjgcg.webp", "index": 0, "publicId": "products/zxvodsdazbrfkoijjgcg", "createdAt": "2025-10-09T22:09:16.777Z", "productId": "801766ca-b0e5-40e3-bac1-a1315be66113"}, "quantity": 1, "unitType": "pack", "productId": "801766ca-b0e5-40e3-bac1-a1315be66113", "discountId": null, "productName": "cherry", "unitPriceInKobo": 3150, "originalPriceInKobo": 4500, "discountAppliedInKobo": 1350}, {"image": {"id": "fa1f3360-25c4-4197-b380-093a58737933", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1754334718/products/mqp8dinfh63d7wryfrbg.webp", "index": 0, "publicId": "products/mqp8dinfh63d7wryfrbg", "createdAt": "2025-08-04T19:11:58.827Z", "productId": "830dfba1-6a7c-450c-a4f1-bfcef582675f"}, "quantity": 1, "unitType": "kg", "productId": "830dfba1-6a7c-450c-a4f1-bfcef582675f", "discountId": null, "productName": "groundnuts", "unitPriceInKobo": 2870, "originalPriceInKobo": 2870, "discountAppliedInKobo": 0}]', 'Chouji Akimichi', 'choujiakimichi02@gmail.com', '07064742435', 'Opposite Lea primary school chukuku, lea primary schol chukuku, Gwagwalada, FCT, 902101', 54436, 'paid', 'Processing', NULL, NULL, '2025-12-04 19:01:27.959', 'TX-2937a53d-d709-4389-aee1-0b2c39c4d52b-1764874887652', 'Gwagwalada', '', 'lea primary schol chukuku', '', '902101', 'FCT', 3300, 47569, 3567, 0.075, 54436, 'home', '2025-12-04 19:16:27.956', '2025-12-04 19:02:01.817', '2025-12-16 19:01:27.63', '2025-12-10 19:01:27.63');
INSERT INTO public."Order" VALUES ('13bfe99f-1bc6-486a-83b5-67bad441be91', 'TRK-q1pwl29le2t', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '[{"image": {"id": "8d7d767a-62d1-4096-b7f6-5bd87d1544d3", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1760111263/products/hpz2p6atecsxqnd1osls.webp", "index": 0, "publicId": "products/hpz2p6atecsxqnd1osls", "createdAt": "2025-10-10T15:47:45.716Z", "productId": "7b01818a-e1b5-4ba5-8b54-1547ceb12e6b"}, "quantity": 2, "unitType": "pack", "productId": "7b01818a-e1b5-4ba5-8b54-1547ceb12e6b", "discountId": null, "productName": "Premium Roasted Cashew Nuts", "unitPriceInKobo": 399, "originalPriceInKobo": 570, "discountAppliedInKobo": 171}, {"image": {"id": "e8c32bc6-54c4-4287-a039-cbb3f60cc9f5", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1752827289/products/mznmkslucvosv5aq6mmo.webp", "index": 0, "publicId": "products/mznmkslucvosv5aq6mmo", "createdAt": "2025-07-18T08:28:13.849Z", "productId": "556255a2-5946-4ea4-b63c-a948f3ee69ed"}, "quantity": 1, "unitType": "kg", "productId": "556255a2-5946-4ea4-b63c-a948f3ee69ed", "discountId": null, "productName": "tomatoes", "unitPriceInKobo": 15370, "originalPriceInKobo": 15370, "discountAppliedInKobo": 0}]', 'Chouji Akimichi', 'choujiakimichi02@gmail.com', '07064742435', 'Opposite Lea primary school chukuku, lea primary schol chukuku, Gwagwalada, FCT, 902101', 2068060, 'expired', 'Processing', NULL, NULL, '2025-12-05 07:43:10.299', 'TX-6f1f5a11-1344-4302-b554-ab6f0d02b103-1764920590291', 'Gwagwalada', '', 'lea primary schol chukuku', '', '902101', 'FCT', 3300, 16168, 1212, 0.075, 20680, 'home', '2025-12-05 07:58:10.297', '2025-12-22 18:54:54.844', '2025-12-17 07:43:10.29', '2025-12-11 07:43:10.29');
INSERT INTO public."Order" VALUES ('c79d53b5-da4c-4717-8d5b-990ce29f8d79', 'TRK-rk4c3s3wuk', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '[{"image": {"id": "8d7d767a-62d1-4096-b7f6-5bd87d1544d3", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1760111263/products/hpz2p6atecsxqnd1osls.webp", "index": 0, "publicId": "products/hpz2p6atecsxqnd1osls", "createdAt": "2025-10-10T15:47:45.716Z", "productId": "7b01818a-e1b5-4ba5-8b54-1547ceb12e6b"}, "quantity": 2, "unitType": "pack", "productId": "7b01818a-e1b5-4ba5-8b54-1547ceb12e6b", "discountId": null, "productName": "Premium Roasted Cashew Nuts", "unitPriceInKobo": 399, "originalPriceInKobo": 570, "discountAppliedInKobo": 171}, {"image": {"id": "e8c32bc6-54c4-4287-a039-cbb3f60cc9f5", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1752827289/products/mznmkslucvosv5aq6mmo.webp", "index": 0, "publicId": "products/mznmkslucvosv5aq6mmo", "createdAt": "2025-07-18T08:28:13.849Z", "productId": "556255a2-5946-4ea4-b63c-a948f3ee69ed"}, "quantity": 1, "unitType": "kg", "productId": "556255a2-5946-4ea4-b63c-a948f3ee69ed", "discountId": null, "productName": "tomatoes", "unitPriceInKobo": 15370, "originalPriceInKobo": 15370, "discountAppliedInKobo": 0}]', 'Chouji Akimichi', 'choujiakimichi02@gmail.com', '07064742435', 'Opposite Lea primary school chukuku, lea primary schol chukuku, Gwagwalada, FCT, 902101', 20680, 'paid', 'Delivered', NULL, NULL, '2025-12-05 08:46:15.972', 'TX-58243aa9-368d-4f0f-b87a-d2d474c8a8d4-1764924375943', 'Gwagwalada', '', 'lea primary schol chukuku', '', '902101', 'FCT', 3300, 16168, 1212, 0.075, 20680, 'home', '2025-12-05 09:01:15.949', '2025-12-05 14:34:42.236', '2025-12-17 08:46:15.938', '2025-12-11 08:46:15.938');
INSERT INTO public."Order" VALUES ('438f6b4d-8ab9-46cb-98b0-51ffba15f3e5', 'TRK-yl5b2puv4', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '[{"image": {"id": "8d7d767a-62d1-4096-b7f6-5bd87d1544d3", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1760111263/products/hpz2p6atecsxqnd1osls.webp", "index": 0, "publicId": "products/hpz2p6atecsxqnd1osls", "createdAt": "2025-10-10T15:47:45.716Z", "productId": "7b01818a-e1b5-4ba5-8b54-1547ceb12e6b"}, "quantity": 2, "unitType": "pack", "productId": "7b01818a-e1b5-4ba5-8b54-1547ceb12e6b", "discountId": null, "productName": "Premium Roasted Cashew Nuts", "unitPriceInKobo": 399, "originalPriceInKobo": 570, "discountAppliedInKobo": 171}, {"image": {"id": "aa0cd560-3d5a-4d1d-b32d-e87445899011", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1751888986/products/kc1klwcl8k3dtlhnbgrs.webp", "index": 2, "publicId": "products/kc1klwcl8k3dtlhnbgrs", "createdAt": "2025-06-25T18:02:57.918Z", "productId": "33bfd50e-7d2b-417f-95fd-a1c2fc73f19b"}, "quantity": 1, "unitType": "kg", "productId": "33bfd50e-7d2b-417f-95fd-a1c2fc73f19b", "discountId": null, "productName": "fresh chicken", "unitPriceInKobo": 2870, "originalPriceInKobo": 2870, "discountAppliedInKobo": 0}, {"image": {"id": "e8c32bc6-54c4-4287-a039-cbb3f60cc9f5", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1752827289/products/mznmkslucvosv5aq6mmo.webp", "index": 0, "publicId": "products/mznmkslucvosv5aq6mmo", "createdAt": "2025-07-18T08:28:13.849Z", "productId": "556255a2-5946-4ea4-b63c-a948f3ee69ed"}, "quantity": 1, "unitType": "kg", "productId": "556255a2-5946-4ea4-b63c-a948f3ee69ed", "discountId": null, "productName": "tomatoes", "unitPriceInKobo": 15370, "originalPriceInKobo": 15370, "discountAppliedInKobo": 0}]', 'Chouji Akimichi', 'choujiakimichi02@gmail.com', '07064742435', 'Opposite Lea primary school chukuku, lea primary schol chukuku, Gwagwalada, FCT, 902101', 23765, 'expired', 'Processing', NULL, NULL, '2025-12-05 07:25:57.265', 'TX-3ecc22ae-1384-4407-b32f-ef157ffb9f28-1764919557054', 'Gwagwalada', '', 'lea primary schol chukuku', '', '902101', 'FCT', 3300, 19038, 1427, 0.075, 23765, 'home', '2025-12-05 07:40:57.247', '2025-12-22 18:54:54.752', '2025-12-17 07:25:57.049', '2025-12-11 07:25:57.049');
INSERT INTO public."Order" VALUES ('015fc4c6-d047-4d5e-95ab-d44194f7c5da', 'TRK-oymi6eo9ah', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '[{"image": {"id": "3669eed7-19ce-4cf3-98de-a76c47be0107", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1766437951/products/fpxn7xhf7fu2ofx6vctx.webp", "index": 0, "publicId": "products/fpxn7xhf7fu2ofx6vctx", "createdAt": "2025-12-22T21:12:35.240Z", "productId": "12a23137-1929-465a-92dd-85eeeb890dbe"}, "quantity": 1, "unitType": "piece", "productId": "12a23137-1929-465a-92dd-85eeeb890dbe", "discountId": null, "productName": "Fresh Catfish", "unitPriceInKobo": 3265, "originalPriceInKobo": 3549, "discountAppliedInKobo": 284}]', 'Chouji Akimichi', 'choujiakimichi02@gmail.com', '07064742435', 'Opposite Lea primary school chukuku, lea primary schol chukuku, Gwagwalada, FCT, 902101', 6809, 'paid', 'Processing', NULL, NULL, '2026-01-13 20:32:53.008', 'TX-8ccfb071-9a34-446b-be00-1e7aca8fcd46-1768336372792', 'Gwagwalada', 'QzwexrctyvuliuytcASV gser rythts r', 'lea primary schol chukuku', '', '902101', 'FCT', 3300, 3265, 244, 0.075, 6809, 'home', '2026-01-13 20:47:53.005', '2026-01-13 20:33:28.817', '2026-01-23 20:32:52.79', '2026-01-19 20:32:52.79');
INSERT INTO public."Order" VALUES ('4db3363c-ef36-45bc-a5e6-e553c7f4cc03', 'TRK-dxv0pahrhcc', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '[{"image": {"id": "d529a43e-810d-4e3a-b6ca-a8be8c96d78f", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1752827872/products/h8tn99xnow6jjoeudj4o.webp", "index": 0, "publicId": "products/h8tn99xnow6jjoeudj4o", "createdAt": "2025-07-18T08:37:57.277Z", "productId": "260cd0b5-6d85-4f35-ae84-573165329529"}, "quantity": 1, "unitType": "kg", "productId": "260cd0b5-6d85-4f35-ae84-573165329529", "discountId": null, "productName": "cow beef", "unitPriceInKobo": 2870, "originalPriceInKobo": 2870, "discountAppliedInKobo": 0}]', 'Chouji Akimichi', 'choujiakimichi02@gmail.com', '07064742435', 'Opposite Lea primary school chukuku, lea primary schol chukuku, Gwagwalada, FCT, 902101', 3085, 'paid', 'Processing', NULL, NULL, '2026-06-11 09:20:58.704', 'TX-610c1079-e238-4567-bcbe-dd9dc0b22007-1781169658691', 'Gwagwalada', 'QzwexrctyvuliuytcASV gser rythts r', 'lea primary schol chukuku', 'Behind Forest Hotel Chukuku Village, Along Kuje Road FCT, Abuja, Nigeria', '902101', 'FCT', 0, 2870, 215, 0.075, 3085, 'pickup', '2026-06-11 09:35:58.702', '2026-06-11 09:21:57.83', '2026-06-23 09:20:58.69', '2026-06-17 09:20:58.69');
INSERT INTO public."Order" VALUES ('b0e0f1ea-91ad-4c06-a41b-55fc1306322f', 'TRK-k6znl8u87js', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '[{"image": {"id": "d529a43e-810d-4e3a-b6ca-a8be8c96d78f", "url": "https://res.cloudinary.com/djmnjen6v/image/upload/v1752827872/products/h8tn99xnow6jjoeudj4o.webp", "index": 0, "publicId": "products/h8tn99xnow6jjoeudj4o", "createdAt": "2025-07-18T08:37:57.277Z", "productId": "260cd0b5-6d85-4f35-ae84-573165329529"}, "quantity": 1, "unitType": "kg", "productId": "260cd0b5-6d85-4f35-ae84-573165329529", "discountId": null, "productName": "cow beef", "unitPriceInKobo": 2870, "originalPriceInKobo": 2870, "discountAppliedInKobo": 0}]', 'Chouji Akimichi', 'choujiakimichi02@gmail.com', '07064742435', 'Opposite Lea primary school chukuku, lea primary schol chukuku, Gwagwalada, FCT, 902101', 3085, 'expired', 'Processing', NULL, NULL, '2026-06-11 09:06:07.594', 'TX-652536c6-64ca-416e-8ea8-ba6e0bfcae84-1781168767179', 'Gwagwalada', 'QzwexrctyvuliuytcASV gser rythts r', 'lea primary schol chukuku', 'Behind Forest Hotel Chukuku Village, Along Kuje Road FCT, Abuja, Nigeria', '902101', 'FCT', 0, 2870, 215, 0.075, 3085, 'pickup', '2026-06-11 09:21:07.579', '2026-06-14 15:28:37.128', '2026-06-23 09:06:07.156', '2026-06-17 09:06:07.156');


--
-- Data for Name: PhoneOtp; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: ProductImage; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."ProductImage" VALUES ('d61101fc-a340-4270-ba43-50ffd27cd82e', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1754337565/products/triido4wksdlpb2mxypx.webp', 0, '9fa3a263-843a-4049-ac15-1705147637d7', '2025-08-04 19:59:31.599', 'products/triido4wksdlpb2mxypx');
INSERT INTO public."ProductImage" VALUES ('be91ee0c-8061-48c7-93e4-d01cfb793120', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1754337567/products/a1rtdma8dowsmritx1tj.webp', 1, '9fa3a263-843a-4049-ac15-1705147637d7', '2025-08-04 19:59:31.599', 'products/a1rtdma8dowsmritx1tj');
INSERT INTO public."ProductImage" VALUES ('18e9a538-59f7-4b29-bd95-1bc33b033a10', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1754337571/products/amyfrnxzw4feu9lppgem.webp', 2, '9fa3a263-843a-4049-ac15-1705147637d7', '2025-08-04 19:59:31.599', 'products/amyfrnxzw4feu9lppgem');
INSERT INTO public."ProductImage" VALUES ('aa0cd560-3d5a-4d1d-b32d-e87445899011', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1751888986/products/kc1klwcl8k3dtlhnbgrs.webp', 2, '33bfd50e-7d2b-417f-95fd-a1c2fc73f19b', '2025-06-25 18:02:57.918', 'products/kc1klwcl8k3dtlhnbgrs');
INSERT INTO public."ProductImage" VALUES ('1bb4e05d-55d0-482e-ac0a-73cc2bdbb491', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1754338609/products/slaway6mult5uz4aback.webp', 0, '2a31145a-b9cf-4a4d-b065-1bd544eaf9c6', '2025-08-04 20:16:57.033', 'products/slaway6mult5uz4aback');
INSERT INTO public."ProductImage" VALUES ('ea5ffaf2-2608-44c4-a784-ecef0d7c7ebd', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1754338611/products/dnuezblsh6ybjyfna7a6.webp', 1, '2a31145a-b9cf-4a4d-b065-1bd544eaf9c6', '2025-08-04 20:16:57.033', 'products/dnuezblsh6ybjyfna7a6');
INSERT INTO public."ProductImage" VALUES ('2eb397f2-d5bc-41cd-833e-35087cc9d7b5', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1751892739/products/qm49jasls40nsfnqvjqv.webp', 0, '33bfd50e-7d2b-417f-95fd-a1c2fc73f19b', '2025-06-25 18:02:57.918', 'products/qm49jasls40nsfnqvjqv');
INSERT INTO public."ProductImage" VALUES ('7db95cfe-860e-42fe-97b6-2035814ecf99', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1751892740/products/ayf4cv17achtlei07efq.webp', 1, '33bfd50e-7d2b-417f-95fd-a1c2fc73f19b', '2025-06-25 18:02:57.918', 'products/ayf4cv17achtlei07efq');
INSERT INTO public."ProductImage" VALUES ('60399395-f7a6-494c-9bdc-722def47fffd', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1752821659/products/wo6yvbeioxau5dv8q0g3.webp', 0, '8cca2491-a86d-4299-a75f-fe2856d46634', '2025-07-18 06:54:25.301', 'products/wo6yvbeioxau5dv8q0g3');
INSERT INTO public."ProductImage" VALUES ('2d09258d-7232-4084-95ce-0a5713534cf4', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1752821660/products/bqwrxe7a5xz1fzli7zzl.webp', 1, '8cca2491-a86d-4299-a75f-fe2856d46634', '2025-07-18 06:54:25.301', 'products/bqwrxe7a5xz1fzli7zzl');
INSERT INTO public."ProductImage" VALUES ('b0dac267-3f4d-420a-aa45-2b56ab23c791', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1752821662/products/ii0i0w7omozvuzd9cktd.webp', 2, '8cca2491-a86d-4299-a75f-fe2856d46634', '2025-07-18 06:54:25.301', 'products/ii0i0w7omozvuzd9cktd');
INSERT INTO public."ProductImage" VALUES ('e8c32bc6-54c4-4287-a039-cbb3f60cc9f5', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1752827289/products/mznmkslucvosv5aq6mmo.webp', 0, '556255a2-5946-4ea4-b63c-a948f3ee69ed', '2025-07-18 08:28:13.849', 'products/mznmkslucvosv5aq6mmo');
INSERT INTO public."ProductImage" VALUES ('c45b6066-9550-408b-b397-72b9277b8776', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1752827291/products/nkpel8vxshkomi4af6cw.webp', 1, '556255a2-5946-4ea4-b63c-a948f3ee69ed', '2025-07-18 08:28:13.849', 'products/nkpel8vxshkomi4af6cw');
INSERT INTO public."ProductImage" VALUES ('aad35c4b-bf43-46fa-80a7-ebecb5a93587', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1752827293/products/hef94dslerbwlrrfa3gh.webp', 2, '556255a2-5946-4ea4-b63c-a948f3ee69ed', '2025-07-18 08:28:13.849', 'products/hef94dslerbwlrrfa3gh');
INSERT INTO public."ProductImage" VALUES ('be8dd312-12b8-40f8-93bf-6e0a7e9ae4a4', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1752827513/products/v6sseyrhow4bzgvi1qkn.webp', 0, '34426ef4-06ae-4582-9c8e-ebd756b834c0', '2025-07-18 08:31:57.634', 'products/v6sseyrhow4bzgvi1qkn');
INSERT INTO public."ProductImage" VALUES ('2ad11d5d-474e-4316-9b01-b4c2f3220ae6', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1752827515/products/nbbrzcg3akakgc4dfvxu.webp', 1, '34426ef4-06ae-4582-9c8e-ebd756b834c0', '2025-07-18 08:31:57.634', 'products/nbbrzcg3akakgc4dfvxu');
INSERT INTO public."ProductImage" VALUES ('ba2015d7-f90a-4905-9e1d-cd085eac7120', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1752827517/products/u06hddol5vaaikv6oheo.webp', 2, '34426ef4-06ae-4582-9c8e-ebd756b834c0', '2025-07-18 08:31:57.634', 'products/u06hddol5vaaikv6oheo');
INSERT INTO public."ProductImage" VALUES ('d529a43e-810d-4e3a-b6ca-a8be8c96d78f', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1752827872/products/h8tn99xnow6jjoeudj4o.webp', 0, '260cd0b5-6d85-4f35-ae84-573165329529', '2025-07-18 08:37:57.277', 'products/h8tn99xnow6jjoeudj4o');
INSERT INTO public."ProductImage" VALUES ('e831eb46-7a55-4685-9bcf-e5ab21cd08dd', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1752827874/products/qdcpuedf7qlzi676unlz.webp', 1, '260cd0b5-6d85-4f35-ae84-573165329529', '2025-07-18 08:37:57.277', 'products/qdcpuedf7qlzi676unlz');
INSERT INTO public."ProductImage" VALUES ('d255e656-5174-4f73-b1e8-ff4ed1536559', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1752827876/products/zxvhblqkhp9aacxw31ww.webp', 2, '260cd0b5-6d85-4f35-ae84-573165329529', '2025-07-18 08:37:57.277', 'products/zxvhblqkhp9aacxw31ww');
INSERT INTO public."ProductImage" VALUES ('04a40bfe-b047-452f-87a7-19ca79043be6', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1752828808/products/nk9stc6t7jvr3w3isciq.webp', 0, 'a61cb6b9-49db-4bb4-bc05-1ccb73150c60', '2025-07-18 08:53:33.098', 'products/nk9stc6t7jvr3w3isciq');
INSERT INTO public."ProductImage" VALUES ('4f6cdc19-550f-4c8c-9833-b1f8becb5852', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1752828810/products/xu6bjmhbrsezesjmx3t7.webp', 1, 'a61cb6b9-49db-4bb4-bc05-1ccb73150c60', '2025-07-18 08:53:33.098', 'products/xu6bjmhbrsezesjmx3t7');
INSERT INTO public."ProductImage" VALUES ('511b85f0-95b5-41e6-b1e3-302e172fc262', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1752828812/products/bytjvjh46mv54gadyvub.webp', 2, 'a61cb6b9-49db-4bb4-bc05-1ccb73150c60', '2025-07-18 08:53:33.098', 'products/bytjvjh46mv54gadyvub');
INSERT INTO public."ProductImage" VALUES ('8ed098c6-add6-44e7-87a0-d4dcccf20776', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1753039964/products/yyyqrekdc5iep5rgdxzw.webp', 0, '42f6b4be-aa26-45d9-b929-61ce0c3ae29b', '2025-07-20 19:32:53.932', 'products/yyyqrekdc5iep5rgdxzw');
INSERT INTO public."ProductImage" VALUES ('502ed620-fc7d-4b52-9d0c-31a8029e6fe3', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1753039968/products/lzpxh0pohkatrgepv4i0.webp', 1, '42f6b4be-aa26-45d9-b929-61ce0c3ae29b', '2025-07-20 19:32:53.932', 'products/lzpxh0pohkatrgepv4i0');
INSERT INTO public."ProductImage" VALUES ('79906783-8add-47a9-9a6f-a42a6dd88bb9', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1753039970/products/sqwr2g8pzztehz8wthvh.webp', 2, '42f6b4be-aa26-45d9-b929-61ce0c3ae29b', '2025-07-20 19:32:53.932', 'products/sqwr2g8pzztehz8wthvh');
INSERT INTO public."ProductImage" VALUES ('fa1f3360-25c4-4197-b380-093a58737933', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1754334718/products/mqp8dinfh63d7wryfrbg.webp', 0, '830dfba1-6a7c-450c-a4f1-bfcef582675f', '2025-08-04 19:11:58.827', 'products/mqp8dinfh63d7wryfrbg');
INSERT INTO public."ProductImage" VALUES ('dc32ab79-dde0-430d-8d64-37d2b1d8b185', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1754338616/products/c8pmibmro2qkp1hawrl4.webp', 2, '2a31145a-b9cf-4a4d-b065-1bd544eaf9c6', '2025-08-04 20:16:57.033', 'products/c8pmibmro2qkp1hawrl4');
INSERT INTO public."ProductImage" VALUES ('17ca0b79-ff3b-4694-9aa0-02bf91f794d7', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1754339816/products/yymnz8eakzcfg4b3o7pv.webp', 0, '335e811b-649e-4241-a1d7-832b0d006769', '2025-08-04 20:37:00.437', 'products/yymnz8eakzcfg4b3o7pv');
INSERT INTO public."ProductImage" VALUES ('c71848b0-e23d-45c3-a4f5-fede29e9ed13', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1754339817/products/dqptkyaiwyr33d7rsajo.webp', 1, '335e811b-649e-4241-a1d7-832b0d006769', '2025-08-04 20:37:00.437', 'products/dqptkyaiwyr33d7rsajo');
INSERT INTO public."ProductImage" VALUES ('6d7cd4c9-3194-46eb-93f1-e18b590e92db', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1754339819/products/u7ea2aw8iam3mkiexo8i.webp', 2, '335e811b-649e-4241-a1d7-832b0d006769', '2025-08-04 20:37:00.437', 'products/u7ea2aw8iam3mkiexo8i');
INSERT INTO public."ProductImage" VALUES ('c8d37833-0ea0-426e-8285-f37cf0c93daf', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1760047754/products/zxvodsdazbrfkoijjgcg.webp', 0, '801766ca-b0e5-40e3-bac1-a1315be66113', '2025-10-09 22:09:16.777', 'products/zxvodsdazbrfkoijjgcg');
INSERT INTO public."ProductImage" VALUES ('e2be7b9a-35ab-4fd6-9284-33864b1a552d', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1760047755/products/rpmsufschqs8oqbfblsy.webp', 1, '801766ca-b0e5-40e3-bac1-a1315be66113', '2025-10-09 22:09:16.777', 'products/rpmsufschqs8oqbfblsy');
INSERT INTO public."ProductImage" VALUES ('ecfbf9c4-7b34-43e7-9781-0fb955f89f21', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1760047756/products/de46q9eatm1bnn6nkivv.webp', 2, '801766ca-b0e5-40e3-bac1-a1315be66113', '2025-10-09 22:09:16.777', 'products/de46q9eatm1bnn6nkivv');
INSERT INTO public."ProductImage" VALUES ('8d7d767a-62d1-4096-b7f6-5bd87d1544d3', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1760111263/products/hpz2p6atecsxqnd1osls.webp', 0, '7b01818a-e1b5-4ba5-8b54-1547ceb12e6b', '2025-10-10 15:47:45.716', 'products/hpz2p6atecsxqnd1osls');
INSERT INTO public."ProductImage" VALUES ('4fde4a53-bad2-453b-8d30-742e503d73c0', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1760111264/products/ptnkff0smjbazovqeyqo.webp', 1, '7b01818a-e1b5-4ba5-8b54-1547ceb12e6b', '2025-10-10 15:47:45.716', 'products/ptnkff0smjbazovqeyqo');
INSERT INTO public."ProductImage" VALUES ('301d14c9-5af8-417f-8b6c-d70961bcdebb', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1760122095/products/crhsfnfwqg9em8vu3ifb.webp', 0, '025d3854-b55a-4724-a8b7-bdbe4a3e3458', '2025-10-10 18:48:21.052', 'products/crhsfnfwqg9em8vu3ifb');
INSERT INTO public."ProductImage" VALUES ('ab8a8c12-5452-46bf-b97d-b5046fa2feb6', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1760122097/products/nxu2wytaqpsqklscc3g1.webp', 1, '025d3854-b55a-4724-a8b7-bdbe4a3e3458', '2025-10-10 18:48:21.052', 'products/nxu2wytaqpsqklscc3g1');
INSERT INTO public."ProductImage" VALUES ('fee573b3-2010-4767-a198-578e8d8c8fcb', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1760122099/products/ekesbrsfdgdwavjvc1dg.webp', 2, '025d3854-b55a-4724-a8b7-bdbe4a3e3458', '2025-10-10 18:48:21.052', 'products/ekesbrsfdgdwavjvc1dg');
INSERT INTO public."ProductImage" VALUES ('4073bd54-8144-4549-bd6d-ffe373da4ff2', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1760529604/products/f8y2umwzvswxw2l7kg1d.webp', 0, '7173277f-8ebb-4468-aea6-2d02a36910e6', '2025-10-15 12:00:13.1', 'products/f8y2umwzvswxw2l7kg1d');
INSERT INTO public."ProductImage" VALUES ('8dd77252-5095-4eb8-a8c0-df6a9f130198', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1760529608/products/aj6ukor8cjy8xuhihbmf.webp', 1, '7173277f-8ebb-4468-aea6-2d02a36910e6', '2025-10-15 12:00:13.1', 'products/aj6ukor8cjy8xuhihbmf');
INSERT INTO public."ProductImage" VALUES ('4d54603b-ced9-4509-8ed8-b42fd0b479e6', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1760529612/products/cql6df0uaen8dly9bby5.webp', 2, '7173277f-8ebb-4468-aea6-2d02a36910e6', '2025-10-15 12:00:13.1', 'products/cql6df0uaen8dly9bby5');
INSERT INTO public."ProductImage" VALUES ('95e129d3-f72a-43c5-a9ab-e05dfaad24aa', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1762776536/products/bzpqzmf43ammcfowtmsb.webp', 0, 'a1cc367d-f953-4d9c-8d0b-790e4abde541', '2025-11-10 12:08:59.069', 'products/bzpqzmf43ammcfowtmsb');
INSERT INTO public."ProductImage" VALUES ('809970ae-cb8a-45be-ae0c-e9f3d338491d', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1762776538/products/p75e604pavmrmjyd7iqg.webp', 1, 'a1cc367d-f953-4d9c-8d0b-790e4abde541', '2025-11-10 12:08:59.146', 'products/p75e604pavmrmjyd7iqg');
INSERT INTO public."ProductImage" VALUES ('f427b6cb-0984-4b78-800e-71a3b829269c', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1762776539/products/v3nscww1aq6adpeivyph.webp', 2, 'a1cc367d-f953-4d9c-8d0b-790e4abde541', '2025-11-10 12:08:59.151', 'products/v3nscww1aq6adpeivyph');
INSERT INTO public."ProductImage" VALUES ('ae34335a-6402-481c-9e2b-ad67fb1322aa', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1763923474/products/fbafvegybkj96dfkqajx.webp', 0, '46430be5-d5bf-4907-98e4-722a98369b06', '2025-11-23 18:44:40.08', 'products/fbafvegybkj96dfkqajx');
INSERT INTO public."ProductImage" VALUES ('64849cf8-b75e-469a-bce3-47ecd6056918', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1763923476/products/h4nhgp8q3zetnr6hoysb.webp', 1, '46430be5-d5bf-4907-98e4-722a98369b06', '2025-11-23 18:44:40.08', 'products/h4nhgp8q3zetnr6hoysb');
INSERT INTO public."ProductImage" VALUES ('c62e3af5-dd3e-4191-9eb6-afa25d9051d8', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781464177/products/qvhlzsneaentbz0uzczc.webp', 0, 'de0f5a36-66f3-45ce-9ef5-c0ed92695581', '2026-06-14 19:09:41.044', 'products/qvhlzsneaentbz0uzczc');
INSERT INTO public."ProductImage" VALUES ('81f99249-4d3b-471e-b511-b343f2148bd0', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781464179/products/faiheprtqolinuhuwf3e.webp', 1, 'de0f5a36-66f3-45ce-9ef5-c0ed92695581', '2026-06-14 19:09:41.044', 'products/faiheprtqolinuhuwf3e');
INSERT INTO public."ProductImage" VALUES ('b0bb37dd-e0ab-4533-9329-3719599d2689', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781464181/products/s44sfnmlwtqaag76qegu.webp', 2, 'de0f5a36-66f3-45ce-9ef5-c0ed92695581', '2026-06-14 19:09:41.044', 'products/s44sfnmlwtqaag76qegu');
INSERT INTO public."ProductImage" VALUES ('ece2b378-db5c-4344-8b8e-0c592fd3ed8c', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781464723/products/whpsas2ynutjexw4udez.webp', 0, 'f272bb02-2677-4059-aadc-bd36e360236d', '2026-06-14 19:18:50.05', 'products/whpsas2ynutjexw4udez');
INSERT INTO public."ProductImage" VALUES ('8a093b90-9cc5-4f0b-b0c0-122661ab6dbc', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1764144435/products/jfvlqswnasmwfmu4as86.webp', 2, '46430be5-d5bf-4907-98e4-722a98369b06', '2025-11-26 08:07:16.883', 'products/jfvlqswnasmwfmu4as86');
INSERT INTO public."ProductImage" VALUES ('3669eed7-19ce-4cf3-98de-a76c47be0107', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1766437951/products/fpxn7xhf7fu2ofx6vctx.webp', 0, '12a23137-1929-465a-92dd-85eeeb890dbe', '2025-12-22 21:12:35.24', 'products/fpxn7xhf7fu2ofx6vctx');
INSERT INTO public."ProductImage" VALUES ('cb356b89-b193-40b3-bd20-7b07115b2b0d', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1766437953/products/vjwqtzcj3tw60w2fh6g2.webp', 1, '12a23137-1929-465a-92dd-85eeeb890dbe', '2025-12-22 21:12:35.24', 'products/vjwqtzcj3tw60w2fh6g2');
INSERT INTO public."ProductImage" VALUES ('0425348d-c0b7-4a86-aced-8a31d2dbe8c5', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1766437955/products/d2trnosfgl2mgob0zt82.webp', 2, '12a23137-1929-465a-92dd-85eeeb890dbe', '2025-12-22 21:12:35.24', 'products/d2trnosfgl2mgob0zt82');
INSERT INTO public."ProductImage" VALUES ('875db55e-659e-40e0-a543-be6c2cf71728', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781462347/products/vyty8n8ejly8k5yjdfep.webp', 0, 'bed3fe26-eef3-471a-8de1-21a321b23b9e', '2026-06-14 18:39:11.116', 'products/vyty8n8ejly8k5yjdfep');
INSERT INTO public."ProductImage" VALUES ('ba738f11-354b-4a50-9efc-7966bdd0ddf9', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781462349/products/z1gind6d41qrtahw7np7.webp', 1, 'bed3fe26-eef3-471a-8de1-21a321b23b9e', '2026-06-14 18:39:11.116', 'products/z1gind6d41qrtahw7np7');
INSERT INTO public."ProductImage" VALUES ('18b052df-77f5-40f1-a31b-409d5351f1e2', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781462351/products/fisjlkw1hbhkjy6lsdtt.webp', 2, 'bed3fe26-eef3-471a-8de1-21a321b23b9e', '2026-06-14 18:39:11.116', 'products/fisjlkw1hbhkjy6lsdtt');
INSERT INTO public."ProductImage" VALUES ('3270c2ec-b22c-4d32-b8d4-f083080ccd1b', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781464725/products/bygiooph8xpvxxaj52vp.webp', 1, 'f272bb02-2677-4059-aadc-bd36e360236d', '2026-06-14 19:18:50.05', 'products/bygiooph8xpvxxaj52vp');
INSERT INTO public."ProductImage" VALUES ('18acd213-c6aa-48c3-8861-cb70ea2553e9', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781464727/products/eja4ce7feb6zqqzpehfd.webp', 2, 'f272bb02-2677-4059-aadc-bd36e360236d', '2026-06-14 19:18:50.05', 'products/eja4ce7feb6zqqzpehfd');
INSERT INTO public."ProductImage" VALUES ('825becc1-9c0c-4e0e-a3cd-6abf44aaa0e5', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781465081/products/fhwfaktgjvn6n1ty9okt.webp', 0, '7deb49db-9d7f-461a-b7f1-7160dfe14204', '2026-06-14 19:24:51.875', 'products/fhwfaktgjvn6n1ty9okt');
INSERT INTO public."ProductImage" VALUES ('05800860-d01f-4485-b6b3-e57afb733c9c', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781465087/products/ykpo96tajyxczh9gpnm0.webp', 1, '7deb49db-9d7f-461a-b7f1-7160dfe14204', '2026-06-14 19:24:51.875', 'products/ykpo96tajyxczh9gpnm0');
INSERT INTO public."ProductImage" VALUES ('8c44413d-d368-4bc8-9346-fb8394cdd2fd', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781465092/products/bfkwyqceniroownisgad.webp', 2, '7deb49db-9d7f-461a-b7f1-7160dfe14204', '2026-06-14 19:24:51.875', 'products/bfkwyqceniroownisgad');
INSERT INTO public."ProductImage" VALUES ('cee0746d-59b0-453a-a007-cbea3fcc09a9', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781465409/products/mxnv3ta7xwoshphqzeff.webp', 0, '6b3638b2-150b-408c-b446-a276f3050edf', '2026-06-14 19:30:08.619', 'products/mxnv3ta7xwoshphqzeff');
INSERT INTO public."ProductImage" VALUES ('3e6d476c-c807-441a-a127-439865956927', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781465630/products/ll3g42uo7gem4fcmyy4z.webp', 0, 'b7835176-40f8-4f7f-93e9-12fb07b393a6', '2026-06-14 19:33:49.524', 'products/ll3g42uo7gem4fcmyy4z');
INSERT INTO public."ProductImage" VALUES ('fab2bf24-d3d4-45e8-9aaf-00f6b213e1f4', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781465810/products/yad1dfimtjoor1psywfj.webp', 0, '8faad4d1-d31b-40bb-badd-aa7bad7b4e81', '2026-06-14 19:36:50.002', 'products/yad1dfimtjoor1psywfj');
INSERT INTO public."ProductImage" VALUES ('0a1fc03c-98e0-4b24-b951-2e951b007c27', 'https://res.cloudinary.com/djmnjen6v/image/upload/v1781466315/products/ddyzqaikhr4aj1jzjim0.webp', 0, '49b64d48-2213-445e-bcae-1121b06df0d4', '2026-06-14 19:45:14.564', 'products/ddyzqaikhr4aj1jzjim0');


--
-- Data for Name: Promotion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Promotion" VALUES ('43ac0ae6-65b3-4808-a81e-f82ab6627b39', '2 weeks only!', 'christmas discounts up to 50% off', 'Enjoy up to 50% off this Christmas! Grab your favorite products before the holiday deals end.', 'CHRISTMAS', '2025-12-26 00:00:00', '2025-12-27 00:00:00', false, NULL, false, true, '2025-12-26 11:14:27.037', '2025-12-26 11:14:27.037');
INSERT INTO public."Promotion" VALUES ('ccfa3c0c-c979-41a4-a28e-2cf75f1113f5', 'today only', 'bonanza discounts up to 30% off', 'Limited-time offer available for just 14 days. Enjoy exclusive savings before this discount expires. Once the two weeks are up, it’s gone.', 'CUSTOM', '2026-01-12 00:00:00', '2026-01-13 00:00:00', true, NULL, true, true, '2026-01-12 19:48:18.073', '2026-01-12 19:48:18.073');


--
-- Data for Name: PromotionProduct; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."PromotionProduct" VALUES ('b3861332-4224-443d-9ad3-0d635033ff3e', 'ccfa3c0c-c979-41a4-a28e-2cf75f1113f5', '42f6b4be-aa26-45d9-b929-61ce0c3ae29b');
INSERT INTO public."PromotionProduct" VALUES ('59361de3-09ff-4e38-8bd5-191b92fa7fe7', 'ccfa3c0c-c979-41a4-a28e-2cf75f1113f5', '830dfba1-6a7c-450c-a4f1-bfcef582675f');
INSERT INTO public."PromotionProduct" VALUES ('74dd07fd-8c36-4561-922b-3fe30024dc17', 'ccfa3c0c-c979-41a4-a28e-2cf75f1113f5', '9fa3a263-843a-4049-ac15-1705147637d7');


--
-- Data for Name: RefreshToken; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."RefreshToken" VALUES ('32196819-fc4e-491c-a404-a45c084d757e', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjExNjM1ODEsImV4cCI6MTc2MTc2ODM4MX0.opEESh1aQ8FS1wtOiTcGgOrw41sOhsyCQ-I90PiJMGU', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-22 20:06:21.175', '2025-10-29 20:06:21.173');
INSERT INTO public."RefreshToken" VALUES ('d145b595-dbc4-4dcf-bb87-d9156de283b0', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjEzMjQ1MDcsImV4cCI6MTc2MTkyOTMwN30.MT2dbT85xFkW-h0GJ1T6QFE-Q62UhPd41AQ0Cs7N1aI', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-24 16:48:27.404', '2025-10-31 16:48:27.402');
INSERT INTO public."RefreshToken" VALUES ('44e05be4-0039-4af0-979c-731160b40044', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE2NTY1MDksImV4cCI6MTc2MjI2MTMwOX0.IQZ3sZ75dTGngtkaebEdeYPV_u5MhVgBQkJPEfUE6IA', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-28 13:01:49.464', '2025-11-04 13:01:49.463');
INSERT INTO public."RefreshToken" VALUES ('fdcb12ae-7feb-48f4-99a4-975d0f26e745', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE2NzI5MjgsImV4cCI6MTc2MjI3NzcyOH0.JLz0hnyDjm_OTQt-QMDOXfPi7pauq-aeYkosU_ukypg', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-28 17:35:28.504', '2025-11-04 17:35:28.502');
INSERT INTO public."RefreshToken" VALUES ('0dfc9109-f8db-4045-9e25-0518817ec4eb', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE3MTgyODMsImV4cCI6MTc2MjMyMzA4M30.y12ktiILTNpeKwLjQeEqtsjYHHvxQ3ewqLaOeci_9ag', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-29 06:11:23.222', '2025-11-05 06:11:23.221');
INSERT INTO public."RefreshToken" VALUES ('78f90281-78cc-4ede-bca5-30b4a3534515', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE3MTgzNjIsImV4cCI6MTc2MjMyMzE2Mn0.wqeq5DjsKqOmRPCv89d1UNVrllDaFbE-TEreRV7MyU8', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-29 06:12:42.822', '2025-11-05 06:12:42.821');
INSERT INTO public."RefreshToken" VALUES ('7359581a-fb23-4a8b-8737-4170ea939050', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE3MjEwNzAsImV4cCI6MTc2MjMyNTg3MH0.pMz7Q2akKLTGWlT4Bs_IN3thm55_5PxJoJ72NFjulrM', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-29 06:57:50.534', '2025-11-05 06:57:50.532');
INSERT INTO public."RefreshToken" VALUES ('22831e35-8838-4c00-bea2-d781238ce4c3', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE3NjgxNzEsImV4cCI6MTc2MjM3Mjk3MX0.WLsb7XQecj4O0yDhRRxXluri-cCnY1rsWX2e8u92tqg', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-29 20:02:51.568', '2025-11-05 20:02:51.566');
INSERT INTO public."RefreshToken" VALUES ('cbecaca6-0668-481e-9e75-520775430f7b', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTE3MzAsImV4cCI6MTc2MjQxNjUzMH0.QF2-2dkzYqVjfbpZK_Fl0ggqVig7Kwx5tBQCt5uHA7o', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 08:08:50.498', '2025-11-06 08:08:50.497');
INSERT INTO public."RefreshToken" VALUES ('c2ea2d1f-cb74-4348-891e-f3bb4ed3c855', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTE3OTQsImV4cCI6MTc2MjQxNjU5NH0.rXZmBP623xfCplig7A-zVzIVPhrzArTx1AhkeKFxB8A', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 08:09:54.542', '2025-11-06 08:09:54.54');
INSERT INTO public."RefreshToken" VALUES ('14a9c134-1844-40e1-a99c-a185a8f97fd9', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTE5ODksImV4cCI6MTc2MjQxNjc4OX0.6S_qb_pfxT0gPW-iPH04Rm_aq7bh4FJQ73i5JoXQJu8', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 08:13:09.439', '2025-11-06 08:13:09.438');
INSERT INTO public."RefreshToken" VALUES ('56569341-da5d-4650-9221-8e0f14cda993', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTIyMjQsImV4cCI6MTc2MjQxNzAyNH0.-h_GNRKDyrmrJ_G8pPY79bzjHTRbokoUHZyM2n6KGzY', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 08:17:04.418', '2025-11-06 08:17:04.417');
INSERT INTO public."RefreshToken" VALUES ('2a03889a-fc3c-403a-be90-c07de740e7bb', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTQ4NjAsImV4cCI6MTc2MjQxOTY2MH0.PYTkZoAR9qNOk44dqKgAxLlbmkbH5bxC-3KhCd2pVSk', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 09:01:00.52', '2025-11-06 09:01:00.519');
INSERT INTO public."RefreshToken" VALUES ('fc8e3b79-fc95-4731-88a3-ab48ee59b623', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTUwMTYsImV4cCI6MTc2MjQxOTgxNn0.cXLgqsm1LJ6FLi6nPUwzKLjB_eqCWTix3w9wdRbvyhU', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 09:03:36.75', '2025-11-06 09:03:36.749');
INSERT INTO public."RefreshToken" VALUES ('17bd022d-8b89-4e61-99e8-043b8c1890ee', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTUxNjQsImV4cCI6MTc2MjQxOTk2NH0._VhCBrYvJ5-vOAHExEHUotVxyAyBxGoaveXVMPYqBQM', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 09:06:04.701', '2025-11-06 09:06:04.699');
INSERT INTO public."RefreshToken" VALUES ('4d1fde4b-eefb-45bf-8893-2315e5f16d66', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTU1MDgsImV4cCI6MTc2MjQyMDMwOH0.wxJXkVIEAF3bCUqcqArE-TgTOnjzHEX9gBO-SVnVayI', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 09:11:48.989', '2025-11-06 09:11:48.988');
INSERT INTO public."RefreshToken" VALUES ('4ce28259-707e-4c3e-aea9-cd134f79bc35', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTU5NzQsImV4cCI6MTc2MjQyMDc3NH0.U8RosdRG8iWrV8bQ-waRUWSseQFCz-JDVmkr5_xfB7w', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 09:19:34.374', '2025-11-06 09:19:34.373');
INSERT INTO public."RefreshToken" VALUES ('ae05115b-a0be-470d-af3e-b35d25812785', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTYzMTUsImV4cCI6MTc2MjQyMTExNX0.WFRjrQTuMXrKmnHBBt9lO2oj15oNACJYqdQub5w4cF4', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 09:25:15.722', '2025-11-06 09:25:15.721');
INSERT INTO public."RefreshToken" VALUES ('e3840f67-91e8-4bbf-9235-c491168e2c68', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTY0NTksImV4cCI6MTc2MjQyMTI1OX0.19Rv_HnjS1YB_azgmtD0I42a9dwyEnhzIaWMRcZ78FQ', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 09:27:39.173', '2025-11-06 09:27:39.171');
INSERT INTO public."RefreshToken" VALUES ('b0b8602d-57a3-4b1d-97c8-9e7ad3bb7645', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTY2NzQsImV4cCI6MTc2MjQyMTQ3NH0.gOG_Ej8KG_m4h3nAL7ns900OSsRKKjgoGQ7hpcrOQ1U', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 09:31:14.546', '2025-11-06 09:31:14.545');
INSERT INTO public."RefreshToken" VALUES ('f41f1cb3-2603-4468-b92f-6d62d99e4f86', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTY3OTAsImV4cCI6MTc2MjQyMTU5MH0.L5gOval2ZMCB0y_K48_foJQ6hIWMovDqgk-hx_oCwCk', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 09:33:10.768', '2025-11-06 09:33:10.766');
INSERT INTO public."RefreshToken" VALUES ('426cd9c0-e390-4ac1-8345-30f5b5a158da', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTcwMDAsImV4cCI6MTc2MjQyMTgwMH0.2yPPL5zWSFiqDDI38EXUCskfxbvIVVo995oHyIg43_M', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 09:36:40.77', '2025-11-06 09:36:40.768');
INSERT INTO public."RefreshToken" VALUES ('8eb51a8f-c64b-4b2a-9edb-fe61adc39354', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTg1NjgsImV4cCI6MTc2MjQyMzM2OH0.l-o8SDYBgFcSSeq1KRqSvixWSIhitwGorPgTUz1hQgo', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 10:02:48.876', '2025-11-06 10:02:48.875');
INSERT INTO public."RefreshToken" VALUES ('70e1760b-07f4-4fb8-a4d8-a2c28e5a192d', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTg4OTAsImV4cCI6MTc2MjQyMzY5MH0.K1Mf76SI8Cd2wjTEF8VJVnY18xfWq7wiigaOWRCpEwY', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 10:08:10.555', '2025-11-06 10:08:10.554');
INSERT INTO public."RefreshToken" VALUES ('9b560856-5b91-4b97-99f3-795f8212afc3', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTg5NzAsImV4cCI6MTc2MjQyMzc3MH0.kcjbPXcvRQQObgHiUlhry3iwruwmFu8Fstjd4Y8tySU', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 10:09:30.892', '2025-11-06 10:09:30.891');
INSERT INTO public."RefreshToken" VALUES ('ca5340b4-1a4c-48ae-9443-f1299e8c8135', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTk0NzksImV4cCI6MTc2MjQyNDI3OX0.GxroycP4zpFEl0pOTXvjT_CGOSq7-5vSQEAvyJUdH_g', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 10:17:59.173', '2025-11-06 10:17:59.172');
INSERT INTO public."RefreshToken" VALUES ('ce19b698-2e65-45fb-8834-d69f43c7bb77', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MTk2MTQsImV4cCI6MTc2MjQyNDQxNH0.8EatI55lnaWaHlX4Ve9sGEK2d0Jd7bXaVm-kVHiIZHw', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 10:20:14.885', '2025-11-06 10:20:14.884');
INSERT INTO public."RefreshToken" VALUES ('79e5d965-ecef-456d-947e-6eb7abdb8b0e', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MjA4NzksImV4cCI6MTc2MjQyNTY3OX0.fk1LPkYgOFfghrk3_oR9QTsqrMQkaotdaru0-EfkPhg', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 10:41:19.887', '2025-11-06 10:41:19.886');
INSERT INTO public."RefreshToken" VALUES ('355570ca-98aa-4168-8f78-c981bfba4772', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MjEwNzYsImV4cCI6MTc2MjQyNTg3Nn0.7IsuryEKwCJRstxVgQYKOAgog1mJ7BtCiCqXrKuibak', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 10:44:36.9', '2025-11-06 10:44:36.899');
INSERT INTO public."RefreshToken" VALUES ('73e7c10c-9604-4eb8-ad29-4561e794efda', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MjExNDMsImV4cCI6MTc2MjQyNTk0M30.Bm28SHJ2B1OyijzMf4_a7TwFT2kkusYU7PDv4-z29zo', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 10:45:43.83', '2025-11-06 10:45:43.829');
INSERT INTO public."RefreshToken" VALUES ('348a41a1-6584-43e1-bd17-f57a0631430f', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MjE0MzQsImV4cCI6MTc2MjQyNjIzNH0.UFUAnDanzeDuwIU1q9ZQ5jrDlpvGFAaonQUxD6kn6Ns', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 10:50:34.244', '2025-11-06 10:50:34.242');
INSERT INTO public."RefreshToken" VALUES ('7826e47c-9fe2-4831-a365-afdef5e44ad7', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjE4MjE2ODIsImV4cCI6MTc2MjQyNjQ4Mn0.xqy5r1bM1viU_WIhh8tvgLURHe6jJjDMqrhuA9xrcJA', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-10-30 10:54:42.016', '2025-11-06 10:54:42.015');
INSERT INTO public."RefreshToken" VALUES ('7127a8cf-5a0c-4510-a305-1d91c74b3c92', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjIwMTc5OTIsImV4cCI6MTc2MjYyMjc5Mn0.JGBi5PFdzDkaIVh3D7kKxEImiUGRgKndhA5_L9AS22Y', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-11-01 17:26:32.075', '2025-11-08 17:26:32.072');
INSERT INTO public."RefreshToken" VALUES ('6a1ec47d-20bd-46a9-a914-27b2cf790f1d', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjIxNTkzODAsImV4cCI6MTc2Mjc2NDE4MH0.5MsGb9XkfhIQyl0albGDF8yUPPrQfbSGL5D74SrkLKc', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-11-03 08:43:00.089', '2025-11-10 08:43:00.088');
INSERT INTO public."RefreshToken" VALUES ('269ef57f-425c-4f3c-8f5d-9a969a515ebf', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjIyNjM2MTcsImV4cCI6MTc2Mjg2ODQxN30.ZQpeXzf8NYG9vmFCOZEydXagktfg-qwPidX_JxJ65kE', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-11-04 13:40:17.665', '2025-11-11 13:40:17.664');
INSERT INTO public."RefreshToken" VALUES ('ce612e84-919e-43b0-b2fd-99aad0977f93', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjIyNjM2NjIsImV4cCI6MTc2Mjg2ODQ2Mn0.D0mhkPgDCLIgfi_BHBC73mGfEyBCfoGUCPpY0vZPFbY', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-11-04 13:41:02.517', '2025-11-11 13:41:02.516');
INSERT INTO public."RefreshToken" VALUES ('15be9bba-964f-442b-a6f0-4592b432b82b', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxZmE3NDBmYi0xMjc3LTQ5ZDItOGNkMS1mMzAyMWFhN2E4NTMiLCJpYXQiOjE3NjI0OTY2MzAsImV4cCI6MTc2MzEwMTQzMH0.roB7-UiADFlBaLDC3_aFkbN0pY5kjGgPKaXsg91kLIg', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', '2025-11-07 06:23:50.577', '2025-11-14 06:23:50.574');
INSERT INTO public."RefreshToken" VALUES ('3cadcf2d-911e-42b2-b8d3-7bf8c679c5f6', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjM1NzA2NDgsImV4cCI6MTc2NDE3NTQ0OH0.pGZZr__7MMCq1CtbCF2HdvO16cf4dYYKfEP0XCP-T5k', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-11-19 16:44:08.053', '2025-11-26 16:44:08.028');
INSERT INTO public."RefreshToken" VALUES ('9bf8f7ba-7d6d-4f28-a8fc-2a6da548fba9', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjQyNTM3MTQsImV4cCI6MTc2NDg1ODUxNH0.2b91coegq4_VOnZ8DMGfpS8m-fxhKs4RsOmkAwAyiXg', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-11-27 14:28:34.607', '2025-12-04 14:28:34.606');
INSERT INTO public."RefreshToken" VALUES ('ed36c874-9fca-4725-8d2d-033d627fe641', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjQ4NzQ2NjUsImV4cCI6MTc2NTQ3OTQ2NX0.gkEnjp5ed38X6n0mSenpiv-lrmL6SynPmrBxdbcdIdc', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-12-04 18:57:45.54', '2025-12-11 18:57:45.539');
INSERT INTO public."RefreshToken" VALUES ('04d005d5-0610-40e3-8d9d-abd7a31d05b8', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjU0ODYyMTIsImV4cCI6MTc2NjA5MTAxMn0.UU-6qHb29Kr-tnx27hZrNW8-XTfUaXnf8D15P5nq5pw', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-12-11 20:50:12.106', '2025-12-18 20:50:12.104');
INSERT INTO public."RefreshToken" VALUES ('0e8c0252-15e7-45b4-8251-cc7877a1f8ce', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjU4MjQ3MzUsImV4cCI6MTc2NjQyOTUzNX0.mP-xLZcrzbjJ6Dr6NFP5R8_IyxrzInH3NR2c6njR3iU', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-12-15 18:52:15.348', '2025-12-22 18:52:15.347');
INSERT INTO public."RefreshToken" VALUES ('dd9eb627-3da4-4efb-b0d1-0aac6dc3ddcd', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjU4MjQ4NDMsImV4cCI6MTc2NjQyOTY0M30.Vq4IWEmucTXwTzsTWFzXJGTNI3hbbZ4tGuvsnRc145c', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-12-15 18:54:03.34', '2025-12-22 18:54:03.338');
INSERT INTO public."RefreshToken" VALUES ('601e7d56-6eb7-4a2a-9019-30cf59d32581', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjU4MjUwMjMsImV4cCI6MTc2NjQyOTgyM30.ydPmfzkw7rRq6bVGFzthgaP9gFzxdvxWVnzsYyCf5AQ', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-12-15 18:57:03.36', '2025-12-22 18:57:03.358');
INSERT INTO public."RefreshToken" VALUES ('f62fb099-c1fe-48f4-9925-d8c4eb432982', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjY0MzAyNTMsImV4cCI6MTc2NzAzNTA1M30.XqQoUfswe-gbfYGoKAvyZ8u_oeXyS8t0Og_ECyQK5Wg', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-12-22 19:04:13.449', '2025-12-29 19:04:13.447');
INSERT INTO public."RefreshToken" VALUES ('d53989d5-77a6-47c2-be9e-ebddd1831239', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjY1MDg3NzgsImV4cCI6MTc2NzExMzU3OH0.5xnIH2ZFfpijYl-HJbWoC1Keq8ZignVGYznaylN8RZM', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-12-23 16:52:58.702', '2025-12-30 16:52:58.699');
INSERT INTO public."RefreshToken" VALUES ('c6b38787-fb7f-4119-a678-1f26fdf85f35', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjY1ODMyMDMsImV4cCI6MTc2NzE4ODAwM30.gyJdu32-ksROKhc-I6PGKwNGYP1G7JoXeawUl4XAkoo', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2025-12-24 13:33:23.439', '2025-12-31 13:33:23.438');
INSERT INTO public."RefreshToken" VALUES ('a72dfedb-d53f-4ff9-8453-e33063675ad0', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxZmE3NDBmYi0xMjc3LTQ5ZDItOGNkMS1mMzAyMWFhN2E4NTMiLCJpYXQiOjE3Njc5ODk5MDAsImV4cCI6MTc2ODU5NDcwMH0.92GEBFNtgQjfgIYcXqn_QTT5sjFmpX4u8ErhWpXkkoI', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', '2026-01-09 20:18:20.76', '2026-01-16 20:18:20.758');
INSERT INTO public."RefreshToken" VALUES ('718c58e7-5534-446a-9ba4-f86592336885', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjgwNTkzNTYsImV4cCI6MTc2ODY2NDE1Nn0.dLc9vdp-MKVM4qvIVGB5gjMEOakgO_brmpNvzlAPhxI', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2026-01-10 15:35:56.603', '2026-01-17 15:35:56.285');
INSERT INTO public."RefreshToken" VALUES ('5a7ccf97-d3be-4031-9a24-b1971ce52fe1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3Njg2NzU0MjEsImV4cCI6MTc2OTI4MDIyMX0.chNZPRGz4VRm9Jwa0C8_IOWCKZ9bZ0TLHwKiFE_mpOk', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2026-01-17 18:43:41.603', '2026-01-24 18:43:41.602');
INSERT INTO public."RefreshToken" VALUES ('80eeba19-8949-4fc4-9e61-e4910fdafb7b', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxZmE3NDBmYi0xMjc3LTQ5ZDItOGNkMS1mMzAyMWFhN2E4NTMiLCJpYXQiOjE3Njg5MDA2MjQsImV4cCI6MTc2OTUwNTQyNH0.aI6q-lGBB0WRpTN_i1q4-Osf1EKahQ2-vfoIH-vLOSw', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', '2026-01-20 09:17:04.842', '2026-01-27 09:17:04.84');
INSERT INTO public."RefreshToken" VALUES ('f186c852-dd6f-43b5-bda2-0953a44ef3f5', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjNjI4NWI4ZC03OTZiLTRjZTYtYmIyZC0zOTdjYmY0ZjhiNWUiLCJpYXQiOjE3NjkyODQ0NjksImV4cCI6MTc2OTg4OTI2OX0.kxpxK5Rw8lh7mdt9tbLJQGkVTIwvCUsXanPvnMpWRHI', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '2026-01-24 19:54:29.331', '2026-01-31 19:54:29.329');
INSERT INTO public."RefreshToken" VALUES ('27d16713-bf6c-4a26-9984-83877eecbfd6', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxZmE3NDBmYi0xMjc3LTQ5ZDItOGNkMS1mMzAyMWFhN2E4NTMiLCJpYXQiOjE3Njk1ODYwNTksImV4cCI6MTc3MDE5MDg1OX0.rPDh-ZBXrvyhGCy5ZEPNprCfI2Zwvdsma9hP2gTFAlE', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', '2026-01-28 07:40:59.041', '2026-02-04 07:40:59.04');
INSERT INTO public."RefreshToken" VALUES ('f02589fb-30c9-4a57-b1ae-cec73e034769', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxZmE3NDBmYi0xMjc3LTQ5ZDItOGNkMS1mMzAyMWFhN2E4NTMiLCJpYXQiOjE3NzAyMjM4MTYsImV4cCI6MTc3MDgyODYxNn0.dC5I79mlKxmJZtUuxJRBKySQHOVDp9sHLfockjlwzPo', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', '2026-02-04 16:50:16.704', '2026-02-11 16:50:16.643');
INSERT INTO public."RefreshToken" VALUES ('33bc5282-7ac6-4688-8af7-55c6cc71f064', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxZmE3NDBmYi0xMjc3LTQ5ZDItOGNkMS1mMzAyMWFhN2E4NTMiLCJpYXQiOjE3ODE1NTY3MDcsImV4cCI6MTc4MjE2MTUwN30.f4U0aEgsuB0UCLjRSZ1BqO0cKM9zeQcdkKLtHcxRfek', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', '2026-06-15 20:51:47.102', '2026-06-22 20:51:47.036');
INSERT INTO public."RefreshToken" VALUES ('5cb955d8-1d34-4d0d-8f05-067b1c10f8e8', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxZmE3NDBmYi0xMjc3LTQ5ZDItOGNkMS1mMzAyMWFhN2E4NTMiLCJpYXQiOjE3ODE1NTY3MTcsImV4cCI6MTc4MjE2MTUxN30.FI0O-3e0YuFns4NlCIwbmHEgeS-1MWlQlBJrZH-1I9s', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', '2026-06-15 20:51:57.25', '2026-06-22 20:51:57.249');


--
-- Data for Name: Review; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Review" VALUES (1, 4, 'this is good chicken', '2025-10-08 16:27:36.107', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '33bfd50e-7d2b-417f-95fd-a1c2fc73f19b');
INSERT INTO public."Review" VALUES (4, 4, '', '2025-11-25 14:43:28.064', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '335e811b-649e-4241-a1d7-832b0d006769');


--
-- Data for Name: ShippingRate; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."ShippingRate" VALUES (1, 'Abia', 'Aba North', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (2, 'Abia', 'Aba South', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (3, 'Abia', 'Arochukwu', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (4, 'Abia', 'Bende', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (5, 'Abia', 'Ikwuano', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (6, 'Abia', 'Isiala Ngwa North', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (7, 'Abia', 'Isiala Ngwa South', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (8, 'Abia', 'Isuikwuato', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (9, 'Abia', 'Obi Ngwa', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (10, 'Abia', 'Ohafia', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (11, 'Abia', 'Osisioma', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (12, 'Abia', 'Ugwunagbo', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (13, 'Abia', 'Ukwa East', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (14, 'Abia', 'Ukwa West', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (15, 'Abia', 'Umuahia North', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (16, 'Abia', 'Umuahia South', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (17, 'Abia', 'Umu Nneochi', 9800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (18, 'Adamawa', 'Demsa', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (19, 'Adamawa', 'Fufure', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (20, 'Adamawa', 'Ganye', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (21, 'Adamawa', 'Gayuk', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (22, 'Adamawa', 'Gombi', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (23, 'Adamawa', 'Grie', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (24, 'Adamawa', 'Hong', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (25, 'Adamawa', 'Jada', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (26, 'Adamawa', 'Lamurde', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (27, 'Adamawa', 'Madagali', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (28, 'Adamawa', 'Maiha', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (29, 'Adamawa', 'Mayo Belwa', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (30, 'Adamawa', 'Michika', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (31, 'Adamawa', 'Mubi North', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (32, 'Adamawa', 'Mubi South', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (33, 'Adamawa', 'Numan', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (34, 'Adamawa', 'Shelleng', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (35, 'Adamawa', 'Song', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (36, 'Adamawa', 'Toungo', 9800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (37, 'Adamawa', 'Yola North', 9900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (38, 'Adamawa', 'Yola South', 10000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (39, 'Akwa Ibom', 'Abak', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (40, 'Akwa Ibom', 'Eastern Obolo', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (41, 'Akwa Ibom', 'Eket', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (42, 'Akwa Ibom', 'Esit Eket', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (43, 'Akwa Ibom', 'Essien Udim', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (44, 'Akwa Ibom', 'Etim Ekpo', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (45, 'Akwa Ibom', 'Etinan', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (46, 'Akwa Ibom', 'Ibeno', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (47, 'Akwa Ibom', 'Ibesikpo Asutan', 9800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (48, 'Akwa Ibom', 'Ibiono-Ibom', 9900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (49, 'Akwa Ibom', 'Ika', 10000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (50, 'Akwa Ibom', 'Ikono', 10100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (51, 'Akwa Ibom', 'Ikot Abasi', 10200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (52, 'Akwa Ibom', 'Ikot Ekpene', 10300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (53, 'Akwa Ibom', 'Ini', 10400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (54, 'Akwa Ibom', 'Itu', 10500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (55, 'Akwa Ibom', 'Mbo', 10600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (56, 'Akwa Ibom', 'Mkpat-Enin', 10700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (57, 'Akwa Ibom', 'Nsit-Atai', 10800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (58, 'Akwa Ibom', 'Nsit-Ibom', 10900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (59, 'Akwa Ibom', 'Nsit-Ubium', 11000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (60, 'Akwa Ibom', 'Obot Akara', 11100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (61, 'Akwa Ibom', 'Okobo', 11200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (62, 'Akwa Ibom', 'Onna', 11300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (63, 'Akwa Ibom', 'Oron', 11400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (64, 'Akwa Ibom', 'Oruk Anam', 11500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (65, 'Akwa Ibom', 'Udung-Uko', 11600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (66, 'Akwa Ibom', 'Ukanafun', 11700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (67, 'Akwa Ibom', 'Uruan', 11800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (68, 'Akwa Ibom', 'Urue-Offong/Oruko', 11900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (69, 'Akwa Ibom', 'Uyo', 12000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (70, 'Anambra', 'Aguata', 7500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (71, 'Anambra', 'Anambra East', 7600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (72, 'Anambra', 'Anambra West', 7700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (73, 'Anambra', 'Anaocha', 7800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (74, 'Anambra', 'Awka North', 7900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (75, 'Anambra', 'Awka South', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (76, 'Anambra', 'Ayamelum', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (77, 'Anambra', 'Dunukofia', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (78, 'Anambra', 'Ekwusigo', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (79, 'Anambra', 'Idemili North', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (80, 'Anambra', 'Idemili South', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (81, 'Anambra', 'Ihiala', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (82, 'Anambra', 'Njikoka', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (83, 'Anambra', 'Nnewi North', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (84, 'Anambra', 'Nnewi South', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (85, 'Anambra', 'Ogbaru', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (86, 'Anambra', 'Onitsha North', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (87, 'Anambra', 'Onitsha South', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (88, 'Anambra', 'Orumba North', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (89, 'Anambra', 'Orumba South', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (90, 'Anambra', 'Oyi', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (91, 'Bauchi', 'Alkaleri', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (92, 'Bauchi', 'Bauchi', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (93, 'Bauchi', 'Bogoro', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (94, 'Bauchi', 'Damban', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (95, 'Bauchi', 'Darazo', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (96, 'Bauchi', 'Dass', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (97, 'Bauchi', 'Gamawa', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (98, 'Bauchi', 'Ganjuwa', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (99, 'Bauchi', 'Giade', 9800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (100, 'Bauchi', 'Itas/Gadau', 9900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (101, 'Bauchi', 'Jama''are', 10000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (102, 'Bauchi', 'Katagum', 10100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (103, 'Bauchi', 'Kirfi', 10200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (104, 'Bauchi', 'Misau', 10300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (105, 'Bauchi', 'Ningi', 10400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (106, 'Bauchi', 'Shira', 10500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (107, 'Bauchi', 'Tafawa Balewa', 10600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (108, 'Bauchi', 'Toro', 10700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (109, 'Bauchi', 'Warji', 10800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (110, 'Bauchi', 'Zaki', 10900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (111, 'Bayelsa', 'Brass', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (112, 'Bayelsa', 'Ekeremor', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (113, 'Bayelsa', 'Kolokuma/Opokuma', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (114, 'Bayelsa', 'Nembe', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (115, 'Bayelsa', 'Ogbia', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (116, 'Bayelsa', 'Sagbama', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (117, 'Bayelsa', 'Southern Ijaw', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (118, 'Bayelsa', 'Yenagoa', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (119, 'Benue', 'Ado', 4500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (120, 'Benue', 'Agatu', 4600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (121, 'Benue', 'Apa', 4700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (122, 'Benue', 'Buruku', 4800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (123, 'Benue', 'Gboko', 4900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (124, 'Benue', 'Guma', 5000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (125, 'Benue', 'Gwer East', 5100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (126, 'Benue', 'Gwer West', 5200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (127, 'Benue', 'Katsina-Ala', 5300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (128, 'Benue', 'Konshisha', 5400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (129, 'Benue', 'Kwande', 5500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (130, 'Benue', 'Logo', 5600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (131, 'Benue', 'Makurdi', 5700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (132, 'Benue', 'Obi', 5800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (133, 'Benue', 'Ogbadibo', 5900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (134, 'Benue', 'Ohimini', 6000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (135, 'Benue', 'Oju', 6100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (136, 'Benue', 'Okpokwu', 6200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (137, 'Benue', 'Oturkpo', 6300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (138, 'Benue', 'Tarka', 6400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (139, 'Benue', 'Ukum', 6500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (140, 'Benue', 'Ushongo', 6600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (141, 'Benue', 'Vandeikya', 6700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (142, 'Borno', 'Abadam', 11000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (143, 'Borno', 'Askira/Uba', 11100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (144, 'Borno', 'Bama', 11200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (145, 'Borno', 'Bayo', 11300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (146, 'Borno', 'Biu', 11400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (147, 'Borno', 'Chibok', 11500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (148, 'Borno', 'Damboa', 11600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (149, 'Borno', 'Dikwa', 11700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (150, 'Borno', 'Gubio', 11800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (151, 'Borno', 'Guzamala', 11900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (152, 'Borno', 'Gwoza', 12000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (153, 'Borno', 'Hawul', 12100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (154, 'Borno', 'Jere', 12200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (155, 'Borno', 'Kaga', 12300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (156, 'Borno', 'Kala/Balge', 12400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (157, 'Borno', 'Konduga', 12500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (158, 'Borno', 'Kukawa', 12600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (159, 'Borno', 'Kwaya Kusar', 12700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (160, 'Borno', 'Mafa', 12800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (161, 'Borno', 'Magumeri', 12900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (162, 'Borno', 'Maiduguri', 13000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (163, 'Borno', 'Marte', 13100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (164, 'Borno', 'Mobbar', 13200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (165, 'Borno', 'Monguno', 13300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (166, 'Borno', 'Ngala', 13400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (167, 'Borno', 'Nganzai', 13500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (168, 'Borno', 'Shani', 13600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (169, 'Cross River', 'Abi', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (170, 'Cross River', 'Akamkpa', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (171, 'Cross River', 'Akpabuyo', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (172, 'Cross River', 'Bakassi', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (173, 'Cross River', 'Bekwarra', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (174, 'Cross River', 'Biase', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (175, 'Cross River', 'Boki', 9800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (176, 'Cross River', 'Calabar Municipal', 9900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (177, 'Cross River', 'Calabar South', 10000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (178, 'Cross River', 'Etung', 10100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (179, 'Cross River', 'Ikom', 10200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (180, 'Cross River', 'Obanliku', 10300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (181, 'Cross River', 'Obubra', 10400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (182, 'Cross River', 'Obudu', 10500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (183, 'Cross River', 'Odukpani', 10600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (184, 'Cross River', 'Ogoja', 10700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (185, 'Cross River', 'Yakuur', 10800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (186, 'Cross River', 'Yala', 10900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (187, 'Delta', 'Aniocha North', 7000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (188, 'Delta', 'Aniocha South', 7100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (189, 'Delta', 'Bomadi', 7200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (190, 'Delta', 'Burutu', 7300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (191, 'Delta', 'Ethiope East', 7400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (192, 'Delta', 'Ethiope West', 7500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (193, 'Delta', 'Ika North East', 7600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (194, 'Delta', 'Ika South', 7700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (195, 'Delta', 'Isoko North', 7800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (196, 'Delta', 'Isoko South', 7900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (197, 'Delta', 'Ndokwa East', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (198, 'Delta', 'Ndokwa West', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (199, 'Delta', 'Okpe', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (200, 'Delta', 'Oshimili North', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (201, 'Delta', 'Oshimili South', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (202, 'Delta', 'Patani', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (203, 'Delta', 'Sapele', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (204, 'Delta', 'Udu', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (205, 'Delta', 'Ughelli North', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (206, 'Delta', 'Ughelli South', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (207, 'Delta', 'Ukwuani', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (208, 'Delta', 'Uvwie', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (209, 'Delta', 'Warri North', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (210, 'Delta', 'Warri South', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (211, 'Delta', 'Warri South West', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (212, 'Ebonyi', 'Abakaliki', 7800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (213, 'Ebonyi', 'Afikpo North', 7900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (214, 'Ebonyi', 'Afikpo South', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (215, 'Ebonyi', 'Ebonyi', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (216, 'Ebonyi', 'Ezza North', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (217, 'Ebonyi', 'Ezza South', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (218, 'Ebonyi', 'Ikwo', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (219, 'Ebonyi', 'Ishielu', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (220, 'Ebonyi', 'Ivo', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (221, 'Ebonyi', 'Izzi', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (222, 'Ebonyi', 'Ohaozara', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (223, 'Ebonyi', 'Ohaukwu', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (224, 'Ebonyi', 'Onicha', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (225, 'Edo', 'Akoko-Edo', 6500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (226, 'Edo', 'Egor', 6600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (227, 'Edo', 'Esan Central', 6700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (228, 'Edo', 'Esan North-East', 6800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (229, 'Edo', 'Esan South-East', 6900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (230, 'Edo', 'Esan West', 7000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (231, 'Edo', 'Etsako Central', 7100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (232, 'Edo', 'Etsako East', 7200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (233, 'Edo', 'Etsako West', 7300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (234, 'Edo', 'Igueben', 7400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (235, 'Edo', 'Ikpoba Okha', 7500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (236, 'Edo', 'Oredo', 7600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (237, 'Edo', 'Orhionmwon', 7700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (238, 'Edo', 'Ovia North-East', 7800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (239, 'Edo', 'Ovia South-West', 7900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (240, 'Edo', 'Owan East', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (241, 'Edo', 'Owan West', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (242, 'Edo', 'Uhunmwonde', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (243, 'Ekiti', 'Ado Ekiti', 6000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (244, 'Ekiti', 'Efon', 6100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (245, 'Ekiti', 'Ekiti East', 6200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (246, 'Ekiti', 'Ekiti South-West', 6300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (247, 'Ekiti', 'Ekiti West', 6400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (248, 'Ekiti', 'Emure', 6500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (249, 'Ekiti', 'Gbonyin', 6600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (250, 'Ekiti', 'Ido Osi', 6700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (251, 'Ekiti', 'Ijero', 6800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (252, 'Ekiti', 'Ikere', 6900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (253, 'Ekiti', 'Ikole', 7000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (254, 'Ekiti', 'Ilejemeje', 7100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (255, 'Ekiti', 'Irepodun/Ifelodun', 7200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (256, 'Ekiti', 'Ise/Orun', 7300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (257, 'Ekiti', 'Moba', 7400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (258, 'Ekiti', 'Oye', 7500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (259, 'Enugu', 'Aninri', 7000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (260, 'Enugu', 'Awgu', 7100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (261, 'Enugu', 'Enugu East', 7200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (262, 'Enugu', 'Enugu North', 7300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (263, 'Enugu', 'Enugu South', 7400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (264, 'Enugu', 'Ezeagu', 7500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (265, 'Enugu', 'Igbo Etiti', 7600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (266, 'Enugu', 'Igbo Eze North', 7700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (267, 'Enugu', 'Igbo Eze South', 7800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (268, 'Enugu', 'Isi Uzo', 7900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (269, 'Enugu', 'Nkanu East', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (270, 'Enugu', 'Nkanu West', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (271, 'Enugu', 'Nsukka', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (272, 'Enugu', 'Oji River', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (273, 'Enugu', 'Udenu', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (274, 'Enugu', 'Udi', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (275, 'Enugu', 'Uzo Uwani', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (276, 'FCT', 'Abaji', 3000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (277, 'FCT', 'Abuja Municipal', 3100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (278, 'FCT', 'Bwari', 3200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (279, 'FCT', 'Gwagwalada', 3300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (280, 'FCT', 'Kuje', 3400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (281, 'FCT', 'Kwali', 3500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (282, 'Gombe', 'Akko', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (283, 'Gombe', 'Balanga', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (284, 'Gombe', 'Billiri', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (285, 'Gombe', 'Dukku', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (286, 'Gombe', 'Funakaye', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (287, 'Gombe', 'Gombe', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (288, 'Gombe', 'Kaltungo', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (289, 'Gombe', 'Kwami', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (290, 'Gombe', 'Nafada', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (291, 'Gombe', 'Shongom', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (292, 'Gombe', 'Yamaltu/Deba', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (293, 'Imo', 'Aboh Mbaise', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (294, 'Imo', 'Ahiazu Mbaise', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (295, 'Imo', 'Ehime Mbano', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (296, 'Imo', 'Ezinihitte', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (297, 'Imo', 'Ideato North', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (298, 'Imo', 'Ideato South', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (299, 'Imo', 'Ihitte/Uboma', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (300, 'Imo', 'Ikeduru', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (301, 'Imo', 'Isiala Mbano', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (302, 'Imo', 'Isu', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (303, 'Imo', 'Mbaitoli', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (304, 'Imo', 'Ngor Okpala', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (305, 'Imo', 'Njaba', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (306, 'Imo', 'Nkwerre', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (307, 'Imo', 'Nwangele', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (308, 'Imo', 'Obowo', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (309, 'Imo', 'Oguta', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (310, 'Imo', 'Ohaji/Egbema', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (311, 'Imo', 'Okigwe', 9800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (312, 'Imo', 'Orlu', 9900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (313, 'Imo', 'Orsu', 10000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (314, 'Imo', 'Oru East', 10100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (315, 'Imo', 'Oru West', 10200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (316, 'Imo', 'Owerri Municipal', 10300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (317, 'Imo', 'Owerri North', 10400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (318, 'Imo', 'Owerri West', 10500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (319, 'Imo', 'Unuimo', 10600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (320, 'Jigawa', 'Auyo', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (321, 'Jigawa', 'Babura', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (322, 'Jigawa', 'Biriniwa', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (323, 'Jigawa', 'Birnin Kudu', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (324, 'Jigawa', 'Buji', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (325, 'Jigawa', 'Dutse', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (326, 'Jigawa', 'Gagarawa', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (327, 'Jigawa', 'Garki', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (328, 'Jigawa', 'Gumel', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (329, 'Jigawa', 'Guri', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (330, 'Jigawa', 'Gwaram', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (331, 'Jigawa', 'Gwiwa', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (332, 'Jigawa', 'Hadejia', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (333, 'Jigawa', 'Jahun', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (334, 'Jigawa', 'Kafin Hausa', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (335, 'Jigawa', 'Kaugama', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (336, 'Jigawa', 'Kazaure', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (337, 'Jigawa', 'Kiri Kasama', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (338, 'Jigawa', 'Kiyawa', 9800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (339, 'Jigawa', 'Maigatari', 9900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (340, 'Jigawa', 'Malam Madori', 10000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (341, 'Jigawa', 'Miga', 10100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (342, 'Jigawa', 'Ringim', 10200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (343, 'Jigawa', 'Roni', 10300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (344, 'Jigawa', 'Sule Tankarkar', 10400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (345, 'Jigawa', 'Taura', 10500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (346, 'Jigawa', 'Yankwashi', 10600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (347, 'Kaduna', 'Birnin Gwari', 3000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (348, 'Kaduna', 'Chikun', 3100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (349, 'Kaduna', 'Giwa', 3200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (350, 'Kaduna', 'Igabi', 3300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (351, 'Kaduna', 'Ikara', 3400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (352, 'Kaduna', 'Jaba', 3500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (353, 'Kaduna', 'Jema''a', 3600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (354, 'Kaduna', 'Kachia', 3700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (355, 'Kaduna', 'Kaduna North', 3800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (356, 'Kaduna', 'Kaduna South', 3900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (357, 'Kaduna', 'Kagarko', 4000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (358, 'Kaduna', 'Kajuru', 4100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (359, 'Kaduna', 'Kaura', 4200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (360, 'Kaduna', 'Kauru', 4300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (361, 'Kaduna', 'Kubau', 4400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (362, 'Kaduna', 'Kudan', 4500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (363, 'Kaduna', 'Lere', 4600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (364, 'Kaduna', 'Makarfi', 4700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (365, 'Kaduna', 'Sabon Gari', 4800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (366, 'Kaduna', 'Sanga', 4900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (367, 'Kaduna', 'Soba', 5000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (368, 'Kaduna', 'Zangon Kataf', 5100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (369, 'Kaduna', 'Zaria', 5200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (370, 'Kano', 'Ajingi', 7800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (371, 'Kano', 'Albasu', 7900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (372, 'Kano', 'Bagwai', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (373, 'Kano', 'Bebeji', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (374, 'Kano', 'Bichi', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (375, 'Kano', 'Bunkure', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (376, 'Kano', 'Dala', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (377, 'Kano', 'Dambatta', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (378, 'Kano', 'Dawakin Kudu', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (379, 'Kano', 'Dawakin Tofa', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (380, 'Kano', 'Doguwa', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (381, 'Kano', 'Fagge', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (382, 'Kano', 'Gabasawa', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (383, 'Kano', 'Garko', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (384, 'Kano', 'Garun Mallam', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (385, 'Kano', 'Gaya', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (386, 'Kano', 'Gezawa', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (387, 'Kano', 'Gwale', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (388, 'Kano', 'Gwarzo', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (389, 'Kano', 'Kabo', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (390, 'Kano', 'Kano Municipal', 9800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (391, 'Kano', 'Karaye', 9900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (392, 'Kano', 'Kibiya', 10000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (393, 'Kano', 'Kiru', 10100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (394, 'Kano', 'Kumbotso', 10200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (395, 'Kano', 'Kunchi', 10300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (396, 'Kano', 'Kura', 10400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (397, 'Kano', 'Madobi', 10500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (398, 'Kano', 'Makoda', 10600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (399, 'Kano', 'Minjibir', 10700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (400, 'Kano', 'Nasarawa', 10800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (401, 'Kano', 'Rano', 10900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (402, 'Kano', 'Rimin Gado', 11000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (403, 'Kano', 'Rogo', 11100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (404, 'Kano', 'Shanono', 11200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (405, 'Kano', 'Sumaila', 11300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (406, 'Kano', 'Takai', 11400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (407, 'Kano', 'Tarauni', 11500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (408, 'Kano', 'Tofa', 11600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (409, 'Kano', 'Tsanyawa', 11700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (410, 'Kano', 'Tudun Wada', 11800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (411, 'Kano', 'Ungogo', 11900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (412, 'Kano', 'Warawa', 12000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (413, 'Kano', 'Wudil', 12100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (414, 'Katsina', 'Bakori', 7500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (415, 'Katsina', 'Batagarawa', 7600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (416, 'Katsina', 'Batsari', 7700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (417, 'Katsina', 'Baure', 7800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (418, 'Katsina', 'Bindawa', 7900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (419, 'Katsina', 'Charanchi', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (420, 'Katsina', 'Dandume', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (421, 'Katsina', 'Danja', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (422, 'Katsina', 'Dan Musa', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (423, 'Katsina', 'Daura', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (424, 'Katsina', 'Dutsi', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (425, 'Katsina', 'Dutsin Ma', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (426, 'Katsina', 'Faskari', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (427, 'Katsina', 'Funtua', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (428, 'Katsina', 'Ingawa', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (429, 'Katsina', 'Jibia', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (430, 'Katsina', 'Kafur', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (431, 'Katsina', 'Kaita', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (432, 'Katsina', 'Kankara', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (433, 'Katsina', 'Kankia', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (434, 'Katsina', 'Katsina', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (435, 'Katsina', 'Kurfi', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (436, 'Katsina', 'Kusada', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (437, 'Katsina', 'Mai''Adua', 9800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (438, 'Katsina', 'Malumfashi', 9900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (439, 'Katsina', 'Mani', 10000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (440, 'Katsina', 'Mashi', 10100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (441, 'Katsina', 'Matazu', 10200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (442, 'Katsina', 'Musawa', 10300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (443, 'Katsina', 'Rimi', 10400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (444, 'Katsina', 'Sabuwa', 10500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (445, 'Katsina', 'Safana', 10600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (446, 'Katsina', 'Sandamu', 10700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (447, 'Katsina', 'Zango', 10800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (448, 'Kebbi', 'Aleiro', 7000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (449, 'Kebbi', 'Arewa Dandi', 7100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (450, 'Kebbi', 'Argungu', 7200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (451, 'Kebbi', 'Augie', 7300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (452, 'Kebbi', 'Bagudo', 7400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (453, 'Kebbi', 'Birnin Kebbi', 7500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (454, 'Kebbi', 'Bunza', 7600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (455, 'Kebbi', 'Dandi', 7700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (456, 'Kebbi', 'Fakai', 7800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (457, 'Kebbi', 'Gwandu', 7900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (458, 'Kebbi', 'Jega', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (459, 'Kebbi', 'Kalgo', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (460, 'Kebbi', 'Koko/Besse', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (461, 'Kebbi', 'Maiyama', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (462, 'Kebbi', 'Ngaski', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (463, 'Kebbi', 'Sakaba', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (464, 'Kebbi', 'Shanga', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (465, 'Kebbi', 'Suru', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (466, 'Kebbi', 'Wasagu/Danko', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (467, 'Kebbi', 'Yauri', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (468, 'Kebbi', 'Zuru', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (469, 'Kogi', 'Adavi', 3000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (470, 'Kogi', 'Ajaokuta', 3100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (471, 'Kogi', 'Ankpa', 3200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (472, 'Kogi', 'Bassa', 3300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (473, 'Kogi', 'Dekina', 3400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (474, 'Kogi', 'Ibaji', 3500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (475, 'Kogi', 'Idah', 3600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (476, 'Kogi', 'Igalamela Odolu', 3700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (477, 'Kogi', 'Ijumu', 3800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (478, 'Kogi', 'Kabba/Bunu', 3900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (479, 'Kogi', 'Kogi', 4000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (480, 'Kogi', 'Lokoja', 4100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (481, 'Kogi', 'Mopa Muro', 4200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (482, 'Kogi', 'Ofu', 4300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (483, 'Kogi', 'Ogori/Magongo', 4400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (484, 'Kogi', 'Okehi', 4500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (485, 'Kogi', 'Okene', 4600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (486, 'Kogi', 'Olamaboro', 4700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (487, 'Kogi', 'Omala', 4800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (488, 'Kogi', 'Yagba East', 4900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (489, 'Kogi', 'Yagba West', 5000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (490, 'Kwara', 'Asa', 5000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (491, 'Kwara', 'Baruten', 5100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (492, 'Kwara', 'Edu', 5200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (493, 'Kwara', 'Ekiti', 5300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (494, 'Kwara', 'Ifelodun', 5400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (495, 'Kwara', 'Ilorin East', 5500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (496, 'Kwara', 'Ilorin South', 5600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (497, 'Kwara', 'Ilorin West', 5700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (498, 'Kwara', 'Irepodun', 5800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (499, 'Kwara', 'Isin', 5900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (500, 'Kwara', 'Kaiama', 6000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (501, 'Kwara', 'Moro', 6100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (502, 'Kwara', 'Offa', 6200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (503, 'Kwara', 'Oke Ero', 6300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (504, 'Kwara', 'Oyun', 6400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (505, 'Kwara', 'Pategi', 6500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (506, 'Lagos', 'Agege', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (507, 'Lagos', 'Ajeromi-Ifelodun', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (508, 'Lagos', 'Alimosho', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (509, 'Lagos', 'Amuwo-Odofin', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (510, 'Lagos', 'Apapa', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (511, 'Lagos', 'Badagry', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (512, 'Lagos', 'Epe', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (513, 'Lagos', 'Eti Osa', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (514, 'Lagos', 'Ibeju-Lekki', 9800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (515, 'Lagos', 'Ifako-Ijaiye', 9900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (516, 'Lagos', 'Ikeja', 10000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (517, 'Lagos', 'Ikorodu', 10100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (518, 'Lagos', 'Kosofe', 10200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (519, 'Lagos', 'Lagos Island', 10300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (520, 'Lagos', 'Lagos Mainland', 10400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (521, 'Lagos', 'Mushin', 10500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (522, 'Lagos', 'Ojo', 10600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (523, 'Lagos', 'Oshodi-Isolo', 10700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (524, 'Lagos', 'Shomolu', 10800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (525, 'Lagos', 'Surulere', 10900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (526, 'Nasarawa', 'Akwanga', 3000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (527, 'Nasarawa', 'Awe', 3100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (528, 'Nasarawa', 'Doma', 3200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (529, 'Nasarawa', 'Karu', 3300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (530, 'Nasarawa', 'Keana', 3400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (531, 'Nasarawa', 'Keffi', 3500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (532, 'Nasarawa', 'Kokona', 3600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (533, 'Nasarawa', 'Lafia', 3700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (534, 'Nasarawa', 'Nasarawa', 3800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (535, 'Nasarawa', 'Nasarawa Egon', 3900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (536, 'Nasarawa', 'Obi', 4000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (537, 'Nasarawa', 'Toto', 4100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (538, 'Nasarawa', 'Wamba', 4200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (539, 'Niger', 'Agaie', 3000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (540, 'Niger', 'Agwara', 3100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (541, 'Niger', 'Bida', 3200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (542, 'Niger', 'Borgu', 3300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (543, 'Niger', 'Bosso', 3400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (544, 'Niger', 'Chanchaga', 3500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (545, 'Niger', 'Edati', 3600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (546, 'Niger', 'Gbako', 3700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (547, 'Niger', 'Gurara', 3800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (548, 'Niger', 'Katcha', 3900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (549, 'Niger', 'Kontagora', 4000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (550, 'Niger', 'Lapai', 4100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (551, 'Niger', 'Lavun', 4200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (552, 'Niger', 'Magama', 4300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (553, 'Niger', 'Mariga', 4400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (554, 'Niger', 'Mashegu', 4500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (555, 'Niger', 'Mokwa', 4600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (556, 'Niger', 'Moya', 4700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (557, 'Niger', 'Paikoro', 4800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (558, 'Niger', 'Rafi', 4900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (559, 'Niger', 'Rijau', 5000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (560, 'Niger', 'Shiroro', 5100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (561, 'Niger', 'Suleja', 5200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (562, 'Niger', 'Tafa', 5300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (563, 'Niger', 'Wushishi', 5400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (564, 'Ogun', 'Abeokuta North', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (565, 'Ogun', 'Abeokuta South', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (566, 'Ogun', 'Ado-Odo/Ota', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (567, 'Ogun', 'Egbado North', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (568, 'Ogun', 'Egbado South', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (569, 'Ogun', 'Ewekoro', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (570, 'Ogun', 'Ifo', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (571, 'Ogun', 'Ijebu East', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (572, 'Ogun', 'Ijebu North', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (573, 'Ogun', 'Ijebu North East', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (574, 'Ogun', 'Ijebu Ode', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (575, 'Ogun', 'Ikenne', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (576, 'Ogun', 'Imeko Afon', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (577, 'Ogun', 'Ipokia', 9800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (578, 'Ogun', 'Obafemi Owode', 9900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (579, 'Ogun', 'Odeda', 10000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (580, 'Ogun', 'Odogbolu', 10100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (581, 'Ogun', 'Ogun Waterside', 10200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (582, 'Ogun', 'Remo North', 10300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (583, 'Ogun', 'Shagamu', 10400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (584, 'Ondo', 'Akoko North-East', 6500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (585, 'Ondo', 'Akoko North-West', 6600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (586, 'Ondo', 'Akoko South-East', 6700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (587, 'Ondo', 'Akoko South-West', 6800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (588, 'Ondo', 'Akure North', 6900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (589, 'Ondo', 'Akure South', 7000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (590, 'Ondo', 'Ese Odo', 7100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (591, 'Ondo', 'Idanre', 7200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (592, 'Ondo', 'Ifedore', 7300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (593, 'Ondo', 'Ilaje', 7400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (594, 'Ondo', 'Ile Oluji/Okeigbo', 7500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (595, 'Ondo', 'Irele', 7600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (596, 'Ondo', 'Odigbo', 7700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (597, 'Ondo', 'Okitipupa', 7800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (598, 'Ondo', 'Ondo East', 7900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (599, 'Ondo', 'Ondo West', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (600, 'Ondo', 'Ose', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (601, 'Ondo', 'Owo', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (602, 'Osun', 'Aiyedade', 7000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (603, 'Osun', 'Aiyedire', 7100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (604, 'Osun', 'Atakunmosa East', 7200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (605, 'Osun', 'Atakunmosa West', 7300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (606, 'Osun', 'Boluwaduro', 7400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (607, 'Osun', 'Boripe', 7500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (608, 'Osun', 'Ede North', 7600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (609, 'Osun', 'Ede South', 7700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (610, 'Osun', 'Egbedore', 7800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (611, 'Osun', 'Ejigbo', 7900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (612, 'Osun', 'Ife Central', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (613, 'Osun', 'Ife East', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (614, 'Osun', 'Ife North', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (615, 'Osun', 'Ife South', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (616, 'Osun', 'Ifedayo', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (617, 'Osun', 'Ifelodun', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (618, 'Osun', 'Ila', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (619, 'Osun', 'Ilesa East', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (620, 'Osun', 'Ilesa West', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (621, 'Osun', 'Irepodun', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (622, 'Osun', 'Irewole', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (623, 'Osun', 'Isokan', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (624, 'Osun', 'Iwo', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (625, 'Osun', 'Obokun', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (626, 'Osun', 'Odo Otin', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (627, 'Osun', 'Ola Oluwa', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (628, 'Osun', 'Olorunda', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (629, 'Osun', 'Oriade', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (630, 'Osun', 'Orolu', 9800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (631, 'Osun', 'Osogbo', 9900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (632, 'Oyo', 'Afijio', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (633, 'Oyo', 'Akinyele', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (634, 'Oyo', 'Atiba', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (635, 'Oyo', 'Atisbo', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (636, 'Oyo', 'Egbeda', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (637, 'Oyo', 'Ibadan North', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (638, 'Oyo', 'Ibadan North-East', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (639, 'Oyo', 'Ibadan North-West', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (640, 'Oyo', 'Ibadan South-East', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (641, 'Oyo', 'Ibadan South-West', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (642, 'Oyo', 'Ibarapa Central', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (643, 'Oyo', 'Ibarapa East', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (644, 'Oyo', 'Ibarapa North', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (645, 'Oyo', 'Ido', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (646, 'Oyo', 'Irepo', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (647, 'Oyo', 'Iseyin', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (648, 'Oyo', 'Itesiwaju', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (649, 'Oyo', 'Iwajowa', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (650, 'Oyo', 'Kajola', 9800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (651, 'Oyo', 'Lagelu', 9900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (652, 'Oyo', 'Ogbomosho North', 10000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (653, 'Oyo', 'Ogbomosho South', 10100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (654, 'Oyo', 'Ogo Oluwa', 10200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (655, 'Oyo', 'Olorunsogo', 10300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (656, 'Oyo', 'Oluyole', 10400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (657, 'Oyo', 'Ona Ara', 10500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (658, 'Oyo', 'Orelope', 10600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (659, 'Oyo', 'Ori Ire', 10700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (660, 'Oyo', 'Oyo East', 10800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (661, 'Oyo', 'Oyo West', 10900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (662, 'Oyo', 'Saki East', 11000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (663, 'Oyo', 'Saki West', 11100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (664, 'Oyo', 'Surulere', 11200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (665, 'Plateau', 'Barkin Ladi', 4000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (666, 'Plateau', 'Bassa', 4100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (667, 'Plateau', 'Bokkos', 4200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (668, 'Plateau', 'Jos East', 4300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (669, 'Plateau', 'Jos North', 4400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (670, 'Plateau', 'Jos South', 4500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (671, 'Plateau', 'Kanam', 4600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (672, 'Plateau', 'Kanke', 4700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (673, 'Plateau', 'Langtang North', 4800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (674, 'Plateau', 'Langtang South', 4900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (675, 'Plateau', 'Mangu', 5000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (676, 'Plateau', 'Mikang', 5100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (677, 'Plateau', 'Pankshin', 5200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (678, 'Plateau', 'Qua''an Pan', 5300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (679, 'Plateau', 'Riyom', 5400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (680, 'Plateau', 'Shendam', 5500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (681, 'Plateau', 'Wase', 5600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (682, 'Rivers', 'Abua/Odual', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (683, 'Rivers', 'Ahoada East', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (684, 'Rivers', 'Ahoada West', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (685, 'Rivers', 'Akuku-Toru', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (686, 'Rivers', 'Andoni', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (687, 'Rivers', 'Asari-Toru', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (688, 'Rivers', 'Bonny', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (689, 'Rivers', 'Degema', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (690, 'Rivers', 'Eleme', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (691, 'Rivers', 'Emuoha', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (692, 'Rivers', 'Etche', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (693, 'Rivers', 'Gokana', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (694, 'Rivers', 'Ikwerre', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (695, 'Rivers', 'Khana', 9800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (696, 'Rivers', 'Obio/Akpor', 9900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (697, 'Rivers', 'Ogba/Egbema/Ndoni', 10000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (698, 'Rivers', 'Ogu/Bolo', 10100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (699, 'Rivers', 'Okrika', 10200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (700, 'Rivers', 'Omuma', 10300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (701, 'Rivers', 'Opobo/Nkoro', 10400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (702, 'Rivers', 'Oyigbo', 10500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (703, 'Rivers', 'Port Harcourt', 10600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (704, 'Rivers', 'Tai', 10700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (705, 'Sokoto', 'Binji', 7500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (706, 'Sokoto', 'Bodinga', 7600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (707, 'Sokoto', 'Dange Shuni', 7700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (708, 'Sokoto', 'Gada', 7800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (709, 'Sokoto', 'Goronyo', 7900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (710, 'Sokoto', 'Gudu', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (711, 'Sokoto', 'Gwadabawa', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (712, 'Sokoto', 'Illela', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (713, 'Sokoto', 'Isa', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (714, 'Sokoto', 'Kebbe', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (715, 'Sokoto', 'Kware', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (716, 'Sokoto', 'Rabah', 8600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (717, 'Sokoto', 'Sabon Birni', 8700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (718, 'Sokoto', 'Shagari', 8800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (719, 'Sokoto', 'Silame', 8900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (720, 'Sokoto', 'Sokoto North', 9000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (721, 'Sokoto', 'Sokoto South', 9100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (722, 'Sokoto', 'Tambuwal', 9200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (723, 'Sokoto', 'Tangaza', 9300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (724, 'Sokoto', 'Tureta', 9400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (725, 'Sokoto', 'Wamako', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (726, 'Sokoto', 'Wurno', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (727, 'Sokoto', 'Yabo', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (728, 'Taraba', 'Ardo Kola', 7000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (729, 'Taraba', 'Bali', 7100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (730, 'Taraba', 'Donga', 7200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (731, 'Taraba', 'Gashaka', 7300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (732, 'Taraba', 'Gassol', 7400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (733, 'Taraba', 'Ibi', 7500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (734, 'Taraba', 'Jalingo', 7600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (735, 'Taraba', 'Karim Lamido', 7700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (736, 'Taraba', 'Kumi', 7800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (737, 'Taraba', 'Lau', 7900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (738, 'Taraba', 'Sardauna', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (739, 'Taraba', 'Takum', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (740, 'Taraba', 'Ussa', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (741, 'Taraba', 'Wukari', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (742, 'Taraba', 'Yorro', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (743, 'Taraba', 'Zing', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (744, 'Yobe', 'Bade', 9500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (745, 'Yobe', 'Bursari', 9600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (746, 'Yobe', 'Damaturu', 9700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (747, 'Yobe', 'Fika', 9800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (748, 'Yobe', 'Fune', 9900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (749, 'Yobe', 'Geidam', 10000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (750, 'Yobe', 'Gujba', 10100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (751, 'Yobe', 'Gulani', 10200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (752, 'Yobe', 'Jakusko', 10300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (753, 'Yobe', 'Karasuwa', 10400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (754, 'Yobe', 'Machina', 10500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (755, 'Yobe', 'Nangere', 10600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (756, 'Yobe', 'Nguru', 10700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (757, 'Yobe', 'Potiskum', 10800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (758, 'Yobe', 'Tarmuwa', 10900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (759, 'Yobe', 'Yunusari', 11000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (760, 'Yobe', 'Yusufari', 11100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (761, 'Zamfara', 'Anka', 7200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (762, 'Zamfara', 'Bakura', 7300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (763, 'Zamfara', 'Birnin Magaji/Kiyaw', 7400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (764, 'Zamfara', 'Bukkuyum', 7500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (765, 'Zamfara', 'Bungudu', 7600, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (766, 'Zamfara', 'Gummi', 7700, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (767, 'Zamfara', 'Gusau', 7800, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (768, 'Zamfara', 'Kaura Namoda', 7900, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (769, 'Zamfara', 'Maradun', 8000, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (770, 'Zamfara', 'Maru', 8100, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (771, 'Zamfara', 'Shinkafi', 8200, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (772, 'Zamfara', 'Talata Mafara', 8300, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (773, 'Zamfara', 'Chafe', 8400, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');
INSERT INTO public."ShippingRate" VALUES (774, 'Zamfara', 'Zurmi', 8500, 'standard', '2025-07-23 16:38:47.061', '2025-07-23 16:38:47.061');


--
-- Data for Name: UserArchive; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: UserView; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."UserView" VALUES ('2e103d87-134d-4a7f-bdb4-28daacd1e84b', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '335e811b-649e-4241-a1d7-832b0d006769', '2025-11-25 08:19:30.055', NULL);
INSERT INTO public."UserView" VALUES ('32d60a75-c4e8-4f58-9e8f-0adba8535795', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '9fa3a263-843a-4049-ac15-1705147637d7', '2025-11-25 08:19:29.981', NULL);
INSERT INTO public."UserView" VALUES ('dd9c37ea-5cc8-4445-ae8f-7fa3e32e4f8d', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '9fa3a263-843a-4049-ac15-1705147637d7', '2025-11-25 08:19:30.073', NULL);
INSERT INTO public."UserView" VALUES ('18002bba-9f9a-4f2e-a7e4-d7249533a7f1', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'a1cc367d-f953-4d9c-8d0b-790e4abde541', '2025-11-25 10:10:52.291', NULL);
INSERT INTO public."UserView" VALUES ('10d3d4cb-f91d-439b-886a-1f0f80c2f317', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '8cca2491-a86d-4299-a75f-fe2856d46634', '2025-11-25 10:14:03.957', NULL);
INSERT INTO public."UserView" VALUES ('b21bc0e4-511a-423d-8edb-d237e1edaa20', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '7173277f-8ebb-4468-aea6-2d02a36910e6', '2025-11-25 10:35:46.666', NULL);
INSERT INTO public."UserView" VALUES ('22245bf8-a39c-44ea-b3c6-37a33eeb2df7', NULL, '7b01818a-e1b5-4ba5-8b54-1547ceb12e6b', '2025-11-25 16:17:45.064', '01b58ac3-fb2a-422c-b53c-ad281c51079a');
INSERT INTO public."UserView" VALUES ('e4885f37-507a-402a-8da5-29c8fd37b608', NULL, '7b01818a-e1b5-4ba5-8b54-1547ceb12e6b', '2025-11-25 16:17:45.064', '01b58ac3-fb2a-422c-b53c-ad281c51079a');
INSERT INTO public."UserView" VALUES ('a23bcd61-b5ad-49b3-8d89-577e5188c5ec', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '12a23137-1929-465a-92dd-85eeeb890dbe', '2025-12-24 13:34:05.554', NULL);
INSERT INTO public."UserView" VALUES ('8b898621-436b-4d20-a341-9076f2165b1d', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '46430be5-d5bf-4907-98e4-722a98369b06', '2025-12-24 13:37:21.888', NULL);
INSERT INTO public."UserView" VALUES ('7f0e2337-0e9a-4974-a85b-ad70cf1a30d6', NULL, '12a23137-1929-465a-92dd-85eeeb890dbe', '2025-12-27 16:11:21.953', '01b58ac3-fb2a-422c-b53c-ad281c51079a');
INSERT INTO public."UserView" VALUES ('20873ab6-f45b-47df-9b2e-c86a29e29eba', NULL, '12a23137-1929-465a-92dd-85eeeb890dbe', '2025-12-27 16:11:21.916', '01b58ac3-fb2a-422c-b53c-ad281c51079a');
INSERT INTO public."UserView" VALUES ('3525f300-6f52-44f3-b191-33784d60fef0', NULL, '12a23137-1929-465a-92dd-85eeeb890dbe', '2025-12-27 16:11:22.306', '01b58ac3-fb2a-422c-b53c-ad281c51079a');
INSERT INTO public."UserView" VALUES ('1732ef64-479b-4fe1-92ae-a370d70e8673', NULL, 'a1cc367d-f953-4d9c-8d0b-790e4abde541', '2025-12-27 16:20:29.059', '01b58ac3-fb2a-422c-b53c-ad281c51079a');
INSERT INTO public."UserView" VALUES ('62a5d74c-95b9-4775-a857-650a0f9fc45f', NULL, 'a1cc367d-f953-4d9c-8d0b-790e4abde541', '2025-12-27 16:20:29.057', '01b58ac3-fb2a-422c-b53c-ad281c51079a');
INSERT INTO public."UserView" VALUES ('64d7a3fd-e76b-4b87-8ed4-f61c30e072a8', NULL, '8cca2491-a86d-4299-a75f-fe2856d46634', '2025-12-30 10:08:02.014', '01b58ac3-fb2a-422c-b53c-ad281c51079a');
INSERT INTO public."UserView" VALUES ('e4ae0188-79dd-40b9-a651-0a6a9ced6b12', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '260cd0b5-6d85-4f35-ae84-573165329529', '2025-12-30 10:11:47.108', NULL);
INSERT INTO public."UserView" VALUES ('299e89e8-5c1d-475f-ad79-0cfc77bf4858', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '33bfd50e-7d2b-417f-95fd-a1c2fc73f19b', '2025-12-30 10:12:00.435', NULL);
INSERT INTO public."UserView" VALUES ('9619b629-24d7-4f74-a656-f69e26c9ea15', NULL, '46430be5-d5bf-4907-98e4-722a98369b06', '2026-01-09 07:01:21.766', '01b58ac3-fb2a-422c-b53c-ad281c51079a');
INSERT INTO public."UserView" VALUES ('e0c656e4-58f4-4289-8d3d-d90f1cb046bf', NULL, '801766ca-b0e5-40e3-bac1-a1315be66113', '2026-01-09 12:38:43.877', '01b58ac3-fb2a-422c-b53c-ad281c51079a');
INSERT INTO public."UserView" VALUES ('d4edd639-7256-4f0e-b393-784359fc0af2', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '025d3854-b55a-4724-a8b7-bdbe4a3e3458', '2026-06-11 08:59:36.347', NULL);
INSERT INTO public."UserView" VALUES ('d61c1e45-f66d-4404-a227-ba9bdebbed28', NULL, '260cd0b5-6d85-4f35-ae84-573165329529', '2026-06-11 09:02:19.103', '01b58ac3-fb2a-422c-b53c-ad281c51079a');
INSERT INTO public."UserView" VALUES ('6c920ac8-5169-4e91-a129-46937fa409d7', NULL, 'bed3fe26-eef3-471a-8de1-21a321b23b9e', '2026-06-14 19:13:59.093', '01b58ac3-fb2a-422c-b53c-ad281c51079a');
INSERT INTO public."UserView" VALUES ('dc3fec1d-f944-402d-86a3-6ad06cca4d38', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'bed3fe26-eef3-471a-8de1-21a321b23b9e', '2026-06-14 19:19:50.654', NULL);
INSERT INTO public."UserView" VALUES ('1881d764-69ae-4e96-a7c7-4c7ba70b5c32', NULL, 'f272bb02-2677-4059-aadc-bd36e360236d', '2026-06-14 19:26:02.769', '01b58ac3-fb2a-422c-b53c-ad281c51079a');
INSERT INTO public."UserView" VALUES ('89b1c730-0bec-4138-a144-c3a5d12a8262', NULL, '6b3638b2-150b-408c-b446-a276f3050edf', '2026-06-14 19:38:08.902', '01b58ac3-fb2a-422c-b53c-ad281c51079a');
INSERT INTO public."UserView" VALUES ('bf22b10d-ffb8-471c-9bc6-b06adc126d0d', NULL, 'b7835176-40f8-4f7f-93e9-12fb07b393a6', '2026-06-15 08:59:14.542', '01b58ac3-fb2a-422c-b53c-ad281c51079a');


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public._prisma_migrations VALUES ('f030b0c3-6649-4b04-b32c-f77f0c52cca9', '6ca7b875790db775b50a2521a743a73a988441ad526df58188c994cf8aa216d6', '2025-10-06 15:36:00.510639+01', '20251006143600_add_email_change_fields', NULL, NULL, '2025-10-06 15:36:00.377197+01', 1);
INSERT INTO public._prisma_migrations VALUES ('6d6e164f-a9cd-4d23-929a-252b7c1adca7', '6018a3a46dab0346807f0847b56242aacf9c6ea1885c7ba6fb2468cd76be3d88', '2025-05-31 18:31:34.002776+01', '20250531173132_update_enums', NULL, NULL, '2025-05-31 18:31:33.745573+01', 1);
INSERT INTO public._prisma_migrations VALUES ('177c37ba-4733-47d7-8b17-29d6845f9081', '14124cfc7240e6a3ad215caf35ee745fd1b3d33a4c5aeb539cad4b8e1619937a', '2025-07-10 19:48:42.107847+01', '20250710184838_update_fulfillment_status', NULL, NULL, '2025-07-10 19:48:39.330446+01', 1);
INSERT INTO public._prisma_migrations VALUES ('56301d9a-6af6-4602-a194-a61c4a611d1c', '19159a87d6f2ab17beffd64162afe700b8483cfdf83827e55087b414be396435', '2025-05-31 19:41:29.096037+01', '20250531184127_update_role_enum', NULL, NULL, '2025-05-31 19:41:28.9405+01', 1);
INSERT INTO public._prisma_migrations VALUES ('b404cf57-05ea-4e49-abfa-117af009f6dd', '96ed59e9418f79f7d6c8705fd7392cad58155ea616ff3c7684296bfcddde7320', '2025-05-31 19:45:43.67362+01', '20250531184542_update_status_enum', NULL, NULL, '2025-05-31 19:45:43.649171+01', 1);
INSERT INTO public._prisma_migrations VALUES ('93280a90-a477-478a-b505-87628644b9c0', '7efadbbe34b45c2705e6282b57c1b42645b3695a301230374129eb49c0b0cd0f', '2025-07-26 18:03:32.915714+01', '20250726170332_add_refresh_token', NULL, NULL, '2025-07-26 18:03:32.735992+01', 1);
INSERT INTO public._prisma_migrations VALUES ('43815d37-b831-4799-b275-ac5c98d626e4', '1d97f8204dfec6d15e9a15974283fef63be57b2d542dcc461c373b39fb6ffcc8', '2025-05-31 19:50:55.284639+01', '20250531185054_update_auth_provider_enum', NULL, NULL, '2025-05-31 19:50:55.264175+01', 1);
INSERT INTO public._prisma_migrations VALUES ('4c4391cb-448a-4175-a869-f0ea5f7a5484', '0674643bce6502b2bf903e2baa5d6f6bf1273837c2432af04ec07b9e7cd0a2bd', '2025-07-18 10:27:48.520971+01', '20250718092748_add_daily_deals', NULL, NULL, '2025-07-18 10:27:48.335098+01', 1);
INSERT INTO public._prisma_migrations VALUES ('95363a6f-b7c7-4e79-9c17-f5e7ab6a6e07', '0be04db716a119067c0a1ad1a3e6eefd18dd4ded563506cc56b0054fbfd788b9', '2025-06-06 08:03:09.984886+01', '20250606070308_renamed_tx_ref', NULL, NULL, '2025-06-06 08:03:09.568661+01', 1);
INSERT INTO public._prisma_migrations VALUES ('d89ca0ac-2c96-46ef-ac5e-4327a6c2aad8', '98db3575386b8bf64a455d21c3d229287cf69f37994ce7b7660629585a525fd3', '2025-06-07 20:39:52.504167+01', '20250607193950_add_google_id', NULL, NULL, '2025-06-07 20:39:52.225513+01', 1);
INSERT INTO public._prisma_migrations VALUES ('9a3e3ca9-16c3-487d-b3ed-f03752c39bdf', 'c063f9a53e07fdebd445cc58d21be127acfc74cd18765db4e7a80b286297b1a6', '2025-06-10 18:21:26.893767+01', '20250610172125_add_profile_pic_public_id', NULL, NULL, '2025-06-10 18:21:26.573975+01', 1);
INSERT INTO public._prisma_migrations VALUES ('6ae38517-3eeb-4bbb-aca4-159826cc9684', '669bd5f11de733d7fde3e850b70bcb813e477d7d37d5258dd61d91c9d211f56b', '2025-07-19 17:57:57.286113+01', '20250719165757_add_unit_fields', NULL, NULL, '2025-07-19 17:57:57.111477+01', 1);
INSERT INTO public._prisma_migrations VALUES ('76fcdcb6-e5d0-44a1-a2f9-f3b7bc0ebcb2', 'e479e6f8871e843bb5e6129d375aa63d4339e66fdd9347caf1d5469e5bfc2f74', '2025-06-18 21:09:35.931132+01', '20250618200935_add_moderator_role', NULL, NULL, '2025-06-18 21:09:35.518475+01', 1);
INSERT INTO public._prisma_migrations VALUES ('fa3851b8-735b-4a8c-8776-b1635f57c68c', '704076fc960b8dee0b7c832928f9620f57ceb46a3fd9caa5d0d13c047ca82c66', '2025-06-21 22:37:05.219912+01', '20250621213703_add_reset_token', NULL, NULL, '2025-06-21 22:37:03.992538+01', 1);
INSERT INTO public._prisma_migrations VALUES ('495b530f-6cfd-43d5-acab-6c06b24a6ee0', '9ea06b57b9aa9a0210cd1e70b891c34b2daee208498b3c105e43ed5f0f1b2288', '2025-06-25 18:30:35.690372+01', '20250625173035_add_product_images', NULL, NULL, '2025-06-25 18:30:35.076084+01', 1);
INSERT INTO public._prisma_migrations VALUES ('5dec3e05-7739-4994-afc7-7b41736548e2', '463f311e8e8ba8a522a49bb176d6d195ec874176e8a1d70dfd6984513f3398d7', '2025-07-22 20:29:09.435985+01', '20250722192909_add_shipping_details', NULL, NULL, '2025-07-22 20:29:09.394639+01', 1);
INSERT INTO public._prisma_migrations VALUES ('62a7e129-7d30-4da3-94d0-bea0aa54ef10', '078137cdeebeea44452828478a9ec6e8035ec38db5368f756c3dba6da3a7853f', '2025-07-07 12:25:47.416751+01', '20250707112547_make_type_optional', NULL, NULL, '2025-07-07 12:25:47.14526+01', 1);
INSERT INTO public._prisma_migrations VALUES ('e0ec03ee-b468-4b5e-ba58-ec4096d1d998', 'a61e4545ed527ba9b457072efa3420484809c24e737b2d922751d9d628b32d12', '2025-07-07 12:50:21.824835+01', '20250707115021_add_public_id_to_product_image', NULL, NULL, '2025-07-07 12:50:21.737031+01', 1);
INSERT INTO public._prisma_migrations VALUES ('fba71b48-18db-469f-b939-a709bb6a98d1', '31de400b237d1d2d9d7311cbb6d3a20f897f8f0b94251a08a9b2190458899ab8', '2025-07-26 21:16:29.679478+01', '20250726201627_add_admin_alerts_table', NULL, NULL, '2025-07-26 21:16:28.210277+01', 1);
INSERT INTO public._prisma_migrations VALUES ('6b4c0c44-085f-4e6d-96a7-f643b776b65f', '10d11823e653dc79ab3c37987ed847f8d33c424f9ab7f22d76ffb6b627e853fe', '2025-07-07 12:50:41.354598+01', '20250707115041_add_public_id_to_product_image', NULL, NULL, '2025-07-07 12:50:41.350616+01', 1);
INSERT INTO public._prisma_migrations VALUES ('f7a76941-d282-4a51-b6f4-2cb60bef3367', '8d99ac0618c183211012407230ea8605e807e92f0637ce77c353c8c51cf7c838', '2025-07-23 17:26:35.496323+01', '20250723162635_create_shipping_rate_table', NULL, NULL, '2025-07-23 17:26:35.214984+01', 1);
INSERT INTO public._prisma_migrations VALUES ('2c18d63b-c098-4be3-b086-1edb9c304e88', '6247ef006a9f66007939fbb1186e6a59270c89f2e233ca9d21a122c3047288f8', '2025-07-24 12:12:18.447251+01', '20250724111218_add_order_pricing_fields', NULL, NULL, '2025-07-24 12:12:18.238904+01', 1);
INSERT INTO public._prisma_migrations VALUES ('12ef51d5-aa2c-47ac-bc78-80aea2587f49', '2297979904c749467b7eca1ec25ed4c73f2ac83a21fa42b5dd805711cecf0cb3', '2025-10-22 20:51:35.747975+01', '20251022195135_change_refresh_token_to_array', NULL, NULL, '2025-10-22 20:51:35.262999+01', 1);
INSERT INTO public._prisma_migrations VALUES ('56f2c169-4eea-487d-ab5f-00ca6f9d385e', '48994bcd9c2db98ad09fa4746bd522ab3df284e72d2b395dd4144b1c50fb7410', '2025-07-24 20:19:25.821824+01', '20250724191925_add_order_delivery_type_field', NULL, NULL, '2025-07-24 20:19:25.673383+01', 1);
INSERT INTO public._prisma_migrations VALUES ('c9355977-e1e2-4ecd-adb1-dcb05386a859', 'b55d66360f27aa4cea485ef79d01de5bc8023ce062f1d27b9ea4ea13e703df26', '2025-07-31 11:24:07.714165+01', '20250731102407_add_popular_fields', NULL, NULL, '2025-07-31 11:24:07.630816+01', 1);
INSERT INTO public._prisma_migrations VALUES ('d3d4c415-14a1-43d4-8a82-49132d8f1e02', '38c7385526a1caada4321821c80d201f9f486c1cceccfa93bc9596e8712ecf24', '2025-07-24 20:34:38.767246+01', '20250724193438_add_daily_deals_discount_percentage_field', NULL, NULL, '2025-07-24 20:34:38.538311+01', 1);
INSERT INTO public._prisma_migrations VALUES ('12d9e40f-d804-41bc-97cb-86b4d2b06cd1', '326815050ffed438ab291542b93f4764b882c55c7b3477e3f003d480f3fd3e96', '2025-10-06 17:04:32.230243+01', '20251006160432_add_email_change_requested_at', NULL, NULL, '2025-10-06 17:04:32.071416+01', 1);
INSERT INTO public._prisma_migrations VALUES ('0f9bc7ec-a422-43bb-b382-03519f913c0c', '0ec5854fb4802941175d667dc9183ca76844efbc9cac8298d63151ed56a76478', '2025-08-05 07:35:57.964914+01', '20250805063557_add_popular_at_to_product', NULL, NULL, '2025-08-05 07:35:57.862684+01', 1);
INSERT INTO public._prisma_migrations VALUES ('37114d35-0e54-4ad2-b58f-46371ba86aa6', '1a64658ea4ab386abd634c46869778c096a647752a43b5344cb46936f61a9f88', '2025-10-02 15:56:14.977544+01', '20251002145614_add_favorite_relation', NULL, NULL, '2025-10-02 15:56:14.259462+01', 1);
INSERT INTO public._prisma_migrations VALUES ('73f23bf4-2910-4575-abb2-31b98a31618d', 'ef4d44428bcb412df4d08b6061150eefa561b6f95477472b259b47200d9b8d99', '2025-10-08 16:44:04.598061+01', '20251008154404_add_reviews_model', NULL, NULL, '2025-10-08 16:44:04.159182+01', 1);
INSERT INTO public._prisma_migrations VALUES ('0ba67b9e-686b-4a87-b55b-87e4c967f165', '6500d480bfdf44e92484ba21c6aac38eb8f9abc964b5b4558062e6c7cf13f4ed', '2025-10-07 12:50:12.398785+01', '20251007115012_add_phone_to_user', NULL, NULL, '2025-10-07 12:50:12.173034+01', 1);
INSERT INTO public._prisma_migrations VALUES ('ba28bd9c-1401-4408-a3bd-8219ac686b1f', '1d20f7e55cf45956f5127368b2f255d798c751656c2e91a8e19f97bac15476bc', '2025-10-12 18:47:35.145979+01', '20251012174734_rebuild_daily_deals_table', NULL, NULL, '2025-10-12 18:47:34.832422+01', 1);
INSERT INTO public._prisma_migrations VALUES ('5466ed1c-6adb-4bb5-bf20-b3acd643124b', 'ae61c23706678eb22a175f39f88ba583ec3bea0be9dd2a23c9a50f7293c39f44', '2025-10-07 16:52:13.296252+01', '20251007155213_create_address_table', NULL, NULL, '2025-10-07 16:52:13.203084+01', 1);
INSERT INTO public._prisma_migrations VALUES ('ae3524b1-5190-4679-afdd-29b5bdc21658', '22bc54eecbeb5ed602f7cddabd068dc753fed38eefcbf29bec4a66e1367a1804', '2025-10-09 22:05:25.571957+01', '20251009210524_refactor_discount_system', NULL, NULL, '2025-10-09 22:05:24.195981+01', 1);
INSERT INTO public._prisma_migrations VALUES ('68c20fbe-61e3-4320-a88d-1458e882d8b3', 'd16fad68e4edbeac561e8bb780369ae5e07baa95ff9c847813d91d645ea8ae5a', '2025-10-28 11:12:06.554231+00', '20251028111206_fix_cartitem_relations', NULL, NULL, '2025-10-28 11:12:06.197132+00', 1);
INSERT INTO public._prisma_migrations VALUES ('b32bea69-a87e-4124-a761-9a5bb7e6ad06', '4b9adcb873f4ce2322dd32b65b55fb9b751cd007da7c6c734a19e50b840af450', '2025-11-10 18:27:30.73684+00', '20251110182730_add_daily_task_tracker', NULL, NULL, '2025-11-10 18:27:30.353579+00', 1);
INSERT INTO public._prisma_migrations VALUES ('13f1089d-d775-40c4-affd-cef00a54a196', 'dcb9415b3736b0edd18ee8f32de40294eca72d0a12dbf78e8c2ebc7db404b61c', '2025-11-16 07:54:43.298732+00', '20251116075443_add_deleted_status', NULL, NULL, '2025-11-16 07:54:43.179473+00', 1);
INSERT INTO public._prisma_migrations VALUES ('c095f898-2a15-49ed-8186-5d2d422bffaa', 'a9b995db81dcb5c6cb84f80cebbff172b129bb645505aec64960ddfcd9b962ab', '2025-11-17 06:28:03.035275+00', '20251117062802_add_price_in_kobo_to_cart', NULL, NULL, '2025-11-17 06:28:02.743457+00', 1);
INSERT INTO public._prisma_migrations VALUES ('beac3277-d53c-4c29-a649-bcb08cd09154', 'd1d3bf057fed18a6971509ed2bcbba7f316a9a66d1377a092877bef6ce9465da', '2025-11-19 09:46:45.579837+00', '20251119094644_create_bug_report', NULL, NULL, '2025-11-19 09:46:45.036939+00', 1);
INSERT INTO public._prisma_migrations VALUES ('a4618ff9-9df4-4dde-8197-7de18a33ba1f', '686270715e8ea0fcff7ac9e76f730268bd5221fca1521fc42e58c1a9b6a37b1d', '2025-11-19 15:58:13.139613+00', '20251119155812_add_status_to_bug_report', NULL, NULL, '2025-11-19 15:58:12.552549+00', 1);
INSERT INTO public._prisma_migrations VALUES ('7eab3a59-d643-4ae2-83a5-6afb7f80c8d7', '37c7a902c943a8205ddbb8ff9fdb3c79316624975c72c96d7ae855c862ab0269', '2025-11-23 07:37:19.0526+00', '20251123073718_add_discount_fields_to_cartitem', NULL, NULL, '2025-11-23 07:37:18.949744+00', 1);
INSERT INTO public._prisma_migrations VALUES ('7f221e07-3842-49f7-83f2-4bbb7a32b823', '3117eea3331083cf7fb58858a1754dc813c3627a23762702b5e2070e92fab6cb', '2025-12-22 20:49:53.996396+00', '20251222204953_add_cascade_delete_to_product_images', NULL, NULL, '2025-12-22 20:49:53.48319+00', 1);
INSERT INTO public._prisma_migrations VALUES ('ce4fc751-2482-4789-b548-102ed0d26de8', '2f0a07a6eda23ce8bc242570af8ad815b75badc47d7d7af929cdc39952a0aaaf', '2025-11-23 18:11:01.13033+00', '20251123181100_add_subcategory_to_product', NULL, NULL, '2025-11-23 18:11:01.014269+00', 1);
INSERT INTO public._prisma_migrations VALUES ('5cc77571-76b8-41db-ba2e-42df09442594', 'aec899bf070e17f6350e15e3983052adef2ac1db412b2043725aa58543b5b6e2', '2025-11-24 20:07:07.930638+00', '20251124200707_add_sold_count_to_product', NULL, NULL, '2025-11-24 20:07:07.361974+00', 1);
INSERT INTO public._prisma_migrations VALUES ('b55c858f-7568-4883-8a09-7e85ddff15a7', 'eb3fc0dbf27bd2344eccd97b134852ef5237a23705176b64b2293bddc49a74a2', '2025-11-25 14:38:44.650266+00', '20251125143844_add_rating_count_sum', NULL, NULL, '2025-11-25 14:38:44.520798+00', 1);
INSERT INTO public._prisma_migrations VALUES ('34bb15ba-faa0-4fd7-a515-c5ef7c8c55e3', '7039066c305512fc0a3853002eab42c19f095f2252d9dc3260a3c8615b02cf03', '2025-12-23 17:35:09.658844+00', '20251223173509_add_verification_sent_successfully', NULL, NULL, '2025-12-23 17:35:09.450553+00', 1);
INSERT INTO public._prisma_migrations VALUES ('7ce3ad45-feb3-4e0e-82c6-b88597416ebb', 'f3ec28704318a4a7f79f9b32729ac08e73fcc649d5defdef9fa0e16f294f29d1', '2025-11-25 16:02:44.899624+00', '20251125160244_add_anon_id_to_user_view', NULL, NULL, '2025-11-25 16:02:44.851454+00', 1);
INSERT INTO public._prisma_migrations VALUES ('3e6fda93-22d6-45f3-9736-bf00f986793d', '0890e2b116a1c72c7fafbe582a3d9bbc8dcd798877baeac9247a624ac4ec4dad', '2025-11-25 16:17:26.180572+00', '20251125161725_make_user_id_optional', NULL, NULL, '2025-11-25 16:17:25.983397+00', 1);
INSERT INTO public._prisma_migrations VALUES ('25e5f19e-634c-43c3-a94e-751a7fe1bb38', '592873635bf85b0fcb8dfda7d998c6fa685bdc83c453d60dc6174894ef69e013', '2025-12-02 07:19:52.619282+00', '20251202071951_add_reserved_and_updated_at', NULL, NULL, '2025-12-02 07:19:52.047244+00', 1);
INSERT INTO public._prisma_migrations VALUES ('54aa8158-0b1d-4adb-8b9d-c5b91852d432', '0bb3e59c6e297e6b052199be4d32e3076a9ebc0c980733cc19e3b420e0d410b4', '2025-12-26 10:15:44.940812+00', '20251226101544_added', NULL, NULL, '2025-12-26 10:15:44.548082+00', 1);
INSERT INTO public._prisma_migrations VALUES ('bfdcf519-5594-43d8-bdef-2d9e20302f5f', '3461756a313490e222b695d20dbc0743c19fe03b76b7f0664d249014ac3a07d1', '2025-12-03 16:45:35.806711+00', '20251203164535_add_estimated_delivery_dates', NULL, NULL, '2025-12-03 16:45:35.769785+00', 1);
INSERT INTO public._prisma_migrations VALUES ('b3228470-5fd1-4087-b914-82f1f2dfb731', '40ccd6aa86d84abb9f50fcd864d91acb2f438a03f685672103023ebb9daf7cbe', '2025-12-05 06:51:10.356282+00', '20251205065110_add_base_price', NULL, NULL, '2025-12-05 06:51:10.223376+00', 1);
INSERT INTO public._prisma_migrations VALUES ('1de206ac-e865-4cb4-b212-39483b996670', 'b1e4f655943dba4a7819a2d52900ebc55b4b5097820ae7dd0ea7a188eebbf881', '2025-12-05 06:57:33.428093+00', '20251205065733_make_base_price_required', NULL, NULL, '2025-12-05 06:57:33.422996+00', 1);
INSERT INTO public._prisma_migrations VALUES ('4d8d7d3c-b471-41f4-91c4-70fa174f5b02', '755822dd3c2d9c3a4e9c2e1c015faeddf13c1d44b0ebd63460b8d21cf1db4a14', '2026-01-13 20:09:59.304817+00', '20260113200958_add_title_seen_read_to_admin_alert', NULL, NULL, '2026-01-13 20:09:59.015121+00', 1);
INSERT INTO public._prisma_migrations VALUES ('6199c666-3a03-4ae1-a165-87e7ae145338', '93d20efd1306889590151b11c6a38fa3951117049b97fcb3235cff40dfd16c8e', '2025-12-15 18:35:38.905796+00', '20251215183538_add_log_model', NULL, NULL, '2025-12-15 18:35:38.707781+00', 1);
INSERT INTO public._prisma_migrations VALUES ('8f8d5197-5a7c-425f-96e9-315383c3bca2', '95f075972aa0818f03b732520e6fb0e719f01b2bbf90b2792fa07b601f6fda33', '2025-12-22 18:53:37.128373+00', '20251222185336_add_expired_order_status', NULL, NULL, '2025-12-22 18:53:36.990415+00', 1);
INSERT INTO public._prisma_migrations VALUES ('40e6cfff-588b-4f8b-ae1d-d4c7fcd12d55', '6bc359183aabadf3f644a23cc089a69de61d54015dd36b55a1e7dce8d89dff87', '2026-01-19 09:06:31.740263+00', '20260119090631_init_ticket_tables', NULL, NULL, '2026-01-19 09:06:31.369226+00', 1);
INSERT INTO public._prisma_migrations VALUES ('35c7802c-bd83-4478-a93c-9851e9a02862', 'b4a220e48d4744b3204d2cce0f6a12cbc6f8595839048ee3a4f6ceb132c62055', '2026-02-02 10:16:04.210675+00', '20260202101604_add_last_read_at_to_tickets', NULL, NULL, '2026-02-02 10:16:04.101173+00', 1);
INSERT INTO public._prisma_migrations VALUES ('0fe631ec-ca26-467b-8046-c05a38427710', '7b894e49df5b344f4ef536ed5212e10dfdad22ae25df2ba38de9fc14ca1fdf23', '2026-02-03 07:50:00.111044+00', '20260203075000_add_dual_read_timestamps', NULL, NULL, '2026-02-03 07:50:00.05146+00', 1);
INSERT INTO public._prisma_migrations VALUES ('b69ef2b0-dd43-40a2-b56d-783b3b8c0477', 'f9d9025cec43a846e4a293829d82b3e642f2bce9d4f16a78afec35780f0396ad', '2026-06-14 17:02:28.204154+01', '20260614160227_add_product_visibility', NULL, NULL, '2026-06-14 17:02:27.301587+01', 1);


--
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tickets VALUES ('06c40cf0-b932-4d58-b999-f145ed8944ea', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'payment issues', 'payment', 'high', 'pending', 'prime', '2026-01-19 10:27:34.726', '2026-01-19 16:43:58.987', '2026-02-03 07:50:00.066', '2026-02-03 07:50:00.066');
INSERT INTO public.tickets VALUES ('aa923af5-470d-4cc3-bf3d-d73aba33e5f6', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'carty button not working', 'general', 'low', 'open', NULL, '2026-01-19 17:06:45.406', '2026-01-19 17:06:45.406', '2026-02-03 07:50:00.066', '2026-02-03 07:50:00.066');
INSERT INTO public.tickets VALUES ('77214ac1-3cb8-4a97-bf50-bd9056bb582c', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'cart button not working', 'general', 'high', 'pending', 'prime', '2026-01-19 17:09:35.037', '2026-01-19 17:12:20.224', '2026-02-03 07:50:00.066', '2026-02-03 07:50:00.066');
INSERT INTO public.tickets VALUES ('7a18c4d2-73ff-422d-922b-294968d7d791', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'payment issue', 'payment', 'low', 'pending', 'prime', '2026-01-20 09:18:28.588', '2026-01-20 09:35:00.243', '2026-02-03 07:50:00.066', '2026-02-03 07:50:00.066');
INSERT INTO public.tickets VALUES ('25f40518-f44c-4314-8e16-c3437a27fa70', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'Refund not received', 'refund', 'high', 'open', NULL, '2026-01-20 10:49:44.342', '2026-01-20 10:49:44.342', '2026-02-03 07:50:00.066', '2026-02-03 07:50:00.066');
INSERT INTO public.tickets VALUES ('0fb637d4-378a-49b6-a245-1ef4410f2fe3', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'Account login issue', 'account', 'medium', 'open', NULL, '2026-01-20 16:09:16.251', '2026-01-20 16:09:16.251', '2026-02-03 07:50:00.066', '2026-02-03 07:50:00.066');
INSERT INTO public.tickets VALUES ('c1ee8423-b6a4-4de3-a7f2-9fbfe39cc0b3', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'Damaged milk container', 'product_quality', 'high', 'open', NULL, '2026-01-20 16:17:49.778', '2026-01-20 16:17:49.778', '2026-02-03 07:50:00.066', '2026-02-03 07:50:00.066');
INSERT INTO public.tickets VALUES ('3490a6e0-5b52-4346-a15f-3ff37c777846', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'Payment failed but amount deducted', 'payment', 'high', 'open', NULL, '2026-01-20 16:26:45.931', '2026-02-02 20:43:11.075', '2026-02-03 07:50:00.066', '2026-02-03 07:50:00.066');
INSERT INTO public.tickets VALUES ('7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'Clarification on order details', 'order_issue', 'high', 'pending', 'prime', '2026-01-20 16:30:45.188', '2026-02-05 13:16:48.281', '2026-02-05 13:16:17.579', '2026-02-05 13:16:48.28');


--
-- Data for Name: ticket_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ticket_messages VALUES ('9ad15020-5644-40cf-99ac-eb9ec79b9adc', '77214ac1-3cb8-4a97-bf50-bd9056bb582c', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'i tried to open the cart and its not working please fix that please!!!', '2026-01-19 17:09:35.041');
INSERT INTO public.ticket_messages VALUES ('49c734b6-999f-4071-a5aa-980d0563b9c7', '77214ac1-3cb8-4a97-bf50-bd9056bb582c', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'hi thank you very much for reaching out to us well let our devepers know of the issue and get back to you in a moment', '2026-01-19 17:56:07.886');
INSERT INTO public.ticket_messages VALUES ('241f240f-6384-42a2-8186-d0dcbb00473d', '7a18c4d2-73ff-422d-922b-294968d7d791', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'I''m trying to make payments but it''s not going through please fix this as soon as possible!', '2026-01-20 09:18:28.903');
INSERT INTO public.ticket_messages VALUES ('a8bb38de-a8c9-4739-8282-651d729b66c0', '7a18c4d2-73ff-422d-922b-294968d7d791', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'hello chouji thank you for messaging us well let our devs know of the issue and get back to you as soon as possible...thanks you', '2026-01-20 09:36:04.733');
INSERT INTO public.ticket_messages VALUES ('b5fcdf9a-be60-4c29-b06b-2a717a9afeb9', '25f40518-f44c-4314-8e16-c3437a27fa70', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'I returned a fertilizer order last week and still haven''t received my refund. Kindly check.', '2026-01-20 10:49:44.532');
INSERT INTO public.ticket_messages VALUES ('cfc9cef9-d22d-44c4-8f71-241d650197e2', '0fb637d4-378a-49b6-a245-1ef4410f2fe3', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'I''m unable to log into my account despite entering the correct password.', '2026-01-20 16:09:16.59');
INSERT INTO public.ticket_messages VALUES ('60fb7f20-c6af-4182-bd1e-0a1fbff0af86', 'c1ee8423-b6a4-4de3-a7f2-9fbfe39cc0b3', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'The milk I received was spilled and the container was broken. I want a replacement.', '2026-01-20 16:17:49.782');
INSERT INTO public.ticket_messages VALUES ('04db7785-2664-40fa-9c24-ab091e723ee6', '3490a6e0-5b52-4346-a15f-3ff37c777846', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'I tried to pay for my order, the transaction failed, but the money was deducted from my account.', '2026-01-20 16:26:46.013');
INSERT INTO public.ticket_messages VALUES ('faa96f97-fbf5-4097-b227-a92d9b0e0d45', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'I want to confirm if the order I placed yesterday includes the seeds I requested.', '2026-01-20 16:30:45.191');
INSERT INTO public.ticket_messages VALUES ('932d59ef-beb1-48a1-a3b4-1191e4b0817c', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'thank you for reaching out to us and yes it includes the seeds you requested', '2026-01-20 17:13:45.843');
INSERT INTO public.ticket_messages VALUES ('4d926b75-a652-45a3-ae46-714a58c502d9', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'thank you very much for your patience the issue has been resolved.', '2026-01-20 20:47:38.163');
INSERT INTO public.ticket_messages VALUES ('6feb926b-2252-4689-928f-c2d6dad39955', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'testing to see if the socket io issue is resolved!!!', '2026-01-21 16:54:11.248');
INSERT INTO public.ticket_messages VALUES ('35ad74dd-2767-4d94-9cde-afdf48e06e80', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'i think it isnt solved sir!!!', '2026-01-21 19:49:14.8');
INSERT INTO public.ticket_messages VALUES ('f3175ffe-31b4-456e-a27c-52992345826d', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'lets test  the socket io one more time', '2026-01-21 19:53:35.805');
INSERT INTO public.ticket_messages VALUES ('04dc71ef-4441-44a8-bf6b-385853f4bc3b', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'haha its working well in the client side', '2026-01-21 19:53:55.237');
INSERT INTO public.ticket_messages VALUES ('33014c96-af34-4967-89f0-66ab7afd44db', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'test test test testing the microphone 123', '2026-01-21 20:55:23.831');
INSERT INTO public.ticket_messages VALUES ('1218949d-d217-4408-b192-d65cfb26ea3e', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'ehemmm', '2026-01-21 20:56:16.974');
INSERT INTO public.ticket_messages VALUES ('075b6d31-357f-4ffe-a5d9-903910d49af3', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'what exactly might be the problem?', '2026-01-21 20:57:28.35');
INSERT INTO public.ticket_messages VALUES ('792ecfba-bea5-4421-b216-f803c0a854ef', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'ahaaa the green dot works instantly!', '2026-01-21 20:57:58.621');
INSERT INTO public.ticket_messages VALUES ('6f6e620c-b090-4456-853f-645a1ec04dbb', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'testing again', '2026-01-21 20:59:24.463');
INSERT INTO public.ticket_messages VALUES ('39ffe3d4-b1b7-43fb-a722-751bcb2ebd14', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'why didnt it work right now and now instantly started working...', '2026-01-21 20:59:57.52');
INSERT INTO public.ticket_messages VALUES ('8cd1df6c-e559-4962-a127-5e1e10fad4f5', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'not working?', '2026-01-21 21:00:12.231');
INSERT INTO public.ticket_messages VALUES ('9cc83259-490c-4f82-a2ae-fb89b5919367', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'yeah its not working cries in italian!!!', '2026-01-22 06:27:42.313');
INSERT INTO public.ticket_messages VALUES ('9cc86ae2-47eb-4dc6-bc8f-b1abc39b562b', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'why is that?!!!', '2026-01-22 06:28:07.547');
INSERT INTO public.ticket_messages VALUES ('bf451e31-b2b9-4d98-a88d-2b59ec1c2bc8', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '???', '2026-01-22 06:28:56.397');
INSERT INTO public.ticket_messages VALUES ('778094e7-464b-4d7d-a4bb-f44eefad1962', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'it claims ive joined the global room so testing ehem', '2026-01-22 06:33:02.348');
INSERT INTO public.ticket_messages VALUES ('dc2c4edd-57e1-47ee-a0cb-44e89cdea8fa', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'ok testing ehem...', '2026-01-22 06:36:27.358');
INSERT INTO public.ticket_messages VALUES ('9faa6416-6f58-4880-9722-9729b40f3c5f', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'testing again ehem...', '2026-01-22 06:37:33.651');
INSERT INTO public.ticket_messages VALUES ('d0d68e72-b85c-4c1d-97d6-ce2cbad436b0', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'tete te', '2026-01-22 06:37:56.194');
INSERT INTO public.ticket_messages VALUES ('6712e717-abdd-4245-91e7-541fe827de55', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'twe twe twe', '2026-01-22 06:39:02.16');
INSERT INTO public.ticket_messages VALUES ('9eed817b-4125-4aae-b20f-3af881243d86', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'abalakamush', '2026-01-22 06:39:25.722');
INSERT INTO public.ticket_messages VALUES ('7e60eb83-72c9-41fa-b2f2-c5c54adef94d', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'what a stressful testing hehe', '2026-01-22 06:59:43.526');
INSERT INTO public.ticket_messages VALUES ('3fa81981-f3e7-4c84-980d-cf2fea842514', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'is it now working alpha beta gamma confirm status!!!', '2026-01-22 07:00:22.632');
INSERT INTO public.ticket_messages VALUES ('140b6113-1327-4f37-996f-787154168d2e', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'kabush kabash!!!', '2026-01-22 07:00:46.026');
INSERT INTO public.ticket_messages VALUES ('ee8c7f64-2d9a-4d16-95ac-3a7c21d232a0', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'kabush kabash?', '2026-01-22 07:01:18.952');
INSERT INTO public.ticket_messages VALUES ('fe281e46-0c09-400b-9cf4-4a4bad5a971a', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'is it working now?', '2026-01-23 14:20:58.927');
INSERT INTO public.ticket_messages VALUES ('547344e4-ee1d-4f96-ad50-a62fda3befca', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'tf how is this possible?', '2026-01-23 14:21:12.921');
INSERT INTO public.ticket_messages VALUES ('e48b475f-48a0-4287-9f07-786a9d616676', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'hehe', '2026-01-23 15:00:21.525');
INSERT INTO public.ticket_messages VALUES ('4d37f2fe-0c7f-4f2c-b454-8b6fee1830a4', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'why isnt the notiication icon working?', '2026-01-23 15:00:44.451');
INSERT INTO public.ticket_messages VALUES ('cdf93a50-425c-48de-bb9f-9342c5fea02b', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'the chats suppoed to work now?', '2026-01-23 15:03:01.277');
INSERT INTO public.ticket_messages VALUES ('1b46ee47-6754-4405-a817-c494de8ff5b5', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'yes its working hehe', '2026-01-23 15:03:13.74');
INSERT INTO public.ticket_messages VALUES ('0586f422-766d-48f3-a7b6-37c2b843b046', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'god knows why!!!', '2026-01-23 15:03:27.192');
INSERT INTO public.ticket_messages VALUES ('0c1cabc4-7aa2-4fb4-95e7-1c63ae58bb0e', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'it happens smoothly here', '2026-01-23 15:03:39.944');
INSERT INTO public.ticket_messages VALUES ('96369e08-2b84-4121-b8c5-7943bc827384', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'hello there ', '2026-01-23 15:03:58.61');
INSERT INTO public.ticket_messages VALUES ('540a536e-69de-4594-851b-050d827d91e0', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'yooooo tf my own part aint working', '2026-01-23 15:04:17.505');
INSERT INTO public.ticket_messages VALUES ('1b069d8b-4bd4-483a-bb02-85fb1fab1d5d', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'hello', '2026-01-23 15:04:52.486');
INSERT INTO public.ticket_messages VALUES ('a1028f65-f352-44d7-b2d7-027b94dbca79', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'why isnt mine appearing instantly?', '2026-01-23 15:05:05.628');
INSERT INTO public.ticket_messages VALUES ('49049853-b06c-4aa5-9af1-8533e0a83213', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'hello', '2026-01-23 15:09:40.895');
INSERT INTO public.ticket_messages VALUES ('38561fb1-87d6-4871-b080-9f09cf81ac4c', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'hi how are you doing', '2026-01-23 15:09:54.048');
INSERT INTO public.ticket_messages VALUES ('9af3f168-b4af-4d74-ab2f-e1923ff70a73', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'hello', '2026-01-23 15:10:31.631');
INSERT INTO public.ticket_messages VALUES ('9ff6fb13-ba55-4658-a5b3-ce15e9bb82d6', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'now on my end hello', '2026-01-23 15:10:49.717');
INSERT INTO public.ticket_messages VALUES ('b1bc7c54-721c-4860-8d1e-002994d58b37', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'tf it works well now', '2026-01-23 15:11:01.094');
INSERT INTO public.ticket_messages VALUES ('3c402ecb-33bd-4352-a28b-e68ce21c8d13', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'but it also works well here', '2026-01-23 15:11:12.778');
INSERT INTO public.ticket_messages VALUES ('a795591f-1e74-4c71-a7fc-51f20b510173', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'testing after refresh!!!', '2026-01-23 15:11:34.346');
INSERT INTO public.ticket_messages VALUES ('7e2483a7-0838-467b-9a28-b394d490039d', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'also testing affter refresh here', '2026-01-23 15:12:04.081');
INSERT INTO public.ticket_messages VALUES ('efb7c0d5-d7e6-4c0a-9c81-d1c8a9d97240', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'dog eats dog', '2026-01-23 15:12:23.262');
INSERT INTO public.ticket_messages VALUES ('98f47623-2751-40bf-9e39-236c3caf3360', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'doggie dog', '2026-01-23 15:12:30.928');
INSERT INTO public.ticket_messages VALUES ('c6a9d3ba-8131-4791-8cf8-c96da5792e54', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'i left and came back to test', '2026-01-23 15:13:30.524');
INSERT INTO public.ticket_messages VALUES ('5a87fc59-b729-42b0-81d7-2e6d2df859af', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'also left and came back to test', '2026-01-23 15:14:06.862');
INSERT INTO public.ticket_messages VALUES ('f0273187-8ad3-4171-b0cb-e7c6ce19eb25', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'retesting the websockets', '2026-01-24 19:55:26.606');
INSERT INTO public.ticket_messages VALUES ('d9a2366a-2bce-4842-a9c8-b4e687d3fb18', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'umm there was no notification when i came but it is what it is', '2026-01-24 19:56:42.487');
INSERT INTO public.ticket_messages VALUES ('4da236ac-d6f2-491b-a265-7e9941e7255a', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'ehem it aint working ', '2026-01-24 19:57:00.443');
INSERT INTO public.ticket_messages VALUES ('e302d9ea-120c-4bf4-8943-eda48afb9107', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'is it workin now after refresh?', '2026-01-24 19:57:36.714');
INSERT INTO public.ticket_messages VALUES ('618aa5ce-8820-4c8c-ba01-cfd3d4ee267f', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'lets seee', '2026-01-24 19:58:15.338');
INSERT INTO public.ticket_messages VALUES ('6e55a0fd-b960-45f1-9147-d8d644c646da', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'im sure itll work now', '2026-01-24 20:12:45.526');
INSERT INTO public.ticket_messages VALUES ('78e3bff0-83e3-4cae-a53a-3dfb3f292b15', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'working...', '2026-01-24 20:12:52.358');
INSERT INTO public.ticket_messages VALUES ('88e64704-e47f-428b-bbc8-6e58e27a2c3a', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'and now im expecting it to not work', '2026-01-24 20:30:49.438');
INSERT INTO public.ticket_messages VALUES ('8baefae4-cba9-4858-804e-d4a8e2918d5c', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'obviously it wouldnt work', '2026-01-24 20:31:13.277');
INSERT INTO public.ticket_messages VALUES ('b306e130-a887-4e53-8344-bd3088cd76ec', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'it should work fine now hehe', '2026-01-24 20:31:57.119');
INSERT INTO public.ticket_messages VALUES ('a7eddc96-cf03-4d90-8d2a-744696153dfb', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'working now?', '2026-01-24 20:32:35.406');
INSERT INTO public.ticket_messages VALUES ('6d8f7956-73ea-4a93-b1e2-64859647e8d9', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'working?', '2026-01-24 20:33:29.203');
INSERT INTO public.ticket_messages VALUES ('3538e43a-0db4-4087-a5f2-a6b109ae58a8', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'yeah moda foka', '2026-01-24 20:33:39.401');
INSERT INTO public.ticket_messages VALUES ('8d0173a4-b5bc-49d0-b220-9ddc296f06b0', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'of course it wont work now', '2026-01-24 20:34:47.162');
INSERT INTO public.ticket_messages VALUES ('44a9fe70-9a17-4ff3-9ab6-a71fd1fcf5c9', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'will it work now?', '2026-01-24 20:35:39.472');
INSERT INTO public.ticket_messages VALUES ('a3aab111-ffbb-4f3a-8e11-1805199b7fde', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'will it?', '2026-01-24 20:36:00.397');
INSERT INTO public.ticket_messages VALUES ('923ec7f5-05fe-4554-ae7e-b1d9c3062f03', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'ofcourse', '2026-01-24 20:36:09.915');
INSERT INTO public.ticket_messages VALUES ('b50b9894-7eb8-4696-8142-71ba306ebc7c', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'hmmm', '2026-01-24 20:36:38.197');
INSERT INTO public.ticket_messages VALUES ('61839f5d-82b1-47f1-89ed-2e5276a82d39', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'but it aint workin from here', '2026-01-24 20:36:49.072');
INSERT INTO public.ticket_messages VALUES ('2f1beb54-1011-40d6-bb3c-96a9110f56f8', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'workin?', '2026-01-24 20:37:09.885');
INSERT INTO public.ticket_messages VALUES ('26424423-cb6c-4d96-ba3f-6fa30d375e76', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'yea from here too?', '2026-01-24 20:37:25.589');
INSERT INTO public.ticket_messages VALUES ('5d463415-1b89-455d-a1d4-f3782c26f9bb', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'retryin...', '2026-01-24 20:37:52.998');
INSERT INTO public.ticket_messages VALUES ('698717e9-bb3b-4e85-809f-7d6e77a2d2cb', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'now workin....', '2026-01-24 20:38:04.374');
INSERT INTO public.ticket_messages VALUES ('00eb248d-58fb-491c-bb10-57e5cf0d8b14', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'back and forth...', '2026-01-24 20:38:13.496');
INSERT INTO public.ticket_messages VALUES ('1bb24c6c-6798-4e2a-af92-d359deb7d863', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'hello still conencted', '2026-01-24 20:50:14.328');
INSERT INTO public.ticket_messages VALUES ('c07c1e9d-d0d6-4dfd-9d68-8f30de483e57', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'hello', '2026-01-24 20:51:12.668');
INSERT INTO public.ticket_messages VALUES ('b259f0cf-b2af-4fda-bfb1-003e13a49d1e', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'hello back at you', '2026-01-24 20:51:23.838');
INSERT INTO public.ticket_messages VALUES ('c0d5b429-5c50-4206-a147-d486bbfc2191', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'yello', '2026-01-24 20:51:38.344');
INSERT INTO public.ticket_messages VALUES ('6ea83234-1c4f-45df-87ab-ec4ec12267d3', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'retesting yello', '2026-01-26 16:00:03.73');
INSERT INTO public.ticket_messages VALUES ('80129085-c421-4dcf-86e4-677bb8f240f4', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'testin from this side...', '2026-01-26 16:00:23.961');
INSERT INTO public.ticket_messages VALUES ('0abf6208-6314-4faa-abbc-0be5c6ba14f9', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'socket socket', '2026-01-31 18:28:58.301');
INSERT INTO public.ticket_messages VALUES ('8b2114d3-872b-493b-b301-b0ef63e4cb4c', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'let me try a refresh', '2026-01-26 16:00:36.285');
INSERT INTO public.ticket_messages VALUES ('f3ccd3e2-b9e4-43be-8505-743acd3d16aa', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'wait what its workin even with a refresh then we can move over to a new feature', '2026-01-26 16:04:39.308');
INSERT INTO public.ticket_messages VALUES ('272cbbaa-e2cb-46fa-8690-85182ec45755', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'sharp this is the best haha working all fine', '2026-01-26 16:04:54.015');
INSERT INTO public.ticket_messages VALUES ('86c930de-6c2e-4bb1-b538-35cc7d7e3dc7', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'some people dey get one kind feeling say...', '2026-01-26 17:14:46.783');
INSERT INTO public.ticket_messages VALUES ('2610cbc2-ad89-4656-a28e-9c4b432d8fd8', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'some people', '2026-01-26 17:15:09.214');
INSERT INTO public.ticket_messages VALUES ('bbb76361-da9f-417f-91c2-f3193da4a431', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'some people', '2026-01-26 17:15:21.263');
INSERT INTO public.ticket_messages VALUES ('c019fd5e-0219-4ed1-8df4-b7cf1c1ec4a0', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'some people', '2026-01-26 17:16:20.405');
INSERT INTO public.ticket_messages VALUES ('1fff47f7-6d19-41cc-b92c-77517bd1791f', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', '???', '2026-01-26 17:16:29.231');
INSERT INTO public.ticket_messages VALUES ('c37825a9-6bb7-45d3-88bf-739575c85329', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'all of a sudden bboom it aint working no more', '2026-01-26 17:17:43.681');
INSERT INTO public.ticket_messages VALUES ('612e0a6b-b29d-416b-a5d9-2217846d0d69', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'and why is that?', '2026-01-26 17:18:12.085');
INSERT INTO public.ticket_messages VALUES ('95393577-75ed-4356-af5d-dce92ca22659', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'workin now?', '2026-01-26 17:57:05.683');
INSERT INTO public.ticket_messages VALUES ('b859898d-0c12-433d-b854-4f33a3a4fed0', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'haha just noticed it auto disconnects', '2026-01-26 17:57:21.445');
INSERT INTO public.ticket_messages VALUES ('a6e1b602-18ea-4d9a-8dbe-4fe14ad887fd', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'does it works now after reload?', '2026-01-26 17:58:28.35');
INSERT INTO public.ticket_messages VALUES ('8407a488-ee09-4812-a84d-c0162c635c5f', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'yes yes yes it just works', '2026-01-26 17:58:37.759');
INSERT INTO public.ticket_messages VALUES ('6e558096-b260-4420-8275-15cecc619577', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'im a 100 percent sure its disconnected now', '2026-01-27 06:57:46.358');
INSERT INTO public.ticket_messages VALUES ('2e746032-9909-44cf-b38b-cbdf3c297b12', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'would it work now?', '2026-01-27 07:08:40.582');
INSERT INTO public.ticket_messages VALUES ('0be53325-cc73-4f2a-a476-ae7b2e079250', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'working perfectly', '2026-01-27 07:08:48.471');
INSERT INTO public.ticket_messages VALUES ('fc3fef95-b446-4ce1-b1cf-5b9b4b51626c', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'now im waiting for it to disconnect', '2026-01-27 07:09:03.253');
INSERT INTO public.ticket_messages VALUES ('1966a220-5b6a-4971-aa22-04e1d53f0fdf', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'would it still work now?', '2026-01-27 07:09:57.125');
INSERT INTO public.ticket_messages VALUES ('c36de555-9a93-47cf-943d-267a6ae24eef', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'retesting...', '2026-01-27 19:29:47.421');
INSERT INTO public.ticket_messages VALUES ('5db01f36-7921-45d2-ad2e-93e94e80c31e', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'ok', '2026-01-27 19:32:47.696');
INSERT INTO public.ticket_messages VALUES ('a5c53b48-9dbc-4c0d-ae41-e8ed40103a43', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'balabulu', '2026-01-27 19:38:38.297');
INSERT INTO public.ticket_messages VALUES ('906b266f-be51-494f-908c-ec64ea9e9d8e', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '....', '2026-01-27 19:39:44.247');
INSERT INTO public.ticket_messages VALUES ('30cc227d-eeb2-475b-bacd-7f8edcabfa37', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '.....', '2026-01-27 19:39:55.643');
INSERT INTO public.ticket_messages VALUES ('c54ca0dc-1fbb-41bf-bd02-839acda952df', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'workng? responding can you see the typing animation?', '2026-01-28 07:01:55.277');
INSERT INTO public.ticket_messages VALUES ('d44bb4d4-0a88-455e-8022-d4537310afc4', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'would it work now?', '2026-01-28 07:02:47.983');
INSERT INTO public.ticket_messages VALUES ('616532b3-3e1e-421e-a2a7-3e67cf4ab762', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'what is the error now?', '2026-01-28 07:03:35.466');
INSERT INTO public.ticket_messages VALUES ('212993ec-5a47-4420-885a-f7c7cb634a0d', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'is it working', '2026-01-28 07:05:54.45');
INSERT INTO public.ticket_messages VALUES ('ea385be1-7d8c-499b-bf94-ea423b6930b3', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '...', '2026-01-28 07:06:31.842');
INSERT INTO public.ticket_messages VALUES ('a5a49453-dfcf-49b5-afee-41ff67ce50f0', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'mafang', '2026-01-28 07:09:37.615');
INSERT INTO public.ticket_messages VALUES ('c57ea68c-b708-4ae3-95ac-dcba0b45984f', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'working?', '2026-01-28 07:25:30.362');
INSERT INTO public.ticket_messages VALUES ('4be2d1b6-9a1e-4a41-91a2-8638ae2409a3', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '???>>>', '2026-01-28 07:25:43.744');
INSERT INTO public.ticket_messages VALUES ('4ed9402f-e9c2-47c0-898a-333767691d9b', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'one socket readin all o the updates...', '2026-01-28 07:26:04.394');
INSERT INTO public.ticket_messages VALUES ('3d5cc71f-dd9d-4442-a7cb-aef2c3e958aa', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'lets retry now', '2026-01-28 07:32:43.843');
INSERT INTO public.ticket_messages VALUES ('b890920f-bc9a-48de-9513-79d530bd9af6', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'lets retry now', '2026-01-29 09:18:56.28');
INSERT INTO public.ticket_messages VALUES ('16f16931-7771-48f9-8095-1bc4312e7792', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'is it working now?', '2026-01-29 10:07:33.422');
INSERT INTO public.ticket_messages VALUES ('cbc938a9-232f-4453-ac7d-edfe55c887e8', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'tyson nawa ohhh hmmmm', '2026-01-29 10:54:39.564');
INSERT INTO public.ticket_messages VALUES ('5fb7d603-8725-4ffa-a64a-ad122545f527', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'mike tyson ', '2026-01-29 10:54:53.544');
INSERT INTO public.ticket_messages VALUES ('a84e9efb-246d-4813-a782-aaa64b30979c', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'is that a guys name?', '2026-01-29 10:55:11.921');
INSERT INTO public.ticket_messages VALUES ('ee7c98e2-ff4a-48ef-9f5e-f88b1b296fac', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'whats your problem?', '2026-01-29 10:55:27.537');
INSERT INTO public.ticket_messages VALUES ('d97ea85f-9f87-49e5-8ff0-321c45163dfc', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'socket iooo', '2026-01-29 10:55:38.146');
INSERT INTO public.ticket_messages VALUES ('18fbfc6f-5d1c-4fe9-8035-6aa7cfdb8c27', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '???', '2026-01-29 10:55:46.062');
INSERT INTO public.ticket_messages VALUES ('464fff8f-6904-49e2-939f-9994fd752e29', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'socket', '2026-01-29 10:57:53.382');
INSERT INTO public.ticket_messages VALUES ('c681b562-c30e-4f4b-a391-10a9b0ee900b', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'socket io', '2026-01-29 10:57:59.651');
INSERT INTO public.ticket_messages VALUES ('9e61b9ab-a448-490f-88d1-d3c2d640408d', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'dpes ot ja[', '2026-01-29 10:58:34.161');
INSERT INTO public.ticket_messages VALUES ('e2e82b5b-46a0-4a65-9f9e-e95cc49189b6', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'can you detect typing?', '2026-01-31 18:25:37.627');
INSERT INTO public.ticket_messages VALUES ('3b7b2318-28e5-4a0d-8b2f-56e28be04242', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'yes very well very very well....', '2026-01-31 18:25:59.981');
INSERT INTO public.ticket_messages VALUES ('084c981a-28b4-4418-b8f6-934e35d99f0e', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'yes uncle is it working no uncle....', '2026-01-31 18:29:19.076');
INSERT INTO public.ticket_messages VALUES ('07221759-2193-49eb-8800-9b1db32027df', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'socket socket', '2026-01-31 18:30:01.253');
INSERT INTO public.ticket_messages VALUES ('f4157f47-e2df-4caf-ab19-890a02d3a979', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'socket socket yes uncle is it working', '2026-01-31 18:31:23.579');
INSERT INTO public.ticket_messages VALUES ('86b0fa2d-55db-42c3-80bb-2819d4d91186', 'c1ee8423-b6a4-4de3-a7f2-9fbfe39cc0b3', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'still havnt gotten a reply', '2026-02-01 18:13:49.595');
INSERT INTO public.ticket_messages VALUES ('f87f5a29-ab04-4be3-8677-8681106a1727', 'c1ee8423-b6a4-4de3-a7f2-9fbfe39cc0b3', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', '??', '2026-02-01 18:19:06.774');
INSERT INTO public.ticket_messages VALUES ('3062534f-71e7-45b9-a1cd-1e8693658887', 'c1ee8423-b6a4-4de3-a7f2-9fbfe39cc0b3', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'testing socket...', '2026-02-01 18:29:40.099');
INSERT INTO public.ticket_messages VALUES ('f2637ac9-66f6-449b-a691-511bd29a3e73', 'c1ee8423-b6a4-4de3-a7f2-9fbfe39cc0b3', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', '...', '2026-02-01 18:31:16.061');
INSERT INTO public.ticket_messages VALUES ('e8a225a0-a7b3-4228-9b6d-50096958dff3', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', '???', '2026-02-01 18:35:00.484');
INSERT INTO public.ticket_messages VALUES ('b6f37685-7a5f-4765-a606-8a351b266842', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'workin?', '2026-02-01 19:00:48.382');
INSERT INTO public.ticket_messages VALUES ('18fe601b-7b8d-4f5d-a77b-863bad183982', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'working?', '2026-02-01 19:01:03.426');
INSERT INTO public.ticket_messages VALUES ('19d26b63-f7df-44b6-a99c-2f2449e445c4', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'working?', '2026-02-01 19:01:40.183');
INSERT INTO public.ticket_messages VALUES ('3edf4471-bbb4-4a6d-a84d-62c31dd9cdd1', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'testing...', '2026-02-02 10:01:50.089');
INSERT INTO public.ticket_messages VALUES ('fdcd86c0-65ed-4f57-ae21-4871c43e6178', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'testing unread feature...', '2026-02-02 11:04:18.74');
INSERT INTO public.ticket_messages VALUES ('a0671ac7-4714-4d29-857e-6ec4ce2957e3', '3490a6e0-5b52-4346-a15f-3ff37c777846', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'tester', '2026-02-02 20:43:10.88');
INSERT INTO public.ticket_messages VALUES ('1686fb75-f5bb-4ee4-b156-642071e4ee4c', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'testing...', '2026-02-03 07:11:17.475');
INSERT INTO public.ticket_messages VALUES ('ac1a6378-4acf-4196-82e6-797224640211', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'workin in admin part?', '2026-02-03 15:20:01.052');
INSERT INTO public.ticket_messages VALUES ('63916e53-444a-4904-a03e-6ef7762949b8', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'is this part also working?', '2026-02-03 15:21:22.79');
INSERT INTO public.ticket_messages VALUES ('3e1acf9d-cd46-41f9-a07e-8e12c5639839', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'but obviously its not working via socket', '2026-02-03 15:25:53.377');
INSERT INTO public.ticket_messages VALUES ('fe670aba-eee3-4037-9d32-aac0c04d4c48', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', '???/', '2026-02-03 15:26:34.581');
INSERT INTO public.ticket_messages VALUES ('4ce1bd56-c62d-4154-ab79-47e22c49e90b', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'what about from here?', '2026-02-03 15:27:19.992');
INSERT INTO public.ticket_messages VALUES ('2c8889a3-ad16-4396-8ec4-b85acab4ab1e', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'new message testin', '2026-02-03 18:10:21.339');
INSERT INTO public.ticket_messages VALUES ('5715a437-d50d-4c2e-91cf-11ef9b9280a0', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', '1fa740fb-1277-49d2-8cd1-f3021aa7a853', 'working now', '2026-02-03 18:12:14.457');
INSERT INTO public.ticket_messages VALUES ('db34b2d2-b7f6-4c38-9027-8ae079b6a5be', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'hehe', '2026-02-03 18:12:23.588');
INSERT INTO public.ticket_messages VALUES ('9b11224d-8ddd-4764-bcbc-389e9e8d3503', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'lets test the socket', '2026-02-05 13:15:46.543');
INSERT INTO public.ticket_messages VALUES ('1ff3ea77-150f-401d-9b34-e1eca0ce75d2', '7a8fafad-eeac-48b0-b7cc-63e4b03e0daf', 'c6285b8d-796b-4ce6-bb2d-397cbf4f8b5e', 'impressive but it didnt glitched here', '2026-02-05 13:16:17.568');


--
-- Name: BugReport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."BugReport_id_seq"', 3, true);


--
-- Name: DailyDeal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DailyDeal_id_seq"', 226, true);


--
-- Name: Log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Log_id_seq"', 64, true);


--
-- Name: Review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Review_id_seq"', 4, true);


--
-- Name: ShippingRate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ShippingRate_id_seq"', 774, true);

SET session_replication_role = 'origin';


--
-- PostgreSQL database dump complete
--

