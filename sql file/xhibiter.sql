-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 06:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xhibiter`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_counts`
--

CREATE TABLE `about_counts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `founded` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `founded_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trading_volume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trading_volume_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nft_created` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nft_created_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_users` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_users_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_counts`
--

INSERT INTO `about_counts` (`id`, `title`, `founded`, `founded_value`, `trading_volume`, `trading_volume_value`, `nft_created`, `nft_created_value`, `total_users`, `total_users_value`, `created_at`, `updated_at`) VALUES
(1, 'Numbers Speak', 'Founded', '2019', 'Trading volume', '$178M', 'NFTs Created', '305K', 'Total Users', '1.6M', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `about_headers`
--

CREATE TABLE `about_headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_headers`
--

INSERT INTO `about_headers` (`id`, `title`, `meta_title`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'About Xhibiter', 'Every digital creation available through MakersPlace is an authentic and truly unique digital creation, signed and issued by the creator — made possible by blockchain technology.', 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn1_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn1_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn2_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn2_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `sub_title`, `btn1_text`, `btn1_url`, `btn2_text`, `btn2_url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Buy, sell and collect NFTs.', 'The worlds largest digital marketplace for crypto collectibles and non-fungible tokens', 'Upload', 'create', 'Explore', 'explore_collections', 'default.jpg', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_discord` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `user_id`, `title`, `slug`, `subtitle`, `author_name`, `author_image`, `main_image`, `image1`, `image2`, `quote`, `quote_name`, `description`, `author_comment`, `author_facebook`, `author_twitter`, `author_discord`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'List your collection for secondary sales', 'list-your-collection-for-secondary-sales', 'A Picture is Worth a Thousand Words', 'author1', NULL, 'main_image.jpg', 'image1.jpg', 'image2.jpg', 'Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis.', 'Vincent De Paul', 'Since we launched Tezos at the end of 2021, many awesome creator. From a barely understood    abbreviation (hello, right click savers!), it turned into a massive cultural phenomenon adopted by blue chip companies like Adidas and Twitter in a few short months.\r\n                                Just like the NFT space has grown, so has Rarible.com. What started with a few people in a café grew into a passionate team of over 100, and counting!\r\n                                And that team has been busy. In 2021, weve shipped more features than ever before, scaled to a multi-chain platform with Flow and Tezos integrations, and watched our community soar on every social media channel.\r\n                                And of course, we could not have done it without you! You are creating Rarible day by day - by using the platform, requesting features, sharing your feedback, being as active and passionate as you are.', 'Aenean commodo ligula eget dolor. Aenean massa. Cum sociis Theme natoque penatibus et magnis dis parturient montes.', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.discord.com', '2022-05-20 22:28:42', '2022-08-07 22:28:42'),
(2, 2, 1, 'Mint your own Tezos collections', 'mint-your-own-Tezos-collections', 'Since we launched Tezos at the end of 2021, many awesome creators.', 'author2', NULL, 'main_image1.jpg', 'image1.jpg', 'image2.jpg', 'Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis.', 'Vincent De Paul', 'Since we launched Tezos at the end of 2021, many awesome creator. From a barely understood    abbreviation (hello, right click savers!), it turned into a massive cultural phenomenon adopted by blue chip companies like Adidas and Twitter in a few short months.\r\n                                Just like the NFT space has grown, so has Rarible.com. What started with a few people in a café grew into a passionate team of over 100, and counting!\r\n                                And that team has been busy. In 2021, weve shipped more features than ever before, scaled to a multi-chain platform with Flow and Tezos integrations, and watched our community soar on every social media channel.\r\n                                And of course, we could not have done it without you! You are creating Rarible day by day - by using the platform, requesting features, sharing your feedback, being as active and passionate as you are.', 'Aenean commodo ligula eget dolor. Aenean massa. Cum sociis Theme natoque penatibus et magnis dis parturient montes.', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.discord.com', '2022-04-20 22:28:42', '2022-08-07 22:28:42'),
(3, 2, 1, 'List your collection for secondary sales', 'a-picture-is-worth-a-thousand-ords', 'A Picture is Worth a Thousand Words', 'author2', NULL, 'main_image2.jpg', 'image1.jpg', 'image2.jpg', 'Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis.', 'Vincent De Paul', 'Since we launched Tezos at the end of 2021, many awesome creator. From a barely understood    abbreviation (hello, right click savers!), it turned into a massive cultural phenomenon adopted by blue chip companies like Adidas and Twitter in a few short months.\r\n                                Just like the NFT space has grown, so has Rarible.com. What started with a few people in a café grew into a passionate team of over 100, and counting!\r\n                                And that team has been busy. In 2021, weve shipped more features than ever before, scaled to a multi-chain platform with Flow and Tezos integrations, and watched our community soar on every social media channel.\r\n                                And of course, we could not have done it without you! You are creating Rarible day by day - by using the platform, requesting features, sharing your feedback, being as active and passionate as you are.', 'Aenean commodo ligula eget dolor. Aenean massa. Cum sociis Theme natoque penatibus et magnis dis parturient montes.', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.discord.com', '2022-01-20 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'NFT', '2022-08-07 22:28:41', '2022-08-07 22:28:41'),
(2, 'Cryptocurrency', '2022-08-07 22:28:41', '2022-08-07 22:28:41'),
(3, 'Technology', '2022-08-07 22:28:41', '2022-08-07 22:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Man', '2022-08-07 22:28:41', '2022-08-07 22:28:41'),
(2, 'Women', '2022-08-07 22:28:41', '2022-08-07 22:28:41'),
(3, 'Electronics', '2022-08-07 22:28:41', '2022-08-07 22:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `color_settings`
--

CREATE TABLE `color_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_addresses`
--

CREATE TABLE `contact_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_addresses`
--

INSERT INTO `contact_addresses` (`id`, `phone_title`, `phone_icon`, `phone`, `address_title`, `address_icon`, `address`, `email_title`, `email_icon`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Phone', '<i class=\"fa-solid fa-phone-missed\"></i>', '(123) 123-456', 'Address', '<i class=\"fa-solid fa-location-dot\"></i>', '08 W 36th St, New YorkNY 10001', 'Email', '<i class=\"fa-solid fa-circle-envelope\"></i>', 'office@xhibiter.com', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `contact_titles`
--

CREATE TABLE `contact_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_titles`
--

INSERT INTO `contact_titles` (`id`, `title`, `image`, `form_title`, `form_meta_title`, `address_title`, `address_meta_title`, `created_at`, `updated_at`) VALUES
(1, 'Get in touch', 'default.jpg', 'Contact Us', 'Have a question? Need help? Don\'t hesitate, drop us a line', 'Information', 'Don\'t hesitaste, drop us a line Collaboratively administrate channels whereas virtual. Objectively seize scalable metrics whereas proactive e-services.', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f_a_q_s`
--

CREATE TABLE `f_a_q_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_a_q_s`
--

INSERT INTO `f_a_q_s` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'How do I create an NFT?', 'Learn how to create your very first NFT and how to create your NFT collections. Unique, fully 3D and\r\n            built to unite the design multiverse. Designed and styled by Digimental.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(2, 'How can I stay safe and protect my NFTs ?', 'Learn how to create your very first NFT and how to create your NFT collections. Unique, fully 3D and\r\n            built to unite the design multiverse. Designed and styled by Digimental.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(3, 'What are the key terms to know in NFTs and Web3 ?', 'Learn how to create your very first NFT and how to create your NFT collections. Unique, fully 3D and\r\n            built to unite the design multiverse. Designed and styled by Digimental.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(4, 'How do I sell an NFT ?', 'Learn how to create your very first NFT and how to create your NFT collections. Unique, fully 3D and\r\n            built to unite the design multiverse. Designed and styled by Digimental.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(5, 'Smart Contract Upgrade: What You Need to Know', 'Learn how to create your very first NFT and how to create your NFT collections. Unique, fully 3D and\r\n            built to unite the design multiverse. Designed and styled by Digimental.', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_dark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_designer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designer_route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `logo`, `logo_dark`, `favicon`, `app_title`, `footer_description`, `site_designer`, `designer_route`, `created_at`, `updated_at`) VALUES
(1, 'logo.png', 'logo_dark.png', 'favicon.ico', 'Xhibiter', 'Create, sell and collect truly rare digital artworks. Powered by blockchain technology.', 'DeoThemes', 'https://deothemes.com', '2022-08-07 22:28:41', '2022-08-07 22:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guest_user_messages`
--

CREATE TABLE `guest_user_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_centers`
--

CREATE TABLE `help_centers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `help_centers`
--

INSERT INTO `help_centers` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Started', 'Learn how to create an account, set up your wallet, and what you can do.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(2, 'Buying', 'Learn how to create an account, set up your wallet, and what you can do.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(3, 'Selling', 'Learn how to create an account, set up your wallet, and what you can do.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(4, 'Creating', 'Learn how to create an account, set up your wallet, and what you can do.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(5, 'User Safety', 'Learn how to create an account, set up your wallet, and what you can do.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(6, 'Partner', 'Learn how to create an account, set up your wallet, and what you can do.', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `help_center_titles`
--

CREATE TABLE `help_center_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `help_center_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `help_center_titles`
--

INSERT INTO `help_center_titles` (`id`, `help_center_title`, `bg_image`, `category_title`, `faq_title`, `faq_meta_title`, `created_at`, `updated_at`) VALUES
(1, 'How can I help you?', 'default.jpg', 'Or browse categories', 'Frequently asked questions', 'Join our community now to get free updates and also alot of freebies are waiting for you or', '2022-08-07 22:28:41', '2022-08-07 22:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `home_titles`
--

CREATE TABLE `home_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `collection_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_titles`
--

INSERT INTO `home_titles` (`id`, `collection_title`, `category_title`, `module_title`, `created_at`, `updated_at`) VALUES
(1, 'Top Collections over', 'Trending Categories', 'Create and Sell your NFTs', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `creator_loyalty` double(8,2) DEFAULT NULL,
  `buy_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `blockchain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `category_id`, `name`, `slug`, `image`, `description`, `price`, `quantity`, `creator_id`, `creator_loyalty`, `buy_button_text`, `view_button_text`, `expire_date`, `blockchain`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Flourishing Cat #180', 'flourishing-cat-180-1', 'item_1.jpg', 'Neque aut veniam consectetur magnam libero, natus eius numquam reprehenderit hic at, excepturi repudiandae magni optio odio doloribus? Facilisi lobortisal morbi fringilla urna amet sed ipsum.', 8.49, 1, 3, 10.00, 'Buy now', 'View Details', '2022-09-07', 'Ethereum', 'hide', '2022-07-20 22:28:42', '2022-08-07 22:28:42'),
(2, 2, 'Amazing NFT art', 'amazing-n-f-t-art2', 'item_2.jpg', 'Neque aut veniam consectetur magnam libero, natus eius numquam reprehenderit hic at, excepturi repudiandae magni optio odio doloribus? Facilisi lobortisal morbi fringilla urna amet sed ipsum.', 3.11, 2, 1, 10.00, 'Buy now', 'View Details', '2022-09-07', 'Ethereum', 'show', '2022-05-20 22:28:42', '2022-08-07 22:28:42'),
(3, 3, 'SwagFox#133', 'swag-fox-133-3', 'item_3.jpg', 'Neque aut veniam consectetur magnam libero, natus eius numquam reprehenderit hic at, excepturi repudiandae magni optio odio doloribus? Facilisi lobortisal morbi fringilla urna amet sed ipsum.', 8.49, 1, 2, 10.00, 'Buy now', 'View Details', '2022-09-07', 'Ethereum', 'hide', '2022-03-20 22:28:42', '2022-08-07 22:28:42'),
(4, 4, 'Splendid Girl', 'splendid-girl-4', 'item_4.jpg', 'Neque aut veniam consectetur magnam libero, natus eius numquam reprehenderit hic at, excepturi repudiandae magni optio odio doloribus? Facilisi lobortisal morbi fringilla urna amet sed ipsum.', 8.49, 12, 1, 10.00, 'Buy now', 'View Details', '2022-09-07', 'Ethereum', 'show', '2022-06-20 22:28:42', '2022-08-07 22:28:42'),
(5, 1, 'Monkeyme#155', 'monkeyme-155-5', 'item_5.jpg', 'Neque aut veniam consectetur magnam libero, natus eius numquam reprehenderit hic at, excepturi repudiandae magni optio odio doloribus? Facilisi lobortisal morbi fringilla urna amet sed ipsum.', 8.49, 1, 2, 10.00, 'Buy now', 'View Details', '2022-09-07', 'Ethereum', 'hide', '2022-06-20 22:28:42', '2022-08-07 22:28:42'),
(6, 2, 'Jedidia#149', 'jedidia-149-6', 'item_6.jpg', 'Neque aut veniam consectetur magnam libero, natus eius numquam reprehenderit hic at, excepturi repudiandae magni optio odio doloribus? Facilisi lobortisal morbi fringilla urna amet sed ipsum.', 8.49, 1, 1, 10.00, 'Buy now', 'View Details', '2022-09-07', 'Ethereum', 'show', '2022-04-20 22:28:42', '2022-08-07 22:28:42'),
(7, 3, 'Artof Eve', 'artof-eve-7', 'item_7.jpg', 'Neque aut veniam consectetur magnam libero, natus eius numquam reprehenderit hic at, excepturi repudiandae magni optio odio doloribus? Facilisi lobortisal morbi fringilla urna amet sed ipsum.', 8.49, 1, 2, 10.00, 'Buy now', 'View Details', '2022-09-07', 'Ethereum', 'hide', '2022-02-20 22:28:42', '2022-08-07 22:28:42'),
(8, 4, 'Asuna #1649', 'asuna-1649-8', 'item_8.jpg', 'Neque aut veniam consectetur magnam libero, natus eius numquam reprehenderit hic at, excepturi repudiandae magni optio odio doloribus? Facilisi lobortisal morbi fringilla urna amet sed ipsum.', 8.49, 1, 1, 10.00, 'Buy now', 'View Details', '2022-09-07', 'Ethereum', 'show', '2022-04-20 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `item_problems`
--

CREATE TABLE `item_problems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `problem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_properties`
--

CREATE TABLE `item_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trait` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_reports`
--

CREATE TABLE `item_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `problem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_reports`
--

INSERT INTO `item_reports` (`id`, `problem`, `created_at`, `updated_at`) VALUES
(1, 'Fake Collection or possible scam', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(2, 'Explicit and sensitive content', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(3, 'Spam', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(4, 'In the wrong category', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `item_id`, `like_count`, `created_at`, `updated_at`) VALUES
(3, 1, 2, 1, '2022-08-07 22:33:59', '2022-08-07 22:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `like_collections`
--

CREATE TABLE `like_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `collection_id` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `like_users`
--

CREATE TABLE `like_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_sign_up_pages`
--

CREATE TABLE `login_sign_up_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_sub_title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_sign_up_pages`
--

INSERT INTO `login_sign_up_pages` (`id`, `logo`, `banner_image`, `login_title`, `login_sub_title`, `created_at`, `updated_at`) VALUES
(1, 'logo_white.png', 'login.jpg', 'Stay Connected', 'Choose one of available wallet providers or create a new wallet.', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_10_28_084707_create_sessions_table', 1),
(7, '2021_10_28_112930_create_general_settings_table', 1),
(8, '2021_10_28_125049_create_color_settings_table', 1),
(9, '2021_10_28_141410_create_socialurls_table', 1),
(10, '2021_10_28_153344_create_contacts_table', 1),
(11, '2021_10_29_111104_create_theme_settings_table', 1),
(12, '2021_10_29_121341_create_visits_table', 1),
(13, '2022_06_18_123337_create_spaties_table', 1),
(14, '2022_06_18_134617_create_permission_tables', 1),
(15, '2022_06_19_173435_create_categories_table', 1),
(16, '2022_06_19_211915_create_products_table', 1),
(17, '2022_06_24_141921_create_help_centers_table', 1),
(18, '2022_06_24_151536_create_f_a_q_s_table', 1),
(19, '2022_06_25_093157_create_help_center_titles_table', 1),
(20, '2022_06_25_112217_create_blog_categories_table', 1),
(21, '2022_06_27_065148_create_blogs_table', 1),
(22, '2022_06_28_110721_create_newsletters_table', 1),
(23, '2022_06_28_120636_create_subscribes_table', 1),
(24, '2022_06_29_101240_create_term_services_table', 1),
(25, '2022_06_29_102505_create_banners_table', 1),
(26, '2022_06_29_124138_create_nft_modules_table', 1),
(27, '2022_06_29_124218_create_n_f_t_categories_table', 1),
(28, '2022_06_29_144354_create_home_titles_table', 1),
(29, '2022_06_30_071602_create_partner_titles_table', 1),
(30, '2022_06_30_081606_create_partner_top_sections_table', 1),
(31, '2022_06_30_090645_create_partner_services_table', 1),
(32, '2022_06_30_154338_create_items_table', 1),
(33, '2022_07_01_125450_create_partner_reviews_table', 1),
(34, '2022_07_01_153503_create_place_bids_table', 1),
(35, '2022_07_01_160547_create_partner_sign_ups_table', 1),
(36, '2022_07_01_164811_create_partner_brand_images_table', 1),
(37, '2022_07_02_120004_create_about_headers_table', 1),
(38, '2022_07_02_124153_create_about_counts_table', 1),
(39, '2022_07_02_132251_create_team_banners_table', 1),
(40, '2022_07_02_152805_create_teams_table', 1),
(41, '2022_07_02_211725_create_contact_titles_table', 1),
(42, '2022_07_04_063901_create_contact_addresses_table', 1),
(43, '2022_07_04_084947_create_guest_user_messages_table', 1),
(44, '2022_07_05_102512_create_guests_table', 1),
(45, '2022_07_06_080113_create_wallet_banners_table', 1),
(46, '2022_07_06_083935_create_wallet_services_table', 1),
(47, '2022_07_13_154737_create_likes_table', 1),
(48, '2022_07_18_063712_create_item_reports_table', 1),
(49, '2022_07_18_092741_create_item_problems_table', 1),
(50, '2022_07_19_103946_create_item_properties_table', 1),
(51, '2022_07_19_145950_create_platform_titles_table', 1),
(52, '2022_07_21_134745_create_like_collections_table', 1),
(53, '2022_07_21_134946_create_like_users_table', 1),
(54, '2022_07_22_140838_create_login_sign_up_pages_table', 1),
(55, '2022_07_23_075315_create_report_users_table', 1),
(56, '2022_07_23_094700_create_report_categories_table', 1),
(57, '2022_07_25_190953_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `title`, `meta_title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Sign up for The Tide, Xhibiter newsletter!', 'Join our mailing list to stay in the loop with our newest feature releases, NFT drops, and tips and tricks for navigating Xhibiter', 'newsletter.jpg', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `nft_modules`
--

CREATE TABLE `nft_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nft_modules`
--

INSERT INTO `nft_modules` (`id`, `icon`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, '<i class=\"fa-brands fa-amazon-pay\"></i>', 'Set up your wallet', 'Once you\'ve set up your wallet of choice, connect it to OpenSeaby clicking the NFT Marketplacein the top right corner', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(2, '<i class=\"fa-brands fa-angular\"></i>', 'Create Your Collection', 'Click Create and set up your collection. Add social links, a description, profile & banner images, and set a secondary sales fee.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(3, '<i class=\"fa-brands fa-salesforce\"></i>', 'Add Your NFTs', 'Upload your work (image, video, audio, or 3D art), add a title and description, and customize your NFTs with properties, stats.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(4, '<i class=\"fa-brands fa-amazon-pay\"></i>', 'List Them For Sale', 'Choose between auctions, fixed-price listings, and declining-price listings. You choose how you want to sell your NFTs!', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `notify_to` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unseen',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `type`, `type_id`, `notify_to`, `message`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 'Like', 3, 1, 'Admin Likes Your Amazing NFT art Item', 'unseen', '2022-08-07 22:33:59', '2022-08-07 22:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `n_f_t_categories`
--

CREATE TABLE `n_f_t_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `n_f_t_categories`
--

INSERT INTO `n_f_t_categories` (`id`, `icon`, `name`, `image`, `unique_id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<i class=\"fa-brands fa-accusoft\"></i>', 'Art', 'collection_banner.jpg', 'Art.0x7a86c0b064171007716bbd6af96676935799a63e', 'Unique, fully 3D and built to unite the design multiverse. Designed and styled by Digimental.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(2, '<i class=\"fa-solid fa-align-left\"></i>', 'Collectibles', 'collection_banner.jpg', 'Collectibles.0x7a86c0b064171007716bbd6af96676935799a63e', 'Unique, fully 3D and built to unite the design multiverse. Designed and styled by Digimental.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(3, '<i class=\"fa-brands fa-autoprefixer\"></i>', 'Domain', 'collection_banner.jpg', 'Domain.0x7a86c0b064171007716bbd6af96676935799a63e', 'Unique, fully 3D and built to unite the design multiverse. Designed and styled by Digimental.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(4, '<i class=\"fa-solid fa-music\"></i>', 'Music', 'collection_banner.jpg', 'Music.0x7a86c0b064171007716bbd6af96676935799a63e', 'Unique, fully 3D and built to unite the design multiverse. Designed and styled by Digimental.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(5, '<i class=\"fa-solid fa-camera\"></i>', 'Photography', 'collection_banner.jpg', 'Photography.0x7a86c0b064171007716bbd6af96676935799a63e', 'Unique, fully 3D and built to unite the design multiverse. Designed and styled by Digimental.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(6, '<i class=\"fa-solid fa-globe\"></i>', 'Virtual World', 'collection_banner.jpg', 'Virtual.0x7a86c0b064171007716bbd6af96676935799a63e', 'Unique, fully 3D and built to unite the design multiverse. Designed and styled by Digimental.', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `partner_brand_images`
--

CREATE TABLE `partner_brand_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_brand_images`
--

INSERT INTO `partner_brand_images` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'image1.png', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(2, 'image2.png', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(3, 'image3.png', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(4, 'image4.png', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(5, 'image5.png', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `partner_reviews`
--

CREATE TABLE `partner_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_reviews`
--

INSERT INTO `partner_reviews` (`id`, `comment`, `name`, `designation`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Xhibiter is one of the most exciting, important companies in the world right now because it\'s the portal to the new digital economy. If you\'re interested in shaping a new business model for creators, this is the team to join.', 'Katie Smith', 'General Partner at Entrepreneur', 'partnerImage.jpg', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(2, 'Xhibiter is one of the most exciting, important companies in the world right now because it\'s the portal to the new digital economy. If you\'re interested in shaping a new business model for creators, this is the team to join.', 'Mr X', 'General Partner at Entrepreneur', 'partnerImage1.jpg', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(3, 'Xhibiter is one of the most exciting, important companies in the world right now because it\'s the portal to the new digital economy. If you\'re interested in shaping a new business model for creators, this is the team to join.', 'Mr Y', 'General Partner at Entrepreneur', 'partnerImage2.jpg', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `partner_services`
--

CREATE TABLE `partner_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_services`
--

INSERT INTO `partner_services` (`id`, `icon`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, '<i class=\"fa-solid fa-sack-dollar\"></i>', 'Generate Revanue', 'With millions in transactions since 2017, we\'ll help you generate revenue on our platform ⁠— from direct sales to secondary sales', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(2, '<i class=\"fa-solid fa-people-group\"></i>', 'Reach Millions', 'With over thousands of users and followers, we can help you reach a large audience of collectors', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(3, '<i class=\"fa-solid fa-wallet\"></i>', 'Spend Less', 'Compared with other NFT marketplaces, we have lowest fees in the space allowing you to spend less with your created collection', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(4, '<i class=\"fa-solid fa-store\"></i>', 'Gas-free Marketplace', 'With our multiple blockchains support, create, buy, and sell NFTs without paying any gas fee', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(5, '<i class=\"fa-solid fa-fire\"></i>', 'Advertise Xhibiter', 'With the most powerful way for users to buy and sell NFTS, we offer the most advanced features', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(6, '<i class=\"fa-solid fa-hand-holding-hand\"></i>', 'Earn 20% Commission Per Sale!', 'With over thousands of collections, we are proud to host the widest range of categories, ranging from digital to physical NFTs', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `partner_sign_ups`
--

CREATE TABLE `partner_sign_ups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_sign_ups`
--

INSERT INTO `partner_sign_ups` (`id`, `title`, `meta_title`, `btn_text`, `btn_url`, `created_at`, `updated_at`) VALUES
(1, 'Interested In Becoming An Affiliate Partner?', 'Join our mailing list to stay in the loop with our newest feature releases, NFT drops, and tips and tricks for navigating Xhibiter', 'Sign Up Now', '#', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `partner_titles`
--

CREATE TABLE `partner_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description3` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_titles`
--

INSERT INTO `partner_titles` (`id`, `title1`, `description1`, `title2`, `description2`, `title3`, `description3`, `created_at`, `updated_at`) VALUES
(1, 'Xhibiter Affiliate Partnership', 'Interested in making money with Xhibiter? Earn A 20% Commission For Every Sale You Refer By Recommending The Most Powerful NFT marketplace. 305,000+ NFTs created Rated the best NFT Marketplace', 'How Our Affiliate Program Works', 'While we take pride in being the first and largest marketplace and in our robust feature set, we also help our partners succeed with the following...', 'Who has partnered with us', 'While we take pride in being the first and largest marketplace and in our robust feature set, we also help our partners succeed with the following...', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `partner_top_sections`
--

CREATE TABLE `partner_top_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_top_sections`
--

INSERT INTO `partner_top_sections` (`id`, `icon1`, `text1`, `icon2`, `text2`, `icon3`, `text3`, `created_at`, `updated_at`) VALUES
(1, '<i class=\"fa-solid fa-code\"></i>', ' NFTs created', '<i class=\"fa-solid fa-star-shooting\"></i>', 'Rated the best NFT Marketplace', '<i class=\"fa-solid fa-face-smile\"></i>', '+ Happy NFT Users', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `place_bids`
--

CREATE TABLE `place_bids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bid_amount` double(8,2) DEFAULT NULL,
  `check` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `platform_titles`
--

CREATE TABLE `platform_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `history_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `platform_titles`
--

INSERT INTO `platform_titles` (`id`, `title`, `image`, `operation_title`, `history_title`, `created_at`, `updated_at`) VALUES
(1, 'Xhibiter System Status', 'banner.jpg', 'All Systems Operational', 'Past Incidents', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `quantity`, `image`, `created_at`, `updated_at`) VALUES
(1, '1', 't-shirt', '580', '50', 'shirt.jpg', '2022-08-07 22:28:41', '2022-08-07 22:28:41'),
(2, '2', 'sari', '1490', '50', 'sari.jpg', '2022-08-07 22:28:41', '2022-08-07 22:28:41'),
(3, '3', 'laptop', '33490', '50', 'laptop.jpg', '2022-08-07 22:28:41', '2022-08-07 22:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `report_categories`
--

CREATE TABLE `report_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `report_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_users`
--

CREATE TABLE `report_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `report_by` int(11) DEFAULT NULL,
  `report_to` int(11) DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fkF5BRUbepJiX2Q9fizGpg3YP88RzXMwHqC4pYfQ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoick1id3MxanRKa1hKVHBnTzdFd0s3dGx6eVhRaGdHeUxoOUQ5eVFZRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pdGVtL2RldGFpbHMvYW1hemluZy1uLWYtdC1hcnQyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJENkdXlCa1NrV1Q4QlE5MjJrSzJqRmV3SWNCekR4b2VNT1NkNjBKeXI5SjZNVjBvUkZHYmM2IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRDZHV5QmtTa1dUOEJROTIya0syakZld0ljQnpEeG9lTU9TZDYwSnlyOUo2TVYwb1JGR2JjNiI7czo2OiJsb2NhbGUiO3M6MjoiZnIiO30=', 1659933239);

-- --------------------------------------------------------

--
-- Table structure for table `shetabit_visits`
--

CREATE TABLE `shetabit_visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `languages` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headers` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socialurls`
--

CREATE TABLE `socialurls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fb_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `youtube_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialurls`
--

INSERT INTO `socialurls` (`id`, `fb_url`, `instagram_url`, `youtube_url`, `twitter_url`, `linkedin_url`, `created_at`, `updated_at`) VALUES
(1, '#', '#', '#', '#', '#', '2022-08-07 22:28:41', '2022-08-07 22:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `spaties`
--

CREATE TABLE `spaties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '2022-08-07 22:33:38', '2022-08-07 22:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `image`, `name`, `designation`, `linkedin_url`, `facebook_url`, `twitter_url`, `created_at`, `updated_at`) VALUES
(1, 'team_1.jpg', 'Alex Grey', 'CEO, Director', '#', '#', '#', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(2, 'team_2.jpg', 'Ashton Kutsher', 'Entrepreneur & Author', '#', '#', '#', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(3, 'team_3.jpg', 'John Ferris', 'Developer & Investor', '#', '#', '#', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(4, 'team_4.jpg', 'Belinda Bing', 'Former COO Shopee', '#', '#', '#', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(5, 'team_5.jpg', 'Camille Alforque', 'Chief Creative officer', '#', '#', '#', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(6, 'team_6.jpg', 'Nathaniel Ragpa', 'Front-end Developer', '#', '#', '#', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(7, 'team_7.jpg', 'Linda Brown', 'Marketing Officer', '#', '#', '#', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(8, 'team_8.jpg', 'Gavin Silberman', 'Designer & Investor', '#', '#', '#', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(9, 'team_9.jpg', 'Masha Smith', 'VP Communications', '#', '#', '#', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `team_banners`
--

CREATE TABLE `team_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `launch_product_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `launch_product_text_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satisfaction_rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satisfaction_rate_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_banners`
--

INSERT INTO `team_banners` (`id`, `title`, `meta_title`, `description`, `launch_product_text`, `launch_product_text_value`, `satisfaction_rate`, `satisfaction_rate_value`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Get Experience. We\'re A Results Driven Team.', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam', 'Every digital creation available through MakersPlace is an authentic and truly unique digital creation, signed and issued by the creator — made possible by blockchain technology. Even if the digital creation is copied, it won\'t be the authentic and originally signed version.', 'Products launched', '11.2k', 'Satisfaction Rate', '99.7%', 'default.jpg', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `term_services`
--

CREATE TABLE `term_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `term_services`
--

INSERT INTO `term_services` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Introduction', 'These Terms of Service (“Terms”) govern your access to and use of the Xhibiter website(s), our APIs, mobile app (the “App”), and any other software, tools, features, or functionalities provided on or in connection with our services; including without limitation using our services to view, explore, and create NFTs and use our tools, at your own discretion, to connect directly with others to purchase, sell, or transfer NFTs on public blockchains (collectively, the “Service”). “NFT” in these Terms means a non-fungible token or similar digital item implemented on a blockchain (such as the Ethereum blockchain), which uses smart contracts to link to or otherwise be associated with certain content or data. For purposes of these Terms, “user”, “you”, and “your” means you as the user of the Service. If you use the Service on behalf of a company or other entity then “you” includes you and that entity, and you represent and warrant that (a) you are an authorized representative of the entity with the authority to bind the entity to these Terms, and (b) you agree to these Terms on the entity\'s behalf.\r\n\r\n            PLEASE READ THESE TERMS OF SERVICE CAREFULLY AS THEY CONTAIN IMPORTANT INFORMATION AND AFFECT YOUR LEGAL RIGHTS. AS OUTLINED IN SECTION 16 BELOW, THEY INCLUDE A MANDATORY ARBITRATION AGREEMENT AND CLASS ACTION WAIVER WHICH (WITH LIMITED EXCEPTIONS) REQUIRE ANY DISPUTES BETWEEN US TO BE RESOLVED THROUGH INDIVIDUAL ARBITRATION RATHER THAN BY A JUDGE OR JURY IN COURT.\r\n\r\n            BY CLICKING TO ACCEPT AND/OR USING OUR SERVICE, YOU AGREE TO BE BOUND BY THESE TERMS AND ALL OF THE TERMS INCORPORATED HEREIN BY REFERENCE. IF YOU DO NOT AGREE TO THESE TERMS, YOU MAY NOT ACCESS OR USE THE SERVICE.\r\n\r\n            Xhibiter is not a wallet provider, exchange, broker, financial institution, or creditor. Xhibiter provides a peer-to-peer web3 service that helps users discover and directly interact with each other and NFTs available on public blockchains. We do not have custody or control over the NFTs or blockchains you are interacting with and we do not execute or effectuate purchases, transfers, or sales of NFTs. To use our Service, you must use a third-party wallet which allows you to engage in transactions on blockchains.\r\n\r\n            Because we have a growing number of services, we sometimes need to provide additional terms for specific services (and such services are deemed part of the “Service” hereunder and shall also be subject to these Terms). Those additional terms and conditions, which are available with the relevant service, then become part of your agreement with us if you use those services. In the event of a conflict between these Terms and any additional applicable terms we may provide for a specific service, such additional terms shall control for that specific service.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(2, 'Ownership', 'The Service, including its “look and feel” (e.g., text, graphics, images, logos, page headers, button icons, and scripts), proprietary content, information and other materials, and all content and other materials contained therein, including, without limitation, the Xhibiter logo and all designs, text, graphics, pictures, data, software, sound files, other files, and the selection and arrangement thereof are the proprietary property of Xhibiter or our affiliates, licensors, or users, as applicable, and you agree not to take any action(s) inconsistent with such ownership interests. We and our affiliates, licensors, and users, as applicable, reserve all rights in connection with the Service and its content, including, without limitation, the exclusive right to create derivative works.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(3, 'License to Access and Use Our Service and Content', 'You are hereby granted a limited, nonexclusive, nontransferable, nonsublicensable, and personal license to access and use the Service provided, however, that such license is subject to your compliance with these Terms. If any software, content, or other materials owned by, controlled by, or licensed to us are distributed or made available to you as part of your use of the Service, we hereby grant you a non-commercial, personal, non-assignable, non-sublicensable, non-transferrable, and non-exclusive right and license to access and display such software, content, and materials provided to you as part of the Service (and right to download a single copy of the App onto your applicable equipment or device), in each case for the sole purpose of enabling you to use the Service as permitted by these Terms, provided that your license in any content linked to or associated with any NFTs is solely as set forth by the applicable seller or creator of such NFT.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(4, 'Intellectual Property Rights', 'You are solely responsible for your use of the Service and for any information you provide, including compliance with applicable laws, rules, and regulations, as well as these Terms, including the User Conduct requirements outlined above.\r\n\r\n            By using the Service in conjunction with creating, submitting, posting, promoting, or displaying content, or by complying with OpenSea\'s metadata standards in your metadata API responses, you grant us a worldwide, non-exclusive, sublicensable, royalty-free license to use, copy, modify, and display any content, including but not limited to text, materials, images, files, communications, comments, feedback, suggestions, ideas, concepts, questions, data, or otherwise, that you submit or post on or through the Service for our current and future business purposes, including to provide, promote, and improve the Service. This includes any digital file, art, or other material linked to or associated with any NFTs that are displayed on the Service.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(5, 'Miscellaneous', 'These Terms constitute the entire agreement between you and Xhibiter relating to your access to and use of the Service. These Terms, and any rights and licenses granted hereunder, may not be transferred or assigned by you without the prior written consent of Xhibiter, and Xhibiter’s failure to assert any right or provision under these Terms shall not constitute a waiver of such right or provision. No waiver by either party of any breach or default hereunder shall be deemed to be a waiver of any preceding or subsequent breach or default. The section headings used herein are for reference only and shall not be read to have any legal effect.\r\n\r\n            The Service is operated by us in the United States. Those who choose to access the Service from locations outside the United States do so at their own initiative and are responsible for compliance with applicable local laws. You and Xhibiter agree that the United Nations Convention on Contracts for the International Sale of Goods will not apply to the interpretation or construction of these Terms.\r\n\r\n            Except as otherwise provided herein, these Terms are intended solely for the benefit of the parties and are not intended to confer third-party beneficiary rights upon any other person or entity.', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `theme_settings`
--

CREATE TABLE `theme_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light-layout',
  `nav` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'expanded',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theme_settings`
--

INSERT INTO `theme_settings` (`id`, `user_id`, `theme`, `nav`, `created_at`, `updated_at`) VALUES
(1, 1, 'light-layout', 'expanded', '2022-08-07 22:28:41', '2022-08-07 22:31:26'),
(2, 2, 'light-layout', 'expanded', '2022-08-07 22:28:41', '2022-08-07 22:28:41'),
(3, 3, 'light-layout', 'expanded', '2022-08-07 22:28:41', '2022-08-07 22:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2 COMMENT '1=admin, 2=user',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'profilePhoto.gif',
  `cover_photo_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'coverPhoto.jpg',
  `wallet_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `username`, `slug`, `bio`, `email`, `twitter_link`, `instagram_link`, `youtube_link`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `cover_photo_path`, `wallet_address`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, 'Admin', 'i-make-art-with-the-simple-goal-1', 'I make art with the simple goal of giving you something pleasing to look at for a few seconds.', 'admin@admin.com', NULL, NULL, NULL, NULL, '$2y$10$CduyBkSkWT8BQ922kK2jFewIcBzDxoeMOSd60Jyr9J6MV0oRFGbc6', NULL, NULL, NULL, NULL, 'profilePhoto.gif', 'coverPhoto.jpg', 'Demo1', '2022-08-07 22:28:41', '2022-08-07 22:28:41'),
(2, 'Creator', 2, '051_Creator', 'i-make-art-with-the-simple-goal-2', 'I make art with the simple goal of giving you something pleasing to look at for a few seconds.', 'creator@creator.com', NULL, NULL, NULL, NULL, '$2y$10$APhjcIabL2ijL4pKknvaE.u4S9HRaKAUCF/bITq2crGUvDYzjGB0O', NULL, NULL, NULL, NULL, 'profilePhoto.gif', 'coverPhoto.jpg', 'Demo2', '2022-08-07 22:28:41', '2022-08-07 22:28:41'),
(3, 'User', 2, '051_Owner', 'i-make-art-with-the-simple-goal-3', 'I make art with the simple goal of giving you something pleasing to look at for a few seconds.', 'user@user.com', NULL, NULL, NULL, NULL, '$2y$10$AULjPlQnhO63XFlKUIp5duliAbnoWCvdmGx2jTqsoKPeVyibsI0z2', NULL, NULL, NULL, NULL, 'profilePhoto.gif', 'coverPhoto.jpg', 'Demo3', '2022-08-07 22:28:41', '2022-08-07 22:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_banners`
--

CREATE TABLE `wallet_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_banners`
--

INSERT INTO `wallet_banners` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Connect your wallet', 'wallet_banner.jpg', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_services`
--

CREATE TABLE `wallet_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_services`
--

INSERT INTO `wallet_services` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'metamask.svg', 'Metamask', 'Start exploring blockchain applications in seconds. Trusted by over 1 million users worldwide.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(2, 'coinbase.svg', 'Coinbase', 'The easiest and most secure crypto wallet. ... No Coinbase account required.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(3, 'bitski.svg', 'Bitski', 'Bitski connects communities, creators and brands through unique, ownable digital content.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(4, 'fortmatic.svg', 'Fortmatic', 'Let users access your Ethereum app from anywhere. No more browser extensions.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(5, 'torus.svg', 'Torus', 'Open source protocol for connecting decentralised applications to mobile wallets.', '2022-08-07 22:28:42', '2022-08-07 22:28:42'),
(6, 'wallet_connect.svg', 'Walletconnect', 'Open source protocol for connecting decentralised applications to mobile wallets.', '2022-08-07 22:28:42', '2022-08-07 22:28:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_counts`
--
ALTER TABLE `about_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_headers`
--
ALTER TABLE `about_headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_settings`
--
ALTER TABLE `color_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_addresses`
--
ALTER TABLE `contact_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_titles`
--
ALTER TABLE `contact_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guests_email_unique` (`email`);

--
-- Indexes for table `guest_user_messages`
--
ALTER TABLE `guest_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_centers`
--
ALTER TABLE `help_centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_center_titles`
--
ALTER TABLE `help_center_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_titles`
--
ALTER TABLE `home_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_problems`
--
ALTER TABLE `item_problems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_properties`
--
ALTER TABLE `item_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_reports`
--
ALTER TABLE `item_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_collections`
--
ALTER TABLE `like_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_users`
--
ALTER TABLE `like_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_sign_up_pages`
--
ALTER TABLE `login_sign_up_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nft_modules`
--
ALTER TABLE `nft_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `n_f_t_categories`
--
ALTER TABLE `n_f_t_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner_brand_images`
--
ALTER TABLE `partner_brand_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner_reviews`
--
ALTER TABLE `partner_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner_services`
--
ALTER TABLE `partner_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner_sign_ups`
--
ALTER TABLE `partner_sign_ups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner_titles`
--
ALTER TABLE `partner_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner_top_sections`
--
ALTER TABLE `partner_top_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `place_bids`
--
ALTER TABLE `place_bids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platform_titles`
--
ALTER TABLE `platform_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_categories`
--
ALTER TABLE `report_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_users`
--
ALTER TABLE `report_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shetabit_visits`
--
ALTER TABLE `shetabit_visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shetabit_visits_visitable_type_visitable_id_index` (`visitable_type`,`visitable_id`),
  ADD KEY `shetabit_visits_visitor_type_visitor_id_index` (`visitor_type`,`visitor_id`);

--
-- Indexes for table `socialurls`
--
ALTER TABLE `socialurls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spaties`
--
ALTER TABLE `spaties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_banners`
--
ALTER TABLE `team_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term_services`
--
ALTER TABLE `term_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_settings`
--
ALTER TABLE `theme_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallet_banners`
--
ALTER TABLE `wallet_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_services`
--
ALTER TABLE `wallet_services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_counts`
--
ALTER TABLE `about_counts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_headers`
--
ALTER TABLE `about_headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `color_settings`
--
ALTER TABLE `color_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_addresses`
--
ALTER TABLE `contact_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_titles`
--
ALTER TABLE `contact_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guest_user_messages`
--
ALTER TABLE `guest_user_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_centers`
--
ALTER TABLE `help_centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `help_center_titles`
--
ALTER TABLE `help_center_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_titles`
--
ALTER TABLE `home_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `item_problems`
--
ALTER TABLE `item_problems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_properties`
--
ALTER TABLE `item_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_reports`
--
ALTER TABLE `item_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `like_collections`
--
ALTER TABLE `like_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `like_users`
--
ALTER TABLE `like_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_sign_up_pages`
--
ALTER TABLE `login_sign_up_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nft_modules`
--
ALTER TABLE `nft_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `n_f_t_categories`
--
ALTER TABLE `n_f_t_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `partner_brand_images`
--
ALTER TABLE `partner_brand_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `partner_reviews`
--
ALTER TABLE `partner_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `partner_services`
--
ALTER TABLE `partner_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `partner_sign_ups`
--
ALTER TABLE `partner_sign_ups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partner_titles`
--
ALTER TABLE `partner_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partner_top_sections`
--
ALTER TABLE `partner_top_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `place_bids`
--
ALTER TABLE `place_bids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `platform_titles`
--
ALTER TABLE `platform_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `report_categories`
--
ALTER TABLE `report_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_users`
--
ALTER TABLE `report_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shetabit_visits`
--
ALTER TABLE `shetabit_visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialurls`
--
ALTER TABLE `socialurls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spaties`
--
ALTER TABLE `spaties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `team_banners`
--
ALTER TABLE `team_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `term_services`
--
ALTER TABLE `term_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `theme_settings`
--
ALTER TABLE `theme_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wallet_banners`
--
ALTER TABLE `wallet_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallet_services`
--
ALTER TABLE `wallet_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
