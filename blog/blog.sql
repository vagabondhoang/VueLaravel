-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2017 at 09:46 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Drinks', NULL, NULL),
(2, 'Desserts', NULL, NULL),
(3, 'Business', NULL, NULL),
(4, 'Breakfast', NULL, NULL),
(5, 'Lunch', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favorite_products`
--

CREATE TABLE `favorite_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorite_products`
--

INSERT INTO `favorite_products` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2017_05_25_063513_create_categories_table', 1),
(22, '2017_05_25_065652_create_posts_table', 1),
(23, '2017_05_25_134053_create_products_table', 1),
(24, '2017_05_25_134954_create_comments_table', 1),
(25, '2017_05_25_230332_create_favorite_products_table', 1),
(26, '2017_05_25_230621_create_transactions_table', 1),
(27, '2017_05_25_231347_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `transaction_id`, `product_id`, `quantity`, `amount`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 10, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `book` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `description`, `discount`, `book`, `view`, `created_at`, `updated_at`) VALUES
(1, 1, 'GRILLED BEEF RILLED BEEF RILLED BEEF', 10, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 10, 1, 10, NULL, NULL),
(2, 3, 'Mrs.', 91, 'Alias consequatur quo unde porro eligendi. Qui ea maiores voluptatum necessitatibus id. Quia perferendis libero corporis qui dicta facilis voluptas architecto. Dolorum sed nihil ut ut.', 3, 794, 74, '2017-05-26 20:14:42', '2017-05-26 20:14:42'),
(3, 4, 'Mrs.', 67, 'Odio esse sequi aliquam distinctio quis. Deserunt suscipit neque autem exercitationem. Non necessitatibus cupiditate dolores voluptatum soluta dolores. Minima officiis sit iste modi nemo.', 5, 674, 6, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(4, 3, 'Mrs.', 6, 'Sed excepturi id deleniti quisquam nihil similique. Labore inventore harum ut in voluptatem eveniet. Itaque et voluptas et in officia.', 10, 32, 45, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(5, 1, 'Mr.', 97, 'Illum quae illum officiis quis. Sunt ut qui ut rerum dolor culpa quas. Fuga quasi sunt molestias impedit quod ullam. Ratione enim ducimus minima ut. Et quas est recusandae placeat ea.', 3, 326, 100, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(6, 3, 'Dr.', 27, 'Quas nemo cumque debitis rem quae sequi doloribus ratione. Eveniet aut voluptas modi in vero magni sit sit. Ut aut saepe ipsa rerum. Totam quaerat a earum blanditiis nulla asperiores enim.', 4, 244, 17, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(7, 3, 'Prof.', 100, 'Nihil recusandae exercitationem aut aliquam. Laborum qui quia qui delectus.', 8, 575, 57, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(8, 5, 'Prof.', 68, 'Assumenda quos ipsam molestias suscipit temporibus dolorem. Excepturi rerum voluptas laboriosam aspernatur aut. Expedita enim sed aut natus hic tempora. Sint rerum quia omnis modi.', 7, 83, 74, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(9, 5, 'Dr.', 68, 'Sed in vel et quo id ut vero. Nihil id aspernatur et odio non nihil. Cupiditate fugit fugit commodi quis quo voluptas architecto.', 9, 710, 37, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(10, 1, 'Ms.', 82, 'Incidunt est ad suscipit perferendis est molestias. Iste error distinctio itaque minima est ut. Dignissimos et quo accusamus rerum.', 5, 438, 78, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(11, 1, 'Dr.', 19, 'Accusamus quis beatae nihil numquam illum qui quisquam. Ipsa autem voluptate non explicabo officia velit. Facilis fugit voluptas veritatis exercitationem corrupti in. Et consequatur neque non.', 2, 292, 17, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(12, 1, 'Dr.', 45, 'Illo eligendi laudantium qui nihil est deserunt dignissimos. Excepturi voluptatem quo porro eum soluta sit voluptas. Iure aut qui excepturi sed. Ducimus qui vero libero provident dolores.', 8, 452, 85, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(13, 1, 'Prof.', 11, 'Non officiis nesciunt accusantium deleniti asperiores enim. Sapiente recusandae vel ut aut quam ut voluptatum. Aperiam eius et et dolor. Aperiam commodi accusamus ipsam officiis iste praesentium. Rerum libero aspernatur dignissimos distinctio veniam quibusdam eveniet voluptas.', 5, 439, 86, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(14, 5, 'Mrs.', 67, 'Recusandae in provident perspiciatis aut. Facilis corporis blanditiis explicabo et animi dignissimos similique. Quia aut aspernatur voluptas. Debitis qui numquam eum placeat reiciendis.', 9, 453, 69, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(15, 2, 'Dr.', 26, 'Suscipit et minima pariatur repellendus quas doloribus. Amet debitis natus facere eligendi corporis aut. Adipisci aut voluptates consequatur consectetur.', 4, 741, 49, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(16, 1, 'Miss', 51, 'Sit voluptatibus beatae ipsam et. Quidem soluta est reiciendis. Velit id aut dolorum doloremque soluta omnis soluta.', 6, 498, 88, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(17, 4, 'Mrs.', 12, 'Earum ratione veniam repudiandae dolores minus blanditiis. Nisi omnis ipsam quibusdam occaecati sed vero. Molestiae ea perferendis consectetur deleniti. Non qui est nemo beatae.', 8, 601, 97, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(18, 2, 'Mr.', 25, 'A blanditiis et accusamus rerum facere. Facere veritatis ut earum quia. Eligendi alias eos voluptatibus sit.', 1, 251, 38, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(19, 5, 'Mr.', 1, 'Et esse et adipisci laborum nostrum neque consequuntur. Porro unde modi quia optio.', 6, 669, 68, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(20, 4, 'Prof.', 40, 'Nulla fugiat necessitatibus expedita aut. Suscipit et fuga vero cupiditate non quidem. Voluptatibus non odio aspernatur labore magni necessitatibus. Tempore iusto aut fuga doloremque.', 8, 29, 66, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(21, 2, 'Mr.', 51, 'Facilis quia et sint. Maxime rerum ea molestias aut ut. Corrupti enim enim qui laborum adipisci.', 3, 797, 2, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(22, 4, 'Miss', 70, 'Dolores error ipsam odit nobis cumque nesciunt non. Quos praesentium nihil inventore cum. Aut nulla quia odio qui. Perferendis quis qui voluptatibus praesentium.', 5, 849, 82, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(23, 4, 'Prof.', 24, 'Veritatis vitae sequi in voluptatem voluptas quaerat tempore. Maxime rerum quia vel quis ea. Modi ullam itaque odio. Voluptatem omnis eum a magni consequuntur architecto. Omnis molestiae aut voluptas nulla sunt.', 2, 270, 51, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(24, 2, 'Miss', 42, 'Quaerat saepe sunt animi id id blanditiis. Quos ut nobis beatae. Ut harum laboriosam maiores excepturi. Explicabo occaecati et sed aut enim. Autem id expedita et.', 3, 73, 37, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(25, 5, 'Mrs.', 88, 'Pariatur quam earum est et quis ea eos vitae. Voluptatem cum fugiat autem. Modi commodi illo corrupti autem adipisci enim hic.', 2, 290, 17, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(26, 5, 'Prof.', 36, 'Quos sequi odio ad delectus ipsa ut non. Voluptates sit perspiciatis unde sapiente placeat quam. Corporis aut dolor vitae. Blanditiis quisquam quia velit non voluptas eum cupiditate commodi.', 7, 425, 83, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(27, 1, 'Mrs.', 97, 'Eum sapiente quia pariatur consectetur eos commodi. Labore beatae enim quia magni veritatis omnis quidem. Tempora ex et tempore quia eos. Et est quis dolores sit et.', 10, 100, 90, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(28, 4, 'Prof.', 54, 'Iure qui hic esse pariatur est ut. Impedit rem laudantium non placeat nulla. Magnam ducimus est molestias quia molestiae qui.', 2, 303, 31, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(29, 4, 'Mr.', 7, 'Quia dolores sit vel consequatur qui sapiente nihil. Et expedita aut et fugiat tenetur. Et rerum et optio et atque sint et. Maiores ratione officiis autem sit qui nobis quae iste. Nisi at dolorum odio voluptatem quisquam et.', 3, 873, 16, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(30, 5, 'Mr.', 37, 'Commodi impedit doloribus quam recusandae. Asperiores et consequatur veniam. Omnis mollitia odio qui voluptas alias in.', 9, 990, 100, '2017-05-26 20:14:43', '2017-05-26 20:14:43'),
(31, 1, 'Dr.', 9, 'Beatae vel quibusdam eveniet dolore illo. Sunt dolorem molestiae ex ut sed. In assumenda minus exercitationem ut beatae sapiente placeat. Eveniet quibusdam doloribus voluptatem nobis.', 10, 242, 22, '2017-05-26 20:14:43', '2017-05-26 20:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_voucher` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `status`, `user_id`, `name`, `email`, `amount`, `payment_type`, `message`, `code_voucher`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Admin', 'admin@gmail.com', 10, 'pay via card', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'rand(1, 9999)', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$yy75KhpFKBIRFfJquhtCEeMxpaWYvIsHKwC/VE4gAr91TzYchQk4C', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

--
-- Indexes for table `favorite_products`
--
ALTER TABLE `favorite_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorite_products_user_id_foreign` (`user_id`),
  ADD KEY `favorite_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `favorite_products`
--
ALTER TABLE `favorite_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorite_products`
--
ALTER TABLE `favorite_products`
  ADD CONSTRAINT `favorite_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
