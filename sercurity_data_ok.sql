-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2022 at 09:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sercurity_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `carbinet`
--

CREATE TABLE `carbinet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `member_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carbinet`
--

INSERT INTO `carbinet` (`id`, `name`, `work_room_id`, `member_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'shoe cabinet', 1, 2, '2022-02-18 01:12:00', '2022-02-28 20:43:30', NULL),
(2, 'name', 6, 4, '2022-02-18 01:12:10', '2022-03-10 21:25:50', '1'),
(3, 'Table', 1, 1, '2022-02-28 20:43:10', '2022-02-28 20:43:19', NULL),
(4, 'clothes', 4, 5, '2022-03-10 21:24:57', '2022-03-10 21:24:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `date_incorporation` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `address`, `email`, `phone`, `date_incorporation`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Unisoft company', '02 Quang Trung', 'unisoft@gmail.com', 777888999, '2000-07-02', '2022-02-15 22:49:06', '2022-02-24 22:30:32', NULL),
(3, 'Unitech company', '02 Quang Trung', 'unitech@gmail.com', 988777999, '1999-08-02', '2022-02-15 23:38:17', '2022-02-24 01:24:54', NULL),
(4, 'Univi company', '02 Quang Trung', 'univi@gmail.com', 988777888, '1999-08-02', '2022-02-16 02:21:03', '2022-02-24 01:24:31', NULL),
(7, 'FPT company', '02 Quang Trung', 'fpt@gmail.com', 936567666, '2000-07-02', '2022-02-20 20:20:02', '2022-02-23 23:55:52', NULL),
(8, 'Software company', '02 Quang Trung', 'software@gmail.com', 988234567, '2022-02-25', '2022-02-23 18:59:08', '2022-02-24 01:25:27', NULL),
(9, 'Fsoft company', '05 Nguyen Tat Thanh', 'fsoft@gmail.com', 977888999, '2022-02-08', '2022-02-26 23:20:22', '2022-02-26 23:21:19', NULL),
(10, 'Tech company', '02 Quang Khai', 'tech@gmail.com', 936567669, '2022-02-11', '2022-02-26 23:21:04', '2022-02-26 23:21:04', NULL),
(11, 'Da Nang software', '02 Quang Trung', 'danang@gmail.com', 936567669, '2022-03-10', '2022-03-09 20:32:06', '2022-03-09 21:42:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_mac` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version_win` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_virus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_win` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`id`, `ip_address`, `ip_mac`, `user_login`, `version_win`, `version_virus`, `update_win`, `member_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '192.168.5.128', '192...', 'unitek.hungpv', 'win 10', '8.0', '2022-03-05', 1, '2022-02-18 00:47:40', '2022-03-05 19:19:17', NULL),
(2, '192.168.5...', '199...', 'unitek.minhtn', 'win 11', '8.0', '2022-03-05', 2, '2022-02-18 00:49:00', '2022-03-05 19:19:33', NULL),
(3, '199,645,756', '56745', 'unitek\\cuong', '10', '8', '2022-03-23', 3, '2022-02-28 19:34:01', '2022-02-28 19:36:03', NULL),
(4, '12314', '12445', 'manh', '11', '10', '2022-03-18', 4, '2022-02-28 20:11:55', '2022-02-28 20:11:55', NULL),
(5, '123', '123123', 'tai 2', '11', '11', '2022-03-10', 8, '2022-03-10 20:59:51', '2022-03-10 21:01:28', NULL);

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
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passwork` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL,
  `work_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_join_company` date NOT NULL,
  `date_left_company` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `email`, `passwork`, `address`, `phone_number`, `work_position`, `date_join_company`, `date_left_company`, `created_at`, `updated_at`, `company_id`, `deleted_at`) VALUES
(1, 'Pham Viet Hung', 'hungpv@gmail.com', NULL, '02 Quang Trung', 988777999, 'Dev', '2022-02-14', NULL, '2022-02-16 19:36:49', '2022-02-16 20:01:43', 3, NULL),
(2, 'Tran Anh Minh', 'minh@unitech.vn', NULL, '02 Quang Trung', 988778899, 'Dev', '2022-01-14', NULL, '2022-02-16 20:00:26', '2022-02-16 20:00:26', 1, NULL),
(3, 'Cao Chi Cuong', 'cuong@gmail.com', NULL, '77 Quang Trung', 936567666, 'Dev', '2022-03-05', NULL, '2022-02-20 20:47:48', '2022-02-20 20:47:48', 4, NULL),
(4, 'Tran Nguyen Manh', 'manh@gmail.com', NULL, '07 Nguyen Luong Bang', 988777444, 'Dev', '2022-02-02', NULL, NULL, NULL, 8, NULL),
(5, 'Nguyen Duc', 'duc@gmail.com', NULL, '02 Quang Trung', 936567669, 'PM', '2022-02-08', NULL, '2022-02-26 21:00:35', '2022-03-10 01:46:51', 9, NULL),
(6, 'Cao Tuan Anh', 'caotuananh@gmail.com', NULL, '02 Quang Trung', 936567669, 'Dev', '2022-02-09', NULL, '2022-02-26 21:02:22', '2022-02-26 21:02:22', 8, NULL),
(7, 'Tran Ngoc Hai', 'tranngochai@gmail.com', NULL, '02 Dinh Tien Hoang', 936567669, 'Dev', '2022-02-15', NULL, '2022-02-26 21:03:25', '2022-02-26 21:03:25', 3, NULL),
(8, 'Cao  Anh Tai', 'tai@gmail.com', NULL, '05 Nguyen Huu Tho', 988666888, 'Dev', '2022-02-02', NULL, '2022-03-01 01:16:17', '2022-03-01 01:16:17', 1, NULL),
(9, 'Cao Hai Anh', 'anh@gmail.com', NULL, '02 Quang Trung', 936567669, 'Dev', '2022-03-10', NULL, '2022-03-10 01:33:35', '2022-03-10 01:45:54', 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member_project`
--

CREATE TABLE `member_project` (
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_member_join` date NOT NULL,
  `time_member_completed` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_project`
--

INSERT INTO `member_project` (`member_id`, `project_id`, `role`, `time_member_join`, `time_member_completed`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Dev', '2022-03-10', '2022-06-10', '2022-02-16 23:47:48', '2022-02-27 21:02:03', NULL),
(2, 2, 'BA', '2022-03-10', '2022-06-10', '2022-02-17 00:08:42', '2022-02-18 18:47:21', NULL),
(2, 5, 'PM', '2022-02-04', '2022-06-04', '2022-03-01 01:39:57', '2022-03-10 19:51:51', NULL),
(3, 3, 'Dev', '2022-03-10', '2022-06-10', '2022-02-16 23:49:07', '2022-02-27 21:10:15', NULL),
(3, 6, 'Dev', '2022-02-10', '2022-02-26', '2022-02-27 21:13:17', '2022-03-10 19:52:50', NULL),
(4, 1, 'PM', '2022-02-01', '2022-02-28', '2022-02-27 19:27:14', '2022-02-27 21:11:53', NULL),
(5, 6, 'PM', '2022-03-02', '2022-03-30', '2022-03-10 19:31:13', '2022-03-10 19:31:13', NULL),
(6, 1, 'Dev', '2022-02-02', '2022-02-26', '2022-02-27 21:14:21', '2022-02-27 21:14:21', NULL),
(6, 7, 'Dev', '2022-02-02', '2022-02-26', '2022-02-27 21:13:57', '2022-03-10 19:52:10', NULL);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_15_075732_create_company_table', 2),
(6, '2022_02_15_080400_create_work_room_table', 2),
(8, '2022_02_15_083623_create_member_table', 3),
(9, '2022_02_15_084516_create_project_table', 4),
(10, '2022_02_15_085314_create_member_project', 5),
(11, '2022_02_16_005702_create_training_table', 6),
(12, '2022_02_16_010425_create_training_room_table', 6),
(13, '2022_02_16_011509_create_device_table', 6),
(14, '2022_02_16_014443_create_carbinet_table', 6);

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
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_start` date NOT NULL,
  `time_completed` date NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `work_room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `time_start`, `time_completed`, `company_id`, `work_room_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sercurity project', '2022-02-10', '2022-06-10', 1, 1, '2022-02-16 21:55:24', '2022-02-27 18:12:34', NULL),
(2, 'Sale project', '2022-02-10', '2020-05-10', 7, 4, '2022-02-16 22:43:37', '2022-02-27 08:53:42', NULL),
(3, 'Github project', '2022-01-10', '2022-02-10', 10, 5, '2022-02-27 08:46:55', '2022-02-27 21:07:00', NULL),
(4, 'Gitlab project 2', '2022-02-01', '2022-02-28', 1, 1, '2022-02-27 18:12:11', '2022-03-10 19:36:59', NULL),
(5, 'App weather project', '2022-03-01', '2022-03-31', 1, 1, '2022-03-10 07:59:27', '2022-03-10 07:59:27', NULL),
(6, 'Google translate', '2022-03-02', '2022-03-30', 3, 4, '2022-03-10 08:01:20', '2022-03-10 08:01:20', NULL),
(7, 'Google', '2022-03-05', '2022-03-28', 7, 7, '2022-03-10 08:02:39', '2022-03-10 08:02:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trainer` bigint(20) UNSIGNED DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`id`, `trainer`, `project_id`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Learn laravel and git', '2022-02-17 02:34:29', '2022-03-10 20:21:30', NULL),
(2, 2, 2, 'Learn javascript', '2022-02-17 02:41:14', '2022-02-17 21:30:19', NULL),
(3, 6, 1, 'Learn node-js', '2022-02-17 21:14:57', '2022-02-28 00:29:03', '1'),
(4, 3, 3, 'Learn html', '2022-02-28 00:03:41', '2022-02-28 00:03:41', NULL),
(5, 4, 3, 'Learn git', '2022-02-28 00:10:48', '2022-02-28 00:10:48', NULL),
(6, 5, 7, 'Learn javascript', '2022-03-10 20:17:25', '2022-03-10 20:21:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `training_room`
--

CREATE TABLE `training_room` (
  `training_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `date_start` date NOT NULL,
  `date_completed` date NOT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_room`
--

INSERT INTO `training_room` (`training_id`, `member_id`, `date_start`, `date_completed`, `result`, `note`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, '2022-02-01', '2022-02-15', 'ok', 'hi', '2022-02-28 07:23:07', '2022-03-07 00:06:42', NULL),
(2, 1, '2021-02-04', '2022-04-14', 'fine', 'ok', '2022-02-17 23:33:02', '2022-03-11 01:35:12', NULL),
(2, 4, '2022-02-01', '2022-02-15', 'ha', 'ha', '2022-02-28 07:13:39', '2022-02-28 08:56:42', NULL),
(3, 3, '2022-02-01', '2022-02-10', 'ok', 'ok', '2022-02-28 07:34:59', '2022-02-28 07:34:59', NULL),
(3, 4, '2022-03-01', '2022-03-10', 'ok', 'ok', '2022-03-11 01:30:17', '2022-03-11 01:30:17', NULL),
(3, 6, '2022-02-01', '2022-02-10', 'ok', 'ok', '2022-02-17 23:34:20', '2022-03-11 01:35:23', NULL),
(4, 7, '2022-02-02', '2022-02-16', 'Training ok', 'ok ok!', '2022-02-28 07:16:28', '2022-02-28 07:16:28', NULL);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_room`
--

CREATE TABLE `work_room` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_room`
--

INSERT INTO `work_room` (`id`, `name`, `location`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '07th Floor - Dang Nang Software Park', '02 Quang Trung St', '2022-02-15 23:51:32', '2022-03-02 23:59:31', NULL),
(3, '10th Floor', '02 Quang Trung St', '2022-02-16 02:10:52', '2022-03-03 00:01:18', NULL),
(4, '02th Floor', '02 Nguyen Van Linh St', '2022-02-16 19:02:03', '2022-03-03 00:01:25', NULL),
(5, '05th Floor', '07 Nguyen Huu Tho St', '2022-02-25 02:14:30', '2022-03-03 00:01:31', NULL),
(6, '08th Floor', '09 Phan Thanh St', '2022-03-10 00:03:09', '2022-03-10 00:10:54', NULL),
(7, '03th Floor', '09 Tran Phu St...', '2022-03-10 00:06:32', '2022-03-10 00:12:31', NULL),
(8, '15th Floor', '77 Vo Nguyen Giap', '2022-03-10 00:13:20', '2022-03-10 00:13:20', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carbinet`
--
ALTER TABLE `carbinet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carbinet_work_room_id_foreign` (`work_room_id`),
  ADD KEY `carbinet_member_id_foreign` (`member_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_member_id_foreign` (`member_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_company_id_foreign` (`company_id`);

--
-- Indexes for table `member_project`
--
ALTER TABLE `member_project`
  ADD PRIMARY KEY (`member_id`,`project_id`),
  ADD KEY `member_project_project_id_foreign` (`project_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_company_id_foreign` (`company_id`),
  ADD KEY `project_work_room_id_foreign` (`work_room_id`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id`),
  ADD KEY `training_trainer_foreign` (`trainer`),
  ADD KEY `training_project_id_foreign` (`project_id`);

--
-- Indexes for table `training_room`
--
ALTER TABLE `training_room`
  ADD PRIMARY KEY (`training_id`,`member_id`),
  ADD KEY `training_room_member_id_foreign` (`member_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `work_room`
--
ALTER TABLE `work_room`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carbinet`
--
ALTER TABLE `carbinet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_room`
--
ALTER TABLE `work_room`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carbinet`
--
ALTER TABLE `carbinet`
  ADD CONSTRAINT `carbinet_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `carbinet_work_room_id_foreign` FOREIGN KEY (`work_room_id`) REFERENCES `work_room` (`id`);

--
-- Constraints for table `device`
--
ALTER TABLE `device`
  ADD CONSTRAINT `device_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

--
-- Constraints for table `member_project`
--
ALTER TABLE `member_project`
  ADD CONSTRAINT `member_project_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `member_project_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  ADD CONSTRAINT `project_work_room_id_foreign` FOREIGN KEY (`work_room_id`) REFERENCES `work_room` (`id`);

--
-- Constraints for table `training`
--
ALTER TABLE `training`
  ADD CONSTRAINT `training_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `training_trainer_foreign` FOREIGN KEY (`trainer`) REFERENCES `member` (`id`);

--
-- Constraints for table `training_room`
--
ALTER TABLE `training_room`
  ADD CONSTRAINT `training_room_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `training_room_training_id_foreign` FOREIGN KEY (`training_id`) REFERENCES `training` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
