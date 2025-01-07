-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 03:44 PM
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
-- Database: `eloquent`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'This is a comment for post 1', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(2, 2, 1, 'This is a comment for post 1', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(3, 3, 2, 'This is a comment for post 2', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(4, 4, 2, 'This is a comment for post 2', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(5, 5, 3, 'This is a comment for post 3', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(6, 6, 3, 'This is a comment for post 3', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(7, 7, 4, 'This is a comment for post 4', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(8, 8, 4, 'This is a comment for post 4', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(9, 9, 5, 'This is a comment for post 5', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(10, 10, 5, 'This is a comment for post 5', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(11, 1, 1, 'This is a comment for post 1', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(12, 2, 1, 'This is a comment for post 1', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(13, 3, 2, 'This is a comment for post 2', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(14, 4, 2, 'This is a comment for post 2', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(15, 5, 3, 'This is a comment for post 3', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(16, 6, 3, 'This is a comment for post 3', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(17, 7, 4, 'This is a comment for post 4', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(18, 8, 4, 'This is a comment for post 4', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(19, 9, 5, 'This is a comment for post 5', '2025-01-07 14:42:54', '2025-01-07 14:42:54'),
(20, 10, 5, 'This is a comment for post 5', '2025-01-07 14:42:54', '2025-01-07 14:42:54');

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
(1, '2025_01_07_041239_create_users_table', 1),
(2, '2025_01_07_140248_create_profiles_table', 2),
(3, '2025_01_07_141528_create_tags_table', 3),
(4, '2025_01_07_141641_create_posts_table', 4),
(6, '2025_01_07_142313_create_post_tags_table', 5),
(7, '2025_01_07_142722_create_comments_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'Title 1', 'This is the content for post 1', NULL, NULL),
(2, 2, 'Title 2', 'This is the content for post 2', NULL, NULL),
(3, 3, 'Title 3', 'This is the content for post 3', NULL, NULL),
(4, 4, 'Title 4', 'This is the content for post 4', NULL, NULL),
(5, 5, 'Title 5', 'This is the content for post 5', NULL, NULL),
(6, 6, 'Title 6', 'This is the content for post 6', NULL, NULL),
(7, 7, 'Title 7', 'This is the content for post 7', NULL, NULL),
(8, 8, 'Title 8', 'This is the content for post 8', NULL, NULL),
(9, 9, 'Title 9', 'This is the content for post 9', NULL, NULL),
(10, 10, 'Title 10', 'This is the content for post 10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-01-07 14:43:50', '2025-01-07 14:43:50'),
(2, 1, 2, '2025-01-07 14:43:50', '2025-01-07 14:43:50'),
(3, 2, 3, '2025-01-07 14:43:50', '2025-01-07 14:43:50'),
(4, 2, 4, '2025-01-07 14:43:50', '2025-01-07 14:43:50'),
(5, 3, 1, '2025-01-07 14:43:50', '2025-01-07 14:43:50'),
(6, 3, 5, '2025-01-07 14:43:50', '2025-01-07 14:43:50'),
(7, 4, 2, '2025-01-07 14:43:50', '2025-01-07 14:43:50'),
(8, 4, 3, '2025-01-07 14:43:50', '2025-01-07 14:43:50'),
(9, 5, 4, '2025-01-07 14:43:50', '2025-01-07 14:43:50'),
(10, 5, 5, '2025-01-07 14:43:50', '2025-01-07 14:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bio` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `bio`, `created_at`, `updated_at`) VALUES
(1, 1, 'bio1', NULL, NULL),
(2, 1, 'bio1', NULL, NULL),
(3, 2, 'bio2', NULL, NULL),
(4, 3, 'bio3', NULL, NULL),
(5, 4, 'bio4', NULL, NULL),
(6, 5, 'bio5', NULL, NULL),
(7, 6, 'bio6', NULL, NULL),
(8, 7, 'bio7', NULL, NULL),
(9, 8, 'bio8', NULL, NULL),
(10, 9, 'bio9', NULL, NULL),
(11, 10, 'bio10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'User 1', NULL, NULL),
(2, 'User 2', NULL, NULL),
(3, 'User 3', NULL, NULL),
(4, 'User 4', NULL, NULL),
(5, 'User 5', NULL, NULL),
(6, 'User 6', NULL, NULL),
(7, 'User 7', NULL, NULL),
(8, 'User 8', NULL, NULL),
(9, 'User 9', NULL, NULL),
(10, 'User 10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'tomas@gmail.com', NULL, NULL),
(2, 'tomas@gmail.com', NULL, NULL),
(3, 'user1@gmail.com', NULL, NULL),
(4, 'user2@gmail.com', NULL, NULL),
(5, 'user3@gmail.com', NULL, NULL),
(6, 'user4@gmail.com', NULL, NULL),
(7, 'user5@gmail.com', NULL, NULL),
(8, 'user6@gmail.com', NULL, NULL),
(9, 'user7@gmail.com', NULL, NULL),
(10, 'user8@gmail.com', NULL, NULL),
(11, 'user9@gmail.com', NULL, NULL),
(12, 'user10@gmail.com', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tags_post_id_foreign` (`post_id`),
  ADD KEY `post_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
