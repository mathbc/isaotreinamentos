-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 19/07/2023 às 10:10
-- Versão do servidor: 10.3.25-MariaDB
-- Versão do PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `demomago_ead`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `about_us_generals`
--

CREATE TABLE `about_us_generals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_area_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_area_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_third_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_second_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_first_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_history_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_history_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upgrade_skill_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upgrade_skill_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upgrade_skill_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upgrade_skill_button_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_member_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_member_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_member_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructor_support_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructor_support_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `about_us_generals`
--

INSERT INTO `about_us_generals` (`id`, `gallery_area_title`, `gallery_area_subtitle`, `gallery_third_image`, `gallery_second_image`, `gallery_first_image`, `our_history_title`, `our_history_subtitle`, `upgrade_skill_logo`, `upgrade_skill_title`, `upgrade_skill_subtitle`, `upgrade_skill_button_name`, `team_member_logo`, `team_member_title`, `team_member_subtitle`, `instructor_support_title`, `instructor_support_subtitle`, `created_at`, `updated_at`) VALUES
(1, 'Mere Tranquil Existence, That I Neglect My Talents Should', 'Possession Of My Entire Soul, Like These Sweet Mornings Of Spring Which I Enjoy With My Whole Heart. I Am Alone, And Charm Of Existence In This Spot, Which Was Created For The Bliss Of Souls Like Mine. I Am So Happy, My Dear Friend, So Absorbed In The Exquisite Sense Of Mere Tranquil Existence', 'uploads_demo/gallery/3.jpg', 'uploads_demo/gallery/2.jpg', 'uploads_demo/gallery/1.jpg', 'Our History', 'Possession Of My Entire Soul, Like These Sweet Mornings Of Spring Which I Enjoy With My Whole Heart. I Am Alone, And Charm Of Existence In This Spot Which', 'uploads_demo/about_us_general/upgrade.jpg', 'Upgrade Your Skills Today For Upgrading Your Life.', 'Noticed by me when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence stalks, and grow familiar with the countless', 'Find Your Course', 'uploads_demo/about_us_general/team-members-heading-img.png', 'Our Passionate Team Members', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS', 'Quality Course, Instructor And Support', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `affiliate_history`
--

CREATE TABLE `affiliate_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hash` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `buyer_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `bundle_id` bigint(20) DEFAULT NULL,
  `consultation_slot_id` bigint(20) DEFAULT NULL,
  `actual_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `commission` decimal(8,2) NOT NULL DEFAULT 0.00,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=due,1=paid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `affiliate_request`
--

CREATE TABLE `affiliate_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `letter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affiliate_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `exam_id` bigint(20) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  `question_option_id` bigint(20) NOT NULL,
  `take_exam_id` bigint(20) NOT NULL,
  `multiple_choice_answer` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_correct` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `assignments`
--

CREATE TABLE `assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 2=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `assignment_files`
--

CREATE TABLE `assignment_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assignment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `assignment_submits`
--

CREATE TABLE `assignment_submits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assignment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `marks` double(8,2) DEFAULT NULL,
  `notes` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active,0=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `beneficiaries`
--

CREATE TABLE `beneficiaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `beneficiary_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `card_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_routing_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=published, 0=unpublished',
  `blog_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `blogs`
--

INSERT INTO `blogs` (`id`, `uuid`, `user_id`, `title`, `slug`, `details`, `image`, `status`, `blog_category_id`, `created_at`, `updated_at`) VALUES
(1, '40a5dc67-3cd9-4139-8edb-1ba47bd798db', 1, '60 Common C# Interview Questions in 2022: Ace Your Next Interview', '60-common-c-interview-questions-in-2022-ace-your-next-interview', 'Getting hired as a programmer can be a challenge. There’s a lot of talent out there, and there’s a lot of competition. Many employers are wary of “paper programmers”; people who have no programming experience but just a degree. Because of this, they often ask in-depth programming questions during their interview. These questions can be hard to answer if you haven’t properly prepared. In this article, I’ll help you prepare to ace your next interview with these questions related to the C# programming language. At the same time, you might want to practice with some C# projects. These 50 essential C# questions and answers will help you understand the technical concepts of the language. You’ll walk into a meeting with the hiring manager with confidence. As a developer myself, I use these concepts daily.', 'uploads_demo/blog/1.jpg', 1, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(2, 'a869eb40-1962-48bd-aa8b-6fe69e2a750e', 1, 'PostgreSQL vs. MySQL: Which SQL Platform Should You Use?', 'postgresql-vs-mysql-which-sql-platform-should-you-use', 'MySQL and PostgreSQL are both leading database technologies built on a foundation of SQL: Structured Query Language. SQL forms the basis of how to create, access, update, and otherwise interact with data stored in a relational database. While MySQL has been the most popular platform for many years, PostgreSQL is another major contender. Many database administrators and developers will know both technologies, which are much more similar than they are different. You can learn more about the history of SQL and how the various “flavors” came to be by watching this brief video: Depending on what you’re trying to create, the data you’re trying to manage, and your own background as a programmer or analyst, you may find one language preferable over the other. But in terms of popularity and marketability, both are widely used, with MySQL maintaining the advantage here. Compared to PostgreSQL, MySQL has the largest market share and, therefore, the most job opportunities. Here’s what you need to know about MySQL vs. PostgreSQL — the differences, benefits, and disadvantages — as well as some basic information about SQL and database platforms.', 'uploads_demo/blog/2.jpg', 1, 2, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(3, '78eb086d-192e-4f77-9b3e-25cf9e4d50be', 1, 'Java vs. Python: Which Is the Best Programming Language for You?', 'java-vs-python-which-is-the-best-programming-language-for-you', 'Java and Python are both excellent choices for a beginning programmer. You really can’t go wrong by choosing either one. Here are some things these languages have in common. Both are popular and in high demand.Both are open source and don’t require a paid license to use for developers.  In the case of Java, if you use the official Oracle Java version, there may be a fee for commercial use payable by your customer/employer when deploying your Java application.  However, there are free runtime versions available from multiple vendors as well. You can get started coding in either language today as long as you have an internet connection to download the installation files and a computer that runs Windows, OS X, or Linux.The two languages do have their differences, and developers sometimes prefer one or the other for various reasons. Below is a discussion of those reasons, with hopefully enough information to help you decide which language is the one for you.', 'uploads_demo/blog/3.jpg', 1, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(4, 'ba833949-5b33-4fab-b72b-dcd78e2dd340', 1, 'Learn Coding in Scratch with a Cool Game Idea', 'learn-coding-in-scratch-with-a-cool-game-idea', 'A few years ago, the creation of programs and applications was aimed at only a few people with specialized knowledge. Lately, though, programming for beginners has been possible, thanks to software that has been developed, such as Scratch. In this article, you will see how to create your own game in an easy and fun way.\r\nWhy start Scratch Coding?\r\nThe rate at which jobs in the IT sector are growing is almost twice as high as in other industries, and this is only an indication of work in future new technologies. Researchers estimate that “the digital economy is worth $11.5 trillion globally, equivalent to 15.5 percent of global GDP and has grown two and a half times faster than global GDP over the past 15 years.”\r\nIn a few years, programming knowledge will be fully integrated into educational programs for every age. Using coding concepts, it’s possible to design projects that utilize very similar guidelines and rubrics for a digital project, thereby giving students the opportunity to learn about their topic and sharpen their coding skills at the same time. Future human resources, generations Y and Z, will have at their core the digital skills needed to program.', 'uploads_demo/blog/2.jpg', 1, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=active, 0=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `uuid`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '28828707-9415-4068-adef-12641516486a', 'Development', 'development', 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(2, 'ebe375f1-0a4a-4b3a-bf56-028824c9507f', 'IT & Software', 'it-software', 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(3, '61efe125-6f32-4c7a-b6fe-061a3df3dbd2', 'Data Science', 'data-science', 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(4, '890e77d8-0b8a-4073-9e91-c24d675e1d39', 'Soft Skills', 'soft-skills', 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(5, '911dcac5-1200-4fc4-94f2-2caea6251453', 'Business', 'business', 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(6, 'ad757f0e-a7db-4a60-8efb-0858880690c8', 'Marketing', 'marketing', 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(7, 'e0637550-8560-4e2d-b4c4-fddc8b7bf1a6', 'Design', 'design', 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 2=deactivate',
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `booking_histories`
--

CREATE TABLE `booking_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `instructor_user_id` bigint(20) UNSIGNED NOT NULL,
  `student_user_id` bigint(20) UNSIGNED NOT NULL,
  `consultation_slot_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` tinyint(4) NOT NULL COMMENT '0=sunday,1=monday,2=tuesday,3=wednesday,4=thursday,5=friday,6=saturday',
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0=Pending,1=Approve,2=Cancel,3=Completed',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=In-person,2=Online',
  `start_url` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_url` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_host_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'zoom,bbb,jitsi',
  `moderator_pw` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'use only for bbb',
  `attendee_pw` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'use only for bbb',
  `cancel_reason` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_back_money_status` tinyint(4) DEFAULT 0 COMMENT '1=Yes, 0=No',
  `back_admin_commission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Admin Commission',
  `back_owner_balance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Instructor Commission',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bundles`
--

CREATE TABLE `bundles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1=active,0=disable',
  `is_subscription_enable` tinyint(4) NOT NULL DEFAULT 1,
  `access_period` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bundle_courses`
--

CREATE TABLE `bundle_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bundle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cart_management`
--

CREATE TABLE `cart_management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receiver_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `consultation_slot_id` bigint(20) UNSIGNED DEFAULT NULL,
  `consultation_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consultation_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consultation_available_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bundle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bundle_course_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promotion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_subscription_enable` bigint(20) UNSIGNED NOT NULL,
  `main_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_feature` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 0=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `categories`
--

INSERT INTO `categories` (`id`, `uuid`, `name`, `image`, `is_feature`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '31c77dbb-0271-406e-afdd-da92e4a37f92', 'Desenvolvimento', 'uploads_demo/category/1.png', 'yes', 'Desenvolvimento', 1, '2022-12-05 01:35:33', '2023-07-07 16:47:37'),
(2, 'ac42d76f-65cc-463a-8428-733c305215e4', 'TI e Software', 'uploads_demo/category/2.png', 'yes', 'TI-e-Software', 1, '2022-12-05 01:35:33', '2023-07-07 16:47:25'),
(3, 'd8cde16c-e98b-4991-adf9-f2b150789c90', 'Office Productivity', 'uploads_demo/category/3.png', 'yes', 'office-productivity', 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(4, '07e99f6a-c5b7-4fe1-9503-f180bb8484f9', 'Personal Development', 'uploads_demo/category/4.png', 'yes', 'personal-development', 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(5, '44b94434-0327-4e77-b3b7-ad2523809bce', 'Negócios', NULL, 'no', 'Negócios', 1, '2022-12-05 01:35:33', '2023-07-07 16:47:12'),
(6, '57e18cf4-0050-4baf-8e10-3d9a65eaf8ed', 'Marketing', NULL, 'no', 'marketing', 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(7, '90cd37ac-b804-4095-a471-3651ec40718a', 'Projeto', NULL, 'no', 'Projeto', 1, '2022-12-05 01:35:33', '2023-07-07 16:47:00'),
(8, '4441d186-fab2-4e8e-a4ed-ab7fc24f6e71', 'Saúde', NULL, 'no', 'Saúde', 1, '2022-12-05 01:35:33', '2023-07-07 16:46:48'),
(9, 'a1d1c370-5ce4-4bbc-9b27-5e8645282259', 'Contabilidade Finanças', NULL, 'no', 'Contabilidade-Finanças', 1, '2022-12-05 01:35:33', '2023-07-07 16:46:36');

-- --------------------------------------------------------

--
-- Estrutura para tabela `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_number` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'yes' COMMENT 'yes, no',
  `number_x_position` int(11) DEFAULT 0,
  `number_y_position` int(11) DEFAULT 0,
  `number_font_size` int(11) DEFAULT 18,
  `number_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_x_position` int(11) DEFAULT 0,
  `title_y_position` int(11) DEFAULT 0,
  `title_font_size` int(11) DEFAULT 20,
  `title_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_date` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'yes, no',
  `date_x_position` int(11) DEFAULT 0,
  `date_y_position` int(11) DEFAULT 16,
  `date_font_size` int(11) DEFAULT 30,
  `date_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_student_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'yes, no',
  `student_name_x_position` int(11) DEFAULT 0,
  `student_name_y_position` int(11) DEFAULT 16,
  `student_name_font_size` int(11) DEFAULT 32,
  `student_name_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_max_length` int(11) DEFAULT 80,
  `body_x_position` int(11) DEFAULT 0,
  `body_y_position` int(11) DEFAULT 16,
  `body_font_size` int(11) DEFAULT 20,
  `body_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_1_show` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'yes, no',
  `role_1_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_1_signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_1_x_position` int(11) DEFAULT 16,
  `role_1_y_position` int(11) DEFAULT 16,
  `role_1_font_size` int(11) DEFAULT 18,
  `role_1_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_2_show` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'yes, no',
  `role_2_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_2_x_position` int(11) DEFAULT 0,
  `role_2_y_position` int(11) DEFAULT 0,
  `role_2_font_size` int(11) DEFAULT 18,
  `role_2_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `certificates`
--

INSERT INTO `certificates` (`id`, `uuid`, `certificate_number`, `image`, `show_number`, `number_x_position`, `number_y_position`, `number_font_size`, `number_font_color`, `title`, `title_x_position`, `title_y_position`, `title_font_size`, `title_font_color`, `show_date`, `date_x_position`, `date_y_position`, `date_font_size`, `date_font_color`, `show_student_name`, `student_name_x_position`, `student_name_y_position`, `student_name_font_size`, `student_name_font_color`, `body`, `body_max_length`, `body_x_position`, `body_y_position`, `body_font_size`, `body_font_color`, `role_1_show`, `role_1_title`, `role_1_signature`, `role_1_x_position`, `role_1_y_position`, `role_1_font_size`, `role_1_font_color`, `role_2_show`, `role_2_title`, `role_2_x_position`, `role_2_y_position`, `role_2_font_size`, `role_2_font_color`, `path`, `status`, `created_at`, `updated_at`) VALUES
(1, '82fe63be-3553-4f7f-9105-ebf28a7281dc', '7614445', NULL, 'yes', NULL, NULL, NULL, '#363234', NULL, NULL, NULL, NULL, '#000000', 'yes', NULL, NULL, NULL, '#363234', 'yes', NULL, NULL, NULL, '#363234', NULL, 80, NULL, NULL, NULL, '#363234', NULL, NULL, NULL, NULL, NULL, NULL, '#363234', NULL, NULL, NULL, NULL, NULL, '#000000', NULL, 0, '2023-07-07 19:03:45', '2023-07-07 19:03:45');

-- --------------------------------------------------------

--
-- Estrutura para tabela `certificate_by_instructors`
--

CREATE TABLE `certificate_by_instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `certificate_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_x_position` int(11) NOT NULL DEFAULT 0,
  `title_y_position` int(11) NOT NULL DEFAULT 0,
  `title_font_size` int(11) NOT NULL DEFAULT 20,
  `title_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_max_length` int(11) NOT NULL DEFAULT 80,
  `body_x_position` int(11) NOT NULL DEFAULT 0,
  `body_y_position` int(11) NOT NULL DEFAULT 16,
  `body_font_size` int(11) NOT NULL DEFAULT 20,
  `body_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_2_x_position` int(11) NOT NULL DEFAULT 0,
  `role_2_y_position` int(11) NOT NULL DEFAULT 10,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `incoming_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `outgoing_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` tinyint(4) DEFAULT 2 COMMENT '1=seen,2=not seen',
  `created_user_type` tinyint(4) DEFAULT NULL COMMENT '1=student,2=instructor',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dhanmondi', NULL, NULL),
(2, 1, 'Bannai', NULL, NULL),
(3, 2, 'Nirala', NULL, NULL),
(4, 2, 'Zero Point', NULL, NULL),
(5, 3, 'Tomchombridge', NULL, NULL),
(6, 3, 'Cantonment', NULL, NULL),
(7, 1, 'Campo Grande', NULL, '2023-07-07 15:44:09'),
(8, 4, 'Alamo', NULL, NULL),
(9, 5, 'Albin', NULL, NULL),
(10, 6, 'Bartow', NULL, NULL),
(11, 7, 'Oban', NULL, NULL),
(12, 8, 'Holywood', NULL, NULL),
(13, 9, 'Ely', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `client_logos`
--

CREATE TABLE `client_logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `client_logos`
--

INSERT INTO `client_logos` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Ovita', 'uploads_demo/client-logo/1.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(2, 'Vigon', 'uploads_demo/client-logo/2.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(3, 'Betribe', 'uploads_demo/client-logo/3.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(4, 'Parsit', 'uploads_demo/client-logo/4.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(5, 'Karika', 'uploads_demo/client-logo/5.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `consultation_slots`
--

CREATE TABLE `consultation_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `day` tinyint(4) NOT NULL COMMENT '0=sunday,1=monday,2=tuesday,3=wednesday,4=thursday,5=friday,6=saturday',
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hour_duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minute_duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_us_issue_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contact_us_issues`
--

CREATE TABLE `contact_us_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=active, 0=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonecode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `continent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `countries`
--

INSERT INTO `countries` (`id`, `short_name`, `country_name`, `flag`, `slug`, `phonecode`, `continent`, `created_at`, `updated_at`) VALUES
(1, 'BD', 'Bangladesh', '', 'bangladesh', '+88', 'Asia', NULL, NULL),
(2, 'BRL', 'Brasil', 'BRL', '', '67 992875364', 'America', NULL, '2023-07-07 15:43:23'),
(3, 'UK', 'United Kingdom', '', 'united-kingdom', '+44', 'Europe', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_type` tinyint(4) NOT NULL COMMENT '1=Global,2=Instructor, 3=Course',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=activate, 0=deactivated',
  `creator_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'creator_id=user_id',
  `percentage` decimal(8,2) DEFAULT 0.00,
  `minimum_amount` int(11) DEFAULT NULL,
  `maximum_use_limit` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `coupon_courses`
--

CREATE TABLE `coupon_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `coupon_instructors`
--

CREATE TABLE `coupon_instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `course_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=general, 2=scorm',
  `instructor_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `subcategory_id` bigint(20) DEFAULT NULL,
  `course_language_id` bigint(20) DEFAULT NULL,
  `difficulty_level_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_details` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `old_price` decimal(8,2) DEFAULT 0.00,
  `learner_accessibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paid,free',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_video_check` tinyint(4) DEFAULT NULL COMMENT '1=normal video, 2=youtube_video',
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_video_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_subscription_enable` tinyint(4) NOT NULL DEFAULT 1,
  `private_mode` tinyint(4) NOT NULL DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=published, 2=waiting_for_review, 3=hold, 4=draft',
  `average_rating` decimal(8,2) DEFAULT 0.00,
  `drip_content` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Show All, 2=sequence, 3=unlock after x day, 4=unlock by date, 5=unlock after finish pre-requisite',
  `access_period` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `courses`
--

INSERT INTO `courses` (`id`, `uuid`, `user_id`, `course_type`, `instructor_id`, `category_id`, `subcategory_id`, `course_language_id`, `difficulty_level_id`, `title`, `subtitle`, `description`, `feature_details`, `price`, `old_price`, `learner_accessibility`, `image`, `intro_video_check`, `video`, `youtube_video_id`, `is_subscription_enable`, `private_mode`, `slug`, `is_featured`, `status`, `average_rating`, `drip_content`, `access_period`, `created_at`, `updated_at`, `organization_id`) VALUES
(1, '2c2cd598-a5c7-442b-9a47-6f9c8b91b504', 2, 1, 1, 2, 9, 1, 1, 'DBA Oracle: Inclui GRID 21c & Oracle 19c Oracle Linux 8 2023', 'Aprenda Oracle de Forma Definitiva e Conquiste uma Vaga em um dos Mercados de Trabalho mais Bem Remunerados de T.I', 'Se você está procurando uma carreira como um Administrador de Banco de Dados Oracle, este treinamento é essencial para você.\r\n\r\nFazer um treinamento em Administração de Banco de Dados Oracle 21c pode ajudá-lo a conseguir um emprego melhor por várias razões.\r\n\r\nPrimeiro, o Oracle é um dos principais sistemas de gerenciamento de banco de dados do mundo, amplamente utilizado em grandes empresas e organizações governamentais. Dominar a administração de bancos de dados Oracle é uma habilidade altamente valorizada no mercado de trabalho, e muitas empresas estão procurando profissionais com experiência em Oracle para gerenciar seus bancos de dados.\r\n\r\nSegundo, o mercado de trabalho para profissionais de tecnologia, incluindo administradores de bancos de dados, é altamente competitivo e em constante evolução. Os empregadores estão procurando profissionais com habilidades atualizadas e conhecimento em tecnologias recentes. O Oracle 21c é a versão mais recente do sistema de gerenciamento de banco de dados Oracle, e um treinamento em sua administração o colocaria na vanguarda das tecnologias mais recentes.\r\n\r\nTerceiro, um treinamento em administração de bancos de dados Oracle 21c também pode ajudá-lo a desenvolver habilidades em outras áreas relacionadas, como backup e recuperação, gerenciamento de memória e administração de parâmetros. Estas são habilidades que são altamente valorizadas pelas empresas que procuram contratar administradores de bancos de dados Oracle.\r\n\r\nPor último, o treinamento em administração de bancos de dados Oracle 21c pode ajudá-lo a se destacar em entrevistas de emprego e a negociar salários mais altos. Ao mostrar que você tem habilidades e conhecimentos atualizados em uma área altamente valorizada, você pode se destacar entre outros candidatos e ser considerado para posições mais altas e melhor remuneradas.\r\n\r\nEm resumo, um treinamento em administração de bancos de dados Oracle 21c pode ajudá-lo a conseguir um emprego melhor, aumentar suas chances de ser contratado e negociar salários mais altos.\r\n\r\nNeste curso, você aprenderá a instalar e configurar o Oracle Linux 8, instalar o Oracle Grid Infrastructure 21c e o Oracle RDBMS 21c, gerenciar tablespaces, datafiles, controlfiles, redo log files e arquivos de log arquivados, criar objetos no banco de dados Oracle, administrar parâmetros no Oracle, gerenciar estruturas de memória SGA e PGA, fazer backup e recuperação Oracle com RMAN e SQL Language básico.\r\n\r\nA seguir, descrevemos cada módulo deste treinamento em detalhes:\r\n\r\n\r\n    Criação da sua máquina virtual no Oracle Virtual Box Neste módulo, você aprenderá a criar uma máquina virtual no Oracle Virtual Box. Você também aprenderá a configurar o tamanho do disco rígido, memória RAM e outras configurações necessárias para executar o Oracle Linux 8.\r\n\r\n\r\n    Instalação e configuração do Oracle Linux 8 Neste módulo, você aprenderá a instalar e configurar o Oracle Linux 8 em sua máquina virtual. Você também aprenderá a instalar as ferramentas necessárias para o curso, como o Oracle Grid Infrastructure 21c e o Oracle RDBMS 21c.\r\n\r\n\r\n    Preparação do Oracle Linux 8 para instalação do Grid Infrastructure 21c Neste módulo, você aprenderá a preparar o Oracle Linux 8 para a instalação do Grid Infrastructure 21c. Isso inclui a configuração das variáveis de ambiente necessárias, a criação de usuários e grupos, a configuração do firewall e a instalação de pré-requisitos.\r\n\r\n\r\n    Instalação do GRID 21c no Oracle Linux 8 Neste módulo, você aprenderá a instalar o Oracle Grid Infrastructure 21c no Oracle Linux 8. Você também aprenderá a configurar o Clusterware, que é um software de cluster que gerencia a alta disponibilidade dos bancos de dados Oracle.\r\n\r\n\r\n    Instalação do ORACLE RDBMS 21c no Oracle Linux 8 Neste módulo, você aprenderá a instalar o Oracle RDBMS 21c no Oracle Linux 8. Você também aprenderá a criar um banco de dados Oracle, criar usuários e conceder permissões.\r\n\r\n\r\n    Gerenciamento de tablespaces e datafiles Neste módulo, você aprenderá a gerenciar tablespaces e datafiles. Você aprenderá a criar e excluir tablespaces e datafiles, alterar o tamanho dos datafiles e visualizar informações sobre tablespaces e datafiles.\r\n\r\n\r\n    Gerenciamento de controlfiles Neste módulo, você aprenderá a gerenciar controlfiles. Você aprenderá a criar e excluir controlfiles, fazer backup e restaurar controlfiles e visualizar informações sobre controlfiles.\r\n\r\n\r\n    Gerenciamento de redo log files Neste módulo, você aprenderá a gerenciar redo log files. Você aprenderá a criar e excluir redo log files, visualizar informações sobre redo log files e configurar grupos de redo log files.\r\n\r\n\r\n    Gerenciamento de archived log files Neste módulo, você aprenderá a gerenciar archived log files. Você aprenderá a criar e excluir archived log files, visualizar informações sobre archived log files e configurar o modo de arquivamento.\r\n\r\n\r\n    Criação de objetos no banco de dados Oracle Neste módulo, você aprenderá a criar objetos no banco de dados Oracle. Isso inclui a criação de tabelas, índices, visualizações e sinônimos. Você também aprenderá a modificar e excluir objetos existentes.\r\n\r\n\r\n    Administração de parâmetros no Oracle Neste módulo, você aprenderá a administrar parâmetros no Oracle. Isso inclui a configuração de parâmetros de inicialização e de sessão, a visualização de informações sobre parâmetros e a alteração de valores de parâmetros.\r\n\r\n\r\n    Gerenciamento de estruturas de memória SGA e PGA Neste módulo, você aprenderá a gerenciar as estruturas de memória SGA e PGA. Isso inclui a configuração de tamanhos e valores de parâmetros relacionados à SGA e PGA, a visualização de informações sobre as estruturas de memória e a monitoração do desempenho relacionado à SGA e PGA.\r\n\r\n\r\n    Backup e recovery Oracle com RMAN Neste módulo, você aprenderá a fazer backup e recuperação Oracle com RMAN. Isso inclui a configuração de políticas de backup, a criação de backups completos e incrementais, a recuperação de banco de dados, a validação de backups e a utilização de ferramentas de diagnóstico.\r\n\r\n\r\n    SQL Language básico Neste módulo, você aprenderá o básico da SQL Language que um DBA precisa saber para não ficar no escuro quando as interfaces gráficas não estão disponíveis.\r\n\r\nO treinamento Administração de Banco de Dados Oracle inclui aulas com 12c, 19c e agora 21c no Oracle Linux 8.\r\n\r\nAlém disso, você receberá um treinamento do Oracle Enterprise Manager Cloud 13c\r\n\r\nCom a crescente demanda por soluções de gerenciamento de nuvem, muitas empresas estão procurando maneiras de melhorar seus processos de gerenciamento de dados e infraestrutura. Uma das melhores maneiras de fazer isso é aprender Oracle Enterprise Manager Cloud 13c, uma ferramenta de gerenciamento de nuvem altamente eficaz que ajuda as empresas a gerenciar seus aplicativos em nuvem com facilidade e eficiência. Neste artigo, vamos discutir por que você precisa aprender o Oracle Enterprise Manager Cloud 13c e como isso pode ajudá-lo a melhorar seus processos de gerenciamento de nuvem.\r\n\r\n\r\n    Gerenciamento de nuvem simplificado\r\n\r\nCom o Oracle Enterprise Manager Cloud 13c, você pode simplificar o gerenciamento de sua infraestrutura em nuvem, o que é essencial para garantir a segurança e a confiabilidade de seus aplicativos em nuvem. Com esta ferramenta, você pode gerenciar todos os seus recursos de nuvem em um só lugar, o que significa que você pode facilmente monitorar, provisionar e gerenciar seus aplicativos em nuvem.\r\n\r\n\r\n    Melhor desempenho e eficiência\r\n\r\nO Oracle Enterprise Manager Cloud 13c pode ajudá-lo a melhorar o desempenho e a eficiência de seus aplicativos em nuvem. Ele oferece recursos avançados de gerenciamento de desempenho, como diagnóstico e resolução de problemas, que podem ajudá-lo a identificar rapidamente e corrigir problemas em seus aplicativos em nuvem. Além disso, o Oracle Enterprise Manager Cloud 13c oferece recursos de automação que podem ajudá-lo a provisionar e configurar rapidamente seus recursos de nuvem, o que pode economizar tempo e dinheiro.\r\n\r\n\r\n    Monitoramento de segurança aprimorado\r\n\r\nA segurança é uma preocupação importante para as empresas que usam aplicativos em nuvem. Com o Oracle Enterprise Manager Cloud 13c, você pode monitorar a segurança de seus aplicativos em nuvem de forma eficaz e eficiente. Ele oferece recursos avançados de segurança, como detecção de ameaças em tempo real, que podem ajudá-lo a identificar e resolver problemas de segurança antes que eles se tornem uma ameaça para seus aplicativos em nuvem.\r\n\r\n\r\n    Integração com outras ferramentas Oracle\r\n\r\nO Oracle Enterprise Manager Cloud 13c é uma ferramenta altamente integrada que pode ser facilmente integrada com outras ferramentas Oracle. Isso significa que você pode facilmente integrar o Oracle Enterprise Manager Cloud 13c com outras ferramentas Oracle que você já está usando, o que pode ajudar a melhorar a eficiência de seus processos de gerenciamento de nuvem.\r\n\r\n\r\n    Treinamento e certificação disponíveis\r\n\r\nAprender o Oracle Enterprise Manager Cloud 13c pode ajudá-lo a melhorar suas habilidades e aumentar suas chances de sucesso em sua carreira.\r\n\r\n\r\nConclusão\r\n\r\nAprender o Oracle Enterprise Manager Cloud 13c pode ser altamente benéfico para empresas que procuram melhorar seus processos de gerenciamento de nuvem. Com esta ferramenta, você pode simplificar o gerenciamento de sua infraestrutura em nuvem, melhorar o desempenho e a eficiência de seus aplicativos em nuvem, monitorar a segurança de forma eficaz, integrar com outras ferramentas Oracle e aumentar suas habilidades e oportunidades de carreira por meio de treinamento e certificação.\r\n\r\nAprender o Oracle Enterprise Manager Cloud 13c não é apenas útil para profissionais de TI, mas também para gerentes de negócios que desejam melhorar a eficiência de seus processos de gerenciamento de nuvem e a segurança de seus aplicativos em nuvem. Com a demanda crescente por soluções de gerenciamento de nuvem, aprender o Oracle Enterprise Manager Cloud 13c pode ser a chave para melhorar a eficiência e a produtividade de sua equipe e sua organização como um todo.\r\n\r\nAlém disso, o Oracle Enterprise Manager Cloud 13c é altamente flexível e pode ser personalizado para atender às necessidades específicas de sua empresa. Isso significa que você pode adaptar a ferramenta de gerenciamento de nuvem às suas necessidades específicas, o que pode ajudar a aumentar a eficiência de seus processos de gerenciamento de nuvem.\r\n\r\nEm resumo, aprender o Oracle Enterprise Manager Cloud 13c é uma excelente maneira de melhorar seus processos de gerenciamento de nuvem, aumentar a segurança de seus aplicativos em nuvem e melhorar a eficiência de sua equipe. Com os recursos avançados de gerenciamento de desempenho, segurança e automação, esta ferramenta de gerenciamento de nuvem pode ajudá-lo a atingir seus objetivos de negócios de maneira eficaz e eficiente. Então, se você está procurando melhorar seus processos de gerenciamento de nuvem, não deixe de aprender o Oracle Enterprise Manager Cloud 13c.', NULL, 0.00, NULL, 'free', 'uploads/course/1688737055-THivNX7LpH.jpg', 2, NULL, 'gD-TfPSRAtA', 0, 0, 'DBA-Oracle-Inclui-GRID-21c-Oracle-19c-Oracle-Linux-8-2023', 0, 1, 0.00, 1, 0, '2023-07-07 16:36:05', '2023-07-07 17:59:35', NULL),
(2, 'a0a58d1d-1336-4bc5-9ac3-492cf903e3a1', 2, 1, 1, 2, 8, 1, 2, 'informática', 'info', 'teste', NULL, 0.00, NULL, 'free', 'uploads/course/1688843630-JfAuChO1xL.jpg', NULL, NULL, NULL, 0, 0, 'informatica', 0, 3, 0.00, 1, NULL, '2023-07-08 22:12:43', '2023-07-15 13:22:45', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `course_instructor`
--

CREATE TABLE `course_instructor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `share` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `course_instructor`
--

INSERT INTO `course_instructor` (`id`, `course_id`, `instructor_id`, `share`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 100, 1, NULL, '2023-07-07 16:39:37', '2023-07-07 16:39:37'),
(2, 2, 2, 100, 1, NULL, '2023-07-08 22:15:14', '2023-07-08 22:15:14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `course_languages`
--

CREATE TABLE `course_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `course_languages`
--

INSERT INTO `course_languages` (`id`, `uuid`, `name`, `created_at`, `updated_at`) VALUES
(1, 'fec398b5-c9e5-45ee-94b4-1495ddbd75db', 'English', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(2, '17e8849b-9587-4a90-ab45-0fba2e81c148', 'Bangla', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(3, '2eaa0efb-99e0-419b-a51c-0ed08210f2b7', 'Hindi', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(4, '2fffcb3e-bea5-43a6-840d-f3b2a435ce24', 'Spanish', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(5, 'c22c508d-1ce1-4f26-98e5-ef4fc4fdb660', 'Arabic', '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `course_lectures`
--

CREATE TABLE `course_lectures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `lesson_id` bigint(20) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lecture_type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1=free/show, 2=paid/lock',
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_duration_second` double DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'uploaded_video' COMMENT 'video, youtube, vimeo, text, image, pdf, slide_document, audio',
  `vimeo_upload_type` tinyint(4) DEFAULT 1 COMMENT '1=video file upload, 2=vimeo uploaded video id',
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_day` int(11) DEFAULT NULL,
  `unlock_date` date DEFAULT NULL,
  `pre_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `course_lectures`
--

INSERT INTO `course_lectures` (`id`, `uuid`, `course_id`, `lesson_id`, `title`, `lecture_type`, `file_path`, `url_path`, `file_size`, `file_duration`, `file_duration_second`, `type`, `vimeo_upload_type`, `text`, `image`, `pdf`, `slide_document`, `audio`, `after_day`, `unlock_date`, `pre_ids`, `created_at`, `updated_at`) VALUES
(1, 'cc2f9887-a813-4139-a19d-b2ba991a956d', 1, 1, 'Instalar e Configurar Oracle 19c com Oracle Linux 8', 1, NULL, 'PLJZRlbWeQvwI8nRzviH5ckXwYudrw2T56', NULL, '02:00', 120, 'youtube', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-07 16:39:27', '2023-07-07 16:39:27'),
(2, 'c551378c-56d5-417b-a203-0e37244052ad', 2, 2, 'aula1', 1, 'uploads/video/1688843693yhbExfw8FI.mp4', NULL, NULL, '00:54', 54, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-08 22:14:58', '2023-07-08 22:14:58'),
(3, '1ed7a749-cfe1-4b82-803b-ebeead9fb040', 2, 2, 'aula1', 1, 'uploads/video/1688843693rC9KpqMxRX.mp4', NULL, NULL, '00:54', 54, 'video', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-08 22:14:58', '2023-07-08 22:14:58');

-- --------------------------------------------------------

--
-- Estrutura para tabela `course_lecture_views`
--

CREATE TABLE `course_lecture_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `course_lecture_id` bigint(20) NOT NULL,
  `enrollment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `course_lessons`
--

CREATE TABLE `course_lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `course_lessons`
--

INSERT INTO `course_lessons` (`id`, `uuid`, `course_id`, `name`, `short_description`, `created_at`, `updated_at`) VALUES
(1, 'a6f904d6-9ada-4e31-ae86-d459d51d6ea0', 1, 'Instalar e Configurar Oracle 19c com Oracle Linux 8', NULL, '2023-07-07 16:37:59', '2023-07-07 16:37:59'),
(2, '554850b1-265e-4910-83f4-da5a5694d33f', 2, 'testee', NULL, '2023-07-08 22:14:07', '2023-07-08 22:14:07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `course_resources`
--

CREATE TABLE `course_resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `original_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `course_tags`
--

CREATE TABLE `course_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `course_tags`
--

INSERT INTO `course_tags` (`id`, `course_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `course_upload_rules`
--

CREATE TABLE `course_upload_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_placement` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'before' COMMENT 'before, after',
  `current_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'on, off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `currencies`
--

INSERT INTO `currencies` (`id`, `currency_code`, `symbol`, `currency_placement`, `current_currency`, `created_at`, `updated_at`) VALUES
(1, 'BRL', 'R$', 'before', 'on', NULL, '2023-07-07 16:48:35'),
(2, 'BDT', '৳', 'before', 'off', NULL, '2023-07-07 16:48:35'),
(3, 'INR', '₹', 'before', 'off', NULL, '2023-07-07 16:48:35'),
(4, 'GBP', '£', 'after', 'off', NULL, '2023-07-07 16:48:35'),
(5, 'MXN', '$', 'before', 'off', NULL, '2023-07-07 16:48:35'),
(6, 'SAR', 'SR', 'before', 'off', NULL, '2023-07-07 16:48:35'),
(7, 'TRY', '₺', 'after', 'off', NULL, '2023-07-07 16:48:35'),
(8, 'ARS', '$', 'before', 'off', NULL, '2023-07-07 16:48:35'),
(9, 'EUR', '€', 'before', 'off', NULL, '2023-07-07 16:48:35');

-- --------------------------------------------------------

--
-- Estrutura para tabela `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `device_uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_hijacked_at` timestamp NULL DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `device_user`
--

CREATE TABLE `device_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `device_id` bigint(20) UNSIGNED NOT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `difficulty_levels`
--

CREATE TABLE `difficulty_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `difficulty_levels`
--

INSERT INTO `difficulty_levels` (`id`, `uuid`, `name`, `created_at`, `updated_at`) VALUES
(1, 'fc89a122-5918-4a2c-88c3-1c21f1967fbd', 'Higher', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(2, 'c4cf5296-ad64-462c-9be7-c072ce09a833', 'Medium', '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `discussions`
--

CREATE TABLE `discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 2=deactivate',
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment_as` tinyint(4) NOT NULL COMMENT '1=Instructor, 2=Student',
  `view` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1=seen,2=not seen',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `email_notification_settings`
--

CREATE TABLE `email_notification_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `updates_from_classes` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `updates_from_teacher_discussion` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `activity_on_your_project` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `activity_on_your_discussion_comment` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `reply_comment` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `new_follower` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `new_class_by_someone_you_follow` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `new_live_session` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=inactive, 1-active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `owner_user_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `consultation_slot_id` bigint(20) DEFAULT NULL,
  `bundle_id` bigint(20) DEFAULT NULL,
  `user_package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `completed_time` double DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `enrollments`
--

INSERT INTO `enrollments` (`id`, `order_id`, `user_id`, `owner_user_id`, `course_id`, `consultation_slot_id`, `bundle_id`, `user_package_id`, `completed_time`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 2, 1, NULL, NULL, NULL, NULL, '2023-07-07 13:51:37', '2037-12-31 23:59:59', 1, '2023-07-07 16:51:37', '2023-07-07 16:51:37'),
(2, 2, 4, 2, 1, NULL, NULL, NULL, NULL, '2023-07-07 14:09:47', '2037-12-31 23:59:59', 1, '2023-07-07 17:09:47', '2023-07-07 17:09:47'),
(3, 3, 3, 2, 2, NULL, NULL, NULL, NULL, '2023-07-08 19:27:01', '2037-12-31 23:59:59', 1, '2023-07-08 22:27:01', '2023-07-08 22:27:01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks_per_question` int(11) NOT NULL DEFAULT 0,
  `duration` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'multiple_choice, true_false',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=unpublish, 1=published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `exams`
--

INSERT INTO `exams` (`id`, `uuid`, `user_id`, `course_id`, `name`, `short_description`, `marks_per_question`, `duration`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'b5eec6e0-7623-40ec-a169-ebf499b6553d', 2, 1, 'Matematica', NULL, 3, 15, 'true_false', 1, '2023-07-07 16:41:42', '2023-07-07 16:44:23'),
(2, 'f459fb9b-5e9b-4574-9cc7-e31dccbac3ba', 2, 2, 'REGRA DE TRÊS', NULL, 1, 5, 'multiple_choice', 0, '2023-07-08 22:18:19', '2023-07-08 22:18:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `faq_questions`
--

CREATE TABLE `faq_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `faq_questions`
--

INSERT INTO `faq_questions` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'which I enjoy with my whole heart am alone feel?', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a  greater artist than now. When, while the lovely valley with vapour around me, and the meridian.', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(2, 'which I enjoy with my whole heart am alone feel?', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a  greater artist than now. When, while the lovely valley with vapour around me, and the meridian.', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(3, 'which I enjoy with my whole heart am alone feel?', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a  greater artist than now. When, while the lovely valley with vapour around me, and the meridian.', '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `forum_categories`
--

CREATE TABLE `forum_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 0=disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `forum_posts`
--

CREATE TABLE `forum_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `forum_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 0=disable',
  `total_seen` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `forum_post_comments`
--

CREATE TABLE `forum_post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forum_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 0=disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `generate_contents`
--

CREATE TABLE `generate_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_image` tinyint(4) NOT NULL DEFAULT 0,
  `service` tinyint(4) NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prompt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `creativity` tinyint(4) NOT NULL,
  `variation` tinyint(4) NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `output` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `gmeet_settings`
--

CREATE TABLE `gmeet_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `calender_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `homes`
--

CREATE TABLE `homes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_mini_words_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_first_line_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_second_line_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_second_line_changeable_words` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_third_line_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_first_button_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_first_button_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_second_button_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_second_button_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_feature_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `courses_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `bundle_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `top_category_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `consultation_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `instructor_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `video_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `customer_says_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `achievement_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `faq_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `instructor_support_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `category_courses_area` tinyint(4) NOT NULL DEFAULT 0,
  `upcoming_courses_area` tinyint(4) NOT NULL DEFAULT 0,
  `subscription_show` tinyint(4) NOT NULL DEFAULT 1,
  `saas_show` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `homes`
--

INSERT INTO `homes` (`id`, `banner_mini_words_title`, `banner_first_line_title`, `banner_second_line_title`, `banner_second_line_changeable_words`, `banner_third_line_title`, `banner_subtitle`, `banner_first_button_name`, `banner_first_button_link`, `banner_second_button_name`, `banner_second_button_link`, `banner_image`, `special_feature_area`, `courses_area`, `bundle_area`, `top_category_area`, `consultation_area`, `instructor_area`, `video_area`, `customer_says_area`, `achievement_area`, `faq_area`, `instructor_support_area`, `category_courses_area`, `upcoming_courses_area`, `subscription_show`, `saas_show`, `created_at`, `updated_at`) VALUES
(1, '[\"Come\",\"for\",\"learn\"]', 'A Better', 'Learning', '[\"Future\",\"Platform\",\"Era\",\"Point\",\"Area\"]', 'Starts Here.', 'While the lovely valley teems with vapour around me, and the meridian sun strikes the upper', 'Take A Tour', '#', 'Popular Courses', '#', 'uploads_demo/home/hero-img.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `home_special_features`
--

CREATE TABLE `home_special_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `professional_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consultancy_area` tinyint(4) NOT NULL DEFAULT 3,
  `about_me` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `remove_from_web_search` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `auto_content_approval` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=approved, 2=blocked',
  `is_subscription_enable` tinyint(4) DEFAULT 0,
  `is_offline` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'offline status',
  `offline_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'offline message',
  `consultation_available` tinyint(4) DEFAULT 0 COMMENT '1=yes, 0=no',
  `hourly_rate` int(11) DEFAULT 0,
  `hourly_old_rate` decimal(10,2) DEFAULT NULL,
  `available_type` tinyint(4) DEFAULT 3 COMMENT '1=In-person, 0=Online, 3=Both',
  `cv_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `instructors`
--

INSERT INTO `instructors` (`id`, `uuid`, `user_id`, `organization_id`, `country_id`, `province_id`, `state_id`, `city_id`, `first_name`, `last_name`, `professional_title`, `phone_number`, `postal_code`, `address`, `consultancy_area`, `about_me`, `gender`, `social_link`, `slug`, `is_private`, `remove_from_web_search`, `auto_content_approval`, `status`, `is_subscription_enable`, `is_offline`, `offline_message`, `consultation_available`, `hourly_rate`, `hourly_old_rate`, `available_type`, `cv_file`, `cv_filename`, `level_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '250809a4-761c-4b21-a180-e91842b57772', 2, NULL, NULL, NULL, NULL, NULL, 'Professora', 'Professor', 'Magoweb Professora', '67992875365', NULL, 'Travessa Allipio Soares Vargas, 97', 3, 'Os códigos são escolhidos, de acordo com a ISO 3166/MA, \"para refletir o componente significativo e exclusivo do nome do país, a fim de permitir uma associação visual entre o nome do país e o código do país\".[5] Por esse motivo, componentes comuns de nomes de países como \"República\", \"Reino\", \"Unido\", \"Federal\" ou \"Democrata\" normalmente não são usados ​​para derivar os elementos do código. Como consequência, por exemplo, o Reino Unido recebe oficialmente o código alfa-2 GB em vez de UK, com base em seu nome oficial \"Reino Unido da Grã-Bretanha e Irlanda do Norte\" (embora o Reino Unido seja reservado a pedido do Reino Unido ). Alguns códigos são escolhidos com base nos nomes nativos dos países. Por exemplo, a Alemanha recebe o código alfa-2 DE, com base em seu nome nativo \"Deutschland\".', NULL, NULL, 'Professora-Professor', 'no', 'no', 0, 1, 0, 0, NULL, 0, 0, NULL, 3, 'uploads/user/1688736845tXoWpU69Zo.pdf', 'Curriculo Samuel.pdf', NULL, '2023-07-07 16:34:07', '2023-07-07 16:34:46', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `instructor_awards`
--

CREATE TABLE `instructor_awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `winning_year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `instructor_certificates`
--

CREATE TABLE `instructor_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passing_year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `instructor_consultation_day_statuses`
--

CREATE TABLE `instructor_consultation_day_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `day` tinyint(4) NOT NULL COMMENT '0=sunday,1=monday,2=tuesday,3=wednesday,4=thursday,5=friday,6=saturday',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `instructor_features`
--

CREATE TABLE `instructor_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `instructor_features`
--

INSERT INTO `instructor_features` (`id`, `logo`, `title`, `subtitle`, `created_at`, `updated_at`) VALUES
(1, 'uploads_demo/instructor_feature/build-brand.png', 'Build your Bran', 'Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(2, 'uploads_demo/instructor_feature/instructor-support-2.png', 'Inspire learners', 'Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(3, 'uploads_demo/instructor_feature/top-instructor-heading-img.png', 'Get rewarded', 'Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with', '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `instructor_procedures`
--

CREATE TABLE `instructor_procedures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `instructor_procedures`
--

INSERT INTO `instructor_procedures` (`id`, `image`, `title`, `subtitle`, `created_at`, `updated_at`) VALUES
(1, 'uploads_demo/instructor_procedure/become-instructor-1.jpg', 'Plan Your Curriculum', 'Serenity has taken possession of my entire soul, like these sweet mornings spring which I enjoy with my whole heart. I am alone, and feel the charm existence in this spot, which was created for the bliss of souls like mine so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(2, 'uploads_demo/instructor_procedure/become-instructor-2.jpg', 'Plan Your Curriculum', 'Serenity has taken possession of my entire soul, like these sweet mornings spring which I enjoy with my whole heart. I am alone, and feel the charm existence in this spot, which was created for the bliss of souls like mine so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(3, 'uploads_demo/instructor_procedure/become-instructor-3.jpg', 'Plan Your Curriculum', 'Serenity has taken possession of my entire soul, like these sweet mornings spring which I enjoy with my whole heart. I am alone, and feel the charm existence in this spot, which was created for the bliss of souls like mine so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.', '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `instructor_skill`
--

CREATE TABLE `instructor_skill` (
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `instructor_supports`
--

CREATE TABLE `instructor_supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `instructor_supports`
--

INSERT INTO `instructor_supports` (`id`, `logo`, `title`, `subtitle`, `button_name`, `button_link`, `created_at`, `updated_at`) VALUES
(1, 'uploads_demo/instructor_support/instructor-support-1.png', 'Courses', 'Single stroke at the present moment and yet I feel that was', 'Popular Courses', '/courses', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(2, 'uploads_demo/instructor_support/instructor-support-2.png', 'Expert instructor', 'Single stroke at the present moment and yet I feel that was', 'Explore Instructor', '/all-instructor', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(3, 'uploads_demo/instructor_support/instructor-support-3.png', '27/4 online support', 'Single stroke at the present moment and yet I feel that was', 'Support Center', '/support-ticket-faq', '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=active,2=inactive',
  `default_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'on,off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `languages`
--

INSERT INTO `languages` (`id`, `language`, `iso_code`, `flag`, `rtl`, `status`, `default_language`, `created_at`, `updated_at`) VALUES
(1, 'EN ( English )', 'en', 'uploads_demo/default/en.png', 0, 1, 'off', NULL, '2023-07-07 16:48:35'),
(4, 'Portugues', 'pt', 'uploads/flag/1688734721-N5YKDRZYM8.jpg', 0, 1, 'on', '2023-07-07 15:57:40', '2023-07-07 16:48:35');

-- --------------------------------------------------------

--
-- Estrutura para tabela `learn_key_points`
--

CREATE TABLE `learn_key_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `learn_key_points`
--

INSERT INTO `learn_key_points` (`id`, `course_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Oracle', '2023-07-07 16:36:05', '2023-07-07 16:44:43'),
(2, 1, 'DBA Oracle', '2023-07-07 16:36:05', '2023-07-07 16:44:43'),
(3, 2, 'tes', '2023-07-08 22:12:43', '2023-07-08 22:12:43');

-- --------------------------------------------------------

--
-- Estrutura para tabela `live_classes`
--

CREATE TABLE `live_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_topic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'duration must be minutes',
  `start_url` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_url` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_host_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'zoom,bbb,jitsi',
  `moderator_pw` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'use only for bbb',
  `attendee_pw` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'use only for bbb',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1=static, 2=dynamic',
  `status` tinyint(4) DEFAULT NULL COMMENT '1=active, 2=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `url`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Blogs', 'blogs', NULL, 1, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(2, 'About', 'about', NULL, 1, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(3, 'Contact', 'contact', NULL, 1, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(4, 'Support', 'support-ticket-faq', NULL, 1, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(5, 'Privacy Policy', 'privacy-policy', NULL, 1, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(6, 'Cookie Policy', 'cookie-policy', NULL, 1, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(7, 'Terms & Conditions', 'terms-conditions', NULL, 1, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(8, 'About', 'about', NULL, 3, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(9, 'FQA', 'faq', NULL, 3, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(10, 'Blogs', 'blogs', NULL, 3, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(11, 'Contact', 'contact-us', NULL, 4, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(12, 'Support', 'support-ticket-faq', NULL, 4, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(13, 'Courses', 'courses', NULL, 4, 1, '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(14, 'Refund Policy', 'refund-policy', NULL, 1, 1, '2022-12-05 07:35:33', '2022-12-05 07:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `metas`
--

CREATE TABLE `metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `metas`
--

INSERT INTO `metas` (`id`, `uuid`, `url`, `page_name`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`) VALUES
(1, '8dff97f0-744c-4ccf-82e2-b95ab002d06e', NULL, 'Home', 'Home', 'LMSZai Learning management system', 'Lmszai, Lms, Learning, Course', NULL, NULL),
(2, 'f917df1b-d2a9-4633-947c-cce8fec6e744', NULL, 'Courses', 'Courses', 'LMSZai Course List', 'Lmszai, Lms, Learning, Course', NULL, NULL),
(3, 'def2cba0-1784-4059-b135-a0cbebd8a42e', NULL, 'Courses Details', 'Courses Details', 'LMSZai Course List', 'Lmszai, Lms, Learning, Course', NULL, NULL),
(4, 'a43da2a2-04f5-4824-bf68-d139e0584755', NULL, 'Category', 'Categories', 'All courses categories', 'course, category', NULL, NULL),
(5, '78cfe9ea-b101-4460-904e-b70ee6c2e78c', NULL, 'Blog', 'Blog', 'LMSZAI Blog', 'blog, course', NULL, NULL),
(6, '92c16dbf-1ee1-4569-bd12-679ea345157c', NULL, 'Blog Details', 'Blog Details', 'LMSZAI Blog Details', 'blog, blog details', NULL, NULL),
(7, '25480d69-7954-4eb1-9451-56d146afdecb', NULL, 'About Us', 'About Us', 'LMSZAI About Us', 'about us', NULL, NULL),
(8, 'd834582d-64e2-48e6-99ff-6cb9fb333e1b', NULL, 'Contact Us', 'Contact Us', 'LMSZAI contact us', 'lmszai, contact us', NULL, NULL),
(9, '21a61308-3520-40a7-978e-ff44cfa191fe', NULL, 'Support Ticket', 'Support', 'LMSZAI support ticket', 'lmszai, support, ticket', NULL, NULL),
(10, '0f87eed2-244a-413b-8d1c-7e8247ce6210', NULL, 'Privacy Policy', 'Privacy Policy', 'LMSZAI Privacy Policy', 'lmszai, privacy, policy', NULL, NULL),
(11, '55ebbdb3-f624-4425-9081-223a112bcfdb', NULL, 'Cookie Policy', 'Cookie Policy', 'LMSZAI Cookie Policy', 'lmszai, cookie, policy', NULL, NULL),
(12, '2ceb6bd5-03fa-4573-bc96-751f96b36ff4', NULL, 'FAQ', 'FAQ', 'LMSZAI FAQ', 'lmszai, faq', NULL, NULL),
(13, 'e2a0d17f-cfa9-4ac5-8c51-06f60f3c832a', NULL, 'Terms & Conditions', 'Terms & Conditions', 'LMSZAI Terms & Conditions Policy', 'lmszai, terms, consitions', NULL, NULL),
(14, '2e0f0a6e-c573-479c-8913-95e24150000a', NULL, 'Refund Policy', 'Refund Policy', 'LMSZAI Refund Policy', 'Refund Policies', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(200, '2014_10_12_000000_create_users_table', 1),
(201, '2014_10_12_100000_create_password_resets_table', 1),
(202, '2019_08_19_000000_create_failed_jobs_table', 1),
(203, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(204, '2020_10_13_140209_create_devices_table', 1),
(205, '2020_10_13_150113_create_device_user_table', 1),
(206, '2022_03_08_120002_create_categories_table', 1),
(207, '2022_03_08_124911_create_blogs_table', 1),
(208, '2022_03_10_113530_create_subcategories_table', 1),
(209, '2022_03_10_114913_create_tags_table', 1),
(210, '2022_03_10_120141_create_difficulty_levels_table', 1),
(211, '2022_03_10_120351_create_course_languages_table', 1),
(212, '2022_03_12_120608_create_currencies_table', 1),
(213, '2022_03_13_084533_create_instructors_table', 1),
(214, '2022_03_13_084819_create_settings_table', 1),
(215, '2022_03_13_100229_create_instructor_certificates_table', 1),
(216, '2022_03_14_052503_create_instructor_awards_table', 1),
(217, '2022_03_14_123059_create_metas_table', 1),
(218, '2022_03_15_092420_create_languages_table', 1),
(219, '2022_03_21_105943_create_countries_table', 1),
(220, '2022_03_21_110018_create_states_table', 1),
(221, '2022_03_21_110027_create_cities_table', 1),
(222, '2022_03_22_123520_create_user_cards_table', 1),
(223, '2022_03_23_061124_create_email_notification_settings_table', 1),
(224, '2022_03_23_104316_create_courses_table', 1),
(225, '2022_03_23_104847_create_course_tags_table', 1),
(226, '2022_03_29_130632_create_course_lessons_table', 1),
(227, '2022_03_29_130734_create_course_lectures_table', 1),
(228, '2022_04_02_104955_create_exams_table', 1),
(229, '2022_04_02_111930_create_questions_table', 1),
(230, '2022_04_02_112024_create_question_options_table', 1),
(231, '2022_04_02_124631_create_take_exams_table', 1),
(232, '2022_04_02_131147_create_answers_table', 1),
(233, '2022_04_02_132217_create_course_lecture_views_table', 1),
(234, '2022_04_03_093413_create_products_table', 1),
(235, '2022_04_07_105025_create_cart_management_table', 1),
(236, '2022_04_08_081131_create_wishlists_table', 1),
(237, '2022_04_09_060811_create_contact_us_issues_table', 1),
(238, '2022_04_09_060926_create_contact_us_table', 1),
(239, '2022_04_11_041217_create_about_us_generals_table', 1),
(240, '2022_04_11_041343_create_our_histories_table', 1),
(241, '2022_04_11_041419_create_team_members_table', 1),
(242, '2022_04_11_043000_create_instructor_supports_table', 1),
(243, '2022_04_11_043147_create_client_logos_table', 1),
(244, '2022_04_14_094216_create_instructor_features_table', 1),
(245, '2022_04_14_094313_create_instructor_procedures_table', 1),
(246, '2022_04_15_051038_create_faq_questions_table', 1),
(247, '2022_04_15_075433_create_home_special_features_table', 1),
(248, '2022_04_15_093248_create_homes_table', 1),
(249, '2022_04_16_085648_create_blog_categories_table', 1),
(250, '2022_04_16_111415_create_blog_tags_table', 1),
(251, '2022_04_18_071259_create_blog_comments_table', 1),
(252, '2022_04_18_103636_create_students_table', 1),
(253, '2022_04_20_090721_create_assignments_table', 1),
(254, '2022_04_21_063711_create_assignment_submits_table', 1),
(255, '2022_04_21_072930_create_assignment_files_table', 1),
(256, '2022_04_22_084931_create_course_resources_table', 1),
(257, '2022_04_22_101227_create_notice_boards_table', 1),
(258, '2022_04_23_044138_create_live_classes_table', 1),
(259, '2022_04_24_121452_create_orders_table', 1),
(260, '2022_04_24_121712_create_order_items_table', 1),
(261, '2022_04_24_122152_create_order_billing_addresses_table', 1),
(262, '2022_04_26_143537_create_coupons_table', 1),
(263, '2022_04_26_145556_create_coupon_instructors_table', 1),
(264, '2022_04_26_145742_create_coupon_courses_table', 1),
(265, '2022_04_27_124958_create_withdraws_table', 1),
(266, '2022_04_29_140534_create_reviews_table', 1),
(267, '2022_04_30_140200_create_discussions_table', 1),
(268, '2022_05_01_015615_create_learn_key_points_table', 1),
(269, '2022_05_01_015853_add_average_rating_to_courses_table', 1),
(270, '2022_05_08_183053_create_certificates_table', 1),
(271, '2022_05_09_122033_create_ranking_levels_table', 1),
(272, '2022_05_10_130657_add_video_to_courses_table', 1),
(273, '2022_05_11_113029_add_original_name_and_size_to_assignments_table', 1),
(274, '2022_05_11_122523_add_original_name_and_size_to_assignment_submits_table', 1),
(275, '2022_05_11_182134_add_view_to_discussions_table', 1),
(276, '2022_05_11_192633_create_support_ticket_questions_table', 1),
(277, '2022_05_12_121255_create_tickets_table', 1),
(278, '2022_05_12_121306_create_ticket_messages_table', 1),
(279, '2022_05_12_121540_create_ticket_departments_table', 1),
(280, '2022_05_12_121557_create_ticket_related_services_table', 1),
(281, '2022_05_12_121621_create_ticket_priorities_table', 1),
(282, '2022_05_12_175640_create_certificate_by_instructors_table', 1),
(283, '2022_05_13_165207_create_chat_messages_table', 1),
(284, '2022_05_15_112035_create_permission_tables', 1),
(285, '2022_05_16_125530_add_provider_id_and_avatar_to_users_table', 1),
(286, '2022_05_18_125922_create_pages_table', 1),
(287, '2022_05_18_152824_create_notifications_table', 1),
(288, '2022_05_18_161357_create_menus_table', 1),
(289, '2022_05_19_192216_create_email_templates_table', 1),
(290, '2022_05_22_165419_create_user_paypals_table', 1),
(291, '2022_05_25_131858_add_images_to_about_us_generals_table', 1),
(292, '2022_05_25_220619_create_student_certificates_table', 1),
(293, '2022_05_26_171757_create_promotions_table', 1),
(294, '2022_05_26_172008_create_promotion_courses_table', 1),
(295, '2022_05_27_154633_create_special_promotion_tags_table', 1),
(296, '2022_05_27_154757_create_special_promotion_tag_courses_table', 1),
(297, '2022_05_28_185325_add_subtitle_to_courses', 1),
(298, '2022_05_28_191647_create_course_upload_rules_table', 1),
(299, '2022_05_31_131109_add_forgot_token_to_users', 1),
(300, '2022_06_01_114750_add_cv_file_and_filename_to_instructors', 1),
(301, '2022_06_13_132354_create_policies_table', 1),
(302, '2022_06_14_180425_add_conversion_rate_and_current_currency_and_currency_amount_to_orders', 1),
(303, '2022_06_15_181443_add_default_language_to_languages', 1),
(304, '2022_07_05_171632_create_banks_table', 1),
(305, '2022_07_06_171634_add_field_to_orders_table', 1),
(306, '2022_07_20_114546_add_meeting_host_name_and_moderator_pw_and_attendee_pw_to_live_classes_table', 1),
(307, '2022_07_22_123555_add_paystack_refrence_number_to_orders_table', 1),
(308, '2022_07_25_151244_add_intro_video_check_and_into_youtube_video_id_to_courses_table', 1),
(309, '2022_08_04_160730_add_city_id_to_instructors', 1),
(310, '2022_08_06_140811_create_bundles_table', 1),
(311, '2022_08_06_140834_create_bundle_courses_table', 1),
(312, '2022_08_08_134556_add_bundle_id_to_wishlists', 1),
(313, '2022_08_08_181304_add_bundle_id_and_bundle_course_ids_to_cart_management', 1),
(314, '2022_08_08_193241_add_bundle_id_to_order_items', 1),
(315, '2022_08_11_180251_create_forum_categories_table', 1),
(316, '2022_08_11_183543_create_forum_posts_table', 1),
(317, '2022_08_12_113405_create_forum_post_comments_table', 1),
(318, '2022_08_13_170419_add_available_and_hourly_rate_to_instructors_table', 1),
(319, '2022_08_13_175625_create_consultation_slots_table', 1),
(320, '2022_08_16_152302_create_instructor_consultation_day_statuses_table', 1),
(321, '2022_08_16_180220_create_booking_histories_table', 1),
(322, '2022_08_18_160213_add_consultation_slot_id_and_consultation_details_and_consultation_date_to_cart_management_table', 1),
(323, '2022_08_19_114213_add_consultation_slot_id_and_consultation_date_to_order_items_table', 1),
(324, '2022_08_22_160209_add_some_new_fields_to_course_lectures_table', 1),
(325, '2022_08_30_115403_add_new_attributes_to_homes_table', 1),
(326, '2022_09_07_185945_add_start_url_to_live_classes_table', 1),
(327, '2022_09_07_193347_add_start_url_to_booking_histories_table', 1),
(328, '2022_09_08_124610_add_is_affiliator_in_user_table', 1),
(329, '2022_09_08_124610_add_is_reference_in_cart_management_table', 1),
(330, '2022_09_08_124610_create_affiliate_request_table', 1),
(331, '2022_09_08_124610_create_zoom_settings_table', 1),
(332, '2022_09_24_121452_create_affiliate_history_table', 1),
(333, '2022_09_24_121452_create_transaction_table', 1),
(334, '2022_10_10_151609_create_scorm_tables', 1),
(335, '2022_10_10_163101_add_scorm_related_column_in_tables', 1),
(336, '2022_10_10_163914_add_vimeo_upload_type_to_course_lectures', 1),
(337, '2022_10_13_163940_add_two_columns_in_scorm_table', 1),
(338, '2022_10_13_172655_add_completed_time_in_order_items_table', 1),
(339, '2022_10_15_122521_add_drip_content_in_courses_table', 1),
(340, '2022_10_15_122738_add_columns_in_course_lessons_table', 1),
(341, '2022_10_17_124610_add_error_msg_in_order_table', 1),
(342, '2022_10_18_154121_create_enrollments_table', 1),
(343, '2022_10_18_200250_add_ranking_level_column_in_instructures_table', 1),
(344, '2022_10_19_120829_add_access_period_in_bundles_table', 1),
(345, '2022_10_19_182826_add_enrollment_id_in_course_lecture_views_table', 1),
(346, '2022_10_23_161315_add_status_column_in_certificates_table', 1),
(347, '2022_10_24_171913_add_column_in_certificate_by_instructors_table', 1),
(348, '2022_10_25_155804_add_certificate_number_in_student_certificates_table', 1),
(349, '2022_10_25_184424_add_mobile_number_filed_in_users_table', 1),
(350, '2022_10_26_113449_create_gmeet_seetings_table', 1),
(351, '2022_10_28_121109_create_course_instructors_table', 1),
(352, '2022_11_01_135508_create_packages_table', 1),
(353, '2022_11_01_171131_create_user_packages_table', 1),
(354, '2022_11_01_183602_add_is_subscription_enable_in_courses_table', 1),
(355, '2022_11_03_132149_add_column_in_homes_table', 1),
(356, '2022_11_03_170747_create_payments_table', 1),
(357, '2022_11_05_171546_add_consultancy_area_to_instructors_table', 1),
(358, '2022_11_05_171546_add_lat_long_to_users_table', 1),
(359, '2022_11_07_155848_add_level_column_in_packages_table', 1),
(360, '2022_11_08_154156_add_user_package_id_in_enrollments_table', 1),
(361, '2022_11_08_185200_add_column_in_cart_management_table', 1),
(362, '2022_11_10_164850_create_monthly_distribution_histories_table', 1),
(363, '2022_11_11_121955_add_field_to_ranking_levels_table', 1),
(364, '2022_11_11_160210_create_subscription_commission_histories_table', 1),
(365, '2022_11_11_175319_create_skills_table', 1),
(366, '2022_11_11_195218_create_instructor_skills_table', 1),
(367, '2022_11_12_151558_add_old_price_to_courses_table', 1),
(368, '2022_11_12_160731_create_follow_user_table', 1),
(369, '2022_11_12_170058_add_hourly_old_rate_to_instructors_table', 1),
(370, '2022_11_14_084533_create_organizations_table', 1),
(371, '2022_11_15_120508_add_organigation_id_to_courses_table', 1),
(372, '2022_11_15_122138_add_organigation_id_to_instructor_certificates_table', 1),
(373, '2022_11_15_122314_add_organigation_id_to_instructor_awards_table', 1),
(374, '2022_11_16_122011_add_organigation_id_to_instructors_table', 1),
(375, '2022_11_16_184045_change_column_in_user_packages_table', 1),
(376, '2022_11_16_194601_add_organigation_id_to_students_table', 1),
(377, '2022_11_19_150640_create_organization_skill_table', 1),
(378, '2022_11_19_151659_change_column_in_tables', 1),
(379, '2022_11_21_154849_create_user_badges_table', 1),
(380, '2022_11_24_150320_add_soft_delete_in_users_table', 1),
(381, '2022_11_24_195705_add_private_mode_column_in_courses_table', 1),
(382, '2022_11_25_162623_change_column_in_instructors_table', 1),
(383, '2022_11_28_193527_add_is_subscription_enable_to_instructors_table', 1),
(384, '2022_11_29_184848_change_column_in_user_packages_table', 1),
(385, '2022_11_29_190107_add_is_default_column_in_packages_table', 1),
(386, '2022_12_09_153943_create_table_beneficiaries_table', 1),
(387, '2022_12_09_154915_add_benificiary_id_column_in_withdraws_table', 1),
(388, '2023_01_14_192049_update_menus_table', 1),
(389, '2023_05_07_154147_add_column_in_instructors_table', 1),
(390, '2023_05_08_115352_is_featured_in_courses_table', 1),
(391, '2023_05_08_122911_add_filed_in_homes_table', 1),
(392, '2023_05_14_072415_create_chats_table', 1),
(393, '2023_05_14_115545_create_refunds_table', 1),
(394, '2023_05_15_155921_add_column_in_transactions_table', 1),
(395, '2023_05_17_113730_add_receiver_id_in_cart_management_table', 1),
(396, '2023_05_17_113928_add_receiver_id_in_order_items_table', 1),
(397, '2023_05_24_115218_create_wallet_recharges_table', 1),
(398, '2023_05_24_115534_add_column_in_payments_table', 1),
(399, '2023_05_29_130753_create_generate_contents_table', 1),
(400, '2023_05_29_153039_create_open_a_i_prompts_table', 1),
(401, '2023_06_07_114213_change_special_promotion_tags_table', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `monthly_distribution_histories`
--

CREATE TABLE `monthly_distribution_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `month_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_subscription` int(11) NOT NULL DEFAULT 0,
  `total_enroll_course` int(11) NOT NULL DEFAULT 0,
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `admin_commission` decimal(12,2) NOT NULL DEFAULT 0.00,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `notice_boards`
--

CREATE TABLE `notice_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `topic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `notice_boards`
--

INSERT INTO `notice_boards` (`id`, `uuid`, `user_id`, `course_id`, `topic`, `details`, `created_at`, `updated_at`) VALUES
(1, 'eca01a69-cb5b-4a9b-9b1f-f0a363247fad', 2, 1, 'Topic for Notice Board', 'This is a description', '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_seen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `user_type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1=admin, 2=instructor, 3=student',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `notifications`
--

INSERT INTO `notifications` (`id`, `uuid`, `sender_id`, `user_id`, `text`, `target_url`, `is_seen`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'cd115d1a-f9ff-4fd1-b577-7e6141e62594', 2, NULL, 'Nova solicitação de organização', 'https://ead.demo.magoweb.com.br/admin/organizations/pending', 'yes', 1, '2023-07-07 16:34:07', '2023-07-07 19:06:57'),
(2, 'f5863e90-febe-4b32-9f6b-09fc03ebb022', 2, NULL, 'Categoria do curso foi atualizada', 'https://ead.demo.magoweb.com.br/admin/course', 'yes', 1, '2023-07-07 16:37:35', '2023-07-07 19:06:57'),
(3, '212ff176-7247-4487-96b3-15beafb219b7', 2, NULL, 'Nova lição foi adicionada', 'https://ead.demo.magoweb.com.br/admin/course', 'yes', 1, '2023-07-07 16:39:27', '2023-07-07 19:06:57'),
(4, 'ed8f4541-685c-41eb-a40c-51d31af1c422', 2, NULL, 'Visão geral do curso foi atualizada', 'https://ead.demo.magoweb.com.br/admin/course', 'yes', 1, '2023-07-07 16:44:43', '2023-07-07 19:06:57'),
(5, 'e772bd19-6b86-45c7-82e6-ae486e485eac', 1, 2, 'Course has been approved', 'https://ead.demo.magoweb.com.br/course-details/DBA-Oracle-Inclui-GRID-21c-Oracle-19c-Oracle-Linux-8-2023', 'no', 2, '2023-07-07 16:49:51', '2023-07-07 16:49:51'),
(6, '5ec52533-bec4-472c-993d-2012822b0599', 1, 2, 'Course has been hold', 'https://ead.demo.magoweb.com.br/instructor/course', 'no', 2, '2023-07-07 16:50:10', '2023-07-07 16:50:10'),
(7, '0ed7779a-ac89-493f-9f6f-d933dd2f7a37', 1, 2, 'Course has been approved', 'https://ead.demo.magoweb.com.br/course-details/DBA-Oracle-Inclui-GRID-21c-Oracle-19c-Oracle-Linux-8-2023', 'no', 2, '2023-07-07 16:50:13', '2023-07-07 16:50:13'),
(8, '406f38ec-fc99-40fc-8466-dca9cd45ea02', 1, 2, 'Course has been hold', 'https://ead.demo.magoweb.com.br/instructor/course', 'no', 2, '2023-07-07 16:50:18', '2023-07-07 16:50:18'),
(9, 'fb7905f5-36f2-448f-95a5-a6cbe973dde4', 1, 2, 'Course has been approved', 'https://ead.demo.magoweb.com.br/course-details/DBA-Oracle-Inclui-GRID-21c-Oracle-19c-Oracle-Linux-8-2023', 'no', 2, '2023-07-07 16:50:23', '2023-07-07 16:50:23'),
(10, '0875957e-d5f7-4923-9693-baabb53c92f6', 1, 2, 'Course has been hold', 'https://ead.demo.magoweb.com.br/instructor/course', 'no', 2, '2023-07-07 17:59:30', '2023-07-07 17:59:30'),
(11, 'e2bfe0a0-c37b-4bae-862e-adc6edb0599f', 1, 2, 'Course has been approved', 'https://ead.demo.magoweb.com.br/course-details/DBA-Oracle-Inclui-GRID-21c-Oracle-19c-Oracle-Linux-8-2023', 'no', 2, '2023-07-07 17:59:35', '2023-07-07 17:59:35'),
(12, 'ef77e211-e012-404f-8035-8850f7a45816', 1, 3, 'New course has been published', 'https://ead.demo.magoweb.com.br/course-details/DBA-Oracle-Inclui-GRID-21c-Oracle-19c-Oracle-Linux-8-2023', 'no', 3, '2023-07-07 17:59:35', '2023-07-07 17:59:35'),
(13, '041a3c0b-7380-453e-bfbe-29328e29ba14', 1, 4, 'New course has been published', 'https://ead.demo.magoweb.com.br/course-details/DBA-Oracle-Inclui-GRID-21c-Oracle-19c-Oracle-Linux-8-2023', 'no', 3, '2023-07-07 17:59:35', '2023-07-07 17:59:35'),
(14, '9e15125a-91d8-49cb-b6cb-62b6ecfb2a8a', 2, NULL, 'Categoria do curso foi atualizada', 'https://ead.demo.magoweb.com.br/admin/course', 'no', 1, '2023-07-08 22:13:50', '2023-07-08 22:13:50'),
(15, '790ca8b0-2a2d-4849-937e-29cc3b5b9582', 2, NULL, 'Nova lição foi adicionada', 'https://ead.demo.magoweb.com.br/admin/course', 'no', 1, '2023-07-08 22:14:58', '2023-07-08 22:14:58'),
(16, '733e44cd-2608-4cb7-adca-2a0957ddace5', 2, NULL, 'Nova lição foi adicionada', 'https://ead.demo.magoweb.com.br/admin/course', 'no', 1, '2023-07-08 22:14:58', '2023-07-08 22:14:58'),
(17, '7369336e-9e2d-4c26-8282-f25616381583', 1, 2, 'Course has been approved', 'https://ead.demo.magoweb.com.br/course-details/informatica', 'no', 2, '2023-07-08 22:25:17', '2023-07-08 22:25:17'),
(18, '2845692a-2293-4ebe-9bd4-f1597b3284ad', 1, 3, 'New course has been published', 'https://ead.demo.magoweb.com.br/course-details/informatica', 'no', 3, '2023-07-08 22:25:17', '2023-07-08 22:25:17'),
(19, '4b57988e-667e-4cc2-beac-fc0384b99729', 1, 4, 'New course has been published', 'https://ead.demo.magoweb.com.br/course-details/informatica', 'no', 3, '2023-07-08 22:25:17', '2023-07-08 22:25:17'),
(20, 'c2fea786-2d6a-467f-b731-56f2a793465e', 1, 2, 'Course has been hold', 'https://ead.demo.magoweb.com.br/instructor/course', 'no', 2, '2023-07-15 13:22:45', '2023-07-15 13:22:45');

-- --------------------------------------------------------

--
-- Estrutura para tabela `open_a_i_prompts`
--

CREATE TABLE `open_a_i_prompts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_image` tinyint(4) NOT NULL DEFAULT 0,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prompt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `platform_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `current_currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conversion_rate` decimal(28,8) DEFAULT 0.00000000,
  `grand_total_with_conversation_rate` decimal(28,8) DEFAULT 0.00000000,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_reference_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_slip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'due' COMMENT 'paid, due, free, pending, cancelled',
  `delivery_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=complete',
  `created_by_type` tinyint(4) DEFAULT 1 COMMENT '1=student, 2=admin',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `error_msg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `orders`
--

INSERT INTO `orders` (`id`, `uuid`, `user_id`, `order_number`, `sub_total`, `discount`, `shipping_cost`, `tax`, `platform_charge`, `current_currency`, `grand_total`, `payment_currency`, `conversion_rate`, `grand_total_with_conversation_rate`, `payment_method`, `paystack_reference_number`, `deposit_by`, `deposit_slip`, `bank_id`, `customer_comment`, `payment_status`, `delivery_status`, `created_by_type`, `created_by`, `created_at`, `updated_at`, `error_msg`, `payment_id`) VALUES
(1, '0a1b8477-1937-45d6-886a-7a505c945e18', 3, '798969', 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, NULL, 0.00000000, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, 'free', 0, 1, 3, '2023-07-07 16:51:37', '2023-07-07 16:51:37', NULL, NULL),
(2, 'ab968419-fd39-43d9-9eee-cbb83781cbc7', 4, '160986', 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, NULL, 0.00000000, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, 'free', 0, 1, 4, '2023-07-07 17:09:47', '2023-07-07 17:09:47', NULL, NULL),
(3, '8b10a57a-c5a4-4b02-b5dc-d48aa28b9c0a', 3, '239249', 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, NULL, 0.00000000, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, 'free', 0, 1, 3, '2023-07-08 22:27:01', '2023-07-08 22:27:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `order_billing_addresses`
--

CREATE TABLE `order_billing_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `set_as_shipping_address` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `receiver_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_user_id` bigint(20) DEFAULT NULL,
  `bundle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `consultation_slot_id` bigint(20) UNSIGNED DEFAULT NULL,
  `consultation_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` int(11) NOT NULL DEFAULT 1,
  `unit_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `admin_commission` decimal(8,2) NOT NULL DEFAULT 0.00,
  `owner_balance` decimal(8,2) NOT NULL DEFAULT 0.00,
  `sell_commission` int(11) NOT NULL DEFAULT 0 COMMENT 'How much percentage get admin and calculate in admin_commission',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=course, 2=product, 3=bundle course, 4=consultation',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `user_id`, `receiver_info`, `owner_user_id`, `bundle_id`, `course_id`, `product_id`, `consultation_slot_id`, `consultation_date`, `unit`, `unit_price`, `admin_commission`, `owner_balance`, `sell_commission`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, 2, NULL, 1, NULL, NULL, NULL, 1, 0.00, 0.00, 0.00, 0, 1, '2023-07-07 16:51:37', '2023-07-07 16:51:37'),
(2, 2, 4, NULL, 2, NULL, 1, NULL, NULL, NULL, 1, 0.00, 0.00, 0.00, 0, 1, '2023-07-07 17:09:47', '2023-07-07 17:09:47'),
(3, 3, 3, NULL, 2, NULL, 2, NULL, NULL, NULL, 1, 0.00, 0.00, 0.00, 0, 1, '2023-07-08 22:27:01', '2023-07-08 22:27:01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `organizations`
--

CREATE TABLE `organizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `province_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `professional_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consultancy_area` tinyint(4) NOT NULL DEFAULT 3,
  `about_me` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `remove_from_web_search` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `auto_content_approval` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=approved, 2=blocked',
  `is_subscription_enable` tinyint(4) DEFAULT 0,
  `is_offline` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'offline status',
  `offline_message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'offline message',
  `consultation_available` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=yes, 0=no',
  `hourly_rate` int(11) DEFAULT 0,
  `hourly_old_rate` decimal(8,2) DEFAULT NULL,
  `available_type` tinyint(4) NOT NULL DEFAULT 3 COMMENT '1=In-person, 0=Online, 3=Both',
  `cv_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `organization_skill`
--

CREATE TABLE `organization_skill` (
  `organization_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `our_histories`
--

CREATE TABLE `our_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `our_histories`
--

INSERT INTO `our_histories` (`id`, `year`, `title`, `subtitle`, `created_at`, `updated_at`) VALUES
(1, '1998', 'Mere tranquil existence', 'Possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart am alone', NULL, NULL),
(2, '1998', 'Incapable of drawing', 'Exquisite sense of mere tranquil existence that I neglect my talents add should be incapable of drawing', NULL, NULL),
(3, '1998', 'Foliage access trees', 'Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my', NULL, NULL),
(4, '1998', 'Among grass trickling', 'Should be incapable of drawing a single stroke at the present moment; and yet I feel that I never', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_type` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1=subscription, 2=instructor saas, 3=organization saas',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discounted_monthly_price` decimal(12,2) NOT NULL,
  `monthly_price` decimal(12,2) NOT NULL,
  `discounted_yearly_price` decimal(12,2) NOT NULL,
  `yearly_price` decimal(12,2) NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student` int(11) NOT NULL DEFAULT 0,
  `instructor` int(11) NOT NULL DEFAULT 0,
  `course` int(11) NOT NULL DEFAULT 0,
  `consultancy` int(11) NOT NULL DEFAULT 0,
  `subscription_course` int(11) NOT NULL DEFAULT 0,
  `bundle_course` int(11) NOT NULL DEFAULT 0,
  `product` int(11) NOT NULL DEFAULT 0,
  `device` int(11) NOT NULL DEFAULT 0,
  `admin_commission` int(11) NOT NULL DEFAULT 0,
  `in_home` tinyint(4) NOT NULL DEFAULT 1,
  `recommended` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `packages`
--

INSERT INTO `packages` (`id`, `uuid`, `package_type`, `title`, `slug`, `description`, `discounted_monthly_price`, `monthly_price`, `discounted_yearly_price`, `yearly_price`, `icon`, `student`, `instructor`, `course`, `consultancy`, `subscription_course`, `bundle_course`, `product`, `device`, `admin_commission`, `in_home`, `recommended`, `status`, `is_default`, `order`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '4ec8c672-7d46-43e8-9a3b-dded2a43d721', '1', 'Starter', 'starter-966323', NULL, 0.00, 0.00, 0.00, 0.00, 'frontend/assets/img/package_icon.png', 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(2, '48539274-e5ef-423c-bbc1-626816ac2616', '2', 'Starter', 'starter-696394', NULL, 0.00, 0.00, 0.00, 0.00, 'frontend/assets/img/package_icon.png', 0, 0, 5, 10, 1, 1, 0, 1, 20, 1, 0, 1, 1, 1, 1, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(3, 'b367e4bf-b519-40fb-8e2b-f9fa1c19089b', '3', 'Starter', 'starter-813043', NULL, 0.00, 0.00, 0.00, 0.00, 'frontend/assets/img/package_icon.png', 5, 2, 5, 10, 1, 1, 0, 1, 20, 1, 0, 1, 1, 1, 1, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `order_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `conversion_rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `grand_total_with_conversation_rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `deposit_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_slip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `grand_total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'due' COMMENT 'paid, due, free, pending, cancelled',
  `created_by_type` tinyint(4) DEFAULT 1 COMMENT '1=student, 2=instructor',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage_course', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(2, 'pending_course', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(3, 'hold_course', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(4, 'approved_course', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(5, 'all_course', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(6, 'manage_course_reference', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(7, 'manage_course_category', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(8, 'manage_course_subcategory', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(9, 'manage_course_tag', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(10, 'manage_course_language', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(11, 'manage_course_difficulty_level', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(12, 'manage_instructor', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(13, 'pending_instructor', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(14, 'approved_instructor', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(15, 'all_instructor', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(16, 'add_instructor', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(17, 'manage_student', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(18, 'manage_coupon', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(19, 'manage_promotion', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(20, 'manage_blog', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(21, 'payout', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(22, 'finance', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(23, 'manage_certificate', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(24, 'ranking_level', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(25, 'manage_language', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(26, 'account_setting', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(27, 'support_ticket', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(28, 'manage_contact', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(29, 'application_setting', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(30, 'global_setting', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(31, 'home_setting', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(32, 'mail_configuration', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(33, 'payment_option', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(34, 'content_setting', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(35, 'user_management', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(36, 'manage_affiliate', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(37, 'manage_subscriptions', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(38, 'manage_saas', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(39, 'manage_organization', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(40, 'pending_organization', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(41, 'approved_organization', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(42, 'all_organization', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(43, 'add_organization', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(44, 'skill', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(45, 'distribute_subscription', 'web', '2022-12-01 05:48:19', '2022-12-01 05:48:19'),
(46, 'manage_version_update', 'web', '2022-12-01 05:48:19', '2022-12-01 05:48:19'),
(47, 'manage_wallet_recharge', 'web', '2022-12-01 05:48:19', '2022-12-01 05:48:19'),
(48, 'page_management', 'web', '2022-12-01 05:48:19', '2022-12-01 05:48:19'),
(49, 'menu_management', 'web', '2022-12-01 05:48:19', '2022-12-01 05:48:19'),
(50, 'policy_management', 'web', '2022-12-01 05:48:19', '2022-12-01 05:48:19'),
(51, 'forum_management', 'web', '2022-12-01 05:48:19', '2022-12-01 05:48:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1=privacy, 2=cookie, 3=terms & conditions',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_summery` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summery_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ebook, hard_copy',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=approved, 0=unapproved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 0=deactivated',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `promotion_courses`
--

CREATE TABLE `promotion_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promotion_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `exam_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `questions`
--

INSERT INTO `questions` (`id`, `uuid`, `user_id`, `exam_id`, `name`, `created_at`, `updated_at`) VALUES
(1, '4718253a-d1ad-46aa-8232-f0db0775cd8f', 2, 1, '1 = 1 = 2', '2023-07-07 16:42:06', '2023-07-07 16:42:06'),
(2, 'd13b057e-aba9-4047-8632-4e4d6b4c501a', 2, 1, '3=3=16', '2023-07-07 16:42:23', '2023-07-07 16:42:23'),
(3, '1d651252-4204-4298-b132-0836d863e977', 2, 1, '10=5=6', '2023-07-07 16:42:37', '2023-07-07 16:42:37'),
(4, 'c8a0d68b-0479-442f-85c8-462a2b84f0df', 2, 1, '15-5=10', '2023-07-07 16:42:57', '2023-07-07 16:42:57'),
(5, '3145b431-c32e-4777-98eb-80180382a45f', 2, 1, '18=6=5', '2023-07-07 16:43:07', '2023-07-07 16:43:07'),
(6, '7673d303-fefe-4d02-b76a-149b48677f95', 2, 1, '28-10=18', '2023-07-07 16:43:23', '2023-07-07 16:43:23'),
(7, '16a63950-0c58-4240-9056-9bb9ed0b7b57', 2, 1, '78-8=70', '2023-07-07 16:43:38', '2023-07-07 16:43:38'),
(8, '3e840eca-90d6-478a-b316-7cdad28b5562', 2, 1, '16-8=10', '2023-07-07 16:43:58', '2023-07-07 16:43:58'),
(9, 'b7ba9aca-d642-498d-b899-f12f72b74387', 2, 1, '20=20=0', '2023-07-07 16:44:10', '2023-07-07 16:44:10'),
(10, '6532c7a6-9465-4eb6-b442-6f13ffe03a7b', 2, 2, 'Um grupo de 12 costureiras produzem 120 peças de roupas em um dia. Quantas costureiras serão necessárias para produzir 80 peças diárias?', '2023-07-08 22:18:57', '2023-07-08 22:18:57'),
(11, '78392b75-3e81-43ba-ad48-895848eb9927', 2, 2, 'Se minha cadelinha come 90 gramas de ração por dia. Qual a quantidade que ela comerá em 6 semanas?', '2023-07-08 22:19:58', '2023-07-08 22:19:58'),
(12, '1f50bd75-d661-4e9a-a331-5c58decdda2d', 2, 2, 'Se 30% de 40% corresponde 3/4 de R$220,00. Podemos afirmar que 10% da quantia vale:', '2023-07-08 22:21:42', '2023-07-08 22:21:42');

-- --------------------------------------------------------

--
-- Estrutura para tabela `question_options`
--

CREATE TABLE `question_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  `question_option_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct_answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `question_options`
--

INSERT INTO `question_options` (`id`, `uuid`, `user_id`, `question_id`, `question_option_id`, `name`, `is_correct_answer`, `created_at`, `updated_at`) VALUES
(1, 'b63d446b-7a2f-4a3f-8ddb-dc99389c3750', 2, 1, NULL, 'True', 'yes', '2023-07-07 16:42:06', '2023-07-07 16:42:06'),
(2, '60949fed-71e5-4983-8775-ba97ab3efc88', 2, 1, NULL, 'False', 'no', '2023-07-07 16:42:06', '2023-07-07 16:42:06'),
(3, '86091937-015c-4cc4-b14b-028298c8916f', 2, 2, NULL, 'True', 'no', '2023-07-07 16:42:23', '2023-07-07 16:42:23'),
(4, '521b24bb-43ee-41a7-8138-b817e098bdd7', 2, 2, NULL, 'False', 'yes', '2023-07-07 16:42:23', '2023-07-07 16:42:23'),
(5, 'c7580a5d-4135-4b8e-9f82-b79db4adc69b', 2, 3, NULL, 'True', 'no', '2023-07-07 16:42:37', '2023-07-07 16:42:37'),
(6, '7fe5e1bd-369b-49c9-9746-d12081132bdb', 2, 3, NULL, 'False', 'yes', '2023-07-07 16:42:37', '2023-07-07 16:42:37'),
(7, '1a072362-b213-4c72-b9f1-4a3c27717046', 2, 4, NULL, 'True', 'yes', '2023-07-07 16:42:57', '2023-07-07 16:42:57'),
(8, '54af0931-a98b-45bc-9082-3bb836a7297c', 2, 4, NULL, 'False', 'no', '2023-07-07 16:42:57', '2023-07-07 16:42:57'),
(9, '6324ea55-bf6d-4819-af7d-533162df0390', 2, 5, NULL, 'True', 'no', '2023-07-07 16:43:07', '2023-07-07 16:43:07'),
(10, '1bb8a594-92af-45a8-a88d-ab537e40dc76', 2, 5, NULL, 'False', 'yes', '2023-07-07 16:43:07', '2023-07-07 16:43:07'),
(11, 'eb3b9054-f388-49ca-a810-565090de5517', 2, 6, NULL, 'True', 'yes', '2023-07-07 16:43:23', '2023-07-07 16:43:23'),
(12, 'a15843b2-0e67-40e1-88b9-1e2a931adc66', 2, 6, NULL, 'False', 'no', '2023-07-07 16:43:23', '2023-07-07 16:43:23'),
(13, '57e0a302-68e0-4f03-992e-91f6971d45fc', 2, 7, NULL, 'True', 'yes', '2023-07-07 16:43:38', '2023-07-07 16:43:38'),
(14, 'a44c3fbe-8cc4-493c-b5c9-1aa29a202bd2', 2, 7, NULL, 'False', 'no', '2023-07-07 16:43:38', '2023-07-07 16:43:38'),
(15, '9567d253-5948-4bf1-b5a5-ad119b72ad8b', 2, 8, NULL, 'True', 'no', '2023-07-07 16:43:58', '2023-07-07 16:43:58'),
(16, '2dcd2a7a-956c-4c43-8677-cbb97d36fb52', 2, 8, NULL, 'False', 'yes', '2023-07-07 16:43:58', '2023-07-07 16:43:58'),
(17, '89e596c4-bdca-4c74-8e17-7d886ede9cfb', 2, 9, NULL, 'True', 'yes', '2023-07-07 16:44:10', '2023-07-07 16:44:10'),
(18, '183f6409-e945-45d3-877e-d1397454a449', 2, 9, NULL, 'False', 'no', '2023-07-07 16:44:10', '2023-07-07 16:44:10'),
(19, 'eed2eead-9e4a-433e-82cb-b5aa72bd77b6', 2, 10, NULL, '8', 'yes', '2023-07-08 22:18:57', '2023-07-08 22:18:57'),
(20, 'fd918489-c985-41eb-81c5-5828da78149d', 2, 10, NULL, '6', 'no', '2023-07-08 22:18:57', '2023-07-08 22:18:57'),
(21, 'db541e3e-489c-438f-9418-814e65507932', 2, 10, NULL, '7', 'no', '2023-07-08 22:18:57', '2023-07-08 22:18:57'),
(22, 'baf19591-3bdf-4986-b39a-0c979157b13f', 2, 10, NULL, '12', 'no', '2023-07-08 22:18:57', '2023-07-08 22:18:57'),
(23, '708dcdeb-a004-418f-90c4-e153112095f7', 2, 11, NULL, '1,6 quilogramas', 'no', '2023-07-08 22:19:58', '2023-07-08 22:19:58'),
(24, '204a4e80-2057-4020-8082-7095de2b86f5', 2, 11, NULL, '2,7 quilogramas', 'no', '2023-07-08 22:19:58', '2023-07-08 22:19:58'),
(25, '6d822699-7959-4ba4-9451-40dd0b84762c', 2, 11, NULL, '540 gramas', 'yes', '2023-07-08 22:19:58', '2023-07-08 22:19:58'),
(26, '9b8dfe38-8e9e-4ce7-a360-573fe5011887', 2, 11, NULL, '3,78 quilogramas', 'no', '2023-07-08 22:19:58', '2023-07-08 22:19:58'),
(27, '4c2cc0b1-462a-495d-8cd7-b5237de25057', 2, 12, NULL, 'R$16,50', 'yes', '2023-07-08 22:21:42', '2023-07-08 22:21:42'),
(28, 'f4531d8a-2fe7-4e10-845d-81cc48a5d71c', 2, 12, NULL, 'R$35,20', 'no', '2023-07-08 22:21:42', '2023-07-08 22:21:42'),
(29, 'bb7ba6e3-3506-406c-ba13-e5f4c35200c7', 2, 12, NULL, 'R$26,40', 'no', '2023-07-08 22:21:42', '2023-07-08 22:21:42'),
(30, '48f6551a-4a83-4380-93f4-12b1530c84c3', 2, 12, NULL, 'R$49,50', 'no', '2023-07-08 22:21:42', '2023-07-08 22:21:42');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ranking_levels`
--

CREATE TABLE `ranking_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `from` decimal(10,2) DEFAULT 0.00,
  `to` decimal(10,2) DEFAULT 0.00,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `badge_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `earning` int(11) DEFAULT NULL,
  `student` int(11) DEFAULT NULL,
  `serial_no` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `ranking_levels`
--

INSERT INTO `ranking_levels` (`id`, `uuid`, `name`, `type`, `from`, `to`, `description`, `badge_image`, `earning`, `student`, `serial_no`, `created_at`, `updated_at`) VALUES
(1, '9a7537f0-581a-4227-9ff6-d641fec2e44a', '1 Years of Membership', 1, 0.00, 365.00, '1 Years of Membership', 'frontend/assets/img/ranking_badges/membership_1.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(2, 'b3152dec-79d6-49e8-b9ea-7d86d9a21f11', 'Author Level 1', 2, 0.00, 365.00, 'Author Level 1', 'frontend/assets/img/ranking_badges/rank_1.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(3, 'c90ca6ff-54c8-40ef-9fc3-4d93a85df344', '0 to 5 Course', 3, 0.00, 5.00, '0 to 5 Course', 'frontend/assets/img/ranking_badges/course_1.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(4, 'c28eea7b-2f8f-43d8-9434-07b7cd475d59', '0 to 10 Student', 4, 0.00, 10.00, '0 to 10 Student', 'frontend/assets/img/ranking_badges/student_1.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(5, '3a5f47a4-8dcc-479d-9f69-67d9231fee27', '0 to 10 Sold', 5, 0.00, 10.00, '0 to 10 Sold', 'frontend/assets/img/ranking_badges/sale_1.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(6, '0297f8b2-ef42-44ca-b459-698005154046', '2 Years of Membership', 1, 366.00, 731.00, '2 Years of Membership', 'frontend/assets/img/ranking_badges/membership_2.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(7, '12c02b42-e33a-4deb-a99d-3a4d5b3bdeb6', 'Author Level 2', 2, 366.00, 1096.00, 'Author Level 2', 'frontend/assets/img/ranking_badges/rank_2.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(8, 'bc720110-2d17-436e-8988-cb629fa9c5ab', '6 to 16 Course', 3, 6.00, 16.00, '6 to 16 Course', 'frontend/assets/img/ranking_badges/course_2.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(9, 'a1ff60d7-1f79-4f89-bad3-908368038283', '11 to 31 Student', 4, 11.00, 31.00, '11 to 31 Student', 'frontend/assets/img/ranking_badges/student_2.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(10, '578a889c-0dca-4960-8378-c8eebab75e97', '11 to 31 Sold', 5, 11.00, 31.00, '11 to 31 Sold', 'frontend/assets/img/ranking_badges/sale_2.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(11, '99786c82-1557-456f-abe6-fe6fae6cf5b7', '3 Years of Membership', 1, 732.00, 1097.00, '3 Years of Membership', 'frontend/assets/img/ranking_badges/membership_3.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(12, '2e925e84-4039-419c-be8e-8c8cca77de78', 'Author Level 3', 2, 1097.00, 2192.00, 'Author Level 3', 'frontend/assets/img/ranking_badges/rank_3.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(13, '0e39ae42-d219-4a7e-af3d-9cb652591ba0', '17 to 32 Course', 3, 17.00, 32.00, '17 to 32 Course', 'frontend/assets/img/ranking_badges/course_3.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(14, '54bc597b-5555-41f0-9795-f11b130666c6', '32 to 62 Student', 4, 32.00, 62.00, '32 to 62 Student', 'frontend/assets/img/ranking_badges/student_3.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(15, '467a09ba-3efc-4de8-a4b1-42ccdaf245fa', '32 to 62 Sold', 5, 32.00, 62.00, '32 to 62 Sold', 'frontend/assets/img/ranking_badges/sale_3.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(16, 'bc4d0595-ae9d-456c-b45e-19b4d94d835d', '4 Years of Membership', 1, 1098.00, 1463.00, '4 Years of Membership', 'frontend/assets/img/ranking_badges/membership_4.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(17, 'd6b95157-61a9-4676-ad78-311491ba7968', 'Author Level 4', 2, 2193.00, 3653.00, 'Author Level 4', 'frontend/assets/img/ranking_badges/rank_4.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(18, '9113cc9f-1e30-4af8-8621-67313f8c0b15', '33 to 53 Course', 3, 33.00, 53.00, '33 to 53 Course', 'frontend/assets/img/ranking_badges/course_4.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(19, '1379b683-63ad-4ddc-93b6-67d8679ec535', '63 to 103 Student', 4, 63.00, 103.00, '63 to 103 Student', 'frontend/assets/img/ranking_badges/student_4.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(20, '452d0645-4baf-482f-8211-84e35dfce809', '63 to 103 Sold', 5, 63.00, 103.00, '63 to 103 Sold', 'frontend/assets/img/ranking_badges/sale_4.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(21, '3bc3bf00-5042-4997-9807-45ab475a4c6c', '5 Years of Membership', 1, 1464.00, 5114.00, '5 Years of Membership', 'frontend/assets/img/ranking_badges/membership_5.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(22, '2bc790fc-498e-4c0e-a459-27faaa5f157c', 'Author Level 5', 2, 3654.00, 5479.00, 'Author Level 5', 'frontend/assets/img/ranking_badges/rank_5.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(23, '4f44e662-ff69-4b44-81d3-bc0ae337163d', '54 to 79 Course', 3, 54.00, 79.00, '54 to 79 Course', 'frontend/assets/img/ranking_badges/course_5.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(24, '07da9daa-cacb-4d6b-a760-dc8fd47b26fe', '104 to 154 Student', 4, 104.00, 154.00, '104 to 154 Student', 'frontend/assets/img/ranking_badges/student_5.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34'),
(25, 'f88eb0be-aab3-47d7-9505-ba0e5ab8c8d1', '104 to 154 Sold', 5, 104.00, 154.00, '104 to 154 Sold', 'frontend/assets/img/ranking_badges/sale_5.png', NULL, NULL, NULL, '2022-12-05 01:35:34', '2022-12-05 01:35:34');

-- --------------------------------------------------------

--
-- Estrutura para tabela `refunds`
--

CREATE TABLE `refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enrollment_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `instructor_user_id` bigint(20) UNSIGNED NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `scorm`
--

CREATE TABLE `scorm` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `resource_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_in_second` double NOT NULL DEFAULT 0,
  `ratio` double DEFAULT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `scorm_sco`
--

CREATE TABLE `scorm_sco` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `scorm_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sco_parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `entry_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(4) NOT NULL,
  `sco_parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `launch_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_time_allowed` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_limit_action` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` tinyint(4) NOT NULL,
  `score_int` int(11) DEFAULT NULL,
  `score_decimal` decimal(10,7) DEFAULT NULL,
  `completion_threshold` decimal(10,7) DEFAULT NULL,
  `prerequisites` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `scorm_sco_tracking`
--

CREATE TABLE `scorm_sco_tracking` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sco_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `progression` double NOT NULL,
  `score_raw` int(11) DEFAULT NULL,
  `score_min` int(11) DEFAULT NULL,
  `score_max` int(11) DEFAULT NULL,
  `score_scaled` decimal(10,7) DEFAULT NULL,
  `lesson_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completion_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_time` int(11) DEFAULT NULL,
  `total_time_int` int(11) DEFAULT NULL,
  `total_time_string` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suspend_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exit_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesson_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesson_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_locked` tinyint(4) DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'json_array',
  `latest_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `settings`
--

INSERT INTO `settings` (`id`, `option_key`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'MagoWeb', '2022-12-05 01:35:33', '2023-07-07 15:42:45'),
(2, 'app_email', 'samuel.oliveiras@hotmail.com', '2022-12-05 01:35:33', '2023-07-07 15:42:45'),
(3, 'app_contact_number', '67 99287-5364', '2022-12-05 01:35:33', '2023-07-07 15:42:45'),
(4, 'app_location', '45/7 dreem street, albania dnobod, USA', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(5, 'app_date_format', 'd/m/Y', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(6, 'app_timezone', 'Asia/Dhaka', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(7, 'allow_preloader', '1', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(8, 'app_preloader', 'uploads/setting/1688734820-n0CStwLqIr.png', '2022-12-05 01:35:33', '2023-07-07 16:00:20'),
(9, 'app_logo', 'uploads/setting/1688734820-7oYYC2hmqR.png', '2022-12-05 01:35:33', '2023-07-07 16:00:20'),
(10, 'app_fav_icon', 'uploads/setting/1688734820-VJxnaVKwQV.png', '2022-12-05 01:35:33', '2023-07-07 16:00:20'),
(11, 'app_copyright', '© 2021 LMSZAI. All Rights Reserved.', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(12, 'app_developed', 'Zainiktheme', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(13, 'og_title', 'LMSZAI - Learning Management System', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(14, 'og_description', 'Learning Management System', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(15, 'zoom_status', '1', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(16, 'bbb_status', '1', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(17, 'jitsi_status', '1', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(18, 'jitsi_server_base_url', 'https://meet.jit.si/', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(19, 'registration_email_verification', '0', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(20, 'footer_quote', 'Mera existência tranquila, que negligenciei meus talentos. Eu deveria ser incapaz de desenhar um único traço no momento', '2022-12-05 01:35:33', '2023-07-07 16:48:35'),
(21, 'paystack_currency', 'NGN', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(22, 'paystack_conversion_rate', '420', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(23, 'paystack_status', '1', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(24, 'PAYSTACK_PUBLIC_KEY', '', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(25, 'PAYSTACK_SECRET_KEY', '', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(26, 'paypal_currency', 'USD', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(27, 'paypal_conversion_rate', '1', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(28, 'paypal_status', '0', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(29, 'PAYPAL_MODE', 'sandbox', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(30, 'PAYPAL_CLIENT_ID', '', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(31, 'PAYPAL_SECRET', '', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(32, 'stripe_currency', 'USD', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(33, 'stripe_conversion_rate', '1', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(34, 'stripe_status', '0', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(35, 'STRIPE_MODE', 'sandbox', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(36, 'STRIPE_SECRET_KEY', '', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(37, 'STRIPE_PUBLIC_KEY', '', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(38, 'razorpay_currency', 'INR', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(39, 'razorpay_conversion_rate', '78.04', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(40, 'razorpay_status', '1', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(41, 'RAZORPAY_KEY', 'rzp_test_jI4LNxngs3tF4n', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(42, 'RAZORPAY_SECRET', 'lZo8JpuK897uLRrnMB9imhIy', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(43, 'mollie_currency', 'EUR', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(44, 'mollie_conversion_rate', '1', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(45, 'mollie_status', '1', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(46, 'MOLLIE_KEY', '', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(47, 'im_currency', 'INR', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(48, 'im_conversion_rate', '79.84', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(49, 'im_status', '1', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(50, 'IM_API_KEY', '', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(51, 'IM_AUTH_TOKEN', '', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(52, 'IM_URL', 'https://test.instamojo.com/api/1.1/payment-requests/', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(53, 'sslcommerz_currency', 'BDT', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(54, 'sslcommerz_conversion_rate', '92', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(55, 'sslcommerz_status', '0', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(56, 'sslcommerz_mode', 'sandbox', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(57, 'SSLCZ_STORE_ID', '', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(58, 'SSLCZ_STORE_PASSWD', '', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(59, 'MAIL_DRIVER', 'smtp', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(60, 'MAIL_HOST', 'mail.magoweb.com.br', '2022-12-05 01:35:33', '2023-07-07 15:46:09'),
(61, 'MAIL_PORT', '465', '2022-12-05 01:35:33', '2023-07-07 15:46:09'),
(62, 'MAIL_USERNAME', 'contato@magoweb.com.br', '2022-12-05 01:35:33', '2023-07-07 15:46:09'),
(63, 'MAIL_PASSWORD', 'Eos@2143', '2022-12-05 01:35:33', '2023-07-07 15:46:09'),
(64, 'MAIL_ENCRYPTION', 'tls', '2022-12-05 01:35:33', '2023-07-07 15:46:09'),
(65, 'MAIL_FROM_ADDRESS', 'contato@magoweb.com.br', '2022-12-05 01:35:33', '2023-07-07 15:46:09'),
(66, 'MAIL_FROM_NAME', '${APP_NAME}', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(67, 'MAIL_MAILER', 'smtp', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(68, 'update', 'Save', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(69, 'sign_up_left_text', 'Descubra os melhores cursos online do mundo aqui. O curso online 24k está esperando por você', '2022-12-05 01:35:33', '2023-07-07 16:48:35'),
(70, 'sign_up_left_image', 'uploads_demo/home/hero-img.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(71, 'forgot_title', 'Esqueceu sua senha?', '2022-12-05 01:35:33', '2023-07-07 16:48:35'),
(72, 'forgot_subtitle', 'Digite o endereço de e-mail que você usou quando se inscreveu e enviaremos instruções para redefinir sua senha. Por motivos de segurança, NÃO armazenamos sua senha. Portanto, tenha certeza de que nunca enviaremos sua senha por e-mail.', '2022-12-05 01:35:33', '2023-07-07 16:48:35'),
(73, 'forgot_btn_name', 'Enviar instruções de reinicialização', '2022-12-05 01:35:33', '2023-07-07 16:48:35'),
(74, 'facebook_url', '#', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(75, 'twitter_url', '#', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(76, 'linkedin_url', '#', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(77, 'pinterest_url', '#', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(78, 'app_instructor_footer_title', 'Join One Of The World’s Largest Learning Marketplaces.', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(79, 'app_instructor_footer_subtitle', 'Donald valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my tree', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(80, 'get_in_touch_title', 'Get in Touch', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(81, 'send_us_msg_title', 'Send Us a Message', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(82, 'contact_us_location', '32 Yaool, myself down around dupal the street, London', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(83, 'contact_us_email_one', 'mail@lmszai.co.uk', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(84, 'contact_us_email_two', 'info@lmazaiinner.co.uk', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(85, 'contact_us_phone_one', '328-456-07875', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(86, 'contact_us_phone_two', '128-456-07875', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(87, 'contact_us_map_link', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1839.0179632416985!2d89.5538504127622!3d22.801132631062536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ff8f2b1098bf95%3A0xbce09c90b98f8380!2sJust%20Orders%20Khulna!5e0!3m2!1sen!2sbd!4v1636005141952!5m2!1sen!2sbd', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(88, 'contact_us_description', 'Strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal about the human. It might take 6 -12 hour to replay', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(89, 'faq_title', 'Frequently Ask Questions.', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(90, 'faq_subtitle', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(91, 'faq_image_title', 'Still no luck?', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(92, 'faq_image', 'uploads_demo/setting\\faq-img.jpg', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(93, 'faq_tab_first_title', 'Item Support', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(94, 'faq_tab_first_subtitle', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(95, 'faq_tab_sec_title', 'Licensing', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(96, 'faq_tab_sec_subtitle', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(97, 'faq_tab_third_title', 'Your Account', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(98, 'faq_tab_third_subtitle', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(99, 'faq_tab_four_title', 'Tax & Complications', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(100, 'faq_tab_four_subtitle', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(101, 'home_special_feature_first_logo', 'uploads_demo/setting\\feature-icon1.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(102, 'home_special_feature_first_title', 'Learn From Experts', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(103, 'home_special_feature_first_subtitle', 'Mornings of spring which I enjoy with my whole heart about the gen', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(104, 'home_special_feature_second_logo', 'uploads_demo/setting/feature-icon2.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(105, 'home_special_feature_second_title', 'Earn a Certificate', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(106, 'home_special_feature_second_subtitle', 'Mornings of spring which I enjoy with my whole heart about the gen', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(107, 'home_special_feature_third_logo', 'uploads_demo/setting\\feature-icon3.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(108, 'home_special_feature_third_title', '5000+ Courses', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(109, 'home_special_feature_third_subtitle', 'Serenity has taken possession of my entire soul, like these sweet spring', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(110, 'course_logo', 'uploads_demo/setting/courses-heading-img.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(111, 'course_title', 'A Broad Selection Of Courses', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(112, 'course_subtitle', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(113, 'bundle_course_logo', 'uploads_demo/setting/bundle-courses-heading-img.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(114, 'bundle_course_title', 'Latest Bundle Courses', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(115, 'bundle_course_subtitle', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(116, 'top_category_logo', 'uploads_demo/setting/categories-heading-img.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(117, 'top_category_title', 'Our Top Categories', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(118, 'top_category_subtitle', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(119, 'top_instructor_logo', 'uploads_demo/setting\\top-instructor-heading-img.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(120, 'top_instructor_title', 'Top Rated Courses From Our Top Instructor.', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(121, 'top_instructor_subtitle', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(122, 'become_instructor_video', 'uploads_demo/setting/test.mp4', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(123, 'become_instructor_video_preview_image', 'uploads_demo/setting/video-poster.jpg', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(124, 'become_instructor_video_logo', 'uploads_demo/setting/top-instructor-heading-img.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(125, 'become_instructor_video_title', 'We Only Accept Professional Courses Form Professional Instructors', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(126, 'become_instructor_video_subtitle', 'Noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(127, 'customer_say_logo', 'uploads_demo/setting/customers-say-heading-img.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(128, 'customer_say_title', 'What Our Valuable Customers Say.', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(129, 'customer_say_first_name', 'DANIEL JHON', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(130, 'customer_say_first_position', 'UI/UX DESIGNER', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(131, 'customer_say_first_comment_title', 'Great instructor, great course', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(132, 'customer_say_first_comment_description', 'Wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(133, 'customer_say_first_comment_rating_star', '5', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(134, 'customer_say_second_name', 'NORTH', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(135, 'customer_say_second_position', 'DEVELOPER', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(136, 'customer_say_second_comment_title', 'Awesome course & good response', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(137, 'customer_say_second_comment_description', 'Noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(138, 'customer_say_second_comment_rating_star', '4.5', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(139, 'customer_say_third_name', 'HIBRUPATH', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(140, 'customer_say_third_position', 'MARKETER', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(141, 'customer_say_third_comment_title', 'Fantastic course', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(142, 'customer_say_third_comment_description', 'Noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(143, 'customer_say_third_comment_rating_star', '5', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(144, 'achievement_first_logo', 'uploads_demo/setting\\1.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(145, 'achievement_first_title', 'Successfully trained', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(146, 'achievement_first_subtitle', '2000+ students', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(147, 'achievement_second_logo', 'uploads_demo/setting\\2.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(148, 'achievement_second_title', 'Video courses', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(149, 'achievement_second_subtitle', '2000+ students', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(150, 'achievement_third_logo', 'uploads_demo/setting\\3.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(151, 'achievement_third_title', 'Expert instructor', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(152, 'achievement_third_subtitle', '2000+ students', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(153, 'achievement_four_logo', 'uploads_demo/setting\\4.png', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(154, 'achievement_four_title', 'Proudly Received', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(155, 'achievement_four_title', 'Proudly Received', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(156, 'achievement_four_subtitle', '2000+ students', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(157, 'support_faq_title', 'Frequently Ask Questions. 2', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(158, 'support_faq_subtitle', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS 3', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(159, 'ticket_title', 'Is That Helpful?', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(160, 'ticket_subtitle', 'Are You Still Confusion?', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(161, 'cookie_button_name', 'Allow cookies', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(162, 'cookie_msg', 'Your experience on this site will be improved by allowing cookies', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(163, 'COOKIE_CONSENT_STATUS', '1', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(164, 'platform_charge', '2', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(165, 'sell_commission', '0', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(166, 'app_version', '15', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(167, 'current_version', '4.2', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(168, 'currency_id', '1', '2023-07-07 15:42:45', '2023-07-07 15:42:45'),
(169, 'language_id', '4', '2023-07-07 15:42:45', '2023-07-07 16:00:19'),
(170, 'TIMEZONE', 'UTC', '2023-07-07 15:42:45', '2023-07-07 15:42:45'),
(171, 'pwa_enable', '0', '2023-07-07 15:42:45', '2023-07-07 15:42:45'),
(172, 'instagram_url', NULL, '2023-07-07 15:42:45', '2023-07-07 15:42:45'),
(173, 'tiktok_url', NULL, '2023-07-07 15:42:45', '2023-07-07 15:42:45'),
(174, 'saas_mode', '1', '2023-07-07 15:45:20', '2023-07-07 15:45:20'),
(175, 'default_saas_for_ins', '2', '2023-07-07 15:45:20', '2023-07-07 15:45:20'),
(176, 'default_saas_for_org', '3', '2023-07-07 15:45:20', '2023-07-07 15:45:20'),
(177, 'saas_ins_default_package_type', 'monthly', '2023-07-07 15:45:20', '2023-07-07 15:45:20'),
(178, 'saas_org_default_package_type', 'yearly', '2023-07-07 15:45:20', '2023-07-07 15:45:20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 0=deactivated',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `skills`
--

INSERT INTO `skills` (`id`, `title`, `description`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Management', 'Management', 1, NULL, NULL, NULL),
(2, 'Web Development', 'Web Development', 1, NULL, NULL, NULL),
(3, 'Mobile Development', 'Mobile Development', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `special_promotion_tags`
--

CREATE TABLE `special_promotion_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `special_promotion_tag_courses`
--

CREATE TABLE `special_promotion_tag_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `special_promotion_tag_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 2, 'Mato Grosso do Sul', NULL, '2023-07-07 15:43:53'),
(2, 1, 'Khulna', NULL, NULL),
(3, 1, 'Comilla', NULL, NULL),
(4, 2, 'California', NULL, NULL),
(5, 2, 'Texas', NULL, NULL),
(6, 2, 'Florida', NULL, NULL),
(7, 3, 'Argyll', NULL, NULL),
(8, 3, 'Belfast', NULL, NULL),
(9, 3, 'Cambridge', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_me` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=pending, 1=approved, 2=blocked',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `students`
--

INSERT INTO `students` (`id`, `uuid`, `user_id`, `organization_id`, `country_id`, `province_id`, `state_id`, `city_id`, `first_name`, `last_name`, `phone_number`, `postal_code`, `address`, `about_me`, `gender`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2053f209-e0c2-4c83-8a21-a689ef97d23e', 2, NULL, NULL, NULL, NULL, NULL, 'Professora', 'Professor', '67 99287536467992875369', NULL, NULL, NULL, NULL, 1, '2023-07-07 16:31:57', '2023-07-07 16:31:57', NULL),
(2, '568526bc-ea8d-4faa-9117-430a3f5f3b82', 3, NULL, NULL, NULL, NULL, NULL, 'Aluno', 'Aluno', '8867992875364', NULL, NULL, NULL, NULL, 1, '2023-07-07 16:51:13', '2023-07-07 16:51:13', NULL),
(3, 'b382d7fc-1967-4a4b-b16b-791a1d881e22', 4, NULL, NULL, NULL, NULL, NULL, 'Raul', 'Costa', '', NULL, NULL, NULL, NULL, 1, '2023-07-07 17:09:05', '2023-07-07 17:09:05', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `student_certificates`
--

CREATE TABLE `student_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `certificate_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` bigint(20) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `subcategories`
--

INSERT INTO `subcategories` (`id`, `uuid`, `category_id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, '9f2e9f01-4b48-40a3-9d11-d1badce66abe', 1, 'Web Development', 'web-development', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(2, 'ee7dbc19-7ad1-4567-9c4f-12b1d5447e2d', 1, 'Data Science', 'data-science', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(3, '7cc4d2f8-529f-4e89-b28a-ed3a9a243883', 1, 'Mobile Development', 'mobile-development', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(4, '50017599-5bf8-401e-b8e8-ac74a5483ec4', 1, 'Programming Language', 'programming-language', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(5, '2d9561f5-abb6-49a9-8f01-b9871e0e377f', 1, 'Game Development', 'game-development', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(6, 'e5bd8dee-2b3d-4b4c-bc1f-5717b4049a00', 2, 'IT Certifications', 'it-certifications', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(7, 'aee6a731-0f3d-4abf-87d4-59636ce657f2', 2, 'Network & Security', 'network-security', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(8, '04ec60ec-ee72-4bbf-a58e-bce7fe2e8cbb', 2, 'Hardware', 'hardware', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(9, 'b74c0ee8-81ac-4c87-bace-dbbfd17b1be3', 2, 'Operating System & Servers', 'operating-system-servers', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(10, 'ef6c46a4-e09c-4af6-96e2-1995eeeee9ae', 3, 'Microsoft', 'microsoft', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(11, 'c966ea96-e96f-44a6-9b5a-ef9ae56844d4', 3, 'Apple', 'apple', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(12, 'f02d2d08-4acb-4cb8-8ce7-8d1bdaa6ca7c', 3, 'Google', 'google', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(13, '3b377226-0b6e-4896-a679-e12e329d6ffd', 4, 'Career Development', 'career-development', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(14, '57c46b26-520f-4286-bfc5-6372a9cd924a', 4, 'Creativity', 'creativity', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(15, 'bad12e18-78bb-46c1-8e2b-e428bda8eb5d', 5, 'Communication', 'communication', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(16, 'e593cfab-7cdd-40d9-a0f2-27f18bf02b89', 5, 'Management', 'management', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(17, '37f7ed7e-d3da-470b-9be6-7655342457af', 5, 'Sales', 'sales', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(18, '9377e664-e92f-4839-ba85-829629ad296d', 7, 'Web Design', 'web-design', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(19, '0e3195ef-68c2-4044-8ee3-727cd504e586', 7, 'Graphic Design', 'graphic-design', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(20, '41c9906d-1a92-4529-93f3-75ee342dbdb3', 7, 'Game Design', 'game-design', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(21, '051ab930-2a76-4e6c-a1a6-2d6681427e4b', 7, 'Fashion Design', 'fashion-design', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(22, '5cafa706-4015-49e6-babf-0a7f0495012f', 7, 'User Experience Design', 'user-experience-design', '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `subscription_commission_histories`
--

CREATE TABLE `subscription_commission_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `monthly_distribution_history_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sub_amount` decimal(12,2) NOT NULL,
  `commission_percentage` decimal(2,2) NOT NULL,
  `admin_commission` decimal(12,2) NOT NULL,
  `total_amount` decimal(8,2) NOT NULL,
  `paid_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `support_ticket_questions`
--

CREATE TABLE `support_ticket_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `support_ticket_questions`
--

INSERT INTO `support_ticket_questions` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Where can I see the status of my refund?', ' In the Refund Status column you can see the date your refund request was submitted or when it was processed.', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(2, 'When will I receive my refund?', ' Refund requests are submitted immediately to your payment processor or financial institution after Udemy has received and processed your request. It may take  5 to 10 business days or longer to post the funds in your account, depending on your financial institution or location.', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(3, 'Why was my refund request denied?', ' All eligible courses purchased on Udemy can be refunded within 30 days, provided the request meets the guidelines in our refund policy. ', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(4, 'What is a “credit refund”?', ' In cases where a transaction is not eligible for a refund to your original payment method, the refund will be granted using LMSZAI Credit', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(5, 'Where can I see the status of my refund?', ' In the Refund Status column you can see the date your refund request was submitted or when it was processed.', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(6, 'When will I receive my refund?', ' Refund requests are submitted immediately to your payment processor or financial institution after Udemy has received and processed your request. It may take  5 to 10 business days or longer to post the funds in your account, depending on your financial institution or location.', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(7, 'Why was my refund request denied?', ' All eligible courses purchased on Udemy can be refunded within 30 days, provided the request meets the guidelines in our refund policy. ', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(8, 'What is a “credit refund”?', ' In cases where a transaction is not eligible for a refund to your original payment method, the refund will be granted using LMSZAI Credit', '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tags`
--

INSERT INTO `tags` (`id`, `uuid`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'd45fd1e7-a1e0-4d3f-954d-bd56dc95e48f', 'Design', 'design', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(2, '90bfec22-452f-42f4-b9aa-03c053aecc24', 'Development', 'development', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(3, 'b375ca10-66e9-43c1-8593-a6bdcc8ab3d9', 'IT', 'it', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(4, 'eecd9f5d-f023-4fe2-afcb-23b9ccc558b9', 'Programming', 'programming', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(5, '8f9fbd32-7878-443a-a531-faf1c4428b31', 'Travel', 'travel', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(6, '235b8c44-a340-4929-a48c-6238314d6af4', 'Music', 'music', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(7, '36ec1ef2-5bca-4d06-9446-a5d8ab6abdab', 'Digital marketing', 'digital-marketing', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(8, 'd8dc6caa-b578-49f6-aaca-e25783afe34b', 'Science', 'science', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(9, '346c01be-ab53-406f-acc4-73c5fddc0b6f', 'Math', 'math', '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `take_exams`
--

CREATE TABLE `take_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `exam_id` bigint(20) NOT NULL,
  `number_of_correct_answer` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `take_exams`
--

INSERT INTO `take_exams` (`id`, `user_id`, `exam_id`, `number_of_correct_answer`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 0, '2023-07-10 17:27:27', '2023-07-10 17:27:27');

-- --------------------------------------------------------

--
-- Estrutura para tabela `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `team_members`
--

INSERT INTO `team_members` (`id`, `image`, `name`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'uploads_demo/team_member/1.jpg', 'Arnold keens', 'CREATIVE DIRECTOR', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(2, 'uploads_demo/team_member/2.jpg', 'James Bond', 'Designer', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(3, 'uploads_demo/team_member/3.jpg', 'Ketty Perry', 'Customer Support', '2022-12-05 01:35:33', '2022-12-05 01:35:33'),
(4, 'uploads_demo/team_member/4.jpg', 'Scarlett Johansson', 'CREATIVE DIRECTOR', '2022-12-05 01:35:33', '2022-12-05 01:35:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=Open, 2=Closed',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `related_service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `priority_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ticket_departments`
--

CREATE TABLE `ticket_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sender_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reply_admin_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ticket_priorities`
--

CREATE TABLE `ticket_priorities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ticket_related_services`
--

CREATE TABLE `ticket_related_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hash` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `order_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(12,3) NOT NULL DEFAULT 0.000,
  `narration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1=admin, 2=instructor, 3=student',
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` decimal(12,8) DEFAULT NULL,
  `long` decimal(12,8) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forgot_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_affiliator` tinyint(4) NOT NULL DEFAULT 0,
  `balance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `area_code`, `mobile_number`, `email_verified_at`, `password`, `role`, `phone_number`, `address`, `lat`, `long`, `image`, `avatar`, `forgot_token`, `provider_id`, `remember_token`, `created_at`, `updated_at`, `is_affiliator`, `balance`, `deleted_at`) VALUES
(1, 'Administration', 'admin@gmail.com', NULL, NULL, '2022-12-05 01:35:33', '$2y$10$EgTgia.sBwaQ3Y.Sj2PXY.KajFK0XyXA2WrOV2Ghva99sTzzm/vc2', 1, '+8801999999999', 'Dhaka, Bangladesh', NULL, NULL, 'uploads_demo/user/admin-avatar.jpg', NULL, NULL, NULL, NULL, '2022-12-05 01:35:33', '2022-12-05 01:35:33', 0, 0, NULL),
(2, 'Professora Professor', 'professor@gmail.com', '67 9928753', '67992875369', '2023-07-07 16:31:57', '$2y$10$p7eoYlhJiF9TPfgm/YONB.aKz.T6AWhNL87w9mY8fcmFQc5PxJSK2', 2, '67 99287536467992875369', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'IsCn5wAvZp8KkYd0oNEuZJ6dW5UO1qtg6S34ewpNNvjODE35OnNl2JFaMT3d', '2023-07-07 16:31:57', '2023-07-07 16:34:46', 0, 0, NULL),
(3, 'Aluno Aluno', 'aluno@gmail.com', '88', '67992875364', '2023-07-07 16:51:13', '$2y$10$CXDgENCOzdQTnVOrqa/wsO.N.Vz0rEZ1k7kC9zizjUcsu9uOgehmy', 3, '8867992875364', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I9mimiVevE9iHQrXtbR0Qze2dm7yN48lhxAyYd6UJ0iPO3I6wtFrW2v3qpAw', '2023-07-07 16:51:13', '2023-07-07 16:51:13', 0, 0, NULL),
(4, 'Raul Costa', 'isaogp@gmail.com', '', NULL, '2023-07-07 17:09:05', '$2y$10$3iZaVPRynlaSIiy9SdHYtO3FII7AjjFpIcfkHd7fwwoR8O4dVyhDu', 3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nvBOWsxfP2dwvZNnnSP3w8kqkIL4I3fOsdDEqpZnxw80fgOxhjWLntCiIY2V', '2023-07-07 17:09:05', '2023-07-07 17:09:05', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_badges`
--

CREATE TABLE `user_badges` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ranking_level_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `user_badges`
--

INSERT INTO `user_badges` (`user_id`, `ranking_level_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_cards`
--

CREATE TABLE `user_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `card_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_follower`
--

CREATE TABLE `user_follower` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_packages`
--

CREATE TABLE `user_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subscription_type` tinyint(4) NOT NULL DEFAULT 1,
  `enroll_date` datetime NOT NULL,
  `expired_date` datetime NOT NULL,
  `student` int(11) NOT NULL DEFAULT 0,
  `instructor` int(11) NOT NULL DEFAULT 0,
  `course` int(11) NOT NULL DEFAULT 0,
  `consultancy` int(11) NOT NULL DEFAULT 0,
  `subscription_course` int(11) NOT NULL DEFAULT 0,
  `bundle_course` int(11) NOT NULL DEFAULT 0,
  `product` int(11) NOT NULL DEFAULT 0,
  `device` int(11) NOT NULL DEFAULT 0,
  `admin_commission` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `user_packages`
--

INSERT INTO `user_packages` (`id`, `user_id`, `package_id`, `payment_id`, `subscription_type`, `enroll_date`, `expired_date`, `student`, `instructor`, `course`, `consultancy`, `subscription_course`, `bundle_course`, `product`, `device`, `admin_commission`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, NULL, 1, '2023-07-07 13:34:46', '2023-08-07 13:34:46', 0, 0, 5, 10, 1, 1, 0, 0, 20, 1, NULL, '2023-07-07 16:34:46', '2023-07-07 16:34:46');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_paypals`
--

CREATE TABLE `user_paypals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wallet_recharges`
--

CREATE TABLE `wallet_recharges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bundle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `beneficiary_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transection_id` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=complete, 2=rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `zoom_settings`
--

CREATE TABLE `zoom_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `api_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host_video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'true, false',
  `participant_video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'true, false',
  `waiting_room` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'true, false',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=disable, 1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `about_us_generals`
--
ALTER TABLE `about_us_generals`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `affiliate_history`
--
ALTER TABLE `affiliate_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `affiliate_history_hash_unique` (`hash`);

--
-- Índices de tabela `affiliate_request`
--
ALTER TABLE `affiliate_request`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assignments_uuid_unique` (`uuid`);

--
-- Índices de tabela `assignment_files`
--
ALTER TABLE `assignment_files`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `assignment_submits`
--
ALTER TABLE `assignment_submits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assignment_submits_uuid_unique` (`uuid`);

--
-- Índices de tabela `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beneficiaries_uuid_unique` (`uuid`);

--
-- Índices de tabela `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_uuid_unique` (`uuid`);

--
-- Índices de tabela `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_uuid_unique` (`uuid`);

--
-- Índices de tabela `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `booking_histories`
--
ALTER TABLE `booking_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_histories_uuid_unique` (`uuid`);

--
-- Índices de tabela `bundles`
--
ALTER TABLE `bundles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bundles_uuid_unique` (`uuid`);

--
-- Índices de tabela `bundle_courses`
--
ALTER TABLE `bundle_courses`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cart_management`
--
ALTER TABLE `cart_management`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_uuid_unique` (`uuid`);

--
-- Índices de tabela `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificates_uuid_unique` (`uuid`);

--
-- Índices de tabela `certificate_by_instructors`
--
ALTER TABLE `certificate_by_instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificate_by_instructors_uuid_unique` (`uuid`);

--
-- Índices de tabela `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `client_logos`
--
ALTER TABLE `client_logos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `consultation_slots`
--
ALTER TABLE `consultation_slots`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contact_us_issues`
--
ALTER TABLE `contact_us_issues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_us_issues_uuid_unique` (`uuid`);

--
-- Índices de tabela `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_uuid_unique` (`uuid`);

--
-- Índices de tabela `coupon_courses`
--
ALTER TABLE `coupon_courses`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `coupon_instructors`
--
ALTER TABLE `coupon_instructors`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_uuid_unique` (`uuid`);

--
-- Índices de tabela `course_instructor`
--
ALTER TABLE `course_instructor`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `course_languages`
--
ALTER TABLE `course_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_languages_uuid_unique` (`uuid`);

--
-- Índices de tabela `course_lectures`
--
ALTER TABLE `course_lectures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_lectures_uuid_unique` (`uuid`);

--
-- Índices de tabela `course_lecture_views`
--
ALTER TABLE `course_lecture_views`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `course_lessons`
--
ALTER TABLE `course_lessons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_lessons_uuid_unique` (`uuid`);

--
-- Índices de tabela `course_resources`
--
ALTER TABLE `course_resources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_resources_uuid_unique` (`uuid`);

--
-- Índices de tabela `course_tags`
--
ALTER TABLE `course_tags`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `course_upload_rules`
--
ALTER TABLE `course_upload_rules`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `devices_device_uuid_unique` (`device_uuid`),
  ADD KEY `devices_device_type_index` (`device_type`),
  ADD KEY `devices_ip_index` (`ip`);

--
-- Índices de tabela `device_user`
--
ALTER TABLE `device_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_user_user_id_device_id_index` (`user_id`,`device_id`),
  ADD KEY `device_user_user_id_index` (`user_id`),
  ADD KEY `device_user_device_id_index` (`device_id`);

--
-- Índices de tabela `difficulty_levels`
--
ALTER TABLE `difficulty_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `difficulty_levels_uuid_unique` (`uuid`);

--
-- Índices de tabela `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `email_notification_settings`
--
ALTER TABLE `email_notification_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_notification_settings_uuid_unique` (`uuid`);

--
-- Índices de tabela `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_templates_uuid_unique` (`uuid`);

--
-- Índices de tabela `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_uuid_unique` (`uuid`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `faq_questions`
--
ALTER TABLE `faq_questions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `forum_categories`
--
ALTER TABLE `forum_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forum_categories_uuid_unique` (`uuid`);

--
-- Índices de tabela `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forum_posts_uuid_unique` (`uuid`);

--
-- Índices de tabela `forum_post_comments`
--
ALTER TABLE `forum_post_comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forum_post_comments_uuid_unique` (`uuid`);

--
-- Índices de tabela `generate_contents`
--
ALTER TABLE `generate_contents`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `gmeet_settings`
--
ALTER TABLE `gmeet_settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `home_special_features`
--
ALTER TABLE `home_special_features`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructors_uuid_unique` (`uuid`);

--
-- Índices de tabela `instructor_awards`
--
ALTER TABLE `instructor_awards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructor_awards_uuid_unique` (`uuid`);

--
-- Índices de tabela `instructor_certificates`
--
ALTER TABLE `instructor_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructor_certificates_uuid_unique` (`uuid`);

--
-- Índices de tabela `instructor_consultation_day_statuses`
--
ALTER TABLE `instructor_consultation_day_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `instructor_features`
--
ALTER TABLE `instructor_features`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `instructor_procedures`
--
ALTER TABLE `instructor_procedures`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `instructor_supports`
--
ALTER TABLE `instructor_supports`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_language_unique` (`language`),
  ADD UNIQUE KEY `languages_iso_code_unique` (`iso_code`);

--
-- Índices de tabela `learn_key_points`
--
ALTER TABLE `learn_key_points`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `live_classes`
--
ALTER TABLE `live_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `live_classes_uuid_unique` (`uuid`);

--
-- Índices de tabela `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `metas_uuid_unique` (`uuid`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices de tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices de tabela `monthly_distribution_histories`
--
ALTER TABLE `monthly_distribution_histories`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `notice_boards`
--
ALTER TABLE `notice_boards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notice_boards_uuid_unique` (`uuid`);

--
-- Índices de tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notifications_uuid_unique` (`uuid`);

--
-- Índices de tabela `open_a_i_prompts`
--
ALTER TABLE `open_a_i_prompts`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_uuid_unique` (`uuid`);

--
-- Índices de tabela `order_billing_addresses`
--
ALTER TABLE `order_billing_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_uuid_unique` (`uuid`);

--
-- Índices de tabela `our_histories`
--
ALTER TABLE `our_histories`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `packages_uuid_unique` (`uuid`),
  ADD UNIQUE KEY `packages_slug_unique` (`slug`);

--
-- Índices de tabela `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_uuid_unique` (`uuid`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices de tabela `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_uuid_unique` (`uuid`);

--
-- Índices de tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_uuid_unique` (`uuid`);

--
-- Índices de tabela `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promotions_uuid_unique` (`uuid`);

--
-- Índices de tabela `promotion_courses`
--
ALTER TABLE `promotion_courses`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `questions_uuid_unique` (`uuid`);

--
-- Índices de tabela `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question_options_uuid_unique` (`uuid`);

--
-- Índices de tabela `ranking_levels`
--
ALTER TABLE `ranking_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ranking_levels_uuid_unique` (`uuid`);

--
-- Índices de tabela `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Índices de tabela `scorm`
--
ALTER TABLE `scorm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scorm_resource_type_resource_id_index` (`resource_type`,`resource_id`);

--
-- Índices de tabela `scorm_sco`
--
ALTER TABLE `scorm_sco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scorm_sco_scorm_id_foreign` (`scorm_id`);

--
-- Índices de tabela `scorm_sco_tracking`
--
ALTER TABLE `scorm_sco_tracking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scorm_sco_tracking_user_id_foreign` (`user_id`),
  ADD KEY `scorm_sco_tracking_sco_id_foreign` (`sco_id`);

--
-- Índices de tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `special_promotion_tags`
--
ALTER TABLE `special_promotion_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `special_promotion_tags_uuid_unique` (`uuid`);

--
-- Índices de tabela `special_promotion_tag_courses`
--
ALTER TABLE `special_promotion_tag_courses`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_uuid_unique` (`uuid`);

--
-- Índices de tabela `student_certificates`
--
ALTER TABLE `student_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_certificates_uuid_unique` (`uuid`),
  ADD UNIQUE KEY `student_certificates_certificate_number_unique` (`certificate_number`);

--
-- Índices de tabela `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcategories_uuid_unique` (`uuid`);

--
-- Índices de tabela `subscription_commission_histories`
--
ALTER TABLE `subscription_commission_histories`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `support_ticket_questions`
--
ALTER TABLE `support_ticket_questions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_uuid_unique` (`uuid`);

--
-- Índices de tabela `take_exams`
--
ALTER TABLE `take_exams`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_uuid_unique` (`uuid`);

--
-- Índices de tabela `ticket_departments`
--
ALTER TABLE `ticket_departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_departments_uuid_unique` (`uuid`);

--
-- Índices de tabela `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `ticket_priorities`
--
ALTER TABLE `ticket_priorities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_priorities_uuid_unique` (`uuid`);

--
-- Índices de tabela `ticket_related_services`
--
ALTER TABLE `ticket_related_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_related_services_uuid_unique` (`uuid`);

--
-- Índices de tabela `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_hash_unique` (`hash`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_number_unique` (`mobile_number`);

--
-- Índices de tabela `user_cards`
--
ALTER TABLE `user_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_cards_uuid_unique` (`uuid`);

--
-- Índices de tabela `user_packages`
--
ALTER TABLE `user_packages`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `user_paypals`
--
ALTER TABLE `user_paypals`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `wallet_recharges`
--
ALTER TABLE `wallet_recharges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallet_recharges_uuid_unique` (`uuid`);

--
-- Índices de tabela `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `withdraws_uuid_unique` (`uuid`);

--
-- Índices de tabela `zoom_settings`
--
ALTER TABLE `zoom_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `about_us_generals`
--
ALTER TABLE `about_us_generals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `affiliate_history`
--
ALTER TABLE `affiliate_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `affiliate_request`
--
ALTER TABLE `affiliate_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `assignment_files`
--
ALTER TABLE `assignment_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `assignment_submits`
--
ALTER TABLE `assignment_submits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `beneficiaries`
--
ALTER TABLE `beneficiaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `booking_histories`
--
ALTER TABLE `booking_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `bundles`
--
ALTER TABLE `bundles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `bundle_courses`
--
ALTER TABLE `bundle_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cart_management`
--
ALTER TABLE `cart_management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `certificate_by_instructors`
--
ALTER TABLE `certificate_by_instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `client_logos`
--
ALTER TABLE `client_logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `consultation_slots`
--
ALTER TABLE `consultation_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `contact_us_issues`
--
ALTER TABLE `contact_us_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `coupon_courses`
--
ALTER TABLE `coupon_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `coupon_instructors`
--
ALTER TABLE `coupon_instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `course_instructor`
--
ALTER TABLE `course_instructor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `course_languages`
--
ALTER TABLE `course_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `course_lectures`
--
ALTER TABLE `course_lectures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `course_lecture_views`
--
ALTER TABLE `course_lecture_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `course_lessons`
--
ALTER TABLE `course_lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `course_resources`
--
ALTER TABLE `course_resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `course_tags`
--
ALTER TABLE `course_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `course_upload_rules`
--
ALTER TABLE `course_upload_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `device_user`
--
ALTER TABLE `device_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `difficulty_levels`
--
ALTER TABLE `difficulty_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `email_notification_settings`
--
ALTER TABLE `email_notification_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `faq_questions`
--
ALTER TABLE `faq_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `forum_categories`
--
ALTER TABLE `forum_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `forum_post_comments`
--
ALTER TABLE `forum_post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `generate_contents`
--
ALTER TABLE `generate_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `gmeet_settings`
--
ALTER TABLE `gmeet_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `home_special_features`
--
ALTER TABLE `home_special_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `instructor_awards`
--
ALTER TABLE `instructor_awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `instructor_certificates`
--
ALTER TABLE `instructor_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `instructor_consultation_day_statuses`
--
ALTER TABLE `instructor_consultation_day_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `instructor_features`
--
ALTER TABLE `instructor_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `instructor_procedures`
--
ALTER TABLE `instructor_procedures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `instructor_supports`
--
ALTER TABLE `instructor_supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `learn_key_points`
--
ALTER TABLE `learn_key_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `live_classes`
--
ALTER TABLE `live_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `metas`
--
ALTER TABLE `metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT de tabela `monthly_distribution_histories`
--
ALTER TABLE `monthly_distribution_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `notice_boards`
--
ALTER TABLE `notice_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `open_a_i_prompts`
--
ALTER TABLE `open_a_i_prompts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `order_billing_addresses`
--
ALTER TABLE `order_billing_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `our_histories`
--
ALTER TABLE `our_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `promotion_courses`
--
ALTER TABLE `promotion_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `ranking_levels`
--
ALTER TABLE `ranking_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `scorm`
--
ALTER TABLE `scorm`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `scorm_sco`
--
ALTER TABLE `scorm_sco`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `scorm_sco_tracking`
--
ALTER TABLE `scorm_sco_tracking`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT de tabela `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `special_promotion_tags`
--
ALTER TABLE `special_promotion_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `special_promotion_tag_courses`
--
ALTER TABLE `special_promotion_tag_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `student_certificates`
--
ALTER TABLE `student_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `subscription_commission_histories`
--
ALTER TABLE `subscription_commission_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `support_ticket_questions`
--
ALTER TABLE `support_ticket_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `take_exams`
--
ALTER TABLE `take_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ticket_departments`
--
ALTER TABLE `ticket_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ticket_priorities`
--
ALTER TABLE `ticket_priorities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ticket_related_services`
--
ALTER TABLE `ticket_related_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `user_cards`
--
ALTER TABLE `user_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `user_packages`
--
ALTER TABLE `user_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `user_paypals`
--
ALTER TABLE `user_paypals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wallet_recharges`
--
ALTER TABLE `wallet_recharges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `zoom_settings`
--
ALTER TABLE `zoom_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `scorm_sco`
--
ALTER TABLE `scorm_sco`
  ADD CONSTRAINT `scorm_sco_scorm_id_foreign` FOREIGN KEY (`scorm_id`) REFERENCES `scorm` (`id`);

--
-- Restrições para tabelas `scorm_sco_tracking`
--
ALTER TABLE `scorm_sco_tracking`
  ADD CONSTRAINT `scorm_sco_tracking_sco_id_foreign` FOREIGN KEY (`sco_id`) REFERENCES `scorm_sco` (`id`),
  ADD CONSTRAINT `scorm_sco_tracking_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
