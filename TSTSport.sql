-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for TSTSPORT
CREATE DATABASE IF NOT EXISTS `tstsport` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `TSTSPORT`;

-- Dumping structure for table TSTSPORT.cart_items
CREATE TABLE IF NOT EXISTS `cart_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table TSTSPORT.cart_items: ~6 rows (approximately)
INSERT INTO `cart_items` (`id`, `user_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
	(41, 12, 51, 1, NULL, NULL),
	(44, 12, 35, 1, NULL, NULL),
	(46, 12, 34, 1, NULL, NULL),
	(47, 12, 37, 1, NULL, NULL),
	(48, 14, 52, 1, NULL, NULL),
	(49, 14, 34, 1, NULL, NULL);

-- Dumping structure for table TSTSPORT.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'storage/admin.categories/default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table TSTSPORT.categories: ~7 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(24, 'Unknows', 'storage/categories/0CdTDyTAIPc6qndU1g1YZtf3Djdy4TRyHMfyNdLQ.png', NULL, '2023-10-26 19:09:40'),
	(29, 'Shoes', 'storage/categories/ETHAqeZgFuPRe26Ig3LWV13cl6AHQzV6qEfAZMFX.png', NULL, '2023-10-26 19:09:50'),
	(31, 'Ball', 'storage/categories/nYFHEHQuNrXb7pzdL6SwU92CiGhyXKilIQfwb9yc.png', NULL, '2023-10-26 19:09:59'),
	(32, 'Shirt', 'storage/categories/X9205i1HpnEhWHUtOpi0el4w9y2f4aG9t9r8JysU.png', NULL, '2023-10-26 19:10:16'),
	(33, 'Protective', 'storage/categories/NTpV5jzIjQ1fZmvGayDBJF2oimV1j4VYeHDIKh8F.png', NULL, '2023-10-26 19:10:34'),
	(34, 'Training', 'storage/categories/0TIieF1EsjIbGxcPnWetJXDjwHoliVWcpnCxd1wk.png', NULL, '2023-10-26 19:10:48'),
	(35, 'Accessory', 'storage/categories/MeqSMueKsZzzuUv3RtZuDP12oEOViHwwytU7bbTQ.png', NULL, '2023-10-26 19:11:16');

-- Dumping structure for table TSTSPORT.images
CREATE TABLE IF NOT EXISTS `images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `img1` varchar(255) NOT NULL DEFAULT 'default_image.jpg',
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_product_id_foreign` (`product_id`),
  CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table TSTSPORT.images: ~19 rows (approximately)
INSERT INTO `images` (`id`, `product_id`, `img1`, `img2`, `img3`, `updated_at`, `created_at`) VALUES
	(0, 34, 'images/eDmQ0TJc4FBySVbRVLZUstHK0p2N6BquSbPsX9ee.jpg', 'images/y1TKOmdpEufO1bPURFYgiYHy8xJr6HJIKmfDIZm2.jpg', 'images/YgFCJQe2IfSX6BEzyY16t83iZt14rpwaqjFv3fs9.jpg', '2023-10-26 19:16:33', NULL),
	(20, 35, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(21, 36, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(22, 37, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(23, 38, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(24, 39, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(25, 40, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(26, 41, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(27, 42, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(28, 43, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(29, 44, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(31, 46, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(32, 47, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(33, 48, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(34, 49, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(35, 50, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(36, 51, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(37, 52, 'storage/products/EDh5mgAjiyhvNrRy8GCvX5am8Q2FiUhbt1a6bHFw.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', 'storage/products/17OINhU1BUks5WXi8c4gHfkB3mOdv10s3CosPHJT.jpg', NULL, NULL),
	(38, 53, 'storage/products/TeT56RrGTmIWuDcLB3GKxdFfGVpsKb2WXeWN2W3p.jpg', 'storage/products/KfTNulf9LZW1kr1AmZA5soURVcbcRamnCae5HGXc.jpg', 'storage/products/4ba7PC54g65kTifE3DFt0OUNc96lKfQyms7K2S0J.jpg', '2023-10-26 19:19:12', '2023-10-26 19:19:12');

-- Dumping structure for table TSTSPORT.items_orders
CREATE TABLE IF NOT EXISTS `items_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `items_orders_order_id_foreign` (`order_id`),
  KEY `items_orders_product_id_foreign` (`product_id`),
  CONSTRAINT `items_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `items_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table TSTSPORT.items_orders: ~17 rows (approximately)
INSERT INTO `items_orders` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
	(3, 35, 37, 1, 123.00, NULL, NULL),
	(4, 36, 37, 4, 123.00, NULL, NULL),
	(5, 36, 38, 1, 343.00, NULL, NULL),
	(6, 37, 36, 1, 780.00, NULL, NULL),
	(7, 38, 37, 5, 123.00, NULL, NULL),
	(8, 41, 35, 1, 580.00, NULL, NULL),
	(9, 44, 38, 1, 343.00, NULL, NULL),
	(10, 45, 37, 1, 123.00, NULL, NULL),
	(11, 47, 36, 1, 780.00, NULL, NULL),
	(12, 48, 34, 1, 185.00, NULL, NULL),
	(13, 49, 43, 2, 234234.00, NULL, NULL),
	(14, 50, 35, 5, 580.00, NULL, NULL),
	(15, 51, 38, 1, 343.00, NULL, NULL),
	(16, 52, 34, 1, 185.00, NULL, NULL),
	(17, 53, 36, 3, 780.00, NULL, NULL),
	(18, 54, 49, 1, 321.00, NULL, NULL),
	(19, 55, 36, 1, 780.00, NULL, NULL);

-- Dumping structure for table TSTSPORT.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table TSTSPORT.migrations: ~15 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(2, '2023_07_11_090418_create_categories_table', 1),
	(3, '2023_07_11_090751_create_sizes_table', 2),
	(4, '2023_07_11_090447_create_products_table', 3),
	(5, '2023_07_11_090456_create_images_table', 3),
	(6, '2023_07_11_090518_create_roles_table', 4),
	(7, '2023_07_11_090529_create_users_table', 5),
	(10, '2023_07_11_090507_create_orders_table', 6),
	(11, '2023_07_11_090549_create_items_orders_table', 6),
	(12, '2023_07_19_155844_add_default_value_to_role_id_column_in_users_table', 6),
	(13, '2023_07_19_160416_add_default_values_to_users_table', 7),
	(14, '2023_07_25_155718_modify_images_table', 8),
	(15, '2023_07_29_101410_alter_categories_table_add_default_image', 9),
	(17, '2023_07_31_065716_create_cart_items_table', 10),
	(18, '2023_07_31_070348_add_current_cart_id_to_users', 10);

-- Dumping structure for table TSTSPORT.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table TSTSPORT.orders: ~23 rows (approximately)
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
	(35, 12, '2023-08-02 04:00:55', '2023-08-02 04:00:55'),
	(36, 12, '2023-08-02 10:24:41', '2023-08-02 10:24:41'),
	(37, 12, '2023-08-02 18:53:04', '2023-08-02 18:53:04'),
	(38, 12, '2023-08-03 02:35:40', '2023-08-03 02:35:40'),
	(39, 12, '2023-08-03 02:49:42', '2023-08-03 02:49:42'),
	(40, 12, '2023-08-03 03:04:52', '2023-08-03 03:04:52'),
	(41, 12, '2023-08-03 03:13:12', '2023-08-03 03:13:12'),
	(42, 12, '2023-08-03 03:13:43', '2023-08-03 03:13:43'),
	(43, 12, '2023-08-03 03:14:30', '2023-08-03 03:14:30'),
	(44, 12, '2023-08-03 03:15:13', '2023-08-03 03:15:13'),
	(45, 12, '2023-08-03 03:16:25', '2023-08-03 03:16:25'),
	(46, 12, '2023-08-03 03:17:13', '2023-08-03 03:17:13'),
	(47, 12, '2023-08-04 01:18:06', '2023-08-04 01:18:06'),
	(48, 12, '2023-08-04 02:52:26', '2023-08-04 02:52:26'),
	(49, 12, '2023-08-04 04:32:35', '2023-08-04 04:32:35'),
	(50, 12, '2023-08-04 10:20:39', '2023-08-04 10:20:39'),
	(51, 12, '2023-08-04 10:30:26', '2023-08-04 10:30:26'),
	(52, 13, '2023-08-04 10:49:45', '2023-08-04 10:49:45'),
	(53, 13, '2023-08-04 10:50:41', '2023-08-04 10:50:41'),
	(54, 12, '2023-08-04 10:52:20', '2023-08-04 10:52:20'),
	(55, 12, '2023-08-04 11:17:57', '2023-08-04 11:17:57'),
	(56, 14, '2023-10-26 18:20:48', '2023-10-26 18:20:48'),
	(57, 14, '0000-00-00 00:00:00', '2023-10-26 18:21:53');

-- Dumping structure for table TSTSPORT.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table TSTSPORT.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table TSTSPORT.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `descrip` text DEFAULT NULL,
  `size_id` bigint(20) unsigned NOT NULL,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_size_id_foreign` (`size_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table TSTSPORT.products: ~18 rows (approximately)
INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `quantity`, `descrip`, `size_id`, `updated_at`, `created_at`) VALUES
	(34, 'Mizuno Morelia Neo III Pro AS - P1GD228401', 185.00, 29, 10, 'Specialized for artificial turf fields Super light weight for flexible, quick and efficient movement. Super soft, durable premium natural K leather upper for best ball feel. The sole incorporates soft cushioning technology, designed for a perfect landing. L-shaped outsole for flexible maneuvering, good grip.', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(35, 'COPA PURE II.1 FIRM GROUND BOOTS', 580.00, 29, 85, 'Boot connects with ball and the rest is history. Classic and comfortable. When you pull on adidas Copa Pure, everything just clicks. Created to look and feel iconic, these boots offer an assured touch, courtesy of a quilted Fusionskin leather forefoot with subtle microtexturing. A specialist outsole keeps you classy on dry grass. Fine detailing throughout, including a contrast heel blinker, mark you out as a football purist.', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(36, 'X CRAZYFAST.3 TURF BOOTS', 780.00, 29, 213, 'The game\'s gone? Nah. It\'s just waiting for you to change it. Again. And again. Like to keep your rivals guessing? Go wild in adidas X Crazyfast. Keeping you stable at full tilt on short-bladed synthetic fibre, these football boots sit on a lug rubber artificial turf outsole and soft EVA midsole. Featuring extra layers only where reinforcement is required, their lightweight coated textile upper comes with a flat-knit collar that ensures you stay locked in.', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(37, 'X SPEEDPORTAL.3 TURF BOOTS', 123.00, 29, 323, 'Mind. Body. Boot. Connected in the blink of an eye. Pull on adidas X Speedportal to unlock speed in all its dimensions. Built to fly on artificial turf courts, these football boots have a lightweight, coated textile upper and a lug rubber outsole. A soft EVA midsole cushions every step, while a combination of a stretchy flat-knit collar and rigid TPU heel lock ensures you\'re strapped in for sudden bursts of acceleration.', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(38, 'X SPEEDPORTAL.1 TURF BOOTS', 343.00, 29, 10, 'Mind. Body. Boot. Connected in the blink of an eye. Pull on adidas X Speedportal to unlock speed in all its dimensions. Lightweight and foot-hugging, the upper on these football boots has a stretchy collar and carbon heel lock for a secure fit at high speeds. Sitting on a lug rubber outsole, its low-profile Lightstrirke midsole keeps your reactions quick on artificial turf surfaces.', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(39, 'PREDATOR EDGE.3 LOW FIRM GROUND BOOTS', 789.00, 29, 10, 'Swerve. Control. Power. adidas Predator has all angles covered. Hit the pitch and find your edge in these firm ground football boots. Deployed across their low-cut coated textile upper, grippy Control Zone print assists you with every touch of the ball. Underneath, an eye-catching, angular TPU outsole ensures you stay in charge on dry natural grass.', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(40, 'X SPEEDFLOW.1 FG', 322.00, 29, 10, 'From brain to cleat to ball. And back again. When sharpness of mind meets quickness of body, you become the fastest version of yourself. Find your flow and leave the rest behind. Whatever "speed" means to you, these adidas X soccer cleats keep you out in front. For the sprinter, a Carbitex carbon fiber insert and raised forefoot spark explosive propulsion. For the wizard, a stabilizing Agilitycage straps you in for jinking runs. For the fox-in-the-box, adidas Primeknit adds comfort while you wait to strike.', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(41, 'ARSENAL PRE-MATCH JERSEY', 32.00, 32, 85, 'Color the town red wherever you go in the Arsenal Pre-Match Jersey. Designed to ignite high-energy performances and share the pride you have for the Gunners.', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(42, 'MANCHESTER UNITED 23/24 HOME JERSEY', 343.00, 32, 85, 'Like club, like city. Show your team\'s colors with pride in the Manchester United 23/24 Home Jersey.', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(43, 'FC BAYERN 23/24 HOME AUTHENTIC JERSEY', 234234.00, 32, 10, 'A modern reinterpretation of the legendary club\'s first kit, the FC Bayern Home Authentic Jersey pays tribute to the great players of the past. The first full red and white kit for 30 years, it brings a nostalgic yet fresh twist to a team famed for its football consistency.', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(44, 'JUVENTUS 23/24 HOME JERSEY', 87.00, 32, 342, 'Calling all Juve fans. Nostalgic style meets modern sports technology in the Juventus 23/24 Home Jersey. Rooted in club heritage, the jersey takes its inspiration from vintage black and white kits. An embroidered club badge and flashes of yellow complete the standout look.', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(46, 'ARSENAL CONDIVO 22 TRAINING JERSEY', 342.00, 32, 85, 'From their Hertfordshire training base, Arsenal\'s players and staff plot their route to the top of English football. Part of adidas\' Condivo 22 range, this jersey keeps them moving while they polish their skills. Moisture-absorbing AEROREADY brings the confidence. A lightweight badge brings the inspiration.', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(47, 'GERMANY GAME DAY ANTHEM JACKET', 123.00, 32, 85, 'The world stands united. Germany\'s players know teamwork translates to success at international football\'s summit, so they wear adidas jackets like this one before games to show togetherness. Cut for a slim, streamlined fit, it\'ll keep you comfortable with a soft mesh lining. A printed badge on the chest shows you stand with the squad.', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(48, 'Champion Sports RhinoFlex Portable Soccer Goal 3\' x 5\'', 784.00, 34, 85, 'Take your soccer game to the next level with the lightweight but durable RHINO Flex Portable Soccer Goal. Whether you\'re enjoying a game in the backyard or competing with the pros, the RHINO Flex Portable Soccer Goal is made for continuous play and portability. The RHINO Flex technology gives more stability and balance to the net, adding flex action upon impact! The RHINO Flex also is easy to set-up and take down, measuring 3\' x 5\' full size..', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(49, 'Champro PRO Pop-Up Soccer Goal 3\' x 2\'', 321.00, 34, 5, 'Twist-frame sets up in seconds 5mm fiberglass poles make this goal perfect for training High-visibility orange mesh netting Twists flat and packs into included carry bag Includes ground stakes Model# NS401', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(50, 'Champro Braided Soccer Goal Net 4mm', 432.00, 34, 10, '4mm braided polyethylene net Salvaged border 24\' wide, 8\' tall, 10\' deep', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(51, 'Nike GK Match', 32.00, 33, 213, 'Genuine Nike GK match goalkeeper gloves, product code CQ7799-016, a basic product that meets the needs of playing football. Remember that this is the most affordable segment but it comes from a top brand, so it can offer a different experience', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(52, 'test', 12.00, 24, 12, 'test', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(53, 'dajk dgk', 123.00, 24, 12, 'sjgh', 3, '2023-10-26 19:19:12', '2023-10-26 19:19:12');

-- Dumping structure for table TSTSPORT.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table TSTSPORT.roles: ~3 rows (approximately)
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', '2023-07-19 06:58:16', '2023-07-28 19:09:09'),
	(2, 'Staff', '2023-07-19 06:58:19', '2023-07-28 19:09:15'),
	(3, 'Customer', '2023-07-19 08:17:40', '2023-07-28 19:09:22');

-- Dumping structure for table TSTSPORT.sizes
CREATE TABLE IF NOT EXISTS `sizes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table TSTSPORT.sizes: ~8 rows (approximately)
INSERT INTO `sizes` (`id`, `name`) VALUES
	(3, 'L'),
	(4, 'X'),
	(5, '45'),
	(6, '46'),
	(7, '47'),
	(8, '48'),
	(9, 'Unknows'),
	(10, 'M');

-- Dumping structure for table TSTSPORT.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL DEFAULT 1,
  `username` varchar(255) NOT NULL DEFAULT 'guest',
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL DEFAULT 'N/A',
  `current_cart_id` bigint(20) unsigned DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table TSTSPORT.users: ~8 rows (approximately)
INSERT INTO `users` (`id`, `name`, `role_id`, `username`, `password`, `email`, `address`, `current_cart_id`, `updated_at`, `created_at`) VALUES
	(1, 'sddas', 1, 'admin', '123', 'hamsangg@gmail.com', '213dasd', NULL, NULL, NULL),
	(2, 'asd', 3, 'NHam Sang', 'sadsdsada', 'hamsang9a@gmail.com', '213dasd', NULL, NULL, NULL),
	(6, 'admin', 1, 'default_username', '$2y$10$EYOTUjEaQm1QDd6sib23U.b8gqR1gbSF5tLdkygjuhgtFPRNMxF9i', 'Sang@gmail.com', 'default_address', NULL, NULL, NULL),
	(9, 'asd', 1, 'aibiec@gmail.com', 'abc', 'abc@gmail.com', '213dasd', NULL, NULL, NULL),
	(12, 'Toan', 1, 'guest', '$2y$10$3bHsj90sj1IRI5alh5rlUOpTFtLH1/EY.AK0tFlI/YHDj9nuV8TkG', 'taon@gmail.com', 'N/A', NULL, NULL, NULL),
	(13, 'sang', 3, 'guest', '$2y$10$hCAV1j/s21af.BT1jBn0hOJBnkV0RwvDlc3g85l/3fgTHZxwZ8hMa', 'sang3@gmail.com', 'N/A', NULL, NULL, NULL),
	(14, 'Sang', 1, 'guest', '$2y$10$HtEehviToSxK0YZTFGThy.pfq4MidR9xRuBBmma1I9xV4QJ5CLu.y', 'hamsanggg@gmail.com', 'N/A', NULL, NULL, NULL),
	(15, 'Trang', 3, 'guest', '$2y$10$6BYtFvXCuTjXAGVw80CktuRKEFr6UaI5jh9MxjpTk6UAAbUJW6EsG', 'trang@gmail.com', 'N/A', NULL, '2023-10-26 18:52:27', '2023-10-26 18:52:27');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
