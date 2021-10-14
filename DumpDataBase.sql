#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) unsigned NOT NULL,
  `password_hash` varchar(85) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`) VALUES ('11', 'issac22@example.com', '668', 'f818eeea89933165321ce383f28e9b809d533aef', '1981-06-10 05:24:29', '2017-07-30 11:52:22');
INSERT INTO `users` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`) VALUES ('12', 'hillary.aufderhar@example.com', '5322598957', '712f862411fde584b6fea1c7993e14d9f6a585b8', '1984-07-27 20:31:24', '2016-09-20 02:38:03');
INSERT INTO `users` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`) VALUES ('13', 'sylvester.bartell@example.net', '1', '01ab81b05a65e2dc2d2f0ececc65ea91581cbba0', '1978-08-23 07:53:40', '1986-08-03 12:37:53');
INSERT INTO `users` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`) VALUES ('14', 'hilpert.marian@example.com', '3', '818126d2d49a46b6a904bebc062c924e0049add4', '1984-04-22 02:19:25', '2006-06-03 16:01:11');
INSERT INTO `users` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`) VALUES ('15', 'arlo.spencer@example.org', '148', '8ef56454b41a0a4a85be8b2c5429040f6c4eef66', '1985-09-16 15:09:10', '2000-09-17 12:14:52');
INSERT INTO `users` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`) VALUES ('16', 'bernadine46@example.net', '50', '148c64f9f012ac8c4c50656e09d5cbdf5b73678b', '1982-08-05 15:35:26', '1979-06-08 08:10:51');
INSERT INTO `users` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`) VALUES ('19', 'hudson.bettie@example.net', '585', '418c3e7c6b3aeb8b06f9c9c701255c726bf1deea', '1990-04-27 21:04:03', '2001-11-01 12:08:04');
INSERT INTO `users` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`) VALUES ('20', 'kreiger.ned@example.com', '239407', 'c2946d624e4f6716907cd08262edc16d094968ff', '1999-02-23 22:27:06', '1994-10-23 18:21:25');



#
# TABLE STRUCTURE FOR: personal_data
#

DROP TABLE IF EXISTS `personal_data`;

CREATE TABLE `personal_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `firstname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `firstname_lastname_idx` (`lastname`,`firstname`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `personal_data` (`id`, `user_id`, `firstname`, `lastname`, `birthday`, `gender`) VALUES ('11', '11', 'Shaniya', 'Legros', '1999-09-02', 'female');
INSERT INTO `personal_data` (`id`, `user_id`, `firstname`, `lastname`, `birthday`, `gender`) VALUES ('12', '12', 'Dayna', 'Schaden', '2007-11-15', 'female');
INSERT INTO `personal_data` (`id`, `user_id`, `firstname`, `lastname`, `birthday`, `gender`) VALUES ('13', '13', 'Kathryne', 'Conn', '2013-11-09', 'female');
INSERT INTO `personal_data` (`id`, `user_id`, `firstname`, `lastname`, `birthday`, `gender`) VALUES ('14', '14', 'Ozella', 'Gulgowski', '2005-10-06', 'female');
INSERT INTO `personal_data` (`id`, `user_id`, `firstname`, `lastname`, `birthday`, `gender`) VALUES ('15', '15', 'Reid', 'Considine', '1984-11-16', 'male');
INSERT INTO `personal_data` (`id`, `user_id`, `firstname`, `lastname`, `birthday`, `gender`) VALUES ('16', '16', 'Keyshawn', 'Schumm', '1984-02-11', 'male');
INSERT INTO `personal_data` (`id`, `user_id`, `firstname`, `lastname`, `birthday`, `gender`) VALUES ('17', '19', 'Daphne', 'Olson', '2000-05-25', 'male');
INSERT INTO `personal_data` (`id`, `user_id`, `firstname`, `lastname`, `birthday`, `gender`) VALUES ('18', '20', 'Katherine', 'Maggio', '1985-05-06', 'male');



#
# TABLE STRUCTURE FOR: categories
#

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`) VALUES ('1', 'non');
INSERT INTO `categories` (`id`, `name`) VALUES ('2', 'nihil');
INSERT INTO `categories` (`id`, `name`) VALUES ('3', 'maxime');
INSERT INTO `categories` (`id`, `name`) VALUES ('4', 'omnis');
INSERT INTO `categories` (`id`, `name`) VALUES ('5', 'mollitia');
INSERT INTO `categories` (`id`, `name`) VALUES ('6', 'doloribus');
INSERT INTO `categories` (`id`, `name`) VALUES ('7', 'qui');
INSERT INTO `categories` (`id`, `name`) VALUES ('8', 'tempore');
INSERT INTO `categories` (`id`, `name`) VALUES ('9', 'nesciunt');
INSERT INTO `categories` (`id`, `name`) VALUES ('10', 'consequatur');



#
# TABLE STRUCTURE FOR: brands
#

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `brands` (`id`, `name`, `country`, `site`) VALUES ('1', 'eius', '30486821', 'Sunt distinctio sunt mollitia aut. Vel quia corrupti non. Soluta blanditiis fugiat et. Corporis perferendis officiis nam repudiandae.');
INSERT INTO `brands` (`id`, `name`, `country`, `site`) VALUES ('2', 'doloremque', '4038614', 'Officiis explicabo ducimus laborum sed. Nulla minima commodi quidem nesciunt facilis cupiditate. Quasi ipsam dolorem consequatur facere quidem rerum nihil.');
INSERT INTO `brands` (`id`, `name`, `country`, `site`) VALUES ('3', 'harum', '5711065', 'Id sequi nostrum aspernatur ut cumque. Magnam at voluptatum eum consectetur. Incidunt sint incidunt aliquid cumque sint suscipit.');
INSERT INTO `brands` (`id`, `name`, `country`, `site`) VALUES ('4', 'molestiae', '442400', 'Voluptatibus qui accusantium veniam nihil eius. Occaecati et aut autem sequi labore. Amet voluptas qui ratione commodi perferendis vel.');
INSERT INTO `brands` (`id`, `name`, `country`, `site`) VALUES ('5', 'est', '3', 'Sunt natus et est consequatur aut ratione molestiae. Mollitia dolor perspiciatis pariatur aut consequatur facilis asperiores. Debitis delectus magni ipsum vero est possimus.');
INSERT INTO `brands` (`id`, `name`, `country`, `site`) VALUES ('6', 'et', '8184370', 'Eum facere ratione fugiat commodi itaque in reiciendis delectus. Aut adipisci atque voluptas delectus facere iste nobis aut. Magnam quasi fuga doloribus modi dolorem enim.');
INSERT INTO `brands` (`id`, `name`, `country`, `site`) VALUES ('7', 'nostrum', '9842', 'Magni soluta culpa est. Et voluptatem autem earum eveniet. Et aut repellendus dolore nihil voluptas sunt.');
INSERT INTO `brands` (`id`, `name`, `country`, `site`) VALUES ('8', 'enim', '', 'Harum qui quia ut voluptatem quae eius accusantium. Voluptate ut est minus inventore autem. Aliquid ex qui cum voluptatem.');
INSERT INTO `brands` (`id`, `name`, `country`, `site`) VALUES ('9', 'voluptates', '87481689', 'Est dolorem est repellendus et. Ut enim ad quos esse molestiae. Aut ratione suscipit pariatur dolorem laboriosam voluptates ea.');
INSERT INTO `brands` (`id`, `name`, `country`, `site`) VALUES ('10', 'eum', '594276', 'Porro expedita aut iure voluptatibus blanditiis. Qui suscipit dolores veritatis consequatur rem modi ex. Nobis et in magni nobis est error.');



#
# TABLE STRUCTURE FOR: products
#

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `brand_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specifications` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviews` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(2,0) unsigned DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `category_id` (`category_id`),
  KEY `brand_id` (`brand_id`),
  KEY `name_price_idx` (`name`,`price`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `specifications`, `description`, `reviews`, `price`) VALUES ('1', '1', '1', 'velit', 'Molestiae reiciendis magni cumque culpa iusto voluptas. Incidunt ab enim deserunt repellat ad voluptatem odio.', 'Pariatur magni voluptatem autem et doloribus animi. Ratione et ut reiciendis placeat delectus dolores assumenda enim.', 'Illo eos error dolores sunt quisquam. Omnis asperiores autem qui corporis. Et suscipit et maiores debitis ut saepe. Vitae voluptatem et cupiditate et earum necessitatibus.', '99');
INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `specifications`, `description`, `reviews`, `price`) VALUES ('2', '2', '2', 'quam', 'Sint fugiat voluptas porro ut fuga molestiae. Nihil qui rerum dolorum in fuga. Ut quia est quisquam cupiditate tempora et.', 'Numquam hic consequuntur possimus est corporis et numquam totam. Labore quis autem et et maxime et perspiciatis fugit. Neque quisquam animi et numquam tempore.', 'Aperiam at doloribus sed iusto. Ipsam est ut quaerat dicta cupiditate consequatur. Et vel ut eligendi asperiores ipsam. Omnis aut debitis quis doloribus enim iure.', '99');
INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `specifications`, `description`, `reviews`, `price`) VALUES ('3', '3', '3', 'est', 'Sed alias distinctio aut ut aut harum quis. Voluptatem quia optio sed exercitationem qui molestiae. Neque iusto ut dolores aut magni placeat officia. Sit ad et saepe sunt repudiandae maxime.', 'Ratione asperiores et aspernatur tempore laudantium quis. Consectetur eligendi rerum repellendus cupiditate iste est sequi. Quis qui ab nemo soluta itaque et temporibus.', 'Eius qui maiores amet vero. Et quis quas reiciendis est. Praesentium veniam reprehenderit mollitia non et. Illo ex modi aspernatur qui.', '99');
INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `specifications`, `description`, `reviews`, `price`) VALUES ('4', '4', '4', 'dicta', 'Consequatur facere magnam reiciendis sint. Iure pariatur quia quo est commodi ut temporibus. Temporibus quae molestiae nisi vel sint voluptas.', 'Alias nam ipsam et id corporis. Quibusdam vel voluptatem eum velit ratione. Esse aut quia ut eum quia explicabo quaerat officia. Ipsa porro et voluptatem eum dignissimos. Natus in quod doloremque ut vitae dolorem autem.', 'Ut molestiae illo id veniam aut et. Officiis minima atque accusantium sint molestias. Ipsum ut similique omnis deleniti.', '99');
INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `specifications`, `description`, `reviews`, `price`) VALUES ('5', '5', '5', 'dignissimos', 'Sed veritatis voluptas accusantium dolores ut est. Quae numquam repudiandae odio dolores adipisci. Praesentium dolorem blanditiis veritatis qui et. Ut pariatur expedita tempora et.', 'Modi et fugiat a sed officia sapiente corporis assumenda. Vel distinctio est aut nostrum. Cumque autem consequuntur sapiente et. Corrupti dolore ducimus ipsum cumque et consectetur illum. Nihil voluptate nisi est officia.', 'Reiciendis voluptas rerum totam soluta totam non. Ab et iusto vero tempore. Laudantium eligendi dolores eveniet possimus voluptatem beatae ratione.', '99');
INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `specifications`, `description`, `reviews`, `price`) VALUES ('6', '6', '6', 'iusto', 'Itaque minima distinctio ea magnam et aliquid. Maiores qui quo et optio saepe sit. Cupiditate dolorum id totam. Qui et corrupti consequatur harum consequatur aut quia.', 'Fugit quis ut occaecati eveniet quod praesentium autem. Provident cum dolor magnam deleniti. Dignissimos voluptatem qui vel inventore perspiciatis et est. Vel quae sapiente molestias qui eveniet perspiciatis.', 'Dolorem quo sit corporis nisi eum. Sed inventore sed velit est voluptatem autem doloremque ipsa. Cupiditate ut quia rem quod. Natus deleniti quis nulla commodi rerum et ab id.', '99');
INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `specifications`, `description`, `reviews`, `price`) VALUES ('7', '7', '7', 'optio', 'Sed sit explicabo aliquid eius ut. Recusandae eaque enim in at sunt.', 'Ut assumenda assumenda id veniam autem est. Facilis aut error voluptatem corrupti corporis. Ducimus blanditiis repellendus atque porro maxime soluta.', 'Cupiditate quibusdam qui doloribus at voluptates. Nihil architecto aperiam quia minus impedit. Quia laboriosam suscipit omnis amet ex.', '99');
INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `specifications`, `description`, `reviews`, `price`) VALUES ('8', '8', '8', 'quia', 'Esse corporis tenetur dolores autem in quia accusantium. Eligendi necessitatibus qui animi reiciendis consectetur ea molestias. Deleniti voluptas quisquam et earum.', 'Iste necessitatibus dolorum iusto est ipsa nisi. Non vel quidem eveniet amet sapiente. Eius rem minus et.', 'Perferendis enim impedit laboriosam harum. Quibusdam doloremque necessitatibus eligendi ut ut ea. Minus at quia sit. Accusamus est nihil ut.', '6');
INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `specifications`, `description`, `reviews`, `price`) VALUES ('9', '9', '9', 'repudiandae', 'Rerum in enim asperiores vero consectetur at distinctio. Sunt rerum quia facilis eos quia aut. Exercitationem et aut aliquam voluptates dignissimos possimus aut velit.', 'Error hic quibusdam ratione iste. Voluptates unde rerum est asperiores incidunt assumenda unde. Fuga consequuntur doloremque vel vel necessitatibus quibusdam voluptas. Aperiam et doloribus quos quo architecto velit.', 'Ducimus qui perspiciatis error maxime. Quasi ipsum quo libero sit tenetur perferendis voluptas. Id tempore blanditiis rerum nobis sit sapiente sapiente. Temporibus nulla ut voluptate.', '99');
INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `specifications`, `description`, `reviews`, `price`) VALUES ('10', '10', '10', 'debitis', 'Corporis sunt distinctio dolor et. Blanditiis quisquam voluptatem expedita iusto rerum. Aut tempora aut enim voluptate at sequi officia et.', 'Aliquam illo libero et aut soluta expedita. Autem delectus perspiciatis voluptatum aperiam. Et dolor beatae quos mollitia ducimus pariatur at. Dignissimos inventore numquam vitae autem libero facere et voluptatem.', 'Vitae et aspernatur atque ducimus. Deserunt reprehenderit cumque alias. Rerum tempore eos molestias.', '0');



#
# TABLE STRUCTURE FOR: recomended_products
#

DROP TABLE IF EXISTS `recomended_products`;

CREATE TABLE `recomended_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  KEY `product_name` (`product_name`),
  CONSTRAINT `recomended_products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `recomended_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `recomended_products_ibfk_3` FOREIGN KEY (`product_name`) REFERENCES `products` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `recomended_products` (`id`, `user_id`, `product_id`, `product_name`) VALUES ('15', '15', '5', 'quia');




#
# TABLE STRUCTURE FOR: favorites_types
#

DROP TABLE IF EXISTS `favorites_types`;

CREATE TABLE `favorites_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `favorites_types` (`id`, `name`) VALUES ('1', 'voluptas');
INSERT INTO `favorites_types` (`id`, `name`) VALUES ('2', 'fugiat');
INSERT INTO `favorites_types` (`id`, `name`) VALUES ('3', 'illo');
INSERT INTO `favorites_types` (`id`, `name`) VALUES ('4', 'ea');
INSERT INTO `favorites_types` (`id`, `name`) VALUES ('5', 'voluptas');
INSERT INTO `favorites_types` (`id`, `name`) VALUES ('6', 'et');
INSERT INTO `favorites_types` (`id`, `name`) VALUES ('7', 'sapiente');
INSERT INTO `favorites_types` (`id`, `name`) VALUES ('8', 'aut');
INSERT INTO `favorites_types` (`id`, `name`) VALUES ('9', 'cumque');
INSERT INTO `favorites_types` (`id`, `name`) VALUES ('10', 'voluptatum');



#
# TABLE STRUCTURE FOR: favorites
#

DROP TABLE IF EXISTS `favorites`;

CREATE TABLE `favorites` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `favorites_types_id` bigint(20) unsigned NOT NULL,
  `added_to_favorites` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  KEY `favorites_types_id` (`favorites_types_id`),
  CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `favorites_ibfk_3` FOREIGN KEY (`favorites_types_id`) REFERENCES `favorites_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `favorites_types_id`, `added_to_favorites`, `created_at`, `updated_at`) VALUES ('1', '11', '1', '1', 1, '1979-07-23 12:34:40', '2003-11-09 15:08:44');
INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `favorites_types_id`, `added_to_favorites`, `created_at`, `updated_at`) VALUES ('2', '12', '2', '2', 1, '2008-09-18 09:47:33', '1987-01-01 14:06:11');
INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `favorites_types_id`, `added_to_favorites`, `created_at`, `updated_at`) VALUES ('3', '13', '3', '3', 0, '2002-09-14 05:19:48', '1997-07-30 00:27:16');
INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `favorites_types_id`, `added_to_favorites`, `created_at`, `updated_at`) VALUES ('4', '14', '4', '4', 1, '1974-01-14 19:21:55', '2011-02-14 15:03:36');
INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `favorites_types_id`, `added_to_favorites`, `created_at`, `updated_at`) VALUES ('5', '15', '5', '5', 1, '2017-12-15 03:47:05', '2017-09-13 03:16:04');
INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `favorites_types_id`, `added_to_favorites`, `created_at`, `updated_at`) VALUES ('6', '16', '6', '6', 1, '1976-11-30 09:55:50', '1974-02-10 12:29:07');
INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `favorites_types_id`, `added_to_favorites`, `created_at`, `updated_at`) VALUES ('7', '19', '7', '7', 0, '2003-08-19 20:09:57', '1993-11-06 21:19:48');
INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `favorites_types_id`, `added_to_favorites`, `created_at`, `updated_at`) VALUES ('8', '20', '8', '8', 0, '1977-06-15 18:03:46', '1999-11-09 14:37:30');
INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `favorites_types_id`, `added_to_favorites`, `created_at`, `updated_at`) VALUES ('9', '11', '9', '9', 0, '1978-03-18 11:59:13', '2008-06-05 09:46:21');
INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `favorites_types_id`, `added_to_favorites`, `created_at`, `updated_at`) VALUES ('10', '12', '10', '10', 1, '1989-08-24 10:11:49', '2004-04-09 03:05:25');



#
# TABLE STRUCTURE FOR: cart
#

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `added_to_cart` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `added_to_cart`, `created_at`, `updated_at`) VALUES ('1', '11', '1', 1, '2015-07-31 11:11:22', '2009-02-28 18:22:21');
INSERT INTO `cart` (`id`, `user_id`, `product_id`, `added_to_cart`, `created_at`, `updated_at`) VALUES ('2', '12', '2', 1, '2004-01-02 16:45:40', '1978-10-29 12:48:27');
INSERT INTO `cart` (`id`, `user_id`, `product_id`, `added_to_cart`, `created_at`, `updated_at`) VALUES ('3', '13', '3', 0, '2015-09-13 19:13:29', '1977-10-26 08:32:05');
INSERT INTO `cart` (`id`, `user_id`, `product_id`, `added_to_cart`, `created_at`, `updated_at`) VALUES ('4', '14', '4', 0, '2004-12-30 03:28:14', '1991-07-29 11:10:43');
INSERT INTO `cart` (`id`, `user_id`, `product_id`, `added_to_cart`, `created_at`, `updated_at`) VALUES ('5', '15', '5', 1, '2008-07-12 12:05:11', '2009-11-23 20:01:04');
INSERT INTO `cart` (`id`, `user_id`, `product_id`, `added_to_cart`, `created_at`, `updated_at`) VALUES ('6', '16', '6', 1, '1997-07-06 04:25:10', '2007-08-13 16:12:56');
INSERT INTO `cart` (`id`, `user_id`, `product_id`, `added_to_cart`, `created_at`, `updated_at`) VALUES ('7', '19', '7', 0, '1988-05-03 03:55:13', '2012-12-09 16:40:36');
INSERT INTO `cart` (`id`, `user_id`, `product_id`, `added_to_cart`, `created_at`, `updated_at`) VALUES ('8', '20', '8', 0, '2000-12-06 16:55:21', '1980-02-02 18:54:59');
INSERT INTO `cart` (`id`, `user_id`, `product_id`, `added_to_cart`, `created_at`, `updated_at`) VALUES ('9', '11', '9', 0, '1999-09-29 00:18:36', '2004-07-26 12:28:09');
INSERT INTO `cart` (`id`, `user_id`, `product_id`, `added_to_cart`, `created_at`, `updated_at`) VALUES ('10', '12', '10', 0, '1997-04-14 22:48:24', '2010-04-06 22:06:19');



#
# TABLE STRUCTURE FOR: making_orders
#

DROP TABLE IF EXISTS `making_orders`;

CREATE TABLE `making_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `firstname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number_hash` varchar(85) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvc_cvv_hash` varchar(85) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  KEY `phone` (`phone`),
  CONSTRAINT `making_orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `making_orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `making_orders_ibfk_3` FOREIGN KEY (`phone`) REFERENCES `users` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `making_orders` (`id`, `user_id`, `firstname`, `lastname`, `phone`, `product_id`, `address`, `card_number_hash`, `cvc_cvv_hash`, `created_at`) VALUES ('37', '19', 'Jalon', 'Hodkiewicz', '1', '7', '5948 Greenfelder Crest\nWalkerside, OR 59534', '232504', '44dffc7fc41ab95bc826924c2071b4f8ad6e069e', '2016-03-13 02:19:40');
INSERT INTO `making_orders` (`id`, `user_id`, `firstname`, `lastname`, `phone`, `product_id`, `address`, `card_number_hash`, `cvc_cvv_hash`, `created_at`) VALUES ('38', '20', 'Fatima', 'Maggio', '1', '8', '918 Josh Ridge\nDougport, LA 10980', '448932816', 'c8748ca204e446bf8fca280c9aa72d444eb6bc42', '1976-03-21 21:37:56');
INSERT INTO `making_orders` (`id`, `user_id`, `firstname`, `lastname`, `phone`, `product_id`, `address`, `card_number_hash`, `cvc_cvv_hash`, `created_at`) VALUES ('39', '11', 'King', 'Kshlerin', '1', '9', '62012 Ivah Knoll Apt. 113\nLake Leonebury, WA 39693-0438', '86855', '3845df5ffc8add0a11931827c543d21ef8a877bf', '2011-06-11 15:29:28');
INSERT INTO `making_orders` (`id`, `user_id`, `firstname`, `lastname`, `phone`, `product_id`, `address`, `card_number_hash`, `cvc_cvv_hash`, `created_at`) VALUES ('40', '12', 'Clementina', 'Brown', '1', '10', '65136 Pfannerstill Union\nLuzmouth, MT 78223', '579', 'bcd8e4d44720eab6370e0333ce332b0e68b5ba67', '1982-09-27 04:05:26');



#
# TABLE STRUCTURE FOR: promo_codes
#

DROP TABLE IF EXISTS `promo_codes`;

CREATE TABLE `promo_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `activated` tinyint(1) DEFAULT NULL,
  `when_activated` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `promo_codes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `promo_codes` (`id`, `user_id`, `activated`, `when_activated`) VALUES ('1', '11', 1, '2003-09-29 17:55:31');
INSERT INTO `promo_codes` (`id`, `user_id`, `activated`, `when_activated`) VALUES ('2', '12', 0, '1981-11-12 22:25:57');
INSERT INTO `promo_codes` (`id`, `user_id`, `activated`, `when_activated`) VALUES ('3', '13', 0, '2017-09-15 15:42:54');
INSERT INTO `promo_codes` (`id`, `user_id`, `activated`, `when_activated`) VALUES ('4', '14', 1, '1990-08-31 17:06:36');
INSERT INTO `promo_codes` (`id`, `user_id`, `activated`, `when_activated`) VALUES ('5', '15', 0, '1971-04-18 06:25:44');
INSERT INTO `promo_codes` (`id`, `user_id`, `activated`, `when_activated`) VALUES ('6', '16', 1, '1978-10-09 17:01:16');
INSERT INTO `promo_codes` (`id`, `user_id`, `activated`, `when_activated`) VALUES ('7', '19', 0, '1970-12-22 21:48:15');
INSERT INTO `promo_codes` (`id`, `user_id`, `activated`, `when_activated`) VALUES ('8', '20', 0, '2012-08-21 02:05:18');
INSERT INTO `promo_codes` (`id`, `user_id`, `activated`, `when_activated`) VALUES ('9', '11', 1, '2017-08-23 17:45:59');
INSERT INTO `promo_codes` (`id`, `user_id`, `activated`, `when_activated`) VALUES ('10', '12', 0, '1995-03-09 00:19:17');


