-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2024 at 05:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `module_stepby`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brandName` varchar(200) NOT NULL,
  `brandImg` varchar(200) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brandName`, `brandImg`, `create_at`, `update_at`) VALUES
(1, 'Nike', 'nike.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(2, 'Adidas', 'adidas.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(3, 'Puma', 'puma.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(4, 'Reebok', 'reebok.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(5, 'Under Armour', 'under_armour.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(6, 'Asics', 'asics.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(7, 'New Balance', 'new_balance.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(8, 'Converse', 'converse.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(9, 'Vans', 'vans.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(10, 'Fila', 'fila.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(100) NOT NULL,
  `categoryImg` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryImg`, `create_at`, `update_at`) VALUES
(1, 'Electronics', 'electronics.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(2, 'Fashion', 'fashion.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(3, 'Home Appliances', 'home_appliances.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(4, 'Books', 'books.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(5, 'Beauty & Personal Care', 'beauty_care.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(6, 'Sports & Outdoors', 'sports_outdoors.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(7, 'Toys & Games', 'toys_games.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(8, 'Automotive', 'automotive.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(9, 'Health & Wellness', 'health_wellness.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(10, 'Groceries', 'groceries.png', '2024-12-01 13:29:08', '2024-12-01 13:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `check`
--

CREATE TABLE `check` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `check`
--

INSERT INTO `check` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'user1@gmail.com', '1234', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(2, 'user2@gmail.com', '5678', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(3, 'user3@gmail.com', '9101', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(4, 'user4@gmail.com', '1121', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(5, 'user5@gmail.com', '3141', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(6, 'user6@gmail.com', '5161', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(7, 'user7@gmail.com', '7181', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(8, 'user8@gmail.com', '9202', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(9, 'user9@gmail.com', '1222', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(10, 'user10@gmail.com', '3242', '2024-12-01 13:29:08', '2024-12-01 13:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_12_23_112442_create_users', 1),
(2, '2024_12_23_112515_create_categories', 1),
(3, '2024_12_23_113540_create_brands', 1),
(4, '2024_12_23_113615_create_products', 1),
(5, '2024_12_23_113630_create_product_details', 1),
(6, '2024_12_23_113646_create_product_sliders', 1),
(7, '2024_12_23_180414_create_profiles', 1),
(8, '2024_12_23_181730_create_product_reviews', 1),
(9, '2024_12_23_182030_create_product_wishes', 1),
(10, '2024_12_23_182241_create_product_carts', 1),
(12, '2024_12_30_120628_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `short_des` varchar(500) NOT NULL,
  `price` varchar(50) NOT NULL,
  `discount` tinyint(1) NOT NULL,
  `discount_price` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `stack` tinyint(1) NOT NULL,
  `star` double NOT NULL,
  `remark` enum('popular','top','new','special','trending','regular') NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `short_des`, `price`, `discount`, `discount_price`, `image`, `stack`, `star`, `remark`, `category_id`, `brand_id`, `create_at`, `update_at`) VALUES
(1, 'Smartphone', 'Latest smartphone with advanced features', '999.99', 10, '899.99', 'smartphone.jpg', 50, 4.5, '', 1, 1, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(2, 'Laptop', 'High-performance laptop for professionals', '1499.99', 15, '1274.99', 'laptop.jpg', 30, 4.7, '', 1, 2, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(3, 'Headphones', 'Noise-canceling over-ear headphones', '', 20, '159.99', 'headphones.jpg', 100, 4.3, '', 2, 3, '2024-12-01 13:29:08', '2024-12-31 03:56:59'),
(4, 'Smartwatch', 'Stylish smartwatch with health tracking', '299.99', 10, '269.99', 'smartwatch.jpg', 80, 4.6, 'trending', 2, 1, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(5, 'Backpack', 'Durable and lightweight travel backpack', '59.99', 5, '56.99', 'backpack.jpg', 127, 4.2, '', 3, 4, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(6, 'Running Shoes', 'Comfortable running shoes for athletes', '120.00', 25, '90.00', 'running_shoes.jpg', 60, 4.8, '', 3, 5, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(7, 'Coffee Maker', 'Programmable coffee maker with timer', '79.99', 30, '55.99', 'coffee_maker.jpg', 70, 4.4, '', 4, 6, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(8, 'Gaming Console', 'Latest-gen gaming console with 4K support', '499.99', 12, '439.99', 'gaming_console.jpg', 40, 4.9, '', 5, 2, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(9, 'Digital Camera', 'Compact digital camera with high resolution', '599.99', 10, '539.99', 'camera.jpg', 35, 4.5, '', 6, 3, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(10, 'Wireless Mouse', 'Ergonomic wireless mouse with long battery life', '49.99', 20, '39.99', 'mouse.jpg', 127, 4.1, '', 7, 2, '2024-12-01 13:29:08', '2024-12-01 13:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `email`, `product_id`, `color`, `size`, `create_at`, `update_at`) VALUES
(1, 'user1@gmial.com', 1, 'black', '10', '2024-12-01 13:41:31', '2024-12-01 13:41:31'),
(31, 'user2@gmail.com', 2, 'Blue', 'L', '2024-12-01 13:41:31', '2024-12-01 13:41:31'),
(32, 'user3@gmail.com', 3, 'Green', 'S', '2024-12-01 13:41:31', '2024-12-01 13:41:31'),
(33, 'user4@gmail.com', 4, 'White', 'XL', '2024-12-01 13:41:31', '2024-12-01 13:41:31'),
(34, 'user5@gmail.com', 5, 'Yellow', 'M', '2024-12-01 13:41:31', '2024-12-01 13:41:31'),
(35, 'user6@gmail.com', 6, 'Red', 'L', '2024-12-01 13:41:31', '2024-12-01 13:41:31'),
(36, 'user7@gmail.com', 7, 'Pink', 'S', '2024-12-01 13:41:31', '2024-12-01 13:41:31'),
(37, 'user8@gmail.com', 8, 'Purple', 'XL', '2024-12-01 13:41:31', '2024-12-01 13:41:31'),
(38, 'user9@gmail.com', 9, 'Gray', 'M', '2024-12-01 13:41:31', '2024-12-01 13:41:31'),
(39, 'user10@gmail.com', 10, 'Brown', 'L', '2024-12-01 13:41:31', '2024-12-01 13:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img1` varchar(200) NOT NULL,
  `img2` varchar(200) NOT NULL,
  `img3` varchar(200) NOT NULL,
  `img4` varchar(200) NOT NULL,
  `des` longtext NOT NULL,
  `color` varchar(100) NOT NULL,
  `size` varchar(200) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `img1`, `img2`, `img3`, `img4`, `des`, `color`, `size`, `product_id`, `create_at`, `update_at`) VALUES
(1, 'img1_1.jpg', 'img1_2.jpg', 'img1_3.jpg', 'img1_4.jpg', 'High-quality smartphone with advanced features.', 'Red', 'M', 1, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(2, 'img2_1.jpg', 'img2_2.jpg', 'img2_3.jpg', 'img2_4.jpg', 'Lightweight and powerful laptop for all purposes.', 'Blue', 'L', 2, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(3, 'img3_1.jpg', 'img3_2.jpg', 'img3_3.jpg', 'img3_4.jpg', 'Stylish and comfortable wireless headphones.', 'Black', 'S', 3, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(4, 'img4_1.jpg', 'img4_2.jpg', 'img4_3.jpg', 'img4_4.jpg', 'Smartwatch with multiple health tracking features.', 'White', 'XL', 4, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(5, 'img5_1.jpg', 'img5_2.jpg', 'img5_3.jpg', 'img5_4.jpg', 'Durable and spacious travel backpack.', 'Yellow', 'M', 5, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(6, 'img6_1.jpg', 'img6_2.jpg', 'img6_3.jpg', 'img6_4.jpg', 'High-performance running shoes for athletes.', 'Green', 'L', 6, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(7, 'img7_1.jpg', 'img7_2.jpg', 'img7_3.jpg', 'img7_4.jpg', 'Programmable coffee maker with a sleek design.', 'Pink', 'S', 7, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(8, 'img8_1.jpg', 'img8_2.jpg', 'img8_3.jpg', 'img8_4.jpg', 'Latest gaming console with immersive graphics.', 'Purple', 'XL', 8, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(9, 'img9_1.jpg', 'img9_2.jpg', 'img9_3.jpg', 'img9_4.jpg', 'Compact and feature-rich digital camera.', 'Gray', 'M', 9, '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(10, 'img10_1.jpg', 'img10_2.jpg', 'img10_3.jpg', 'img10_4.jpg', 'Ergonomic wireless mouse with long battery life.', 'Brown', 'L', 10, '2024-12-01 13:29:08', '2024-12-01 13:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sliders`
--

CREATE TABLE `product_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `short_des` varchar(500) NOT NULL,
  `image` varchar(100) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_wishes`
--

CREATE TABLE `product_wishes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `shippingAddress` varchar(1000) NOT NULL,
  `email` varchar(50) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `firstName`, `lastName`, `mobile`, `city`, `shippingAddress`, `email`, `create_at`, `update_at`) VALUES
(1, 'tomas', 'uddin', '0181672389', 'Dhaka', 'sirajgonj', 'user1@gmial.com', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(2, 'Arif', 'Khan', '0181234567', 'Chittagong', 'Pahartali', 'user2@gmail.com', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(3, 'Rahim', 'Ahmed', '0198765432', 'Sylhet', 'Mirabazar', 'user3@gmail.com', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(4, 'Karim', 'Hassan', '0175647382', 'Khulna', 'Sonadanga', 'user4@gmail.com', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(5, 'Sami', 'Islam', '0169876543', 'Rajshahi', 'Motihar', 'user5@gmail.com', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(6, 'Fahim', 'Shaikh', '0193344556', 'Barishal', 'Nothullabad', 'user6@gmail.com', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(7, 'Rifat', 'Ali', '0181223344', 'Rangpur', 'Modern', 'user7@gmail.com', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(8, 'Noman', 'Hossain', '0179876543', 'Mymensingh', 'Chhoto Bazar', 'user8@gmail.com', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(9, 'Tahmid', 'Rahman', '0161239876', 'Comilla', 'Kandirpar', 'user9@gmail.com', '2024-12-01 13:29:08', '2024-12-01 13:29:08'),
(10, 'Rashid', 'Kamal', '0197654321', 'Narayanganj', 'Chashara', 'user10@gmail.com', '2024-12-01 13:29:08', '2024-12-01 13:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `otp`, `create_at`, `update_at`) VALUES
(1, 'user1@gmial.com', '1234', '2024-12-30 13:28:08', '2024-12-30 13:28:08'),
(2, 'user2@gmail.com', '5678', '2024-12-30 13:28:57', '2024-12-30 13:28:57'),
(3, 'user3@gmail.com', '9101', '2024-12-30 13:28:57', '2024-12-30 13:28:57'),
(4, 'user4@gmail.com', '1121', '2024-12-30 13:28:57', '2024-12-30 13:28:57'),
(5, 'user5@gmail.com', '3141', '2024-12-30 13:28:57', '2024-12-30 13:28:57'),
(6, 'user6@gmail.com', '5161', '2024-12-30 13:28:57', '2024-12-30 13:28:57'),
(7, 'user7@gmail.com', '7181', '2024-12-30 13:28:57', '2024-12-30 13:28:57'),
(8, 'user8@gmail.com', '9202', '2024-12-30 13:28:57', '2024-12-30 13:28:57'),
(9, 'user9@gmail.com', '1222', '2024-12-30 13:28:57', '2024-12-30 13:28:57'),
(10, 'user10@gmail.com', '3242', '2024-12-30 13:28:57', '2024-12-30 13:28:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check`
--
ALTER TABLE `check`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_carts_email_unique` (`email`),
  ADD KEY `product_carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_details_product_id_unique` (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_reviews_email_unique` (`email`),
  ADD UNIQUE KEY `product_reviews_product_id_unique` (`product_id`);

--
-- Indexes for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_sliders_product_id_unique` (`product_id`);

--
-- Indexes for table `product_wishes`
--
ALTER TABLE `product_wishes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_wishes_email_unique` (`email`),
  ADD UNIQUE KEY `product_wishes_product_id_unique` (`product_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `check`
--
ALTER TABLE `check`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_sliders`
--
ALTER TABLE `product_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_wishes`
--
ALTER TABLE `product_wishes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD CONSTRAINT `product_carts_email_foreign` FOREIGN KEY (`email`) REFERENCES `profiles` (`email`),
  ADD CONSTRAINT `product_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_email_foreign` FOREIGN KEY (`email`) REFERENCES `profiles` (`email`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD CONSTRAINT `product_sliders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_wishes`
--
ALTER TABLE `product_wishes`
  ADD CONSTRAINT `product_wishes_email_foreign` FOREIGN KEY (`email`) REFERENCES `profiles` (`email`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product_wishes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_email_foreign` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
