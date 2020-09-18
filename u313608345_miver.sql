-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 18, 2020 at 09:08 AM
-- Server version: 10.3.23-MariaDB-cll-lve
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u313608345_miver`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_user_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_pass` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_contact` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_country` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_user_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`, `isS3`) VALUES
(1, 'admin', '', 'iamsewak@gmail.com', '$2y$10$EW4XNdkn9NonBsH12a8tI.2xSxLn2l1zxaz/1NoytZklsNuP.QmXa', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_logs`
--

CREATE TABLE `admin_logs` (
  `id` int(100) NOT NULL,
  `admin_id` int(100) NOT NULL,
  `work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_id` int(255) NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_logs`
--

INSERT INTO `admin_logs` (`id`, `admin_id`, `work`, `work_id`, `date`, `status`) VALUES
(1, 1, 'proposal', 2, 'August 02, 2020 18:33:25', 'approved'),
(2, 1, 'general_settings', 0, 'August 03, 2020 14:33:55', 'updated'),
(3, 1, 'proposal', 3, 'August 04, 2020 14:12:33', 'approved'),
(4, 1, 'proposal', 4, 'August 04, 2020 14:19:57', 'approved'),
(5, 1, 'proposal', 5, 'August 08, 2020 11:21:51', 'approved'),
(6, 1, 'term', 1, 'August 08, 2020 13:33:59', 'updated'),
(7, 1, 'post_cat', 1, 'August 16, 2020 07:08:55', 'updated'),
(8, 1, 'post', 1, 'August 16, 2020 07:14:21', 'inserted'),
(9, 1, 'post', 1, 'August 16, 2020 07:14:44', 'updated'),
(10, 1, 'seller_balance', 3, 'August 17, 2020 11:42:04', 'updated'),
(11, 1, 'language', 2, 'August 18, 2020 18:38:32', 'inserted'),
(12, 1, 'language_settings', 2, 'August 18, 2020 18:38:50', 'updated'),
(13, 1, 'language', 2, 'August 18, 2020 18:39:21', 'updated'),
(14, 1, 'seller_language', 4, 'August 19, 2020 10:38:17', 'inserted'),
(15, 1, 'request', 1, 'August 24, 2020 11:44:53', 'approved'),
(16, 1, 'proposal', 6, 'August 24, 2020 14:53:42', 'approved'),
(17, 1, 'proposal', 8, 'August 24, 2020 15:01:16', 'approved'),
(18, 1, 'proposal', 7, 'August 24, 2020 15:01:37', 'approved'),
(19, 1, 'proposal', 9, 'August 24, 2020 15:06:13', 'approved'),
(20, 1, 'language_settings', 2, 'August 24, 2020 15:12:05', 'updated'),
(21, 1, 'cat', 1, 'August 24, 2020 15:13:41', 'updated'),
(22, 1, 'language_settings', 2, 'August 24, 2020 16:07:57', 'updated'),
(23, 1, 'cat', 2, 'August 24, 2020 16:11:07', 'updated'),
(24, 1, 'cat', 3, 'August 24, 2020 16:11:48', 'updated'),
(25, 1, 'cat', 4, 'August 24, 2020 16:12:27', 'updated'),
(26, 1, 'cat', 6, 'August 24, 2020 16:13:05', 'updated'),
(27, 1, 'cat', 7, 'August 24, 2020 16:13:42', 'updated'),
(28, 1, 'cat', 8, 'August 24, 2020 16:14:43', 'updated'),
(29, 1, 'cat', 9, 'August 24, 2020 16:15:21', 'updated'),
(30, 1, 'child_cat', 94, 'August 24, 2020 16:17:03', 'updated'),
(31, 1, 'child_cat', 93, 'August 24, 2020 16:17:49', 'updated'),
(32, 1, 'child_cat', 92, 'August 24, 2020 16:18:19', 'updated'),
(33, 1, 'child_cat', 91, 'August 24, 2020 16:18:45', 'updated'),
(34, 1, 'child_cat', 89, 'August 24, 2020 16:19:07', 'updated'),
(35, 1, 'child_cat', 88, 'August 24, 2020 16:19:39', 'updated'),
(36, 1, 'child_cat', 87, 'August 24, 2020 16:20:00', 'updated'),
(37, 1, 'child_cat', 86, 'August 24, 2020 16:20:22', 'updated'),
(38, 1, 'child_cat', 85, 'August 24, 2020 16:20:44', 'updated'),
(39, 1, 'child_cat', 84, 'August 24, 2020 16:21:12', 'updated'),
(40, 1, 'child_cat', 83, 'August 24, 2020 16:23:02', 'updated'),
(41, 1, 'child_cat', 82, 'August 24, 2020 16:25:07', 'updated'),
(42, 1, 'child_cat', 81, 'August 24, 2020 16:26:46', 'updated'),
(43, 1, 'child_cat', 80, 'August 24, 2020 16:27:15', 'updated'),
(44, 1, 'child_cat', 79, 'August 24, 2020 16:27:45', 'updated'),
(45, 1, 'child_cat', 78, 'August 24, 2020 16:28:12', 'updated'),
(46, 1, 'child_cat', 77, 'August 24, 2020 16:28:39', 'updated'),
(47, 1, 'child_cat', 76, 'August 24, 2020 16:29:05', 'updated'),
(48, 1, 'child_cat', 75, 'August 24, 2020 16:29:27', 'updated'),
(49, 1, 'child_cat', 74, 'August 24, 2020 16:29:35', 'updated'),
(50, 1, 'child_cat', 73, 'August 24, 2020 16:30:19', 'updated'),
(51, 1, 'child_cat', 72, 'August 24, 2020 16:30:39', 'updated'),
(52, 1, 'child_cat', 71, 'August 24, 2020 16:31:05', 'updated'),
(53, 1, 'child_cat', 70, 'August 24, 2020 16:31:26', 'updated'),
(54, 1, 'child_cat', 69, 'August 24, 2020 16:31:49', 'updated'),
(55, 1, 'child_cat', 68, 'August 24, 2020 16:32:18', 'updated'),
(56, 1, 'child_cat', 67, 'August 24, 2020 16:32:33', 'updated'),
(57, 1, 'child_cat', 66, 'August 24, 2020 16:32:59', 'updated'),
(58, 1, 'child_cat', 65, 'August 24, 2020 16:33:23', 'updated'),
(59, 1, 'child_cat', 64, 'August 24, 2020 16:33:40', 'updated'),
(60, 1, 'child_cat', 63, 'August 24, 2020 16:35:30', 'updated'),
(61, 1, 'child_cat', 62, 'August 24, 2020 16:36:06', 'updated'),
(62, 1, 'child_cat', 61, 'August 24, 2020 16:36:32', 'updated'),
(63, 1, 'child_cat', 60, 'August 24, 2020 16:36:54', 'updated'),
(64, 1, 'child_cat', 58, 'August 24, 2020 16:37:17', 'updated'),
(65, 1, 'child_cat', 56, 'August 24, 2020 16:39:33', 'updated'),
(66, 1, 'child_cat', 55, 'August 24, 2020 16:40:09', 'updated'),
(67, 1, 'child_cat', 54, 'August 24, 2020 16:40:47', 'updated'),
(68, 1, 'child_cat', 53, 'August 24, 2020 16:41:50', 'updated'),
(69, 1, 'child_cat', 52, 'August 24, 2020 16:42:17', 'updated'),
(70, 1, 'child_cat', 51, 'August 24, 2020 16:48:11', 'updated'),
(71, 1, 'child_cat', 50, 'August 24, 2020 16:48:38', 'updated'),
(72, 1, 'child_cat', 49, 'August 24, 2020 16:49:04', 'updated'),
(73, 1, 'child_cat', 48, 'August 24, 2020 16:49:33', 'updated'),
(74, 1, 'child_cat', 46, 'August 24, 2020 16:49:55', 'updated'),
(75, 1, 'child_cat', 45, 'August 24, 2020 16:50:14', 'updated'),
(76, 1, 'child_cat', 44, 'August 24, 2020 16:50:35', 'updated'),
(77, 1, 'child_cat', 43, 'August 24, 2020 16:50:55', 'updated'),
(78, 1, 'child_cat', 42, 'August 24, 2020 16:51:21', 'updated'),
(79, 1, 'child_cat', 41, 'August 24, 2020 16:51:39', 'updated'),
(80, 1, 'child_cat', 40, 'August 24, 2020 16:55:18', 'updated'),
(81, 1, 'child_cat', 39, 'August 24, 2020 16:55:39', 'updated'),
(82, 1, 'child_cat', 38, 'August 24, 2020 16:56:24', 'updated'),
(83, 1, 'child_cat', 37, 'August 24, 2020 16:56:46', 'updated'),
(84, 1, 'child_cat', 36, 'August 24, 2020 16:57:27', 'updated'),
(85, 1, 'child_cat', 35, 'August 24, 2020 16:57:49', 'updated'),
(86, 1, 'child_cat', 34, 'August 24, 2020 16:58:04', 'updated'),
(87, 1, 'child_cat', 33, 'August 24, 2020 16:58:50', 'updated'),
(88, 1, 'child_cat', 32, 'August 24, 2020 16:59:12', 'updated'),
(89, 1, 'child_cat', 31, 'August 24, 2020 16:59:27', 'updated'),
(90, 1, 'child_cat', 30, 'August 24, 2020 17:00:18', 'updated'),
(91, 1, 'child_cat', 29, 'August 24, 2020 17:00:35', 'updated'),
(92, 1, 'child_cat', 28, 'August 24, 2020 17:00:50', 'updated'),
(93, 1, 'child_cat', 27, 'August 24, 2020 17:01:10', 'updated'),
(94, 1, 'child_cat', 26, 'August 24, 2020 17:01:25', 'updated'),
(95, 1, 'child_cat', 25, 'August 24, 2020 17:01:57', 'updated'),
(96, 1, 'child_cat', 24, 'August 24, 2020 17:02:16', 'updated'),
(97, 1, 'child_cat', 23, 'August 24, 2020 17:03:06', 'updated'),
(98, 1, 'child_cat', 22, 'August 24, 2020 17:03:26', 'updated'),
(99, 1, 'child_cat', 21, 'August 24, 2020 17:03:48', 'updated'),
(100, 1, 'child_cat', 20, 'August 24, 2020 17:09:25', 'updated'),
(101, 1, 'child_cat', 19, 'August 24, 2020 17:10:13', 'updated'),
(102, 1, 'child_cat', 18, 'August 24, 2020 17:10:36', 'updated'),
(103, 1, 'child_cat', 17, 'August 24, 2020 17:11:03', 'updated'),
(104, 1, 'child_cat', 16, 'August 24, 2020 17:11:26', 'updated'),
(105, 1, 'child_cat', 15, 'August 24, 2020 17:11:47', 'updated'),
(106, 1, 'child_cat', 14, 'August 24, 2020 17:12:02', 'updated'),
(107, 1, 'child_cat', 13, 'August 24, 2020 17:12:16', 'updated'),
(108, 1, 'child_cat', 12, 'August 24, 2020 17:12:40', 'updated'),
(109, 1, 'child_cat', 11, 'August 24, 2020 17:13:05', 'updated'),
(110, 1, 'child_cat', 10, 'August 24, 2020 17:13:47', 'updated'),
(111, 1, 'child_cat', 9, 'August 24, 2020 17:14:07', 'updated'),
(112, 1, 'child_cat', 8, 'August 24, 2020 17:14:31', 'updated'),
(113, 1, 'child_cat', 7, 'August 24, 2020 17:14:46', 'updated'),
(114, 1, 'child_cat', 6, 'August 24, 2020 17:15:10', 'updated'),
(115, 1, 'child_cat', 5, 'August 24, 2020 17:15:25', 'updated'),
(116, 1, 'child_cat', 4, 'August 24, 2020 17:15:40', 'updated'),
(117, 1, 'child_cat', 3, 'August 24, 2020 17:16:10', 'updated'),
(118, 1, 'child_cat', 2, 'August 24, 2020 17:16:24', 'updated'),
(119, 1, 'child_cat', 1, 'August 24, 2020 17:16:43', 'updated'),
(120, 1, 'language_settings', 2, 'August 24, 2020 17:26:07', 'updated'),
(121, 1, 'language_settings', 2, 'August 24, 2020 17:27:34', 'updated'),
(122, 1, 'language_settings', 2, 'August 24, 2020 17:28:03', 'updated'),
(123, 1, 'page', 1, 'August 24, 2020 17:29:07', 'updated'),
(124, 1, 'page', 1, 'August 24, 2020 17:30:22', 'updated'),
(125, 1, 'page', 1, 'August 24, 2020 17:31:20', 'updated'),
(126, 1, 'page', 1, 'August 24, 2020 17:31:54', 'updated'),
(127, 1, 'pages', 1, 'August 24, 2020 17:33:43', 'deleted'),
(128, 1, 'term', 2, 'August 24, 2020 17:36:11', 'updated'),
(129, 1, 'term', 2, 'August 24, 2020 17:36:33', 'updated'),
(130, 1, 'term', 2, 'August 24, 2020 17:37:38', 'updated'),
(131, 1, 'term', 2, 'August 24, 2020 17:38:04', 'updated');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `content_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_rights`
--

CREATE TABLE `admin_rights` (
  `id` int(10) NOT NULL,
  `admin_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` int(11) NOT NULL,
  `plugins` int(10) NOT NULL,
  `pages` int(11) NOT NULL,
  `blog` int(10) NOT NULL,
  `feedback` int(10) NOT NULL,
  `video_schedules` int(10) NOT NULL,
  `proposals` int(11) NOT NULL,
  `accounting` int(10) NOT NULL,
  `payouts` int(10) NOT NULL,
  `reports` int(11) NOT NULL,
  `inbox` int(11) NOT NULL,
  `reviews` int(11) NOT NULL,
  `buyer_requests` int(11) NOT NULL,
  `restricted_words` int(11) NOT NULL,
  `notifications` int(11) NOT NULL,
  `cats` int(11) NOT NULL,
  `delivery_times` int(11) NOT NULL,
  `seller_languages` int(11) NOT NULL,
  `seller_skills` int(11) NOT NULL,
  `seller_levels` int(10) NOT NULL,
  `customer_support` int(11) NOT NULL,
  `coupons` int(11) NOT NULL,
  `slides` int(11) NOT NULL,
  `terms` int(11) NOT NULL,
  `sellers` int(11) NOT NULL,
  `orders` int(11) NOT NULL,
  `referrals` int(11) NOT NULL,
  `files` int(11) NOT NULL,
  `knowledge_bank` int(10) NOT NULL,
  `currencies` int(10) NOT NULL,
  `languages` int(11) NOT NULL,
  `admins` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_rights`
--

INSERT INTO `admin_rights` (`id`, `admin_id`, `settings`, `plugins`, `pages`, `blog`, `feedback`, `video_schedules`, `proposals`, `accounting`, `payouts`, `reports`, `inbox`, `reviews`, `buyer_requests`, `restricted_words`, `notifications`, `cats`, `delivery_times`, `seller_languages`, `seller_skills`, `seller_levels`, `customer_support`, `coupons`, `slides`, `terms`, `sellers`, `orders`, `referrals`, `files`, `knowledge_bank`, `currencies`, `languages`, `admins`) VALUES
(6, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `announcement_bar`
--

CREATE TABLE `announcement_bar` (
  `id` int(10) NOT NULL,
  `enable_bar` int(10) NOT NULL,
  `bg_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bar_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_updated` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcement_bar`
--

INSERT INTO `announcement_bar` (`id`, `enable_bar`, `bg_color`, `text_color`, `bar_text`, `last_updated`, `language_id`) VALUES
(1, 1, '#2ca35b', '#ffffff', '\nTest the top header option\n', '1597776166', 1);

-- --------------------------------------------------------

--
-- Table structure for table `api_settings`
--

CREATE TABLE `api_settings` (
  `id` int(10) NOT NULL,
  `enable_s3` int(10) NOT NULL,
  `s3_access_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s3_access_sceret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s3_bucket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s3_region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s3_domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_settings`
--

INSERT INTO `api_settings` (`id`, `enable_s3`, `s3_access_key`, `s3_access_sceret`, `s3_bucket`, `s3_region`, `s3_domain`) VALUES
(1, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `app_info`
--

CREATE TABLE `app_info` (
  `id` int(100) NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_info`
--

INSERT INTO `app_info` (`id`, `version`, `r_date`) VALUES
(1, '1.5.1', '9 May 2020');

-- --------------------------------------------------------

--
-- Table structure for table `archived_messages`
--

CREATE TABLE `archived_messages` (
  `id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `message_group_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_cat`
--

CREATE TABLE `article_cat` (
  `article_cat_id` int(11) NOT NULL,
  `language_id` int(10) NOT NULL,
  `article_cat_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buyer_requests`
--

CREATE TABLE `buyer_requests` (
  `request_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `child_id` int(10) NOT NULL,
  `request_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_time` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_budget` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buyer_requests`
--

INSERT INTO `buyer_requests` (`request_id`, `seller_id`, `cat_id`, `child_id`, `request_title`, `request_description`, `request_file`, `delivery_time`, `request_budget`, `request_date`, `request_status`, `isS3`) VALUES
(1, 3, 6, 66, 'test', 'test', '', '7 Days', '5', 'August 24, 2020', 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `buyer_reviews`
--

CREATE TABLE `buyer_reviews` (
  `review_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `review_buyer_id` int(10) NOT NULL,
  `buyer_rating` int(10) NOT NULL,
  `buyer_review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_seller_id` int(10) NOT NULL,
  `review_date` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buyer_reviews`
--

INSERT INTO `buyer_reviews` (`review_id`, `proposal_id`, `order_id`, `review_buyer_id`, `buyer_rating`, `buyer_review`, `review_seller_id`, `review_date`) VALUES
(1, 5, 1, 3, 5, 'well done', 2, 'Aug 17 2020');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `proposal_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `proposal_qty` int(10) NOT NULL,
  `delivery_id` int(10) NOT NULL,
  `revisions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `seller_id`, `proposal_id`, `proposal_price`, `proposal_qty`, `delivery_id`, `revisions`, `coupon_used`) VALUES
(1, 2, 5, '10', 1, 2, '2', 0),
(2, 1, 5, '10', 1, 2, '2', 0),
(4, 1, 3, '12', 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart_extras`
--

CREATE TABLE `cart_extras` (
  `id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_featured` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_watermark` int(10) NOT NULL,
  `isS3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_url`, `cat_image`, `cat_featured`, `enable_watermark`, `isS3`) VALUES
(1, 'graphics-design', 'p1.png', 'yes', 0, 0),
(2, 'digital-marketing', 'p2.png', 'yes', 0, 0),
(3, 'writing-translation', 'p3.png', 'yes', 0, 0),
(4, 'video-animation', 'p4.png', 'yes', 0, 0),
(6, 'programming-tech', 'p5.png', 'yes', 0, 0),
(7, 'business', 'p6.png', 'yes', 0, 0),
(8, 'fun-lifestyle', 'p7.png', 'yes', 0, 0),
(9, 'music-audio', 'p8.png', 'yes', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories_children`
--

CREATE TABLE `categories_children` (
  `child_id` int(10) NOT NULL,
  `child_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_parent_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_children`
--

INSERT INTO `categories_children` (`child_id`, `child_url`, `child_parent_id`) VALUES
(1, 'logo-design', 1),
(2, 'business-cards-amp-stationery', 1),
(3, 'illustration', 1),
(4, 'cartoons-caricatures', 1),
(5, 'flyers-posters', 1),
(6, 'book-covers-packaging', 1),
(7, 'web-amp-mobile-design', 1),
(8, 'social-media-design', 1),
(9, 'banner-ads', 1),
(10, 'social-media-marketing', 2),
(11, 'wordpress', 6),
(12, 'photoshop-editing', 1),
(13, '3d-2d-models', 1),
(14, 't-shirts', 1),
(15, 'presentation-design', 1),
(16, 'other', 1),
(17, 'seo', 2),
(18, 'web-traffic', 2),
(19, 'content-marketing', 2),
(20, 'video-marketing', 2),
(21, 'email-marketing', 2),
(22, 'search-display-marketing', 2),
(23, 'marketing-strategy', 2),
(24, 'web-analytics', 2),
(25, 'influencer-marketing', 2),
(26, 'local-listings', 2),
(27, 'domain-research', 2),
(28, 'e-commerce-marketing', 2),
(29, 'mobile-advertising', 2),
(30, 'resumes-cover-letters', 3),
(31, 'proofreading-editing', 3),
(32, 'translation', 3),
(33, 'creative-writing', 3),
(34, 'business-copywriting', 3),
(35, 'research-summaries', 3),
(36, 'articles-blog-posts', 3),
(37, 'press-releases', 3),
(38, 'transcription', 3),
(39, 'legal-writing', 3),
(40, 'other', 3),
(41, 'whiteboard-explainer-videos', 4),
(42, 'intros-animated-logos', 4),
(43, 'promotional-brand-videos', 4),
(44, 'editing-post-production', 4),
(45, 'lyric-music-videos', 4),
(46, 'spokespersons-testimonials', 4),
(48, 'other', 4),
(49, 'voice-over', 9),
(50, 'mixing-mastering', 9),
(51, 'producers-composers', 9),
(52, 'singer-songwriters', 9),
(53, 'session-musicians-singers', 9),
(54, 'jingles-drops', 9),
(55, 'sound-effects', 9),
(56, 'web-programming', 6),
(58, 'website-builders-cms', 6),
(60, 'ecommerce', 6),
(61, 'mobile-apps-web', 6),
(62, 'desktop-applications', 6),
(63, 'support-it', 6),
(64, 'chatbots', 6),
(65, 'data-analysis-reports', 6),
(66, 'convert-files', 6),
(67, 'databases', 6),
(68, 'user-testing', 6),
(69, 'other', 6),
(70, 'virtual-assistant', 7),
(71, 'market-research', 7),
(72, 'business-plans', 7),
(73, 'branding-services', 7),
(74, 'legal-consulting', 7),
(75, 'financial-consulting', 7),
(76, 'business-tips', 7),
(77, 'presentations', 7),
(78, 'career-advice', 7),
(79, 'flyer-distribution', 7),
(80, 'other', 7),
(81, 'online-lessons', 8),
(82, 'arts-crafts', 8),
(83, 'relationship-advice', 8),
(84, 'health-nutrition-fitness', 8),
(85, 'astrology-readings', 8),
(86, 'spiritual-healing', 8),
(87, 'family-genealogy', 8),
(88, 'collectibles', 8),
(89, 'greeting-cards-videos', 8),
(91, 'viral-videos', 8),
(92, 'pranks-stunts', 8),
(93, 'celebrity-impersonators', 8),
(94, 'other', 8);

-- --------------------------------------------------------

--
-- Table structure for table `cats_meta`
--

CREATE TABLE `cats_meta` (
  `id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `cat_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_desc` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cats_meta`
--

INSERT INTO `cats_meta` (`id`, `cat_id`, `language_id`, `cat_title`, `cat_desc`) VALUES
(1, 1, 1, 'Graphics & Design', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(2, 2, 1, 'Digital Marketing', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),
(3, 3, 1, 'Writing & Translation', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),
(4, 4, 1, 'Video & Animation\r\n', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),
(5, 6, 1, 'Programming & Tech\r\n', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),
(6, 7, 1, 'Business\r\n', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),
(7, 8, 1, 'Fun & Lifestyle\r\n', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),
(8, 9, 1, 'Music & Audio', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),
(9, 1, 2, 'تصميم الرسومات', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(10, 2, 2, 'التسويق الرقمي', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(11, 3, 2, 'الكتابة والترجمة', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(12, 4, 2, 'الفيديو والرسوم المتحركة', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(13, 6, 2, 'البرمجة والتكنولوجيا', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(14, 7, 2, 'اعمال', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(15, 8, 2, 'المرح ونمط الحياة', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(16, 9, 2, 'الموسيقى والصوت', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.');

-- --------------------------------------------------------

--
-- Table structure for table `child_cats_meta`
--

CREATE TABLE `child_cats_meta` (
  `id` int(10) NOT NULL,
  `child_id` int(10) NOT NULL,
  `child_parent_id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `child_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_desc` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_cats_meta`
--

INSERT INTO `child_cats_meta` (`id`, `child_id`, `child_parent_id`, `language_id`, `child_title`, `child_desc`) VALUES
(1, 1, 1, 1, 'Logo Design', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(2, 2, 1, 1, 'Business Cards &amp; Stationery', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(3, 3, 1, 1, 'Illustration', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(4, 4, 1, 1, 'Cartoons Caricatures', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(5, 5, 1, 1, 'Flyers Posters', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(6, 6, 1, 1, 'Book Covers & Packaging', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(7, 7, 1, 1, 'Web &amp; Mobile Design', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(8, 8, 1, 1, 'Social Media Design', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(9, 9, 1, 1, 'Banner Ads', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(10, 10, 2, 1, 'Social Media Marketing', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(11, 11, 6, 1, 'WordPress', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(12, 12, 1, 1, 'Photoshop Editing', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(13, 13, 1, 1, '3D & 2D Models', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(14, 14, 1, 1, 'T-Shirts', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(15, 15, 1, 1, 'Presentation Design', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(16, 16, 1, 1, 'Other', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(17, 17, 2, 1, 'SEO', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(18, 18, 2, 1, 'Web Traffic', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(19, 19, 2, 1, 'Content Marketing', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(20, 20, 2, 1, 'Video Marketing', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(21, 21, 2, 1, 'Email Marketing', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(22, 22, 2, 1, 'Search & Display Marketing', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(23, 23, 2, 1, 'Marketing Strategy', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(24, 24, 2, 1, 'Web Analytics', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(25, 25, 2, 1, 'Influencer Marketing', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(26, 26, 2, 1, 'Local Listings', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(27, 27, 2, 1, 'Domain Research', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(28, 28, 2, 1, 'E-Commerce Marketing', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(29, 29, 2, 1, 'Mobile Advertising', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(30, 30, 3, 1, 'Resumes & Cover Letters', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(31, 31, 3, 1, 'Proofreading & Editing', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(32, 32, 3, 1, 'Translation', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(33, 33, 3, 1, 'Creative Writing', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(34, 34, 3, 1, 'Business Copywriting', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(35, 35, 3, 1, 'Research & Summaries', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(36, 36, 3, 1, 'Articles & Blog Posts', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(37, 37, 3, 1, 'Press Releases', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(38, 38, 3, 1, 'Transcription', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(39, 39, 3, 1, 'Legal Writing', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(40, 40, 3, 1, 'Other', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(41, 41, 4, 1, 'Whiteboard & Explainer Videos', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(42, 42, 4, 1, 'Intros & Animated Logos', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(43, 43, 4, 1, 'Promotional & Brand Videos', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(44, 44, 4, 1, 'Editing & Post Production', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(45, 45, 4, 1, 'Lyric & Music Videos', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(46, 46, 4, 1, 'Spokespersons & Testimonials', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(47, 48, 4, 1, 'Other', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(48, 49, 9, 1, 'Voice Over', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(49, 50, 9, 1, 'Mixing & Mastering', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(50, 51, 9, 1, 'Producers & Composers', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(51, 52, 9, 1, 'Singer-Songwriters', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(52, 53, 9, 1, 'Session Musicians & Singers', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(53, 54, 9, 1, 'Jingles & Drops', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(54, 55, 9, 1, 'Sound Effects', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(55, 56, 6, 1, 'Web Programming', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(56, 58, 6, 1, 'Website Builders & CMS', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(57, 60, 6, 1, 'Ecommerce', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(58, 61, 6, 1, 'Mobile Apps & Web', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(59, 62, 6, 1, 'Desktop applications', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(60, 63, 6, 1, 'Support & IT', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(61, 64, 6, 1, 'Chatbots', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(62, 65, 6, 1, 'Data Analysis & Reports', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(63, 66, 6, 1, 'Convert Files', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(64, 67, 6, 1, 'Databases', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(65, 68, 6, 1, 'User Testing', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(66, 69, 6, 1, 'Other', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(67, 70, 7, 1, 'Virtual Assistant', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(68, 71, 7, 1, 'Market Research', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(69, 72, 7, 1, 'Business Plans', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(70, 73, 7, 1, 'Branding Services', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(71, 74, 7, 1, 'Legal Consulting', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(72, 75, 7, 1, 'Financial Consulting', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(73, 76, 7, 1, 'Business Tips', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(74, 77, 7, 1, 'Presentations', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(75, 78, 7, 1, 'Career Advice', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(76, 79, 7, 1, 'Flyer Distribution', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(77, 80, 7, 1, 'Other', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(78, 81, 8, 1, 'Online Lessons', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(79, 82, 8, 1, 'Arts & Crafts', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(80, 83, 8, 1, 'Relationship Advice', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(81, 84, 8, 1, 'Health, Nutrition & Fitness', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(82, 85, 8, 1, 'Astrology & Readings', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(83, 86, 8, 1, 'Spiritual & Healing', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(84, 87, 8, 1, 'Family & Genealogy', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(85, 88, 8, 1, 'Collectibles', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(86, 89, 8, 1, 'Greeting Cards & Videos', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(87, 91, 8, 1, 'Viral Videos', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(88, 92, 8, 1, 'Pranks & Stunts', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(89, 93, 8, 1, 'Celebrity Impersonators', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(90, 94, 8, 1, 'Other', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(91, 1, 1, 2, 'تصميم شعار', 'تصميم شعار'),
(92, 2, 1, 2, 'بطاقات العمل والقرطاسية', 'بطاقات العمل والقرطاسية'),
(93, 3, 1, 2, 'توضيح', 'توضيح'),
(94, 4, 1, 2, 'كاريكاتير كاريكاتير', 'كاريكاتير كاريكاتير'),
(95, 5, 1, 2, 'ملصقات النشرات', 'ملصقات النشرات'),
(96, 6, 1, 2, 'أغلفة الكتب والتغليف', 'أغلفة الكتب والتغليف'),
(97, 7, 1, 2, 'تصميم الويب والجوال', 'تصميم الويب والجوال'),
(98, 8, 1, 2, 'تصميم مواقع التواصل الاجتماعي', 'تصميم مواقع التواصل الاجتماعي'),
(99, 9, 1, 2, 'إعلانات البانر', 'إعلانات البانر'),
(100, 10, 2, 2, 'تسويق وسائل الاعلام الاجتماعية', 'تسويق وسائل الاعلام الاجتماعية'),
(101, 11, 6, 2, 'ووردبريس', 'ووردبريس'),
(102, 12, 1, 2, 'تحرير فوتوشوب', 'تحرير فوتوشوب'),
(103, 13, 1, 2, 'نماذج ثلاثية الأبعاد وثنائية الأبعاد', 'نماذج ثلاثية الأبعاد وثنائية الأبعاد'),
(104, 14, 1, 2, 'قمصان', 'قمصان'),
(105, 15, 1, 2, 'تصميم العروض التقديمية', 'تصميم العروض التقديمية'),
(106, 16, 1, 2, 'آخر', 'آخر'),
(107, 17, 2, 2, 'سيو', 'سيو'),
(108, 18, 2, 2, 'حركة الويب', 'حركة الويب'),
(109, 19, 2, 2, 'تسويق المحتوى', 'تسويق المحتوى'),
(110, 20, 2, 2, 'تسويق الفيديو', 'تسويق الفيديو'),
(111, 21, 2, 2, 'التسويق عبر البريد الإلكتروني', 'التسويق عبر البريد الإلكتروني'),
(112, 22, 2, 2, 'البحث والتسويق على الشبكة الإعلانية', 'البحث والتسويق على الشبكة الإعلانية'),
(113, 23, 2, 2, 'استراتيجية التسويق', 'استراتيجية التسويق'),
(114, 24, 2, 2, 'تحليلات الويب', 'تحليلات الويب'),
(115, 25, 2, 2, 'التسويق المؤثر', 'التسويق المؤثر'),
(116, 26, 2, 2, 'القوائم المحلية', 'القوائم المحلية'),
(117, 27, 2, 2, 'بحوث المجال', 'بحوث المجال'),
(118, 28, 2, 2, 'تسويق التجارة الإلكترونية', 'تسويق التجارة الإلكترونية'),
(119, 29, 2, 2, 'الإعلان المحمول', 'الإعلان المحمول'),
(120, 30, 3, 2, 'السير الذاتية وخطابات التعريف', 'السير الذاتية وخطابات التعريف'),
(121, 31, 3, 2, 'التدقيق اللغوي والتحرير', 'التدقيق اللغوي والتحرير'),
(122, 32, 3, 2, 'ترجمة', 'ترجمة'),
(123, 33, 3, 2, 'كتابة إبداعية', 'كتابة إبداعية'),
(124, 34, 3, 2, 'كتابة الأعمال', 'كتابة الأعمال'),
(125, 35, 3, 2, 'الأبحاث والملخصات', 'الأبحاث والملخصات'),
(126, 36, 3, 2, 'مقالات ومنشورات المدونة', 'مقالات ومنشورات المدونة'),
(127, 37, 3, 2, 'تصريحات صحفيه', 'تصريحات صحفيه'),
(128, 38, 3, 2, 'النسخ', 'النسخ'),
(129, 39, 3, 2, 'الكتابة القانونية', 'الكتابة القانونية'),
(130, 40, 3, 2, 'آخر', 'آخر'),
(131, 41, 4, 2, 'السبورة ومقاطع الفيديو التوضيحية', 'السبورة ومقاطع الفيديو التوضيحية'),
(132, 42, 4, 2, 'مقدمات وشعارات متحركة', 'مقدمات وشعارات متحركة'),
(133, 43, 4, 2, 'مقاطع الفيديو الترويجية والعلامات التجارية', 'مقاطع الفيديو الترويجية والعلامات التجارية'),
(134, 44, 4, 2, 'التحرير وما بعد الإنتاج', 'التحرير وما بعد الإنتاج'),
(135, 45, 4, 2, 'كلمات الأغاني والموسيقى والفيديو', 'كلمات الأغاني والموسيقى والفيديو'),
(136, 46, 4, 2, 'المتحدثون الرسميون والشهادات', 'المتحدثون الرسميون والشهادات'),
(137, 48, 4, 2, 'آخر', 'آخر'),
(138, 49, 9, 2, 'التعليق الصوتي', 'التعليق الصوتي'),
(139, 50, 9, 2, 'الخلط والاتقان', 'الخلط والاتقان'),
(140, 51, 9, 2, 'المنتجون والملحنون', 'المنتجون والملحنون'),
(141, 52, 9, 2, 'المغني وكتاب الأغاني', 'المغني وكتاب الأغاني'),
(142, 53, 9, 2, 'الموسيقيون والمغنون الدورة', 'الموسيقيون والمغنون الدورة'),
(143, 54, 9, 2, 'الأناشيد وقطرات', 'الأناشيد وقطرات'),
(144, 55, 9, 2, 'مؤثرات صوتية', 'مؤثرات صوتية'),
(145, 56, 6, 2, 'برمجة الويب', 'برمجة الويب'),
(146, 58, 6, 2, 'بناة مواقع الويب ونظام إدارة المحتوى', 'بناة مواقع الويب ونظام إدارة المحتوى'),
(147, 60, 6, 2, 'التجارة الإلكترونية', 'التجارة الإلكترونية'),
(148, 61, 6, 2, 'تطبيقات الجوال والويب', 'تطبيقات الجوال والويب'),
(149, 62, 6, 2, 'تطبيقات سطح المكتب', 'تطبيقات سطح المكتب'),
(150, 63, 6, 2, 'الدعم وتكنولوجيا المعلومات', 'الدعم وتكنولوجيا المعلومات'),
(151, 64, 6, 2, 'روبوتات المحادثة', 'روبوتات المحادثة'),
(152, 65, 6, 2, 'تحليل البيانات والتقارير', 'تحليل البيانات والتقارير'),
(153, 66, 6, 2, 'تحويل ملفات', 'تحويل ملفات'),
(154, 67, 6, 2, 'قواعد بيانات', 'قواعد بيانات'),
(155, 68, 6, 2, 'اختبار المستخدم', 'اختبار المستخدم'),
(156, 69, 6, 2, 'آخر', 'آخر'),
(157, 70, 7, 2, 'مساعد افتراضي', 'مساعد افتراضي'),
(158, 71, 7, 2, 'البحث عن المتجر', 'البحث عن المتجر'),
(159, 72, 7, 2, 'خطط العمل', 'خطط العمل'),
(160, 73, 7, 2, 'خدمات العلامات التجارية', 'خدمات العلامات التجارية'),
(161, 74, 7, 2, 'استشارة مالية', 'استشارة مالية'),
(162, 75, 7, 2, 'استشارة مالية', 'استشارة مالية'),
(163, 76, 7, 2, 'نصائح تجارية', 'نصائح تجارية'),
(164, 77, 7, 2, 'العروض', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(165, 78, 7, 2, 'نصيحة مهنية', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(166, 79, 7, 2, 'توزيع النشرات', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(167, 80, 7, 2, 'اخرى', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(168, 81, 8, 2, 'دروس عبر الإنترنت', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(169, 82, 8, 2, 'الفنون والحرف', 'الفنون والحرف\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(170, 83, 8, 2, 'نصيحة العلاقة', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(171, 84, 8, 2, 'الصحة والتغذية واللياقة البدنية', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(172, 85, 8, 2, 'علم التنجيم والقراءات', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(173, 86, 8, 2, 'الشفاء الروحي', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(174, 87, 8, 2, 'الأسرة وعلم الأنساب', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(175, 88, 8, 2, 'المقتنيات', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(176, 89, 8, 2, 'بطاقات المعايدة ومقاطع الفيديو', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(177, 91, 8, 2, 'أشرطة الفيديو الفيروسية', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(178, 92, 8, 2, 'المزح والأعمال المثيرة', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(179, 93, 8, 2, 'منتحلو المشاهير', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(180, 94, 8, 2, 'آخر', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `idea_id` int(100) NOT NULL,
  `seller_id` int(100) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_support`
--

CREATE TABLE `contact_support` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_support`
--

INSERT INTO `contact_support` (`contact_id`, `contact_email`) VALUES
(1, 'admin-demo@pixinal.com');

-- --------------------------------------------------------

--
-- Table structure for table `contact_support_meta`
--

CREATE TABLE `contact_support_meta` (
  `id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `contact_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_desc` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_support_meta`
--

INSERT INTO `contact_support_meta` (`id`, `language_id`, `contact_heading`, `contact_desc`) VALUES
(1, 1, 'Submit A Support Request', 'If you have any questions, please feel free to contact us, Our customer service center is online 24/7.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'Aland Islands'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antarctica'),
(10, 'Antigua And Barbuda'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belarus'),
(22, 'Belgium'),
(23, 'Belize'),
(24, 'Benin'),
(25, 'Bermuda'),
(26, 'Bhutan'),
(27, 'Bolivia'),
(28, 'Bosnia And Herzegovina'),
(29, 'Botswana'),
(30, 'Bouvet Island'),
(31, 'Brazil'),
(32, 'British Indian Ocean Territory'),
(33, 'Brunei Darussalam'),
(34, 'Bulgaria'),
(35, 'Burkina Faso'),
(36, 'Burundi'),
(37, 'Cambodia'),
(38, 'Cameroon'),
(39, 'Canada'),
(40, 'Cape Verde'),
(41, 'Cayman Islands'),
(42, 'Central African Republic'),
(43, 'Chad'),
(44, 'Chile'),
(45, 'China'),
(46, 'Christmas Island'),
(47, 'Cocos (keeling) Islands'),
(48, 'Colombia'),
(49, 'Comoros'),
(50, 'Congo'),
(51, 'Congo, The Democratic Republic Of'),
(52, 'Cook Islands'),
(53, 'Costa Rica'),
(54, 'Cote D\'ivoire'),
(55, 'Croatia'),
(56, 'Cuba'),
(57, 'Cyprus'),
(58, 'Czech Republic'),
(59, 'Denmark'),
(60, 'Djibouti'),
(61, 'Dominica'),
(62, 'Dominican Republic'),
(63, 'Ecuador'),
(64, 'Egypt'),
(65, 'El Salvador'),
(66, 'Equatorial Guinea'),
(67, 'Eritrea'),
(68, 'Estonia'),
(69, 'Ethiopia'),
(70, 'Falkland Islands (malvinas)'),
(71, 'Faroe Islands'),
(72, 'Fiji'),
(73, 'Finland'),
(74, 'France'),
(75, 'French Guiana'),
(76, 'French Polynesia'),
(77, 'French Southern Territories'),
(78, 'Gabon'),
(79, 'Gambia'),
(80, 'Georgia'),
(81, 'Germany'),
(82, 'Ghana'),
(83, 'Gibraltar'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guernsey'),
(91, 'Guinea'),
(92, 'Guinea-bissau'),
(93, 'Guyana'),
(94, 'Haiti'),
(95, 'Heard Island And Mcdonald Islands'),
(96, 'Holy See (vatican City State)'),
(97, 'Honduras'),
(98, 'Hong Kong'),
(99, 'Hungary'),
(100, 'Iceland'),
(101, 'India'),
(102, 'Indonesia'),
(103, 'Iran, Islamic Republic Of'),
(104, 'Iraq'),
(105, 'Ireland'),
(106, 'Isle Of Man'),
(107, 'Israel'),
(108, 'Italy'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jersey'),
(112, 'Jordan'),
(113, 'Kazakhstan'),
(114, 'Kenya'),
(115, 'Kiribati'),
(116, 'Korea, Democratic People\'s Republic Of'),
(117, 'Korea, Republic Of'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macao'),
(130, 'Macedonia, The Former Yugoslav Republic Of'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States Of'),
(144, 'Moldova, Republic Of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montserrat'),
(148, 'Morocco'),
(149, 'Mozambique'),
(150, 'Myanmar'),
(151, 'Namibia'),
(152, 'Nauru'),
(153, 'Nepal'),
(154, 'Netherlands'),
(155, 'Netherlands Antilles'),
(156, 'New Caledonia'),
(157, 'New Zealand'),
(158, 'Nicaragua'),
(159, 'Niger'),
(160, 'Nigeria'),
(161, 'Niue'),
(162, 'Norfolk Island'),
(163, 'Northern Mariana Islands'),
(164, 'Norway'),
(165, 'Oman'),
(166, 'Pakistan'),
(167, 'Palau'),
(168, 'Palestinian Territory, Occupied'),
(169, 'Panama'),
(170, 'Papua New Guinea'),
(171, 'Paraguay'),
(172, 'Peru'),
(173, 'Philippines'),
(174, 'Pitcairn'),
(175, 'Poland'),
(176, 'Portugal'),
(177, 'Puerto Rico'),
(178, 'Qatar'),
(179, 'Reunion'),
(180, 'Romania'),
(181, 'Russian Federation'),
(182, 'Rwanda'),
(183, 'Saint Helena'),
(184, 'Saint Kitts And Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Pierre And Miquelon'),
(187, 'Saint Vincent And The Grenadines'),
(188, 'Samoa'),
(189, 'San Marino'),
(190, 'Sao Tome And Principe'),
(191, 'Saudi Arabia'),
(192, 'Senegal'),
(193, 'Serbia And Montenegro'),
(194, 'Seychelles'),
(195, 'Sierra Leone'),
(196, 'Singapore'),
(197, 'Slovakia'),
(198, 'Slovenia'),
(199, 'Solomon Islands'),
(200, 'Somalia'),
(201, 'South Africa'),
(202, 'South Georgia And The South Sandwich Islands'),
(203, 'Spain'),
(204, 'Sri Lanka'),
(205, 'Sudan'),
(206, 'Suriname'),
(207, 'Svalbard And Jan Mayen'),
(208, 'Swaziland'),
(209, 'Sweden'),
(210, 'Switzerland'),
(211, 'Syrian Arab Republic'),
(212, 'Taiwan, Province Of China'),
(213, 'Tajikistan'),
(214, 'Tanzania, United Republic Of'),
(215, 'Thailand'),
(216, 'Timor-leste'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad And Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks And Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States Minor Outlying Islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Venezuela'),
(236, 'Viet Nam'),
(237, 'Virgin Islands, British'),
(238, 'Virgin Islands, U.S.'),
(239, 'Wallis And Futuna'),
(240, 'Western Sahara'),
(241, 'Yemen'),
(242, 'Zambia'),
(243, 'Zimbabwe'),
(245, 'Myanmar (Burma)');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `coupon_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_limit` int(10) NOT NULL,
  `coupon_used` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons_used`
--

CREATE TABLE `coupons_used` (
  `id` int(100) NOT NULL,
  `proposal_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_used` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`) VALUES
(1, 'Afghan afghani', '&#065;&#102;'),
(2, 'Albanian lek', '&#076;&#101;&#107;'),
(3, 'Algerian dinar', '&#1583;&#1580;'),
(4, 'Euro', '&#8364;'),
(5, 'Angolan kwanza', '&#075;&#122;'),
(6, 'East Caribbean dollar', '&#036;'),
(7, 'Argentine peso', '&#036;'),
(8, 'Armenian dram', 'AMD'),
(9, 'Aruban florin', '&#402;'),
(10, 'Australian dollar', '&#036;'),
(11, 'Azerbaijani manat', '&#1084;&#1072;&#1085;'),
(12, 'Bahamian dollar', '&#036;'),
(13, 'Bahraini dinar', '.&#1583;.&#1576;'),
(14, 'Bangladeshi taka', '&#2547;'),
(15, 'Barbadian dollar', '&#036;'),
(16, 'Belarusian ruble', '&#112;&#046;'),
(17, 'Belizean dollar', '&#066;&#090;&#036;'),
(18, 'West African CFA franc', 'CFA'),
(19, 'Bermudian dollar', '&#036;'),
(20, 'Bhutanese ngultrum', '&#078;&#117;&#046;'),
(21, 'Bolivian boliviano', '&#036;&#098;'),
(22, 'US dollar', '&#036;'),
(23, 'Bosnia and Herzegovina convertible mark', '&#075;&#077;'),
(24, 'Botswana pula', '&#080;'),
(25, 'Brazilian real', '&#082;&#036;'),
(26, 'Brunei dollar', '&#036;'),
(27, 'Bulgarian lev', '&#1083;&#1074;'),
(28, 'Burmese kyat', '&#075;'),
(29, 'Burundian franc', '&#070;&#066;&#117;'),
(30, 'Cambodian riel', '&#6107;'),
(31, 'Central African CFA franc', '&#070;&#067;&#070;&#065;'),
(32, 'Canadian dollar', '&#036;'),
(33, 'Cape Verdean escudo', '&#036;'),
(34, 'Cayman Islands dollar', '&#036;'),
(35, 'Chilean peso', '&#036;'),
(36, 'Chinese renminbi', '&#165;'),
(37, 'Colombian peso', '&#036;'),
(38, 'Comorian franc', '&#067;&#070;'),
(39, 'Congolese franc', '&#070;&#067;'),
(40, 'New Zealand dollar', 'NZ&#036;'),
(41, 'Costa Rican colón', '&#8353;'),
(42, 'Croatian kuna', '&#107;&#110;'),
(43, 'Cuban peso', '&#8369;'),
(44, 'Netherlands Antilles guilder', '&#402;'),
(45, 'Czech koruna', '&#075;&#269;'),
(46, 'Danish krone', '&#107;&#114;'),
(47, 'Djiboutian franc', '&#070;&#100;&#106;'),
(48, 'Dominican peso', '&#082;&#068;&#036;'),
(49, 'Egyptian pound', 'EGP'),
(50, 'Salvadoran colón', '&#036;'),
(51, 'Eritrean nakfa', 'Nfk'),
(52, 'Ethiopian birr', '&#066;&#114;'),
(53, 'Falkland Islands pound', '&#163;'),
(54, 'Fijian dollar', '&#036;'),
(55, 'CFP franc', '&#070;'),
(56, 'Gambian dalasi', '&#068;'),
(57, 'Georgian lari', '&#4314;'),
(58, 'Ghanian cedi', '&#162;'),
(59, 'Gibraltar pound', '&#163;'),
(60, 'Guatemalan quetzal', '&#081;'),
(61, 'British pound', '&#163;'),
(62, 'Guinean franc', '&#070;&#071;'),
(63, 'Guyanese dollar', '&#036;'),
(64, 'Haitian gourde', '&#071;'),
(65, 'Honduran lempira', '&#076;'),
(66, 'Hong Kong dollar', '&#036;'),
(67, 'Hungarian forint', '&#070;&#116;'),
(68, 'Icelandic króna', '&#107;&#114;'),
(69, 'Indian rupee', '&#8377;'),
(70, 'Indonesian rupiah', '&#082;&#112;'),
(71, 'Iranian rial', '&#65020;'),
(72, 'Iraqi dinar', '&#1593;.&#1583;'),
(73, 'Israeli new sheqel', '&#8362;'),
(74, 'Jamaican dollar', '&#074;&#036;'),
(75, 'Japanese yen ', '&#165;'),
(76, 'Jordanian dinar', '&#074;&#068;'),
(77, 'Kazakhstani tenge', '&#1083;&#1074;'),
(78, 'Kenyan shilling', '&#075;&#083;&#104;'),
(79, 'North Korean won', '&#8361;'),
(80, 'Kuwaiti dinar', '&#1583;.&#1603;'),
(81, 'Kyrgyzstani som', '&#1083;&#1074;'),
(82, 'South Korean won', '&#8361;'),
(83, 'Lao kip', '&#8365;'),
(84, 'Latvian lats', '&#076;&#115;'),
(85, 'Lebanese pound', '&#163;'),
(86, 'Lesotho loti', '&#076;'),
(87, 'Liberian dollar', '&#036;'),
(88, 'Libyan dinar', '?.?'),
(89, 'Swiss franc', '&#067;&#072;&#070;'),
(90, 'Lithuanian litas', '&#076;&#116;'),
(91, 'Macanese pataca', '&#077;&#079;&#080;&#036;'),
(92, 'Macedonian denar', '&#1076;&#1077;&#1085;'),
(93, 'Malagasy ariary', '&#065;&#114;'),
(94, 'Malawian kwacha', '&#077;&#075;'),
(95, 'Malaysian ringgit', '&#082;&#077;'),
(96, 'Maldivian rufiyaa', '.&#1923;'),
(97, 'Mauritanian ouguiya', '&#085;&#077;'),
(98, 'Mauritian rupee', '&#8360;'),
(99, 'Mexican peso', '&#036;'),
(100, 'Moldovan leu', '&#076;'),
(101, 'Mongolian tugrik', '&#8366;'),
(102, 'Moroccan dirham', '&#1583;.&#1605;.'),
(103, 'Mozambican metical', '&#077;&#084;'),
(104, 'Namibian dollar', '&#036;'),
(105, 'Nepalese rupee', '&#8360;'),
(106, 'Nicaraguan córdoba', '&#067;&#036;'),
(107, 'Nigerian naira', '&#8358;'),
(108, 'Norwegian krone', '&#107;&#114;'),
(109, 'Omani rial', '&#65020;'),
(110, 'Pakistani rupee', '&#8360;'),
(111, 'Panamanian balboa', '&#066;&#047;&#046;'),
(112, 'Papua New Guinea kina', '&#075;'),
(113, 'Paraguayan guarani', '&#071;&#115;'),
(114, 'Peruvian nuevo sol', '&#083;&#047;&#046;'),
(115, 'Philippine peso', '&#8369;'),
(116, 'Polish zloty', '&#122;&#322;'),
(117, 'Qatari riyal', '&#65020;'),
(118, 'Romanian leu', '&#108;&#101;&#105;'),
(119, 'Russian ruble', '&#1088;&#1091;&#1073;'),
(120, 'Rwandan franc', '&#1585;.&#1587;'),
(121, 'Samoan t?l?', '&#087;&#083;&#036;'),
(122, 'São Tomé and Príncipe dobra', '&#068;&#098;'),
(123, 'Saudi riyal', '&#65020;'),
(124, 'Serbian dinar', '&#1044;&#1080;&#1085;&#046;'),
(125, 'Seychellois rupee', '&#8360;'),
(126, 'Sierra Leonean leone', '&#076;&#101;'),
(127, 'Singapore dollar', 'S&#036;'),
(128, 'Solomon Islands dollar', '&#036;'),
(129, 'Somali shilling', '&#083;'),
(130, 'South African rand', '&#082;'),
(131, 'Sri Lankan rupee', '&#8360;'),
(132, 'St. Helena pound', '&#163;'),
(133, 'Sudanese pound', '&#163;'),
(134, 'Surinamese dollar', '&#036;'),
(135, 'Swazi lilangeni', '&#076;'),
(136, 'Swedish krona', '&#107;&#114;'),
(137, 'Syrian pound', '&#163;'),
(138, 'New Taiwan dollar', '&#078;&#084;&#036;'),
(139, 'Tajikistani somoni', '&#084;&#074;&#083;'),
(140, 'Tanzanian shilling', 'Sh'),
(141, 'Thai baht ', '&#3647;'),
(142, 'Tongan pa’anga', '&#084;&#036;'),
(143, 'Trinidad and Tobago dollar', '&#036;'),
(144, 'Tunisian dinar', '&#1583;.&#1578;'),
(145, 'Turkish lira', '&#x20BA;'),
(146, 'Turkmenistani manat', '&#109;'),
(147, 'Ugandan shilling', '&#085;&#083;&#104;'),
(148, 'Ukrainian hryvnia', '&#8372;'),
(149, 'United Arab Emirates dirham', '&#1583;.&#1573;'),
(150, 'Uruguayan peso', '&#036;&#085;'),
(151, 'Uzbekistani som', '&#1083;&#1074;'),
(152, 'Vanuatu vatu', '&#086;&#084;'),
(153, 'Venezuelan bolivar', '&#066;&#115;'),
(154, 'Vietnamese dong', '&#8363;'),
(155, 'Yemeni rial', '&#65020;'),
(156, 'Zambian kwacha', '&#090;&#075;'),
(157, 'Zimbabwean dollar', '&#090;&#036;'),
(158, 'Jersey pound', '&#163;'),
(159, 'Libyan dinar', '&#1604;.&#1583;');

-- --------------------------------------------------------

--
-- Table structure for table `currency_converter_settings`
--

CREATE TABLE `currency_converter_settings` (
  `id` int(10) NOT NULL,
  `enable` int(10) NOT NULL,
  `api_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `server` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_converter_settings`
--

INSERT INTO `currency_converter_settings` (`id`, `enable`, `api_key`, `main_currency`, `server`) VALUES
(1, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_times`
--

CREATE TABLE `delivery_times` (
  `delivery_id` int(10) NOT NULL,
  `delivery_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_proposal_title` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_times`
--

INSERT INTO `delivery_times` (`delivery_id`, `delivery_title`, `delivery_proposal_title`) VALUES
(1, 'Up to 24 hours', '1 Day'),
(2, 'Up to 2 Days', '2 Days'),
(3, 'Up to 3 Days', '3 Days'),
(4, 'Up to 4 Days', '4 Days'),
(5, 'Up to 5 Days', '5 Days'),
(6, 'Up to 6 Days', '6 Days'),
(7, 'Up to 7 Days', '7 Days');

-- --------------------------------------------------------

--
-- Table structure for table `dusupay_orders`
--

CREATE TABLE `dusupay_orders` (
  `id` int(10) NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `content_id` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_id` int(10) NOT NULL,
  `revisions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minutes` int(10) NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order Support '),
(2, 'Review Removal '),
(3, 'Account Support'),
(4, 'Report A Bug \r\n');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,1) NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `favourite_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`favourite_id`, `seller_id`, `proposal_id`) VALUES
(1, 3, 5),
(10, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `featured_proposals`
--

CREATE TABLE `featured_proposals` (
  `featured_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `end_date` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_proposals`
--

INSERT INTO `featured_proposals` (`featured_id`, `proposal_id`, `end_date`) VALUES
(18, 9, 'September 24, 2020 11:10:11'),
(19, 8, 'September 24, 2020 11:10:21'),
(20, 7, 'September 24, 2020 11:10:30'),
(21, 6, 'September 24, 2020 11:10:42'),
(22, 2, 'September 24, 2020 11:11:04'),
(23, 5, 'September 24, 2020 11:11:11'),
(24, 4, 'September 24, 2020 11:11:17'),
(25, 3, 'September 24, 2020 11:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `footer_links`
--

CREATE TABLE `footer_links` (
  `link_id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_section` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_links`
--

INSERT INTO `footer_links` (`link_id`, `language_id`, `icon_class`, `link_title`, `link_url`, `link_section`) VALUES
(1, 1, '', 'Graphics &amp; Design', './categories/graphics-design', 'categories'),
(2, 1, '', 'Digital Marketing', './categories/digital-marketing', 'categories'),
(3, 1, '', 'Writing &amp; Translation', './categories/writing-translation', 'categories'),
(4, 1, '', 'Video &amp; Animation', './categories/video-animation', 'categories'),
(5, 1, '', 'Music &amp; Audio', './categories/music-audio', 'categories'),
(6, 1, '', 'Programming &amp; Tech', './categories/programming-tech', 'categories'),
(7, 1, '', 'Business', './categories/business', 'categories'),
(8, 1, '', 'Fun &amp; Lifestyle', './categories/fun-lifestyle', 'categories'),
(9, 1, 'fa-file-text-o', 'Terms &amp; Conditions', './terms_and_conditions', 'about'),
(10, 1, 'fa-google-plus-official', 'fa-google-plus-official', '#', 'follow'),
(11, 1, 'fa-twitter', '', '#', 'follow'),
(12, 1, 'fa-facebook', '', '#', 'follow'),
(13, 1, 'fa-linkedin', '', '#', 'follow'),
(14, 1, 'fa-pinterest', '', '#', 'follow'),
(15, 1, 'fa fa-life-ring', 'Customer Support', './customer_support', 'about'),
(16, 1, 'fa-question-circle', 'How It Works', './how-it-works', 'about'),
(17, 1, 'fa-book', 'Knowledge Bank', './knowledge_bank/', 'about'),
(18, 1, 'fa-rss', 'Blog', './blog/', 'about'),
(19, 1, 'fa fa-comments-o', 'Feedback', './feedback/', 'about'),
(20, 2, '', 'تصميم الرسومات', 'التصنيفات', 'categories'),
(21, 2, '', 'التسويق الرقمي', 'التصنيفات', 'categories'),
(22, 2, '', 'الكتابة والترجمة', 'التصنيفات', 'categories'),
(23, 2, '', 'الفيديو والرسوم المتحركة', 'التصنيفات', 'categories'),
(24, 2, '', 'الموسيقى والصوت', 'التصنيفات', 'categories'),
(25, 2, '', 'البرمجة والتكنولوجيا', 'التصنيفات', 'categories'),
(26, 2, '', 'اعمال', 'التصنيفات', 'categories'),
(27, 2, '', 'المرح ونمط الحياة', 'التصنيفات', 'categories'),
(28, 2, 'fa-file-text-o', 'الشروط والأحكام', './terms_and_conditions', 'about'),
(29, 2, 'fa fa-life-ring', 'دعم العملاء', './customer_support', 'about'),
(30, 2, 'fa-question-circle', 'كيف تعمل', './how-it-works', 'about'),
(31, 2, 'fa-book', 'بنك المعرفة', './knowledge_bank/', 'about'),
(32, 2, 'fa-rss', 'مدونة', './blog/', 'about'),
(33, 2, 'fa fa-comments-o', 'ردود الفعل', './feedback/', 'about'),
(34, 2, 'fa-google-plus-official', '', '#', 'follow'),
(35, 2, 'fa-twitter', '', '#', 'follow'),
(36, 2, 'fa-facebook', '', '#', 'follow'),
(37, 2, 'fa-linkedin', '', '#', 'follow'),
(38, 2, 'fa-pinterest', '', '#', 'follow');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) NOT NULL,
  `site_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_www` int(10) NOT NULL,
  `site_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_favicon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_mobile_logo` int(10) NOT NULL,
  `site_mobile_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_favicon_s3` int(10) NOT NULL,
  `site_logo_image_s3` int(10) NOT NULL,
  `site_mobile_logo_s3` int(10) NOT NULL,
  `site_logo_s3` int(10) NOT NULL,
  `site_watermark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_hover_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_border_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_email_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_timezone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_switcher` int(10) NOT NULL,
  `tinymce_api_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_social_login` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_app_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_app_secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `g_client_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `g_client_secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jwplayer_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_one_rating` int(10) NOT NULL,
  `level_one_orders` int(10) NOT NULL,
  `level_two_rating` int(10) NOT NULL,
  `level_two_orders` int(10) NOT NULL,
  `level_top_rating` int(10) NOT NULL,
  `level_top_orders` int(10) NOT NULL,
  `approve_proposals` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `edited_proposals` int(10) NOT NULL,
  `disable_local_video` int(10) NOT NULL,
  `proposal_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisions_list` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_unlimited_revisions` int(10) NOT NULL,
  `signup_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `relevant_requests` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_referrals` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `knowledge_bank` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `referral_money` int(10) NOT NULL,
  `site_currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_format` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_maintenance_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_auto_complete` int(10) NOT NULL,
  `wish_do_manual_payouts` int(10) NOT NULL,
  `payouts_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payouts_anyday` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_www`, `site_name`, `site_favicon`, `site_logo_type`, `site_logo_text`, `site_logo_image`, `enable_mobile_logo`, `site_mobile_logo`, `site_logo`, `site_favicon_s3`, `site_logo_image_s3`, `site_mobile_logo_s3`, `site_logo_s3`, `site_watermark`, `google_analytics`, `site_color`, `site_hover_color`, `site_border_color`, `site_desc`, `site_keywords`, `site_author`, `site_url`, `site_email_address`, `site_copyright`, `site_timezone`, `language_switcher`, `tinymce_api_key`, `recaptcha_site_key`, `recaptcha_secret_key`, `enable_social_login`, `fb_app_id`, `fb_app_secret`, `g_client_id`, `g_client_secret`, `jwplayer_code`, `level_one_rating`, `level_one_orders`, `level_two_rating`, `level_two_orders`, `level_top_rating`, `level_top_orders`, `approve_proposals`, `edited_proposals`, `disable_local_video`, `proposal_email`, `revisions_list`, `enable_unlimited_revisions`, `signup_email`, `relevant_requests`, `enable_referrals`, `knowledge_bank`, `referral_money`, `site_currency`, `currency_position`, `currency_format`, `enable_maintenance_mode`, `order_auto_complete`, `wish_do_manual_payouts`, `payouts_date`, `payouts_anyday`) VALUES
(1, 'Miver  - Freelance MarketPlace', 1, 'Miver  - Freelance MarketPlace', 'gigtodoFav.ico', 'image', '', 'logo.png', 1, 'mobile-logo.png', 'logo1.png', 0, 0, 0, 0, 'watermark.png', '', '#2ca35b', '#2ca35b', '#2ca35b', 'sfsdfs', 'sdf', 'sdfsd', 'https://www.webartinfo.com/themeforest/miver/', 'iamsewak@gmail.com', '', 'America/Chicago', 1, '', '', '', 'no', '', '', '', '', '', 85, 10, 95, 25, 100, 50, 'yes', 0, 0, 'yes', '', 0, 'yes', 'yes', 'yes', 'yes', 1, '22', 'left', 'us', 'no', 2, 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hide_seller_messages`
--

CREATE TABLE `hide_seller_messages` (
  `id` int(10) NOT NULL,
  `hider_id` int(10) NOT NULL,
  `hide_seller_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_cards`
--

CREATE TABLE `home_cards` (
  `card_id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `card_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_cards`
--

INSERT INTO `home_cards` (`card_id`, `language_id`, `card_title`, `card_desc`, `card_link`, `card_image`, `isS3`) VALUES
(1, 1, 'Logo Design', 'Build Your Brand', 'https://www.gigtodo.com/categories/graphics-design/logo-design', '1.jpg', 0),
(2, 1, 'Social Media', 'Reach More Customers', 'https://www.gigtodo.com/categories/digital-marketing/social-media-marketing', '2.jpg', 0),
(3, 1, 'Voice Talent', 'The Perfect Voiceover', 'https://www.gigtodo.com/categories/video-animation', '7.jpg', 0),
(4, 1, 'Translation', 'Go Global.', 'https://www.gigtodo.com/categories/writing-translation/translation', '4.jpg', 0),
(5, 1, 'Illustration', 'Color Your Dreams', 'https://www.gigtodo.com/categories/graphics-design/illustration', '5.jpg', 0),
(6, 1, 'Photoshop Expert', 'Hire A Designer', 'https://www.gigtodo.com/categories/graphics-design/photoshop-editing', '6.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `home_section`
--

CREATE TABLE `home_section` (
  `section_id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `section_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_short_heading` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_section`
--

INSERT INTO `home_section` (`section_id`, `language_id`, `section_heading`, `section_short_heading`) VALUES
(1, 1, 'DON\'T JUST DREAM, DO.', 'Freelance Services. On Demand.');

-- --------------------------------------------------------

--
-- Table structure for table `home_section_slider`
--

CREATE TABLE `home_section_slider` (
  `slide_id` int(100) NOT NULL,
  `slide_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slide_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_section_slider`
--

INSERT INTO `home_section_slider` (`slide_id`, `slide_name`, `slide_image`, `isS3`) VALUES
(1, 'Slide 1', 'main.png', 0),
(2, 'Slide 2', '1.png', 0),
(3, 'Slide 3', '2.jpg', 0),
(4, 'Slide 4', '3.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ideas`
--

CREATE TABLE `ideas` (
  `id` int(100) NOT NULL,
  `seller_id` int(100) NOT NULL,
  `votes` int(100) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inbox_messages`
--

CREATE TABLE `inbox_messages` (
  `message_id` int(10) NOT NULL,
  `message_group_id` int(10) NOT NULL,
  `message_sender` int(10) NOT NULL,
  `message_receiver` int(10) NOT NULL,
  `message_offer_id` int(10) NOT NULL,
  `message_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateAgo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bell` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inbox_sellers`
--

CREATE TABLE `inbox_sellers` (
  `inbox_seller_id` int(10) NOT NULL,
  `message_group_id` int(10) NOT NULL,
  `message_id` int(10) NOT NULL,
  `offer_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `popup` int(10) NOT NULL,
  `time` int(11) NOT NULL,
  `message_status` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inbox_sellers`
--

INSERT INTO `inbox_sellers` (`inbox_seller_id`, `message_group_id`, `message_id`, `offer_id`, `sender_id`, `receiver_id`, `popup`, `time`, `message_status`) VALUES
(1, 1087020824, 0, 0, 1, 1, 0, 0, 'empty'),
(2, 1716892937, 0, 0, 3, 2, 0, 0, 'empty'),
(3, 1393817581, 0, 0, 3, 1, 0, 0, 'empty');

-- --------------------------------------------------------

--
-- Table structure for table `instant_deliveries`
--

CREATE TABLE `instant_deliveries` (
  `id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `enable` int(10) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instant_deliveries`
--

INSERT INTO `instant_deliveries` (`id`, `proposal_id`, `enable`, `message`, `file`, `isS3`) VALUES
(1, 1, 1, 'Deal Message', 'bg_1596384610.jpg', 0),
(2, 2, 0, 'proposal Message', 'bg_1596385924.jpg', 0),
(3, 3, 1, 'I will make you an awesome logo', '6bandwale_1596611271.png', 0),
(4, 4, 0, 'No', 'Screenshot-2014-11-11-20.26_1596543524.png', 0),
(5, 5, 0, 'Are you lonely? looking for love; searching for a connection, but repeatedly get rejected. \r\n\r\nAre you unsuccessful in keeping a relationship for up to, say, a week? Does love seem like a myth to you? Are you so lost, and saddened by the thought that you might spend the rest of your life ... Alone.\r\n\r\nIf your answer is yes to any of the above, you are in the right place.\r\n\r\nI house a unique set of skills that allows me, no, that completely equips me to trigger a change; help you find and keep that special connection. That special someone - that special love. I can make it such that you find someone that...their every touch, warmth, smell, and every single part of them will be all you think about. With me, you are guaranteed to find love.', 'silhouette-photography-of-man-and-woman-1759823_1576257266_1596878186.png', 0),
(6, 6, 0, '', '', 0),
(7, 7, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '1200px-Arabic-Language-Flag.svg_1598280953.png', 0),
(8, 8, 1, 'My E-book contains many valuable and insightful knowledge on best business practices and steps to becoming an incrdedible entrporenuer. I am a writer by profession with so many successes under my belt. Please read my e-book and tell me what you think.', '1200px-Arabic-Language-Flag.svg_1598281182.png', 0),
(9, 9, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_bank`
--

CREATE TABLE `knowledge_bank` (
  `article_id` int(11) NOT NULL,
  `language_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `article_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `right_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bottom_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `right_image_s3` int(10) NOT NULL,
  `top_image_s3` int(10) NOT NULL,
  `bottom_image_s3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_lang` int(10) NOT NULL,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `image`, `default_lang`, `direction`, `isS3`) VALUES
(1, 'English', 'english.png', 1, 'left', 0),
(2, 'العربية', '1200px-Arabic-Language-Flag.svg.png', 0, 'right', 0);

-- --------------------------------------------------------

--
-- Table structure for table `languages_relation`
--

CREATE TABLE `languages_relation` (
  `relation_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `language_id` int(11) NOT NULL,
  `language_level` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages_relation`
--

INSERT INTO `languages_relation` (`relation_id`, `seller_id`, `language_id`, `language_level`) VALUES
(1, 2, 1, 'basic'),
(3, 3, 2, 'Fluent'),
(5, 3, 3, 'Fluent'),
(6, 1, 2, 'basic');

-- --------------------------------------------------------

--
-- Table structure for table `messages_offers`
--

CREATE TABLE `messages_offers` (
  `offer_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_time` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `my_buyers`
--

CREATE TABLE `my_buyers` (
  `id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `completed_orders` int(10) NOT NULL,
  `amount_spent` int(10) NOT NULL,
  `last_order_date` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_buyers`
--

INSERT INTO `my_buyers` (`id`, `seller_id`, `buyer_id`, `completed_orders`, `amount_spent`, `last_order_date`) VALUES
(1, 2, 3, 1, 10, 'August 17, 2020'),
(2, 1, 3, 1, 10, 'September 04, 2020');

-- --------------------------------------------------------

--
-- Table structure for table `my_sellers`
--

CREATE TABLE `my_sellers` (
  `id` int(10) NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `completed_orders` int(10) NOT NULL,
  `amount_spent` int(10) NOT NULL,
  `last_order_date` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_sellers`
--

INSERT INTO `my_sellers` (`id`, `buyer_id`, `seller_id`, `completed_orders`, `amount_spent`, `last_order_date`) VALUES
(1, 3, 2, 1, 10, 'August 17, 2020'),
(2, 3, 1, 1, 10, 'September 04, 2020');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `sender_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int(10) NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bell` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `receiver_id`, `sender_id`, `order_id`, `reason`, `date`, `bell`, `status`) VALUES
(1, 1, 'admin_1', 2, 'approved', 'August 02, 2020', 'over', 'unread'),
(2, 2, 'admin_1', 3, 'approved', 'August 04, 2020', 'over', 'unread'),
(3, 2, 'admin_1', 4, 'approved', 'August 04, 2020', 'over', 'unread'),
(4, 2, 'admin_1', 5, 'approved', 'August 08, 2020', 'over', 'unread'),
(5, 2, '3', 1, 'order', 'August 17, 2020', 'over', 'read'),
(6, 3, '2', 1, 'order_message', '06:43: August 17, 2020', 'over', 'read'),
(7, 2, '3', 1, 'order_message', '06:44: August 17, 2020', 'over', 'read'),
(8, 3, '2', 1, 'order_delivered', 'August 17, 2020', 'over', 'read'),
(9, 2, '3', 1, 'order_completed', 'August 17, 2020', 'over', 'unread'),
(10, 2, '3', 1, 'buyer_order_review', 'August 17, 2020', 'over', 'read'),
(11, 3, '2', 1, 'seller_order_review', 'August 17, 2020', 'over', 'read'),
(12, 3, 'admin_1', 1, 'approved_request', 'August 24, 2020', 'over', 'read'),
(13, 3, 'admin_1', 6, 'approved', 'August 24, 2020', 'over', 'unread'),
(14, 3, 'admin_1', 8, 'approved', 'August 24, 2020', 'over', 'unread'),
(15, 3, 'admin_1', 7, 'approved', 'August 24, 2020', 'over', 'unread'),
(16, 3, 'admin_1', 9, 'approved', 'August 24, 2020', 'over', 'read'),
(17, 1, '3', 2, 'order', 'September 04, 2020', 'over', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `order_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_duration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_time` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_revisions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_revisions_used` int(10) NOT NULL,
  `order_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` int(10) NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `order_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `order_qty` int(10) NOT NULL,
  `order_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `order_active` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `complete_time` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_number`, `order_duration`, `order_time`, `order_date`, `order_revisions`, `order_revisions_used`, `order_description`, `seller_id`, `buyer_id`, `proposal_id`, `order_price`, `order_qty`, `order_fee`, `order_active`, `complete_time`, `order_status`) VALUES
(1, '1401253045', '2 Days', 'Aug 19, 2020 11:44:30', 'August 17, 2020', '2', 0, '', 2, 3, 5, '10', 1, '0', 'no', 'Aug 19, 2020 06:47:24', 'completed'),
(2, '1038972185', '1 Day', 'Sep 05, 2020 10:38:19', 'September 04, 2020', '0', 0, '', 1, 3, 2, '10', 1, '0', 'yes', '', 'progress');

-- --------------------------------------------------------

--
-- Table structure for table `order_conversations`
--

CREATE TABLE `order_conversations` (
  `c_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `watermark` int(10) NOT NULL,
  `watermark_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_conversations`
--

INSERT INTO `order_conversations` (`c_id`, `order_id`, `sender_id`, `message`, `file`, `date`, `reason`, `status`, `watermark`, `watermark_file`, `isS3`) VALUES
(1, 1, 2, 'start', '', '06:43: August 17, 2020', '', 'message', 0, '', 0),
(2, 1, 3, 'start', '', '06:44: August 17, 2020', '', 'message', 0, '', 0),
(3, 1, 2, 'done', '', '06:08: August 17 2020', '', 'message', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_extras`
--

CREATE TABLE `order_extras` (
  `id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_tips`
--

CREATE TABLE `order_tips` (
  `id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package_attributes`
--

CREATE TABLE `package_attributes` (
  `attribute_id` int(100) NOT NULL,
  `proposal_id` int(100) NOT NULL,
  `package_id` int(100) NOT NULL,
  `attribute_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_attributes`
--

INSERT INTO `package_attributes` (`attribute_id`, `proposal_id`, `package_id`, `attribute_name`, `attribute_value`) VALUES
(1, 5, 13, 'Last Price', '4'),
(2, 5, 14, 'Last Price', '5'),
(3, 5, 15, 'Last Price', '10');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(10) NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `url`, `content`, `language_id`, `date`) VALUES
(2, 'About Us', 'about', '\n<p>Soon</p>\n', 1, 'August 24, 2020'),
(3, 'عنا', '%D8%B9%D9%86%D8%A7', '\n<p>&#1602;&#1585;&#1610;&#1576;&#1575;</p>\n', 2, 'August 24, 2020'),
(4, 'Contact us', 'contact', '\n<p>soon</p>\n', 1, 'August 24, 2020'),
(5, 'تواصل معنا', '%D8%AA%D9%88%D8%A7%D8%B5%D9%84', '\n<p>&#1602;&#1585;&#1610;&#1576;&#1575;</p>\n', 2, 'August 24, 2020');

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(10) NOT NULL,
  `min_proposal_price` int(10) NOT NULL,
  `comission_percentage` int(10) NOT NULL,
  `days_before_withdraw` int(10) NOT NULL,
  `withdrawal_limit` int(10) NOT NULL,
  `featured_fee` int(10) NOT NULL,
  `featured_duration` int(10) NOT NULL,
  `featured_proposal_while_creating` int(10) NOT NULL,
  `processing_feeType` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processing_fee` int(10) NOT NULL,
  `enable_paypal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_currency_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_app_client_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_app_client_secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_sandbox` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_payoneer` int(10) NOT NULL,
  `enable_stripe` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_secret_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_publishable_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_currency_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_dusupay` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_sandbox` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_currency_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_api_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_secret_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_webhook_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_payout_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_payout_provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_payza` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payza_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payza_currency_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payza_test` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_coinpayments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coinpayments_merchant_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coinpayments_currency_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coinpayments_withdrawal_fee` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coinpayments_public_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coinpayments_private_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coinpayments_ipn_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_paystack` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack_public_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_mercadopago` int(10) NOT NULL,
  `mercadopago_access_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mercadopago_currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mercadopago_sandbox` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `min_proposal_price`, `comission_percentage`, `days_before_withdraw`, `withdrawal_limit`, `featured_fee`, `featured_duration`, `featured_proposal_while_creating`, `processing_feeType`, `processing_fee`, `enable_paypal`, `paypal_email`, `paypal_currency_code`, `paypal_app_client_id`, `paypal_app_client_secret`, `paypal_sandbox`, `enable_payoneer`, `enable_stripe`, `stripe_secret_key`, `stripe_publishable_key`, `stripe_currency_code`, `enable_dusupay`, `dusupay_sandbox`, `dusupay_currency_code`, `dusupay_api_key`, `dusupay_secret_key`, `dusupay_webhook_hash`, `dusupay_method`, `dusupay_provider_id`, `dusupay_payout_method`, `dusupay_payout_provider_id`, `enable_payza`, `payza_email`, `payza_currency_code`, `payza_test`, `enable_coinpayments`, `coinpayments_merchant_id`, `coinpayments_currency_code`, `coinpayments_withdrawal_fee`, `coinpayments_public_key`, `coinpayments_private_key`, `coinpayments_ipn_secret`, `enable_paystack`, `paystack_public_key`, `paystack_secret_key`, `enable_mercadopago`, `mercadopago_access_token`, `mercadopago_currency`, `mercadopago_sandbox`) VALUES
(1, 5, 12, 1, 5, 10, 1, 1, 'fixed', 2, 'no', '', '', '', '', 'on', 1, 'no', '', '', '', 'no', 'on', '', '', '', '', '', '', '', '', 'no', '', 'USD', 'off', 'no', '', '', 'sender', '', '', '', 'no', '', '', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` int(255) NOT NULL,
  `seller_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(10) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `cat_id`, `author`, `image`, `content`, `date_time`, `isS3`, `language_id`, `status`) VALUES
(1, '21 Tips for First-Time Freelancers', '1', 'Black Smith', 'Freelancer_10-24-18_Holy_Grail.jpg', '\n<p><b>1 - Understand your target market</b></p><p>Before you can start to find freelance work, you need to make sure you know who your potential clients will be. Understanding your prospective client base will help you to plan your pricing structure, implement your marketing strategy and focus your time and energy.</p><p><br></p><p><b>2 - Be flexible</b></p><p>When you set up as a solopreneur, you might have a fixed view on how you will be running your micro-business. Our advice is to be as flexible as possible at the beginning. Services that you thought would be wildly popular may turn out to be duds, whereas others might be surprisingly in demand.</p><p><br></p><p><b>3 - Be clear on costs</b></p><p>Make sure you have a clear idea about your costs and pricing structure. Will you be charging on an hourly or project basis? Do your market research to ensure that you are in line with your competitors.</p><p><br></p><p><b>4 - Get compliant</b></p><p>Going freelance is a huge step so don&rsquo;t make things harder in the future by skipping important steps at the start. Whether you&rsquo;re setting up as a sole trader or a business, make sure you are registered with the correct governing bodies.</p><p><b>5 - Build a website</b></p><p>Having a website provides an invaluable window into your business. You can build your own using simple templates from sites like Wix or Squarespace.</p><p><br></p><p><b>6 - Make a good first impression</b></p><p>Having well-presented and engaging social media accounts is a must. It&rsquo;s likely to be one of the first things that your potential clients will look at.</p><p><br></p><p><b>7 - Go to market</b></p><p>Be confident in your skills and abilities. Don&rsquo;t be afraid to put yourself out there on freelance platforms and freelance job websites.</p><p><br></p><p><b>8 - Stay motivated</b></p><p>Set yourself goals to stay motivated. These could be financial such as &lsquo;I want to be earning &pound;X per month&rsquo;, or it could be to &lsquo;reach 1000 followers on Instagram&rsquo;. When your focus is wavering, remind yourself of your targets</p><p><br></p><p><b>9 - Get busy</b></p><p>Design yourself a professional stack of business cards on a site like Canva and keep some in every pocket or handbag. You never know when a freelancing opportunity might arise!</p><p><br></p><p><b>10 - Investigate E-Residency</b></p><p>Are you encountering too much red tape in your home country? Consider joining the digital nation and registering as an e-resident in Estonia. Being a cross-border business may help you to grasp new and unforeseen opportunities.</p><p><br></p><p><b>11 - Consider Xolo</b></p><p>Don&rsquo;t get tied up with paperwork and consider using a supportive freelance platform like Xolo. It means you don&rsquo;t have to become an accountant or a lawyer as well as a freelancer &mdash; Xolo will take care of all that for you.</p><p><br></p><p><b>12 - Don&rsquo;t be a jack of all trades</b></p><p>Solopreneurs who focus on a small set of freelance services are likely to out-compete those who can do everything. Become an expert in your field.</p><p><br></p><p><b>13 - Stay knowledgeable</b></p><p>Stay up to date with new trends by reading relevant trade media, engaging with fellow freelancers on LinkedIn, attending sector-specific networking events or even doing some online training courses through sites like SkillShare and Digital Strategy School.</p><p><br></p><p><b>14 - Register with freelance job websites</b></p><p>There are many jobs portals and freelance job websites out there like Bark, Upwork or People Per Hour. Start responding to people&rsquo;s requests and those freelancing jobs will soon come pouring in.</p><p><br></p><p><b>15 - Start networking</b></p><p>Becoming a freelancer does have some drawbacks like feeling isolated and missing your office &lsquo;crew&rsquo;. Find a local networking group who you can share ideas with and get support from. Not one in your local area? Set up your own!</p><p><br></p><p><b>16 - Get organised</b></p><p>Make sure you are managing your time effectively, tracking those all-important leads and keeping on top of invoices using one of the many organisational freelance platforms out there like QuickBooks, Todoist and Pipedrive.</p><p><br></p><p><b>17 - Focus on relationships</b></p><p>Winning new business can be exhilarating and rewarding but don&rsquo;t neglect clients who you are already working with. Build your relationships and make every client feel like a priority.</p><p><br></p><p><b>18 - Set work boundaries</b></p><p>Being a solopreneur can give you much more flexibility with your family and friends. However, it can also result in late nights and unproductivity. Try to specify when you will be working and stick to it.</p><p><br></p><p><b>19 - Be upfront</b></p><p>Most clients will be genuine but protect yourself by asking for upfront deposits before you start big projects.</p><p><br></p><p><b>20 - Find your space</b></p><p>This could be your kitchen table, your local library, a cosy coffee shop or a fancy coworking space. Wherever it is, make it productive so you can provide the best possible freelance services.</p><p><br></p><p><b>21 - Try, try and try again</b></p><p>Becoming a freelancer has many ups and downs. Some days will be hard but learn from them and keep going. The journey to becoming a successful solopreneur will not be without its challenges!</p>\n', 'August 16, 2020', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_creator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `cat_name`, `cat_image`, `cat_creator`, `date_time`, `isS3`) VALUES
(1, 'Miver Tips', 'box.png', '', 'August 16, 2020', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(10) NOT NULL,
  `post_id` int(100) NOT NULL,
  `seller_id` int(100) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

CREATE TABLE `proposals` (
  `proposal_id` int(10) NOT NULL,
  `proposal_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_cat_id` int(10) NOT NULL,
  `proposal_child_id` int(10) NOT NULL,
  `proposal_price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_img1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_img2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_img3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_img4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_video` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_img1_s3` int(10) NOT NULL,
  `proposal_img2_s3` int(10) NOT NULL,
  `proposal_img3_s3` int(10) NOT NULL,
  `proposal_img4_s3` int(10) NOT NULL,
  `proposal_video_s3` int(10) NOT NULL,
  `proposal_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_instruction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_tags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_enable_referrals` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_referral_money` int(10) NOT NULL,
  `proposal_referral_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_featured` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_toprated` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_seller_id` int(10) NOT NULL,
  `delivery_id` int(10) NOT NULL,
  `proposal_revisions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `proposal_rating` int(11) NOT NULL,
  `proposal_views` int(10) NOT NULL,
  `proposal_status` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proposals`
--

INSERT INTO `proposals` (`proposal_id`, `proposal_title`, `proposal_url`, `proposal_cat_id`, `proposal_child_id`, `proposal_price`, `proposal_img1`, `proposal_img2`, `proposal_img3`, `proposal_img4`, `proposal_video`, `proposal_img1_s3`, `proposal_img2_s3`, `proposal_img3_s3`, `proposal_img4_s3`, `proposal_video_s3`, `proposal_desc`, `buyer_instruction`, `proposal_tags`, `proposal_enable_referrals`, `proposal_referral_money`, `proposal_referral_code`, `proposal_featured`, `proposal_toprated`, `proposal_seller_id`, `delivery_id`, `proposal_revisions`, `level_id`, `language_id`, `proposal_rating`, `proposal_views`, `proposal_status`) VALUES
(1, 'Logo test proposal ', 'logo-test-proposal', 1, 13, '20', 'bg_1596384640.png', '', '', '', '', 0, 0, 0, 0, 0, '\n<p>Test</p>\n', '', 'HTML', 'no', 0, '', 'no', '', 1, 1, '1', 1, 1, 0, 0, 'draft'),
(2, 'Proposal  test', 'proposal-test', 2, 17, '0', 'bg_1596385953.png', '', '', '', '', 0, 0, 0, 0, 0, '\n<p>proposals&nbsp;<br></p><h5 class=\"font-weight-normal\" style=\'font-family: \"Graphik Webfont\", -apple-system, BlinkMacSystemFont, Roboto, \"Droid Sans\", \"Segoe UI\", Helvetica, Arial, sans-serif; color: rgb(34, 34, 34);\'>Description</h5>\n', '', 'test', 'no', 0, '', 'yes', '', 1, 1, '0', 1, 1, 0, 82, 'active'),
(3, 'I will make you an awesome logo', 'i-will-make-you-an-awesome-logo', 1, 1, '12', '6bandwale_1596611295.png', '', 'vid_1596611300.png', '', '', 0, 0, 0, 0, 0, '\n<p>Test</p>\n', '', 'test ,bestproject', 'no', 0, '', 'yes', '', 2, 1, '0', 1, 1, 0, 230, 'active'),
(4, 'I will design you a logo ', 'i-will-design-you-a-logo', 3, 37, '0', 'Screenshot-2014-11-11-20.26_1596543561.png', '', '', '', '', 0, 0, 0, 0, 0, '\n<h5 class=\"font-weight-normal\" style=\"color: rgb(34, 34, 34);\">Test Description</h5><h5 class=\"font-weight-normal\" style=\"color: rgb(34, 34, 34);\"><br></h5>\n', 'Tell your buyer what you need to get started (Optional)\r\n', 'Https', 'no', 0, '', 'yes', '', 2, 1, '0', 1, 1, 0, 50, 'active'),
(5, 'Configuracoin de Windows sErver', 'configuracoin-de-windows-server', 1, 9, '0', 'silhouette-photography-of-man-and-woman-1759823_1576257266_1596878347.png', 'Screenshot_2_1596878373.png', 'Screenshot_3_1596878383.png', 'Screenshot_2_1596878396.png', '', 0, 0, 0, 0, 0, '\n<p style=\"font-size: 16px; color: rgb(34, 34, 34); line-height: 28px !important;\">I WILL BE YOUR&nbsp;<span style=\"background-color: rgb(255, 255, 0); line-height: 28px !important;\">EBOOK WRITER AND CONTENT WRITING</span></p><p style=\"font-size: 16px; color: rgb(34, 34, 34); line-height: 28px !important;\">Do you wish to have your book written by a professional ghostwriter? You know your book deserves great content. Search no further!</p><p style=\"font-size: 16px; color: rgb(34, 34, 34); line-height: 28px !important;\">My name is Ellen, I am a seasoned freelance writer with a great of experience writing ebooks and that makes me the perfect ebook writer for your ebook writings. I will write a well detailed and professionally research ebook.&nbsp;</p><p style=\"font-size: 16px; color: rgb(34, 34, 34); line-height: 28px !important;\">My ebook writing gig has the following perks:</p>\n', 'My name is Ellen, I am a seasoned freelance writer with a great of experience writing ebooks and that makes me the perfect ebook writer for your ebook writings. I will write a well detailed and professionally research ebook. ', 'test,html,new,project', 'yes', 20, '', 'yes', '1', 2, 1, '0', 1, 1, 5, 200, 'active'),
(6, 'I Will Record Your Brazilian Portuguese Voice Over', 'i-will-record-your-brazilian-portuguese-voice-over', 9, 49, '0', 'voice-over-1_1598280784.png', '', '', '', '', 0, 0, 0, 0, 0, '\n<p><span style=\'color: rgb(34, 34, 34); font-family: -apple-system, BlinkMacSystemFont, Roboto, \"Droid Sans\", \"Segoe UI\", Helvetica, Arial, sans-serif; font-size: 16px;\'>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span><br></p>\n', 'Send me your script', 'voice', 'no', 0, '', 'yes', '1', 3, 1, '0', 1, 2, 0, 7, 'active'),
(7, 'I Will Create A Professional Custom Explainer Video', 'i-will-create-a-professional-custom-explainer-video', 4, 41, '10', 'videosales-1_1598281017.png', '', '', '', '', 0, 0, 0, 0, 0, '\n<p><span style=\'color: rgb(34, 34, 34); font-family: -apple-system, BlinkMacSystemFont, Roboto, \"Droid Sans\", \"Segoe UI\", Helvetica, Arial, sans-serif; font-size: 16px;\'>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span><br></p>\n', '', 'video', 'yes', 10, '', 'yes', '1', 3, 1, '2', 1, 2, 0, 0, 'active'),
(8, 'E-book on how to be a successful entreprenuer', 'e-book-on-how-to-be-a-successful-entreprenuer', 3, 36, '20', 'fall-3723738_1920_1588260783_1598281227.png', '', '', '', '', 0, 0, 0, 0, 0, '\n<p><span style=\'color: rgb(34, 34, 34); font-family: -apple-system, BlinkMacSystemFont, Roboto, \"Droid Sans\", \"Segoe UI\", Helvetica, Arial, sans-serif; font-size: 16px;\'>My E-book contains many valuable and insightful knowledge on best business practices and steps to becoming an incrdedible entrporenuer. I am a writer by profession with so many successes under my belt. Please read my e-book and tell me what you think.</span><br></p>\n', '', 'Writing', 'no', 0, '', 'yes', '1', 3, 3, '8', 1, 2, 0, 17, 'active'),
(9, 'I will design a perfect logo for your company', 'i-will-design-a-perfect-logo-for-your-company', 1, 1, '0', 'logo-1_1598281529.png', '', '', '', '', 0, 0, 0, 0, 0, '\n<p style=\'font-size: 16px; color: rgb(34, 34, 34); font-family: -apple-system, BlinkMacSystemFont, Roboto, \"Droid Sans\", \"Segoe UI\", Helvetica, Arial, sans-serif; line-height: 28px !important;\'><span style=\'font-size: 14px; color: rgb(85, 85, 85); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 28px !important;\'>Hello friends! I will convert your photos into beautiful artistic Grunge painting effect.</span><br style=\'font-size: 14px; color: rgb(85, 85, 85); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 28px !important;\'><br style=\'font-size: 14px; color: rgb(85, 85, 85); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 28px !important;\'></p><div style=\'font-size: 14px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 28px !important;\'><br style=\"line-height: 28px !important; font-size: 16px !important;\"></div><div style=\'font-size: 14px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 28px !important;\'><span style=\'font-family: ProximaNova, \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 28px !important; font-size: 16px !important;\'>Hello friends! I will convert your photos into beautiful artistic Grunge painting effect.</span><br style=\'font-family: ProximaNova, \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 28px !important; font-size: 16px !important;\'><br style=\'font-family: ProximaNova, \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 28px !important; font-size: 16px !important;\'><div style=\'border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: ProximaNova, \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 28px !important; font-size: 16px !important;\'>Here you can sent me your favorite photo</div><div style=\'border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: ProximaNova, \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 28px !important; font-size: 16px !important;\'>&nbsp;of portrait or landscape or your pet</div><div style=\'border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: ProximaNova, \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 28px !important; font-size: 16px !important;\'>and I will draw a beautiful&nbsp; artistic&nbsp; Draw</div><div style=\'border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: ProximaNova, \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 28px !important; font-size: 16px !important;\'>&nbsp;painting .The painting&nbsp; style is like the pictures above,&nbsp;<br style=\"line-height: 28px !important;\"><br style=\"line-height: 28px !important;\"><div style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; line-height: 28px !important;\">Please make sure that the photo you send is of high resolution.</div><div style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; line-height: 28px !important;\">The final water colored photo will be sent in JPG / PNG / TIFF / PSD format. (High resolution).</div></div></div>\n', 'Ideas about your logo', 'logo', 'yes', 10, '', 'yes', '1', 3, 1, '0', 1, 2, 0, 4, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `proposals_extras`
--

CREATE TABLE `proposals_extras` (
  `id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proposals_extras`
--

INSERT INTO `proposals_extras` (`id`, `proposal_id`, `name`, `price`) VALUES
(1, 6, 'HD quality', 10),
(2, 6, 'FHD quality', 20),
(3, 6, 'Clear Voice', 50),
(4, 7, 'deliver same day', 10),
(5, 8, 'full pages', 30),
(6, 9, 'PSD', 20);

-- --------------------------------------------------------

--
-- Table structure for table `proposals_faq`
--

CREATE TABLE `proposals_faq` (
  `id` int(10) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proposals_faq`
--

INSERT INTO `proposals_faq` (`id`, `proposal_id`, `title`, `content`) VALUES
(1, 5, 'qus', 'ans'),
(2, 5, 'qus 1', 'ans 1'),
(3, 6, 'Is it Clear?', 'Yes'),
(4, 6, 'What extensions are the records?', 'MP3 and WAV'),
(5, 7, 'Is it Clear?', 'yes'),
(6, 9, 'Is it Clear?', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `proposal_modifications`
--

CREATE TABLE `proposal_modifications` (
  `modification_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `modification_message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proposal_packages`
--

CREATE TABLE `proposal_packages` (
  `package_id` int(100) NOT NULL,
  `proposal_id` int(100) NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proposal_packages`
--

INSERT INTO `proposal_packages` (`package_id`, `proposal_id`, `package_name`, `description`, `revisions`, `delivery_time`, `price`) VALUES
(1, 1, 'Basic', '', '0', '1', '5'),
(2, 1, 'Standard', '', '0', '1', '10'),
(3, 1, 'Advance', '', '0', '1', '15'),
(4, 2, 'Basic', '', '0', '1', '5'),
(5, 2, 'Standard', '', '0', '1', '10'),
(6, 2, 'Advance', '', '0', '1', '15'),
(7, 3, 'Basic', '', '0', '1', '5'),
(8, 3, 'Standard', '', '0', '1', '10'),
(9, 3, 'Advance', '', '0', '1', '15'),
(10, 4, 'Basic', '', '0', '1', '5'),
(11, 4, 'Standard', '', '0', '1', '10'),
(12, 4, 'Advance', '', '0', '1', '15'),
(13, 5, 'Basic', '', '1', '', '5'),
(14, 5, 'Standard', '', '2', '2', '10'),
(15, 5, 'Advance', '', '3', '1', '15'),
(16, 6, 'Basic', '15 sec', '0', '1', '5'),
(17, 6, 'Standard', '30 sec', '0', '1', '10'),
(18, 6, 'Advance', '1 min', '0', '1', '15'),
(19, 7, 'Basic', '', '0', '1', '5'),
(20, 7, 'Standard', '', '0', '1', '10'),
(21, 7, 'Advance', '', '0', '1', '15'),
(22, 8, 'Basic', '', '0', '1', '5'),
(23, 8, 'Standard', '', '0', '1', '10'),
(24, 8, 'Advance', '', '0', '1', '15'),
(25, 9, 'Basic', '1 simple logo', '10', '1', '5'),
(26, 9, 'Standard', '3 logos', '10', '1', '10'),
(27, 9, 'Advance', '5 professional logos', '10', '1', '15');

-- --------------------------------------------------------

--
-- Table structure for table `proposal_referrals`
--

CREATE TABLE `proposal_referrals` (
  `referral_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `order_id` int(100) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `referrer_id` int(10) NOT NULL,
  `buyer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchase_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processing_fee` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`purchase_id`, `seller_id`, `order_id`, `reason`, `amount`, `processing_fee`, `method`, `date`) VALUES
(1, 3, 1, 'order', '10', '', 'shopping_balance', 'August 17, 2020'),
(2, 3, 6, 'featured_listing', '10', '', 'shopping_balance', 'August 24, 2020'),
(3, 3, 7, 'featured_listing', '10', '', 'shopping_balance', 'August 24, 2020'),
(4, 3, 8, 'featured_listing', '10', '', 'shopping_balance', 'August 24, 2020'),
(5, 3, 9, 'featured_listing', '10', '', 'shopping_balance', 'August 24, 2020'),
(6, 3, 2, 'order', '10', '', 'shopping_balance', 'September 04, 2020');

-- --------------------------------------------------------

--
-- Table structure for table `recent_proposals`
--

CREATE TABLE `recent_proposals` (
  `recent_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recent_proposals`
--

INSERT INTO `recent_proposals` (`recent_id`, `seller_id`, `proposal_id`) VALUES
(59, 1, 4),
(77, 3, 5),
(81, 3, 2),
(83, 3, 3),
(84, 3, 4),
(93, 1, 8),
(96, 1, 3),
(97, 1, 9),
(99, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `referral_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `referred_id` int(10) NOT NULL,
  `comission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) NOT NULL,
  `reporter_id` int(10) NOT NULL,
  `content_id` int(10) NOT NULL,
  `content_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revenues`
--

CREATE TABLE `revenues` (
  `revenue_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revenues`
--

INSERT INTO `revenues` (`revenue_id`, `seller_id`, `order_id`, `reason`, `amount`, `date`, `end_date`, `status`) VALUES
(1, 2, 1, 'order', '8', 'August 18, 2020', 'August 18, 2020 06:50:27', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `work_id` int(10) NOT NULL,
  `payment_method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processing_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `buyer_id`, `work_id`, `payment_method`, `amount`, `profit`, `processing_fee`, `action`, `date`) VALUES
(1, 3, 0, 'shopping_balance', '10', '0', '0', 'cart', '2020-08-17'),
(2, 3, 1, 'shopping_balance', '10', '2', '0', 'order_completed', '2020-08-17'),
(3, 3, 6, 'shopping_balance', '10', '10', '0', 'featured_fee', '2020-08-24'),
(4, 3, 7, 'shopping_balance', '10', '10', '0', 'featured_fee', '2020-08-24'),
(5, 3, 8, 'shopping_balance', '10', '10', '0', 'featured_fee', '2020-08-24'),
(6, 3, 9, 'shopping_balance', '10', '10', '0', 'featured_fee', '2020-08-24'),
(7, 3, 2, 'shopping_balance', '10', '0', '0', 'order', '2020-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `section_boxes`
--

CREATE TABLE `section_boxes` (
  `box_id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `box_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `box_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `box_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_boxes`
--

INSERT INTO `section_boxes` (`box_id`, `language_id`, `box_title`, `box_desc`, `box_image`, `isS3`) VALUES
(4, 1, 'Your Terms', 'Whatever you need to simplify your to do list, no&lt;br&gt; matter your budget.\r\n', 'time.png', 0),
(5, 1, 'Your Timeline', 'Find services based on your goals and deadlines,&lt;br&gt; its that simple.', 'desk.png', 0),
(6, 1, 'Your Safety', 'Your payment is always secure, GigToDo is built to protect your peace of mind.', 'tv.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `seller_id` int(10) NOT NULL,
  `seller_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_wallet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_payouts` int(100) NOT NULL,
  `seller_paypal_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_payoneer_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_m_account_number` bigint(100) NOT NULL,
  `seller_m_account_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_pass` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_cover_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_image_s3` int(10) NOT NULL,
  `seller_cover_image_s3` int(10) NOT NULL,
  `seller_country` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_headline` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_level` int(10) NOT NULL,
  `seller_language` int(10) NOT NULL,
  `seller_recent_delivery` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_rating` int(10) NOT NULL,
  `seller_offers` int(10) NOT NULL,
  `seller_referral` int(10) NOT NULL,
  `seller_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_verification` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_vacation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_vacation_reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_vacation_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_register_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_sound` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `enable_notifications` int(10) NOT NULL DEFAULT 1,
  `seller_activity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_timezone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_status` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`seller_id`, `seller_name`, `seller_user_name`, `seller_email`, `seller_wallet`, `seller_payouts`, `seller_paypal_email`, `seller_payoneer_email`, `seller_m_account_number`, `seller_m_account_name`, `seller_pass`, `seller_image`, `seller_cover_image`, `seller_image_s3`, `seller_cover_image_s3`, `seller_country`, `seller_city`, `seller_headline`, `seller_about`, `seller_level`, `seller_language`, `seller_recent_delivery`, `seller_rating`, `seller_offers`, `seller_referral`, `seller_ip`, `seller_verification`, `seller_vacation`, `seller_vacation_reason`, `seller_vacation_message`, `seller_register_date`, `enable_sound`, `enable_notifications`, `seller_activity`, `seller_timezone`, `seller_status`) VALUES
(1, 'Gursewak Singh', 'gursewak', 'iamsewak@gmail.com', '', 0, '', '', 0, '', '$2y$10$SGlzMFtAU7AJpjJQCvLTdex9RqgYSjZRd3CuROfvsQ6NcCXULFUIK', '2_1597141590.png', '', 0, 0, 'Canada', 'BRAMRTON', 'Professional Voice Actress', 'I am a Voice Actress with over 16+ years of experience in everything from video games to phone systems to explainer videos to children\'s books. I am originally from the South East of England and have a natural British accent, as well as a Standard American accent from living in the US for 15 years.', 1, 1, 'none', 0, 10, 770598295, '103.41.26.44', 'ok', 'off', '', '', 'August 02, 2020', 'yes', 1, '2020-09-18 03:59:54', 'Asia/Kolkata', 'online'),
(2, 'Gursewak Singh', 'gursewakss', 'iamsexwaktest@gmail.com', '', 0, '', '', 0, '', '$2y$10$2CWmwQXqLqBAC3hrBc6HQ.DEX1Axnbm4QEO/lsUcNzNeb1ZpUtl9y', 'dublin-sprinters-desat_0 (1)_1596545816.png', '', 0, 0, 'India', 'Ludhiana', '', '', 1, 1, 'August 17, 2020', 100, 10, 1296951797, '::1', 'ok', 'off', '', '', 'August 04, 2020', 'yes', 1, '2020-08-17 06:52:05', 'Asia/Kolkata', 'offline'),
(3, 'S1', 's1', 'dc1@yopmail.com', '', 0, '', '', 0, '', '$2y$10$iq4JlqiV/9TBiIncqCoztujjnRsyoRrFEqft8e4E83GH9X7ZV2FMq', 'adult-beautiful-blur-2590575_1565298919_1566178756_1589930653_1598281618.png', '', 0, 0, 'Saudi Arabia', 'Riyadh', '', '', 1, 2, 'none', 0, 10, 612234353, '78.95.143.199', 'ok', 'off', '', '', 'August 13, 2020', 'yes', 1, '2020-09-14 09:43:15', 'Europe/Helsinki', 'online');

-- --------------------------------------------------------

--
-- Table structure for table `seller_accounts`
--

CREATE TABLE `seller_accounts` (
  `account_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `withdrawn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `current_balance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `used_purchases` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `pending_clearance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `month_earnings` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_accounts`
--

INSERT INTO `seller_accounts` (`account_id`, `seller_id`, `withdrawn`, `current_balance`, `used_purchases`, `pending_clearance`, `month_earnings`) VALUES
(1, 1, '0', '0', '0', '0', '0'),
(2, 2, '0', '0', '0', '8', '8'),
(3, 3, '0', '9940', '60', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `seller_languages`
--

CREATE TABLE `seller_languages` (
  `language_id` int(10) NOT NULL,
  `language_title` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_languages`
--

INSERT INTO `seller_languages` (`language_id`, `language_title`) VALUES
(1, 'Punjabi'),
(2, 'العربية'),
(3, 'English'),
(4, 'Punjabi');

-- --------------------------------------------------------

--
-- Table structure for table `seller_levels`
--

CREATE TABLE `seller_levels` (
  `level_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_levels`
--

INSERT INTO `seller_levels` (`level_id`) VALUES
(1),
(2),
(3),
(4);

-- --------------------------------------------------------

--
-- Table structure for table `seller_levels_meta`
--

CREATE TABLE `seller_levels_meta` (
  `id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `level_id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_levels_meta`
--

INSERT INTO `seller_levels_meta` (`id`, `language_id`, `level_id`, `title`) VALUES
(1, 1, 1, 'New Seller'),
(2, 1, 2, 'Level One'),
(3, 1, 3, 'Level Two'),
(4, 1, 4, 'Top Rated A');

-- --------------------------------------------------------

--
-- Table structure for table `seller_payment_settings`
--

CREATE TABLE `seller_payment_settings` (
  `id` int(10) NOT NULL,
  `level_id` int(10) NOT NULL,
  `commission_percentage` int(10) NOT NULL,
  `payout_day` int(100) NOT NULL,
  `payout_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payout_anyday` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_payment_settings`
--

INSERT INTO `seller_payment_settings` (`id`, `level_id`, `commission_percentage`, `payout_day`, `payout_time`, `payout_anyday`) VALUES
(1, 1, 20, 26, '15:00', 0),
(2, 2, 15, 20, '01:00', 0),
(3, 3, 10, 15, '01:00', 0),
(4, 4, 5, 1, '03:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seller_reviews`
--

CREATE TABLE `seller_reviews` (
  `review_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `review_seller_id` int(10) NOT NULL,
  `seller_rating` int(10) NOT NULL,
  `seller_review` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_reviews`
--

INSERT INTO `seller_reviews` (`review_id`, `order_id`, `review_seller_id`, `seller_rating`, `seller_review`) VALUES
(1, 1, 2, 5, 'happy to work with you');

-- --------------------------------------------------------

--
-- Table structure for table `seller_skills`
--

CREATE TABLE `seller_skills` (
  `skill_id` int(10) NOT NULL,
  `skill_title` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_skills`
--

INSERT INTO `seller_skills` (`skill_id`, `skill_title`) VALUES
(1, 'Html'),
(2, 'Htmlc');

-- --------------------------------------------------------

--
-- Table structure for table `seller_type_status`
--

CREATE TABLE `seller_type_status` (
  `id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `message_group_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_type_status`
--

INSERT INTO `seller_type_status` (`id`, `seller_id`, `message_group_id`, `time`, `status`) VALUES
(1, 1, '1393817581', '2020-09-16 11:33:36', 'untyping');

-- --------------------------------------------------------

--
-- Table structure for table `send_offers`
--

CREATE TABLE `send_offers` (
  `offer_id` int(10) NOT NULL,
  `request_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_time` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_currencies`
--

CREATE TABLE `site_currencies` (
  `id` int(10) NOT NULL,
  `currency_id` int(10) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skills_relation`
--

CREATE TABLE `skills_relation` (
  `relation_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `skill_id` int(10) NOT NULL,
  `skill_level` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills_relation`
--

INSERT INTO `skills_relation` (`relation_id`, `seller_id`, `skill_id`, `skill_level`) VALUES
(2, 3, 1, 'Expert'),
(3, 1, 2, 'Intermediate');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `slide_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slide_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slide_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slide_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `language_id`, `slide_name`, `slide_desc`, `slide_image`, `slide_url`, `isS3`) VALUES
(27, 1, '', '', 'cover-boy.png', 'https://www.pixinal.com', 0),
(32, 1, '', '', 'art-artist-canvas-374054.jpg', 'https://www.pixinal.com', 0),
(33, 1, '', '', 'art-dark-ethnic-1038041.jpg', 'https://www.gigtodo.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `id` int(10) NOT NULL,
  `library` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_smtp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secure` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp_settings`
--

INSERT INTO `smtp_settings` (`id`, `library`, `enable_smtp`, `host`, `port`, `secure`, `username`, `password`) VALUES
(1, 'php_mailer', 'no', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `spam_words`
--

CREATE TABLE `spam_words` (
  `id` int(10) NOT NULL,
  `word` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spam_words`
--

INSERT INTO `spam_words` (`id`, `word`) VALUES
(1, 'PayPal'),
(2, 'payoneer'),
(3, 'pay'),
(4, 'mobile'),
(5, 'contact'),
(6, 'email'),
(7, 'skype'),
(8, 'number'),
(9, '.com'),
(10, 'direct'),
(12, 'Pay'),
(13, 'Poop'),
(15, 'bad word'),
(16, 'siva'),
(17, 'Machi'),
(18, 'city'),
(19, 'facebook');

-- --------------------------------------------------------

--
-- Table structure for table `starred_messages`
--

CREATE TABLE `starred_messages` (
  `id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `message_group_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `ticket_id` int(10) NOT NULL,
  `enquiry_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_rule` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_extras`
--

CREATE TABLE `temp_extras` (
  `id` int(10) NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_orders`
--

CREATE TABLE `temp_orders` (
  `id` int(10) NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `content_id` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_id` int(10) NOT NULL,
  `revisions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minutes` int(10) NOT NULL,
  `video` int(10) NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `term_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `term_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `term_description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `language_id`, `term_title`, `term_link`, `term_description`) VALUES
(1, 1, 'Terms And Conditions', 'Legal-Notice', '\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p><p><br></p><p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p><p><br></p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.</p><p><br></p><p>The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n\r\n\r\n\n'),
(2, 1, 'Refunds Policy', 'refund', '\n<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</span></p><p><span style=\"color: rgb(0, 0, 0);\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p><p><span style=\"color: rgb(0, 0, 0);\">Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</span></p><p><span style=\"color: rgb(0, 0, 0);\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p><p><span style=\"color: rgb(0, 0, 0);\">Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span><br></p>\r\n\r\n\r\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `top_proposals`
--

CREATE TABLE `top_proposals` (
  `id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_proposals`
--

INSERT INTO `top_proposals` (`id`, `proposal_id`) VALUES
(1, 5),
(2, 6),
(3, 8),
(4, 7),
(5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `unread_messages`
--

CREATE TABLE `unread_messages` (
  `id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `message_group_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(10) NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_logs`
--
ALTER TABLE `admin_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_rights`
--
ALTER TABLE `admin_rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement_bar`
--
ALTER TABLE `announcement_bar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_settings`
--
ALTER TABLE `api_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_info`
--
ALTER TABLE `app_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archived_messages`
--
ALTER TABLE `archived_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_cat`
--
ALTER TABLE `article_cat`
  ADD PRIMARY KEY (`article_cat_id`);

--
-- Indexes for table `buyer_requests`
--
ALTER TABLE `buyer_requests`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `buyer_reviews`
--
ALTER TABLE `buyer_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `cart_extras`
--
ALTER TABLE `cart_extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `categories_children`
--
ALTER TABLE `categories_children`
  ADD PRIMARY KEY (`child_id`);

--
-- Indexes for table `cats_meta`
--
ALTER TABLE `cats_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_cats_meta`
--
ALTER TABLE `child_cats_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_support`
--
ALTER TABLE `contact_support`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `contact_support_meta`
--
ALTER TABLE `contact_support_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `coupons_used`
--
ALTER TABLE `coupons_used`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_converter_settings`
--
ALTER TABLE `currency_converter_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_times`
--
ALTER TABLE `delivery_times`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `dusupay_orders`
--
ALTER TABLE `dusupay_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`favourite_id`);

--
-- Indexes for table `featured_proposals`
--
ALTER TABLE `featured_proposals`
  ADD PRIMARY KEY (`featured_id`);

--
-- Indexes for table `footer_links`
--
ALTER TABLE `footer_links`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hide_seller_messages`
--
ALTER TABLE `hide_seller_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_cards`
--
ALTER TABLE `home_cards`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `home_section`
--
ALTER TABLE `home_section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `home_section_slider`
--
ALTER TABLE `home_section_slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `ideas`
--
ALTER TABLE `ideas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbox_messages`
--
ALTER TABLE `inbox_messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `inbox_sellers`
--
ALTER TABLE `inbox_sellers`
  ADD PRIMARY KEY (`inbox_seller_id`);

--
-- Indexes for table `instant_deliveries`
--
ALTER TABLE `instant_deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knowledge_bank`
--
ALTER TABLE `knowledge_bank`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages_relation`
--
ALTER TABLE `languages_relation`
  ADD PRIMARY KEY (`relation_id`);

--
-- Indexes for table `messages_offers`
--
ALTER TABLE `messages_offers`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `my_buyers`
--
ALTER TABLE `my_buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_sellers`
--
ALTER TABLE `my_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_conversations`
--
ALTER TABLE `order_conversations`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `order_extras`
--
ALTER TABLE `order_extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tips`
--
ALTER TABLE `order_tips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_attributes`
--
ALTER TABLE `package_attributes`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposals`
--
ALTER TABLE `proposals`
  ADD PRIMARY KEY (`proposal_id`);

--
-- Indexes for table `proposals_extras`
--
ALTER TABLE `proposals_extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposals_faq`
--
ALTER TABLE `proposals_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposal_modifications`
--
ALTER TABLE `proposal_modifications`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `proposal_packages`
--
ALTER TABLE `proposal_packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `proposal_referrals`
--
ALTER TABLE `proposal_referrals`
  ADD PRIMARY KEY (`referral_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `recent_proposals`
--
ALTER TABLE `recent_proposals`
  ADD PRIMARY KEY (`recent_id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`referral_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revenues`
--
ALTER TABLE `revenues`
  ADD PRIMARY KEY (`revenue_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_boxes`
--
ALTER TABLE `section_boxes`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `seller_accounts`
--
ALTER TABLE `seller_accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `seller_languages`
--
ALTER TABLE `seller_languages`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `seller_levels`
--
ALTER TABLE `seller_levels`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `seller_levels_meta`
--
ALTER TABLE `seller_levels_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_payment_settings`
--
ALTER TABLE `seller_payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_reviews`
--
ALTER TABLE `seller_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `seller_skills`
--
ALTER TABLE `seller_skills`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `seller_type_status`
--
ALTER TABLE `seller_type_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_offers`
--
ALTER TABLE `send_offers`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `site_currencies`
--
ALTER TABLE `site_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills_relation`
--
ALTER TABLE `skills_relation`
  ADD PRIMARY KEY (`relation_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spam_words`
--
ALTER TABLE `spam_words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `starred_messages`
--
ALTER TABLE `starred_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `temp_extras`
--
ALTER TABLE `temp_extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_orders`
--
ALTER TABLE `temp_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `top_proposals`
--
ALTER TABLE `top_proposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unread_messages`
--
ALTER TABLE `unread_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_logs`
--
ALTER TABLE `admin_logs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_rights`
--
ALTER TABLE `admin_rights`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `announcement_bar`
--
ALTER TABLE `announcement_bar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_settings`
--
ALTER TABLE `api_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_info`
--
ALTER TABLE `app_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `archived_messages`
--
ALTER TABLE `archived_messages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_cat`
--
ALTER TABLE `article_cat`
  MODIFY `article_cat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buyer_requests`
--
ALTER TABLE `buyer_requests`
  MODIFY `request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buyer_reviews`
--
ALTER TABLE `buyer_reviews`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart_extras`
--
ALTER TABLE `cart_extras`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories_children`
--
ALTER TABLE `categories_children`
  MODIFY `child_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `cats_meta`
--
ALTER TABLE `cats_meta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `child_cats_meta`
--
ALTER TABLE `child_cats_meta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_support`
--
ALTER TABLE `contact_support`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_support_meta`
--
ALTER TABLE `contact_support_meta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons_used`
--
ALTER TABLE `coupons_used`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `currency_converter_settings`
--
ALTER TABLE `currency_converter_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_times`
--
ALTER TABLE `delivery_times`
  MODIFY `delivery_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dusupay_orders`
--
ALTER TABLE `dusupay_orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `favourite_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `featured_proposals`
--
ALTER TABLE `featured_proposals`
  MODIFY `featured_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `footer_links`
--
ALTER TABLE `footer_links`
  MODIFY `link_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hide_seller_messages`
--
ALTER TABLE `hide_seller_messages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_cards`
--
ALTER TABLE `home_cards`
  MODIFY `card_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_section`
--
ALTER TABLE `home_section`
  MODIFY `section_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_section_slider`
--
ALTER TABLE `home_section_slider`
  MODIFY `slide_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ideas`
--
ALTER TABLE `ideas`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inbox_messages`
--
ALTER TABLE `inbox_messages`
  MODIFY `message_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inbox_sellers`
--
ALTER TABLE `inbox_sellers`
  MODIFY `inbox_seller_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `instant_deliveries`
--
ALTER TABLE `instant_deliveries`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `knowledge_bank`
--
ALTER TABLE `knowledge_bank`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages_relation`
--
ALTER TABLE `languages_relation`
  MODIFY `relation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages_offers`
--
ALTER TABLE `messages_offers`
  MODIFY `offer_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `my_buyers`
--
ALTER TABLE `my_buyers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `my_sellers`
--
ALTER TABLE `my_sellers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_conversations`
--
ALTER TABLE `order_conversations`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_extras`
--
ALTER TABLE `order_extras`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_tips`
--
ALTER TABLE `order_tips`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_attributes`
--
ALTER TABLE `package_attributes`
  MODIFY `attribute_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proposals`
--
ALTER TABLE `proposals`
  MODIFY `proposal_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `proposals_extras`
--
ALTER TABLE `proposals_extras`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `proposals_faq`
--
ALTER TABLE `proposals_faq`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `proposal_modifications`
--
ALTER TABLE `proposal_modifications`
  MODIFY `modification_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proposal_packages`
--
ALTER TABLE `proposal_packages`
  MODIFY `package_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `proposal_referrals`
--
ALTER TABLE `proposal_referrals`
  MODIFY `referral_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `purchase_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `recent_proposals`
--
ALTER TABLE `recent_proposals`
  MODIFY `recent_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `referral_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revenues`
--
ALTER TABLE `revenues`
  MODIFY `revenue_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `section_boxes`
--
ALTER TABLE `section_boxes`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `seller_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seller_accounts`
--
ALTER TABLE `seller_accounts`
  MODIFY `account_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seller_languages`
--
ALTER TABLE `seller_languages`
  MODIFY `language_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seller_levels`
--
ALTER TABLE `seller_levels`
  MODIFY `level_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seller_levels_meta`
--
ALTER TABLE `seller_levels_meta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seller_payment_settings`
--
ALTER TABLE `seller_payment_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seller_reviews`
--
ALTER TABLE `seller_reviews`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seller_skills`
--
ALTER TABLE `seller_skills`
  MODIFY `skill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seller_type_status`
--
ALTER TABLE `seller_type_status`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `send_offers`
--
ALTER TABLE `send_offers`
  MODIFY `offer_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_currencies`
--
ALTER TABLE `site_currencies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills_relation`
--
ALTER TABLE `skills_relation`
  MODIFY `relation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spam_words`
--
ALTER TABLE `spam_words`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `starred_messages`
--
ALTER TABLE `starred_messages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `ticket_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_extras`
--
ALTER TABLE `temp_extras`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_orders`
--
ALTER TABLE `temp_orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `top_proposals`
--
ALTER TABLE `top_proposals`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `unread_messages`
--
ALTER TABLE `unread_messages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
