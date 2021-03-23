-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 23, 2021 at 04:07 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phone`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Điện Thoại', '2017-04-07 04:14:04', '2017-04-07 04:14:04'),
(2, 'Tablet', '2017-04-07 08:27:26', '2017-04-07 08:27:26'),
(3, 'Phụ kiện', '2020-12-20 09:25:09', '2020-12-20 09:25:09'),
(4, 'laptop', '2021-03-02 02:38:11', '2021-03-02 02:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_04_04_045147_Create_Categories_Table', 1),
(4, '2017_04_04_045247_Create_Trademarks_Table', 1),
(5, '2017_04_04_045332_Create_Products_Table', 1),
(6, '2017_04_04_050229_Create_Product_Images_Table', 1),
(7, '2017_04_04_050512_Create_Orders_Table', 1),
(8, '2017_04_04_050730_Create_Order_Details_Table', 1),
(9, '2017_04_04_050958_Update_User_Table', 1),
(10, '2017_04_04_051127_Create_News_Table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `purchase_date` datetime NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `purchase_date`, `total_price`, `detail`, `status`, `user_id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, '2020-12-22 11:46:25', '42000000.00', NULL, 0, 9, 'trần thế anh', 'trantheanh041@gmail.com', '0394367243', 'lo j015 chung cư đồng diều phường 4 q8', '2020-12-22 04:46:25', '2020-12-22 04:46:25'),
(2, '2020-12-22 15:45:43', '12000000.00', 'gửi sớm', 0, 9, 'trần thế anh', 'trantheanh041@gmail.com', '0394367243', 'lo j015 chung cư đồng diều phường 4 q8', '2020-12-22 08:45:43', '2020-12-22 08:45:43'),
(3, '2020-12-22 16:45:44', '8000000.00', 'sdad', 0, 9, 'trần thế anh', 'trantheanh041@gmail.com', '0394367243', 'lo j015 chung cư đồng diều phường 4 q8', '2020-12-22 09:45:44', '2020-12-22 09:45:44'),
(4, '2020-12-23 21:33:16', '2900000.00', 'ádas', 0, 0, 'trần thế  anh', 'trantheanh041@gmail.com', '0394367243', 'dsad', '2020-12-23 14:33:16', '2020-12-23 14:33:16'),
(5, '2021-03-14 22:35:35', '2900000.00', '123', 0, 0, 'nguyễn văn A', 'abc@gmail.com', '0924016865', '180 Cao Lỗ, Quận 8', '2021-03-14 15:35:35', '2021-03-14 15:35:35'),
(6, '2021-03-23 08:37:32', '9000000.00', NULL, 0, 13, 'nvtrungd17th10@gmail.com', 'nvtrungd17th10@gmail.com', '0924016865', '180 cao lo', '2021-03-23 01:37:32', '2021-03-23 01:37:32'),
(7, '2021-03-23 09:23:51', '8540000.00', '123456789', 0, 0, 'nguyễn văn A', 'hectorit1999@gmail.com', '0567457187', '180 Cao Lỗ, Quận 8', '2021-03-23 02:23:51', '2021-03-23 02:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_details_order_id_foreign` (`order_id`),
  KEY `order_details_product_id_foreign` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `quantity`, `price`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, '3000000.00', 1, 32, '2020-12-22 04:46:25', '2020-12-22 04:46:25'),
(2, 1, '39000000.00', 1, 35, '2020-12-22 04:46:25', '2020-12-22 04:46:25'),
(3, 2, '6000000.00', 2, 39, '2020-12-22 08:45:43', '2020-12-22 08:45:43'),
(4, 1, '8000000.00', 3, 28, '2020-12-22 09:45:44', '2020-12-22 09:45:44'),
(5, 1, '2900000.00', 4, 41, '2020-12-23 14:33:16', '2020-12-23 14:33:16'),
(6, 1, '2900000.00', 5, 41, '2021-03-14 15:35:35', '2021-03-14 15:35:35'),
(7, 1, '9000000.00', 6, 45, '2021-03-23 01:37:32', '2021-03-23 01:37:32'),
(8, 1, '8540000.00', 7, 46, '2021-03-23 02:23:51', '2021-03-23 02:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchases` int(11) NOT NULL,
  `hightlights` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `price_sale` decimal(10,2) NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trademark_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_name_unique` (`name`),
  KEY `products_trademark_id_foreign` (`trademark_id`),
  KEY `products_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `purchases`, `hightlights`, `quantity`, `price`, `price_sale`, `color`, `images`, `trademark_id`, `user_id`, `created_at`, `updated_at`) VALUES
(23, 'Apple Iphone 12  164GB VNA', '<p>đẹp</p>', 0, 1, 1, '25000000.00', '22000000.00', 'Blue', 'ipxanh1-16031905011501050984861.jpg', 1, 9, '2020-12-20 09:30:34', '2020-12-22 04:03:08'),
(24, 'iphone 12 pro 128 GB', '<p>đẹp</p>', 0, 1, 3, '33900000.00', '30490000.00', 'Gold', 'iphone-12-pro-max-vang-new-600x600-600x600.jpg', 1, 9, '2020-12-22 04:00:32', '2020-12-22 04:00:32'),
(25, 'iphone 12 mini', '<p>đẹp</p>', 0, 0, 10, '21000000.00', '19900000.00', 'Blue sky', 'iphone-mini-xanh-duongnew-600x600-600x600.jpg', 1, 9, '2020-12-22 04:05:28', '2020-12-22 04:05:28'),
(26, 'iphone xsmax', '<p>đẹp</p>', 0, 1, 4, '16000000.00', '14800000.00', 'Yellow', '211_untitled_1.png', 1, 9, '2020-12-22 04:07:35', '2020-12-22 04:07:35'),
(27, 'iphone X', '<p>Đẹp !!!</p>', 0, 1, 1, '12000000.00', '9000000.00', 'white', '61GDujvG4RL._AC_SL1500_.jpg', 1, 9, '2020-12-22 04:09:35', '2020-12-22 04:09:35'),
(28, 'iphone 8 plus', '<p>Đẹp</p>', 0, 0, 3, '9000000.00', '8000000.00', 'Gold', 'iphone-8-plus-hh-600x600-600x600.jpg', 1, 9, '2020-12-22 04:12:09', '2020-12-22 04:12:09'),
(29, 'Samsung Galaxy Note 10+', '<p>Đẹp</p>', 0, 0, 7, '12000000.00', '10000000.00', 'Xanh', 'note_10_plus_xanh.jpg', 2, 9, '2020-12-22 04:15:23', '2020-12-22 04:15:23'),
(30, 'Samsung Galaxy A51 (8GB/128GB)', '<p>Đẹp</p>', 0, 0, 7, '10000000.00', '8000000.00', 'Blue', 'samsung-galaxy-note-20-xanh-new-600x600.jpg', 2, 9, '2020-12-22 04:18:26', '2020-12-22 04:33:52'),
(31, 'Samsung Galaxy A71', '<p>Đẹp</p>', 0, 0, 8, '9000000.00', '7000000.00', 'Gray', 'samsung-galaxy-a71-bac-inox-new-600x600-600x600.jpg', 2, 9, '2020-12-22 04:20:33', '2020-12-22 04:20:33'),
(32, 'airpot', '<p>Đẳng cấp !!!</p>', 0, 0, 4, '5000000.00', '3000000.00', 'white', '9284a1e71ae39f65a0ddecf131dce8ee.jpg', 12, 9, '2020-12-22 04:27:32', '2020-12-22 04:27:32'),
(33, 'SamSung Galaxy S20', '<p>Đẹp</p>', 0, 1, 5, '25000000.00', '22000000.00', 'Pink', 'samsung-galaxy-s20-hong-600x600-600x600.jpg', 2, 9, '2020-12-22 04:29:23', '2020-12-22 04:29:23'),
(34, 'SamSung Galaxy Note 20 Ultra', '<p>Chất!!!</p>', 0, 1, 9, '30000000.00', '25000000.00', 'Gold', 'samsung-galaxy-note-20-ultra-vangdong-600x600-600x600.jpg', 2, 9, '2020-12-22 04:30:31', '2020-12-22 04:30:31'),
(35, 'Samsung Galaxy Z flip', '<p>luxury</p>', 0, 1, 2, '40000000.00', '39000000.00', 'black', 'samsung-galaxy-z-flip-600x600-1-600x600.jpg', 1, 9, '2020-12-22 04:36:48', '2020-12-22 04:36:48'),
(36, 'Dock sạc', '<p>Zin</p>', 0, 0, 5, '400000.00', '350000.00', 'white', 'c41c4fd05e9a4d69b440f6dd822d91c9.jfif', 13, 9, '2020-12-22 04:45:35', '2020-12-22 08:44:29'),
(37, 'Oppo A93', '<p>white</p>', 0, 0, 4, '8000000.00', '7000000.00', 'white', 'oppo-a93-trang-14-600x600.jpg', 8, 9, '2020-12-22 05:13:25', '2020-12-22 05:13:25'),
(38, 'Oppo reno 4', '<p>Tinh tế</p>', 0, 0, 7, '9000000.00', '8500000.00', 'white', 'oppo-reno4-xanh-600x600.jpg', 8, 9, '2020-12-22 05:15:46', '2020-12-22 05:15:46'),
(39, 'Oppo A92', '<p>Chất !!!</p>', 0, 0, 4, '7000000.00', '6000000.00', 'white', 'oppo-a92-tim-600x600.jpg', 8, 9, '2020-12-22 05:18:18', '2020-12-22 05:18:18'),
(40, 'Vsmart Aris', '<p>Đẹp</p>', 0, 0, 10, '10000000.00', '9000000.00', 'Gold', 'vsmart-aris-xanhduong-600x600-600x600.jpg', 9, 9, '2020-12-23 06:54:46', '2020-12-23 06:54:46'),
(41, 'Vsmart Joy 3', '<p>Đẹp !!!</p>', 0, 0, 5, '3000000.00', '2900000.00', 'Gold', 'vsmart-joy-3-4gb-64gb-den-didongviet_1_4.jpg', 9, 9, '2020-12-23 06:56:50', '2020-12-23 06:56:50'),
(42, 'Vsmart live', '<p>Đẹp!!!</p>', 0, 0, 5, '6000000.00', '5000000.00', 'Blue', 'vsmart-live-blue-600x600.jpg', 9, 9, '2020-12-23 07:03:36', '2020-12-23 07:03:36'),
(43, 'Ipad Air', '<p>Chất lượng&nbsp;</p>', 0, 1, 1, '15000000.00', '10000000.00', 'Gold', 'ipad-wifi-32gb-2018-thumb-33397-123-123321-600x600-600x600.jpg', 10, 9, '2020-12-24 17:15:42', '2020-12-24 17:15:42'),
(44, 'Ipad Pro 2019', '<p>Siêu chất lượng !!!&nbsp;</p>', 0, 1, 5, '25000000.00', '23000000.00', 'Gray', '39221_apple_ipad_pro_11__2020__gray_2.jpg', 10, 9, '2020-12-24 17:17:22', '2020-12-24 17:17:22'),
(45, 'ipad Wifi', '<p>Rẻ !!!</p>', 0, 0, 4, '10000000.00', '9000000.00', 'White', 'ipad-gen-8-wifi-bac-new-600x600-200x200.jpg', 10, 9, '2020-12-24 17:18:36', '2020-12-24 17:18:36'),
(46, 'Máy tính bảng Samsung', '<p>Rẻ!!!</p>', 0, 0, 3, '10000000.00', '8540000.00', 'white', '00024233_FEATURE_56914.jpg', 11, 9, '2020-12-24 17:20:18', '2020-12-24 17:20:18'),
(47, 'Samsung galayxy tab', '<p>Siêu phẩm !!!</p>', 0, 0, 3, '13000000.00', '12000000.00', 'White', '6357007_sd.jpg', 11, 9, '2020-12-24 17:23:17', '2020-12-24 17:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_id_foreign` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trademarks`
--

DROP TABLE IF EXISTS `trademarks`;
CREATE TABLE IF NOT EXISTS `trademarks` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trademarks_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trademarks`
--

INSERT INTO `trademarks` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Apple(Iphone)', 1, '2017-04-07 04:56:56', '2017-04-07 04:56:56'),
(2, 'SamSung', 1, '2017-04-07 04:57:09', '2017-04-07 04:57:09'),
(8, 'Oppo', 1, '2020-12-20 09:25:32', '2020-12-20 09:25:32'),
(9, 'Vsmart', 1, '2020-12-20 09:25:43', '2020-12-20 09:25:43'),
(10, 'Ipad', 2, '2020-12-20 09:28:04', '2020-12-20 09:28:04'),
(11, 'Samsung', 2, '2020-12-20 09:28:16', '2020-12-20 09:28:16'),
(12, 'Airpot', 3, '2020-12-20 09:28:26', '2020-12-20 09:28:26'),
(13, 'Cáp sạc', 3, '2020-12-20 09:28:54', '2020-12-22 08:45:04'),
(14, 'DELL', 4, '2021-03-02 02:38:28', '2021-03-02 02:38:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `gender`, `level`, `phone`, `address`) VALUES
(9, 'trần thế anh', 'trantheanh041@gmail.com', '$2y$10$Di9ykGBTKSKOoZauASOmxOynOTPGxI7cMkZngRD8WzCe68Uflj.5y', 'RdZRj2RJa2pn8tafbMWiWZZ1pycNh1ymgKDPv0Zq9pybFmQbsHj3Xp5JOAzq', NULL, '2020-12-19 13:00:14', 1, 1, '0394367243', 'lo j015 chung cư đồng diều phường 4 q8'),
(10, 'trần thế anh', 'dh51705057@student.stu.edu.vn', '$2y$10$3TqNZc6tDZ1LvyvuOZyaPOnEb9opdmoOQXA5mmFR4oZnmgwpYWOy2', 'Iiwc0IFkcKsa1BhrBHxC8X6CWTON8wHSY719G6APYEr5kX74df1rZKRbpzwV', '2020-12-21 14:17:32', '2020-12-21 14:17:32', 1, 0, '0394367243', 'lo j015 chung cư đòng diều'),
(11, 'trần thế anh', 'user1@gmail.com', '$2y$10$qXaVafgkwtM77AmuAk5AP.9CfmeAN7h5.ucRt8.FyrtNYa91eP1Mu', 'DNWGO0xeYFsYPRpPh2Ftcz7MIHmJ21MOJyQ9tLY4yM7QYfg99GDpsaQkdI95', '2020-12-23 07:05:03', '2020-12-23 07:05:03', 1, 0, '0394367243', 'TPHCM'),
(12, 'user', 'user2@gmail.com', '$2y$10$zZ72G3YZRAJR/BxGWj2vae2s/edKFnV3dZnV8sroSvpr4xeZVB5Bi', 'EMn65fOPWRpTv8oXUNlZOhFkcfo27BbRSJTBHyaC', '2020-12-23 07:05:45', '2020-12-23 07:05:45', 0, 0, '123456789', 'TPHCM'),
(13, 'nvtrungd17th10@gmail.com', 'nvtrungd17th10@gmail.com', '$2y$10$5YPZniQscBHaF8Ignp7NouTj22DfcE1gCdnrfCUs2Pxs3mGSqIQTq', 'TV1sKja0gD9OluyQGcGnJ7uk4fpHfWme7k9Dahq3Vh8En2gL7LmXxkYXPjDX', '2021-03-06 07:08:51', '2021-03-06 07:08:51', 1, 1, '0924016865', '180 cao lo'),
(14, 'hectorit1999@gmail.com', 'hectorit1999@gmail.com', '$2y$10$eADeUy1KVxjG.8s.B.G/ruwideWjp343iaauqWJ/pT1RTTnm1dLny', 'aum4HVTdFc9bRKiyeegVVa9TEQ55uE4QvMXJacgr9dXDQCQi2YaJqNtyO9no', '2021-03-23 02:23:08', '2021-03-23 02:23:08', 1, 0, '0924016865', '180 Cao Lo');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_trademark_id_foreign` FOREIGN KEY (`trademark_id`) REFERENCES `trademarks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trademarks`
--
ALTER TABLE `trademarks`
  ADD CONSTRAINT `trademarks_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
