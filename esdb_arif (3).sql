-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2020 at 08:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esdb_asghar`
--

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `parent_id`) VALUES
(2, 'Allow Order', 'web', NULL, '2020-07-17 06:20:11', 0),
(3, 'Allow Area', 'web', NULL, '2020-07-17 06:20:27', 0),
(4, 'Allow Expense', 'web', NULL, '2020-07-17 06:20:45', 0),
(5, 'Allow Customer', 'web', NULL, '2020-07-17 06:20:58', 0),
(6, 'Allow Salesman', 'web', NULL, '2020-07-17 06:21:15', 0),
(7, 'Allow Visit', 'web', NULL, '2020-07-17 06:21:28', 0),
(8, 'Allow Settings', 'web', NULL, '2020-07-17 06:21:44', 0),
(9, 'Roles', 'web', NULL, '2020-07-17 06:09:10', 0),
(10, 'create_product', 'web', '2020-07-17 05:38:54', '2020-07-20 00:14:46', 11),
(11, 'manage_product', 'web', '2020-07-17 06:35:56', '2020-07-17 06:35:56', 24),
(12, 'manage_size_group', 'web', '2020-07-17 06:36:33', '2020-07-20 00:24:06', 24),
(13, 'manage_size', 'web', '2020-07-17 06:36:58', '2020-07-21 01:59:06', 24),
(14, 'manage_uom', 'web', '2020-07-17 06:37:21', '2020-07-20 08:11:08', 24),
(15, 'manage_flavor', 'web', '2020-07-17 06:37:42', '2020-07-21 00:13:26', 24),
(16, 'manage_brand', 'web', '2020-07-17 06:38:23', '2020-07-20 07:23:35', 24),
(17, 'manage_catalog', 'web', '2020-07-17 06:38:48', '2020-07-20 08:04:59', 24),
(18, 'manage_colors', 'web', '2020-07-17 06:39:11', '2020-07-21 02:12:43', 24),
(19, 'manage_promotion', 'web', '2020-07-17 06:39:29', '2020-07-20 08:08:28', 24),
(20, 'create_size_group', 'web', '2020-07-20 00:25:59', '2020-07-20 00:25:59', 12),
(21, 'create_size', 'web', '2020-07-20 00:29:26', '2020-07-20 00:29:26', 13),
(24, 'Allow Product', 'web', '2020-07-20 00:53:40', '2020-07-20 00:53:40', 0),
(25, 'update_product', 'web', '2020-07-20 01:18:14', '2020-07-20 01:18:14', 11),
(26, 'remove_product', 'web', '2020-07-20 01:18:32', '2020-07-20 01:18:32', 11),
(27, 'view_product', 'web', '2020-07-20 01:19:27', '2020-07-20 01:19:27', 11),
(28, 'update_size_group', 'web', '2020-07-20 01:25:58', '2020-07-20 01:25:58', 12),
(29, 'remove_size_group', 'web', '2020-07-20 01:26:14', '2020-07-20 01:26:14', 12),
(30, 'update_size', 'web', '2020-07-20 01:27:45', '2020-07-20 01:27:45', 13),
(31, 'remove_size', 'web', '2020-07-20 01:28:00', '2020-07-20 01:28:00', 13),
(32, 'create_uom', 'web', '2020-07-20 01:30:04', '2020-07-20 08:12:59', 14),
(33, 'update_uom', 'web', '2020-07-20 01:30:17', '2020-07-20 08:13:06', 14),
(34, 'remove_uom', 'web', '2020-07-20 01:30:31', '2020-07-20 08:13:12', 14),
(35, 'create_flavor', 'web', '2020-07-20 01:32:22', '2020-07-21 00:12:27', 15),
(36, 'update_flavor', 'web', '2020-07-20 01:32:37', '2020-07-21 00:12:20', 15),
(37, 'remove_flavor', 'web', '2020-07-20 01:32:52', '2020-07-21 00:11:32', 15),
(39, 'update_brand', 'web', '2020-07-20 01:33:36', '2020-07-20 07:17:30', 16),
(40, 'remove_brand', 'web', '2020-07-20 01:33:50', '2020-07-20 08:01:54', 16),
(41, 'create_catalog', 'web', '2020-07-20 01:34:50', '2020-07-20 08:05:26', 17),
(42, 'update_catalog', 'web', '2020-07-20 01:35:05', '2020-07-20 08:05:45', 17),
(43, 'remove_catalog', 'web', '2020-07-20 01:35:19', '2020-07-20 08:06:01', 17),
(44, 'create_colors', 'web', '2020-07-20 01:36:08', '2020-07-21 02:11:48', 18),
(45, 'update_colors', 'web', '2020-07-20 01:36:22', '2020-07-21 02:11:52', 18),
(46, 'remove_colors', 'web', '2020-07-20 01:36:34', '2020-07-21 02:11:57', 18),
(47, 'create_promotion', 'web', '2020-07-20 01:37:14', '2020-07-20 08:08:49', 19),
(48, 'update_promotion', 'web', '2020-07-20 01:37:31', '2020-07-20 08:09:05', 19),
(49, 'remove_promotion', 'web', '2020-07-20 01:37:46', '2020-07-20 08:09:21', 19),
(50, 'manage_order', 'web', '2020-07-20 01:54:11', '2020-07-20 01:54:11', 2),
(51, 'create_order', 'web', '2020-07-20 01:56:13', '2020-07-20 01:56:13', 50),
(52, 'update_order', 'web', '2020-07-20 01:58:21', '2020-07-20 01:58:21', 50),
(53, 'remove_order', 'web', '2020-07-20 01:58:44', '2020-07-20 01:58:44', 50),
(54, 'manage_area', 'web', '2020-07-20 02:00:57', '2020-07-20 02:00:57', 3),
(55, 'create_area', 'web', '2020-07-20 02:02:18', '2020-07-20 02:02:18', 54),
(56, 'update_area', 'web', '2020-07-20 02:02:36', '2020-07-20 02:02:36', 54),
(57, 'remove_area', 'web', '2020-07-20 02:02:56', '2020-07-20 02:02:56', 54),
(58, 'manage_area_manager', 'web', '2020-07-20 02:40:05', '2020-07-20 02:40:05', 3),
(59, 'manage_country', 'web', '2020-07-20 02:40:24', '2020-07-20 02:40:24', 3),
(60, 'manage_city', 'web', '2020-07-20 02:40:37', '2020-07-20 02:40:37', 3),
(61, 'manage_route', 'web', '2020-07-20 02:40:55', '2020-07-20 02:40:55', 3),
(62, 'create_area_manager', 'web', '2020-07-20 02:42:22', '2020-07-20 02:42:22', 58),
(63, 'update_area_manager', 'web', '2020-07-20 02:42:40', '2020-07-20 02:42:40', 58),
(64, 'remove_area_manager', 'web', '2020-07-20 02:43:11', '2020-07-20 02:43:11', 58),
(65, 'create_country', 'web', '2020-07-20 02:45:21', '2020-07-20 02:45:21', 59),
(66, 'update_country', 'web', '2020-07-20 02:45:39', '2020-07-20 02:45:39', 59),
(67, 'remove_country', 'web', '2020-07-20 02:45:58', '2020-07-20 02:45:58', 59),
(68, 'create_city', 'web', '2020-07-20 02:47:20', '2020-07-20 02:47:20', 60),
(69, 'update_city', 'web', '2020-07-20 02:47:38', '2020-07-20 02:47:38', 60),
(70, 'remove_city', 'web', '2020-07-20 02:47:57', '2020-07-20 02:47:57', 60),
(71, 'create_route', 'web', '2020-07-20 02:49:19', '2020-07-20 02:49:19', 61),
(72, 'update_route', 'web', '2020-07-20 02:49:38', '2020-07-20 02:49:38', 61),
(73, 'remove_route', 'web', '2020-07-20 02:49:58', '2020-07-20 02:49:58', 61),
(74, 'manage_expense', 'web', '2020-07-20 02:54:34', '2020-07-20 02:54:34', 4),
(75, 'manage_expense_type', 'web', '2020-07-20 02:55:04', '2020-07-20 02:55:04', 4),
(76, 'manage_customer', 'web', '2020-07-20 02:56:29', '2020-07-20 02:56:29', 5),
(77, 'manage_customer_group', 'web', '2020-07-20 02:56:51', '2020-07-20 02:56:51', 5),
(78, 'manage_salesman', 'web', '2020-07-20 02:57:26', '2020-07-21 07:19:16', 6),
(79, 'manage_salesman_vs_route', 'web', '2020-07-20 02:58:03', '2020-07-20 02:58:03', 6),
(80, 'manage_salesman_vs_product', 'web', '2020-07-20 02:58:30', '2020-07-20 02:58:30', 6),
(81, 'manage_route_vs_product', 'web', '2020-07-20 02:59:22', '2020-07-20 02:59:22', 6),
(82, 'manage_visit', 'web', '2020-07-20 03:00:53', '2020-07-20 03:00:53', 7),
(83, 'manage_visit_type', 'web', '2020-07-20 03:01:16', '2020-07-20 03:01:16', 7),
(84, 'create_expense', 'web', '2020-07-20 03:03:12', '2020-07-20 03:03:12', 74),
(85, 'update_expense', 'web', '2020-07-20 03:03:32', '2020-07-20 03:03:32', 74),
(86, 'remove_expense', 'web', '2020-07-20 03:03:48', '2020-07-20 03:03:48', 74),
(87, 'create_expense_type', 'web', '2020-07-20 03:04:18', '2020-07-20 03:04:18', 75),
(88, 'update_expense_type', 'web', '2020-07-20 03:04:36', '2020-07-20 03:04:36', 75),
(89, 'remove_expense_type', 'web', '2020-07-20 03:04:55', '2020-07-20 03:04:55', 75),
(90, 'create_customer', 'web', '2020-07-20 04:07:49', '2020-07-20 04:07:49', 76),
(91, 'update_customer', 'web', '2020-07-20 04:08:13', '2020-07-20 04:08:13', 76),
(92, 'remove_customer', 'web', '2020-07-20 04:08:30', '2020-07-20 04:08:30', 76),
(93, 'create_customer_group', 'web', '2020-07-20 04:08:59', '2020-07-20 04:08:59', 77),
(94, 'update_customer_group', 'web', '2020-07-20 04:09:16', '2020-07-20 04:09:16', 77),
(95, 'remove_customer_group', 'web', '2020-07-20 04:09:33', '2020-07-20 04:09:33', 77),
(97, 'view_customer', 'web', '2020-07-20 04:10:50', '2020-07-20 04:10:50', 76),
(98, 'create_salesman', 'web', '2020-07-20 04:12:02', '2020-07-21 05:09:02', 78),
(99, 'update_sales_man', 'web', '2020-07-20 04:12:19', '2020-07-22 00:03:45', 78),
(100, 'remove_sales_man', 'web', '2020-07-20 04:12:38', '2020-07-22 00:06:28', 78),
(101, 'create_salesman_vs_route', 'web', '2020-07-20 04:13:14', '2020-07-20 04:13:14', 79),
(102, 'update_salesman_vs_route', 'web', '2020-07-20 04:13:31', '2020-07-20 04:13:31', 79),
(103, 'remove_salesman_vs_route', 'web', '2020-07-20 04:13:47', '2020-07-20 04:13:47', 79),
(104, 'create_salesman_vs_product', 'web', '2020-07-20 04:14:24', '2020-07-20 04:14:24', 80),
(105, 'update_salesman_vs_product', 'web', '2020-07-20 04:14:44', '2020-07-20 04:14:44', 80),
(106, 'remove_salesman_vs_product', 'web', '2020-07-20 04:15:44', '2020-07-20 04:15:44', 80),
(107, 'create_route_vs_product', 'web', '2020-07-20 04:16:20', '2020-07-20 04:16:20', 81),
(108, 'update_route_vs_product', 'web', '2020-07-20 04:16:42', '2020-07-20 04:16:42', 81),
(109, 'remove_route_vs_product', 'web', '2020-07-20 04:16:58', '2020-07-20 04:16:58', 81),
(110, 'create_visit', 'web', '2020-07-20 04:18:09', '2020-07-20 04:18:09', 82),
(111, 'update_visit', 'web', '2020-07-20 04:18:27', '2020-07-20 04:18:27', 82),
(112, 'remove_visit', 'web', '2020-07-20 04:18:45', '2020-07-20 04:18:45', 82),
(113, 'view_visit', 'web', '2020-07-20 04:19:02', '2020-07-20 04:19:02', 82),
(114, 'create_visit_type', 'web', '2020-07-20 04:19:31', '2020-07-20 04:19:31', 83),
(115, 'update_visit_type', 'web', '2020-07-20 04:19:48', '2020-07-20 04:19:48', 83),
(116, 'remove_visit_type', 'web', '2020-07-20 04:20:13', '2020-07-20 04:20:13', 83),
(118, 'create_brand', 'web', '2020-07-20 07:29:06', '2020-07-20 07:29:06', 16),
(119, 'view_sales_man', 'web', '2020-07-21 02:58:53', '2020-07-22 00:06:53', 78),
(120, 'manage_role', 'web', '2020-07-21 05:28:01', '2020-07-21 05:28:01', 8),
(121, 'create_role', 'web', '2020-07-21 05:28:48', '2020-07-21 05:28:48', 120),
(122, 'update_role', 'web', '2020-07-21 05:29:03', '2020-07-21 05:29:03', 120),
(123, 'remove_role', 'web', '2020-07-21 05:29:18', '2020-07-21 05:29:18', 120),
(124, 'manage_permission', 'web', '2020-07-21 05:38:41', '2020-07-21 05:38:41', 8),
(125, 'create_permission', 'web', '2020-07-21 05:39:18', '2020-07-21 05:39:18', 124),
(126, 'update_permission', 'web', '2020-07-21 05:39:32', '2020-07-21 05:39:32', 124),
(127, 'remove_permission', 'web', '2020-07-21 05:39:48', '2020-07-21 05:39:48', 124),
(128, 'manage_user', 'web', '2020-07-21 05:46:55', '2020-07-21 05:46:55', 8),
(129, 'create_user', 'web', '2020-07-21 05:47:26', '2020-07-21 05:47:26', 128),
(130, 'update_user', 'web', '2020-07-21 05:47:42', '2020-07-21 05:47:42', 128),
(131, 'remove_user', 'web', '2020-07-21 05:48:02', '2020-07-21 05:48:02', 128),
(132, 'manage_additional_charges', 'web', '2020-07-21 05:57:31', '2020-07-21 05:57:31', 8),
(133, 'create_additional_charges', 'web', '2020-07-21 05:58:44', '2020-07-21 05:58:44', 132),
(134, 'update_additional_charges', 'web', '2020-07-21 05:59:02', '2020-07-21 05:59:02', 132),
(135, 'remove_additional_charges', 'web', '2020-07-21 05:59:17', '2020-07-21 05:59:17', 132),
(136, 'manage_notes_type', 'web', '2020-07-21 06:06:28', '2020-07-21 06:06:28', 8),
(137, 'create_notes_type', 'web', '2020-07-21 06:07:25', '2020-07-21 06:07:25', 136),
(138, 'update_notes_type', 'web', '2020-07-21 06:07:42', '2020-07-21 06:07:42', 136),
(139, 'remove_notes_type', 'web', '2020-07-21 06:10:09', '2020-07-21 06:10:09', 136),
(140, 'manage_payment_term', 'web', '2020-07-21 06:18:55', '2020-07-21 06:18:55', 8),
(141, 'create_payment_term', 'web', '2020-07-21 06:19:34', '2020-07-21 06:19:34', 140),
(142, 'update_payment_term', 'web', '2020-07-21 06:19:52', '2020-07-21 06:19:52', 140),
(143, 'remove_payment_term', 'web', '2020-07-21 06:20:21', '2020-07-21 06:20:21', 140),
(144, 'manage_price_list', 'web', '2020-07-21 06:27:21', '2020-07-21 06:27:21', 8),
(145, 'create_price_list', 'web', '2020-07-21 06:28:08', '2020-07-21 06:28:08', 144),
(146, 'update_price_list', 'web', '2020-07-21 06:28:27', '2020-07-21 06:28:27', 144),
(147, 'remove_price_list', 'web', '2020-07-21 06:28:45', '2020-07-21 06:28:45', 144),
(148, 'manage_activity_log', 'web', '2020-07-21 06:50:40', '2020-07-21 06:50:40', 8),
(150, 'create_activity_log', 'web', '2020-07-21 06:51:27', '2020-07-21 06:51:27', 148),
(151, 'update_activity_log', 'web', '2020-07-21 06:51:49', '2020-07-21 06:51:49', 148),
(152, 'remove_activity_log', 'web', '2020-07-21 06:52:06', '2020-07-21 06:52:06', 148);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', NULL, NULL),
(2, 'Salesman', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 2),
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
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(150, 1),
(151, 1),
(152, 1);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
