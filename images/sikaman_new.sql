-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 04:28 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sikaman`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `ad_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `link`, `ads`, `type`, `status`, `ad_date`, `ad_month`, `posted`, `created_at`, `updated_at`) VALUES
(1, 'https://www.codecheef.org/', 'image/ads/622d022195c0a.jpg', 1, 1, '12-03-2022', 'March', 1, NULL, '2022-03-12 20:27:13'),
(2, 'https://www.codecheef.org/', 'image/ads/622d021323e0a.jpg', 2, 1, '12-03-2022', 'March', 1, NULL, '2022-03-12 20:26:59'),
(3, 'https://www.codecheef.org/', 'image/ads/622d01ff39513.JPG', 1, 1, '12-03-2022', 'March', 1, NULL, '2022-03-12 20:26:39'),
(4, 'https://www.codecheef.org/', 'image/ads/622d01ef2bd2c.jpeg', 2, 1, '12-03-2022', 'March', 1, NULL, '2022-03-12 20:26:23'),
(5, 'https://www.codecheef.org', 'image/ads/622d01df5a901.jpg', 2, 1, '12-03-2022', 'March', 1, NULL, '2022-03-12 20:26:07'),
(6, 'https://www.codecheef.org', 'image/ads/622d01cae4cf4.jpeg', 2, 1, '12-03-2022', 'March', 1, NULL, '2022-03-12 20:25:46'),
(9, 'https://www.codecheef.org/', 'image/ads/6240e72d9783b.png', 3, 0, '27-03-2022', 'March', 1, NULL, '2022-03-27 22:37:33'),
(10, 'https://www.codecheef.com', 'image/ads/6240e7900bb46.png', 3, 0, '27-03-2022', 'March', 1, NULL, '2022-03-27 22:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `audio_news`
--

CREATE TABLE `audio_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `focus_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audio_news`
--

INSERT INTO `audio_news` (`id`, `focus_id`, `user_id`, `title`, `image`, `details`, `tags`, `audio_link`, `status`, `post_date`, `post_month`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Audio Post', 'image/audiothumbnail/623b537a88359.jpeg', '<p>This is audio post</p>', 'audio,post', '<iframe width=\"100%\" height=\"300\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1237311928&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/citi97-3\" title=\"Citi97.3\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Citi97.3</a> · <a href=\"https://soundcloud.com/citi97-3/citi-breakfast-show-wednesday-23rd-march-2022\" title=\"Citi Breakfast Show, Wednesday 23rd March 2022\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Citi Breakfast Show, Wednesday 23rd March 2022</a></div>', 1, '27-03-2022', 'March', '2022-03-23 17:06:02', '2022-03-27 02:13:54'),
(3, 1, 1, 'News in audio format', 'image/audiothumbnail/623fad5ca0a2a.JPG', '<p>This is news in audio form. listen and be blessed.</p>', 'news,audio,format', '<iframe width=\"100%\" height=\"300\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1237311928&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/citi97-3\" title=\"Citi97.3\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Citi97.3</a> · <a href=\"https://soundcloud.com/citi97-3/citi-breakfast-show-wednesday-23rd-march-2022\" title=\"Citi Breakfast Show, Wednesday 23rd March 2022\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Citi Breakfast Show, Wednesday 23rd March 2022</a></div>', 1, '27-03-2022', 'March', '2022-03-27 00:18:36', NULL),
(4, 1, 1, 'Sound test', 'image/audiothumbnail/623fad9dd6dc5.jpg', '<p>Testing mic one two</p>', 'test,news,sound', '<iframe width=\"100%\" height=\"300\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1237311928&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/citi97-3\" title=\"Citi97.3\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Citi97.3</a> · <a href=\"https://soundcloud.com/citi97-3/citi-breakfast-show-wednesday-23rd-march-2022\" title=\"Citi Breakfast Show, Wednesday 23rd March 2022\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Citi Breakfast Show, Wednesday 23rd March 2022</a></div>', 1, '27-03-2022', 'March', '2022-03-27 00:19:41', NULL),
(5, 2, 1, 'Another test file', 'image/audiothumbnail/623fae48f1a58.jpg', '<p>Another test file for testing</p>', 'test,file', '<iframe width=\"100%\" height=\"300\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1237311928&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/citi97-3\" title=\"Citi97.3\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Citi97.3</a> · <a href=\"https://soundcloud.com/citi97-3/citi-breakfast-show-wednesday-23rd-march-2022\" title=\"Citi Breakfast Show, Wednesday 23rd March 2022\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Citi Breakfast Show, Wednesday 23rd March 2022</a></div>', 1, '27-03-2022', 'March', '2022-03-27 00:22:32', NULL),
(6, 1, 1, 'Am here', 'image/audiothumbnail/623fb297517c4.jpg', '<p>This is another testing</p>', 'here,news,post', '<iframe width=\"100%\" height=\"300\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1237311928&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true\"></iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/citi97-3\" title=\"Citi97.3\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Citi97.3</a> · <a href=\"https://soundcloud.com/citi97-3/citi-breakfast-show-wednesday-23rd-march-2022\" title=\"Citi Breakfast Show, Wednesday 23rd March 2022\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Citi Breakfast Show, Wednesday 23rd March 2022</a></div>', 1, '27-03-2022', 'March', '2022-03-27 00:40:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soft_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `soft_delete`, `created_at`, `updated_at`) VALUES
(1, 'General News', '0', NULL, NULL),
(2, 'Politics', '0', NULL, NULL),
(3, 'Business', '0', NULL, NULL),
(4, 'Technology', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `website`, `title`, `message`, `created_at`, `updated_at`) VALUES
(1, 'User 1', 'user1@gmail.com', NULL, 'This is Title', 'This is the message', '2022-03-08 22:01:18', NULL),
(3, 'Mark', 'tomsawyer200681@gmail.com', 'www.mysite.com', 'Your Qoutes', 'Wantt to know your quotes for ads. Thanks.', NULL, NULL),
(4, 'Shaun Michael', 'samed@gmail.com', 'https://www.myjoyonline.com/', 'Reporter', 'I want to do reporting for you.', NULL, NULL),
(5, 'Burger', 'burger@gmail.com', NULL, 'Testing', 'This is for testing purposes', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `description_summary`
--

CREATE TABLE `description_summary` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_detail_id` int(11) NOT NULL,
  `job_cat_id` int(11) NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `description_summary`
--

INSERT INTO `description_summary` (`id`, `job_detail_id`, `job_cat_id`, `job_title`, `company_name`, `job_summary`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'this is title', 'A&C Limited', '[\"sumary one\",\"sumary\",\"Summary\"]', '2022-03-21 16:47:49', '2022-03-24 22:56:18'),
(2, 2, 3, 'Another', 'West Hills', '[\"Another\",\"sumary one\"]', '2022-03-21 11:44:58', '2022-03-24 17:14:12'),
(3, 3, 2, 'Another', 'West Hills', '[\"Test summary\",\"test\"]', '2022-03-21 17:25:54', '2022-03-24 22:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `expectation`
--

CREATE TABLE `expectation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_detail_id` int(11) NOT NULL,
  `job_cat_id` int(11) NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expectation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expectation`
--

INSERT INTO `expectation` (`id`, `job_detail_id`, `job_cat_id`, `job_title`, `company_name`, `expectation`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'this is title', 'A&C Limited', '[\"Waaow\",\"Waaow\",\"Waaow\"]', '2022-03-21 11:41:59', '2022-03-24 22:56:18'),
(2, 2, 2, 'Another', 'West Hills', '[\"Expectation One\",\"Expectation Two\",\"another expectation\",\"this expectation\",\"your expectation\"]', '2022-03-21 11:44:58', '2022-03-24 17:14:12'),
(3, 3, 2, 'Another', 'West Hills', '[\"test\"]', '2022-03-21 17:25:54', '2022-03-24 22:58:45');

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
-- Table structure for table `focus`
--

CREATE TABLE `focus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `focus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soft_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `focus`
--

INSERT INTO `focus` (`id`, `focus`, `soft_delete`, `created_at`, `updated_at`) VALUES
(1, 'Ghana', '0', NULL, NULL),
(2, 'Africa', '0', NULL, NULL),
(3, 'Global', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `health_wellness`
--

CREATE TABLE `health_wellness` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `focus_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `health_wellness`
--

INSERT INTO `health_wellness` (`id`, `focus_id`, `user_id`, `title`, `image`, `details`, `region`, `tags`, `post_date`, `post_month`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'This is health and wellness post', 'image/health/623a425cbdd43.jpeg', '<p>This is health and wellness post&nbsp;</p>', 'OTI', 'health,wellness', '22-03-2022', 'March', 1, '2022-03-22 21:40:44', '2022-04-04 14:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soft_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_category`, `soft_delete`, `created_at`, `updated_at`) VALUES
(1, 'Accounting Jobs in Ghana', '0', NULL, NULL),
(2, 'Banking Jobs in Ghana', '0', NULL, NULL),
(3, 'Consulting Jobs in Ghana', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_details`
--

CREATE TABLE `job_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_cat_id` int(11) NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expected_salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_deadline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_details`
--

INSERT INTO `job_details` (`id`, `job_cat_id`, `job_title`, `company_name`, `location`, `state`, `job_type`, `expected_salary`, `job_description`, `job_deadline`, `apply_mode`, `apply_link`, `created_at`, `updated_at`) VALUES
(1, 2, 'this is title', 'A&C Limited', 'SCC', 'Accra', 'Freelence', '2,000 - 3,500', '<p>This is the description</p>', '2022-03-23', 'mode of apply', 'https://www.google.com', '2022-03-24 22:55:09', '0000-00-00 00:00:00'),
(2, 3, 'Another', 'West Hills', 'West-Adenta', 'New York', 'Internship', '2,000 - 2,500', '<p>Another description</p>', '2022-03-23', 'mode', 'https://www.google.com', '2022-03-24 22:56:18', '2022-03-24 22:56:18'),
(3, 2, 'Another', 'West Hills', 'USA', 'New York', 'Temporary', '2,100 - 3,000', '<p>This is test</p>', '2022-03-24', 'mode', 'https://www.google.com', NULL, '2022-03-24 22:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `lifestyles`
--

CREATE TABLE `lifestyles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `focus_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lifestyles`
--

INSERT INTO `lifestyles` (`id`, `focus_id`, `user_id`, `title`, `image`, `details`, `region`, `tags`, `post_date`, `post_month`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Life Style Post', 'image/lifestyle/6239fabe6690e.jpeg', '<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Inventore, aut, tempore. Quidem ipsum dolor, laboriosam possimus modi consequuntur saepe alias natus commodi iusto esse minus optio excepturi aspernatur tenetur nihil.Lorem ipsum dolor sit amet consectetur adipisicing, elit. Inventore, aut, tempore. Quidem ipsum dolor, laboriosam possimus modi consequuntur saepe alias natus commodi iusto esse minus optio excepturi aspernatur tenetur nihil.Lorem ipsum dolor sit amet consectetur adipisicing, elit. Inventore, aut, tempore. Quidem ipsum dolor, laboriosam possimus modi consequuntur saepe alias natus commodi iusto esse minus optio excepturi aspernatur tenetur nihil.Lorem ipsum dolor sit amet consectetur adipisicing, elit. Inventore, aut, tempore. Quidem ipsum dolor, laboriosam possimus modi consequuntur saepe alias natus commodi iusto esse minus optio excepturi aspernatur tenetur nihil.Lorem ipsum dolor sit amet consectetur adipisicing, elit. Inventore, aut, tempore. Quidem ipsum dolor, laboriosam possimus modi consequuntur saepe alias natus commodi iusto esse minus optio excepturi aspernatur tenetur nihil.Lorem ipsum dolor sit amet consectetur adipisicing, elit. Inventore, aut, tempore. Quidem ipsum dolor, laboriosam possimus modi consequuntur saepe alias natus commodi iusto esse minus optio excepturi aspernatur tenetur nihil.</p>', 'NORTH EAST', 'life,style', '22-03-2022', 'March', 1, '2022-03-22 13:40:51', '2022-04-04 13:13:48'),
(2, 2, 1, 'Another Post', 'image/lifestyle/6239fb0d3a4f0.jpeg', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius maiores cumque dicta dolore sint dignissimos ratione, officiis eos autem esse molestias totam fugit consequuntur aperiam. Aliquid nemo explicabo, deleniti dicta.Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius maiores cumque dicta dolore sint dignissimos ratione, officiis eos autem esse molestias totam fugit consequuntur aperiam. Aliquid nemo explicabo, deleniti dicta.Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius maiores cumque dicta dolore sint dignissimos ratione, officiis eos autem esse molestias totam fugit consequuntur aperiam. Aliquid nemo explicabo, deleniti dicta.</p>', 'CENTRAL', 'another,lifestyle,post', '04-04-2022', 'April', 1, '2022-03-22 16:36:29', '2022-04-04 13:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `livetvs`
--

CREATE TABLE `livetvs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `embed_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livetvs`
--

INSERT INTO `livetvs` (`id`, `embed_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'gLSYo2gFifs', 1, NULL, NULL);

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
(6, '2022_02_12_221636_create_sessions_table', 1),
(7, '2022_02_28_220155_create_sliders_table', 2),
(8, '2022_03_01_091003_create_categories_table', 3),
(9, '2022_03_01_133814_create_subcategories_table', 4),
(10, '2022_03_01_171124_create_posts_table', 5),
(11, '2022_03_01_173137_create_focus_table', 5),
(12, '2022_03_02_214852_create_socials_table', 6),
(13, '2022_03_03_135723_create_seos_table', 7),
(14, '2022_03_03_144617_create_livetvs_table', 8),
(15, '2022_03_03_155827_create_notices_table', 9),
(16, '2022_03_03_161909_create_websitesettings_table', 10),
(17, '2022_03_03_213835_create_contacts_table', 11),
(18, '2022_03_06_010628_create_ads_table', 12),
(19, '2022_03_08_120119_create_photos_table', 13),
(20, '2022_03_08_123423_create_videos_table', 13),
(21, '2022_03_08_124233_create_pics_table', 13),
(22, '2022_03_18_133305_create_jobs_table', 14),
(23, '2022_03_18_161414_create_job_details_table', 15),
(24, '2022_03_18_163153_create_description_summary_table', 16),
(25, '2022_03_18_163537_create_qualify_exp_table', 16),
(26, '2022_03_18_163738_create_expectation_table', 16),
(27, '2022_03_22_104901_create_lifestyles_table', 17),
(28, '2022_03_22_124240_create_relationships_table', 17),
(29, '2022_03_22_124432_create_health_wellness_table', 17),
(30, '2022_03_23_111241_create_audio_news_table', 18),
(31, '2022_03_23_134457_create_video_news_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice`, `status`, `created_at`, `updated_at`) VALUES
(1, 'This is notices', 0, NULL, NULL);

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
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'image/photo/thumbnail/1727208450888587.jpeg', 'Web Development', '1', NULL, NULL),
(3, 'image/photo/thumbnail/1727208435124352.jpeg', 'Politics', '0', NULL, NULL),
(4, 'image/photo/thumbnail/1727208421882798.jpeg', 'Law', '0', NULL, NULL),
(5, 'image/photo/thumbnail/1727208405109114.png', 'Technology', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pics`
--

CREATE TABLE `pics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pics`
--

INSERT INTO `pics` (`id`, `photo_id`, `pic_title`, `pic_image`, `status`, `created_at`, `updated_at`) VALUES
(1, '4', 'title', 'image/photo/pics/1726921364880857.jpg', '0', '2022-03-10 13:55:52', NULL),
(2, '4', 'title', 'image/photo/pics/1726921365187300.jpeg', '0', '2022-03-10 13:55:52', NULL),
(4, '4', 'title', 'image/photo/pics/1726921365515509.jpg', '0', '2022-03-10 13:55:52', NULL),
(5, '4', 'title', 'image/photo/pics/1726921365831342.jpeg', '0', '2022-03-10 13:55:53', NULL),
(6, '4', 'another', 'image/photo/pics/1726921436312916.jpg', '0', '2022-03-10 13:57:00', NULL),
(7, '4', 'title', 'image/photo/pics/1726922857318294.jpg', '0', '2022-03-10 14:19:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `focus_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headline` int(11) DEFAULT NULL,
  `breaking` int(11) DEFAULT NULL,
  `first_section` int(11) DEFAULT NULL,
  `second_section` int(11) DEFAULT NULL,
  `first_section_thumbnail` int(11) DEFAULT NULL,
  `second_section_thumbnail` int(11) DEFAULT NULL,
  `bigthumbnail` int(11) DEFAULT NULL,
  `category_specific` int(11) DEFAULT NULL,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `focus_id`, `subcategory_id`, `user_id`, `title`, `image`, `details`, `region`, `tags`, `headline`, `breaking`, `first_section`, `second_section`, `first_section_thumbnail`, `second_section_thumbnail`, `bigthumbnail`, `category_specific`, `post_date`, `post_month`, `status`, `created_at`, `updated_at`) VALUES
(8, 1, 1, 1, 1, 'This is General News', 'image/postimg/623dca5e40d2d.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.</p>', 'UPPER EAST', 'General,news,post', 1, NULL, NULL, 1, NULL, 1, 1, 1, '25-03-2022', 'March', 1, '2022-03-25 13:57:50', NULL),
(9, 2, 1, 14, 1, 'This is politics', 'image/postimg/623dcab4b2cca.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.</p>', 'NORTHERN', 'politics,news', 1, NULL, NULL, 1, NULL, 1, 1, 1, '25-03-2022', 'March', 1, '2022-03-25 13:59:16', NULL),
(10, 3, 1, 7, 1, 'The ecomy is in shambuls', 'image/postimg/623dcb08acd71.JPG', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.</p>', 'UPPER WEST', 'shambuls,post', NULL, NULL, NULL, 1, NULL, 1, 1, 1, '25-03-2022', 'March', 1, '2022-03-25 14:00:40', NULL),
(11, 4, 1, 23, 1, 'Tech News', 'image/postimg/623dcb54c80cd.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Quisquam doloremque unde quam aut pariatur? Necessitatibus accusamus nihil maxime deserunt provident quae! Nihil, reprehenderit quasi sint delectus saepe minus sit facilis.</p>', 'GREATER ACCRA', 'tech,net,news', NULL, NULL, NULL, 1, NULL, 1, 1, 1, '25-03-2022', 'March', 1, '2022-03-25 14:01:56', NULL),
(12, 1, 2, 1, 1, 'this is news', 'image/postimg/623dd18c650cc.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis asperiores odit aperiam nemo mollitia ut magnam, iste inventore voluptatem est beatae eveniet a ducimus. Quis consectetur amet suscipit aperiam illo?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis asperiores odit aperiam nemo mollitia ut magnam, iste inventore voluptatem est beatae eveniet a ducimus. Quis consectetur amet suscipit aperiam illo?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis asperiores odit aperiam nemo mollitia ut magnam, iste inventore voluptatem est beatae eveniet a ducimus. Quis consectetur amet suscipit aperiam illo?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis asperiores odit aperiam nemo mollitia ut magnam, iste inventore voluptatem est beatae eveniet a ducimus. Quis consectetur amet suscipit aperiam illo?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis asperiores odit aperiam nemo mollitia ut magnam, iste inventore voluptatem est beatae eveniet a ducimus. Quis consectetur amet suscipit aperiam illo?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis asperiores odit aperiam nemo mollitia ut magnam, iste inventore voluptatem est beatae eveniet a ducimus. Quis consectetur amet suscipit aperiam illo?</p>', 'GREATER ACCRA', 'news,title', NULL, NULL, NULL, 1, NULL, 1, 1, 1, '25-03-2022', 'March', 1, '2022-03-25 14:28:28', NULL),
(13, 1, 1, 1, 1, 'This new post', 'image/postimg/623ddd9fa87d4.jpg', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maxime delectus porro dignissimos ipsa, necessitatibus adipisci at. Modi, ipsum maxime exercitationem cupiditate esse quibusdam. Obcaecati est accusamus magnam cumque porro enim.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maxime delectus porro dignissimos ipsa, necessitatibus adipisci at. Modi, ipsum maxime exercitationem cupiditate esse quibusdam. Obcaecati est accusamus magnam cumque porro enim.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maxime delectus porro dignissimos ipsa, necessitatibus adipisci at. Modi, ipsum maxime exercitationem cupiditate esse quibusdam. Obcaecati est accusamus magnam cumque porro enim.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maxime delectus porro dignissimos ipsa, necessitatibus adipisci at. Modi, ipsum maxime exercitationem cupiditate esse quibusdam. Obcaecati est accusamus magnam cumque porro enim.</p>', 'GREATER ACCRA', 'new,post', 1, NULL, NULL, 1, NULL, 1, 1, 1, '25-03-2022', 'March', 1, '2022-03-25 15:19:59', NULL),
(14, 1, 1, 1, 1, 'This is General', 'image/postimg/623e43702645a.jpg', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dignissimos repellendus consectetur natus vel recusandae totam ratione nemo dolorem architecto rerum voluptatem pariatur, obcaecati suscipit harum, repudiandae consequatur, id odit!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dignissimos repellendus consectetur natus vel recusandae totam ratione nemo dolorem architecto rerum voluptatem pariatur, obcaecati suscipit harum, repudiandae consequatur, id odit!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dignissimos repellendus consectetur natus vel recusandae totam ratione nemo dolorem architecto rerum voluptatem pariatur, obcaecati suscipit harum, repudiandae consequatur, id odit!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dignissimos repellendus consectetur natus vel recusandae totam ratione nemo dolorem architecto rerum voluptatem pariatur, obcaecati suscipit harum, repudiandae consequatur, id odit!</p>', 'VOLTA', 'news,title', 1, NULL, NULL, 1, NULL, 1, NULL, 1, '25-03-2022', 'March', 1, '2022-03-25 22:34:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qualify_exp`
--

CREATE TABLE `qualify_exp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_detail_id` int(11) NOT NULL,
  `job_cat_id` int(11) NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification_experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualify_exp`
--

INSERT INTO `qualify_exp` (`id`, `job_detail_id`, `job_cat_id`, `job_title`, `company_name`, `qualification_experience`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'this is title', 'A&C Limited', '[\"Yes\",\"No\",\"Yes\"]', '2022-03-21 11:41:59', '2022-03-24 22:56:18'),
(2, 2, 2, 'Another', 'West Hills', '[\"Experience One\",\"Experience Two\",\"experience 3\"]', '2022-03-21 11:44:58', '2022-03-24 17:14:12'),
(3, 3, 2, 'Another', 'West Hills', '[\"test\"]', '2022-03-21 17:25:54', '2022-03-24 22:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `focus_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `focus_id`, `user_id`, `title`, `image`, `details`, `region`, `tags`, `post_date`, `post_month`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'This is relationship', 'image/relationship/623a3336b214c.jpeg', '<p>This is relationship post</p>', 'SAVANNAH', 'relationship,truth,love,peace,post', '22-03-2022', 'March', 0, '2022-03-22 20:10:44', '2022-04-04 13:28:10'),
(2, 1, 1, 'Another Relationship Post', 'image/relationship/623a2de2702bf.jpeg', '<p>This is another post</p>', 'EASTERN', 'another,post', '22-03-2022', 'March', 1, '2022-03-22 20:13:22', '2022-04-04 13:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_author`, `meta_title`, `meta_keyword`, `meta_description`, `google_analytics`, `google_verification`, `alexa_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Prymelinx', 'Prymelinx Online News Portal', 'door to door delivery,best gas services,best customer service,Swap & Go,Autogas SolutionsSwap,Go,Swap and Go,', 'This is the description', 'Google Analytics', 'Google Verification', 'Alexa Verification', NULL, NULL);

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
('FZ6CwLqh9V8GGyYnMbv8RWza9sOeX6kwtiEREg2i', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiMjB1WWl4Q2hoTXpaWE1CNkx3YjJHZDNlTVdtRTNFQUJNaG40Y0l0USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9oZWFsdGhzLzEvVGhpcy1pcy1oZWFsdGgtYW5kLXdlbGxuZXNzLXBvc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJElkZVdvd3pjeEdtRDN2THFEM2R2UGVpZkdOWmt6c05pWkJzLkZPTkNFUVdQVEZCTnE1ZzQuIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRJZGVXb3d6Y3hHbUQzdkxxRDNkdlBlaWZHTlprenNOaVpCcy5GT05DRVFXUFRGQk5xNWc0LiI7fQ==', 1649082139);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_image`, `title`, `subtitle`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'upload/slider/1726047163522261.jpg', 'Slider One', 'NEED 1', 'Slider One Test Description for the Home Page', 1, NULL, '2022-02-28 22:51:01'),
(2, 'upload/slider/1726049109431781.jpg', 'Slide Two', 'Another', 'Slider One Test Description for the Home Page1', 1, NULL, NULL),
(3, 'upload/slider/1726049155384539.jpg', 'Slide Three', 'NEED SLIDER', 'Slider three test Description', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soundcloud` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `youtube`, `linkedin`, `instagram`, `soundcloud`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/pry', 'https://www.twitter.com/pry', 'https://www.youtube.com/pry', 'https://www.linkedin.com/pry', 'https://www.instagram.com/pry', 'https://www.soundcloud.com/pry', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory`, `created_at`, `updated_at`) VALUES
(1, '1', 'Politics', NULL, NULL),
(3, '1', 'National', NULL, NULL),
(4, '1', 'Crime', NULL, NULL),
(5, '1', 'Regional', NULL, NULL),
(6, '1', 'Technology', NULL, NULL),
(7, '3', 'Economy', NULL, NULL),
(8, '3', 'Energy', NULL, NULL),
(9, '3', 'Finance', NULL, NULL),
(10, '3', 'Investment', NULL, NULL),
(11, '3', 'Mining', NULL, NULL),
(12, '3', 'Real Estate', NULL, NULL),
(13, '3', 'Stock', NULL, NULL),
(14, '2', 'Music', NULL, NULL),
(15, '4', 'Food', NULL, NULL),
(16, '7', 'Community Water', NULL, NULL),
(17, '7', 'Sanitation', NULL, NULL),
(18, '7', 'Retreat', NULL, NULL),
(19, '6', 'Marriage', NULL, NULL),
(20, '6', 'Spousal Discord', NULL, NULL),
(21, '5', 'Roads', NULL, NULL),
(22, NULL, 'Electricity', NULL, NULL),
(23, '4', 'Exercise', NULL, NULL),
(24, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `categories` int(11) DEFAULT NULL,
  `focus` int(11) DEFAULT NULL,
  `posts` int(11) DEFAULT NULL,
  `advertisement` int(11) DEFAULT NULL,
  `media` int(11) DEFAULT NULL,
  `audiovideo` int(11) DEFAULT NULL,
  `extras` int(11) DEFAULT NULL,
  `settings` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `type`, `contact`, `categories`, `focus`, `posts`, `advertisement`, `media`, `audiovideo`, `extras`, `settings`, `role`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin1', 'admin@aptechghana.com', NULL, '$2y$10$IdeWowzcxGmD3vLqD3dvPeifGNZkzsNiZBs.FONCEQWPTFBNq5g4.', '0245678902', NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, 1, NULL, '202202141553user2.jpg', '2022-02-13 00:54:09', '2022-04-02 18:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `embed_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `video_thumbnail`, `embed_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Craziest Things People Have Seen In Churches.', 'This is by far the creziest thing ever seen in the church premises before peoples eyes.', 'image/video_thumbnail/1727196856587304.JPG', 'acHSXPYjzaQ', '0', '2022-03-13 15:17:39', '2022-03-13 15:17:39'),
(3, 'This is videos', 'Slider One Test Description for the Home Page', 'image/video_thumbnail/1727198002274189.jpg', 'gLSYo2gFifs', '0', '2022-03-13 15:17:39', '2022-03-17 13:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `video_news`
--

CREATE TABLE `video_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `focus_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_news`
--

INSERT INTO `video_news` (`id`, `focus_id`, `user_id`, `title`, `details`, `tags`, `video_link`, `status`, `post_date`, `post_month`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Video Post', '<p>This is video post.</p>', 'video,post', 'NLDnLFS-n44', 0, '27-03-2022', 'March', '2022-03-23 21:29:46', '2022-03-27 20:09:10'),
(3, 1, 1, 'Debate News', '<p>This is test post.</p>', 'debate,post', 'fP_MerInQTs', 1, '27-03-2022', 'March', '2022-03-27 20:28:07', NULL),
(4, 1, 1, 'Reaction After Match', '<p>This is how the fans reacted after the match.</p>', 'Fans,reaction,after', '6PXG0-7F6nk', 1, '27-03-2022', 'March', '2022-03-27 20:30:07', NULL),
(5, 1, 1, 'Airport At Kumasi', '<p>This is the stage where the kumasi international airport is now.</p>', 'Airport,International', 'uE7ijsD7lSk', 1, '27-03-2022', 'March', '2022-03-27 20:32:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `websitesettings`
--

CREATE TABLE `websitesettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `box_office` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsappline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_ads` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_ads` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_corp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_corp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_news` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_Ads` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_corp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websitesettings`
--

INSERT INTO `websitesettings` (`id`, `logo`, `name`, `location`, `box_office`, `location2`, `religion`, `phone`, `whatsappline`, `phone_ads`, `whatsapp_ads`, `phone_corp`, `whatsapp_corp`, `email_news`, `email_Ads`, `email_corp`, `map_code`, `created_at`, `updated_at`) VALUES
(1, 'image/logo/62478ea406f5a.jpg', 'The Sikaman Times (a division of the Creator Media Group)', 'West-Adenta', 'P. O. Box GP 22241,', 'Accra', 'Ghana – West Africa', '0200404989', '02200000897', '022330453344', '0245445343325', '02435233455', '02433554646', 'email1', 'email2', 'email3', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d31767.864985801647!2d-0.25280418206698835!3d5.569512141561795!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e6!4m3!3m2!1d5.5721916!2d-0.2150885!4m5!1s0xfdf99ced318197b%3A0x17c0de36503e566a!2saptech%20ghana!3m2!1d5.5773728!2d-0.2553535!5e0!3m2!1sen!2sgh!4v1646578979346!5m2!1sen!2sgh\" width=\"750\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audio_news`
--
ALTER TABLE `audio_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `description_summary`
--
ALTER TABLE `description_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expectation`
--
ALTER TABLE `expectation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `focus`
--
ALTER TABLE `focus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_wellness`
--
ALTER TABLE `health_wellness`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_details`
--
ALTER TABLE `job_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lifestyles`
--
ALTER TABLE `lifestyles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livetvs`
--
ALTER TABLE `livetvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pics`
--
ALTER TABLE `pics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualify_exp`
--
ALTER TABLE `qualify_exp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_news`
--
ALTER TABLE `video_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websitesettings`
--
ALTER TABLE `websitesettings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `audio_news`
--
ALTER TABLE `audio_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `description_summary`
--
ALTER TABLE `description_summary`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expectation`
--
ALTER TABLE `expectation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `focus`
--
ALTER TABLE `focus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `health_wellness`
--
ALTER TABLE `health_wellness`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_details`
--
ALTER TABLE `job_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lifestyles`
--
ALTER TABLE `lifestyles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `livetvs`
--
ALTER TABLE `livetvs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pics`
--
ALTER TABLE `pics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `qualify_exp`
--
ALTER TABLE `qualify_exp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `relationships`
--
ALTER TABLE `relationships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `video_news`
--
ALTER TABLE `video_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `websitesettings`
--
ALTER TABLE `websitesettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
