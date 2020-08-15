-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2020 at 01:45 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodomaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `accept_deliveries`
--

CREATE TABLE `accept_deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accept_deliveries`
--

INSERT INTO `accept_deliveries` (`id`, `order_id`, `user_id`, `customer_id`, `is_complete`, `created_at`, `updated_at`) VALUES
(1, 3, 40, 39, 0, '2020-08-10 15:28:41', '2020-08-10 15:28:41'),
(2, 5, 41, 39, 0, '2020-08-10 15:38:30', '2020-08-10 15:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `addon_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addon_categories`
--

CREATE TABLE `addon_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_categories`
--

INSERT INTO `addon_categories` (`id`, `name`, `type`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Add on', 'SINGLE', 1, '2020-08-09 14:56:04', '2020-08-09 14:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `addon_category_item`
--

CREATE TABLE `addon_category_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `addon_category_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `house`, `landmark`, `tag`, `created_at`, `updated_at`, `latitude`, `longitude`) VALUES
(1, 6, 'Mwihoko Rd, Githurai, Kenya', NULL, NULL, NULL, '2020-08-04 15:15:49', '2020-08-04 15:15:49', '-1.2058624', '36.9197056'),
(2, 6, 'Mwihoko Rd, Githurai, Kenya', NULL, NULL, NULL, '2020-08-04 15:20:29', '2020-08-04 15:20:29', '-1.2058828', '36.9197484'),
(3, 1, 'Kikuyu - Nderi Road, Kikuyu, Kenya', NULL, NULL, NULL, '2020-08-07 01:36:43', '2020-08-07 01:36:43', '-1.2433969', '36.6633494'),
(4, 1, 'Githurai, Githurai, Kenya', NULL, NULL, NULL, '2020-08-07 01:37:43', '2020-08-07 01:37:43', '-1.2046572', '36.9168435'),
(5, 39, 'Githurai, Githurai, Kenya', NULL, NULL, NULL, '2020-08-09 23:07:11', '2020-08-09 23:07:11', '-1.2046572', '36.9168435'),
(6, 39, 'Githurai, Githurai, Kenya', NULL, NULL, NULL, '2020-08-10 00:15:02', '2020-08-10 00:15:02', '-1.2046572', '36.9168435'),
(7, 39, 'Githurai, Githurai, Kenya', NULL, NULL, NULL, '2020-08-10 06:49:11', '2020-08-10 06:49:11', '-1.2046572', '36.9168435'),
(8, 40, 'Githurai, Githurai, Kenya', NULL, NULL, NULL, '2020-08-10 15:29:58', '2020-08-10 15:29:58', '-1.2046572', '36.9168435'),
(9, 41, 'Githurai, Githurai, Kenya', NULL, NULL, NULL, '2020-08-10 15:39:43', '2020-08-10 15:39:43', '-1.2046572', '36.9168435');

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `max_count` int(11) NOT NULL DEFAULT 1,
  `min_subtotal` decimal(20,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(20,2) DEFAULT NULL,
  `subtotal_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_collections`
--

CREATE TABLE `delivery_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_collection_logs`
--

CREATE TABLE `delivery_collection_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `delivery_collection_id` int(11) NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_guy_details`
--

CREATE TABLE `delivery_guy_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_rate` decimal(8,2) NOT NULL DEFAULT 5.00,
  `is_notifiable` tinyint(1) DEFAULT 0,
  `max_accept_delivery_limit` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_guy_details`
--

INSERT INTO `delivery_guy_details` (`id`, `name`, `age`, `gender`, `photo`, `description`, `vehicle_number`, `created_at`, `updated_at`, `commission_rate`, `is_notifiable`, `max_accept_delivery_limit`) VALUES
(1, 'Mark', '20', NULL, NULL, NULL, NULL, '2020-08-10 15:27:18', '2020-08-10 15:27:18', '5.00', 0, 100),
(2, 'Wakanai', '20', NULL, NULL, NULL, 'KCX 445X', '2020-08-10 15:36:05', '2020-08-10 15:36:05', '5.00', 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `gps_tables`
--

CREATE TABLE `gps_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_long` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_long` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gps_tables`
--

INSERT INTO `gps_tables` (`id`, `order_id`, `user_lat`, `user_long`, `delivery_lat`, `delivery_long`, `created_at`, `updated_at`, `heading`) VALUES
(1, 1, NULL, NULL, NULL, NULL, '2020-08-04 18:08:13', '2020-08-04 18:08:13', NULL),
(2, 2, NULL, NULL, NULL, NULL, '2020-08-10 15:22:13', '2020-08-10 15:22:13', NULL),
(3, 3, NULL, NULL, NULL, NULL, '2020-08-10 15:28:26', '2020-08-10 15:28:26', NULL),
(4, 4, NULL, NULL, NULL, NULL, '2020-08-10 15:36:55', '2020-08-10 15:36:55', NULL),
(5, 5, NULL, NULL, NULL, NULL, '2020-08-10 15:38:15', '2020-08-10 15:38:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `price` decimal(20,2) NOT NULL,
  `old_price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `is_recommended` tinyint(1) NOT NULL,
  `is_popular` tinyint(1) NOT NULL,
  `is_new` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_veg` tinyint(1) DEFAULT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `restaurant_id`, `price`, `old_price`, `is_recommended`, `is_popular`, `is_new`, `created_at`, `updated_at`, `is_active`, `is_veg`, `item_id`) VALUES
(3, 1, '250.00', '0.00', 1, 1, 1, '2020-08-10 14:24:19', '2020-08-10 14:24:19', 1, 0, 2226);

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `name`, `is_enabled`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Beer', 1, '2020-08-04 15:22:39', '2020-08-04 15:22:39', 39),
(2, 'Brandy', 1, '2020-08-09 16:46:44', '2020-08-09 16:46:44', 39),
(3, 'Champagne', 1, '2020-08-09 16:47:18', '2020-08-09 16:47:18', 39),
(4, 'Cognac', 1, '2020-08-09 16:58:42', '2020-08-09 16:58:42', 39),
(5, 'Condoms', 1, '2020-08-09 16:58:43', '2020-08-09 16:58:43', 39),
(6, 'Mixers', 1, '2020-08-09 16:58:43', '2020-08-09 16:58:43', 39),
(7, 'Gift Package', 1, '2020-08-09 16:58:43', '2020-08-09 16:58:43', 39),
(8, 'Gin', 1, '2020-08-09 16:58:43', '2020-08-09 16:58:43', 39),
(9, 'Liqueur & Cream', 1, '2020-08-09 16:58:46', '2020-08-09 16:58:46', 39),
(10, 'Rum', 1, '2020-08-09 16:58:49', '2020-08-09 16:58:49', 39),
(11, 'Taquila', 1, '2020-08-09 16:58:51', '2020-08-09 16:58:51', 39),
(12, 'Whisky', 1, '2020-08-09 16:58:54', '2020-08-09 16:58:54', 39),
(13, 'Wine', 1, '2020-08-09 16:59:08', '2020-08-09 16:59:08', 39),
(14, 'Vodka', 1, '2020-08-09 16:59:21', '2020-08-09 16:59:21', 39);

-- --------------------------------------------------------

--
-- Table structure for table `item_sub_categories`
--

CREATE TABLE `item_sub_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_06_222923_create_transactions_table', 1),
(4, '2018_11_07_192923_create_transfers_table', 1),
(5, '2018_11_07_202152_update_transfers_table', 1),
(6, '2018_11_15_124230_create_wallets_table', 1),
(7, '2018_11_19_164609_update_transactions_table', 1),
(8, '2018_11_20_133759_add_fee_transfers_table', 1),
(9, '2018_11_22_131953_add_status_transfers_table', 1),
(10, '2018_11_22_133438_drop_refund_transfers_table', 1),
(11, '2019_01_19_062844_create_settings_table', 1),
(12, '2019_01_19_132750_create_locations_table', 1),
(13, '2019_01_21_055516_create_promo_sliders_table', 1),
(14, '2019_01_21_073753_create_restaurants_table', 1),
(15, '2019_01_22_045205_add_slug_to_restaurants_table', 1),
(16, '2019_01_26_103144_create_items_table', 1),
(17, '2019_01_26_103412_create_item_categories_table', 1),
(18, '2019_02_01_095905_add_extras_to_items_table', 1),
(19, '2019_02_01_103027_add_placeholder_image_to_restaurants_table', 1),
(20, '2019_02_02_032957_add_lat_long_to_restaurants_table', 1),
(21, '2019_02_02_033139_add_certificate_to_restaurants_table', 1),
(22, '2019_02_08_061116_add_restaurant_charges_to_restaurants_table', 1),
(23, '2019_02_08_101537_create_coupons_table', 1),
(24, '2019_02_16_042718_add_auth_token_to_users_table', 1),
(25, '2019_02_17_031843_add_phobe_number_to_users_table', 1),
(26, '2019_02_18_054807_create_pages_table', 1),
(27, '2019_02_19_084731_create_orders_table', 1),
(28, '2019_02_19_084930_create_orderstatuses_table', 1),
(29, '2019_02_19_085232_create_orderitems_table', 1),
(30, '2019_02_20_044738_create_addresses_table', 1),
(31, '2019_02_20_104553_add_default_address_id_to_users_table', 1),
(32, '2019_02_25_051228_add_payment_mode_to_orders_table', 1),
(33, '2019_02_28_053038_add_order_comment_to_orders_table', 1),
(34, '2019_05_13_111553_update_status_transfers_table', 1),
(35, '2019_05_21_074923_create_permission_tables', 1),
(36, '2019_06_25_103755_add_exchange_status_transfers_table', 1),
(37, '2019_07_09_054236_create_payment_gateways_table', 1),
(38, '2019_07_11_054103_create_user_restaurant_table', 1),
(39, '2019_07_11_135603_add_restaurant_id_to_orders_table', 1),
(40, '2019_07_13_054323_add_delivery_pin_to_users_table', 1),
(41, '2019_07_13_135125_create_gps_tables_table', 1),
(42, '2019_07_15_053733_create_accept_deliveries_table', 1),
(43, '2019_07_16_062435_add_address_pincode_landmark_to_restaurants_table', 1),
(44, '2019_07_23_030953_create_slides_table', 1),
(45, '2019_07_24_031824_add_sku_to_restaurants_table', 1),
(46, '2019_07_29_184926_decimal_places_wallets_table', 1),
(47, '2019_07_31_032042_add_is_active_to_restaurants_table', 1),
(48, '2019_08_11_172547_add_transaction_id_to_orders_table', 1),
(49, '2019_08_13_130103_add_is_accepted_to_restaurants_table', 1),
(50, '2019_08_13_140046_add_is_active_to_items_table', 1),
(51, '2019_08_14_093404_add_restaurant_id_to_coupons_table', 1),
(52, '2019_08_14_112249_add_count_to_coupons_table', 1),
(53, '2019_08_16_105252_create_push_tokens_table', 1),
(54, '2019_08_18_102353_add_is_featured_to_restaurants_table', 1),
(55, '2019_08_20_084106_add_user_id_to_itemcategories_table', 1),
(56, '2019_08_24_182445_add_location_id_to_promo_sliders_table', 1),
(57, '2019_09_15_044915_create_addons_table', 1),
(58, '2019_09_18_234250_create_addon_categories_table', 1),
(59, '2019_09_19_000319_create_addon_category_item_table', 1),
(60, '2019_09_20_054300_create_order_item_addons_table', 1),
(61, '2019_09_23_225754_create_restaurant_earnings_table', 1),
(62, '2019_09_25_005540_add_commission_rate_to_restaurants_table', 1),
(63, '2019_09_25_014138_create_restaurant_payouts_table', 1),
(64, '2019_09_25_025705_add_restaurant_payout_id_to_restaurant_earnings_table', 1),
(65, '2019_10_02_193759_add_discount_transfers_table', 1),
(66, '2019_11_06_232008_add_delivery_type_to_restaurants_table', 1),
(67, '2019_11_07_050958_add_delivery_type_to_orders_table', 1),
(68, '2019_11_08_022754_create_delivery_guy_details_table', 1),
(69, '2019_11_08_023100_add_delivery_guy_detail_id_to_users_table', 1),
(70, '2019_11_17_223225_add_nullable_constraint_to_pincode_landmark_in_restaurants_table', 1),
(71, '2019_11_20_042206_add_payable_to_orders_table', 1),
(72, '2019_11_28_052028_add_delivery_radius_to_restaurants_table', 1),
(73, '2019_12_02_015709_add_lat_lng_to_addresses_table', 1),
(74, '2019_12_05_223129_add_gps_delivery_charges_fields_to_restaurants_table', 1),
(75, '2019_12_09_000038_create_popular_geo_places_table', 1),
(76, '2019_12_13_043245_add_postion_id_and_size_to_promo_sliders_table', 1),
(77, '2019_12_15_223236_add_long_text_constrait_for_body_to_pages_table', 1),
(78, '2019_12_18_002035_create_translations_table', 1),
(79, '2019_12_18_011559_add_default_language_and_is_active_to_translations_table', 1),
(80, '2019_12_19_221313_change_desc_contraints_to_items_table', 1),
(81, '2019_12_20_061211_add_commission_rate_to_delivery_guy_details_table', 1),
(82, '2019_12_29_063818_create_modules_table', 1),
(83, '2019_12_29_233803_create_ratings_table', 1),
(84, '2019_12_30_235034_change_price_constraints_on_every_table_increase_limit', 1),
(85, '2020_01_05_223346_create_delivery_collections_table', 1),
(86, '2020_01_05_223712_create_delivery_collection_logs_table', 1),
(87, '2020_01_06_005737_create_restaurant_categories_table', 1),
(88, '2020_01_06_012659_create_restaurant_category_restaurant_table', 1),
(89, '2020_01_06_024126_create_restaurant_category_sliders_table', 1),
(90, '2020_01_12_225036_create_password_reset_otps_table', 1),
(91, '2020_01_26_055400_change_constraints_of_location_in_orders_table', 1),
(92, '2020_01_28_075230_add_short_name_and_code_to_modules_table', 1),
(93, '2020_02_03_223654_add_old_price_to_items_table', 1),
(94, '2020_02_07_003016_add_is_veg_to_items_table', 1),
(95, '2020_02_14_014122_add_heading_column_to_gps_tables', 1),
(96, '2020_03_13_234146_change_address_constraints_on_addresses_table', 1),
(97, '2020_03_31_001623_add_min_order_price_to_restaurants_table', 1),
(98, '2020_04_01_011619_create_alerts_table', 1),
(99, '2020_04_09_125640_create_sms_otps_table', 1),
(100, '2020_04_09_125652_create_sms_gateways_table', 1),
(101, '2020_04_15_120225_change_restaurant_owner_role_to_store_owner', 1),
(102, '2020_04_15_184850_change_order_id_constraints_in_accept_deliveries_table', 1),
(103, '2020_04_17_140857_add_is_sms_notifiable_to_restaurants_table', 1),
(104, '2020_04_17_141115_add_is_sms_notifiable_to_delivery_guy_details_table', 1),
(105, '2020_04_19_113902_add_auto_acceptable_to_restaurants_table', 1),
(106, '2020_04_21_132439_add_max_accept_delivery_limit_to_delivery_guy_details_table', 1),
(107, '2020_04_25_161840_add_is_active_to_addons_table', 1),
(108, '2020_05_06_123402_change_columns_datatypes_for_many_tables', 1),
(109, '2020_05_06_125302_add_schedule_data_to_restaurants_table', 1),
(110, '2020_05_06_125339_add_is_schedulable_to_restaurants_table', 1),
(111, '2020_06_10_231926_add_sort_position_to_slides_table', 1),
(112, '2020_06_11_100217_add_order_column_to_restaurant_category_sliders_table', 1),
(113, '2020_06_11_170707_add_order_column_to_restaurants_table', 1),
(114, '2020_06_20_102953_add_avatar_to_users_table', 1),
(115, '2020_06_29_120302_add_min_max_to_coupons_table', 1),
(116, '2020_07_12_104136_make_slug_unique_in_restaurants_table', 1),
(117, '2020_07_20_092301_add_is_active_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 40),
(2, 'App\\User', 41),
(3, 'App\\User', 7),
(3, 'App\\User', 8),
(3, 'App\\User', 9),
(3, 'App\\User', 10),
(3, 'App\\User', 11),
(3, 'App\\User', 12),
(3, 'App\\User', 13),
(3, 'App\\User', 14),
(3, 'App\\User', 15),
(3, 'App\\User', 16),
(3, 'App\\User', 17),
(3, 'App\\User', 18),
(3, 'App\\User', 19),
(3, 'App\\User', 20),
(3, 'App\\User', 21),
(3, 'App\\User', 22),
(3, 'App\\User', 23),
(3, 'App\\User', 24),
(3, 'App\\User', 25),
(3, 'App\\User', 26),
(3, 'App\\User', 27),
(3, 'App\\User', 28),
(3, 'App\\User', 29),
(3, 'App\\User', 30),
(3, 'App\\User', 31),
(3, 'App\\User', 32),
(3, 'App\\User', 33),
(3, 'App\\User', 34),
(3, 'App\\User', 35),
(3, 'App\\User', 36),
(3, 'App\\User', 37),
(3, 'App\\User', 38),
(3, 'App\\User', 39),
(4, 'App\\User', 2),
(4, 'App\\User', 3),
(4, 'App\\User', 4),
(4, 'App\\User', 5),
(4, 'App\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `is_installed` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_path` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_callbacks`
--

CREATE TABLE `mpesa_callbacks` (
  `id` int(11) NOT NULL,
  `checkout_request_id` varchar(300) NOT NULL,
  `checkout_request_body` mediumtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mpesa_callbacks`
--

INSERT INTO `mpesa_callbacks` (`id`, `checkout_request_id`, `checkout_request_body`, `created_at`, `updated_at`) VALUES
(1, 'ws_CO_280720201041574364', '{\"Body\":{\"stkCallback\":{\"MerchantRequestID\":\"30857-4419335-1\",\"CheckoutRequestID\":\"ws_CO_280720201041574364\",\"ResultCode\":0,\"ResultDesc\":\"The service request is processed successfully.\",\"CallbackMetadata\":{\"Item\":[{\"Name\":\"Amount\",\"Value\":1},{\"Name\":\"MpesaReceiptNumber\",\"Value\":\"OGS74IZK19\"},{\"Name\":\"TransactionDate\",\"Value\":20200728104223},{\"Name\":\"PhoneNumber\",\"Value\":254726738394}]}}}}', '2020-08-04 07:08:40', '2020-08-04 07:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `order_id`, `item_id`, `name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Tusker Cider', 1, '250.00', '2020-08-04 18:08:13', '2020-08-04 18:08:13'),
(2, 2, 3, 'Guinness', 3, '250.00', '2020-08-10 15:22:13', '2020-08-10 15:22:13'),
(3, 3, 3, 'Guinness', 1, '250.00', '2020-08-10 15:28:26', '2020-08-10 15:28:26'),
(4, 4, 3, 'Guinness', 5, '250.00', '2020-08-10 15:36:55', '2020-08-10 15:36:55'),
(5, 5, 3, 'Guinness', 9, '250.00', '2020-08-10 15:38:15', '2020-08-10 15:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `unique_order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderstatus_id` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `coupon_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` decimal(20,2) DEFAULT NULL,
  `restaurant_charge` decimal(20,2) DEFAULT NULL,
  `delivery_charge` decimal(20,2) DEFAULT NULL,
  `total` decimal(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` int(11) NOT NULL DEFAULT 1,
  `payable` decimal(20,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `unique_order_id`, `orderstatus_id`, `user_id`, `coupon_name`, `location`, `address`, `tax`, `restaurant_charge`, `delivery_charge`, `total`, `created_at`, `updated_at`, `payment_mode`, `order_comment`, `restaurant_id`, `transaction_id`, `delivery_type`, `payable`) VALUES
(2, 'OD-08-10-H0E2-JA53QE3MB', 6, 39, NULL, '{\"lat\":\"-1.2046572\",\"lng\":\"36.9168435\",\"address\":\"Githurai, Githurai, Kenya\",\"house\":null,\"tag\":null}', ', Githurai, Githurai, Kenya', NULL, NULL, '500.00', '1250.00', '2020-08-10 15:22:13', '2020-08-10 15:27:56', 'COD', NULL, 1, NULL, 1, '1250.00'),
(3, 'OD-08-10-PWXS-M14KBZK6W', 6, 39, NULL, '{\"lat\":\"-1.2046572\",\"lng\":\"36.9168435\",\"address\":\"Githurai, Githurai, Kenya\",\"house\":null,\"tag\":null}', ', Githurai, Githurai, Kenya', NULL, NULL, '500.00', '750.00', '2020-08-10 15:28:26', '2020-08-10 15:34:21', 'COD', NULL, 1, NULL, 1, '750.00'),
(4, 'OD-08-10-KMH6-OGZRGORV5', 6, 39, NULL, '{\"lat\":\"-1.2046572\",\"lng\":\"36.9168435\",\"address\":\"Githurai, Githurai, Kenya\",\"house\":null,\"tag\":null}', ', Githurai, Githurai, Kenya', NULL, NULL, '500.00', '1750.00', '2020-08-10 15:36:55', '2020-08-10 15:37:53', 'COD', NULL, 1, NULL, 1, '500.00'),
(5, 'OD-08-10-Q4ZT-EYVRV13R9', 3, 39, NULL, '{\"lat\":\"-1.2046572\",\"lng\":\"36.9168435\",\"address\":\"Githurai, Githurai, Kenya\",\"house\":null,\"tag\":null}', ', Githurai, Githurai, Kenya', NULL, NULL, '500.00', '2750.00', '2020-08-10 15:38:15', '2020-08-10 15:38:30', 'COD', NULL, 1, NULL, 1, '2750.00');

-- --------------------------------------------------------

--
-- Table structure for table `orderstatuses`
--

CREATE TABLE `orderstatuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_item_addons`
--

CREATE TABLE `order_item_addons` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderitem_id` int(11) NOT NULL,
  `addon_category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addon_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addon_price` decimal(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `password_reset_otps`
--

CREATE TABLE `password_reset_otps` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `name`, `description`, `logo`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'COD', 'Cash On Delivery Payment', NULL, 1, '2020-08-04 11:31:19', '2020-08-04 11:31:19'),
(2, 'Stripe', 'Online Payment with Stripe', NULL, 0, '2020-08-04 11:31:20', '2020-08-04 11:31:20'),
(3, 'Paypal', 'Paypal Express Checkout', NULL, 0, '2020-08-04 11:31:20', '2020-08-04 11:31:20'),
(4, 'PayStack', 'PayStack Payment Gateway', NULL, 0, '2020-08-04 11:31:20', '2020-08-04 11:31:20'),
(5, 'Razorpay', 'PayStack Payment Gateway', NULL, 0, '2020-08-04 11:31:20', '2020-08-04 11:31:20'),
(6, 'M-Pesa', 'M-Pesa Checkout', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popular_geo_places`
--

CREATE TABLE `popular_geo_places` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popular_geo_places`
--

INSERT INTO `popular_geo_places` (`id`, `name`, `latitude`, `longitude`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Mwihoko Rd, Githurai, Kenya', '-1.2046572', '36.9168435', 1, '2020-08-04 15:18:27', '2020-08-04 15:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `promo_sliders`
--

CREATE TABLE `promo_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `position_id` int(11) NOT NULL DEFAULT 0,
  `size` int(11) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_tokens`
--

CREATE TABLE `push_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_sent` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rateable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_range` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_pureveg` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_charges` decimal(20,2) DEFAULT NULL,
  `delivery_charges` decimal(20,2) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `is_accepted` tinyint(1) NOT NULL DEFAULT 0,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `commission_rate` decimal(8,2) NOT NULL DEFAULT 0.00,
  `delivery_type` int(11) NOT NULL DEFAULT 1,
  `delivery_radius` decimal(8,2) NOT NULL DEFAULT 10.00,
  `delivery_charge_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FIXED',
  `base_delivery_charge` decimal(20,2) DEFAULT NULL,
  `base_delivery_distance` int(11) DEFAULT NULL,
  `extra_delivery_charge` decimal(20,2) DEFAULT NULL,
  `extra_delivery_distance` int(11) DEFAULT NULL,
  `min_order_price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `is_notifiable` tinyint(1) DEFAULT 0,
  `auto_acceptable` tinyint(1) NOT NULL DEFAULT 0,
  `schedule_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_schedulable` tinyint(1) NOT NULL DEFAULT 0,
  `order_column` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `description`, `location_id`, `image`, `rating`, `delivery_time`, `price_range`, `is_pureveg`, `created_at`, `updated_at`, `slug`, `placeholder_image`, `latitude`, `longitude`, `certificate`, `restaurant_charges`, `delivery_charges`, `address`, `pincode`, `landmark`, `sku`, `is_active`, `is_accepted`, `is_featured`, `commission_rate`, `delivery_type`, `delivery_radius`, `delivery_charge_type`, `base_delivery_charge`, `base_delivery_distance`, `extra_delivery_charge`, `extra_delivery_distance`, `min_order_price`, `is_notifiable`, `auto_acceptable`, `schedule_data`, `is_schedulable`, `order_column`) VALUES
(1, 'Kimonje Liqours', 'Dealers in Wines & Spirits', NULL, '/assets/img/restaurants/15965410489dFReZ1d1X.jpg', '3', '10', '10', 0, '2020-08-04 14:37:29', '2020-08-04 15:21:32', 'kimonje-liqours-dxrBHAlOWSZMk4S', NULL, '-1.2046572', '36.9168435', NULL, NULL, '500.00', 'Mwihoko Rd, Githurai, Kenya', NULL, 'Flyover', '1596541049yCYPjP2Naz', 1, 1, 0, '3.00', 1, '10.00', 'FIXED', NULL, NULL, NULL, NULL, '10.00', 0, 0, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_categories`
--

CREATE TABLE `restaurant_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_category_restaurant`
--

CREATE TABLE `restaurant_category_restaurant` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_category_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_category_sliders`
--

CREATE TABLE `restaurant_category_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_placeholder` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_column` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_earnings`
--

CREATE TABLE `restaurant_earnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `is_requested` tinyint(1) NOT NULL DEFAULT 0,
  `is_processed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_payout_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_payouts`
--

CREATE TABLE `restaurant_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `restaurant_earning_id` int(11) NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_user`
--

CREATE TABLE `restaurant_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_user`
--

INSERT INTO `restaurant_user` (`id`, `user_id`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 39, 1, NULL, NULL),
(2, 41, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2020-08-04 11:31:18', '2020-08-04 11:31:18'),
(2, 'Delivery Guy', 'web', '2020-08-04 11:31:18', '2020-08-04 11:31:18'),
(3, 'Store Owner', 'web', '2020-08-04 11:31:18', '2020-08-04 11:31:18'),
(4, 'Customer', 'web', '2020-08-04 11:31:18', '2020-08-04 11:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'storeColor', '#fc8019'),
(2, 'splashLogo', 'splash.jpg'),
(3, 'firstScreenHeading', 'Order from top & favorite wines and spirits'),
(4, 'firstScreenSubHeading', 'Ready to see top restaurant to order?'),
(5, 'firstScreenSetupLocation', 'setup your location'),
(6, 'firstScreenLoginText', 'Have an account?'),
(7, 'footerNearme', 'Near Me'),
(8, 'footerExplore', 'Explore'),
(9, 'footerCart', 'Cart'),
(10, 'footerAccount', 'Account'),
(11, 'restaurantCountText', 'Restaurants Near You'),
(12, 'searchAreaPlaceholder', 'Search your area...'),
(13, 'searchPopularPlaces', 'Popular Places'),
(14, 'recommendedBadgeText', 'Recommended'),
(15, 'recommendedBadgeColor', '#d53d4c'),
(16, 'popularBadgeText', 'Popular'),
(17, 'popularBadgeColor', '#ff5722'),
(18, 'newBadgeText', 'New'),
(19, 'newBadgeColor', '#2196F3'),
(20, 'currencyFormat', '/='),
(21, 'currencyId', 'USD'),
(22, 'cartColorBg', '#60b246'),
(23, 'cartColorText', '#ffffff'),
(24, 'cartEmptyText', 'Your Cart is Empty'),
(25, 'firstScreenHeroImage', 'assets/img/various/156662819939lzR3gB2i.png'),
(26, 'restaurantSearchPlaceholder', 'Search for restaurants and items...'),
(27, 'accountManageAddress', 'Manage Address'),
(28, 'accountMyOrders', 'My Orders'),
(29, 'accountHelpFaq', 'Help & FAQs'),
(30, 'accountLogout', 'Logout'),
(31, 'cartMakePayment', 'Make Payment'),
(32, 'cartLoginHeader', 'Almost There'),
(33, 'cartLoginSubHeader', 'Login or Signup to place your order'),
(34, 'cartLoginButtonText', 'Continue'),
(35, 'cartDeliverTo', 'Deliver To'),
(36, 'cartChangeLocation', 'Change'),
(37, 'buttonNewAddress', 'New Address'),
(38, 'buttonSaveAddress', 'Save Address'),
(39, 'editAddressAddress', 'Flat/Apartment Number'),
(40, 'editAddressHouse', 'House / Flat No.'),
(41, 'editAddressLandmark', 'Landmark'),
(42, 'editAddressTag', 'Tag'),
(43, 'addressTagPlaceholder', 'Eg. Home, Work'),
(44, 'cartApplyCoupon', 'Apply Coupon'),
(45, 'cartInvalidCoupon', 'Invalid Coupon'),
(46, 'cartSuggestionPlaceholder', 'Suggestion for the restaurant...'),
(47, 'editAddressText', 'Edit'),
(48, 'deleteAddressText', 'Delete'),
(49, 'noAddressText', 'You don\'t have any saved addresses.'),
(50, 'cartSetAddressText', 'Set Your Address'),
(51, 'cartPageTitle', 'Cart'),
(52, 'checkoutPageTitle', 'Checkout'),
(53, 'checkoutPlaceOrder', 'Place Order'),
(54, 'runningOrderPlacedTitle', 'Order Placed Successfully'),
(55, 'runningOrderPlacedSub', 'Waiting for the restaurant to confirm your order'),
(56, 'runningOrderPreparingTitle', 'Chef at work!!'),
(57, 'runningOrderPreparingSub', 'Restaurant is preparing your order'),
(58, 'runningOrderOnwayTitle', 'Vroom Vroom!!'),
(59, 'runningOrderOnwaySub', 'Order has been picked up and is on its way'),
(60, 'runningOrderRefreshButton', 'Refresh Order Status'),
(61, 'noOrdersText', 'You have not placed any order yet.'),
(62, 'orderTextTotal', 'Total:'),
(63, 'checkoutPaymentListTitle', 'Select your prefered payment method'),
(64, 'checkoutSelectPayment', 'Select Payment Method'),
(65, 'mapApiKey', NULL),
(66, 'storeName', '2Party'),
(67, 'storeLogo', 'logo.png?v=1596753089uQEbk'),
(68, 'runningOrderDeliveryAssignedTitle', 'Delivery Guy Assigned'),
(69, 'runningOrderDeliveryAssignedSub', 'On the way to pick up your order.'),
(70, 'runningOrderCanceledTitle', 'Order Canceled'),
(71, 'runningOrderCanceledSub', 'Sorry. Your order has been canceled.'),
(72, 'stripePublicKey', NULL),
(73, 'stripeSecretKey', NULL),
(74, 'firstScreenWelcomeMessage', 'Welcome,'),
(75, 'firstScreenLoginBtn', 'Login'),
(76, 'loginErrorMessage', 'Woopss!! Something went wrong. Please try again.'),
(77, 'pleaseWaitText', 'Please Wait...'),
(78, 'loginLoginTitle', 'LOGIN'),
(79, 'loginLoginSubTitle', 'Enter your email and password'),
(80, 'loginLoginEmailLabel', 'Email'),
(81, 'loginLoginPasswordLabel', 'Password'),
(82, 'homePageMinsText', 'MINS'),
(83, 'homePageForTwoText', 'FOR TWO'),
(84, 'itemsPageRecommendedText', 'RECOMMENDED'),
(85, 'floatCartItemsText', 'Items'),
(86, 'floatCartViewCartText', 'View Cart'),
(87, 'cartItemsInCartText', 'Items in Cart'),
(88, 'cartBillDetailsText', 'Bill Details'),
(89, 'cartItemTotalText', 'Item Total'),
(90, 'cartRestaurantCharges', 'Restaurant Charges'),
(91, 'cartDeliveryCharges', 'Delivery Charges'),
(92, 'cartCouponText', 'Coupon'),
(93, 'cartToPayText', 'To Pay'),
(94, 'cartSetYourAddress', 'Set Your Address'),
(95, 'checkoutPaymentInProcess', 'Payment in process. Do not hit refresh or go back.'),
(96, 'checkoutStripeText', 'Stripe'),
(97, 'checkoutStripeSubText', 'Online Payment'),
(98, 'checkoutCodText', 'COD'),
(99, 'checkoutCodSubText', 'Cash On Delivery'),
(100, 'showPromoSlider', 'false'),
(101, 'loginLoginPhoneLabel', 'Phone'),
(102, 'loginLoginNameLabel', 'Name'),
(103, 'registerErrorMessage', 'Woppss!! Something went wrong. Please try again.'),
(104, 'registerRegisterTitle', 'Register'),
(105, 'registerRegisterSubTitle', 'Regsiter now for free'),
(106, 'firstScreenRegisterBtn', 'Register'),
(107, 'loginDontHaveAccount', 'Don\'t have an account yet? '),
(108, 'regsiterAlreadyHaveAccount', 'Already have an account? '),
(109, 'favicon-16x16', 'favicon-16x16.png?v=1596753089joVs3'),
(110, 'favicon-32x32', 'favicon-32x32.png?v=1596753089F1FdK'),
(111, 'favicon-96x96', 'favicon-96x96.png?v=1596753089miBmq'),
(112, 'favicon-128x128', 'favicon-128x128.png?v=1596753089DgLjw'),
(113, 'storeEmail', 'kelvinkibugi@gmail.com'),
(114, 'seoMetaTitle', '2Party'),
(115, 'seoMetaDescription', NULL),
(116, 'storeUrl', NULL),
(117, 'twitterUsername', 'twitter-username'),
(118, 'seoOgTitle', NULL),
(119, 'seoOgDescription', NULL),
(120, 'seoTwitterTitle', NULL),
(121, 'seoTwitterDescription', NULL),
(122, 'seoOgImage', NULL),
(123, 'seoTwitterImage', NULL),
(124, 'accountMyAccount', 'My Account'),
(125, 'desktopHeading', 'Order from restaurants near you'),
(126, 'desktopSubHeading', NULL),
(127, 'desktopUseAppButton', 'Use App'),
(128, 'desktopAchievementOneTitle', 'Restaurants'),
(129, 'desktopAchievementOneSub', '2300+'),
(130, 'desktopAchievementTwoTitle', 'Items'),
(131, 'desktopAchievementTwoSub', '65000+'),
(132, 'desktopAchievementThreeTitle', 'Customers'),
(133, 'desktopAchievementThreeSub', '1M+'),
(134, 'desktopAchievementFourTitle', 'Deliveries'),
(135, 'desktopAchievementFourSub', '5M+'),
(136, 'desktopSocialFacebookLink', 'https://www.facebook.com'),
(137, 'desktopSocialGoogleLink', 'https://www.google.com'),
(138, 'desktopSocialYoutubeLink', NULL),
(139, 'desktopSocialInstagramLink', 'https://www.instagram.com'),
(140, 'desktopFooterSocialHeader', 'We Are Social'),
(141, 'desktopFooterAddress', '#1201, Someplace, Near Somewhere'),
(142, 'runningOrderDeliveryPin', 'Delivery Pin: '),
(143, 'deliveryNoOrdersAccepted', 'No Orders Accepted Yet'),
(144, 'deliveryNoNewOrders', 'No New Orders Yet'),
(145, 'firstScreenHeroImageSm', 'assets/img/various/156662819939lzR3gB2i-sm.png'),
(146, 'showMap', 'true'),
(147, 'paypalEnv', 'sandbox'),
(148, 'paypalSandboxKey', NULL),
(149, 'paypalProductionKey', NULL),
(150, 'enablePushNotification', 'false'),
(151, 'enablePushNotificationOrders', 'false'),
(152, 'firebaseSenderId', '587656068333'),
(153, 'firebaseSecret', NULL),
(154, 'runningOrderDelivered', 'Order Delivered'),
(155, 'runningOrderDeliveredSub', 'The order has been delivered to you. Enjoy.'),
(156, 'showGdpr', 'false'),
(157, 'gdprMessage', 'We use Cookies to give you the best possible service. By continuing to browse our site you are agreeing to our use of Cookies'),
(158, 'gdprConfirmButton', 'Okay'),
(159, 'restaurantFeaturedText', 'Featured'),
(160, 'deliveryNewOrdersTitle', 'New Orders'),
(161, 'deliveryAcceptedOrdersTitle', 'Accepted Orders'),
(162, 'deliveryWelcomeMessage', 'Welcome'),
(163, 'deliveryOrderItems', 'Order Items'),
(164, 'deliveryRestaurantAddress', 'Restaurant Address'),
(165, 'deliveryGetDirectionButton', 'Get Direction'),
(166, 'deliveryDeliveryAddress', 'Delivery Address'),
(167, 'deliveryOnlinePayment', 'Online Payment'),
(168, 'deliveryDeliveryPinPlaceholder', 'ENTER DELIVERY PIN'),
(169, 'deliveryAcceptOrderButton', 'Accept'),
(170, 'deliveryPickedUpButton', 'Picked Up'),
(171, 'deliveryDeliveredButton', 'Delivered'),
(172, 'deliveryOrderCompletedButton', 'Order Completed'),
(173, 'deliveryInvalidDeliveryPin', 'Incorrect delivery pin. Please try again.'),
(174, 'deliveryAlreadyAccepted', 'This delivery has been accepted by someone else.'),
(175, 'deliveryLogoutDelivery', 'Logout Delivery'),
(176, 'enableGoogleAnalytics', 'false'),
(177, 'googleAnalyticsId', NULL),
(178, 'taxApplicable', 'false'),
(179, 'taxPercentage', NULL),
(180, 'firebasePublic', 'BH5L8XrGsNpki5uF1008FbZzgKKZN-NmhOwdWL5Lxh5r3nsgZ6N_Dged1IYXXCCJwpnrXzs52G_v3vM_naO0hxY'),
(181, 'deliveryLogoutConfirmation', 'Are you sure?'),
(182, 'customizationHeading', 'Customizations'),
(183, 'customizableItemText', 'Customizable'),
(184, 'customizationDoneBtnText', 'Continue'),
(185, 'paystackPublicKey', 'pk_test_ecf3496bdf36bced2112a502f5f5bb96e1340124'),
(186, 'paystackPrivateKey', NULL),
(187, 'paystackPayText', 'PAY WITH PAYSLACK'),
(188, 'minPayout', '150'),
(189, 'enableFacebookLogin', 'false'),
(190, 'facebookAppId', NULL),
(191, 'facebookLoginButtonText', 'Login with Facebook'),
(192, 'enableGoogleLogin', 'false'),
(193, 'googleAppId', NULL),
(194, 'googleLoginButtonText', 'Login with Google'),
(195, 'customCSS', NULL),
(196, 'enSOV', 'true'),
(197, 'twilioSid', 'AC38d85a15f5af1bace55ff4f81724ed87'),
(198, 'twilioAccessToken', 'b8fbaa7a78b46bcbb55df34f574264a9'),
(199, 'twilioServiceId', NULL),
(200, 'fieldValidationMsg', 'This is a required field.'),
(201, 'nameValidationMsg', 'Please enter your full name.'),
(202, 'emailValidationMsg', 'Please enter a valid email.'),
(203, 'phoneValidationMsg', 'Please enter a phone number in this format: +1123456789'),
(204, 'minimumLengthValidationMessage', 'This field must be at least 8 characters long.'),
(205, 'emailPhoneAlreadyRegistered', 'Email or Phone has already been registered.'),
(206, 'enterPhoneToVerify', 'Please enter your phone number to verify'),
(207, 'invalidOtpMsg', 'Invalid OTP. Please check and try again.'),
(208, 'otpSentMsg', 'An OTP has been sent to '),
(209, 'resendOtpMsg', 'Resend OTP to '),
(210, 'resendOtpCountdownMsg', 'Resend OTP in '),
(211, 'verifyOtpBtnText', 'Verify OTP'),
(212, 'socialWelcomeText', 'Hi '),
(213, 'emailPassDonotMatch', 'Email & Password do not match.'),
(214, 'enSPU', 'true'),
(215, 'runningOrderReadyForPickup', 'Food is Ready'),
(216, 'runningOrderReadyForPickupSub', 'Your order is ready for self pickup.'),
(217, 'deliveryTypeDelivery', 'Delivery'),
(218, 'deliveryTypeSelfPickup', 'Self Pickup'),
(219, 'noRestaurantMessage', 'No outlets are available.'),
(220, 'selectedSelfPickupMessage', 'You have selected Self Pickup.'),
(221, 'vehicleText', 'Vehicle:'),
(222, 'deliveryGuyAfterName', 'is your delivery valet today.'),
(223, 'callNowButton', 'Call Now'),
(224, 'enableGoogleAPI', 'false'),
(225, 'checkoutRazorpayText', 'Razorpay'),
(226, 'checkoutRazorpaySubText', 'Pay with cards, wallet or UPI'),
(227, 'razorpayKeyId', 'rzp_test_VWcp86nfU6T7rV'),
(228, 'razorpayKeySecret', 'eLzMBr1cycRG0iEjgMptgjMs'),
(229, 'allowLocationAccessMessage', 'Kindly allow location access for live tracking.'),
(230, 'enableDeliveryPin', 'true'),
(231, 'deliveryOrdersRefreshBtn', 'Refresh'),
(232, 'restaurantAcceptTimeThreshold', '10'),
(233, 'deliveryAcceptTimeThreshold', '45'),
(234, 'taxText', 'Tax'),
(235, 'itemsRemovedMsg', 'Items added from the previous restaurant have been removed.'),
(236, 'ongoingOrderMsg', 'You have some on-going orders. VIEW'),
(237, 'trackOrderText', 'Track Order'),
(238, 'orderPlacedStatusText', 'Order Placed'),
(239, 'preparingOrderStatusText', 'Preparing Order'),
(240, 'deliveryGuyAssignedStatusText', 'Delivery Guy Assigned'),
(241, 'orderPickedUpStatusText', 'Order Picked Up'),
(242, 'deliveredStatusText', 'Delivered'),
(243, 'canceledStatusText', 'Canceled'),
(244, 'readyForPickupStatusText', 'Ready For Pickup'),
(245, 'pureVegText', 'Pure Veg'),
(246, 'certificateCodeText', 'Certificate Code: '),
(247, 'showMoreButtonText', 'Show More'),
(248, 'showLessButtonText', 'Show Less'),
(249, 'walletName', 'Wallet'),
(250, 'accountMyWallet', 'My Wallet'),
(251, 'noWalletTransactionsText', 'No Wallet Transactions Yet!!!'),
(252, 'walletDepositText', 'Deposit'),
(253, 'walletWithdrawText', 'Withdraw'),
(254, 'payPartialWithWalletText', 'Pay partial amount with wallet'),
(255, 'willbeDeductedText', 'will be deducted from your balance of'),
(256, 'payFullWithWalletText', 'Pay full amount with Wallet.'),
(257, 'orderPaymentWalletComment', 'Payment for order:'),
(258, 'orderPartialPaymentWalletComment', 'Partial payment for order:'),
(259, 'orderRefundWalletComment', 'Refund for order cancellation.'),
(260, 'orderPartialRefundWalletComment', 'Partial Refund for order cancellation.'),
(261, 'enDevMode', 'true'),
(262, 'walletRedeemBtnText', 'Redeem'),
(263, 'restaurantNewOrderNotificationMsg', 'A New Order has Arrived !!!'),
(264, 'restaurantNewOrderNotificationMsgSub', 'New Order Notification'),
(265, 'deliveryGuyNewOrderNotificationMsg', 'A New Order is Waiting !!!'),
(266, 'deliveryGuyNewOrderNotificationMsgSub', 'New Order Notification'),
(267, 'firebaseSDKSnippet', ''),
(268, 'cartCouponOffText', 'OFF'),
(269, 'willBeRefundedText', 'will be refunded back to your wallet.'),
(270, 'willNotBeRefundedText', 'No Refund will be made to your wallet as the restaurant has already prepared the order.'),
(271, 'cartRestaurantNotOperational', 'Restaurant is not operational on your selected location.'),
(272, 'addressDoesnotDeliverToText', 'Does not deliver to'),
(273, 'googleApiKey', 'AIzaSyDWGAw0IbrDHTlPClEUtBx3WO_G6DrGDyQ'),
(274, 'useCurrentLocationText', 'Use Current Location'),
(275, 'gpsAccessNotGrantedMsg', 'GPS access is not granted or was denied.'),
(276, 'yourLocationText', 'YOUR LOCATION'),
(277, 'notAcceptingOrdersMsg', 'Currently Not Accepting Any Orders'),
(278, 'exploreRestautantsText', 'RESTAURANTS'),
(279, 'exploreItemsText', 'ITEMS'),
(280, 'hidePriceWhenZero', 'true'),
(281, 'phoneCountryCode', '+254'),
(282, 'orderCancellationConfirmationText', 'Do you want to cancel this order?'),
(283, 'yesCancelOrderBtn', 'Yes, Cancel Order'),
(284, 'cancelGoBackBtn', 'Go back'),
(285, 'cancelOrderMainButton', 'Cancel Order'),
(286, 'deliveryOrderPlacedText', 'Order Placed'),
(287, 'deliveryCashOnDelivery', 'Cash On Delivery'),
(288, 'socialLoginOrText', 'OR'),
(289, 'orderCancelledText', 'Order Cancelled'),
(290, 'searchAtleastThreeCharsMsg', 'Enter at least 3 characters to search.'),
(291, 'multiLanguageSelection', 'true'),
(292, 'changeLanguageText', 'Change Language'),
(293, 'deliveryFooterNewTitle', 'New Orders'),
(294, 'deliveryFooterAcceptedTitle', 'Accepted'),
(295, 'deliveryFooterAccount', 'Account'),
(296, 'enableDeliveryGuyEarning', 'false'),
(297, 'deliveryGuyCommissionFrom', 'FULLORDER'),
(298, 'deliveryEarningsText', 'Earnings'),
(299, 'deliveryOnGoingText', 'On-Going'),
(300, 'deliveryCompletedText', 'Completed'),
(301, 'deliveryCommissionMessage', 'Commission for order: '),
(302, 'itemSearchText', 'Search results for: '),
(303, 'itemSearchNoResultText', 'No results found for: '),
(304, 'itemSearchPlaceholder', 'Search for items...'),
(305, 'googleApiKeyIP', 'AIzaSyDWGAw0IbrDHTlPClEUtBx3WO_G6DrGDyQ'),
(306, 'itemsMenuButtonText', 'MENU'),
(307, 'enPassResetEmail', 'false'),
(308, 'mail_host', NULL),
(309, 'mail_port', NULL),
(310, 'mail_username', NULL),
(311, 'mail_password', NULL),
(312, 'mail_encryption', NULL),
(313, 'enRestaurantCategorySlider', '0'),
(314, 'restaurantCategorySliderPosition', '2'),
(315, 'restaurantCategorySliderSize', '3'),
(316, 'showRestaurantCategorySliderLabel', 'false'),
(317, 'restaurantCategorySliderStyle', '0.4'),
(318, 'enRAR', 'true'),
(319, 'rarModEnHomeBanner', 'true'),
(320, 'rarModShowBannerRestaurantName', 'true'),
(321, 'rarModHomeBannerPosition', '2'),
(322, 'rarModHomeBannerBgColor', 'rgb(255, 235, 59)'),
(323, 'rarModHomeBannerTextColor', 'rgb(0, 0, 0)'),
(324, 'rarModHomeBannerStarsColor', 'rgb(255, 162, 0)'),
(325, 'rarModHomeBannerText', 'Rate and Review'),
(326, 'rarModRatingPageTitle', 'Rate Your Order'),
(327, 'rarModDeliveryRatingTitle', 'Rate the Delivery'),
(328, 'rarModRestaurantRatingTitle', 'Rate the Restaurant'),
(329, 'rarReviewBoxTitle', 'Your Feedback'),
(330, 'rarReviewBoxTextPlaceHolderText', 'Write your feedback here (optional)'),
(331, 'rarSubmitButtonText', 'Submit'),
(332, 'showPercentageDiscount', 'true'),
(333, 'itemPercentageDiscountText', '% OFF'),
(334, 'showVegNonVegBadge', 'true'),
(335, 'exploreNoResults', 'No Outlets Found'),
(336, 'updatingMessage', 'Updating System'),
(337, 'userNotFoundErrorMessage', 'No user found with this email.'),
(338, 'invalidOtpErrorMessage', 'Invalid OTP Entered'),
(339, 'resetPasswordPageTitle', 'Reset Password'),
(340, 'resetPasswordPageSubTitle', 'Enter your email address to continue'),
(341, 'sendOtpOnEmailButtonText', 'Send OTP on Email'),
(342, 'alreadyHaveResetOtpButtonText', 'I already have an OTP'),
(343, 'enterResetOtpMessageText', 'Enter the OTP sent to you email'),
(344, 'verifyResetOtpButtonText', 'Verify OTP'),
(345, 'dontHaveResetOtpButtonText', 'I dont have an OTP'),
(346, 'enterNewPasswordText', 'Please enter a new password below'),
(347, 'newPasswordLabelText', 'New Password'),
(348, 'setNewPasswordButtonText', 'Set New Password'),
(349, 'exlporeByRestaurantText', 'By'),
(350, 'forgotPasswordLinkText', 'Forgot Password?'),
(351, 'categoriesNoRestaurantsFoundText', 'No Restaurants Found'),
(352, 'categoriesFiltersText', 'Filters'),
(353, 'sendEmailFromEmailAddress', 'do-not-reply@foodomaa.com'),
(354, 'sendEmailFromEmailName', 'Foodomaa'),
(355, 'passwordResetEmailSubject', 'Reset Password OTP'),
(356, 'registrationPolicyMessage', NULL),
(357, 'locationSavedAddresses', 'Saved Addresses'),
(358, 'restaurantMinOrderMessage', 'Min cart value should be atleast '),
(359, 'footerAlerts', 'Alerts'),
(360, 'showFromNowDate', 'true'),
(361, 'markAllAlertReadText', 'Mark all read'),
(362, 'noNewAlertsText', 'No new alerts'),
(363, 'currencySymbolAlign', 'right'),
(364, 'restaurantNotificationAudioTrack', 'Alert-5'),
(365, 'restaurantNewOrderRefreshRate', '15'),
(366, 'enDelChrRnd', 'true'),
(367, 'expandAllItemMenu', 'true'),
(368, 'msg91AuthKey', NULL),
(369, 'msg91SenderId', NULL),
(370, 'defaultSmsGateway', '2'),
(371, 'otpMessage', 'Your OTP verification code is:'),
(372, 'twilioFromPhone', '+12528811485'),
(373, 'smsRestaurantNotify', 'false'),
(374, 'smsDeliveryNotify', 'false'),
(375, 'defaultSmsRestaurantMsg', 'You have received a new order.'),
(376, 'smsRestOrderValue', 'false'),
(377, 'smsOrderNotify', 'false'),
(378, 'defaultSmsDeliveryMsg', 'A new order has arrived.'),
(379, 'showOrderAddonsDelivery', 'true'),
(380, 'showDeliveryFullAddressOnList', 'true'),
(381, 'sendgrid_api_key', NULL),
(382, 'showUserInfoBeforePickup', 'true'),
(383, 'recommendedLayoutV2', 'true'),
(384, 'cartItemNotAvailable', 'Item Not Available'),
(385, 'cartRemoveItemButton', 'Remove Item'),
(386, 'deliveryTotalEarningsText', 'Total Earnings'),
(387, 'flatApartmentAddressRequired', 'false'),
(388, 'deliveryUsePhoneToAccessMsg', 'Use your mobile phone to login to the Delivery Application.'),
(389, 'restaurantNotActiveMsg', 'Not Accepting Orders'),
(390, 'uploadImageQuality', '75'),
(391, 'deliveryMaxOrderReachedMsg', 'Max Order Limit Reached'),
(392, 'showInActiveItemsToo', 'false'),
(393, 'enGDMA', 'false'),
(394, 'showPriceAndOrderCommentsDelivery', 'false'),
(395, 'useSimpleSpinner', 'false'),
(396, 'randomizeStores', 'false'),
(397, 'showCouponDescriptionOnSuccess', 'false'),
(398, 'chooseAvatarText', 'Choose your avatar'),
(399, 'stripeAcceptAliPay', 'false'),
(400, 'stripeAcceptBitCoin', 'false'),
(401, 'stripeLocale', 'auto'),
(402, 'customCartMessage', '<p><br></p>'),
(403, 'customHomeMessage', '<p><br></p>'),
(404, 'inAppCloseButton', 'Close'),
(405, 'inAppOpenLinkButton', 'Open'),
(406, 'iOSPWAPopupTitle', 'Add to Home Screen'),
(407, 'iOSPWAPopupBody', 'This website has app functionality. Add it to your home screen to use it in fullscreen and while offline.'),
(408, 'iOSPWAPopupShareButtonLabel', '1) Press the \'Share\' button'),
(409, 'iOSPWAPopupAddButtonLabel', '2) Press \'Add to Home Screen\''),
(410, 'iOSPWAPopupCloseButtonLabel', 'Cancel'),
(411, 'defaultEmailGateway', 'sendgrid'),
(412, 'enIOSPWAPopup', 'true'),
(413, 'offlineTitleMessage', 'You Are Offline'),
(414, 'offlineSubTitleMessage', 'Please check your internet connection.'),
(415, 'userInActiveMessage', 'You are banned from placing orders');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `promo_slider_id` int(11) NOT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_placeholder` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_column` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gateway_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `gateway_name`, `created_at`, `updated_at`) VALUES
(1, 'MSG91', '2020-08-04 11:31:20', '2020-08-04 11:31:20'),
(2, 'TWILIO', '2020-08-04 11:31:20', '2020-08-04 11:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `sms_otps`
--

CREATE TABLE `sms_otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_items`
--

CREATE TABLE `temp_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_category_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `old_price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_recommended` tinyint(1) NOT NULL,
  `is_popular` tinyint(1) NOT NULL,
  `is_new` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_veg` tinyint(1) DEFAULT NULL,
  `brand` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `alcohol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_items`
--

INSERT INTO `temp_items` (`id`, `item_category_id`, `name`, `price`, `old_price`, `image`, `is_recommended`, `is_popular`, `is_new`, `created_at`, `updated_at`, `desc`, `placeholder_image`, `is_active`, `is_veg`, `brand`, `origin`, `quantity`, `alcohol`) VALUES
(2226, 1, 'Guinness', '200.00', '0.00', '/assets/img/items/1597044174guinness.jpegGCPACIW8V4.jpg', 0, 0, 0, '2020-08-10 14:08:54', '2020-08-10 14:08:54', '', NULL, 1, NULL, 'Guinness', 'Kenya', 500, 7),
(2227, 1, 'Tusker lager', '200.00', '0.00', '/assets/img/items/1597044174tusker-lager.jpegNzq5AdF7NS.jpg', 0, 0, 0, '2020-08-10 14:08:54', '2020-08-10 14:08:54', '', NULL, 1, NULL, 'Tusker', 'Kenya', 500, 4),
(2228, 1, 'Tusker lite', '200.00', '0.00', '/assets/img/items/1597044174tusker-lite.jpegMEiTeW3iwn.jpg', 0, 0, 0, '2020-08-10 14:08:54', '2020-08-10 14:08:54', '', NULL, 1, NULL, 'Tusker', 'Kenya', 500, 4),
(2229, 1, 'Tusker malt', '200.00', '0.00', '/assets/img/items/1597044174tusker-malt.jpegevIzDUBSOH.jpg', 0, 0, 0, '2020-08-10 14:08:54', '2020-08-10 14:08:54', '', NULL, 1, NULL, 'Tusker', 'Kenya', 500, 5),
(2230, 1, 'Tusker cider', '200.00', '0.00', '/assets/img/items/1597044174tusker-cider.jpegje1xdbNb9J.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Tusker', 'Kenya', 500, 5),
(2231, 1, 'White cap', '200.00', '0.00', '/assets/img/items/1597044175white-cap.jpegB9GVyK1AA1.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'White Cap', 'Kenya', 500, 4),
(2232, 1, 'Plisner', '200.00', '0.00', '/assets/img/items/1597044175plisner.jpegj39ZFubqMk.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Pilsner', 'Kenya', 500, 5),
(2233, 1, 'Desperados can', '200.00', '0.00', '/assets/img/items/1597044175desperados-can.jpegbOmhpLNqAd.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Desperados', 'France', 500, 6),
(2234, 1, 'Desperados bottle', '200.00', '0.00', '/assets/img/items/1597044175desperados-bottle.jpegzznb7kfjxG.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Desperados', 'France', 330, 6),
(2235, 1, 'Bavaria original', '200.00', '0.00', '/assets/img/items/1597044175bavaria-original.jpeg3U8jW90i2u.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Bavaria', 'Netherlands', 500, 9),
(2236, 1, 'Bavalia black', '200.00', '0.00', '/assets/img/items/1597044175bavalia-black.jpegHzlNlpt6Xk.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Bavaria', 'Netherlands', 500, 8),
(2237, 1, 'Smirnoff double black ice', '200.00', '0.00', '/assets/img/items/1597044175guarana-double-black-ice.jpegJq1DnelFYM.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Smirnoff', 'Kenya', 250, 5),
(2238, 1, 'Heineken can', '200.00', '0.00', '/assets/img/items/1597044175heineken-can.jpegORYffCwRUU.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Heineken', 'Netherlands', 500, 5),
(2239, 1, 'Heineken bottle', '200.00', '0.00', '/assets/img/items/1597044175heineken-bottle.jpegxoIktUq665.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Heineken', 'Netherlands', 330, 5),
(2240, 1, 'Carlsberg can', '200.00', '0.00', '/assets/img/items/1597044175carlsberg-can.jpeguOwao6KzCt.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Carlsberg', 'Denmark', 500, 5),
(2241, 1, 'Carlsberg bottle', '200.00', '0.00', '/assets/img/items/1597044175carlsberg-bottle.jpegtj1UbyYSOs.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Carlsberg', 'Denmark', 330, 5),
(2242, 1, 'Faxe 10', '200.00', '0.00', '/assets/img/items/1597044175faxe.jpegQMt0ulZ14L.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Faxe', 'Denmark', 500, 10),
(2243, 1, 'Snapp', '200.00', '0.00', '/assets/img/items/1597044175snapp-.jpegKWhwyWJQUz.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Snapp', 'United States', 330, 5),
(2244, 1, 'Tuborg', '200.00', '0.00', '/assets/img/items/1597044175tuborg.jpegpFSrqoqMLt.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Tuborg', 'Denmark', 500, 5),
(2245, 1, 'Corona', '200.00', '0.00', '/assets/img/items/1597044175corona.jpegaRMNKrr4Gn.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Corona', 'Mexico', 330, 5),
(2246, 1, 'Hunters dry', '200.00', '0.00', '/assets/img/items/1597044175hunters-dry.jpegmbvBdJLtzi.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Hunter\'s', 'South Africa', 330, 6),
(2247, 1, 'Hunters gold', '200.00', '0.00', '/assets/img/items/1597044175hunters-gold.jpegoa7wpOA5Qh.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Hunter\'s', 'South Africa', 330, 6),
(2248, 1, 'Smirnoff black ice', '200.00', '0.00', '/assets/img/items/1597044175smirnoff-black-ice.jpegop9Ec0KXtB.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Smirnoff', 'Kenya', 330, 5),
(2249, 1, 'Atlas 10', '200.00', '0.00', '/assets/img/items/1597044175atlas-10-.jpeg0z1OMUOpr0.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Atlas', 'Netherlands', 500, 10),
(2250, 1, 'Atlas 12', '200.00', '0.00', '/assets/img/items/1597044175atlas-12.jpegLPmuOHSvxj.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Atlas', 'Netherlands', 500, 12),
(2251, 1, 'Atlas 16', '200.00', '0.00', '/assets/img/items/1597044175atlas-16.jpegfg3HYdu5gD.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Atlas', 'Netherlands', 500, 16),
(2252, 1, 'Snapp can', '200.00', '0.00', '/assets/img/items/1597044175snapp-can.jpegFbPJke2qqE.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Snapp', 'United States', 500, 5),
(2253, 1, 'Savanna dry', '200.00', '0.00', '/assets/img/items/1597044175savanna-cider.jpeg22mwXYuvOR.jpg', 0, 0, 0, '2020-08-10 14:08:55', '2020-08-10 14:08:55', '', NULL, 1, NULL, 'Savanna', 'South Africa', 330, 6),
(2254, 2, 'Kwv 3 years', '200.00', '0.00', '/assets/img/items/1597044175kwv-3-years.jpegnC6SavlQD5.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'KWV Brandy', 'South Africa', 750, 43),
(2255, 2, 'Kwv 5 years', '200.00', '0.00', '/assets/img/items/1597044176kwv-5-years.jpegTdjNzntp5c.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'KWV Brandy', 'South Africa', 750, 43),
(2256, 2, 'Jp chenet xo brandy', '200.00', '0.00', '/assets/img/items/1597044176jp-chenet-xo-brandy.jpegPOtTi0ZIq3.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'JP Chenet Brandy', 'France', 750, 36),
(2257, 2, 'Viceroy 10 years', '200.00', '0.00', '/assets/img/items/1597044176viceroy-10-years.jpegmb8M8cCh9r.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Viceroy', 'South Africa', 750, 40),
(2258, 2, 'Kyron brandy', '200.00', '0.00', '/assets/img/items/1597044176kyron-brandy.jpegUXMb8ZWcdS.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Kyron Brandy', 'France', 750, 40),
(2259, 2, 'St-remy xo', '200.00', '0.00', '/assets/img/items/1597044176st-remy-xo.jpeghovCxjJ14R.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'St-Remy', 'France', 700, 40),
(2260, 2, 'St-remy vsop', '200.00', '0.00', '/assets/img/items/1597044176st-remy-vsop.jpegQ7NCVfSdEX.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'St-Remy', 'France', 700, 40),
(2261, 2, 'Torres 5 Years Solera Reserva', '200.00', '0.00', '/assets/img/items/1597044176torres-brandy.jpegNndiRLf4jC.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Torres', 'Spain', 750, 38),
(2262, 2, 'Bardinet vsop', '200.00', '0.00', '/assets/img/items/1597044176bardinet-vsop.jpegYyIJAK0qa6.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Bardinet', 'France', 750, 36),
(2263, 2, 'Three barrels vsop', '200.00', '0.00', '/assets/img/items/1597044176three-barrels-vsop.jpegBZXoCtuQ1I.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Three Barrels', 'France', 750, 38),
(2264, 2, 'Viceroy', '200.00', '0.00', '/assets/img/items/1597044176viceroy.jpeg3P3aGlYu4a.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Viceroy', 'South Africa', 750, 43),
(2265, 2, 'Don  montego', '200.00', '0.00', '/assets/img/items/1597044176don--montego.jpegZ6VkJrGXyK.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Don Montego', 'Moldova', 750, 40),
(2266, 2, 'Kwv 12 years', '200.00', '0.00', '/assets/img/items/1597044176kwv-12-years.jpeg97b1e7EqGh.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'KWV Brandy', 'South Africa', 700, 38),
(2267, 2, 'Kwv 15 years', '200.00', '0.00', '/assets/img/items/1597044176kwv-15-years.jpegewROwYSmfa.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'KWV Brandy', 'South Africa', 700, 38),
(2268, 2, 'Kwv 10 years', '200.00', '0.00', '/assets/img/items/1597044176kwv-10-years.jpegURHf42dRS9.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'KWV Brandy', 'South Africa', 750, 38),
(2269, 2, 'Kwv 20 years', '200.00', '0.00', '/assets/img/items/1597044176kwv-20-years.jpegVbbJ1r17un.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'KWV Brandy', 'South Africa', 700, 38),
(2270, 2, 'Chabot armagnac vs', '200.00', '0.00', '/assets/img/items/1597044176chabot-armagnac-vs.jpegmZiJtia2qg.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Chabot', 'France', 700, 40),
(2271, 2, 'Bardinet xo french brandy', '200.00', '0.00', '/assets/img/items/1597044176bardinet-xo-french-brandy.jpeg8aW3TOu9Mn.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Bardinet', 'France', 700, 40),
(2272, 2, 'Chabot Vsop Deluxe', '200.00', '0.00', '/assets/img/items/1597044176Chabot-Vsop-Deluxe.jpegaSLu6kT9nF.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Chabot', 'France', 1, 40),
(2273, 2, 'Cles De Ducs Vsop', '200.00', '0.00', '/assets/img/items/1597044176Cles-De-Ducs-Vsop.jpegUq2WFcasvA.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Cles de Ducs', 'France', 750, 40),
(2274, 2, 'Cles De Ducs Armagnac Napoleon', '200.00', '0.00', '/assets/img/items/1597044176Cles-De-Ducs-Armagnac-Napoleon.jpegSfB8AMLrSj.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Cles de Ducs', 'France', 700, 40),
(2275, 2, 'Richot', '200.00', '0.00', '/assets/img/items/1597044176richot-.jpeg04PxjOqv2W.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Richot', 'Italy', 750, 40),
(2276, 3, 'Moet & chandon imperial brut', '200.00', '0.00', '/assets/img/items/1597044176richot-.jpeg04PxjOqv2W.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Moet & Chandon', 'France', 750, 12),
(2277, 3, 'Moet & chandon nectar imperial', '200.00', '0.00', '/assets/img/items/1597044176richot-.jpeg04PxjOqv2W.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Moet & Chandon', 'France', 750, 12),
(2278, 3, 'Moet & chandon nectar imperial rose', '200.00', '0.00', '/assets/img/items/1597044176richot-.jpeg04PxjOqv2W.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Moet & Chandon', 'France', 750, 12),
(2279, 3, 'Piper heidsieck', '200.00', '0.00', '/assets/img/items/1597044176piper-heidsieck.jpegy76ZJZypko.jpg', 0, 0, 0, '2020-08-10 14:08:56', '2020-08-10 14:08:56', '', NULL, 1, NULL, 'Piper Heidsieck', 'France', 750, 12),
(2280, 3, 'Belaire gold', '200.00', '0.00', '/assets/img/items/1597044176belaire-gold.jpegOvDMgEBsPO.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Belaire', 'France', 750, 12),
(2281, 3, 'Veuve clicquot rose', '200.00', '0.00', '/assets/img/items/1597044177veuve-clicquot-rose.jpegrG3HZ3OYDx.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Veuve Clicquot', 'France', 750, 12),
(2282, 3, 'GH mumm cordon rounge brut', '200.00', '0.00', '/assets/img/items/1597044177GH-mumm-cordon-rounge-brut.jpegVfY53wDsCm.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'GH Mumm', 'France', 750, 12),
(2283, 3, 'Belaire luxe', '200.00', '0.00', '/assets/img/items/1597044177luc-belaire-luxe.jpegfufuV16oSf.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Belaire', 'France', 750, 12),
(2284, 3, 'Dom perignon', '200.00', '0.00', '/assets/img/items/1597044177dom-perignon.jpegr7NQlmn2dZ.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Dom Perignon', 'France', 750, 12),
(2285, 3, 'Dom perignon rose', '200.00', '0.00', '/assets/img/items/1597044177dom-perignon-rose.jpegxMaLc50p3k.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Dom Perignon', 'France', 750, 12),
(2286, 3, 'Piper heidsieck rose', '200.00', '0.00', '/assets/img/items/1597044177piper-heidsieck-rose.jpegLktRI2gDPN.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Piper Heidsieck', 'France', 750, 12),
(2287, 3, 'Veuve cliquot brut', '200.00', '0.00', '/assets/img/items/1597044177veuve-cliquot.jpegs9UNpVnrcg.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Veuve Clicquot', 'France', 750, 12),
(2288, 3, 'Perrier jouet', '200.00', '0.00', '/assets/img/items/1597044177perrier-jouet.jpegoELpJP7oXR.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Perrier Jouet', 'France', 750, 12),
(2289, 3, 'Taittinger brut', '200.00', '0.00', '/assets/img/items/1597044177taittinger-brut.jpegoUvs847CNs.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Taittinger', 'France', 750, 12),
(2290, 3, 'Laurent pierre', '200.00', '0.00', '/assets/img/items/1597044177laurent-pierre.jpeglVC1iQAH4v.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Laurent Pierre', 'France', 750, 12),
(2291, 3, 'Belaire brut', '200.00', '0.00', '/assets/img/items/1597044177luc-belaire-brut.jpeg83z6pBy29s.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Belaire', 'France', 750, 12),
(2292, 3, 'Belaire rose', '200.00', '0.00', '/assets/img/items/1597044177luc-belaire-rose.jpegxNiwt0RmUL.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Belaire', 'France', 750, 12),
(2293, 3, 'Moet & chandon rose imperial', '200.00', '0.00', '/assets/img/items/1597044177luc-belaire-rose.jpegxNiwt0RmUL.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Moet & Chandon', 'France', 750, 12),
(2294, 3, 'Moet & chandon ice imperial', '200.00', '0.00', '/assets/img/items/1597044177luc-belaire-rose.jpegxNiwt0RmUL.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Moet & Chandon', 'France', 750, 12),
(2295, 3, 'Charles benoit champagne', '200.00', '0.00', '/assets/img/items/1597044177charles-benoit-champagne.jpegnfLy1SJRO3.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Charles Benoit', 'France', 750, 13),
(2296, 3, 'Krug grande cuvee champagne', '200.00', '0.00', '/assets/img/items/1597044177krug-grande-cuvee-champagne.jpegOtQ7IDN3Rj.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Krug Grande', 'France', 750, 12),
(2297, 3, 'Moet & Chandon Ice Imperial Rose', '200.00', '0.00', '/assets/img/items/1597044177krug-grande-cuvee-champagne.jpegOtQ7IDN3Rj.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Moet & Chandon', 'France', 750, 13),
(2298, 3, 'Ruinart Brut', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Brut.jpegecXs24LEzT.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Ruinart', 'France', 750, 13),
(2299, 3, 'Ruinart Blanc De Blancs', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Ruinart', 'France', 750, 13),
(2300, 3, 'Armand de brignac ace of spades brut gold champagne', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Undefined', 'France', 750, 13),
(2301, 4, 'Courvoisier XO', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Courvoisier', 'France', 700, 40),
(2302, 4, 'Courvoisier vsop', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Courvoisier', 'France', 750, 40),
(2303, 4, 'Hennessy vsop', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Hennessy', 'France', 700, 40),
(2304, 4, 'Hennessy xo', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Hennessy', 'France', 700, 40),
(2305, 4, 'Courvoisier vs', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Courvoisier', 'France', 700, 40),
(2306, 4, 'Martell VS', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Martell', 'France', 700, 40),
(2307, 4, 'Martell cordon Bleu', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Martell', 'France', 700, 40),
(2308, 4, 'Martell vsop', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Martell', 'France', 700, 40),
(2309, 4, 'Martell xo', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Martell', 'France', 700, 40),
(2310, 4, 'Remy martin vsop', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Remy Martins', 'France', 700, 40),
(2311, 4, 'Remy martin xo', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Remy Martins', 'France', 700, 40),
(2312, 4, 'Camus vs', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Camus', 'France', 700, 40),
(2313, 4, 'Camus vsop', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Camus', 'France', 700, 40),
(2314, 4, 'Courvoisier vs double oak', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Courvoisier', 'France', 700, 40),
(2315, 4, 'Courvoisier vsop tripple oak', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Courvoisier', 'France', 701, 140),
(2316, 4, 'Hennessy vs', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Hennessy', 'France', 700, 40),
(2317, 4, 'Camus borderies xo', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Camus', 'France', 700, 40),
(2318, 4, 'Hennessy paradis', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Hennessy', 'France', 700, 40),
(2319, 4, 'Camus xo', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Camus', 'France', 700, 40),
(2320, 4, 'Remy martin louis xiii', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Remy Martins', 'France', 700, 40),
(2321, 4, 'Albert jarraund vs', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Albert Jarraund', 'France', 700, 40),
(2322, 4, 'Albert jarraund vsop', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Albert Jarraund', 'France', 700, 40),
(2323, 4, 'Bisquit vsop', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Bisquit', 'France', 700, 40),
(2324, 4, 'Bisquit classique', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Bisquit', 'France', 700, 40),
(2325, 4, 'Martell blue swift vsop', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Martell', 'France', 700, 40),
(2326, 4, 'Martell vs single distillery', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Martell', 'France', 700, 40),
(2327, 4, 'Godet xo', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Godet', 'France', 700, 40),
(2328, 4, 'Godet vsop', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Godet', 'France', 700, 40),
(2329, 4, 'Janneau xo', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Janneau xo', 'France', 700, 40),
(2330, 4, 'Remy martin reserve cellar selection 28', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Remy Martins', 'France', 700, 40),
(2331, 4, 'Meukow xo cognac', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Meukow', 'France', 700, 40),
(2332, 4, 'Meukow vsop', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Meukow', 'France', 1, 40),
(2333, 4, 'White hennessy', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Hennessy', 'France', 700, 40),
(2334, 4, 'Hine vsop', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Hine', 'France', 1, 40),
(2335, 4, 'Hine rare vsop', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Hine', 'France', 1, 40),
(2336, 4, 'Courvoisier Napoleon', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Courvoisier', 'France', 700, 40),
(2337, 4, 'Meukow vs', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Meukow', 'France', 750, 40),
(2338, 4, 'Courvoisier initiale extra', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Courvoisier', 'France', 700, 40),
(2339, 4, '90 meukow vs', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Meukow', 'France', 1, 40),
(2340, 4, 'Comte joseph xo', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Undefined', 'France', 700, 40),
(2341, 4, 'Dusse vsop cognac', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Undefined', 'France', 750, 40),
(2342, 5, 'Durex extra safe condom', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'condoms & Lubes', 'United Kingdom', 1, 0),
(2343, 5, 'Durex feel utra thin', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'condoms & Lubes', 'United Kingdom', 1, 0),
(2344, 5, 'Durex performa condoms', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'condoms & Lubes', 'United Kingdom', 1, 0),
(2345, 5, 'Durex select flavours condoms', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'condoms & Lubes', 'United Kingdom', 1, 0),
(2346, 5, 'Rough rider condoms', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'condoms & Lubes', 'Japan', 1, 0),
(2347, 5, 'Durex Play Feel Lube', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'condoms & Lubes', 'United Kingdom', 50, 0),
(2348, 5, 'KLY Lubricating Jelly lube', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'condoms & Lubes', 'United States', 42, 0),
(2349, 5, 'Durex Play Massage 2in1 Lube', '200.00', '0.00', '/assets/img/items/1597044177Ruinart-Blanc-De-Blancs.jpegvJoybnvyik.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'condoms & Lubes', 'United Kingdom', 200, 0),
(2350, 6, 'Red bull', '200.00', '0.00', '/assets/img/items/1597044177red-bull.jpegVHYIJKb35A.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Energy Drinks', 'United States', 330, 0),
(2351, 6, 'Monster energy', '200.00', '0.00', '/assets/img/items/1597044177monster-energy.jpegR47TNtnVV5.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Energy Drinks', 'United States', 330, 0),
(2352, 6, 'Shark energy', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Energy Drinks', 'Thailand', 330, 0),
(2353, 7, 'Glenfiddich 15 years gift pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 750, 40),
(2354, 7, 'Johnnie walker blue label gift pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 750, 40),
(2355, 7, 'Johnnie walker red label gift pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 750, 40),
(2356, 7, 'Johnnie walker black label gift pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 1, 40),
(2357, 7, 'Johnnie walker green label gift pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 750, 43),
(2358, 7, 'Jameson gift pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Jameson', 'Ireland', 750, 40),
(2359, 7, 'Jack daniels tennessee fire gift pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Jack Daniels', 'United States', 750, 35),
(2360, 7, 'Jack daniels gift pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Jack Daniels', 'United States', 750, 40),
(2361, 7, 'Camus vsop gift pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Camus', 'France', 700, 40),
(2362, 7, 'Remy martin vsop gift pack (with a miniature)', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Remy Martins', 'France', 700, 40),
(2363, 7, 'Remy martin vsop gift pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Remy Martins', 'France', 1, 40),
(2364, 7, 'Glenfiddich 18 years gift pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 750, 40),
(2365, 7, 'Glenfiddich project xx gift pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 750, 47),
(2366, 7, 'Jameson black barrel gift pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Jameson', 'Ireland', 750, 40),
(2367, 7, 'Chivas Regal 12 years Gift Pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Chivas Regal', 'Scotland', 750, 40),
(2368, 7, 'Cardhu 12 Years Gift Pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Cardhu', 'Scotland', 700, 40),
(2369, 7, 'Glenfiddich 15 Years Gift Pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 750, 40),
(2370, 7, 'Only gin gift pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Undefined', 'Spain', 700, 43),
(2371, 7, 'Tanns gin gift pack', '200.00', '0.00', '/assets/img/items/1597044177shark-energy.jpegaVmoiHAUad.jpg', 0, 0, 0, '2020-08-10 14:08:57', '2020-08-10 14:08:57', '', NULL, 1, NULL, 'Undefined', 'Spain', 700, 43),
(2372, 8, 'Gilbeys london dry gin', '200.00', '0.00', '/assets/img/items/1597044177Gilbeys-.jpegA8cxEmOTzh.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Gilbey\'s', 'United Kingdom', 750, 40),
(2373, 8, 'Bombay sapphire london dry gin', '200.00', '0.00', '/assets/img/items/1597044178bombay-sapphire.jpegN5UG8R7Gh1.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Bombay Sapphire', 'United Kingdom', 750, 47),
(2374, 8, 'Hendricks gin', '200.00', '0.00', '/assets/img/items/1597044178hendricks-gin.jpegQhHb89129e.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Hendrick\'s Gin', 'Scotland', 750, 44),
(2375, 8, 'Tanqueray london dry gin', '200.00', '0.00', '/assets/img/items/1597044178tanqueray.jpeg0z7F6zNkry.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Tanqueray', 'United Kingdom', 750, 47),
(2376, 8, 'Gordons london dry gin', '200.00', '0.00', '/assets/img/items/1597044178gordons.jpeguBxRS6RuPQ.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Gordon\'s', 'United Kingdom', 750, 37),
(2377, 8, 'New amsterdam premium gin', '200.00', '0.00', '/assets/img/items/1597044178new-amsterdam.jpegONXo4ILe4P.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'New Amsterdam', 'United States', 750, 40),
(2378, 8, 'Bulldog london dry gin', '200.00', '0.00', '/assets/img/items/1597044178bulldog.jpegvzS2Pg6TbD.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Bulldog', 'United Kingdom', 750, 40),
(2379, 8, 'Tanquery no. 10', '200.00', '0.00', '/assets/img/items/1597044178tanquery-no.-10.jpegY39yKhqlxJ.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Tanqueray', 'United Kingdom', 1, 47),
(2380, 8, '6th sense gin london dry gin', '200.00', '0.00', '/assets/img/items/1597044178sense-london-dry-gin.jpegiNDSvtDy0j.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, '6th Sense', 'United Kingdom', 1, 38),
(2381, 8, 'Beefeater pink gin', '200.00', '0.00', '/assets/img/items/1597044178beefeater-pink-gin.jpeg5DcOkJ727B.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Beefeater', 'United Kingdom', 750, 37),
(2382, 8, 'Beefeater london dry gin', '200.00', '0.00', '/assets/img/items/1597044178beefeater.jpegmcpY9iciwM.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Beefeater', 'United Kingdom', 750, 47),
(2383, 8, 'Seagrams extra dry gin', '200.00', '0.00', '/assets/img/items/1597044178seagrams.jpegXVDdtmZnF7.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Seagram\'s Gin', 'United States', 750, 40),
(2384, 8, 'Musgrave pink gin', '200.00', '0.00', '/assets/img/items/1597044178musgrave-pink-gin.jpeghXRyZ0QFsc.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Musgrave', 'South Africa', 750, 43),
(2385, 8, 'The lakes distillery gin', '200.00', '0.00', '/assets/img/items/1597044178the-lakes-gin.jpegMVCIhF5HmN.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'The Lakes', 'United Kingdom', 700, 44),
(2386, 8, 'The lakes damson gin liqueur', '200.00', '0.00', '/assets/img/items/1597044178the-lakes-damson-gin-liqueur.jpegMA5aNNeMlt.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'The Lakes', 'England', 700, 25),
(2387, 8, 'Bombay blanche gin', '200.00', '0.00', '/assets/img/items/1597044178bombay-blanche-gin.jpeg63ApgvhVYF.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Bombay Sapphire', 'United Kingdom', 750, 47),
(2388, 8, 'Strettons london dry gin', '200.00', '0.00', '/assets/img/items/1597044178strettons-london-dry-gin.jpegy6SZuLgpe2.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Stretton\'s', 'South Africa', 750, 43),
(2389, 8, 'Kwv Cruxland', '200.00', '0.00', '/assets/img/items/1597044178Kwv-Cruxland.jpegEQzFC13pLL.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Cruxland', 'South Africa', 700, 43),
(2390, 8, 'Liverpool Gin', '200.00', '0.00', '/assets/img/items/1597044178Liverpool-Gin.jpegZpWszGKRLB.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Liverpool', 'United Kingdom', 700, 43),
(2391, 8, 'Liverpool Rose Petal', '200.00', '0.00', '/assets/img/items/1597044178Liverpool-Rose-Petals.jpegdaWwk5vImT.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Liverpool', 'United Kingdom', 700, 43),
(2392, 8, 'Liverpool Valencian Orange', '200.00', '0.00', '/assets/img/items/1597044178Liverpool-Valencian-Orange.jpegC94YyByst3.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Liverpool', 'United Kingdom', 700, 43),
(2393, 8, 'Plymouth Gin', '200.00', '0.00', '/assets/img/items/1597044178Plymouth-Gin.jpegOQe6HXRC9q.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Plymouth', 'United Kingdom', 700, 41),
(2394, 8, 'Plymouth Sloe Gin', '200.00', '0.00', '/assets/img/items/1597044178Plymouth-Sloe-Gin.jpeg7EQoKEPDPR.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Plymouth', 'United Kingdom', 700, 26),
(2395, 8, 'Plymouth Navy Strength Gin', '200.00', '0.00', '/assets/img/items/1597044178Plymouth-Navy-Strength-Gin.jpegZXbbr4Gt66.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Plymouth', 'United Kingdom', 700, 53),
(2396, 8, 'Monkey 47 dry gin', '200.00', '0.00', '/assets/img/items/1597044178monkey-47.jpegsiBSDEENSW.jpg', 0, 0, 0, '2020-08-10 14:08:58', '2020-08-10 14:08:58', '', NULL, 1, NULL, 'Monkey 47', 'Germany', 500, 47),
(2397, 8, 'Gin Mare', '200.00', '0.00', '/assets/img/items/1597044179Gin-Mare.jpegE70yvfXm5U.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Gin Mare', 'Spain', 700, 43),
(2398, 8, 'Elephant Handcrafted London Dry Gin', '200.00', '0.00', '/assets/img/items/1597044179Elephant-Handcrafted-London-Dry-Gin.jpeg1P4UHHX9Jj.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Elephant Gin', 'Germany', 700, 45),
(2399, 8, 'No. 3 London Dry Gin', '200.00', '0.00', '/assets/img/items/1597044179No-3-London-Dry-Gin.jpeg39IEMxEf5u.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'No.3 Gin', 'Netherlands', 700, 47),
(2400, 8, 'Tann\'s gin', '200.00', '0.00', '/assets/img/items/1597044179No-3-London-Dry-Gin.jpeg39IEMxEf5u.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Tann\'s Gin', 'Spain', 700, 40),
(2401, 8, 'Kozue Japanese Craft Gin', '200.00', '0.00', '/assets/img/items/1597044179Kozue-Japanese-Craft-Gin.jpegIE2PoWKFca.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Kozue', 'Japan', 700, 47),
(2402, 8, 'Citrum Premium Distilled Gin', '200.00', '0.00', '/assets/img/items/1597044179Citrum-Premium-Distilled-Gin.jpeg3j4H5fseCh.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Citrum', 'France', 700, 40),
(2403, 8, 'Mistral gin', '200.00', '0.00', '/assets/img/items/1597044179Mistral-gin.jpegMWFzwaouQi.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Mistral', 'France', 700, 40),
(2404, 8, 'Inverroche Verdant Gin', '200.00', '0.00', '/assets/img/items/1597044179Inverroche-Verdant-Gin.jpegHdJiNmX9rq.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Inverroche', 'South Africa', 700, 40),
(2405, 8, 'Dictador Premium Colombian Aged Gin Treasure', '200.00', '0.00', '/assets/img/items/1597044179Dictador-Premium-Colombian-Aged-Gin-Treasure.jpeg7ZcstvtYKP.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Colombian', 'Colombia', 700, 43),
(2406, 8, 'Dictador Premium Colombian Aged Gin Ortodoxy', '200.00', '0.00', '/assets/img/items/1597044179Dictador-Premium-Colombian-Aged-Gin-Ortodoxy.jpegDgEzkECICr.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Colombian', 'Colombia', 700, 43),
(2407, 8, 'The Lakes Sloe Gin', '200.00', '0.00', '/assets/img/items/1597044179The-Lakes-Sloe-Gin.jpegbKZ5BTgZdB.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'The Lakes', 'United Kingdom', 700, 21),
(2408, 8, 'Colombo London Dry Gin', '200.00', '0.00', '/assets/img/items/1597044179Colombo-London-Dry-Gin.jpegUWtqiaAy4h.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Colombo', 'Sri Lanka', 700, 43),
(2409, 8, 'The Lakes Explorer Edition Premium Craft Gin', '200.00', '0.00', '/assets/img/items/1597044179The-Lakes-Explorer-Edition-Premium-Craft-Gin.jpegbJd24wv4U2.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'The Lakes', 'United Kingdom', 700, 47),
(2410, 8, 'Bombay dry gin', '200.00', '0.00', '/assets/img/items/1597044179bombay-dry-gin.jpegWPimnS75RO.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Bombay Sapphire', 'England', 750, 38),
(2411, 8, 'Musgrave gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Musgrave', 'South Africa', 750, 43),
(2412, 8, 'Gordon\'s pink gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Gordon\'s', 'United gdomKin', 1, 38),
(2413, 8, 'Tanqueray flor de sevilla distilled gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Tanqueray', 'United Kingdom', 750, 41),
(2414, 8, 'Tanqueray lovage', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Tanqueray', 'United Kingdom', 750, 47),
(2415, 8, 'Tanqueray malacca', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Tanqueray', 'United Kingdom', 1, 41),
(2416, 8, 'Bols oude genever gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'Netherlands', 1, 35),
(2417, 8, 'Bluecoat american dry gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'United States', 700, 47),
(2418, 8, 'Brockman\'s premium gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'United Kingdom', 750, 40),
(2419, 8, 'No 209 barrel reserve gin cabernet sauvignon', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'United States', 750, 46),
(2420, 8, 'No 209 barrel reserve gin chardonnay', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'United Kingdom', 750, 40),
(2421, 8, 'Blackwoods vintage dry gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'United Kingdom', 700, 43),
(2422, 8, 'The botanical\'s premium london dry gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'United Kingdom', 700, 42),
(2423, 8, 'Mermaid pink gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'Australia', 1, 44),
(2424, 8, 'Four pillars spiced negroni gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'Australia', 1, 59),
(2425, 8, 'Four pillars navy strength', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'Australia', 1, 59),
(2426, 8, 'Bombay sapphire limited edition', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Bombay Sapphire', 'England', 750, 41),
(2427, 8, 'Botanic black london dry gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'England', 700, 45),
(2428, 8, 'Botanic london dry gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'England', 700, 45),
(2429, 8, 'Beefeater blood orange', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Beefeater', 'England', 750, 38),
(2430, 8, 'Fisu gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'Japan', 700, 40),
(2431, 8, 'Silent pool gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'England', 700, 43),
(2432, 8, 'Antidote london dry gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'France', 700, 40),
(2433, 8, 'Jj whitley elderflower gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'England', 700, 39),
(2434, 8, 'Hop eden mill st andrews gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'Scotland', 750, 46),
(2435, 8, 'Brokers london dry gin', '200.00', '0.00', '/assets/img/items/1597044179musgrave-gin.jpeglPAqtMZqts.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Undefined', 'England', 700, 40),
(2436, 6, 'Lime juice', '200.00', '0.00', '/assets/img/items/1597044179lime-juice.jpegwG3Dx1OGLF.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenya', 1, 0),
(2437, 6, 'Delmonte pineapple', '200.00', '0.00', '/assets/img/items/1597044179delmonte-pineapple.jpegHXakN8mrre.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Juice', 'Kenya', 1, 0),
(2438, 6, 'Delmonte mango', '200.00', '0.00', '/assets/img/items/1597044179delmonte-mango.jpegqNeFPsyvgQ.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenyan', 1, 0),
(2439, 6, 'Delmonte passion', '200.00', '0.00', '/assets/img/items/1597044179delmonte-passion.jpeg6K02zvDXEl.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenyan', 1, 0),
(2440, 6, 'Delmonte peach', '200.00', '0.00', '/assets/img/items/1597044179delmonte-peach.jpegD32xZ7qbdP.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenyan', 1, 0),
(2441, 6, 'Delmonte pineapple & orange', '200.00', '0.00', '/assets/img/items/1597044179delmonte-peach.jpegD32xZ7qbdP.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenyan', 1, 0),
(2442, 6, 'Delmonte apple', '200.00', '0.00', '/assets/img/items/1597044179delmonte-apple.jpega4ImSXW9qd.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenya', 1, 0),
(2443, 6, 'Delmonte mixed berry', '200.00', '0.00', '/assets/img/items/1597044179delmonte-mixed-berry.jpegFPednrLnQF.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenya', 1, 0),
(2444, 6, 'Delmonte orange', '200.00', '0.00', '/assets/img/items/1597044179delmonte-orange.jpegeiUBKLW1N0.jpg', 0, 0, 0, '2020-08-10 14:08:59', '2020-08-10 14:08:59', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenya', 1, 0);
INSERT INTO `temp_items` (`id`, `item_category_id`, `name`, `price`, `old_price`, `image`, `is_recommended`, `is_popular`, `is_new`, `created_at`, `updated_at`, `desc`, `placeholder_image`, `is_active`, `is_veg`, `brand`, `origin`, `quantity`, `alcohol`) VALUES
(2445, 6, 'Delmonte tropical', '200.00', '0.00', '/assets/img/items/1597044179delmonte-tropical.jpegbM3SAhLvYV.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenya', 1, 0),
(2446, 9, 'Aperol', '200.00', '0.00', '/assets/img/items/1597044180aperol.jpegM62nKBEXYa.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Aperol', 'Italy', 750, 11),
(2447, 9, 'Amarula fruit cream', '200.00', '0.00', '/assets/img/items/1597044180amarula-fruit-cream.jpegPLYRr09T3U.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Amarula', 'South Africa', 750, 17),
(2448, 9, 'Jack daniels honey', '200.00', '0.00', '/assets/img/items/1597044180jack-daniels-honey.jpegelj26iK7Tr.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Jack Daniels', 'United States', 750, 35),
(2449, 9, 'Baileys irish cream', '200.00', '0.00', '/assets/img/items/1597044180baileys-irish-cream.jpegaS7NsIu3eu.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Baileys', 'Ireland', 750, 17),
(2450, 9, 'Southern comfort', '200.00', '0.00', '/assets/img/items/1597044180southern-comfort.jpegvDTC8poBSc.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Southern Comfort', 'United States', 750, 35),
(2451, 9, 'Cointreau', '200.00', '0.00', '/assets/img/items/1597044180cointreau.jpegsqY1HJ68oY.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Cointreau', 'France', 750, 40),
(2452, 9, 'Jagermeister', '200.00', '0.00', '/assets/img/items/1597044180jagermeister.jpegl7WshJ2vUA.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Jagermeister', 'Germany', 700, 35),
(2453, 9, 'Four cousins strawberry cream', '200.00', '0.00', '/assets/img/items/1597044180four-cousins-strawberry-cream.jpegifjyuruh1t.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Four Cousins', 'South Africa', 750, 17),
(2454, 9, 'Ricard', '200.00', '0.00', '/assets/img/items/1597044180ricard.jpegI8IJ7WUk8g.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Ricard', 'France', 750, 40),
(2455, 9, 'Jack daniel\'s tennessee fire', '200.00', '0.00', '/assets/img/items/1597044180ricard.jpegI8IJ7WUk8g.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Jack Daniels', 'United States', 750, 35),
(2456, 9, 'Patron XO Cafe', '200.00', '0.00', '/assets/img/items/1597044180patron-XO-Cafe.jpegjFjTSD9KQI.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Patron Tequila', 'Mexico', 750, 35),
(2457, 9, 'Disaronno amaretto', '200.00', '0.00', '/assets/img/items/1597044180disaronno.jpegucrSr5sl8B.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Disaronno', 'Italy', 1, 25),
(2458, 9, 'Campari bitters', '200.00', '0.00', '/assets/img/items/1597044180campari-bitters.jpegvhHJQbeKda.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Campari', 'Italy', 750, 29),
(2459, 9, 'Drambuie', '200.00', '0.00', '/assets/img/items/1597044180drambuie.jpegIdu6xknuXd.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Drambuie', 'Scotland', 1, 40),
(2460, 9, 'Fernet blanca', '200.00', '0.00', '/assets/img/items/1597044180fernet-blanca.jpegQCJDdaEKtT.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Fernet Blanca', 'Italy', 750, 39),
(2461, 9, 'Grenadine syrup', '200.00', '0.00', '/assets/img/items/1597044180grenadine-syrup.jpegEtHT8XqRku.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Grenadine Syrup', 'France', 750, 0),
(2462, 9, 'Benedictine dom', '200.00', '0.00', '/assets/img/items/1597044180benedictine.jpegXiuGZ0dlNj.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Benedictine Dom', 'France', 1, 40),
(2463, 9, 'Angostura bitters', '200.00', '0.00', '/assets/img/items/1597044180angostura-bitters.jpege75bzry4TW.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Angostura Bitters', 'Trinidad and Tobago', 250, 45),
(2464, 9, 'Jim beam apple', '200.00', '0.00', '/assets/img/items/1597044180jim-bim-apple.jpegZdaYFOzwcf.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Jim Beam', 'Scotland', 750, 35),
(2465, 9, 'Jim beam honey', '200.00', '0.00', '/assets/img/items/1597044180jim-beam-honey.jpegrm7cYVHFH7.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Jim Beam', 'United States', 750, 35),
(2466, 9, 'Jim beam red stag', '200.00', '0.00', '/assets/img/items/1597044180jim-beam-red-stag.jpegTmb0bZxNna.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Jim Beam', 'United States', 751, 135),
(2467, 9, 'Bardinet de menthe', '200.00', '0.00', '/assets/img/items/1597044180bardinet-de-menthe.jpegFA0C2JQh9Q.jpg', 0, 0, 0, '2020-08-10 14:08:00', '2020-08-10 14:08:00', '', NULL, 1, NULL, 'Bardinet', 'France', 750, 25),
(2468, 9, 'Bardinet de cassis', '200.00', '0.00', '/assets/img/items/1597044180bardinet-de-cassis.jpegDhGPzneLsm.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Bardinet', 'France', 750, 16),
(2469, 9, 'Tia maria', '200.00', '0.00', '/assets/img/items/1597044181tia-maria.jpeg5H8ex5ZoNC.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Tia Maria', 'Italy', 1, 20),
(2470, 9, 'Meukow xpresso', '200.00', '0.00', '/assets/img/items/1597044181meukow-xpresso.jpegAbUkeBXDwT.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Meukow', 'France', 750, 22),
(2471, 9, 'Butlers triple sec', '200.00', '0.00', '/assets/img/items/1597044181butlers-tripsec.jpegRDpjxibwcM.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Butlers', 'South Africa', 750, 24),
(2472, 9, 'Bols triple sec', '200.00', '0.00', '/assets/img/items/1597044181bols-triple-sec.jpegKpKA1rrn48.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Bols', 'South Africa', 700, 21),
(2473, 9, 'St germain', '200.00', '0.00', '/assets/img/items/1597044181st-germain-.jpegq03Ryvwuit.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'St-Germain', 'France', 700, 20),
(2474, 9, 'Patron citronge', '200.00', '0.00', '/assets/img/items/1597044181patron-citronge.jpegknrI3wF5kM.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Patron Tequila', 'Mexico', 750, 35),
(2475, 9, 'Ponchos caramel infusion', '200.00', '0.00', '/assets/img/items/1597044181ponchos-caramel-infusion.jpegMBtapuvbcp.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Ponchos', 'Mexico', 750, 35),
(2476, 9, 'Ponchos chilli choc', '200.00', '0.00', '/assets/img/items/1597044181ponchos-chilli-choc-.jpegEXq1MKYJcF.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Ponchos', 'Mexico', 750, 135),
(2477, 9, 'Sheridans', '200.00', '0.00', '/assets/img/items/1597044181sheridans.jpegJ1j1OiEkMO.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Sheridan\'s', 'France', 1, 16),
(2478, 9, 'Tequila rose', '200.00', '0.00', '/assets/img/items/1597044181tequila-rose.jpegaLI5dpAO95.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Tequila Rose', 'Mexico', 750, 15),
(2479, 9, 'New grove cafe', '200.00', '0.00', '/assets/img/items/1597044181new-groove-cafe.jpegssyhe1IdI7.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'New Grove Rum', 'Mauritius', 750, 26),
(2480, 9, 'Kgb vodka caramel', '200.00', '0.00', '/assets/img/items/1597044181kgb-caramel.jpegRYUEHUlMul.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'KGB Vodka', 'Mauritius', 750, 37),
(2481, 9, 'KGB vodka limon liqueur', '200.00', '0.00', '/assets/img/items/1597044181KGB-vodka-limon-liqueur.jpegzhZDNNomtV.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'KGB Vodka', 'Mauritius', 750, 37),
(2482, 9, 'Marsh mallow cream', '200.00', '0.00', '/assets/img/items/1597044181marsh-mallow-cream.jpegKsKZBW7Ux9.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Marsh Mallow Cream', 'United States', 750, 30),
(2483, 9, 'Amarula gold', '200.00', '0.00', '/assets/img/items/1597044181amarula-gold.jpegE1pGC7UuWf.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Amarula', 'South Africa', 1, 30),
(2484, 9, 'Strawberry lips', '200.00', '0.00', '/assets/img/items/1597044181strawberry-lips-.jpegl6fOm5NKN6.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Strawberry Lips', 'South Africa', 750, 17),
(2485, 9, 'Kahlua', '200.00', '0.00', '/assets/img/items/1597044181kahlua.jpegApdOU9MyEY.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Kahlua', 'Mexico', 1, 20),
(2486, 9, 'Magnum', '200.00', '0.00', '/assets/img/items/1597044181magnum.jpegTP0VMheLdp.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Magnum', 'Scotland', 1, 17),
(2487, 9, 'Grand marnier', '200.00', '0.00', '/assets/img/items/1597044181grand-marnier.jpegV1W4cmneIe.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Grand Marnier', 'France', 700, 40),
(2488, 9, 'Frangelico', '200.00', '0.00', '/assets/img/items/1597044181frangelico.jpegkglhL3C5gV.jpg', 0, 0, 0, '2020-08-10 14:08:01', '2020-08-10 14:08:01', '', NULL, 1, NULL, 'Frangelico', 'Italy', 750, 20),
(2489, 9, 'Best cream', '200.00', '0.00', '/assets/img/items/1597044181best-cream.jpegA514ExEIqZ.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Best Cream', 'South Africa', 750, 20),
(2490, 9, 'Archers peach', '200.00', '0.00', '/assets/img/items/1597044182archers-peach.jpeg8sQF0UaKRk.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Archers Peach', 'England', 750, 21),
(2491, 9, 'Zappa original', '200.00', '0.00', '/assets/img/items/1597044182zappa-original.jpegv5aPstAuCa.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Zappa', 'South Africa', 750, 35),
(2492, 9, 'Zappa black', '200.00', '0.00', '/assets/img/items/1597044182zappa-black.jpegr3sLqdW94v.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Zappa', 'South Africa', 750, 35),
(2493, 9, 'Zappa blue', '200.00', '0.00', '/assets/img/items/1597044182zappa-blue.jpegr1dISiBYdM.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Zappa', 'South Africa', 750, 35),
(2494, 9, 'Zappa red', '200.00', '0.00', '/assets/img/items/1597044182zappa-red.jpeghQKrFGa0lM.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Zappa', 'South Africa', 750, 35),
(2495, 9, 'Zappa white', '200.00', '0.00', '/assets/img/items/1597044182zappa-white.jpeguoh3PqaUZt.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Zappa', 'South Africa', 750, 35),
(2496, 9, 'Limonce', '200.00', '0.00', '/assets/img/items/1597044182limonce.jpegomdMmBEWmC.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Limonce', 'Italy', 750, 25),
(2497, 9, 'Zanzi cream', '200.00', '0.00', '/assets/img/items/1597044182zanzi-cream.jpeg459V8TTvU2.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Zanzi Cream', 'South Africa', 750, 17),
(2498, 9, 'Butlers blue curacao', '200.00', '0.00', '/assets/img/items/1597044182butlers-blue-curacao.jpeg4eUpTIamF6.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Butlers', 'South Africa', 750, 24),
(2499, 9, 'Butlers expresso', '200.00', '0.00', '/assets/img/items/1597044182butlers-expresso.jpegxI1fMK9tZV.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Butlers', 'South Africa', 750, 24),
(2500, 9, 'Butlers ginger', '200.00', '0.00', '/assets/img/items/1597044182butlers-ginger.jpegsJFRM37PUD.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Butlers', 'South Africa', 750, 24),
(2501, 9, 'Butlers peppermint', '200.00', '0.00', '/assets/img/items/1597044182butlers-peppermint.jpegBelne3Obj7.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Butlers', 'South Africa', 750, 24),
(2502, 9, 'Butlers strawberry', '200.00', '0.00', '/assets/img/items/1597044182butlers-strawberry.jpegEFZzmsLYKa.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Butlers', 'South Africa', 750, 24),
(2503, 9, 'Pernod', '200.00', '0.00', '/assets/img/items/1597044182pernod.jpeg3ohFJmFYRi.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Pernord', 'France', 750, 40),
(2504, 9, 'Pimms', '200.00', '0.00', '/assets/img/items/1597044182pimms-.jpeglitEMAMg9I.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Pimms', 'England', 750, 25),
(2505, 9, 'Tango sour apple', '200.00', '0.00', '/assets/img/items/1597044182tango-sour-apple.jpeg3cxCgeAvnB.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Tango', 'South Africa', 750, 12),
(2506, 9, 'Drambuie 15 years', '200.00', '0.00', '/assets/img/items/1597044182drambuie-15-years.jpegEEgBOBR4fn.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Drambuie', 'Scotland', 1, 43),
(2507, 9, 'Jumping goat vodka liqueur', '200.00', '0.00', '/assets/img/items/1597044182jumping-goat-vodka-liqueur.jpegQVpiOChNiD.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Jumping Goat', 'New Zealand', 700, 40),
(2508, 9, 'Jumping goat whisky liqueur', '200.00', '0.00', '/assets/img/items/1597044182jumping-goat-whisky-liqueur.jpegbyNqV8PiOB.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Jumping Goat', 'New Zealand', 700, 40),
(2509, 9, 'Creme de cassis bols', '200.00', '0.00', '/assets/img/items/1597044182creme-de-cassis-bols.jpegqAUWDazDNu.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Bols', 'France', 750, 17),
(2510, 9, 'Southern comfort lime', '200.00', '0.00', '/assets/img/items/1597044182southern-comfort-lime.jpegdB3uBwSQ0Z.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Southern Comfort', 'United States', 1, 35),
(2511, 9, 'Jagermeister manifest', '200.00', '0.00', '/assets/img/items/1597044182jagermeister-manifest.jpegrqQeBbcpQA.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Jagermeister', 'Germany', 1, 38),
(2512, 9, 'Molly\'s Irish Cream', '200.00', '0.00', '/assets/img/items/1597044182jagermeister-manifest.jpegrqQeBbcpQA.jpg', 0, 0, 0, '2020-08-10 14:08:02', '2020-08-10 14:08:02', '', NULL, 1, NULL, 'Molly\'s', 'Ireland', 750, 17),
(2513, 9, 'Amarula Vanilla Spice Cream', '200.00', '0.00', '/assets/img/items/1597044182Amarula-Vanilla-Spice-Cream.jpeg2sfYZRzkAK.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Amarula', 'South Africa', 1, 16),
(2514, 9, 'Amarula Raspberry Cream Chocolate', '200.00', '0.00', '/assets/img/items/1597044183Amarula-Raspberry-Cream.jpegMu1ZlRsYlr.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Amarula', 'South Africa', 1, 16),
(2515, 9, 'Baileys delight', '200.00', '0.00', '/assets/img/items/1597044183baileys-delight.jpegv8MamaHsIh.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Baileys', 'Ireland', 750, 15),
(2516, 9, 'Romana sambuca', '200.00', '0.00', '/assets/img/items/1597044183baileys-delight.jpegv8MamaHsIh.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Undefined', 'Italy', 1, 40),
(2517, 9, 'Baileys expresso creme', '200.00', '0.00', '/assets/img/items/1597044183baileys-delight.jpegv8MamaHsIh.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Undefined', 'Ireland', 1, 17),
(2518, 9, 'Amaretto venezia', '200.00', '0.00', '/assets/img/items/1597044183baileys-delight.jpegv8MamaHsIh.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Undefined', 'Italy', 750, 18),
(2519, 9, 'Limo limoncello', '200.00', '0.00', '/assets/img/items/1597044183baileys-delight.jpegv8MamaHsIh.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Undefined', 'Italy', 750, 25),
(2520, 9, 'Galliano', '200.00', '0.00', '/assets/img/items/1597044183baileys-delight.jpegv8MamaHsIh.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Undefined', 'Italy', 700, 42),
(2521, 9, 'Mozart dark chocolate', '200.00', '0.00', '/assets/img/items/1597044183baileys-delight.jpegv8MamaHsIh.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Undefined', 'Austria', 700, 17),
(2522, 9, 'Mozart chocolate cream', '200.00', '0.00', '/assets/img/items/1597044183baileys-delight.jpegv8MamaHsIh.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Undefined', 'Austria', 750, 17),
(2523, 9, 'Mozart white chocolate vanilla cream', '200.00', '0.00', '/assets/img/items/1597044183baileys-delight.jpegv8MamaHsIh.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Undefined', 'Austria', 750, 17),
(2524, 9, 'Mozart white cream strawberry', '200.00', '0.00', '/assets/img/items/1597044183baileys-delight.jpegv8MamaHsIh.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Undefined', 'Austria', 750, 17),
(2525, 9, 'Southern comfort black', '200.00', '0.00', '/assets/img/items/1597044183baileys-delight.jpegv8MamaHsIh.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Southern Comfort', 'United Kingdom', 1, 40),
(2526, 9, 'Cointreau blood orange', '200.00', '0.00', '/assets/img/items/1597044183baileys-delight.jpegv8MamaHsIh.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Undefined', 'France', 1, 30),
(2527, 9, 'Bottega raspberry', '200.00', '0.00', '/assets/img/items/1597044183baileys-delight.jpegv8MamaHsIh.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Undefined', 'Italy', 750, 17),
(2528, 9, 'Bottega nero', '200.00', '0.00', '/assets/img/items/1597044183baileys-delight.jpegv8MamaHsIh.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Undefined', 'Italy', 750, 17),
(2529, 10, 'Captain morgan black', '200.00', '0.00', '/assets/img/items/1597044183captain-morgan-black.jpege4YOy8GQAs.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Captain Morgan', 'Jamaica', 750, 35),
(2530, 10, 'Malibu caribbean rum', '200.00', '0.00', '/assets/img/items/1597044183malibu-caribbean-rum.jpegZwn3wX2l6P.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Malibu', 'Barbados', 750, 21),
(2531, 10, 'Myers rum', '200.00', '0.00', '/assets/img/items/1597044183myers-rum.jpegCTtJUW50Qm.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Myers\'s Rum', 'Jamaica', 1, 40),
(2532, 10, 'Lambs navy rum', '200.00', '0.00', '/assets/img/items/1597044183lambs-navy-rum.jpegTXLI7t36q9.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Lamb\'s Navy', 'Scotland', 1, 40),
(2533, 10, 'Bacardi superior', '200.00', '0.00', '/assets/img/items/1597044183bacardi-superior.jpegp2gILbNn6Q.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Bacardi', 'Puerto Rico', 750, 37),
(2534, 10, 'Bacardi black', '200.00', '0.00', '/assets/img/items/1597044183bacardi-black.jpegAl848Uc2VX.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Bacardi', 'Puerto Rico', 750, 37),
(2535, 10, 'Bacardi gold', '200.00', '0.00', '/assets/img/items/1597044183bacardi-gold.jpeghcNKbnf5G2.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Bacardi', 'Puerto Rico', 750, 37),
(2536, 10, 'Bacardi oro', '200.00', '0.00', '/assets/img/items/1597044183bacardi-oro.jpeg8ReaB6JWLA.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Bacardi', 'Puerto Rico', 750, 37),
(2537, 10, 'Bacardi oakheart', '200.00', '0.00', '/assets/img/items/1597044183bacardi-oakheart.jpeghNSiBtJdpv.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Bacardi', 'Puerto Rico', 750, 37),
(2538, 10, 'Pyrat xo reserve rum', '200.00', '0.00', '/assets/img/items/1597044183pyrat-rum.jpeg6rvoethS8P.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Pyrat Rum', 'Guyana', 750, 40),
(2539, 10, 'Havana club anejo 3 years', '200.00', '0.00', '/assets/img/items/1597044183havana-club-anejo-3-years.jpeg90tYA0j7zH.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Havana Club', 'Cuba', 750, 40),
(2540, 10, 'Havana club especial', '200.00', '0.00', '/assets/img/items/1597044183havana-club-especial.jpegKO1FyOsOPP.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Havana Club', 'Cuba', 750, 40),
(2541, 10, 'Havana club 7 years', '200.00', '0.00', '/assets/img/items/1597044183havana-club-7-years.jpegqNCnxDbLcI.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Havana Club', 'Cuba', 750, 40),
(2542, 10, 'Captain morgan spiced', '200.00', '0.00', '/assets/img/items/1597044183captain-morgan-spiced.jpegFVEpGrhXio.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Captain Morgan', 'Jamaica', 750, 35),
(2543, 10, 'Gold of mauritius', '200.00', '0.00', '/assets/img/items/1597044183gold-of-mauritius.jpegKS5E9W43Qc.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Gold of Mauritius', 'Mauritius', 750, 40),
(2544, 10, 'Bumbu rum', '200.00', '0.00', '/assets/img/items/1597044183bumbu-rum.jpegtgOpYkYrM7.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Bumbu Rum', 'Barbados', 700, 35),
(2545, 10, 'Bacardi 8 years', '200.00', '0.00', '/assets/img/items/1597044183bacardi-8-years.jpegqjQ1qlG02H.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Bacardi', 'Puerto Rico', 700, 40),
(2546, 10, 'Mount Gay Extra Old', '200.00', '0.00', '/assets/img/items/1597044183Mount-Gay-Extra-Old.jpegF9p1v75Gnq.jpg', 0, 0, 0, '2020-08-10 14:08:03', '2020-08-10 14:08:03', '', NULL, 1, NULL, 'Mount Gay', 'Barbados', 1, 43),
(2547, 10, 'Captain morgan white spiced rum', '200.00', '0.00', '/assets/img/items/1597044183captain-morgan-white-spiced-rum.jpegAaMO1fFDVZ.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Captain Morgan', 'Jamaica', 1, 35),
(2548, 10, 'Old monk rum', '200.00', '0.00', '/assets/img/items/1597044184old-monk-rum.jpegAkMBca7EA2.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Old Monk', 'India', 750, 42),
(2549, 10, 'Negrita bardinet rum', '200.00', '0.00', '/assets/img/items/1597044184negrita-bardinet-rum.jpegaE7aDqV8Tb.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Negrita', 'France', 750, 37),
(2550, 10, 'New grove silver', '200.00', '0.00', '/assets/img/items/1597044184new-groove-silver-.jpegqtA2N5NlLk.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'New Grove Rum', 'Mauritius', 750, 42),
(2551, 10, 'New grove spiced rum', '200.00', '0.00', '/assets/img/items/1597044184new-groove-spiced-rum.jpeg98Y0wvyukV.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'New Grove Rum', 'Mauritius', 750, 37),
(2552, 10, 'Old nick golden rum', '200.00', '0.00', '/assets/img/items/1597044184old-nick-golden-rum.jpeg9yf8iDfirT.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Old Nick', 'Jamaica', 750, 37),
(2553, 10, 'Old nick white rum', '200.00', '0.00', '/assets/img/items/1597044184old-nick-white-rum.jpegtOnVj2hROd.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Old Nick', 'Jamaica', 750, 37),
(2554, 10, 'Ron Zacapa Centenario Sistema Solera 23 Rum', '200.00', '0.00', '/assets/img/items/1597044184Ron-Zacapa-Centenario-Sistema-Solera-23-Rum.jpegLaeP3Ei60e.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Ron Zacapa', 'Guatemala', 1, 40),
(2555, 10, 'Ron zacapa amber 12 years', '200.00', '0.00', '/assets/img/items/1597044184ron-zacapa-amber-12-years.jpegY1yY7Lm6Hn.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Ron Zacapa', 'Guatemala', 1, 40),
(2556, 10, 'Ron Zacapa Edicion Negra', '200.00', '0.00', '/assets/img/items/1597044184Ron-Zacapa-Edicion-Negra.jpegygtqzBkkLk.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Ron Zacapa', 'Guatemala', 1, 43),
(2557, 10, 'Mount Gay Silver', '200.00', '0.00', '/assets/img/items/1597044184Mount-Gay-Silver.jpeghyTaonfdFh.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Mount Gay', 'Barbados', 1, 40),
(2558, 10, 'Mount Gay Black Barrel', '200.00', '0.00', '/assets/img/items/1597044184Mount-Gay-Black-Barrel.jpegutPsbKq3ea.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Mount Gay', 'Barbados', 700, 43),
(2559, 10, 'Mount Gay Eclipse', '200.00', '0.00', '/assets/img/items/1597044184Mount-Gay-Eclipse.jpegp8McVSG22G.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Mount Gay', 'Barbados', 1, 40),
(2560, 10, 'Dos Maderas Ron Anejo', '200.00', '0.00', '/assets/img/items/1597044184Dos-Maderas-Ron-Anejo.jpegDRidrbEK0T.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Dos Maderas', 'Spain', 700, 38),
(2561, 10, 'Captain morgan black spiced rum', '200.00', '0.00', '/assets/img/items/1597044184Dos-Maderas-Ron-Anejo.jpegDRidrbEK0T.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Captain Morgan', 'Jamaica', 1, 40),
(2562, 6, 'Coke', '200.00', '0.00', '/assets/img/items/1597044184coke.jpeg8P0477V2RX.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenya', 1, 0),
(2563, 6, 'Fanta orange', '200.00', '0.00', '/assets/img/items/1597044184fanta-orange.jpegbn3unNX00j.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenya', 2, 0),
(2564, 6, 'Fanta pineapple', '200.00', '0.00', '/assets/img/items/1597044184fanta-pineapple.jpegksFpnZXNiE.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenya', 1, 0),
(2565, 6, 'Sprite', '200.00', '0.00', '/assets/img/items/1597044184sprite.jpegHZ3fQSVk3x.jpg', 0, 0, 0, '2020-08-10 14:08:04', '2020-08-10 14:08:04', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenya', 2, 0),
(2566, 6, 'Coke zero', '200.00', '0.00', '/assets/img/items/1597044184coke-zero.jpegOLtGfGZsXn.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenya', 1, 0),
(2567, 6, 'Krest', '200.00', '0.00', '/assets/img/items/1597044185krest.jpegBBqXcF2jac.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenya', 1, 0),
(2568, 6, 'Stoney Tangawizi', '200.00', '0.00', '/assets/img/items/1597044185Stoney-Tangawizi.jpeg5CzE4TTuEp.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Chasers & Soft Drinks', 'Kenya', 1, 0),
(2569, 11, 'Jose cuervo gold', '200.00', '0.00', '/assets/img/items/1597044185jose-cuervo-gold.jpegoYUgVw7hff.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Jose Cuervo', 'Mexico', 750, 38),
(2570, 11, 'Jose cuervo silver', '200.00', '0.00', '/assets/img/items/1597044185jose-cuervo-silver.jpeg4VknhRSFA0.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Jose Cuervo', 'Mexico', 750, 38),
(2571, 11, 'Patron XO cafe (Liqueur)', '200.00', '0.00', '/assets/img/items/1597044185patron-XO-cafe-(Liquor).jpegtDMSMGU4Cf.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Patron Tequila', 'Mexico', 750, 35),
(2572, 11, 'Ponchos caramel infusion (Liqueur)', '200.00', '0.00', '/assets/img/items/1597044185ponchos-caramel-infusion-(Liqueur).jpegCcUZvrSdN0.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Ponchos', 'Mexico', 750, 35),
(2573, 11, 'Ponchos chilli choc (Liqueur)', '200.00', '0.00', '/assets/img/items/1597044185ponchos-chilli-choc-(Liqueur).jpegAiAUYuTuXC.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Ponchos', 'Mexico', 750, 35),
(2574, 11, 'Tequila rose (Liqueur)', '200.00', '0.00', '/assets/img/items/1597044185tequila-rose-(Liqueur).jpeghxNYGXqpwN.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Tequila Rose', 'Mexico', 750, 15),
(2575, 11, 'Don julio 1942', '200.00', '0.00', '/assets/img/items/1597044185don-julio-1942.jpegGWrXdWtrLI.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Don Julio', 'Mexico', 700, 38),
(2576, 11, 'Don julio blanco', '200.00', '0.00', '/assets/img/items/1597044185don-julio-blanco.jpeghCCAZdobja.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Don Julio', 'Mexico', 750, 38),
(2577, 11, 'Don julio reposado', '200.00', '0.00', '/assets/img/items/1597044185don-julio-reposado.jpeg48nMWxzquH.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Don Julio', 'Mexico', 750, 38),
(2578, 11, 'Olmeca blanco', '200.00', '0.00', '/assets/img/items/1597044185olmeca-blanco-.jpegLm87ZZ0pRK.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Olmeca', 'Mexico', 750, 38),
(2579, 11, 'Olmeca gold', '200.00', '0.00', '/assets/img/items/1597044185olmeca-gold.jpeg3oHoj03bsc.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Olmeca', 'Mexico', 750, 38),
(2580, 11, 'Olmeca fusion', '200.00', '0.00', '/assets/img/items/1597044185olmeca-fusion.jpegITLKKgtsNS.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Olmeca', 'Mexico', 750, 20),
(2581, 11, 'Sierra gold', '200.00', '0.00', '/assets/img/items/1597044185sierra-gold.jpegG1YSDKV26t.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Sierra', 'Mexico', 750, 38),
(2582, 11, 'Sierra silver', '200.00', '0.00', '/assets/img/items/1597044185sierra-silver.jpeg7OzhEYRxow.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Sierra', 'Mexico', 750, 38),
(2583, 11, 'Camino gold', '200.00', '0.00', '/assets/img/items/1597044185camino-gold.jpegertYwg3v9d.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Camino', 'Mexico', 750, 40),
(2584, 11, 'Camino silver', '200.00', '0.00', '/assets/img/items/1597044185camino-clear.jpegjMYa8cDQ0J.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Camino', 'Mexico', 750, 40),
(2585, 11, 'Patron silver', '200.00', '0.00', '/assets/img/items/1597044185patron-silver.jpeg6x6bzzyod2.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Patron Tequila', 'Mexico', 750, 40),
(2586, 11, 'Patron reposado', '200.00', '0.00', '/assets/img/items/1597044185patron-reposado.jpegQccRV1GhGh.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Patron Tequila', 'Mexico', 750, 40),
(2587, 11, 'Patron anejo', '200.00', '0.00', '/assets/img/items/1597044185patron-anejo.jpegs6ZMtIsuh5.jpg', 0, 0, 0, '2020-08-10 14:08:05', '2020-08-10 14:08:05', '', NULL, 1, NULL, 'Patron Tequila', 'Mexico', 750, 40),
(2588, 11, 'Don julio anejo', '200.00', '0.00', '/assets/img/items/1597044185don-julio-anejo.jpeg50UPcKAmhY.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Don Julio', 'Mexico', 750, 38),
(2589, 11, 'Tequila sauza gold', '200.00', '0.00', '/assets/img/items/1597044186tequila-sauza.jpegHyiiCLItG2.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Sauza', 'Mexico', 750, 40),
(2590, 11, 'Ponchos blanco', '200.00', '0.00', '/assets/img/items/1597044186ponchos-blanco.jpegtu40Jk1JEM.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Ponchos', 'Mexico', 750, 40),
(2591, 11, 'Tequila 1800 anejo', '200.00', '0.00', '/assets/img/items/15970441861800-anejo--tequila.jpeg9e4lploe1J.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, '1800 Tequila', 'Mexico', 750, 38),
(2592, 11, 'Tequila 1800 reposado', '200.00', '0.00', '/assets/img/items/15970441861800-reposado-tequila.jpegdL1k7lgdKQ.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, '1800 Tequila', 'Mexico', 750, 38),
(2593, 11, 'Sierra antiguo anejo tequila', '200.00', '0.00', '/assets/img/items/1597044186sierra-antiguo-anejo-tequila.jpegpMRNlwXao8.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Sierra', 'Mexico', 750, 40),
(2594, 11, 'Sauza tequila silver', '200.00', '0.00', '/assets/img/items/1597044186sauza-tequila-silver.jpegnPMFI5mOTU.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Sauza', 'Mexico', 750, 40),
(2595, 11, 'Patron roca silver', '200.00', '0.00', '/assets/img/items/1597044186patron-roca-silver.jpegw5GJy23mif.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Patron Roca', 'Mexico', 750, 45),
(2596, 11, 'Patron roca reposado', '200.00', '0.00', '/assets/img/items/1597044186patron-roca-reposado.jpegrPMuxHGY34.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Patron Roca', 'Mexico', 750, 45),
(2597, 11, 'Olmeca tezon blanco', '200.00', '0.00', '/assets/img/items/1597044186olmeca-tezon-blanco.jpegNDrJQ8wRl8.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Olmeca', 'Mexico', 750, 38),
(2598, 11, 'Tequila 1800 silver', '200.00', '0.00', '/assets/img/items/1597044186tequila-1800-silver.jpegyYMA279YCS.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, '1800 Tequila', 'Mexico', 750, 40),
(2599, 11, 'Kah Bianco', '200.00', '0.00', '/assets/img/items/1597044186Kah-Bianco.jpegItB7ijzlXe.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Kah', 'Mexico', 700, 40),
(2600, 11, 'Kah Anejo', '200.00', '0.00', '/assets/img/items/1597044186Kah-Anejo.jpege4vQQXsnuQ.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Kah', 'Mexico', 700, 40),
(2601, 11, 'Kah Reposado', '200.00', '0.00', '/assets/img/items/1597044186Kah-Reposado.jpegWzGiQZE5H5.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Kah', 'Mexico', 700, 40),
(2602, 11, 'La Tilica Reposado', '200.00', '0.00', '/assets/img/items/1597044186La-Tilica-Reposado.jpegbEyVIfAQNZ.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'La Tilica', 'Mexico', 750, 40),
(2603, 11, 'La Tilica Anejo', '200.00', '0.00', '/assets/img/items/1597044186La-Tilica-Anejo.jpegXxHMJsWrkX.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'La Tilica', 'Mexico', 750, 40),
(2604, 11, 'Olmeca Dark Chocolate', '200.00', '0.00', '/assets/img/items/1597044186Olmeca-Dark-Chocolate.jpegaOt3SBlZow.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Olmeca', 'Mexico', 750, 20),
(2605, 11, 'Herradura reposado', '200.00', '0.00', '/assets/img/items/1597044186Olmeca-Dark-Chocolate.jpegaOt3SBlZow.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Undefined', 'Mexico', 700, 40),
(2606, 11, 'Tijuana sweet heat', '200.00', '0.00', '/assets/img/items/1597044186Olmeca-Dark-Chocolate.jpegaOt3SBlZow.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Undefined', 'Mexico', 750, 40),
(2607, 11, 'Atec tequila', '200.00', '0.00', '/assets/img/items/1597044186Olmeca-Dark-Chocolate.jpegaOt3SBlZow.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Undefined', 'Mexico', 1, 38),
(2608, 11, 'T1 reposado', '200.00', '0.00', '/assets/img/items/1597044186Olmeca-Dark-Chocolate.jpegaOt3SBlZow.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Undefined', 'Mexico', 750, 40),
(2609, 11, 'T1 tequila blanco', '200.00', '0.00', '/assets/img/items/1597044186Olmeca-Dark-Chocolate.jpegaOt3SBlZow.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Undefined', 'Mexico', 750, 40),
(2610, 11, 'Jimador reposado', '200.00', '0.00', '/assets/img/items/1597044186Olmeca-Dark-Chocolate.jpegaOt3SBlZow.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Undefined', 'Mexico', 1, 40),
(2611, 11, 'El charro gold', '200.00', '0.00', '/assets/img/items/1597044186Olmeca-Dark-Chocolate.jpegaOt3SBlZow.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Undefined', 'Mexico', 750, 40),
(2612, 11, 'El charro silver', '200.00', '0.00', '/assets/img/items/1597044186Olmeca-Dark-Chocolate.jpegaOt3SBlZow.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Undefined', 'Mexico', 750, 40),
(2613, 11, 'Corralejo tequila anejo', '200.00', '0.00', '/assets/img/items/1597044186Olmeca-Dark-Chocolate.jpegaOt3SBlZow.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Undefined', 'Mexico', 1, 38),
(2614, 11, 'Milagro silver', '200.00', '0.00', '/assets/img/items/1597044186Olmeca-Dark-Chocolate.jpegaOt3SBlZow.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Undefined', 'Mexico', 700, 40),
(2615, 11, 'Milagro anejo', '200.00', '0.00', '/assets/img/items/1597044186Olmeca-Dark-Chocolate.jpegaOt3SBlZow.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Undefined', 'Mexico', 700, 40),
(2616, 6, 'Kenya orginal rose and cucumber tonic water', '200.00', '0.00', '/assets/img/items/1597044186Olmeca-Dark-Chocolate.jpegaOt3SBlZow.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Tonic Water', 'Kenya', 1, 0),
(2617, 6, 'Schweppes soda water', '200.00', '0.00', '/assets/img/items/1597044186schweppes-soda-water.jpegVe7F1Y9IUN.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Tonic Water', 'Kenya', 500, 0),
(2618, 6, 'Schweppes tonic water', '200.00', '0.00', '/assets/img/items/1597044186schweppes-tonic-water.jpeguG0LwG0GFE.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Tonic Water', 'Kenya', 500, 0),
(2619, 6, 'Fitch & leedes pink tonic', '200.00', '0.00', '/assets/img/items/1597044186schweppes-tonic-water.jpeguG0LwG0GFE.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Tonic Water', 'South Africa', 200, 0),
(2620, 12, 'Black & white whisky', '200.00', '0.00', '/assets/img/items/1597044186schweppes-tonic-water.jpeguG0LwG0GFE.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Black & White', 'Scotland', 750, 40),
(2621, 12, 'Glenfiddich 18 years', '200.00', '0.00', '/assets/img/items/1597044186glenfiddich-18-years.jpegsYtSc1BGQb.jpg', 0, 0, 0, '2020-08-10 14:08:06', '2020-08-10 14:08:06', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 750, 40),
(2622, 12, 'Glenfiddich 21 years', '200.00', '0.00', '/assets/img/items/1597044186glenfiddich-21-years.jpegnIyIAmRLEO.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 750, 40),
(2623, 12, 'Glenmorangie original', '200.00', '0.00', '/assets/img/items/1597044187glenmorangie-original.jpegxmgkaCsn1J.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Glenmorangie', 'Scotland', 1, 40),
(2624, 12, 'Glenmorangie lasanta', '200.00', '0.00', '/assets/img/items/1597044187glenmorangie-lasanta-.jpegLwpnmQkAyr.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Glenmorangie', 'Scotland', 750, 43),
(2625, 12, 'Glenmorangie quinta ruban', '200.00', '0.00', '/assets/img/items/1597044187glenmorangie-quinta-ruban.jpegWjaI1t92lT.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Glenmorangie', 'Scotlnad', 750, 46),
(2626, 12, 'Glenmorangie nectar dor 12 years', '200.00', '0.00', '/assets/img/items/1597044187glenmorangie-nectar-dor-12-years.jpegUVH9LOx2k1.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Glenmorangie', 'Scotland', 700, 46),
(2627, 12, 'Glenmorangie 18 years', '200.00', '0.00', '/assets/img/items/1597044187glenmorangie-18-years-.jpegEJopmQYrLy.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Glenmorangie', 'Scotland', 700, 43),
(2628, 12, 'Glenmorangie signet', '200.00', '0.00', '/assets/img/items/1597044187glenmorangie-signet.jpegzyESIbSXr7.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Glenmorangie', 'Scotland', 700, 46),
(2629, 12, 'Glenlivet founders reserve', '200.00', '0.00', '/assets/img/items/1597044187glenlivet-founders-reserve.jpegt0kHe4uhIk.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Glenlivet', 'Scotland', 750, 40),
(2630, 12, 'Glenlivet 12 years', '200.00', '0.00', '/assets/img/items/1597044187glenlivet-12-years.jpeg4DVHjmBjei.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Glenlivet', 'Scotland', 750, 40),
(2631, 12, 'Glenlivet 15 years', '200.00', '0.00', '/assets/img/items/1597044187glenlivet-15-years.jpeg1vb459MKqS.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Glenlivet', 'Scotland', 750, 43),
(2632, 12, 'Glenlivet 18 years', '200.00', '0.00', '/assets/img/items/1597044187glenlivet-18-years.jpeg7YjoeWItJR.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Glenlivet', 'Scotland', 700, 43),
(2633, 12, 'Glenlivet 25 years', '200.00', '0.00', '/assets/img/items/1597044187glenlivet-25-years.jpegToStTjlbhp.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Glenlivet', 'Scotland', 700, 43),
(2634, 12, 'Singleton sunray', '200.00', '0.00', '/assets/img/items/1597044187singleton-sunray.jpeg4eGVubGZAM.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Singleton', 'Scotland', 750, 40),
(2635, 12, 'Singleton talifire', '200.00', '0.00', '/assets/img/items/1597044187singleton-talifire.jpegF1u72FwiKl.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Singleton', 'Scotland', 750, 40),
(2636, 12, 'Caol ila 12 years', '200.00', '0.00', '/assets/img/items/1597044187caol-ila-12-years.jpegJ67n4aCeSi.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Caol Ila', 'Scotland', 750, 43),
(2637, 12, 'Cardhu 12 years', '200.00', '0.00', '/assets/img/items/1597044187cardhu-12-years.jpegzwrPRsEBcd.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Cardhu', 'Scotland', 700, 40),
(2638, 12, 'The yamazaki distillers reserve japanese single malt whisky', '200.00', '0.00', '/assets/img/items/1597044187the-yamazaki-single-malt.jpegKmoTWCJ7lr.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Yamazaki', 'Japan', 750, 43),
(2639, 12, 'Talisker 10 years', '200.00', '0.00', '/assets/img/items/1597044187talisker-10-years.jpeg12em8o1Qut.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Talisker', 'Scotland', 750, 45),
(2640, 12, 'Talisker storm', '200.00', '0.00', '/assets/img/items/1597044187talisker-storm.jpegSo0fsAaPSM.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Talisker', 'Scotland', 750, 45),
(2641, 12, 'The Glenrothes Select Reserve', '200.00', '0.00', '/assets/img/items/1597044187The-Glenrothes-Select-Reserve.jpegfNRCABuoYG.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Glenrothes', 'Scotland', 700, 40),
(2642, 12, 'Auchentoshan springwood', '200.00', '0.00', '/assets/img/items/1597044187auchentoshan-springwood.jpegIonId29SDR.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Auchetoshan', 'Scotland', 1, 40),
(2643, 12, 'Jameson select reserve', '200.00', '0.00', '/assets/img/items/1597044187jameson-select-reserve.jpegv3oMsB1Y4o.jpg', 0, 0, 0, '2020-08-10 14:08:07', '2020-08-10 14:08:07', '', NULL, 1, NULL, 'Jameson', '', 750, 0),
(2644, 12, 'Jura 16 years', '200.00', '0.00', '/assets/img/items/1597044187jura-16-years.jpeg8uFsGrrVFh.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Jura', 'Scotland', 1, 40),
(2645, 12, 'Jack daniels silver select', '200.00', '0.00', '/assets/img/items/1597044188jack-daniels-silver-select.jpegBwSOmuRuWf.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Jack Daniels', 'United States', 750, 50),
(2646, 12, 'Jack daniel single barrel', '200.00', '0.00', '/assets/img/items/1597044188jack-daniel-single-barrel.jpegfqypFuVJUc.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Jack Daniels', 'United States', 750, 45),
(2647, 12, 'Jim beam black tripple aged', '200.00', '0.00', '/assets/img/items/1597044188jim-black-tripple-aged.jpegz2YiTdGjYs.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Jim Beam', 'United States', 1, 43),
(2648, 12, 'Maker\'s mark', '200.00', '0.00', '/assets/img/items/1597044188jim-black-tripple-aged.jpegz2YiTdGjYs.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Maker\'s Mark', 'United States', 750, 45),
(2649, 12, 'Jim beam apple (liqueur)', '200.00', '0.00', '/assets/img/items/1597044188jim-bim-apple-(liqueur).jpegrBhlo4Wpfa.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Jim Beam', 'United States', 750, 35),
(2650, 12, 'Jim beam honey (liqueur)', '200.00', '0.00', '/assets/img/items/1597044188jim-bim-honey-(liqueur).jpeghuWrZ76h84.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Jim Beam', 'United States', 750, 35),
(2651, 12, 'Jim beam red stag (liqueur)', '200.00', '0.00', '/assets/img/items/1597044188jim-bim-red-stag-(liqueur).jpegrxPU022XeW.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Jim Beam', 'United States', 750, 35),
(2652, 12, 'Glenlivet 21 years', '200.00', '0.00', '/assets/img/items/1597044188glenlivet-21-years.jpeg4cgc23Q6L3.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Glenlivet', 'Scotland', 750, 43),
(2653, 12, 'Chivas regal 12 years', '200.00', '0.00', '/assets/img/items/1597044188chivas-12-years-.jpeggJEskpt5Gp.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Chivas Regal', 'Scotland', 750, 40),
(2654, 12, 'Chivas regal 18 years', '200.00', '0.00', '/assets/img/items/1597044188chivas-18-years.jpegwFQjBelStR.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Chivas Regal', 'Scotland', 750, 40),
(2655, 12, 'Chivas regal 12 years  4.5 Litres king size', '200.00', '0.00', '/assets/img/items/1597044188chivas-12-years-king-size.jpeg10h5xe1kl5.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Chivas Regal', 'Scotland', 5, 40),
(2656, 12, 'Chivas regal 25 years', '200.00', '0.00', '/assets/img/items/1597044188chivas-25-years.jpegjq4199NUTg.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Chivas Regal', 'Scotland', 750, 40),
(2657, 12, 'The famous grouse smoky black', '200.00', '0.00', '/assets/img/items/1597044188famous-grouse-smoky-black.jpegOFDS6YK7OF.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Famous Grouse', 'Scotland', 750, 40),
(2658, 12, 'Grants', '200.00', '0.00', '/assets/img/items/1597044188grants.jpegxWljw8VefG.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Grant\'s', 'Scotland', 750, 40),
(2659, 12, 'J&B rare', '200.00', '0.00', '/assets/img/items/1597044188grants.jpegxWljw8VefG.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'J&B', 'Scotland', 750, 40),
(2660, 12, 'Clynelish 14 years old', '200.00', '0.00', '/assets/img/items/1597044188clynelish-14-years-old.jpeguQmadN8h8j.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, '', '', 700, 0),
(2661, 12, 'Glenfiddich 19 years madeira cask', '200.00', '0.00', '/assets/img/items/1597044188Glenfiddich-19-years-madeira-cask.jpeg3Y61X6xAFp.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 700, 40),
(2662, 12, 'Glenfiddich 19 years bourbon cask', '200.00', '0.00', '/assets/img/items/1597044188Glenfiddich-19-years-bourbon-cask.jpegSaMmWjbN3B.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 700, 43),
(2663, 12, 'Glenkinchie 12 years', '200.00', '0.00', '/assets/img/items/1597044188glenkinchie-12-years.jpegJQbgI16jgy.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Glenkinchie', 'Scotland', 700, 43),
(2664, 12, 'The famous grouse  4.5 Litres king size', '200.00', '0.00', '/assets/img/items/1597044188famous-grouse-king-size.jpeg6uJATCNgfR.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Famous Grouse', 'Scotland', 5, 40);
INSERT INTO `temp_items` (`id`, `item_category_id`, `name`, `price`, `old_price`, `image`, `is_recommended`, `is_popular`, `is_new`, `created_at`, `updated_at`, `desc`, `placeholder_image`, `is_active`, `is_veg`, `brand`, `origin`, `quantity`, `alcohol`) VALUES
(2665, 12, 'Johnnie walker black lable  4.5 Litres king size', '200.00', '0.00', '/assets/img/items/1597044188johnnie-walker-black-lable-king-size.jpeg4EJmNTnydf.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 5, 40),
(2666, 12, 'Johnnie walker blue lable', '200.00', '0.00', '/assets/img/items/1597044188johnnie-walker-blue-lable.jpegEopOqRUTBl.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 750, 40),
(2667, 12, 'Glenfiddich 12 years', '200.00', '0.00', '/assets/img/items/1597044188glenfiddich-12-years.jpegRwDXhFthZ2.jpg', 0, 0, 0, '2020-08-10 14:08:08', '2020-08-10 14:08:08', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 750, 40),
(2668, 12, 'Glenfiddich 15 years', '200.00', '0.00', '/assets/img/items/1597044189Glenfiddich-15-years.jpegZVc6HWSN4G.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 750, 40),
(2669, 12, 'Jack daniel\'s old No. 7', '200.00', '0.00', '/assets/img/items/1597044189Glenfiddich-15-years.jpegZVc6HWSN4G.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Jack Daniels', 'United States', 1, 40),
(2670, 12, 'Johnnie walker black lable', '200.00', '0.00', '/assets/img/items/1597044189johnnie-walker-black-lable.jpegzOAEwu01QQ.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 1, 40),
(2671, 12, 'Johnnie walker gold label reserve', '200.00', '0.00', '/assets/img/items/1597044189johnnie-walker-gold-label-reserve.jpegPdjvh3mMft.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 750, 40),
(2672, 12, 'Johnnie walker green label', '200.00', '0.00', '/assets/img/items/1597044189johnnie-walker-green-label.jpegK2uDpU2YcH.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 750, 43),
(2673, 12, 'Johnnie walker platinum label', '200.00', '0.00', '/assets/img/items/1597044189johnnie-walker-platinum-label.jpegeeKmig2f3j.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Johnnie Walker', '', 1, 0),
(2674, 12, 'Johnnie walker red label 4.5 Litres king size', '200.00', '0.00', '/assets/img/items/1597044189johnnie-walker-red-label-king-size.jpeglAihIXBzW9.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 5, 40),
(2675, 12, 'Johnnie Walker X.R 21 years', '200.00', '0.00', '/assets/img/items/1597044189Johnnie-Walker-X.R-21-years.jpeg21fofTJq6L.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 700, 40),
(2676, 12, 'Teacher\'s', '200.00', '0.00', '/assets/img/items/1597044189Johnnie-Walker-X.R-21-years.jpeg21fofTJq6L.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Teacher\'s', 'Scotland', 750, 45),
(2677, 12, 'Vat 69', '200.00', '0.00', '/assets/img/items/1597044189vat-69.jpeg74HTqW6TDD.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'VAT 69', 'Scotland', 750, 40),
(2678, 12, 'Woodford reserve', '200.00', '0.00', '/assets/img/items/1597044189woodford-reserve.jpegdqJm05zwRx.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Woodford Reserve', 'United States', 1, 45),
(2679, 12, 'Jack daniels tennessee fire (Liqueur)', '200.00', '0.00', '/assets/img/items/1597044189jack-daniels-tennessee-fire.jpegNCAXFYYmDY.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Jack Daniels', 'United States', 750, 35),
(2680, 12, 'Jack daniel\'s tennessee honey (Liqueur)', '200.00', '0.00', '/assets/img/items/1597044189jack-daniels-tennessee-fire.jpegNCAXFYYmDY.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Jack Daniels', 'United States', 750, 35),
(2681, 12, 'Johnnie walker red label', '200.00', '0.00', '/assets/img/items/1597044189johnnie-walker-red-label.jpeghrWOEY57k1.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 750, 40),
(2682, 12, 'Tullamore dew', '200.00', '0.00', '/assets/img/items/1597044189tullamore-dew.jpeg8ZpbopKEpJ.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Tullamore', 'Ireland', 750, 40),
(2683, 12, 'Jameson black barrel', '200.00', '0.00', '/assets/img/items/1597044189jameson-black-barrel.jpegEGf3vYiWvw.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Jameson', 'Ireland', 750, 40),
(2684, 12, 'Jameson blender\'s dog', '200.00', '0.00', '/assets/img/items/1597044189jameson-black-barrel.jpegEGf3vYiWvw.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Jameson', 'Ireland', 750, 43),
(2685, 12, 'Jura superstition', '200.00', '0.00', '/assets/img/items/1597044189jura-superstition.jpegqhil69H16L.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Jura', 'Scotland', 1, 43),
(2686, 12, 'Aberlour 10 years', '200.00', '0.00', '/assets/img/items/1597044189aberlour-10-years.jpegWcB1lILfTw.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Aberlour', 'Scotland', 750, 40),
(2687, 12, 'Cragganmore 12 years', '200.00', '0.00', '/assets/img/items/1597044189cragganmore-12-years.jpegvNpkunT24v.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Cragganmore', 'Scotland', 750, 40),
(2688, 12, 'Highland park 12 years', '200.00', '0.00', '/assets/img/items/1597044189highland-park-12-years.jpege5QifeulHi.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Highland Park', 'Scotland', 750, 40),
(2689, 12, 'William lawson', '200.00', '0.00', '/assets/img/items/1597044189william-lawson.jpegmL2mlTqyto.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'William Lawson', 'Scotland', 750, 40),
(2690, 12, 'Singleton 12 years dufftown', '200.00', '0.00', '/assets/img/items/1597044189singleton-12-years-dufftown.jpegNmqD4JCWFo.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Singleton', 'Scotland', 750, 12),
(2691, 12, 'Nikka yoichi single malt', '200.00', '0.00', '/assets/img/items/1597044189nikka-yoichi-single-malt.jpegcJC4qehzZN.jpg', 0, 0, 0, '2020-08-10 14:08:09', '2020-08-10 14:08:09', '', NULL, 1, NULL, 'Nikka', 'Japan', 750, 45),
(2692, 12, 'King george v', '200.00', '0.00', '/assets/img/items/1597044189johnnie-walker-blue-label-king-george-v.jpegmwJ9zufkWn.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 700, 43),
(2693, 12, 'Nikka taketsuru pure malt', '200.00', '0.00', '/assets/img/items/1597044190nikka-taketsuru-pure-malt.jpegWpb0qDQJhn.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Nikka', 'Japan', 750, 43),
(2694, 12, 'The hakushu single malt', '200.00', '0.00', '/assets/img/items/1597044190the-hakushu-single-malt.jpegegbU36GDOY.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Hakushu', 'Japan', 750, 43),
(2695, 12, 'Hibiki suntory whisky', '200.00', '0.00', '/assets/img/items/1597044190hibiki-suntory-whisky.jpegfAo1mpgpON.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Hibiki', 'Japan', 750, 43),
(2696, 12, 'Chita suntory whisky', '200.00', '0.00', '/assets/img/items/1597044190chita-sunctory-whisky.jpegCkdxns8v3N.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Chita', 'Japan', 750, 43),
(2697, 12, 'Iwai traditional whisky', '200.00', '0.00', '/assets/img/items/1597044190iwai-traditional-whisky.jpegOc5jgVT4t3.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Iwai', 'Japan', 750, 40),
(2698, 12, 'Nikka taketsuru 12 years pure malt', '200.00', '0.00', '/assets/img/items/1597044190nikka-taketsure-12-years-pure-malt.jpegyMeH5137ve.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Nikka', 'Japan', 750, 40),
(2699, 12, 'Suntory whisky', '200.00', '0.00', '/assets/img/items/1597044190suntory-whisky.jpegpPB8ORPsRT.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Suntory', 'Japan', 750, 40),
(2700, 12, 'Auchentoshan heartwood', '200.00', '0.00', '/assets/img/items/1597044190auchentoshan-heartwood.jpeg4R0vCyc45s.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Auchetoshan', 'Scotland', 1, 43),
(2701, 12, 'Glenfiddich 26 years', '200.00', '0.00', '/assets/img/items/1597044190glenfiddich-26-years.jpegSejF2PmOUN.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 700, 43),
(2702, 12, 'Monkey shoulder', '200.00', '0.00', '/assets/img/items/1597044190monkey-shoulder.jpegQ1Es8c65nD.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Monkey Shoulder', 'Scotland', 750, 40),
(2703, 12, 'The famous grouse', '200.00', '0.00', '/assets/img/items/1597044190famous-grouse.jpegltHl6RMcJj.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Famous Grouse', 'Scotland', 750, 40),
(2704, 12, 'Ballantines', '200.00', '0.00', '/assets/img/items/1597044190ballantines.jpegQ9vNFwENRo.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Ballantines', 'Scotland', 750, 40),
(2705, 12, 'Jack daniels sinatra', '200.00', '0.00', '/assets/img/items/1597044190jack-daniels-sinatra.jpeg3DSraRXYkc.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Jack Daniels', 'United States', 750, 45),
(2706, 12, 'Johnnie walker odyssey', '200.00', '0.00', '/assets/img/items/1597044190johnnie-walker-odyssey.jpegSjuFobA9ho.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 700, 40),
(2707, 12, 'Johnnie walker 18 years', '200.00', '0.00', '/assets/img/items/1597044190johnnie-walker-18-years.jpegrayyBDteUD.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 750, 40),
(2708, 12, 'The snow grouse', '200.00', '0.00', '/assets/img/items/1597044190snow-grouse.jpegRf2L2zc5QG.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Famous Grouse', 'Undefined', 750, 0),
(2709, 12, 'Jim beam', '200.00', '0.00', '/assets/img/items/1597044190jim-bim.jpeg6F8Lki7eHc.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Jim Beam', 'United States', 1, 50),
(2710, 12, 'Laphroaig four oak', '200.00', '0.00', '/assets/img/items/1597044190laphroaig-four-oak.jpegy0oAVeYeTt.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Laphroaig', 'Scotland', 1, 40),
(2711, 12, 'Macallan 12 years fine oak', '200.00', '0.00', '/assets/img/items/1597044190macallan-12-years-fine-oak.jpegwKo48vpRKl.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Macallan', 'Scotland', 750, 40),
(2712, 12, 'Macallan 12 years sherry oak', '200.00', '0.00', '/assets/img/items/1597044190macallan-12-years-sherry-oak.jpegG6UYrhM732.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Macallan', 'Scotland', 750, 43),
(2713, 12, 'Macallan 15 years fine oak', '200.00', '0.00', '/assets/img/items/1597044190macallan-15-years-fine-oak.jpeg9uqxRPUJzz.jpg', 0, 0, 0, '2020-08-10 14:08:10', '2020-08-10 14:08:10', '', NULL, 1, NULL, 'Macallan', 'Scotland', 750, 43),
(2714, 12, 'Macallan 18 years fine oak', '200.00', '0.00', '/assets/img/items/1597044190macallan-18-years-fine-oak.jpeglXPM62YVyE.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Macallan', 'Scotland', 750, 43),
(2715, 12, 'Macllan makers edition', '200.00', '0.00', '/assets/img/items/1597044191macllan-makers-edition.jpegIpy48l0XvC.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Macallan', 'Undefined', 750, 0),
(2716, 12, 'Macallan reserve estate', '200.00', '0.00', '/assets/img/items/1597044191macallan-reserve-estate.jpegQUeomTjXCT.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Macallan', 'Scotland', 750, 45),
(2717, 12, 'The balvenie doublewood 12 years', '200.00', '0.00', '/assets/img/items/1597044191the-balvenie-doublewood-12-years.jpeg9HXldb5ooC.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Balvenie', 'Scotland', 750, 43),
(2718, 12, 'The balvenie tripple cask 12 years', '200.00', '0.00', '/assets/img/items/1597044191the-balvenie-tripple-cask-12-years.jpeg3GMnS3gtv6.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Balvenie', 'Scotland', 1, 40),
(2719, 12, 'The balvenie caribbean cask 14 years', '200.00', '0.00', '/assets/img/items/1597044191the-balvenie-caribbean-cask-14-years.jpegAepos2T506.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Balvenie', 'Scotland', 750, 43),
(2720, 12, 'The balvenie doublewood 17 years', '200.00', '0.00', '/assets/img/items/1597044191the-balvenie-doublewood-17-years.jpegFHgLYMoOrU.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Balvenie', 'Scotland', 750, 43),
(2721, 12, 'The balvenie portwood 21 years', '200.00', '0.00', '/assets/img/items/1597044191the-balvenie-portwood-21-years.jpeg7lIwiDPkCb.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Balvenie', 'Scotland', 750, 40),
(2722, 12, 'Glenfiddich 25 years', '200.00', '0.00', '/assets/img/items/1597044191Glenfiddich-25-years.jpeg1ecvIkUJqz.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 700, 43),
(2723, 12, 'Macallan rare cask black', '200.00', '0.00', '/assets/img/items/1597044191macallan-rare-cask-black.jpegPU9nYaDmkT.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Macallan', 'Scotland', 700, 45),
(2724, 12, 'Hibiki 17 years', '200.00', '0.00', '/assets/img/items/1597044191Hibiki-17-years-.jpegF2dcSN9pnc.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Hibiki', 'Japan', 750, 43),
(2725, 12, 'Canadian club', '200.00', '0.00', '/assets/img/items/1597044191canadian-club.jpegUOnzjYpwLi.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Canadian Club', 'Canada', 1, 40),
(2726, 12, 'Jameson caskmates', '200.00', '0.00', '/assets/img/items/1597044191jameson-caskmates.jpegJCPGDibWj3.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Jameson', 'Ireland', 750, 40),
(2727, 12, 'Teeling whiskey single malt', '200.00', '0.00', '/assets/img/items/1597044191teeling-whiskey.jpegLcvdHCFWgG.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Teeling Whiskey', 'Ireland', 750, 46),
(2728, 12, 'Teeling whiskey small batch', '200.00', '0.00', '/assets/img/items/1597044191teeling-whiskey-small-batch.jpegBQbAk4fDqs.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Teeling Whiskey', 'Ireland', 750, 46),
(2729, 12, 'Powers gold label', '200.00', '0.00', '/assets/img/items/1597044191powers-gold-label.jpeglmlRKn5rH0.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Powers', 'Ireland', 1, 40),
(2730, 12, 'Bushmills original', '200.00', '0.00', '/assets/img/items/1597044191bushmills-original.jpeg9wj0furpzh.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Bushmills', 'Ireland', 1, 40),
(2731, 12, 'Macallan rare cask', '200.00', '0.00', '/assets/img/items/1597044191Macallan-Rare-Cask.jpegU0fl2AiWxP.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Macallan', 'Scotland', 700, 43),
(2732, 12, 'Jura 10 years', '200.00', '0.00', '/assets/img/items/1597044191jura-10-years.jpegDWtENBeEgR.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Jura', 'Scotland', 750, 40),
(2733, 12, 'Jura 21 years', '200.00', '0.00', '/assets/img/items/1597044191jura-21-years.jpegR7df42itGC.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Jura', 'Scotland', 750, 46),
(2734, 12, 'Jura prophecy', '200.00', '0.00', '/assets/img/items/1597044191jura-prophecy-.jpegm9khTm1239.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Jura', 'Scotland', 1, 46),
(2735, 12, 'Dimple 15', '200.00', '0.00', '/assets/img/items/1597044191dimple-15.jpegvd2SbU8eCB.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Dimple', 'Scotland', 1, 40),
(2736, 12, 'Ballantines 12 years', '200.00', '0.00', '/assets/img/items/1597044191ballantines-12-years.jpeg5aAJ7hhofK.jpg', 0, 0, 0, '2020-08-10 14:08:11', '2020-08-10 14:08:11', '', NULL, 1, NULL, 'Ballantines', 'Scotland', 750, 40),
(2737, 12, 'Glen grant', '200.00', '0.00', '/assets/img/items/1597044191glen-grant.jpeg8I9RFXvR0o.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'GlenGrant', 'Scotland', 750, 40),
(2738, 12, 'Chivas regal royal salute 21 years', '200.00', '0.00', '/assets/img/items/1597044192chivas-regal-royal-salute-21-years.jpegfZWSUDN1ba.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Chivas Regal', 'Scotland', 700, 40),
(2739, 12, 'Ballantines 21 years', '200.00', '0.00', '/assets/img/items/1597044192ballantines-21-years.jpegbxE2UTfOtD.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Ballantines', 'Scotland', 700, 43),
(2740, 12, 'Glen silvers', '200.00', '0.00', '/assets/img/items/1597044192glen-silvers.jpegFSEXTp8B0C.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Glen Silvers', 'Scotland', 750, 40),
(2741, 12, 'Makers mark 46', '200.00', '0.00', '/assets/img/items/1597044192makers-mark-46.jpeg1vx5OVAVSe.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Maker\'s Mark', 'United States', 700, 47),
(2742, 12, 'Knob creek Kentucky straight bourbon', '200.00', '0.00', '/assets/img/items/1597044192knob-creek.jpeg5IgZ8lM8Qi.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Knob Creek', 'United States', 750, 50),
(2743, 12, 'Benchmark bourbon whiskey', '200.00', '0.00', '/assets/img/items/1597044192benchmark-bourbon-whiskey.jpegspb9JZXtfS.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Benchmark', 'United States', 700, 40),
(2744, 12, 'Four roses bourbon whiskey', '200.00', '0.00', '/assets/img/items/1597044192four-roses-bourbon-whiskey.jpeg4DKdFCaB0n.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Four Roses', 'United States', 750, 45),
(2745, 12, 'Macallant amber', '200.00', '0.00', '/assets/img/items/1597044192Macallant-Amber.jpegRy6C5gzg9J.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Macallan', 'Scotland', 750, 40),
(2746, 12, 'Ardbeg 10 years', '200.00', '0.00', '/assets/img/items/1597044192ardbeg-10-years-.jpegxrTjjYm1uR.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Ardbeg', 'Scotland', 1, 46),
(2747, 12, 'Glenlivet master distiller\'s', '200.00', '0.00', '/assets/img/items/1597044192ardbeg-10-years-.jpegxrTjjYm1uR.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Glenlivet', 'Scotland', 750, 40),
(2748, 12, 'Johnnie walker white label game of thrones', '200.00', '0.00', '/assets/img/items/1597044192johnnie-walker-white-label-game-of-thrones.jpegLUg6sExzWt.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Johnnie Walker', 'Undefined', 1, 0),
(2749, 12, 'Aberlour abunadh', '200.00', '0.00', '/assets/img/items/1597044192aberlour-abunadh.jpegvCsOGWKmO1.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Aberlour', 'Scotland', 750, 59),
(2750, 12, 'Aberlour 12 years', '200.00', '0.00', '/assets/img/items/1597044192aberlour-12-years.jpegtrpzh5xmf1.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Aberlour', 'Scotland', 750, 40),
(2751, 12, 'Aberlour 16 years', '200.00', '0.00', '/assets/img/items/1597044192aberlour-16-years.jpeg5UI0oFzMQw.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Aberlour', 'Scotland', 750, 43),
(2752, 12, 'Aberlour 18 years', '200.00', '0.00', '/assets/img/items/1597044192aberlour-18-years.jpegguD7jq4Fzk.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Aberlour', 'Scotland', 750, 43),
(2753, 12, 'Johnnie walker blenders batch red rye finish', '200.00', '0.00', '/assets/img/items/1597044192johnnie-walker-blenders-batch-red-rye-finish.jpegI7RisneolP.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotlands', 1, 40),
(2754, 12, 'Hibiki master select limited edition', '200.00', '0.00', '/assets/img/items/1597044192hibiki-master-select-limited-edition.jpegSWbSlD9k2X.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Hibiki', 'Japan', 700, 43),
(2755, 12, 'Aberfeldy 12 years', '200.00', '0.00', '/assets/img/items/1597044192aberfeldy-12-years.jpegCMhiKHtAlr.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Aberfeldy', 'Scotland', 1, 40),
(2756, 12, 'Aberfeldy 18 years', '200.00', '0.00', '/assets/img/items/1597044192aberfeldy-18-years-.jpeg057tRMftgl.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Aberfeldy', 'Scotland', 750, 40),
(2757, 12, 'Johnnie walker & sons private collection', '200.00', '0.00', '/assets/img/items/1597044192aberfeldy-18-years-.jpeg057tRMftgl.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 700, 46),
(2758, 12, 'Jameson gold reserve', '200.00', '0.00', '/assets/img/items/1597044192jameson-gold-reserve.jpegwumbk02yPV.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Jameson', 'Ireland', 700, 40),
(2759, 12, 'Macallan oscuro', '200.00', '0.00', '/assets/img/items/1597044192macallan-escuro.jpeglBsQ6YJlCD.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Macallan', 'Scotland', 700, 40),
(2760, 12, 'The glenrothes john ramsay', '200.00', '0.00', '/assets/img/items/1597044192the-glenrothes-john-ramsay.jpegzaq8ZVtnkD.jpg', 0, 0, 0, '2020-08-10 14:08:12', '2020-08-10 14:08:12', '', NULL, 1, NULL, 'Glenrothes', 'Scotland', 700, 46),
(2761, 12, 'Chivas regal extra', '200.00', '0.00', '/assets/img/items/1597044192chivas-regal-extra.jpeg2oNfBA0LEu.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Chivas Regal', 'Scotland', 750, 40),
(2762, 12, 'Singleton glendullan 18 years', '200.00', '0.00', '/assets/img/items/1597044193singleton-glendullan-18-years-.jpegcesIFQwxUJ.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Singleton', 'Scotland', 1, 40),
(2763, 12, 'Singleton glendullan double matured', '200.00', '0.00', '/assets/img/items/1597044193singleton-glendullan-double-matured.jpegs0Eqqt1SXx.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Singleton', 'Scotland', 1, 40),
(2764, 12, 'Singleton dufftown artisan', '200.00', '0.00', '/assets/img/items/1597044193singleton-dufftown-artisan.jpegCnOFxD4YKW.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Singleton', 'Scotland', 1, 40),
(2765, 12, 'Singleton dufftown trinite', '200.00', '0.00', '/assets/img/items/1597044193singleton-dufftown-trinite.jpegV7r5WKRCMW.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Singleton', 'Scotland', 1, 40),
(2766, 12, 'The balvenie 15 years single barrel sherry cask', '200.00', '0.00', '/assets/img/items/1597044193balvenie-15-years-single-barrel-sherry-cask.jpegkc1n0wsMLX.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Balvenie', 'Scotland', 700, 47),
(2767, 12, 'The balvenie 16 years triple cask', '200.00', '0.00', '/assets/img/items/1597044193balvenie-16-years-triple-cask.jpeg3ECOL5T7XW.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Balvenie', 'Scotland', 700, 40),
(2768, 12, 'Bulleit bourbon', '200.00', '0.00', '/assets/img/items/1597044193bulleit-bourbon.jpegqxkYxPds47.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Bulleit Bourbon', 'United States', 700, 45),
(2769, 12, 'Laphroaig px cask', '200.00', '0.00', '/assets/img/items/1597044193laphroaig-ps-cask.jpegrP76fnd3Oa.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Laphroaig', 'Scotland', 1, 48),
(2770, 12, 'Laphroaig qa cask', '200.00', '0.00', '/assets/img/items/1597044193laphroaig-qa-cask.jpeg310vQpDBts.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Laphroaig', 'Scotland', 1, 40),
(2771, 12, 'Laphroaig 10 years', '200.00', '0.00', '/assets/img/items/1597044193laphroaig-10-years.jpegQnKg6PKYss.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Laphroaig', 'Scotland', 750, 40),
(2772, 12, 'Laphroaig quarter cask', '200.00', '0.00', '/assets/img/items/1597044193laphroaig-quarter-cask.jpegiscpCiCOaJ.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Laphroaig', 'Scotland', 750, 48),
(2773, 12, 'Glenfiddich IPA edition', '200.00', '0.00', '/assets/img/items/1597044193Glenfiddich-IPA-edition.jpeg1ecNvwVrI7.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 700, 43),
(2774, 12, 'Gentleman jack', '200.00', '0.00', '/assets/img/items/1597044193gentleman-jack.jpegC8JgoDck1p.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Jack Daniels', 'United States', 750, 40),
(2775, 12, 'Passport scotch', '200.00', '0.00', '/assets/img/items/1597044193passport-scotch.jpegf2pi2g3lGW.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Passport Scotch', 'Scotland', 750, 40),
(2776, 12, 'Ballantines 17 years', '200.00', '0.00', '/assets/img/items/1597044193ballantines-17-years.jpegthHxeZJet4.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Ballantines', 'Scotland', 750, 43),
(2777, 12, 'Macallan select oak', '200.00', '0.00', '/assets/img/items/1597044193macallan-select-oak.jpeguLjj6NK02o.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Macallan', 'Scotland', 1, 40),
(2778, 12, 'Jameson', '200.00', '0.00', '/assets/img/items/1597044193jameson-.jpegzX8i0CjNCR.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Jameson', 'Ireland', 750, 40),
(2779, 12, 'Jameson coopers croze', '200.00', '0.00', '/assets/img/items/1597044193jameson-coopers-croze.jpegqkUe2ViEiY.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Jameson', 'Ireland', 750, 40),
(2780, 12, 'Jameson crested', '200.00', '0.00', '/assets/img/items/1597044193jameson-crested.jpegFRBsE5pDOY.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Jameson', 'Ireland', 750, 40),
(2781, 12, 'Jameson  4.5 Litres king size', '200.00', '0.00', '/assets/img/items/1597044193jameson-king-size.jpegHx3ff5wSia.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Jameson', 'Ireland', 5, 40),
(2782, 12, 'Pure malt red nikka whisky', '200.00', '0.00', '/assets/img/items/1597044193pure-malt-red-nikka-whisky.jpegMwsbtAzMIZ.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Nikka', 'Japan', 500, 43),
(2783, 12, 'Pure malt black Nikka whisky', '200.00', '0.00', '/assets/img/items/1597044193pure-malt-black-Nikka-whisky.jpegDCD8EnAUUf.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Nikka', 'Japan', 500, 43),
(2784, 12, 'Johnnie walker double black', '200.00', '0.00', '/assets/img/items/1597044193Double-Black.jpeg4kdJv6qHp4.jpg', 0, 0, 0, '2020-08-10 14:08:13', '2020-08-10 14:08:13', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 1, 40),
(2785, 12, 'Lagavulin 16 years', '200.00', '0.00', '/assets/img/items/1597044193lagavulin-16-years-.jpegdWIV3BxDDV.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Lagavulin', 'Scotland', 750, 43),
(2786, 12, 'Ardmore legacy', '200.00', '0.00', '/assets/img/items/1597044194ardmore-.jpeg4HR5u90Dzl.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Ardmore', 'Scotland', 750, 40),
(2787, 12, 'Dalwhinnie 15 years', '200.00', '0.00', '/assets/img/items/1597044194dalwhinnie-15-years.jpegGG3qy3o5H5.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Dalwhinnie', 'Scotland', 700, 43),
(2788, 12, 'Oban 14 years', '200.00', '0.00', '/assets/img/items/1597044194oban-14-years.jpeg6r4dpwdks1.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Oban', 'Scotland', 750, 43),
(2789, 12, 'Bowmore 12 years', '200.00', '0.00', '/assets/img/items/1597044194bowmore-12-years.jpegC9qRrzIViY.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Bowmore', 'Scotland', 750, 40),
(2790, 12, 'Virginia black', '200.00', '0.00', '/assets/img/items/1597044194virginia-black.jpege09G7HKqjG.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Virginia Black', 'United States', 750, 40),
(2791, 12, 'Wild turkey', '200.00', '0.00', '/assets/img/items/1597044194wild-turkey.jpegoNP3nDRUR3.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Wild Turkey', 'United States', 750, 50),
(2792, 12, 'Highland park sigurd', '200.00', '0.00', '/assets/img/items/1597044194highland-park-sigurd.jpegMxbStSWyDY.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Highland Park', '', 700, 0),
(2793, 12, 'Cutty sark 25 years', '200.00', '0.00', '/assets/img/items/1597044194cutty-sark-25-years.jpegGpCv1VL2Fl.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Cutty Sark', '', 700, 0),
(2794, 12, 'Cutty sark', '200.00', '0.00', '/assets/img/items/1597044194cutty-sark.jpeg1DUg4DNScF.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Cutty Sark', 'Scotland', 750, 40),
(2795, 12, 'Dewars 15 years', '200.00', '0.00', '/assets/img/items/1597044194dewars-15-years.jpegGckFjHGX1s.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Dewar\'s', '', 750, 0),
(2796, 12, 'Dewar\'s 12 years', '200.00', '0.00', '/assets/img/items/1597044194dewars-15-years.jpegGckFjHGX1s.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Dewar\'s', 'Scotland', 750, 40),
(2797, 12, 'Best whisky', '200.00', '0.00', '/assets/img/items/1597044194best-whisky.jpeguVtiX3Un10.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Best Whisky', 'South Africa', 750, 40),
(2798, 12, 'Bond 7', '200.00', '0.00', '/assets/img/items/1597044194bond-7.jpegJlai624iu1.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Bond 7', 'South Africa', 750, 40),
(2799, 12, 'Whyte & mackay', '200.00', '0.00', '/assets/img/items/1597044194bond-7.jpegJlai624iu1.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Whyte & Mackay', 'Scotland', 750, 40),
(2800, 12, 'Cardhu gold reserve', '200.00', '0.00', '/assets/img/items/1597044194cardhu-gold-reserve.jpegQWcTFmUYKE.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Cardhu', '', 700, 0),
(2801, 12, 'Dewars white label', '200.00', '0.00', '/assets/img/items/1597044194dewars-white-label.jpegtirPCYVIWj.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Dewar\'s', '', 750, 0),
(2802, 12, 'Famous grouse 12', '200.00', '0.00', '/assets/img/items/1597044194famous-grouse-12.jpegjsIopW5eyg.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Famous Grouse', '', 750, 0),
(2803, 12, 'Rampur select cask', '200.00', '0.00', '/assets/img/items/1597044194rampur-select-single-malt-Indian-whisky.jpegoNiYK1Xrnz.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Rampur', 'India', 700, 43),
(2804, 12, 'Dalmore 12 years', '200.00', '0.00', '/assets/img/items/1597044194dalmore-12-years.jpegT5zpdtr6lb.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Dalmore', 'Scotland', 750, 40),
(2805, 12, 'Dalmore 15 years', '200.00', '0.00', '/assets/img/items/1597044194dalmore-15-years.jpegIAmGW0tblJ.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Dalmore', 'Scotland', 700, 40),
(2806, 12, 'Dalmore 18 years', '200.00', '0.00', '/assets/img/items/1597044194dalmore-18-years.jpegoV37aZj7Sm.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Dalmore', 'Scotland', 700, 43),
(2807, 12, 'Dalmore cigar malt', '200.00', '0.00', '/assets/img/items/1597044194dalmore-cigar-malt.jpegMwkR60ziGw.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Dalmore', 'Scotland', 700, 40),
(2808, 12, 'Glengoyne 10 years', '200.00', '0.00', '/assets/img/items/1597044194glengoyne-10-years.jpegxFYPzP6ZQL.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Glengoyne', 'Scotland', 700, 40),
(2809, 12, 'Harrington', '200.00', '0.00', '/assets/img/items/1597044194harrington.jpegDGuzQEWvUO.jpg', 0, 0, 0, '2020-08-10 14:08:14', '2020-08-10 14:08:14', '', NULL, 1, NULL, 'Harrington', 'Scotland', 750, 40),
(2810, 12, 'Knob creek straight rye', '200.00', '0.00', '/assets/img/items/1597044194knob-creek-straight-rye.jpegc2ByKNdbM2.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Knob Creek', 'United States', 700, 50),
(2811, 12, 'Wild turkey american honey', '200.00', '0.00', '/assets/img/items/1597044195wild-turkey-american-honey.jpeg0dhajwu1H1.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Wild Turkey', 'United States', 750, 36),
(2812, 12, 'Auchetoshan american oak', '200.00', '0.00', '/assets/img/items/1597044195auchetoshan-american-oak.jpegkNrnd0npYN.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Auchetoshan', 'Scotland', 750, 40),
(2813, 12, 'Johnnie walker explorers club collection the gold route', '200.00', '0.00', '/assets/img/items/1597044195johnnie-walker-explorers-club-collection-the-gold-route-.jpegu4RGm1rzql.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 750, 43),
(2814, 12, 'Aberfeldy 21 years', '200.00', '0.00', '/assets/img/items/1597044195aberfeldy-21-years.jpeg3FO5DVoZUT.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Aberfeldy', 'Scotland', 700, 40),
(2815, 12, 'Grants 25 years', '200.00', '0.00', '/assets/img/items/1597044195grants-25-years.jpegkcdYAFUoIp.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Grant\'s', 'Scotland', 700, 40),
(2816, 12, 'Grants 8 years', '200.00', '0.00', '/assets/img/items/1597044195grants-8-years.jpegIHR0ZfnwgW.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Grant\'s', 'Scotland', 1, 40),
(2817, 12, 'Grants select reserve', '200.00', '0.00', '/assets/img/items/1597044195grants-select-reserve.jpeg10IDIDzNIX.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Grant\'s', '', 750, 0),
(2818, 12, 'Grants  4.5 Litres king size', '200.00', '0.00', '/assets/img/items/1597044195grants-king-size.jpegymJ1bG8jaj.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Grant\'s', 'Scotland', 5, 40),
(2819, 12, 'Aberfeldy 16 years', '200.00', '0.00', '/assets/img/items/1597044195aberfeldy-16-years.jpegD9WruyLLiC.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Aberfeldy', 'Scotland', 700, 40),
(2820, 12, 'Crown Royal Canadian Whisky', '200.00', '0.00', '/assets/img/items/1597044195Crown-Royal-Canadian-Whisky.jpegdOn6X7hKHW.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Crown Royal', 'Canada', 1, 40),
(2821, 12, 'Sir edwards 4.5 litres king size', '200.00', '0.00', '/assets/img/items/1597044195sir-edwards-4.5-litres-king-size.jpegPtzCxd21WX.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Sir Edwards', 'Scotland', 5, 40),
(2822, 12, 'Highland park 18', '200.00', '0.00', '/assets/img/items/1597044195highland-park-18.jpegtYOpW9HYuB.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Highland Park', 'Scotland', 750, 43),
(2823, 12, 'Chivas regal 15 years XV', '200.00', '0.00', '/assets/img/items/1597044195chivas-regal-15-years-XV.jpegMjAPepFo1i.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Chivas Regal', 'Scotland', 750, 40),
(2824, 12, 'Johnnie walker explorers club collection the adventurer', '200.00', '0.00', '/assets/img/items/1597044195Johnnie-walker-explorers-club-collection-the-adventurer.jpegZOXszQxYqM.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 700, 40),
(2825, 12, 'Jack daniels master distillers no 2', '200.00', '0.00', '/assets/img/items/1597044195jack-daniels-master-distillers-no-2.jpegQbsRkY5oVk.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Jack Daniels', 'United States', 700, 40),
(2826, 12, 'Hakushu 12 years japanese whisky', '200.00', '0.00', '/assets/img/items/1597044195hakushu-12-years-japanese-whisky.jpeglzwBJ3asLY.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Hakushu', 'Japan', 750, 43),
(2827, 12, 'Bushmills 10 years', '200.00', '0.00', '/assets/img/items/1597044195bushmills-10-years.jpegPErGILR6oZ.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Bushmills', 'Ireland', 750, 40),
(2828, 12, 'Bushmills black bush', '200.00', '0.00', '/assets/img/items/1597044195bushmills-black-bush.jpegpLzMqjWX2p.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Bushmills', 'Ireland', 750, 40),
(2829, 12, 'Glenfiddich 21 years winter edition', '200.00', '0.00', '/assets/img/items/1597044195glenfiddich-21-years-winter-edition.jpegeKJ7NCKF7g.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 700, 43),
(2830, 12, 'Glenfiddich fire and cane', '200.00', '0.00', '/assets/img/items/1597044195glenfiddich-fire-and-cane.jpegQ4zF63lQlF.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 700, 43),
(2831, 12, 'Glenfiddich project xx', '200.00', '0.00', '/assets/img/items/1597044195glenfiddich-project-xx.jpegUKzzYPBa2p.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 750, 47),
(2832, 12, 'The macallan no. 6', '200.00', '0.00', '/assets/img/items/1597044195the-macallan-no.-6.jpeg0kte5NCToe.jpg', 0, 0, 0, '2020-08-10 14:08:15', '2020-08-10 14:08:15', '', NULL, 1, NULL, 'Macallan', 'Scotland', 700, 43),
(2833, 12, 'Glenlivet nadurra', '200.00', '0.00', '/assets/img/items/1597044195glenlivet-nadurra.jpeg8hja7UDlLt.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Glenlivet', 'Scotland', 1, 40),
(2834, 12, 'Dewars 18', '200.00', '0.00', '/assets/img/items/1597044196dewars-18.jpegoAgU2Da1P8.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Dewar\'s', 'Scotland', 750, 40),
(2835, 12, 'Jura 18', '200.00', '0.00', '/assets/img/items/1597044196jura-18.jpegmLsSkZYwbC.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Jura', 'Scotland', 700, 44),
(2836, 12, 'Jura 12', '200.00', '0.00', '/assets/img/items/1597044196jura-12.jpegHpGSy56IN6.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Jura', 'Scotland', 750, 40),
(2837, 12, 'Jura 16', '200.00', '0.00', '/assets/img/items/1597044196jura-16.jpegKGgyXuaaV3.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Jura', 'Scotland', 1, 43),
(2838, 12, 'Bruichladdich Octomore 07.2 5 Year', '200.00', '0.00', '/assets/img/items/1597044196Bruichladdich-Octomore-07.2-5-Year.jpeg0sGeL9zeeg.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Octomore', 'Scotland', 700, 59),
(2839, 12, 'Scapa 16 years', '200.00', '0.00', '/assets/img/items/1597044196scapa-16-years.jpegbb5lgU5xQx.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Scapa', 'Scotland', 700, 40),
(2840, 12, 'Highland park einar', '200.00', '0.00', '/assets/img/items/1597044196highland-park-einar.jpegBQxDRyJrXE.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Highland Park', 'Scotland', 1, 40),
(2841, 12, 'Macallan terra', '200.00', '0.00', '/assets/img/items/1597044196macallan-terra.jpegpTAioiNzPK.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Macallan', 'Scotland', 700, 44),
(2842, 12, 'Macallan lumina', '200.00', '0.00', '/assets/img/items/1597044196macallan-lumina.jpegsXNh10JURZ.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Macallan', 'Scotland', 700, 41),
(2843, 12, 'Caol ila 15 years', '200.00', '0.00', '/assets/img/items/1597044196caol-ila-15-years.jpegOWadY8T8Vg.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Caol Ila', 'Scotland', 700, 59),
(2844, 12, 'Nikka all malt whisky', '200.00', '0.00', '/assets/img/items/1597044196nikka-all-malt-whisky.jpegh84bpVJOvb.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Nikka', 'Japan', 700, 40),
(2845, 12, 'Nikka coffey malt whisky', '200.00', '0.00', '/assets/img/items/1597044196nikka-coffey-malt-whisky.jpegbzNwe0oGjy.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Nikka', 'Japan', 700, 45),
(2846, 12, 'Nikka coffey grain whisky', '200.00', '0.00', '/assets/img/items/1597044196nikka-coffey-grain-whisky.jpegTDB6a0rBdq.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Nikka', 'Japan', 700, 43),
(2847, 12, 'Buffalo trace kentucky straight bourbon whiskey', '200.00', '0.00', '/assets/img/items/1597044196buffalo-trace-kentucky-straight-bourbon-whiskey.jpegA1irDIE1b7.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Buffalo Trace', 'United States', 750, 45),
(2848, 12, 'Eagle rare Kentucky straight bourbon whiskey', '200.00', '0.00', '/assets/img/items/1597044196eagle-rare-Kentucky-straight-bourbon-whiskey.jpeg6Exigu9ycw.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Eagle Rare', 'United States', 1, 45),
(2849, 12, 'Johnnie Walker game of thrones limited edition song of fire', '200.00', '0.00', '/assets/img/items/1597044196Johnnie-Walker-game-of-thrones-limited-edition-song-of-fire.jpegiq0bFUUzwZ.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 750, 41),
(2850, 12, 'Johnnie Walker game of thrones limited edition song of ice', '200.00', '0.00', '/assets/img/items/1597044196Johnnie-Walker-game-of-thrones-limited-edition-song-of-ice.jpeglqxCD2XM9e.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Jack Daniels', 'United States', 700, 40),
(2851, 12, 'Kamiki whisky', '200.00', '0.00', '/assets/img/items/1597044196kamiki-whisky.jpegdcX9ZNm3ja.jpg', 0, 0, 0, '2020-08-10 14:08:16', '2020-08-10 14:08:16', '', NULL, 1, NULL, 'Kamiki', 'Japan', 500, 48),
(2852, 12, 'Nikka super rare old', '200.00', '0.00', '/assets/img/items/1597044196nikka-super-rare-old-.jpegdGw8cA9I3g.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Nikka', 'Japan', 700, 43),
(2853, 12, 'The naked grouse', '200.00', '0.00', '/assets/img/items/1597044197the-naked-grouse.jpegeY7oPh8NB9.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Famous Grouse', 'Scotland', 700, 40),
(2854, 12, 'Singleton dufftown 15 years', '200.00', '0.00', '/assets/img/items/1597044197singleton-dufftown-15-years.jpegbVpRizO8MU.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Singleton', 'Scotland', 750, 40),
(2855, 12, 'Singleton dufftown 18 years', '200.00', '0.00', '/assets/img/items/1597044197singleton-dufftown-18-years.jpegl8YgsA51OC.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Singleton', 'Scotland', 750, 40),
(2856, 12, 'Talisker 18 years', '200.00', '0.00', '/assets/img/items/1597044197talisker-18-years.jpegIAdT54cAgL.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Talisker', 'Scotland', 1, 40),
(2857, 12, 'Smokehead extra rare', '200.00', '0.00', '/assets/img/items/1597044197smokehead-extra-rare.jpegqgJvbaUJHM.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Smokehead', 'Scotland', 1, 40),
(2858, 12, 'Scapa the orcadian skiren', '200.00', '0.00', '/assets/img/items/1597044197scapa-the-orcadian-skiren.jpegQHYbn6ZPqO.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Scapa', 'Scotland', 750, 40),
(2859, 12, 'Omar bourbon cask single malt whisky', '200.00', '0.00', '/assets/img/items/1597044197omar-bourbon-cask-single-malt-whisky.jpegARrKuA90r7.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Omar', 'Taiwan', 700, 40),
(2860, 12, 'Omar sherry cask single malt whisky', '200.00', '0.00', '/assets/img/items/1597044197omar-sherry-cask-single-malt-whisky.jpegeytoOyo6z3.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Omar', 'Taiwan', 700, 46),
(2861, 12, 'Old smuggler', '200.00', '0.00', '/assets/img/items/1597044197old-smuggler.jpeg9FzA4gG5Ho.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Old Smuggler', 'Scotland', 750, 40),
(2862, 12, 'Marshall\'s bourbon whiskey', '200.00', '0.00', '/assets/img/items/1597044197old-smuggler.jpeg9FzA4gG5Ho.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Marshall\'s', 'United States', 700, 40),
(2863, 12, 'J&B reserve 15 years', '200.00', '0.00', '/assets/img/items/1597044197old-smuggler.jpeg9FzA4gG5Ho.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'J&B', 'Scotland', 1, 40),
(2864, 12, 'Glen turner 12 years', '200.00', '0.00', '/assets/img/items/1597044197glen-turner-12-years.jpegRnhhSjKmMI.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Glen Turner', 'Scotland', 700, 40),
(2865, 12, 'Glen silvers 12 years', '200.00', '0.00', '/assets/img/items/1597044197glen-silvers-12-years.jpegL1uaL4pUW1.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Glen Silvers', '', 750, 0),
(2866, 12, 'Glenfiddich select cask', '200.00', '0.00', '/assets/img/items/1597044197glenfiddich-select-cask.jpegUyVmVYEPq6.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 1, 40),
(2867, 12, 'Glenfiddich 30 years', '200.00', '0.00', '/assets/img/items/1597044197glenfiddich-30-years.jpegse44ggyHUb.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Glenfiddich', 'Scotland', 700, 43),
(2868, 12, 'Glencadam 15 years', '200.00', '0.00', '/assets/img/items/1597044197glencadam-15-years.jpegSppzUM4Bne.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Glencadam', 'Scotland', 1, 46),
(2869, 12, 'Ballantines 30 years', '200.00', '0.00', '/assets/img/items/1597044197ballantines-30-years.jpegMVcC3RKcoV.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Ballantines', 'Scotland', 700, 43),
(2870, 12, 'Tullamore Dew Xo Caribbean Rum Finish', '200.00', '0.00', '/assets/img/items/1597044197Tullamore-Dew-Xo-Caribbean-Rum-Finish.jpegDoK3qwhOXe.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Tullamore', 'Ireland', 750, 43),
(2871, 12, 'Laphroaig Legacy Edition', '200.00', '0.00', '/assets/img/items/1597044197Laphroaig-Legacy-Edition.jpegphxcHROiOp.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Laphroaig', 'Scotland', 700, 40),
(2872, 12, 'Johnnie Walker Select Cask rye cask finish', '200.00', '0.00', '/assets/img/items/1597044197Johnnie-Walker-Select-Cask.jpegaEvWD2RRVr.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 1, 46),
(2873, 12, 'Glenmorangie Tayne', '200.00', '0.00', '/assets/img/items/1597044197Glenmorangie-Tayne.jpeg3Vc1mUwTM0.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Glenmorangie', 'Scotland', 700, 43),
(2874, 12, 'Johnnie Walker Swing', '200.00', '0.00', '/assets/img/items/1597044197Johnnie-Walker-Swing.jpegqJqmDBZwDH.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 750, 43),
(2875, 12, 'Old Pulteney 12 Years', '200.00', '0.00', '/assets/img/items/1597044197Old-Pulteney-12-Years.jpegNTxu6gvLBR.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Old Pulteney', 'Scotland', 750, 40),
(2876, 12, 'Speyburn Bradan Orach', '200.00', '0.00', '/assets/img/items/1597044197Speyburn-Bradan-Orach.jpeg9HjstsyTRX.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Speyburn', 'Scotland', 750, 40);
INSERT INTO `temp_items` (`id`, `item_category_id`, `name`, `price`, `old_price`, `image`, `is_recommended`, `is_popular`, `is_new`, `created_at`, `updated_at`, `desc`, `placeholder_image`, `is_active`, `is_veg`, `brand`, `origin`, `quantity`, `alcohol`) VALUES
(2877, 12, 'Speyburn 10 Years', '200.00', '0.00', '/assets/img/items/1597044197Speyburn-10-Years.jpegbkxKF7nIky.jpg', 0, 0, 0, '2020-08-10 14:08:17', '2020-08-10 14:08:17', '', NULL, 1, NULL, 'Speyburn', 'Scotland', 750, 40),
(2878, 12, 'Grand Old Parr 12 Years', '200.00', '0.00', '/assets/img/items/1597044197Grand-Old-Parr-12-Years.jpegVK6o4FOXXn.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Grand Old Parr', 'Scotland', 750, 40),
(2879, 12, 'Jack Daniels Bond', '200.00', '0.00', '/assets/img/items/1597044198Jack-Daniels-Bond.jpegChHpokv6Tg.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Jack Daniels', 'United States', 1, 50),
(2880, 12, 'Glenmorangie Duthac', '200.00', '0.00', '/assets/img/items/1597044198Glenmorangie-Duthac.jpegzHkFSLcBdL.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Glenmorangie', 'Scotland', 700, 40),
(2881, 12, 'Jameson Signature Reserve', '200.00', '0.00', '/assets/img/items/1597044198Jameson-Signature-Reserve.jpegEXrxF5neff.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Jameson', 'Ireland', 1, 40),
(2882, 12, 'Talisker Port Ruighe', '200.00', '0.00', '/assets/img/items/1597044198Talisker-Port-Ruighe.jpegrMKw5pQiMM.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Talisker', 'Scotland', 700, 40),
(2883, 12, 'Talisker Dark Storm', '200.00', '0.00', '/assets/img/items/1597044198Talisker-Dark-Storm.jpeg5ToPitv8Yt.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Talisker', 'Scotland', 1, 46),
(2884, 12, 'Paddy Irish Whiskey', '200.00', '0.00', '/assets/img/items/1597044198Paddy-Irish-Whiskey.jpegqlxViPHwxX.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Paddy', 'Ireland', 1, 40),
(2885, 12, 'Bunnahabhain 12 years', '200.00', '0.00', '/assets/img/items/1597044198bunnahabhain-12-years.jpegnQ9UvQJAGe.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Bunnahabhain', 'Scotland', 700, 46),
(2886, 12, 'Bunnahabhain eirigh na greine', '200.00', '0.00', '/assets/img/items/1597044198bunnahabhain-eirigh-na-greine.jpegdXVl9uD59T.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Bunnahabhain', 'Scotland', 1, 46),
(2887, 12, 'Sazerac Rye', '200.00', '0.00', '/assets/img/items/1597044198Sazerac-Rye.jpeg1CiewEtltT.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Sazerac', 'United States', 750, 45),
(2888, 12, 'Bulleit 95 Rye', '200.00', '0.00', '/assets/img/items/1597044198Bulleit-95-Rye.jpegBIeYWXMxfj.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Bulleit Bourbon', 'United States', 750, 45),
(2889, 12, 'Jura The Road', '200.00', '0.00', '/assets/img/items/1597044198Jura-The-Road.jpegoyrLdFza6y.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Jura', 'Scotland', 1, 44),
(2890, 12, 'Jura The Loch', '200.00', '0.00', '/assets/img/items/1597044198Jura-The-Loch.jpegGdVy6tJ9oO.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Jura', 'Scotland', 700, 45),
(2891, 12, 'Jura Journey', '200.00', '0.00', '/assets/img/items/1597044198Jura-Journey.jpegeLnFAc3fq0.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Jura', 'Scotland', 700, 40),
(2892, 12, 'The yamazaki 12 years Japanese single malt whisky', '200.00', '0.00', '/assets/img/items/1597044198Jura-Journey.jpegeLnFAc3fq0.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Yamazaki', 'Japan', 700, 43),
(2893, 12, 'Sir Edwards', '200.00', '0.00', '/assets/img/items/1597044198Sir-Edwards-.jpegP5DpkqBhCp.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Sir Edwards', 'Scotland', 750, 40),
(2894, 12, 'Nikka Whisky from The Barrel', '200.00', '0.00', '/assets/img/items/1597044198Nikka-Whisky-from-The-Barrel.jpegfBXw5a1hI1.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Nikka', 'Japan', 500, 51),
(2895, 12, 'Chivas Mizunara', '200.00', '0.00', '/assets/img/items/1597044198Chivas-Mizunara.jpegqlqN3lVfmW.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Chivas Regal', 'Scotland', 750, 40),
(2896, 12, 'Jim beam signature craft', '200.00', '0.00', '/assets/img/items/1597044198Jim-beam-signature-craft.jpegH7gLGAd3DQ.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Jim Beam', 'United States', 750, 43),
(2897, 12, 'Jim beam black extra aged', '200.00', '0.00', '/assets/img/items/1597044198Jim-beam-black-extra-aged.jpegw6XXlWqfvb.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Jim Beam', 'United States', 1, 43),
(2898, 12, 'Wild turkey 101', '200.00', '0.00', '/assets/img/items/1597044198wild-turkey-101.jpeg7OiJXAxq4y.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Wild Turkey', 'United States', 1, 51),
(2899, 12, 'Royal salute hundred cask', '200.00', '0.00', '/assets/img/items/1597044198Royal-salute-hundred-cask.jpegWd5TKTlPL7.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Chivas Regal', 'Scotland', 750, 40),
(2900, 12, 'Johnnie walker blenders batch bourbon cask & rye finish', '200.00', '0.00', '/assets/img/items/1597044198Royal-salute-hundred-cask.jpegWd5TKTlPL7.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 1, 41),
(2901, 12, 'Grants signature', '200.00', '0.00', '/assets/img/items/1597044198grants-signature.jpeg5LWI60c04c.jpg', 0, 0, 0, '2020-08-10 14:08:18', '2020-08-10 14:08:18', '', NULL, 1, NULL, 'Grant\'s', 'Scotland', 750, 40),
(2902, 12, 'Hibiki master select', '200.00', '0.00', '/assets/img/items/1597044198hibiki-master-select.jpegxvSlgFImqs.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Hibiki', 'Japan', 750, 43),
(2903, 12, 'Rampur double cask', '200.00', '0.00', '/assets/img/items/1597044199rampur-double-cask.jpegY5AH5MY0BP.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Rampur', 'India', 750, 45),
(2904, 12, 'Rampur sherry px finish', '200.00', '0.00', '/assets/img/items/1597044199rampur-sherry-px-finish.jpegKCn8BwsfOH.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Rampur', 'India', 750, 45),
(2905, 12, 'Bunnahabhain limited release', '200.00', '0.00', '/assets/img/items/1597044199bunnahabhain-limited-release.jpegjDvxysc1cF.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Bunnahabhain', 'Scotland', 700, 54),
(2906, 12, 'Glen silvers 8 years', '200.00', '0.00', '/assets/img/items/1597044199glen-silvers-8-years.jpeg1QvokHptpP.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Glen Silvers', 'Scotland', 750, 40),
(2907, 12, 'The balvenie 25 years triple cask', '200.00', '0.00', '/assets/img/items/1597044199the-balvenie-25-years-triple-cask.jpegLwhdq46ey7.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Balvenie', 'Scotland', 700, 40),
(2908, 12, 'Famous grouse bourbon cask', '200.00', '0.00', '/assets/img/items/1597044199famous-grouse-bourbon-cask.jpegxZ65aEHp2C.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Famous Grouse', 'Scotland', 1, 40),
(2909, 12, 'Japanese sake', '200.00', '0.00', '/assets/img/items/1597044199japanese-sake.jpeg6W4lO5j1GO.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'Japan', 750, 16),
(2910, 12, 'Mars maltage cosmo', '200.00', '0.00', '/assets/img/items/1597044199mars-maltage-cosmo.jpegF5fCgWvL1n.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'Japan', 700, 43),
(2911, 12, 'Amrut fusion single malt indian whisky', '200.00', '0.00', '/assets/img/items/1597044199amrut-fusion-single-malt-indian-whisky.jpegrU12ge2cuH.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'India', 700, 50),
(2912, 12, 'Amrut portonova single malt indian whisky', '200.00', '0.00', '/assets/img/items/1597044199amrut-portonova-single-malt-indian-whisky.jpegSifp2xBQzV.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'India', 700, 62),
(2913, 12, 'Amrut intermediate sherry single malt indian whisky', '200.00', '0.00', '/assets/img/items/1597044199amrut-intermediate-sherry-single-malt-indian-whisky.jpeg3L3uP4L7Mo.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'India', 700, 57),
(2914, 12, 'All seasons whisky', '200.00', '0.00', '/assets/img/items/1597044199all-seasons-whisky-.jpegDkDkCwW9JT.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'India', 750, 42),
(2915, 12, 'Macallan enigma', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Macallan', 'Scotland', 750, 45),
(2916, 12, 'Teachers origin', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Teacher\'s', 'Scotland', 750, 40),
(2917, 12, 'Glen moray cabernet cask', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'Scotland', 750, 40),
(2918, 12, 'Glen moray port cask finish', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'Scotland', 750, 40),
(2919, 12, 'Ballantines christmas reserve', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Ballantines', 'Scotland', 700, 40),
(2920, 12, 'Buchanans deluxe 12 years', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'Scotland', 1, 40),
(2921, 12, 'Jim beam single barrel', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Jim Beam', 'United States', 1, 40),
(2922, 12, 'Jim beam devils cut', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Jim Beam', 'United States', 700, 45),
(2923, 12, 'Wild turkey 13 distillers reserve', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'United States', 700, 43),
(2924, 12, 'Wild turkey 101 rye', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'United States', 1, 51),
(2925, 12, 'Wild turkey rare breed', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'United States', 700, 56),
(2926, 12, 'Woodford reserve double oaked', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Woodford Reserve', 'United States', 1, 45),
(2927, 12, 'Crown royal rye', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'Canada', 750, 45),
(2928, 12, 'Basil haydens bourbon whisky', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'United States', 1, 40),
(2929, 12, 'Fireball cinammon whisky', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'Canada', 1, 33),
(2930, 12, 'Oban distillers edition', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Lagavulin', 'Scotland', 750, 43),
(2931, 12, 'Knockado justerin and brooks single malt', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'Scotland', 700, 43),
(2932, 12, 'Johnnie walker blenders batch sherry cask finish', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Johnnie Walker', 'Scotland', 1, 40),
(2933, 12, 'Bowmore gold reef', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Bowmore', 'Scotland', 1, 40),
(2934, 12, 'Bowmore small batch reserve bourbon cask matured', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Bowmore', 'Scotland', 700, 40),
(2935, 12, 'Bowmore 10 years', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Bowmore', 'Scotland', 1, 40),
(2936, 12, 'Bowmore 18 years', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Bowmore', 'Scotland', 700, 43),
(2937, 12, 'Bowmore 17 years white sands', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Bowmore', 'Scotland', 700, 50),
(2938, 12, 'Smokehead special rock edition', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Smokehead', 'Scotland', 700, 43),
(2939, 12, 'Knockando 21 years 1994 master reserve', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'Scotland', 700, 43),
(2940, 12, 'Lagavulin distillers edition', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Lagavulin', 'Scotland', 1, 43),
(2941, 12, 'Glenfarclas 12 years', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'Scotland', 1, 43),
(2942, 12, 'Dalwhinnie winters gold', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Dalwhinnie', 'Scotland', 700, 43),
(2943, 12, 'Glen scotia double cask', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Undefined', 'Scotland', 700, 46),
(2944, 12, 'Bunnahabhain cruach mhona', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Bunnahabhain', 'Scotland', 1, 50),
(2945, 12, 'Glenkinchie distillers edition', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Glenkinchie', 'Scotland', 700, 43),
(2946, 12, 'Glenlivet distillers edition', '200.00', '0.00', '/assets/img/items/1597044199macallan-enigma.jpegTX5nhzmjBa.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Glenlivet', 'Scotland', 750, 40),
(2947, 13, '4th Street sweet rose', '200.00', '0.00', '/assets/img/items/15970441994th-Street-Red.jpegtgcRgS7k2J.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, '4th Street', 'South Africa', 750, 8),
(2948, 13, 'Asconi kagor lux', '200.00', '0.00', '/assets/img/items/1597044199Asconi-Kagor-Lux.jpegqUlmWtQAlD.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Asconi', 'Moldova', 750, 12),
(2949, 13, 'Altar wine', '200.00', '0.00', '/assets/img/items/1597044199altar-wine.jpegvC6jB4J0jB.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Altar Wine', 'Cyprus', 750, 18),
(2950, 13, 'Namaqua pinotage', '200.00', '0.00', '/assets/img/items/1597044199namaqua-pinotage.jpeg694UyoeH57.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Namaqua', 'South Africa', 750, 14),
(2951, 13, 'Drostdy-hof premier grand cru white dry cask', '200.00', '0.00', '/assets/img/items/1597044199drostdy-hof-white-cask.jpegJ9ZBBnWKzX.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Drostdy Hof', 'South Africa', 3, 12),
(2952, 13, 'Frontera sauvignon blanc', '200.00', '0.00', '/assets/img/items/1597044199frontera-sauvignon-blanc.jpegb5zOxvffSL.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Frontera', 'Chile', 750, 13),
(2953, 13, 'Robertson winery sweet white', '200.00', '0.00', '/assets/img/items/1597044199robertson-winery.jpeg2gik1WmsaS.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Robertson Winery', 'Undefined', 750, 8),
(2954, 13, 'Mara nyekundu', '200.00', '0.00', '/assets/img/items/1597044199mara-nyekundu-.jpegOjctVPXoJk.jpg', 0, 0, 0, '2020-08-10 14:08:19', '2020-08-10 14:08:19', '', NULL, 1, NULL, 'Mara', 'South Africa', 750, 12),
(2955, 13, 'Martini bianco', '200.00', '0.00', '/assets/img/items/1597044199martini-bianco.jpegd4DM6pnVDs.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Martini', 'Italy', 750, 15),
(2956, 13, 'Martini rosso', '200.00', '0.00', '/assets/img/items/1597044200martini-rosso.jpegDuZnu0KRm0.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Martini', 'Italy', 1, 15),
(2957, 13, 'Martini extra dry', '200.00', '0.00', '/assets/img/items/1597044200martini-extra-dry.jpegkdKWAsSWwB.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Martini', 'Italy', 1, 18),
(2958, 13, 'Tommasi Soave Classico', '200.00', '0.00', '/assets/img/items/1597044200Tommasi-Soave-Classico-.jpegSG8kjjLcXn.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 13),
(2959, 13, 'Overmeer sweet rose cask', '200.00', '0.00', '/assets/img/items/1597044200overmeer-sweet-rose-cask.jpegsTdZqUZBJv.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Overmeer', 'South Africa', 5, 9),
(2960, 13, 'Robertson winery rose', '200.00', '0.00', '/assets/img/items/1597044200robertson-winery-rose.jpegbQ0MbAizeG.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Robertson Winery', 'South Africa', 750, 8),
(2961, 13, 'Four cousins sweet rose', '200.00', '0.00', '/assets/img/items/1597044200four-cousins-sweet-rose.jpeg9ijcWWDjVI.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Four Cousins', 'South Africa', 750, 10),
(2962, 13, 'Rosso nobile al Cioccolata (chocolate flavoured)', '200.00', '0.00', '/assets/img/items/1597044200rosso-nobile-cioccolata.jpegSI5tYTuNVm.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Nobile Wines', 'Germany', 750, 10),
(2963, 13, 'Nederburg cabernet sauvignon', '200.00', '0.00', '/assets/img/items/1597044200nederburg-cabernet-sauvignon.jpegwmJZv1w2NL.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Nederburg', 'South Africa', 750, 15),
(2964, 13, 'Casillero del diablo cabernet sauvignon', '200.00', '0.00', '/assets/img/items/1597044200casillero-del-diablo-cabernet-sauvignon.jpegDQU558LmWM.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Casillero Del Diablo', 'Chile', 750, 14),
(2965, 13, 'Frontera caberbet sauvignon', '200.00', '0.00', '/assets/img/items/1597044200frontera-caberbet-sauvignon.jpegzuGSI3oQIV.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Frontera', 'Chile', 750, 13),
(2966, 13, 'Gato negro cabernet sauvignon', '200.00', '0.00', '/assets/img/items/1597044200gato-negro-cabernet-sauvignon.jpegAc1xmoC19I.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Gato Negro', 'Chile', 750, 13),
(2967, 13, 'Gato negro cabernet merlot', '200.00', '0.00', '/assets/img/items/1597044200gato-negro-cabernet-merlot.jpeg9POAMa6jef.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Gato Negro', 'Chile', 750, 13),
(2968, 13, 'Carlo rossi sangria', '200.00', '0.00', '/assets/img/items/1597044200carlo-rossi.jpeg7POmFoiHQi.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Carlo Rossi', 'United States', 2, 10),
(2969, 13, 'Cellar cask red sweet cask', '200.00', '0.00', '/assets/img/items/1597044200cellar-cask-red-sweet.jpegz5XTsIrxHO.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Cellar Cask', 'South Africa', 2, 11),
(2970, 13, 'Chamdor red (non-alcoholic wine)', '200.00', '0.00', '/assets/img/items/1597044200chamdor-red-(non-alcoholic-wine).jpegzllXBKHQc6.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Non Alcoholic Wine', 'South Africa', 750, 0),
(2971, 13, 'Drostdy hof claret select red dry cask', '200.00', '0.00', '/assets/img/items/1597044200drostdy-hof-claret-select-cask.jpeg76nNKpFzcV.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Drostdy Hof', 'South Africa', 3, 13),
(2972, 13, 'Four cousins sweet red', '200.00', '0.00', '/assets/img/items/1597044200four-cousins-sweet-red.jpegQ8B2uB3Cd0.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Four Cousins', 'South Africa', 750, 10),
(2973, 13, 'Orange river cellars sweet rose', '200.00', '0.00', '/assets/img/items/1597044200orange-river-cellars-sweet-rose.jpegFRxnL5uGll.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Orange River Cellars', '0', 5, 0),
(2974, 13, 'Orange river cellars sweet red cask', '200.00', '0.00', '/assets/img/items/1597044200orange-river-cellars-sweet-red-cask.jpegt7ZNS6f2cH.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Orange River Cellars', '0', 5, 0),
(2975, 13, 'Orange river cellars dry red', '200.00', '0.00', '/assets/img/items/1597044200orange-river-cellars-dry-red.jpeg5STrGrqDBY.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Orange River Cellars', 'South Africa', 750, 8),
(2976, 13, 'Orange river cellars dry red cask', '200.00', '0.00', '/assets/img/items/1597044200orange-river-cellars-dry-red-cask.jpegDvTl9Obqi0.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, 'Orange River Cellars', '0', 5, 0),
(2977, 13, '4th street red sweet', '200.00', '0.00', '/assets/img/items/15970442004th-street-red-sweet.jpegnZgqd258qU.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, '4th Street', 'South Africa', 750, 8),
(2978, 13, '4th street red sweet cask', '200.00', '0.00', '/assets/img/items/15970442004th-street-red-sweet-cask.jpegY5T58VPkDY.jpg', 0, 0, 0, '2020-08-10 14:08:20', '2020-08-10 14:08:20', '', NULL, 1, NULL, '4th Street', 'South Africa', 5, 8),
(2979, 13, 'Robertson winery sweet red', '200.00', '0.00', '/assets/img/items/1597044200robertson-winery-sweet-red.jpegrite4tLOLB.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Robertson Winery', 'South Africa', 750, 8),
(2980, 13, 'Frontera merlot', '200.00', '0.00', '/assets/img/items/1597044201frontera-merlot.jpeg4TgMEXh4WD.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Frontera', 'Chile', 750, 13),
(2981, 13, '4th street white sweet', '200.00', '0.00', '/assets/img/items/15970442014th-street-white-sweet.jpegn7yWxjlZN1.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, '4th Street', 'South Africa', 750, 8),
(2982, 13, '4th street white sweet cask', '200.00', '0.00', '/assets/img/items/15970442014th-street-white-sweet-cask.jpegGgSBvRctDg.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, '4th Street', 'South Africa', 5, 8),
(2983, 13, 'Bianco nobile al Vaniglia (vanilla and chocolate flavoured)', '200.00', '0.00', '/assets/img/items/1597044201bianco-nobile-white-sweet.jpeghUmsGRaTua.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Nobile Wines', 'Germany', 750, 10),
(2984, 13, 'Bird & bees white sweet malbec', '200.00', '0.00', '/assets/img/items/1597044201bianco-nobile-white-sweet.jpeghUmsGRaTua.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Bird & Bees', 'Argentina', 750, 10),
(2985, 13, 'Frontera chardonnay', '200.00', '0.00', '/assets/img/items/1597044201frontera-chardonnay.jpegIXLYPOaDD5.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Frontera', 'Chile', 750, 13),
(2986, 13, 'Overmeer white dry cask', '200.00', '0.00', '/assets/img/items/1597044201overmeer-grand-cru-white-dry.jpegoL0Xmfvc0I.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Overmeer', 'South Africa', 5, 11),
(2987, 13, 'Cellar cask white sweet cask', '200.00', '0.00', '/assets/img/items/1597044201cellar-cask-white-sweet-cask.jpegtFKPtF7bf0.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Cellar Cask', 'South Africa', 2, 12),
(2988, 13, 'Four cousins white sweet', '200.00', '0.00', '/assets/img/items/1597044201four-cousins-white-sweet.jpegd2bGGDvooQ.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Four Cousins', 'South Africa', 750, 10),
(2989, 13, 'Orange river cellars white sweet cask', '200.00', '0.00', '/assets/img/items/1597044201orange-river-cellars-white-sweet-cask.jpegsRAh3wdrwV.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Orange River Cellars', 'South Africa', 5, 0),
(2990, 13, 'JP chenet blanc de blancs', '200.00', '0.00', '/assets/img/items/1597044201J.P.-chenet-blanc-de-blancs.jpegvl6nyIWkS4.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'JP Chenet Wine', 'France', 750, 11),
(2991, 13, 'Namaqua white sweet cask', '200.00', '0.00', '/assets/img/items/1597044201namaqua-white-sweet-cask.jpegRAm8ikdX05.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Namaqua', 'South Africa', 5, 9),
(2992, 13, 'Nederburg cuvee brut white dry', '200.00', '0.00', '/assets/img/items/1597044201nederburg-cuvee-brut-white-dry.jpegUsEtFzMKX1.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Nederburg', 'South Africa', 750, 15),
(2993, 13, 'Prosecco sparkling wine', '200.00', '0.00', '/assets/img/items/1597044201prosecco-sparkling-wine.jpegVJ1FGrqNnS.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Prosecco', 'Italy', 750, 11),
(2994, 13, 'Asconi pastoral', '200.00', '0.00', '/assets/img/items/1597044201asconi-pastoral.jpegKEJj1OrIeW.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Asconi', 'Moldova', 750, 16),
(2995, 13, 'Luis montfort red', '200.00', '0.00', '/assets/img/items/1597044201luis-montfort-red.jpegeYTXr12alc.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Asconi', 'France', 750, 12),
(2996, 13, 'Luis montfort summer red', '200.00', '0.00', '/assets/img/items/1597044201luis-montfort-summer-red.jpegklxWGQi3yp.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Asconi', 'France', 750, 12),
(2997, 13, 'Cockburns fine ruby', '200.00', '0.00', '/assets/img/items/1597044201cockburns-fine-ruby.jpegeHn8aO3P1O.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Cockburns', 'Portugal', 1, 19),
(2998, 13, 'Cockburns fine tawny', '200.00', '0.00', '/assets/img/items/1597044201cockburns-fine-tawny.jpegTVJB6VGcUQ.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Cockburns', 'Portugal', 1, 19),
(2999, 13, 'Sandeman ruby porto', '200.00', '0.00', '/assets/img/items/1597044201sandeman-ruby-porto.jpegZDPRiz3WaR.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Sandeman', 'Portugal', 750, 20),
(3000, 13, 'Porto cruz tawny', '200.00', '0.00', '/assets/img/items/1597044201porto-cruz-tawny.jpegEFzMfG2xtF.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Porto Cruz', 'Portugal', 1, 19),
(3001, 13, 'Porto cruz special reserve', '200.00', '0.00', '/assets/img/items/1597044201porto-cruz-special-reserve.jpegtru9TNNQI9.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Porto Cruz', 'Portugal', 750, 19),
(3002, 13, 'Frontera cabernet blush', '200.00', '0.00', '/assets/img/items/1597044201frontera-cabernet-blush.jpegsZRtdI3WXu.jpg', 0, 0, 0, '2020-08-10 14:08:21', '2020-08-10 14:08:21', '', NULL, 1, NULL, 'Frontera', 'Chile', 750, 9),
(3003, 13, 'KWV cabernet sauvignon', '200.00', '0.00', '/assets/img/items/1597044201KWV-cabernet-sauvignon-.jpeg5cv3KvRN7A.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'KWV Wine', 'South Africa', 750, 14),
(3004, 13, 'Obikwa cabernet sauvignon 2016', '200.00', '0.00', '/assets/img/items/1597044202obikwa-cabernet-sauvignon.jpegwh2K7B5Sfy.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Obikwa', 'South Africa', 750, 14),
(3005, 13, 'Bird & bees sweet malbec', '200.00', '0.00', '/assets/img/items/1597044202obikwa-cabernet-sauvignon.jpegwh2K7B5Sfy.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Bird & Bees', 'Argentina', 750, 13),
(3006, 13, 'Casillero del diablo malbec', '200.00', '0.00', '/assets/img/items/1597044202casillero-del-diablo-malbec.jpeg05koGh4579.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Casillero Del Diablo', 'Chile', 750, 14),
(3007, 13, 'Casillero del diablo merlot', '200.00', '0.00', '/assets/img/items/1597044202casillero-del-diablo-merlot.jpeg33K7cxEUCQ.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Casillero Del Diablo', 'Chile', 750, 14),
(3008, 13, 'Frontera shiraz', '200.00', '0.00', '/assets/img/items/1597044202frontera-shiraz.jpegpIiuKSrRo6.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Frontera', 'Chile', 750, 13),
(3009, 13, 'Gato negro shiraz', '200.00', '0.00', '/assets/img/items/1597044202gato-negro-shiraz.jpegrBcujG8LFU.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Gato Negro', 'Chile', 750, 13),
(3010, 13, 'Casillero del diablo shiraz', '200.00', '0.00', '/assets/img/items/1597044202casillero-del-diablo-shiraz.jpegXaEuLnb1vb.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Casillero Del Diablo', 'Chile', 750, 14),
(3011, 13, 'Tall horse shiraz', '200.00', '0.00', '/assets/img/items/1597044202tall-horse-shiraz.jpegodRSVFnOJ0.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Tall Horse', 'South Africa', 750, 14),
(3012, 13, 'Simonsig shiraz', '200.00', '0.00', '/assets/img/items/1597044202simonsig-shiraz.jpegukDKaIU0AN.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Undefined', 'Undefined', 750, 0),
(3013, 13, 'Nederburg pinotage', '200.00', '0.00', '/assets/img/items/1597044202nederburg-pinotage.jpegjGTMs560ec.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Nederburg', 'South Africa', 750, 15),
(3014, 13, 'Tall horse pinotage', '200.00', '0.00', '/assets/img/items/1597044202tall-horse-pinotage.jpegy8hvatX583.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Tall Horse', 'South Africa', 750, 14),
(3015, 13, 'Arbor mist chardonnay tropical fruits', '200.00', '0.00', '/assets/img/items/1597044202arbor-mist-chardonnay.jpegs7lbkxllDL.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Arbor Mist', 'United States', 750, 6),
(3016, 13, 'Tilia chardonnay', '200.00', '0.00', '/assets/img/items/1597044202tilia-chardonnay.jpegXYbtwu1t1W.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Tilia', 'Argentina', 750, 13),
(3017, 13, 'Nederburg chardonnay', '200.00', '0.00', '/assets/img/items/1597044202nederburg-chardonnay.jpege2K88dYcgv.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Nederburg', 'South Africa', 750, 14),
(3018, 13, 'KWV sauvignon blanc', '200.00', '0.00', '/assets/img/items/1597044202KWV-sauvignon-blanc.jpegdhJbYUm9DV.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'KWV Wine', 'South Africa', 750, 14),
(3019, 13, 'Nederburg sauvignon blanc', '200.00', '0.00', '/assets/img/items/1597044202nederburg-sauvignon-blanc.jpegBQbhELmEAz.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Nederburg', 'South Africa', 750, 13),
(3020, 13, 'Tall horse sauvignon blanc', '200.00', '0.00', '/assets/img/items/1597044202tall-horse-sauvignon-blanc.jpegi3cshZIPSv.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Tall Horse', 'South Africa', 750, 13),
(3021, 13, 'Gato negro sauvignon blanc', '200.00', '0.00', '/assets/img/items/1597044202gato-negro-sauvignon-blanc.jpeg7levOo56GP.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Gato Negro', 'Chile', 750, 13),
(3022, 13, 'Casillero del diablo sauvignon blanc', '200.00', '0.00', '/assets/img/items/1597044202casillero-del-diablo-sauvignon-blanc.jpeg4fbgaseZwW.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Casillero Del Diablo', 'Chile', 750, 13),
(3023, 13, 'KWV chenin blanc', '200.00', '0.00', '/assets/img/items/1597044202KWV-chenin-blanc.jpegyRWiCYF8bC.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'KWV Wine', 'South Africa', 750, 14),
(3024, 13, 'Nederburg chenin blanc', '200.00', '0.00', '/assets/img/items/1597044202nederburg-chenin-blanc.jpeg5XkH0EMXqa.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Nederburg', 'South Africa', 750, 14),
(3025, 13, 'Orange cellar chenin blanc', '200.00', '0.00', '/assets/img/items/1597044202orange-cellar-chenin-blanc.jpegD3A9D5bLYf.jpg', 0, 0, 0, '2020-08-10 14:08:22', '2020-08-10 14:08:22', '', NULL, 1, NULL, 'Orange River Cellars', 'South Africa', 750, 14),
(3026, 13, 'Simonsig chenin blanc', '200.00', '0.00', '/assets/img/items/1597044203simonsig-chenin-blanc.jpegiWsvw6D9kb.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Simonsig', 'South Africa', 750, 14),
(3027, 13, 'Kenwood pinot gris', '200.00', '0.00', '/assets/img/items/1597044203kenwood-pinot-gris.jpeg11DyeOj4Oi.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Kenwood', 'United States', 750, 14),
(3028, 13, 'Yealand way pinot gris', '200.00', '0.00', '/assets/img/items/1597044203yealand-way-pinot-gris.jpegWegKA3yK8X.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Yealand', 'New Zealand', 750, 12),
(3029, 13, 'Yealand pinot gris', '200.00', '0.00', '/assets/img/items/1597044203yealand-pinot-gris.jpegSWpg3l0h48.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Yealand', 'New Zealand', 750, 12),
(3030, 13, 'Torti pinot noir', '200.00', '0.00', '/assets/img/items/1597044203torti-pinot-noir.jpegCY8hEsbO6z.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Torti', 'Italy', 750, 13),
(3031, 13, 'Kenwood pinot noir', '200.00', '0.00', '/assets/img/items/1597044203kenwood-pinot-noir.jpegy6wPHyXsJg.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Kenwood', 'United States', 750, 14),
(3032, 13, 'Casillero del diablo pinot noir', '200.00', '0.00', '/assets/img/items/1597044203casillero-del-diablo-pinot-noir.jpegCSvHju0LVF.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Casillero Del Diablo', 'Chile', 750, 14),
(3033, 13, 'Zonnin moscato', '200.00', '0.00', '/assets/img/items/1597044203zonnin-moscato.jpeg05jTe8TlX2.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Zonnin', 'Italy', 750, 7),
(3034, 13, 'Castello moscato', '200.00', '0.00', '/assets/img/items/1597044203castello-moscato.jpegGRO15pEoCR.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Undefined', 'Italy', 750, 7),
(3035, 13, 'Culemborg moscato', '200.00', '0.00', '/assets/img/items/1597044203culemborg-moscato.jpeg2JbUoMduWt.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Culemborg', 'South Africa', 750, 12),
(3036, 13, 'Culemborg chenin blanc', '200.00', '0.00', '/assets/img/items/1597044203culemborg-chenin-blanc.jpegyqskOTtAOq.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Culemborg', 'South Africa', 750, 13),
(3037, 13, 'Bellingham chenin blanc', '200.00', '0.00', '/assets/img/items/1597044203bellingham-chenin-blanc.jpeghSreb9TRtA.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Bellingham', 'South Africa', 750, 14),
(3038, 13, 'France hoek chenin blanc', '200.00', '0.00', '/assets/img/items/1597044203france-hoek-chenin-blanc.jpegCKToZ6HMnr.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Undefined', 'South Africa', 750, 14),
(3039, 13, 'Boschendal 1685 merlot', '200.00', '0.00', '/assets/img/items/1597044203boschendal-1685-merlot.jpegJBBUtZqWcw.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Boschendal', 'South Africa', 750, 14),
(3040, 13, 'Boschendal 1685 sauvignon blanc', '200.00', '0.00', '/assets/img/items/1597044203boschendal-1685-sauvignon-blanc.jpegWjJoXElE3R.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Boschendal', 'South Africa', 750, 13),
(3041, 13, 'Boschendal 1685 shiraz', '200.00', '0.00', '/assets/img/items/1597044203boschendal-1685-shiraz.jpegbuHTEPDcoD.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Boschendal', 'South Africa', 750, 14),
(3042, 13, 'Boschendal blanc', '200.00', '0.00', '/assets/img/items/1597044203boschendal-blanc.jpegFA5I9CaDL7.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Boschendal', 'South Africa', 750, 14),
(3043, 13, 'Boschendal sommelier pinotage', '200.00', '0.00', '/assets/img/items/1597044203boschendal-sommelier-pinotage.jpegxptj6N54HU.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Boschendal', 'South Africa', 750, 0),
(3044, 13, 'Boschendal sommelier sauvignon blanc', '200.00', '0.00', '/assets/img/items/1597044203boschendal-sommelier-sauvignon-blanc.jpegwPxTDW9XYv.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Boschendal', 'South Africa', 750, 0),
(3045, 13, 'Boschendal sommelier chenin blanc', '200.00', '0.00', '/assets/img/items/1597044203boschendal-sommelier-chenin-blanc.jpeg7v2O0RNf8r.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Boschendal', 'South Africa', 750, 14),
(3046, 13, 'Boschendal pavilion chenin blanc', '200.00', '0.00', '/assets/img/items/1597044203boschendal-pavilion-chenin-blanc.jpegZ946MCBKhl.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Boschendal', 'South Africa', 750, 14),
(3047, 13, 'Boschendal pavilion shiraz cabernet sauvignon', '200.00', '0.00', '/assets/img/items/1597044203boschendal-pavilion-shiraz-cabernet-sauvignon.jpegcmPB2bHHHo.jpg', 0, 0, 0, '2020-08-10 14:08:23', '2020-08-10 14:08:23', '', NULL, 1, NULL, 'Boschendal', 'South Africa', 750, 14),
(3048, 13, 'Boschendal elgin chardonnay', '200.00', '0.00', '/assets/img/items/1597044203boschendal-elgin-chardonnay.jpegXBJvJB3IC4.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Boschendal', 'South Africa', 750, 14),
(3049, 13, 'Boschendal elgin sauvignon blanc', '200.00', '0.00', '/assets/img/items/1597044204boschendal-elgin-sauvignon-blanc.jpegjUujpRyynm.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Boschendal', 'South Africa', 750, 14),
(3050, 13, 'Boschendal lanoy cabernet merlot', '200.00', '0.00', '/assets/img/items/1597044204boschendal-lanoy-cabernet-merlot.jpegQ26qtlyisP.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Boschendal', 'South Africa', 750, 14),
(3051, 13, 'Hardy pinot grigio', '200.00', '0.00', '/assets/img/items/1597044204hardy-pinot-grigio.jpegbKjGEee7fz.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Hardy', 'Australia', 750, 12),
(3052, 13, 'Nederburg riesling', '200.00', '0.00', '/assets/img/items/1597044204nederburg-riesling.jpego2VmBnm5gu.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Nederburg', 'South Africa', 750, 13),
(3053, 13, 'Duchessa Lia Fragolino Bianco', '200.00', '0.00', '/assets/img/items/1597044204Duchessa-Lia-Fragolino-Bianco.jpegSNPmk5J9Ud.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Fragolino', 'Italy', 750, 7),
(3054, 13, 'Drostdy-hof white sweet', '200.00', '0.00', '/assets/img/items/1597044204drostdy-hof-white-sweet.jpegiEYmgFEv7c.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Drostdy Hof', 'South Africa', 750, 8),
(3055, 13, 'Cellar cask white sweet', '200.00', '0.00', '/assets/img/items/1597044204cellar-cask-white-sweet.jpegalGKBVddKf.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Cellar Cask', 'South Africa', 750, 12),
(3056, 13, 'Nederburg merlot', '200.00', '0.00', '/assets/img/items/1597044204nederburg-merlot.jpegARiX7VfZzB.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Nederburg', 'South Africa', 750, 15),
(3057, 13, 'Nederburg shiraz', '200.00', '0.00', '/assets/img/items/1597044204nederburg-shiraz.jpegZz4hxxbR3w.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Nederburg', 'South Africa', 750, 14),
(3058, 13, 'KWV chardonnay', '200.00', '0.00', '/assets/img/items/1597044204KWV-chardonnay.jpegBRzAi7EmoG.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'KWV Wine', 'South Africa', 750, 14),
(3059, 13, 'Crema nobile al cioccolata (dark choclate and cream flavoured)', '200.00', '0.00', '/assets/img/items/1597044204crema-nobile-cioccolata.jpeg4SPHTe8BEs.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Nobile Wines', 'Germany', 750, 10),
(3060, 13, 'JP chenet medium sweet', '200.00', '0.00', '/assets/img/items/1597044204J.P.-chenet-medium-sweet.jpeg8cIRVzKh0b.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'JP Chenet Wine', 'France', 750, 11),
(3061, 13, 'Ama la vida white cask', '200.00', '0.00', '/assets/img/items/1597044204ama-la-vida-white-cask.jpeg5EqNzl290s.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Ama la vida', 'South Africa', 5, 9),
(3062, 13, 'Saint anna white sweet', '200.00', '0.00', '/assets/img/items/1597044204saint-anna-white-sweet.jpegnr94dD5YHF.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Saint Anna', 'South Africa', 750, 8),
(3063, 13, 'Vina lastra white sweet', '200.00', '0.00', '/assets/img/items/1597044204vina-lastra-white-sweet.jpegqrTddX69ZG.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Vina Lastra', 'France', 750, 12),
(3064, 13, 'Namaqua white dry cask', '200.00', '0.00', '/assets/img/items/1597044204namaqua-white-dry-cask.jpeg8GmTYx7H8E.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Namaqua', 'South Africa', 5, 13),
(3065, 13, 'Duchessa Lia Fragolino Rosso', '200.00', '0.00', '/assets/img/items/1597044204Duchessa-Lia-Fragolino-Rosso.jpeg811xWwzEaz.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Fragolino', 'Italy', 750, 7),
(3066, 13, 'Lambrusco dell\'emillia amabile rosso', '200.00', '0.00', '/assets/img/items/1597044204Duchessa-Lia-Fragolino-Rosso.jpeg811xWwzEaz.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Lambrusco', 'Italy', 750, 8),
(3067, 13, 'Namaqua dry red cask', '200.00', '0.00', '/assets/img/items/1597044204namaqua-dry-red-cask.jpegWxIcBXREW5.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Namaqua', 'South Africa', 5, 13),
(3068, 13, 'Namaqua red sweet cask', '200.00', '0.00', '/assets/img/items/1597044204namaqua-red-sweet-cask.jpegr4FzbtuCOU.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Namaqua', 'South Africa', 5, 8),
(3069, 13, 'Saint celine sweet red', '200.00', '0.00', '/assets/img/items/1597044204saint-celine-sweet-red.jpegrsn5rQcDZ8.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Saint Celine', 'South Africa', 750, 8),
(3070, 13, 'Caprice red sweet cask', '200.00', '0.00', '/assets/img/items/1597044204caprice-red-sweet-cask.jpeg8SSgACyUMF.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Caprice', 'South Africa', 1, 12),
(3071, 13, 'Cellar cask sweet red', '200.00', '0.00', '/assets/img/items/1597044204cellar-cask-red-sweett.jpeg22T5qwQ4iS.jpg', 0, 0, 0, '2020-08-10 14:08:24', '2020-08-10 14:08:24', '', NULL, 1, NULL, 'Cellar Cask', 'South Africa', 750, 11),
(3072, 13, 'Carlo rossi red sweet', '200.00', '0.00', '/assets/img/items/1597044204carlo-rossi-red-sweet.jpegvzzslYjE7p.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Carlo Rossi', 'United States', 750, 10),
(3073, 13, 'Chamdor white (non-alcoholic-wine)', '200.00', '0.00', '/assets/img/items/1597044205chamdor-white-(non-alcoholic-wine).jpegPE3I0c16F8.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Non Alcoholic Wine', 'South Africa', 750, 0),
(3074, 13, 'Canti prosecco', '200.00', '0.00', '/assets/img/items/1597044205canti-prosecco.jpegUolF3lrpNu.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Prosecco', 'Italy', 750, 11),
(3075, 13, 'Harveys bristol cream sherry', '200.00', '0.00', '/assets/img/items/1597044205harveys-bristol-cream.jpeg9oOErNbkXa.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Harveys Bristol', 'Spain', 750, 18),
(3076, 13, 'Arbor mist merlot blackberry', '200.00', '0.00', '/assets/img/items/1597044205arbor-mist-merlot.jpegKQSawqPHxK.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Arbor Mist', 'United States', 750, 6),
(3077, 13, 'Arbormist white zinfandel strawberry', '200.00', '0.00', '/assets/img/items/1597044205arbor-mist-sangria.jpegO7PwUh2c40.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Arbor Mist', 'United States', 750, 6),
(3078, 13, 'Drostdy hof claret select red dry', '200.00', '0.00', '/assets/img/items/1597044205drostdy-hof-red-dry.jpegTEy2W0EWF1.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Drostdy Hof', 'South Africa', 750, 13),
(3079, 13, 'Four cousins red sparkling wine', '200.00', '0.00', '/assets/img/items/1597044205four-cousins-red-sparkling-wine.jpegIemeI0srxA.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Four Cousins', 'South Africa', 750, 10),
(3080, 13, 'Four cousins natural sweet red cask', '200.00', '0.00', '/assets/img/items/1597044205four-cousins-natural-sweet-red-cask.jpeg58pMsxgvHA.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Four Cousins', 'South Africa', 5, 9),
(3081, 13, 'Caprice dry white', '200.00', '0.00', '/assets/img/items/1597044205caprice-dry-white.jpega4EwHmmH15.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Caprice', 'South Africa', 750, 14),
(3082, 13, 'Drostdy-hof premier grand cru white dry', '200.00', '0.00', '/assets/img/items/1597044205drostdy-hof.jpegoMKHBqY232.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Drostdy Hof', 'South Africa', 750, 12),
(3083, 13, 'Caprice red sweet', '200.00', '0.00', '/assets/img/items/1597044205caprice-red-sweet.jpegKveSTBNPOl.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Caprice', 'South Africa', 750, 12),
(3084, 13, 'Caprice red dry', '200.00', '0.00', '/assets/img/items/1597044205caprice-red-dry.jpegn9MtViOQEk.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Caprice', 'South Africa', 750, 12);
INSERT INTO `temp_items` (`id`, `item_category_id`, `name`, `price`, `old_price`, `image`, `is_recommended`, `is_popular`, `is_new`, `created_at`, `updated_at`, `desc`, `placeholder_image`, `is_active`, `is_veg`, `brand`, `origin`, `quantity`, `alcohol`) VALUES
(3085, 13, 'Penasol red dry', '200.00', '0.00', '/assets/img/items/1597044205penasol-red-dry.jpegygx2uJz2x7.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Penasol', 'South Africa', 750, 12),
(3086, 13, 'Penasol red sweet', '200.00', '0.00', '/assets/img/items/1597044205penasol-red-sweet.jpegYmw5Hdq2Cx.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Penasol', 'South Africa', 750, 10),
(3087, 13, 'Penasol sangria', '200.00', '0.00', '/assets/img/items/1597044205penasol-sangria.jpegjLc2rPZDbm.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Penasol', 'South Africa', 1, 5),
(3088, 13, 'Cinzano bianco', '200.00', '0.00', '/assets/img/items/1597044205cinzano-bianco.jpeggYRmyQ87Rq.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Cinzano', 'Spain', 750, 15),
(3089, 13, 'Cinzano rosso', '200.00', '0.00', '/assets/img/items/1597044205cinzano-rosso.jpegzMQbGSSmu8.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Cinzano', 'Italy', 750, 15),
(3090, 13, 'Grahams late bottled vintage port', '200.00', '0.00', '/assets/img/items/1597044205grahams-late-vintage-port.jpegzdz5P4ft6U.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Graham\'s', 'Portugal', 750, 20),
(3091, 13, 'Taylors fine white port', '200.00', '0.00', '/assets/img/items/1597044205taylors-fine-white-port.jpeg7TWSX4lnAC.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Taylor\'s', 'Portugal', 750, 20),
(3092, 13, 'Offley ruby porto', '200.00', '0.00', '/assets/img/items/1597044205offley-ruby-porto.jpegXvCuc0oSY6.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Offley', 'Portugal', 750, 20),
(3093, 13, 'Cockburns special reserve', '200.00', '0.00', '/assets/img/items/1597044205cockburns-special-reserve.jpegVaYFkaac0b.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Cockburns', 'Portugal', 750, 20),
(3094, 13, 'Mara nyeupe', '200.00', '0.00', '/assets/img/items/1597044205mara-nyeupe.jpegOjAmKoHCkf.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Mara', 'South Africa', 750, 12),
(3095, 13, 'Pierre marcel sweet red', '200.00', '0.00', '/assets/img/items/1597044205pierre-marcel-.jpegkUCDRBof7X.jpg', 0, 0, 0, '2020-08-10 14:08:25', '2020-08-10 14:08:25', '', NULL, 1, NULL, 'Pierre Marcel', 'France', 750, 11),
(3096, 13, 'Lamothe parrot', '200.00', '0.00', '/assets/img/items/1597044205lamothe-parrot.jpegigy6H1w5JC.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Lamothe Parrot', 'France', 750, 11),
(3097, 13, 'Leleshwa rose', '200.00', '0.00', '/assets/img/items/1597044206leleshwa-rose.jpegncUuVSFEh1.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Leleshwa', 'Kenya', 750, 8),
(3098, 13, 'KWV pinotage', '200.00', '0.00', '/assets/img/items/1597044206KWV-pinotage.jpeg7KBjtJBMub.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'KWV Wine', 'South Africa', 750, 14),
(3099, 13, '4th street rose\' cask', '200.00', '0.00', '/assets/img/items/1597044206KWV-pinotage.jpeg7KBjtJBMub.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, '4th Street', 'South Africa', 5, 8),
(3100, 13, 'Cavatina rose prosecco', '200.00', '0.00', '/assets/img/items/1597044206cavatina-rose-.jpegPsBAKtSR14.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Prosecco', 'Italy', 750, 7),
(3101, 13, 'Cavatina moscato prosecco', '200.00', '0.00', '/assets/img/items/1597044206cavatina-moscato.jpegMGgsK2lFCQ.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Prosecco', 'Italy', 750, 7),
(3102, 13, 'Bacio della luna prosecco', '200.00', '0.00', '/assets/img/items/1597044206bacio-della-luna-prosecco.jpegDT65flgIxW.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Prosecco', 'Italy', 750, 11),
(3103, 13, 'Pederiva prosecco', '200.00', '0.00', '/assets/img/items/1597044206pederiva-prosecco.jpegjgrL0kt5Ro.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Prosecco', 'Italy', 750, 15),
(3104, 13, 'Bottega white gold prosecco', '200.00', '0.00', '/assets/img/items/1597044206bottega-white-gold-.jpeg45BadRIWNw.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Bottega', 'Italy', 750, 11),
(3105, 13, 'Bottega rose gold prosecco', '200.00', '0.00', '/assets/img/items/1597044206bottega-rose-gold.jpegRnZHyMSPxH.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Bottega', 'Italy', 750, 11),
(3106, 13, 'Bottega gold prosecco', '200.00', '0.00', '/assets/img/items/1597044206bottega-gold-.jpeghtpfRiJFNm.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Bottega', 'Italy', 750, 11),
(3107, 13, 'Offley tawny port', '200.00', '0.00', '/assets/img/items/1597044206offley-tawny-port.jpegAgMuI5wMqG.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Offley', 'Portugal', 750, 20),
(3108, 13, 'Offley 10 old tawny port', '200.00', '0.00', '/assets/img/items/1597044206offley-10-old-tawny-port.jpegUiJwCMyKVD.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Offley', 'Portugal', 750, 19),
(3109, 13, 'Offley reserve port', '200.00', '0.00', '/assets/img/items/1597044206offley-reserve-port.jpegkt2Q0lZ06Q.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Offley', 'Portugal', 750, 19),
(3110, 13, 'Amor sweet white wine', '200.00', '0.00', '/assets/img/items/1597044206amor.jpeg7Ba5wrLsmo.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Amor', 'South Africa', 750, 8),
(3111, 13, 'Cinzano prosecco', '200.00', '0.00', '/assets/img/items/1597044206cinzano-prosecco.jpegmflWZYAE9M.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Prosecco', 'Italy', 750, 11),
(3112, 13, 'Sensi prosecco', '200.00', '0.00', '/assets/img/items/1597044206sensi-prosecco.jpegqbAe0vVdgU.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Prosecco', 'Italy', 750, 11),
(3113, 13, 'Simonsig carbernet sauvignon merlot', '200.00', '0.00', '/assets/img/items/1597044206simonsig-carbernet-sauvignon-merlot.jpegA5pKKClhHT.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Simonsig', 'South Africa', 750, 14),
(3114, 13, 'Simonsig cabernet sauvignon', '200.00', '0.00', '/assets/img/items/1597044206simonsig-cabernet-sauvignon.jpeg7yZKqk63S9.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Simonsig', 'South Africa', 750, 13),
(3115, 13, 'Sandeman tawny port', '200.00', '0.00', '/assets/img/items/1597044206sandeman-tawny-port.jpegPSEcqdCno7.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Sandeman', 'Portugal', 750, 20),
(3116, 13, 'Tommassi Bardolino chiaretto rose', '200.00', '0.00', '/assets/img/items/1597044206Tommassi-Bardolino-chiaretto.jpegq4itaT5S0N.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 12),
(3117, 13, 'Tall horse cabernet sauvignon', '200.00', '0.00', '/assets/img/items/1597044206tall-horse-cabernet-sauvignon.jpeg5RaTKjmDrQ.jpg', 0, 0, 0, '2020-08-10 14:08:26', '2020-08-10 14:08:26', '', NULL, 1, NULL, 'Tall Horse', 'South Africa', 750, 14),
(3118, 13, 'Tio pepe sherry', '200.00', '0.00', '/assets/img/items/1597044206tio-pepe-sherry.jpegqqDkDU3FXb.jpg', 0, 0, 0, '2020-08-10 14:08:27', '2020-08-10 14:08:27', '', NULL, 1, NULL, 'Tio Pepe', 'Spain', 750, 15),
(3119, 13, 'Liquid gold prosecco', '200.00', '0.00', '/assets/img/items/1597044207liquid-gold-prosecco.jpegWFvCtFQCOv.jpg', 0, 0, 0, '2020-08-10 14:08:27', '2020-08-10 14:08:27', '', NULL, 1, NULL, 'Prosecco', 'Italy', 750, 11),
(3120, 13, 'Carlo Rossi red sweet', '200.00', '0.00', '/assets/img/items/1597044207Carlo-Rossi-red-swee.jpeg4GgQvnwkkg.jpg', 0, 0, 0, '2020-08-10 14:08:27', '2020-08-10 14:08:27', '', NULL, 1, NULL, 'Carlo Rossi', 'United States', 3, 10),
(3121, 13, 'Ama la vida red cask', '200.00', '0.00', '/assets/img/items/1597044207ama-la-vida-red-cask.jpegHODgKUvSRI.jpg', 0, 0, 0, '2020-08-10 14:08:27', '2020-08-10 14:08:27', '', NULL, 1, NULL, 'Ama la vida', 'South Africa', 5, 12),
(3122, 13, 'Ama la vida white', '200.00', '0.00', '/assets/img/items/1597044207ama-la-vida-white.jpegzxKGU57any.jpg', 0, 0, 0, '2020-08-10 14:08:27', '2020-08-10 14:08:27', '', NULL, 1, NULL, 'Ama la vida', 'South Africa', 750, 9),
(3123, 13, 'Asconi moscato', '200.00', '0.00', '/assets/img/items/1597044207asconi-moscato.jpeg0388FcRS46.jpg', 0, 0, 0, '2020-08-10 14:08:27', '2020-08-10 14:08:27', '', NULL, 1, NULL, 'Asconi', 'Moldova', 750, 7),
(3124, 13, 'Tommasi poggio al tufo vermentino', '200.00', '0.00', '/assets/img/items/1597044207tommasi-poggio-al-tufo-vermentino.jpegZsOiFnbz23.jpg', 0, 0, 0, '2020-08-10 14:08:27', '2020-08-10 14:08:27', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 13),
(3125, 13, 'Tommasi amarone', '200.00', '0.00', '/assets/img/items/1597044207tommasi-amarone.jpegq8tLPYGGDc.jpg', 0, 0, 0, '2020-08-10 14:08:27', '2020-08-10 14:08:27', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 15),
(3126, 13, 'Tommasi poggio al tufo rompicollo', '200.00', '0.00', '/assets/img/items/1597044207tommasi-poggio-al-tufo-rompicollo.jpegR7GlJzSZEV.jpg', 0, 0, 0, '2020-08-10 14:08:27', '2020-08-10 14:08:27', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 13),
(3127, 13, 'Tommasi poggio al tufo cabernet sauvignon', '200.00', '0.00', '/assets/img/items/1597044207tommasi-poggio-al-tufo-cabernet-sauvignon.jpegwX8wb3GdBw.jpg', 0, 0, 0, '2020-08-10 14:08:27', '2020-08-10 14:08:27', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 13),
(3128, 13, 'Amarone valpolicella delibori classico', '200.00', '0.00', '/assets/img/items/1597044207amarone-valpolicella-delibori-classico.jpegInengQiU5F.jpg', 0, 0, 0, '2020-08-10 14:08:27', '2020-08-10 14:08:27', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 15),
(3129, 13, 'Tommasi le prunee merlot', '200.00', '0.00', '/assets/img/items/1597044207tommasi-le-prunee-merlot.jpeg8cEoSy0Egc.jpg', 0, 0, 0, '2020-08-10 14:08:27', '2020-08-10 14:08:27', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 13),
(3130, 13, 'Tommasi valpolicella ripasso', '200.00', '0.00', '/assets/img/items/1597044207tommasi-valpolicella-ripasso.jpegOO1VBJORTx.jpg', 0, 0, 0, '2020-08-10 14:08:27', '2020-08-10 14:08:27', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 13),
(3131, 13, 'Tommasi valipolicella', '200.00', '0.00', '/assets/img/items/1597044207tommasi-talipolicella.jpegv0wwKoXFry.jpg', 0, 0, 0, '2020-08-10 14:08:28', '2020-08-10 14:08:28', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 12),
(3132, 13, 'Bardolino delibori', '200.00', '0.00', '/assets/img/items/1597044208bardolino-delibori.jpeg1lvA6kQNC1.jpg', 0, 0, 0, '2020-08-10 14:08:28', '2020-08-10 14:08:28', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 12),
(3133, 13, 'Tommasi della valpolicella almadi', '200.00', '0.00', '/assets/img/items/1597044208tommasi-della-valpolicella-almadi.jpegVMWYSsJZBE.jpg', 0, 0, 0, '2020-08-10 14:08:28', '2020-08-10 14:08:28', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 12),
(3134, 13, 'Overmeer red dry cask', '200.00', '0.00', '/assets/img/items/1597044208overmeer-red-dry-.jpeglNYpj6D275.jpg', 0, 0, 0, '2020-08-10 14:08:28', '2020-08-10 14:08:28', '', NULL, 1, NULL, 'Overmeer', 'South Africa', 5, 13),
(3135, 13, 'Namaqua sweet rose cask', '200.00', '0.00', '/assets/img/items/1597044208namaqua-sweet-rose-cask.jpegjqcVoonYPk.jpg', 0, 0, 0, '2020-08-10 14:08:28', '2020-08-10 14:08:28', '', NULL, 1, NULL, 'Namaqua', 'South Africa', 5, 8),
(3136, 13, 'B&G cuvee speciale nature sweet red', '200.00', '0.00', '/assets/img/items/1597044208namaqua-sweet-rose-cask.jpegjqcVoonYPk.jpg', 0, 0, 0, '2020-08-10 14:08:28', '2020-08-10 14:08:28', '', NULL, 1, NULL, 'Undefined', 'France', 750, 12),
(3137, 13, 'Zonin prosecco extra brut', '200.00', '0.00', '/assets/img/items/1597044208zonin-prosecco-extra-brut.jpegQFaVMufDvt.jpg', 0, 0, 0, '2020-08-10 14:08:28', '2020-08-10 14:08:28', '', NULL, 1, NULL, 'Prosecco', 'Italy', 750, 11),
(3138, 13, 'Zonin prosecco cuvee brut', '200.00', '0.00', '/assets/img/items/1597044208zonin-prosecco-cuvee-brut.jpegEBDmbUfyNE.jpg', 0, 0, 0, '2020-08-10 14:08:28', '2020-08-10 14:08:28', '', NULL, 1, NULL, 'Prosecco', 'Italy', 750, 11),
(3139, 13, 'Prosecco blu', '200.00', '0.00', '/assets/img/items/1597044208prosecco-blu.jpegmbZM3GaWMU.jpg', 0, 0, 0, '2020-08-10 14:08:28', '2020-08-10 14:08:28', '', NULL, 1, NULL, 'Prosecco', 'Italy', 750, 11),
(3140, 13, 'Casal mendes blue', '200.00', '0.00', '/assets/img/items/1597044208casal-mendes-blue.jpegUgglIBl6C1.jpg', 0, 0, 0, '2020-08-10 14:08:28', '2020-08-10 14:08:28', '', NULL, 1, NULL, 'Casal mendes', 'Portugal', 750, 10),
(3141, 13, 'KWV shiraz', '200.00', '0.00', '/assets/img/items/1597044208KWV-shiraz.jpegC0TzWMLtRy.jpg', 0, 0, 0, '2020-08-10 14:08:28', '2020-08-10 14:08:28', '', NULL, 1, NULL, 'KWV Wine', 'South Africa', 750, 14),
(3142, 13, 'Sandeman tawny port 10 years', '200.00', '0.00', '/assets/img/items/1597044208sandeman-tawny-port-10-years.jpegTUT5isCXaC.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Sandeman', 'Portugal', 750, 20),
(3143, 13, 'Grahams fine tawny port', '200.00', '0.00', '/assets/img/items/1597044209grahams-fine-tawny-port.jpegGrAmHq7FEs.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Graham\'s', 'Portugal', 750, 19),
(3144, 13, 'Grahams fine ruby port', '200.00', '0.00', '/assets/img/items/1597044209grahams-fine-ruby-port.jpegdPvxlZWw7i.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Graham\'s', 'Portugal', 750, 19),
(3145, 13, 'Nederburg rose', '200.00', '0.00', '/assets/img/items/1597044209nederburg-rose.jpegNE21zvvbhz.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'South Africa', '0.12', 750, 12),
(3146, 13, 'Obikwa shiraz 2017', '200.00', '0.00', '/assets/img/items/1597044209obikwa-shiraz-2017.jpegmHt1znAE1j.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Obikwa', 'South Africa', 750, 14),
(3147, 13, 'Cadet doc pinot noir', '200.00', '0.00', '/assets/img/items/1597044209cadet-doc-pinot-noir.jpeg29tVMRV2ko.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Cadet Doc', 'France', 750, 13),
(3148, 13, 'Jacobs creek pinot noir', '200.00', '0.00', '/assets/img/items/1597044209jacobs-creek-pinot-noir.jpeg7zcoz7rYtz.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Jacob\'s Creek', 'Australia', 750, 14),
(3149, 13, 'Cloud bay pinot noir', '200.00', '0.00', '/assets/img/items/1597044209cloud-bay-pinot-noir.jpegTfpLGNOKAL.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Cloud Bay', 'New Zealand', 750, 14),
(3150, 13, 'Oyster bay pinot noir', '200.00', '0.00', '/assets/img/items/1597044209oyster-bay-pinot-noir.jpegNXKwKbqnFR.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Oyster Bay', 'New Zealand', 750, 14),
(3151, 13, 'Trivento reserve pinot noir', '200.00', '0.00', '/assets/img/items/1597044209trivento-reserve-pinot-noir.jpeg7kQGKxDnKi.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Trivento Tribu', 'Argentina', 750, 13),
(3152, 13, 'Boschendal 1686 blanc de noir', '200.00', '0.00', '/assets/img/items/1597044209Boschendal-1686-blanc-de-noir.jpegJFEzTME0Ye.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Boschendal', 'South Africa', 750, 13),
(3153, 13, 'Sileni pinot noir', '200.00', '0.00', '/assets/img/items/1597044209sileni-pinot-noir.jpeguFQKlgiVDW.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Sileni', 'New Zealand', 750, 12),
(3154, 13, 'Campo viejo rioja temparanillo', '200.00', '0.00', '/assets/img/items/1597044209campo-viejo-rioja-temparanillo.jpegglPRp8cShU.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Undefined', 'Spain', 750, 14),
(3155, 13, 'Mouton cadet bordeaux 2014', '200.00', '0.00', '/assets/img/items/1597044209mouton-cadet-bordeaux-2014.jpegUHa5pLX6uD.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Mouton Cadet', 'France', 750, 13),
(3156, 13, 'Gato negro chardonnay', '200.00', '0.00', '/assets/img/items/1597044209gato-negro-chardonnay.jpegnsHhbznRBm.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Gato Negro', 'Chile', 750, 13),
(3157, 13, 'Nederburg baronne', '200.00', '0.00', '/assets/img/items/1597044209nederburg-baronne.jpegBwq6H59V9t.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Nederburg', 'South Africa', 750, 14),
(3158, 13, 'KWV merlot', '200.00', '0.00', '/assets/img/items/1597044209KWV-merlot.jpeg3GiV4zsvSK.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'KWV Wine', 'South Africa', 750, 14),
(3159, 13, 'Grahams 10 years tawny port', '200.00', '0.00', '/assets/img/items/1597044209grahams-10-years-tawny-port.jpegE6M7mvsRkI.jpg', 0, 0, 0, '2020-08-10 14:08:29', '2020-08-10 14:08:29', '', NULL, 1, NULL, 'Graham\'s', 'Portugal', 750, 20),
(3160, 13, 'Asconi kiss me now', '200.00', '0.00', '/assets/img/items/1597044209asconi-kiss-me-now.jpegJdcxcI9f3d.jpg', 0, 0, 0, '2020-08-10 14:08:30', '2020-08-10 14:08:30', '', NULL, 1, NULL, 'Asconi', 'Moldova', 750, 13),
(3161, 13, 'Tilia malbec', '200.00', '0.00', '/assets/img/items/1597044210tilia-malbec.jpegVbhAysgtS4.jpg', 0, 0, 0, '2020-08-10 14:08:30', '2020-08-10 14:08:30', '', NULL, 1, NULL, 'Tilia', 'Argentina', 750, 14),
(3162, 13, 'Versus red dry', '200.00', '0.00', '/assets/img/items/1597044210versus-red-dry.jpegRM43QeXRuM.jpg', 0, 0, 0, '2020-08-10 14:08:30', '2020-08-10 14:08:30', '', NULL, 1, NULL, 'Versus', 'South Africa', 750, 13),
(3163, 13, 'Versus sweet red', '200.00', '0.00', '/assets/img/items/1597044210versus-sweet-red.jpegOIHKRorKuG.jpg', 0, 0, 0, '2020-08-10 14:08:30', '2020-08-10 14:08:30', '', NULL, 1, NULL, 'Versus', 'South Africa', 750, 9),
(3164, 13, 'Versus white dry', '200.00', '0.00', '/assets/img/items/1597044210versus-white-dry.jpegWPebNYYRss.jpg', 0, 0, 0, '2020-08-10 14:08:30', '2020-08-10 14:08:30', '', NULL, 1, NULL, 'Versus', 'South Africa', 750, 12),
(3165, 13, 'Versus white sweet', '200.00', '0.00', '/assets/img/items/1597044210versus-white-sweet.jpegMsJS1OQSuM.jpg', 0, 0, 0, '2020-08-10 14:08:30', '2020-08-10 14:08:30', '', NULL, 1, NULL, 'Versus', 'South Africa', 750, 9),
(3166, 13, 'Culemborg cape red', '200.00', '0.00', '/assets/img/items/1597044210culemborg-cape-red.jpegU21tnOWaBx.jpg', 0, 0, 0, '2020-08-10 14:08:30', '2020-08-10 14:08:30', '', NULL, 1, NULL, 'Culemborg', 'South Africa', 750, 14),
(3167, 13, 'Upper valley nabygelegen dry red', '200.00', '0.00', '/assets/img/items/1597044210upper-valley-dry-red.jpegRZXoKjQfmi.jpg', 0, 0, 0, '2020-08-10 14:08:30', '2020-08-10 14:08:30', '', NULL, 1, NULL, 'Upper valley', 'South Africa', 2, 13),
(3168, 13, 'Upper valley nabygelegen white dry', '200.00', '0.00', '/assets/img/items/1597044210upper-valley-nabygelegen-white-dry.jpegmxMrZY7Hhe.jpg', 0, 0, 0, '2020-08-10 14:08:30', '2020-08-10 14:08:30', '', NULL, 1, NULL, 'Upper valley', 'South Africa', 2, 13),
(3169, 13, 'Upper valley nabygelegen sweet red', '200.00', '0.00', '/assets/img/items/1597044210upper-valley-nabygelegen-sweet-red.jpegXftGFIDEqQ.jpg', 0, 0, 0, '2020-08-10 14:08:30', '2020-08-10 14:08:30', '', NULL, 1, NULL, 'Upper valley', 'South Africa', 2, 12),
(3170, 13, 'Upper valley nabygelegen sweet white', '200.00', '0.00', '/assets/img/items/1597044210upper-valley-nabygelegen-sweet-white.jpegnXc3FhJtfY.jpg', 0, 0, 0, '2020-08-10 14:08:30', '2020-08-10 14:08:30', '', NULL, 1, NULL, 'Upper valley', 'South Africa', 2, 12),
(3171, 13, 'Mamma mia red sweet', '200.00', '0.00', '/assets/img/items/1597044210mamma-mia-red-sweet.jpeg1uTrMEkZ1P.jpg', 0, 0, 0, '2020-08-10 14:08:30', '2020-08-10 14:08:30', '', NULL, 1, NULL, 'Mamma mia', 'Italy', 750, 13),
(3172, 13, 'Leleshwa red sweet', '200.00', '0.00', '/assets/img/items/1597044210leleshwa-red-sweet.jpegx2JFN5CszP.jpg', 0, 0, 0, '2020-08-10 14:08:30', '2020-08-10 14:08:30', '', NULL, 1, NULL, 'Leleshwa', 'Kenya', 750, 8),
(3173, 13, 'Black tower', '200.00', '0.00', '/assets/img/items/1597044210black-tower.jpeg7FLSdytnaR.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'Black tower', 'Germany', 2, 6),
(3174, 13, 'Carlo rossi sangria bottle', '200.00', '0.00', '/assets/img/items/1597044211carlo-rossi-sangria-bottle.jpegpxq2bpFE7Z.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'Carlo Rossi', 'United States', 750, 10),
(3175, 13, 'Mateus sweet rose', '200.00', '0.00', '/assets/img/items/1597044211mateus-sweet-rose.jpegwanigqWtDf.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'Mateus', 'Portugal', 750, 11),
(3176, 13, 'Caprice red dry cask', '200.00', '0.00', '/assets/img/items/1597044211caprice-red-dry-cask.jpeg8sDDX0PTxA.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'Caprice', 'South Africa', 1, 14),
(3177, 13, 'Tall horse merlot', '200.00', '0.00', '/assets/img/items/1597044211tall-horse-merlot.jpegmCZb7531K4.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'Tall Horse', 'South Africa', 750, 14),
(3178, 13, 'JP chenet ice edition', '200.00', '0.00', '/assets/img/items/1597044211JP-chenet-ice-edition.jpegeMi31dr0R6.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'JP Chenet Wine', 'France', 750, 11),
(3179, 13, 'Fragolino rose sparkling wine', '200.00', '0.00', '/assets/img/items/1597044211fragolino-rose.jpegBZtl4WWt6K.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'Fragolino', 'Italy', 750, 12),
(3180, 13, 'Vina lastra dry red', '200.00', '0.00', '/assets/img/items/1597044211vina-lastra-dry-red-.jpegVKC8pWDB7l.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'Vina Lastra', 'France', 750, 12),
(3181, 13, 'Osborne medium sherry', '200.00', '0.00', '/assets/img/items/1597044211osborne-medium-sherry.jpegOjMKcn38u0.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'Osborne sherry', 'Spain', 1, 15),
(3182, 13, 'Osborne rich golden sherry', '200.00', '0.00', '/assets/img/items/1597044211osborne-rich-golden-sherry.jpegJdkQFah9Yk.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'Osborne sherry', 'Spain', 1, 15),
(3183, 13, 'Pierre marcel sweet white', '200.00', '0.00', '/assets/img/items/1597044211pierre-marcel-sweet-white.jpeglVnpJKwegc.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'Pierre Marcel', 'France', 750, 11),
(3184, 13, 'Fragolino bianco morando', '200.00', '0.00', '/assets/img/items/1597044211fragolino-bianco-morando.jpeg9GG3U9uSCV.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'Fragolino', 'Italy', 750, 7),
(3185, 13, 'Casal mendes sangria', '200.00', '0.00', '/assets/img/items/1597044211casal-mendes-sangria.jpeghxYhNQQ34T.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'Casal mendes', 'Portugal', 750, 7),
(3186, 13, 'Casal mendes rose', '200.00', '0.00', '/assets/img/items/1597044211casal-mendes-rose.jpegSewghuEHHi.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'Casal mendes', 'Portugal', 750, 11),
(3187, 13, 'Sandeman special reserve ruby porto', '200.00', '0.00', '/assets/img/items/1597044211sandeman-special-reserve-ruby-porto.jpeg7IIGAK5t3u.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'Sandeman', 'Portugal', 750, 20),
(3188, 13, 'Trivento tribu malbec', '200.00', '0.00', '/assets/img/items/1597044211Trivento-tribu-malbec.jpegHkodUJxL02.jpg', 0, 0, 0, '2020-08-10 14:08:31', '2020-08-10 14:08:31', '', NULL, 1, NULL, 'Trivento Tribu', 'Argentina', 750, 13),
(3189, 13, 'Catena malbec', '200.00', '0.00', '/assets/img/items/1597044211catena-malbec.jpegO4dO2okKUi.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Catena', 'Argentina', 750, 14),
(3190, 13, 'Trumpeter malbec', '200.00', '0.00', '/assets/img/items/1597044212trumpeter-malbec.jpegivTjrsCv3N.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Trumpeter', 'Argentina', 750, 14),
(3191, 13, 'Trumpeter reserve malbec', '200.00', '0.00', '/assets/img/items/1597044212trumpeter-reserve-malbec.jpegFXMbGryEOR.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Trumpeter', 'Argentina', 750, 14),
(3192, 13, 'Nederburg pinot grigio', '200.00', '0.00', '/assets/img/items/1597044212nederburg-pinot-grigio.jpegw7CkCJswob.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Nederburg', 'South Africa', 750, 13),
(3193, 13, 'Lambrusco dell\'emilia amabile bianco', '200.00', '0.00', '/assets/img/items/1597044212lambrusco-dell-emilia-amabile-bianco.jpeg0plZOfj3LF.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Lambrusco', 'Italy', 750, 8),
(3194, 13, 'El chivo sauvingnon blanc', '200.00', '0.00', '/assets/img/items/1597044212el-chiva-sauvingnon-blanc.jpegV8x66J3hWq.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'El Chivo', 'Chile', 750, 13),
(3195, 13, 'El chivo cabernet sauvignon', '200.00', '0.00', '/assets/img/items/1597044212el-chivo-cabernet-sauvignon.jpegmZfsYbLtxi.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'El Chivo', 'Chile', 750, 13),
(3196, 13, 'Amarone cesari 2010', '200.00', '0.00', '/assets/img/items/1597044212amarone-cessari-2010.jpegcexMQhZFXD.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 15),
(3197, 13, 'Amarone cesari 2013', '200.00', '0.00', '/assets/img/items/1597044212amarone-cesari-2013.jpegikDbOMfYXg.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 15),
(3198, 13, 'Simonsig pinotage', '200.00', '0.00', '/assets/img/items/1597044212Simonsig-pinotage.jpegKvNIe7Qsoj.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Simonsig', '', 750, 0),
(3199, 13, 'Waterford reserve estate cabernet sauvignon', '200.00', '0.00', '/assets/img/items/1597044212waterford-reserve-estate-cabernet-sauvignon.jpegMyx9aIKBYv.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Undefined', 'South Africa', 750, 14),
(3200, 13, 'Ripasso bosan cesari', '200.00', '0.00', '/assets/img/items/1597044212ripasso-bosan-cesari.jpegJFiTm4BUnA.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 14),
(3201, 13, 'Mouton cadet white', '200.00', '0.00', '/assets/img/items/1597044212mouton-cadet-white.jpegep1xGnnnda.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Mouton Cadet', 'France', 750, 12),
(3202, 13, 'Mouton cader reserve medoc', '200.00', '0.00', '/assets/img/items/1597044212mouton-cader-reserve-medoc.jpegiEUYSM3HVl.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Mouton Cadet', 'France', 750, 14),
(3203, 13, 'Mouton cadet reserve sauternes', '200.00', '0.00', '/assets/img/items/1597044212mouton-cadet-reserve-sauternes.jpegVqFrqUBsRY.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Mouton Cadet', 'France', 750, 14),
(3204, 13, 'Mouton cadet red', '200.00', '0.00', '/assets/img/items/1597044212mouton-cadet-red.jpegU6W8h84qWv.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Mouton Cadet', 'France', 750, 14),
(3205, 13, 'Gran verano sauvignon blanc', '200.00', '0.00', '/assets/img/items/1597044212gran-verano-sauvignon-blanc.jpegIwHYisqjGx.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Undefined', 'Chile', 750, 13),
(3206, 13, 'Gran verano merlot', '200.00', '0.00', '/assets/img/items/1597044212gran-verano-merlot.jpeguJA00BOIHC.jpg', 0, 0, 0, '2020-08-10 14:08:32', '2020-08-10 14:08:32', '', NULL, 1, NULL, 'Undefined', 'Chile', 750, 14),
(3207, 13, 'Gran verano camenere rose', '200.00', '0.00', '/assets/img/items/1597044212gran-verano-camenere-rose.jpeg0miseYitAS.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Undefined', 'Chile', 750, 14),
(3208, 13, 'Frontera aftermidnight', '200.00', '0.00', '/assets/img/items/1597044213frontera-aftermidnight.jpegTBx7jVNg87.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Frontera', 'Chile', 750, 12),
(3209, 13, 'B&G french tom reserve Bordeaux', '200.00', '0.00', '/assets/img/items/1597044213frontera-aftermidnight.jpegTBx7jVNg87.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Undefined', 'France', 750, 14),
(3210, 13, 'Almadi amarone della valpolicella classico', '200.00', '0.00', '/assets/img/items/1597044213almadi-amarone-della-valpolicella-classico.jpegy6vNVxA79v.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Tommassi', 'Italy', 750, 15),
(3211, 13, 'Frontera Sparkling Rose', '200.00', '0.00', '/assets/img/items/1597044213Frontera-Sparkling-Rose.jpeg6j1MpqhFlf.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Frontera', 'Chile', 750, 12),
(3212, 13, 'Frontera Sparkling Moscato', '200.00', '0.00', '/assets/img/items/1597044213Frontera-Sparkling-Moscato.jpegdeJXu1W2rn.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Frontera', 'Chile', 750, 12),
(3213, 13, 'Black Bird Sweet Rose', '200.00', '0.00', '/assets/img/items/1597044213Black-Bird-Sweet-Rose.jpegRoO1MpSViM.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Black Bird', 'South Africa', 750, 9),
(3214, 13, 'Black Bird Sweet Red', '200.00', '0.00', '/assets/img/items/1597044213Black-Bird-Sweet-Red.jpegjjYEjlFx0L.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Black Bird', 'South Africa', 750, 9),
(3215, 13, 'Black Bird Sweet White', '200.00', '0.00', '/assets/img/items/1597044213Black-Bird-Sweet-White.jpegpp1DDQLFe4.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Black Bird', 'South Africa', 750, 9),
(3216, 13, 'Terra argenta malbec', '200.00', '0.00', '/assets/img/items/1597044213terra-argenta.jpegpMmPiKXUOi.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Undefined', 'Argentina', 750, 13),
(3217, 13, 'Porto cruz 10 years', '200.00', '0.00', '/assets/img/items/1597044213porto-cruz-10-years.jpegp3RkF3raht.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Porto Cruz', 'Portugal', 750, 21),
(3218, 13, 'Cockburn\'s 10 years', '200.00', '0.00', '/assets/img/items/1597044213porto-cruz-10-years.jpegp3RkF3raht.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Undefined', 'Portugal', 750, 21),
(3219, 13, 'Rib shack red', '200.00', '0.00', '/assets/img/items/1597044213rib-shack-red.jpegIPuaPI9TQm.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Undefined', 'South Africa', 750, 14),
(3220, 13, 'Waterfold sauvignon blanc', '200.00', '0.00', '/assets/img/items/1597044213waterfold-sauvignon-blanc.jpegXVWX5y6Y4Z.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Undefined', 'South Africa', 750, 14),
(3221, 13, 'Cockburn\'s late bottle vintage', '200.00', '0.00', '/assets/img/items/1597044213waterfold-sauvignon-blanc.jpegXVWX5y6Y4Z.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Cockburns', 'Portugal', 750, 20),
(3222, 13, 'Four cousins sweet white cask', '200.00', '0.00', '/assets/img/items/1597044213four-cousins-sweet-white.jpegcFNaGOuRDj.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Four Cousins', 'South Africa', 5, 8),
(3223, 13, 'Sandeman late bottle vintage porto', '200.00', '0.00', '/assets/img/items/1597044213four-cousins-sweet-white.jpegcFNaGOuRDj.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Sandeman', 'Undefined', 750, 0),
(3224, 13, 'Simonsig rose', '200.00', '0.00', '/assets/img/items/1597044213four-cousins-sweet-white.jpegcFNaGOuRDj.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Simonsig', 'South Africa', 750, 12),
(3225, 13, 'Sileni estate sparkling rose', '200.00', '0.00', '/assets/img/items/1597044213four-cousins-sweet-white.jpegcFNaGOuRDj.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Sileni', 'New Zealand', 750, 14),
(3226, 13, 'Jacob\'s creek sparkling rose', '200.00', '0.00', '/assets/img/items/1597044213four-cousins-sweet-white.jpegcFNaGOuRDj.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Jacob\'s Creek', 'Australia', 750, 12),
(3227, 13, 'Sensi pinot noir rose prosecco', '200.00', '0.00', '/assets/img/items/1597044213four-cousins-sweet-white.jpegcFNaGOuRDj.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Sensi', 'Italy', 750, 11),
(3228, 13, 'Bottega rose prosecco', '200.00', '0.00', '/assets/img/items/1597044213four-cousins-sweet-white.jpegcFNaGOuRDj.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Bottega', 'Italy', 750, 12),
(3229, 13, 'Harveys solera sherry bristol cream', '200.00', '0.00', '/assets/img/items/1597044213four-cousins-sweet-white.jpegcFNaGOuRDj.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, 'Harveys Bristol', '', 1, 0),
(3230, 12, 'Iwai japanese whisky', '200.00', '0.00', '/assets/img/items/1597044213iwai-japanese-whisky.jpegmF9qUiSWbH.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, '', '', 0, 0),
(3231, 12, 'Caol ila moch', '200.00', '0.00', '/assets/img/items/1597044213caol-ila-moch.jpegeGXgsWd9h3.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, '', '', 0, 0),
(3232, 12, 'Jameson distiller\'s safe', '200.00', '0.00', '/assets/img/items/1597044213caol-ila-moch.jpegeGXgsWd9h3.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, '', '', 0, 0),
(3233, 12, 'Macallan quest', '200.00', '0.00', '/assets/img/items/1597044213macallan-quest.jpegSajaRg1kxR.jpg', 0, 0, 0, '2020-08-10 14:08:33', '2020-08-10 14:08:33', '', NULL, 1, NULL, '', '', 0, 0),
(3234, 12, 'The nikka 12 years', '200.00', '0.00', '/assets/img/items/1597044213the-nikka-12-years.jpegrxTftouhhV.jpg', 0, 0, 0, '2020-08-10 14:08:34', '2020-08-10 14:08:34', '', NULL, 1, NULL, '', '', 0, 0),
(3235, 12, 'Jack daniels no. 27 gold', '200.00', '0.00', '/assets/img/items/1597044214jack-daniels-no.-27-gold.jpegMee0K43GX5.jpg', 0, 0, 0, '2020-08-10 14:08:34', '2020-08-10 14:08:34', '', NULL, 1, NULL, '', '', 0, 0),
(3236, 12, 'Jim beam double oak', '200.00', '0.00', '/assets/img/items/1597044214Jim-beam-double-oak.jpeglbNzLalg51.jpg', 0, 0, 0, '2020-08-10 14:08:34', '2020-08-10 14:08:34', '', NULL, 1, NULL, '', '', 0, 0),
(3237, 13, 'Pure heaven white celebration drink (non-alcoholic)', '200.00', '0.00', '/assets/img/items/1597044214pure-heaven-celebration-drink-(non-alcoholic).jpegbQXw3Pw1AY.jpg', 0, 0, 0, '2020-08-10 14:08:34', '2020-08-10 14:08:34', '', NULL, 1, NULL, '', '', 0, 0),
(3238, 13, 'Royalty white celebration drink (non-alcoholic)', '200.00', '0.00', '/assets/img/items/1597044214royalty-celebration-drink-(non-alcoholic).jpegyNlaWnd6Dn.jpg', 0, 0, 0, '2020-08-10 14:08:34', '2020-08-10 14:08:34', '', NULL, 1, NULL, '', '', 0, 0),
(3239, 13, 'Pure heaven red celebration drink (non-alcholic)', '200.00', '0.00', '/assets/img/items/1597044214pure-heaven-red-celebration-drink-(non-alcholic).jpegt0r9fhRI5U.jpg', 0, 0, 0, '2020-08-10 14:08:34', '2020-08-10 14:08:34', '', NULL, 1, NULL, '', '', 0, 0),
(3240, 13, 'Cessari soave classico.', '200.00', '0.00', '/assets/img/items/1597044214pure-heaven-red-celebration-drink-(non-alcholic).jpegt0r9fhRI5U.jpg', 0, 0, 0, '2020-08-10 14:08:34', '2020-08-10 14:08:34', '', NULL, 1, NULL, '', '', 0, 0),
(3241, 13, 'Nero nobile al Espresso (coffee flavoured)', '200.00', '0.00', '/assets/img/items/1597044214nero-nobile-coffee-flavoured-wine.jpeghSiPtU8VBN.jpg', 0, 0, 0, '2020-08-10 14:08:34', '2020-08-10 14:08:34', '', NULL, 1, NULL, '', '', 0, 0),
(3242, 14, 'Absolut vodka', '200.00', '0.00', '/assets/img/items/1597044214absoiut-vodka.jpegYKiAc9ESLr.jpg', 0, 0, 0, '2020-08-10 14:08:34', '2020-08-10 14:08:34', '', NULL, 1, NULL, '', '', 0, 0),
(3243, 14, 'Smirnoff vodka red', '200.00', '0.00', '/assets/img/items/1597044214smirnoff-vodka-red.jpegR2fg3yQ2To.jpg', 0, 0, 0, '2020-08-10 14:08:34', '2020-08-10 14:08:34', '', NULL, 1, NULL, '', '', 0, 0),
(3244, 14, 'Absolut watkins', '200.00', '0.00', '/assets/img/items/1597044214absolut-watkins.jpegzKDDN361q2.jpg', 0, 0, 0, '2020-08-10 14:08:34', '2020-08-10 14:08:34', '', NULL, 1, NULL, '', '', 0, 0),
(3245, 14, 'Absolut vanila', '200.00', '0.00', '/assets/img/items/1597044214absolut-vanila.jpeg8XBhyEBjOP.jpg', 0, 0, 0, '2020-08-10 14:08:34', '2020-08-10 14:08:34', '', NULL, 1, NULL, '', '', 0, 0),
(3246, 14, 'Flirt vodka green apple', '200.00', '0.00', '/assets/img/items/1597044214flirt-vodka-green-apple.jpegNHBQRr5gCH.jpg', 0, 0, 0, '2020-08-10 14:08:34', '2020-08-10 14:08:34', '', NULL, 1, NULL, '', '', 0, 0),
(3247, 14, 'Flirt vodka', '200.00', '0.00', '/assets/img/items/1597044214flirt-vodka.jpegIUaSKEeSby.jpg', 0, 0, 0, '2020-08-10 14:08:34', '2020-08-10 14:08:34', '', NULL, 1, NULL, '', '', 0, 0),
(3248, 14, 'Sky raspberry', '200.00', '0.00', '/assets/img/items/1597044214sky-raspberry.jpeg6eQArz3MCC.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3249, 14, 'Sky grape', '200.00', '0.00', '/assets/img/items/1597044215sky-grape.jpegl3e7x6omIE.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3250, 14, 'Skyy ginger', '200.00', '0.00', '/assets/img/items/1597044215skyy-ginger.jpegUNL4yxpYih.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3251, 14, 'Skyy dragon fruit', '200.00', '0.00', '/assets/img/items/1597044215skyy-dragon-fruit.jpegk4pieL0ujE.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3252, 14, 'Skyy cherry', '200.00', '0.00', '/assets/img/items/1597044215skyy-cherry.jpegqddTO5q2gA.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3253, 14, 'Skyy vodka', '200.00', '0.00', '/assets/img/items/1597044215skyy-vodka.jpegQSpUo4PodS.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3254, 14, 'Skyy passion', '200.00', '0.00', '/assets/img/items/1597044215skyy-passion.jpeg4wPcSdxybQ.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3255, 14, 'Skyy coconut', '200.00', '0.00', '/assets/img/items/1597044215skyy-coconut.jpeg0b4K6GLgXf.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3256, 14, 'Skyy blood orange', '200.00', '0.00', '/assets/img/items/1597044215skyy-blood-orange-.jpegzR7GyMdNjY.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3257, 14, 'Flirt vodka orange', '200.00', '0.00', '/assets/img/items/1597044215flirt-vodka-orange.jpegU6H45FkTQs.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3258, 14, 'Ciroc snap frost', '200.00', '0.00', '/assets/img/items/1597044215ciroc-vodka.jpegeGehggH51s.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3259, 14, 'Absolut ruby red', '200.00', '0.00', '/assets/img/items/1597044215absolut-ruby-red.jpeghRhe0t1J2w.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3260, 14, 'Absolut raspberry', '200.00', '0.00', '/assets/img/items/1597044215absolut-raspberry.jpegGA88zkTtZ0.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3261, 14, 'Absolut peppar', '200.00', '0.00', '/assets/img/items/1597044215absolut-peppar.jpeggyg91DGZuZ.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3262, 14, 'Absolut mango', '200.00', '0.00', '/assets/img/items/1597044215absolut-mango.jpegluzdJSmmkq.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3263, 14, 'Absolut mandrin', '200.00', '0.00', '/assets/img/items/1597044215absolut-mandrin.jpegxe12gdI3ew.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3264, 14, 'Absolut kurant', '200.00', '0.00', '/assets/img/items/1597044215absolut-kurant.jpegB5WPsORV96.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3265, 14, 'Absolut citron', '200.00', '0.00', '/assets/img/items/1597044215absolut-citron.jpegdY1tGTNF5f.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3266, 14, 'Ciroc blue steel', '200.00', '0.00', '/assets/img/items/1597044215ciroc-blue-steel.jpegcVrCemqPjx.jpg', 0, 0, 0, '2020-08-10 14:08:35', '2020-08-10 14:08:35', '', NULL, 1, NULL, '', '', 0, 0),
(3267, 14, 'Cruz candy and vodka infusion', '200.00', '0.00', '/assets/img/items/1597044215cruz-candy-and-vodka-infusion.jpegclTHWTK125.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3268, 14, 'Absolut pears', '200.00', '0.00', '/assets/img/items/1597044216absolut-pears.jpegB5wZjwpSJr.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3269, 14, 'Beluga gold line', '200.00', '0.00', '/assets/img/items/1597044216beluga-gold-line.jpeghjj3yzjZMY.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3270, 14, 'Beluga noble russian', '200.00', '0.00', '/assets/img/items/1597044216beluga-noble-russian.jpegYtkbiaMdEa.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3271, 14, 'Invincible vodka', '200.00', '0.00', '/assets/img/items/1597044216invincible-vodka.jpegfABHHPEAtv.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3272, 14, 'Hapsburg absinthe classic 72.5', '200.00', '0.00', '/assets/img/items/1597044216hapsburg-absinthe-vodka.jpegOOZYgNQHKx.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3273, 14, 'Hapsburg absinthe blue cassis 89.9', '200.00', '0.00', '/assets/img/items/1597044216hapsburg-absinthe-blue-cassis-89.9.jpegNowh0i5Gu0.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3274, 14, 'Hapsburg absinthe black fruit 89.9', '200.00', '0.00', '/assets/img/items/1597044216hapsburg-absinthe-black-fruit-89.9.jpegTgnHTrFdzR.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3275, 14, 'Hapsburg absinthe black fruit 53.5', '200.00', '0.00', '/assets/img/items/1597044216hapsburg-absinthe-black-fruit-53.5.jpegY8VYCHUrJ5.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3276, 14, 'Hapsburg absinthe original 89.9', '200.00', '0.00', '/assets/img/items/1597044216hapsburg-absinthe-original-89.9.jpeg3MaX0FSVLk.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3277, 14, 'Hapsburg absinthe red fruit 89.9', '200.00', '0.00', '/assets/img/items/1597044216hapsburg-absinthe-red-fruit-89.9.jpeg6CuZrKePGF.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3278, 14, 'Stolichnaya', '200.00', '0.00', '/assets/img/items/1597044216stolichnaya-.jpeg4Jr8kAAnAV.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3279, 14, 'Titos handmade vodka', '200.00', '0.00', '/assets/img/items/1597044216titos-handmade-vodka.jpegI1rQNt3JoS.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3280, 14, 'Finlandia vodka original', '200.00', '0.00', '/assets/img/items/1597044216finlandia-vodka-original.jpegBUKECbYgre.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3281, 14, 'Medea vodka', '200.00', '0.00', '/assets/img/items/1597044216medea-vodka.jpegmQDrypHg1o.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3282, 14, 'Vodka 360 double chocolate', '200.00', '0.00', '/assets/img/items/1597044216360-double-chocolate-vodka.jpeg1y7tfQxAIy.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3283, 14, 'Vodka 360 mandarin orange', '200.00', '0.00', '/assets/img/items/1597044216vodka-360-mandarin-orange.jpegkWFieCpzg1.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3284, 14, 'Vodka 360 huckleberry', '200.00', '0.00', '/assets/img/items/1597044216vodka-360-huckleberry.jpegKXNkZFBduD.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3285, 14, 'Vodka 360 madagascar  vanilla', '200.00', '0.00', '/assets/img/items/1597044216vodka-360-madagascar--vanilla.jpegYn3MCVTmPl.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3286, 14, 'Magic moments', '200.00', '0.00', '/assets/img/items/1597044216magic-moments.jpegdqMC8YCZxv.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3287, 14, 'Belvedere', '200.00', '0.00', '/assets/img/items/1597044216belvedere.jpegYUvLNQnXYE.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3288, 14, 'Belvedere lemon tea', '200.00', '0.00', '/assets/img/items/1597044216balvedere-lemon-tea.jpegwjNWaq49Zr.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3289, 14, 'Belvedere blood mary', '200.00', '0.00', '/assets/img/items/1597044216belvedere-blood-mary.jpegtTPfP5JMqv.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3290, 14, 'Belvedere citrus', '200.00', '0.00', '/assets/img/items/1597044216belvedere-citrus.jpegDgjxm2wxyz.jpg', 0, 0, 0, '2020-08-10 14:08:36', '2020-08-10 14:08:36', '', NULL, 1, NULL, '', '', 0, 0),
(3291, 14, 'Belvedere orange', '200.00', '0.00', '/assets/img/items/1597044216belvedere-orange.jpegDMMrmqhg8v.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3292, 14, 'Belvedere pink grape fruit', '200.00', '0.00', '/assets/img/items/1597044217belvedere-pink-grape-fruit.jpegc5bzhEwaN1.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3293, 14, 'Absolut elyx', '200.00', '0.00', '/assets/img/items/1597044217absolut-elyx.jpegrLHJ3I7l0M.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3294, 14, 'Smirnoff black', '200.00', '0.00', '/assets/img/items/1597044217smirnoff-black.jpegJkJXd6KqsS.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3295, 14, 'Smirnoff blue', '200.00', '0.00', '/assets/img/items/1597044217smirnoff-blue.jpegQqBWhcWIaq.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3296, 14, 'Smirnoff citrus', '200.00', '0.00', '/assets/img/items/1597044217smirnoff-citrus.jpegFVxnXYwmS2.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3297, 14, 'Smirnoff espresso', '200.00', '0.00', '/assets/img/items/1597044217smirnoff-espresso.jpegCvTt4G52ie.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3298, 14, 'Smirnoff gold', '200.00', '0.00', '/assets/img/items/1597044217smirnoff-gold.jpegMDn0cs6Lo9.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3299, 14, 'Smirnoff green apple', '200.00', '0.00', '/assets/img/items/1597044217smirnoff-green-apple.jpegWe7925FbaR.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3300, 14, 'Smirnoff orange', '200.00', '0.00', '/assets/img/items/1597044217smirnoff-orange.jpegamS6hWtG98.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3301, 14, 'Smirnoff raspberry', '200.00', '0.00', '/assets/img/items/1597044217smirnoff-raspberry.jpeg0Nl8MbJ3L4.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3302, 14, 'Smirnoff vanilla', '200.00', '0.00', '/assets/img/items/1597044217smirnoff-vanilla.jpegRQCx2stVuc.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3303, 14, 'Skyy 90 vodka', '200.00', '0.00', '/assets/img/items/1597044217skyy-90-vodka.jpegQlAt0CLVlK.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3304, 14, 'Flirt vodka golden apple', '200.00', '0.00', '/assets/img/items/1597044217flirt-vodka-golden-apple.jpegZ1CkMYmiMa.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0);
INSERT INTO `temp_items` (`id`, `item_category_id`, `name`, `price`, `old_price`, `image`, `is_recommended`, `is_popular`, `is_new`, `created_at`, `updated_at`, `desc`, `placeholder_image`, `is_active`, `is_veg`, `brand`, `origin`, `quantity`, `alcohol`) VALUES
(3305, 14, 'Ketel one', '200.00', '0.00', '/assets/img/items/1597044217ketel-one.jpegVv7njrBvG0.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3306, 14, 'Ketel one citroen', '200.00', '0.00', '/assets/img/items/1597044217ketel-one-citroen.jpegDASRZczrey.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3307, 14, 'Ciroc coconut', '200.00', '0.00', '/assets/img/items/1597044217ciroc-coconut.jpegEiaGwUipuC.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3308, 14, 'Ciroc pineapple', '200.00', '0.00', '/assets/img/items/1597044217ciroc-pineapple.jpegaG1OMIZoGo.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3309, 14, 'Ciroc red berry', '200.00', '0.00', '/assets/img/items/1597044217ciroc-red-berry-.jpegtl8TWw5ohM.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3310, 14, 'Grey goose', '200.00', '0.00', '/assets/img/items/1597044217grey-goose.jpegwt4G8Urk4m.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3311, 14, 'Seagram\'s vodka', '200.00', '0.00', '/assets/img/items/1597044217grey-goose.jpegwt4G8Urk4m.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3312, 14, 'Neon coffee', '200.00', '0.00', '/assets/img/items/1597044217neon-coffee.jpegXveDpzs0eq.jpg', 0, 0, 0, '2020-08-10 14:08:37', '2020-08-10 14:08:37', '', NULL, 1, NULL, '', '', 0, 0),
(3313, 14, 'Neon lemon', '200.00', '0.00', '/assets/img/items/1597044217neon-lemon.jpegWOem9OSpUO.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3314, 14, 'Neon pineapple', '200.00', '0.00', '/assets/img/items/1597044218neon-pineapple.jpegpJJ9laIw2x.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3315, 14, 'KGB vodka caramel liqueur', '200.00', '0.00', '/assets/img/items/1597044218KGB-vodka-caramel.jpegyHzGDiB6EX.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3316, 14, 'KGB vodka classic', '200.00', '0.00', '/assets/img/items/1597044218KGB-vodka.jpeg5vqcZDQnPC.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3317, 14, 'KGB vodka limon', '200.00', '0.00', '/assets/img/items/1597044218KGB-vodka-limon.jpegqSPTtOivLA.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3318, 14, 'Diamond vodka', '200.00', '0.00', '/assets/img/items/1597044218diamond-vodka.jpegzIpBFVBCr2.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3319, 14, 'Cruz vintage black', '200.00', '0.00', '/assets/img/items/1597044218cruz-vintage-black.jpegx3ZwzT0cj6.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3320, 14, 'White mischief vodka', '200.00', '0.00', '/assets/img/items/1597044218white-mischief-vodka.jpeg5siUBntcbp.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3321, 14, 'Crystal head vodka', '200.00', '0.00', '/assets/img/items/1597044218crystal-head-vodka.jpegKBE4FijRs8.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3322, 14, 'The botanist islay london dry gin', '200.00', '0.00', '/assets/img/items/1597044218the-botanist-islay-london-dry-gin.jpegKWg8Hzdbf6.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3323, 14, 'The buck vodka', '200.00', '0.00', '/assets/img/items/1597044218the-buck-vodka.jpegeOISeJ0bD2.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3324, 14, 'Danzka vodka apple', '200.00', '0.00', '/assets/img/items/1597044218danzka-vodka-apple.jpeggbhHJ4d1FJ.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3325, 14, 'Imperia russian vodka', '200.00', '0.00', '/assets/img/items/1597044218imperia-russian-vodka.jpegDEOoQdn0xK.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3326, 14, 'Finlandia platinum', '200.00', '0.00', '/assets/img/items/1597044218finlandia-platinum-.jpeghpgmZjmWhl.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3327, 14, 'Firestarter vodka', '200.00', '0.00', '/assets/img/items/1597044218firestarter-vodka.jpeg48Af51Ls1I.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3328, 14, 'Eiko', '200.00', '0.00', '/assets/img/items/1597044218eiko.jpeg3IP7LsIKuz.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3329, 14, 'Smirnoff black label vodka', '200.00', '0.00', '/assets/img/items/1597044218smirnoff-black-label-vodka.jpegd4vYchqSa8.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3330, 14, '42 below', '200.00', '0.00', '/assets/img/items/159704421842-below.jpegrCi6cQSAKT.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3331, 14, 'Smirnoff gold apple', '200.00', '0.00', '/assets/img/items/1597044218smirnoff-gold-apple.jpegEBXAKC5tZk.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3332, 14, 'Stolichnaya elit', '200.00', '0.00', '/assets/img/items/1597044218stolichnaya-elit.jpegniyxyLYyey.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3333, 14, 'Grey goose vx', '200.00', '0.00', '/assets/img/items/1597044218grey-goose-vx.jpegbMFH3Sj8Ym.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0),
(3334, 14, 'Tanqueray sterling vodka', '200.00', '0.00', '/assets/img/items/1597044218tanqueray-sterling-vodka.jpegWy630CkGlN.jpg', 0, 0, 0, '2020-08-10 14:08:38', '2020-08-10 14:08:38', '', NULL, 1, NULL, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `payable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payable_id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('deposit','withdraw') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint(20) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `payable_type`, `payable_id`, `wallet_id`, `type`, `amount`, `confirmed`, `meta`, `uuid`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 39, 7, 'deposit', 125000, 1, '{\"description\":\"Refund for order cancellation.OD-08-10-H0E2-JA53QE3MB\"}', 'f2c42d6b-a0a9-4109-9480-744953a51012', '2020-08-10 15:27:55', '2020-08-10 15:27:55'),
(2, 'App\\User', 39, 7, 'withdraw', -125000, 1, '{\"description\":\"Partial payment for order:OD-08-10-KMH6-OGZRGORV5\"}', 'd7b3fb2d-8db9-402e-95bc-e69d2a330783', '2020-08-10 15:36:55', '2020-08-10 15:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `to_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'transfer',
  `status_last` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_id` int(10) UNSIGNED NOT NULL,
  `withdraw_id` int(10) UNSIGNED NOT NULL,
  `discount` bigint(20) NOT NULL DEFAULT 0,
  `fee` bigint(20) NOT NULL DEFAULT 0,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `language_name`, `data`, `created_at`, `updated_at`, `is_default`, `is_active`) VALUES
(1, 'English', '{\r\n    \"desktopHeading\": \"Order from restaurants near you\",\r\n    \"desktopSubHeading\": \"Foodomaa is the easy way to get the food you love delivered.\\r\\nWe bring food from the best restaurants and desserts to your doorstep. We have <b style=\\\"\\\">hundreds<\\/b> of restaurants to choose from.\",\r\n    \"desktopUseAppButton\": \"Use App Now\",\r\n    \"desktopAchievementOneTitle\": \"Restaurants\",\r\n    \"desktopAchievementOneSub\": \"2300+\",\r\n    \"desktopAchievementTwoTitle\": \"Items\",\r\n    \"desktopAchievementTwoSub\": \"65000+\",\r\n    \"desktopAchievementThreeTitle\": \"Customers\",\r\n    \"desktopAchievementThreeSub\": \"1M+\",\r\n    \"desktopAchievementFourTitle\": \"Deliveries\",\r\n    \"desktopAchievementFourSub\": \"5M+\",\r\n    \"desktopFooterAddress\": \"<p>#1201, Someplace, Near Somewhere<\\/p><p><a href=\\\"\\/pages\\/hello-world\\\" target=\\\"_blank\\\">Cookie Policy<\\/a><br><\\/p>\",\r\n    \"desktopFooterSocialHeader\": \"We Are Social\",\r\n    \"desktopSocialFacebookLink\": \"https:\\/\\/www.facebook.com\",\r\n    \"desktopSocialGoogleLink\": \"https:\\/\\/www.google.com\",\r\n    \"desktopSocialYoutubeLink\": null,\r\n    \"desktopSocialInstagramLink\": \"https:\\/\\/www.instagram.com\",\r\n    \"gdprMessage\": \"<p>We use Cookies to give you the best possible service. By continuing to browse our site you are agreeing to our use of <b>Cookies.&nbsp;&nbsp;<\\/b><a href=\\\"https:\\/\\/en.wikipedia.org\\/wiki\\/HTTP_cookie\\\" target=\\\"_blank\\\" style=\\\"background-color: rgb(255, 255, 255); font-size: 0.9rem;\\\">Read About Cookies<\\/a><\\/p>\",\r\n    \"gdprConfirmButton\": \"Okay\",\r\n    \"changeLanguageText\": \"Change Language\",\r\n    \"firstScreenHeading\": \"Order from top & favourite restaurants\",\r\n    \"firstScreenSubHeading\": \"Ready to see top restaurant to order?\",\r\n    \"firstScreenSetupLocation\": \"setup your location\",\r\n    \"firstScreenWelcomeMessage\": \"Welcome,\",\r\n    \"firstScreenLoginText\": \"Have an account?\",\r\n    \"firstScreenLoginBtn\": \"Login\",\r\n    \"loginErrorMessage\": \"Woopss!! Something went wrong. Please try again.\",\r\n    \"pleaseWaitText\": \"Please Wait...\",\r\n    \"loginLoginTitle\": \"LOGIN\",\r\n    \"loginLoginSubTitle\": \"Enter your email and password\",\r\n    \"loginLoginEmailLabel\": \"Email\",\r\n    \"loginLoginPasswordLabel\": \"Password\",\r\n    \"loginDontHaveAccount\": \"Don\'t have an account yet?\",\r\n    \"firstScreenRegisterBtn\": \"Register\",\r\n    \"registerRegisterTitle\": \"Register\",\r\n    \"registerRegisterSubTitle\": \"Regsiter now for free\",\r\n    \"loginLoginNameLabel\": \"Name\",\r\n    \"loginLoginPhoneLabel\": \"Phone\",\r\n    \"regsiterAlreadyHaveAccount\": \"Already have an account?\",\r\n    \"fieldValidationMsg\": \"This is a required field.\",\r\n    \"nameValidationMsg\": \"Please enter your full name.\",\r\n    \"emailValidationMsg\": \"Please enter a valid email.\",\r\n    \"phoneValidationMsg\": \"Please enter a phone number in this format: +1123456789\",\r\n    \"minimumLengthValidationMessage\": \"This field must be at least 8 characters long.\",\r\n    \"emailPhoneAlreadyRegistered\": \"Email or Phone has already been registered.\",\r\n    \"emailPassDonotMatch\": \"Email & Password do not match.\",\r\n    \"enterPhoneToVerify\": \"Please enter your phone number to verify\",\r\n    \"invalidOtpMsg\": \"Invalid OTP. Please check and try again.\",\r\n    \"otpSentMsg\": \"An OTP has been sent to\",\r\n    \"resendOtpMsg\": \"Resend OTP to\",\r\n    \"resendOtpCountdownMsg\": \"Resend OTP in\",\r\n    \"verifyOtpBtnText\": \"Verify OTP\",\r\n    \"socialWelcomeText\": \"Hi\",\r\n    \"socialLoginOrText\": \"OR\",\r\n    \"forgotPasswordLinkText\": \"Forgot Password?\",\r\n    \"resetPasswordPageTitle\": \"Reset Password\",\r\n    \"resetPasswordPageSubTitle\": \"Enter your email address to continue\",\r\n    \"userNotFoundErrorMessage\": \"No user found with this email.\",\r\n    \"invalidOtpErrorMessage\": \"Invalid OTP Entered\",\r\n    \"sendOtpOnEmailButtonText\": \"Send OTP on Email\",\r\n    \"alreadyHaveResetOtpButtonText\": \"I already have an OTP\",\r\n    \"dontHaveResetOtpButtonText\": \"I dont have an OTP\",\r\n    \"enterResetOtpMessageText\": \"Enter the OTP sent to you email\",\r\n    \"verifyResetOtpButtonText\": \"Verify OTP\",\r\n    \"enterNewPasswordText\": \"Please enter a new password below\",\r\n    \"newPasswordLabelText\": \"New Password\",\r\n    \"setNewPasswordButtonText\": \"Set New Password\",\r\n    \"registrationPolicyMessage\": null,\r\n    \"deliveryTypeDelivery\": \"Delivery\",\r\n    \"deliveryTypeSelfPickup\": \"Self Pickup\",\r\n    \"noRestaurantMessage\": \"No restaurants are available.\",\r\n    \"restaurantCountText\": \"Restaurants Near You\",\r\n    \"restaurantFeaturedText\": \"Featured\",\r\n    \"homePageMinsText\": \"MINS\",\r\n    \"homePageForTwoText\": \"FOR TWO\",\r\n    \"footerNearme\": \"Near Me\",\r\n    \"footerExplore\": \"Explore\",\r\n    \"footerCart\": \"Cart\",\r\n    \"footerAccount\": \"Account\",\r\n    \"footerAlerts\": \"Alerts\",\r\n    \"restaurantNotActiveMsg\": \"Not Accepting Orders\",\r\n    \"markAllAlertReadText\": \"Mark all read\",\r\n    \"noNewAlertsText\": \"No new alerts\",\r\n    \"restaurantSearchPlaceholder\": \"Search for restaurants\",\r\n    \"exploreRestautantsText\": \"RESTAURANTS\",\r\n    \"exploreItemsText\": \"ITEMS\",\r\n    \"searchAtleastThreeCharsMsg\": \"Enter at least 3 characters to search.\",\r\n    \"exploreNoResults\": \"No Items or Restaurants Found\",\r\n    \"exlporeByRestaurantText\": \"By\",\r\n    \"recommendedBadgeText\": \"Recommended\",\r\n    \"popularBadgeText\": \"Popular\",\r\n    \"newBadgeText\": \"New\",\r\n    \"itemsPageRecommendedText\": \"RECOMMENDED\",\r\n    \"floatCartViewCartText\": \"View Cart\",\r\n    \"floatCartItemsText\": \"Items\",\r\n    \"customizableItemText\": \"Customizable\",\r\n    \"customizationHeading\": \"Customizations\",\r\n    \"customizationDoneBtnText\": \"Continue\",\r\n    \"pureVegText\": \"Pure Veg\",\r\n    \"certificateCodeText\": \"Certificate Code:\",\r\n    \"showMoreButtonText\": \"Show More\",\r\n    \"showLessButtonText\": \"Show Less\",\r\n    \"notAcceptingOrdersMsg\": \"Currently Not Accepting Any Orders\",\r\n    \"itemSearchPlaceholder\": \"Search for items...\",\r\n    \"itemSearchText\": \"Search results for:\",\r\n    \"itemSearchNoResultText\": \"No results found for:\",\r\n    \"itemsMenuButtonText\": \"MENU\",\r\n    \"itemPercentageDiscountText\": \"% OFF\",\r\n    \"cartPageTitle\": \"Cart\",\r\n    \"cartItemsInCartText\": \"Items in Cart\",\r\n    \"cartEmptyText\": \"Your Cart is Empty\",\r\n    \"cartSuggestionPlaceholder\": \"Write your comment\\/suggestion for the restaurant...\",\r\n    \"cartCouponText\": \"Coupon\",\r\n    \"cartApplyCoupon\": \"Coupon Applied\",\r\n    \"cartInvalidCoupon\": \"Invalid Coupon\",\r\n    \"cartCouponOffText\": \"OFF\",\r\n    \"cartBillDetailsText\": \"Bill Details\",\r\n    \"cartItemTotalText\": \"Item Total\",\r\n    \"cartToPayText\": \"To Pay\",\r\n    \"cartDeliveryCharges\": \"Delivery Charges\",\r\n    \"cartRestaurantCharges\": \"Restaurant Charges\",\r\n    \"cartSetYourAddress\": \"Set Your Address\",\r\n    \"buttonNewAddress\": \"New Address\",\r\n    \"cartChangeLocation\": \"Change\",\r\n    \"cartDeliverTo\": \"Deliver To\",\r\n    \"checkoutSelectPayment\": \"Proceed to Checkout\",\r\n    \"cartLoginHeader\": \"Almost There\",\r\n    \"cartLoginSubHeader\": \"Login or Signup to place your order\",\r\n    \"cartLoginButtonText\": \"Continue\",\r\n    \"selectedSelfPickupMessage\": \"You have selected Self Pickup.\",\r\n    \"taxText\": \"Tax\",\r\n    \"itemsRemovedMsg\": \"Items added from the previous restaurant have been removed.\",\r\n    \"ongoingOrderMsg\": \"You have some on-going orders. VIEW\",\r\n    \"cartRestaurantNotOperational\": \"Restaurant is not operational on your selected location.\",\r\n    \"restaurantMinOrderMessage\": \"Min cart value should be atleast\",\r\n    \"cartRemoveItemButton\": \"Remove Item\",\r\n    \"cartItemNotAvailable\": \"Item Not Available\",\r\n    \"checkoutPageTitle\": \"Checkout\",\r\n    \"checkoutPaymentListTitle\": \"Select your prefered payment method\",\r\n    \"checkoutPaymentInProcess\": \"Payment in process. Do not hit refresh or go back.\",\r\n    \"checkoutStripeText\": \"Stripe\",\r\n    \"checkoutStripeSubText\": \"Online Payment\",\r\n    \"checkoutCodText\": \"COD\",\r\n    \"checkoutCodSubText\": \"Cash On Delivery\",\r\n    \"paystackPayText\": \"Pay with PayStack\",\r\n    \"checkoutRazorpayText\": \"Razorpay\",\r\n    \"checkoutRazorpaySubText\": \"Pay with cards, wallet or UPI\",\r\n    \"runningOrderPlacedTitle\": \"Order Placed Successfully\",\r\n    \"runningOrderPlacedSub\": \"Waiting for the restaurant to confirm your order\",\r\n    \"runningOrderPreparingTitle\": \"Chef at work!!\",\r\n    \"runningOrderPreparingSub\": \"Restaurant is preparing your order\",\r\n    \"runningOrderOnwayTitle\": \"Vroom Vroom!!\",\r\n    \"runningOrderOnwaySub\": \"Order has been picked up and is on its way\",\r\n    \"runningOrderDeliveryAssignedTitle\": \"Delivery Guy Assigned\",\r\n    \"runningOrderDeliveryAssignedSub\": \"On the way to pick up your order.\",\r\n    \"runningOrderCanceledTitle\": \"Order Canceled\",\r\n    \"runningOrderCanceledSub\": \"Sorry. Your order has been canceled.\",\r\n    \"runningOrderReadyForPickup\": \"Food is Ready\",\r\n    \"runningOrderReadyForPickupSub\": \"Your order is ready for self pickup.\",\r\n    \"runningOrderDelivered\": \"Order Delivered\",\r\n    \"runningOrderDeliveredSub\": \"The order has been delivered to you. Enjoy.\",\r\n    \"runningOrderRefreshButton\": \"Refresh Order Status\",\r\n    \"deliveryGuyAfterName\": \"is your delivery valet today.\",\r\n    \"vehicleText\": \"Vehicle:\",\r\n    \"callNowButton\": \"Call Now\",\r\n    \"allowLocationAccessMessage\": \"Kindly allow location access for live tracking.\",\r\n    \"trackOrderText\": \"Track Order\",\r\n    \"orderPlacedStatusText\": \"Order Placed\",\r\n    \"preparingOrderStatusText\": \"Preparing Order\",\r\n    \"deliveryGuyAssignedStatusText\": \"Delivery Guy Assigned\",\r\n    \"orderPickedUpStatusText\": \"Order Picked Up\",\r\n    \"deliveredStatusText\": \"Delivered\",\r\n    \"canceledStatusText\": \"Canceled\",\r\n    \"readyForPickupStatusText\": \"Ready For Pickup\",\r\n    \"deliveryGuyNewOrderNotificationMsg\": \"A New Order is Waiting !!!\",\r\n    \"deliveryGuyNewOrderNotificationMsgSub\": \"New Order Notification\",\r\n    \"runningOrderDeliveryPin\": \"Delivery Pin:\",\r\n    \"accountMyAccount\": \"My Account\",\r\n    \"accountManageAddress\": \"Manage Address\",\r\n    \"addressDoesnotDeliverToText\": \"Does not deliver to\",\r\n    \"accountMyOrders\": \"My Orders\",\r\n    \"accountHelpFaq\": \"Help & FAQs\",\r\n    \"accountLogout\": \"Logout\",\r\n    \"accountMyWallet\": \"My Wallet\",\r\n    \"noOrdersText\": \"You have not placed any order yet.\",\r\n    \"orderCancelledText\": \"Order Cancelled\",\r\n    \"searchAreaPlaceholder\": \"Search your area...\",\r\n    \"searchPopularPlaces\": \"Popular Places\",\r\n    \"useCurrentLocationText\": \"Use Current Location\",\r\n    \"gpsAccessNotGrantedMsg\": \"GPS access is not granted or was denied.\",\r\n    \"yourLocationText\": \"YOUR LOCATION\",\r\n    \"editAddressAddress\": \"Address\",\r\n    \"editAddressTag\": \"Tag\",\r\n    \"addressTagPlaceholder\": \"Eg. Home, Work\",\r\n    \"buttonSaveAddress\": \"Save Address\",\r\n    \"locationSavedAddresses\": \"Saved Addresses\",\r\n    \"deleteAddressText\": \"Delete\",\r\n    \"noAddressText\": \"You don\'t have any saved addresses.\",\r\n    \"noWalletTransactionsText\": \"No Wallet Transactions Yet!!!\",\r\n    \"walletDepositText\": \"Deposit\",\r\n    \"walletWithdrawText\": \"Withdraw\",\r\n    \"payPartialWithWalletText\": \"Pay partial amount with wallet\",\r\n    \"willbeDeductedText\": \"will be deducted from your balance of\",\r\n    \"payFullWithWalletText\": \"Pay full amount with Wallet.\",\r\n    \"orderPaymentWalletComment\": \"Payment for order:\",\r\n    \"orderPartialPaymentWalletComment\": \"Partial payment for order:\",\r\n    \"orderRefundWalletComment\": \"Refund for order cancellation.\",\r\n    \"orderPartialRefundWalletComment\": \"Partial Refund for order cancellation.\",\r\n    \"walletRedeemBtnText\": \"Redeem\",\r\n    \"cancelOrderMainButton\": \"Cancel Order\",\r\n    \"willBeRefundedText\": \"will be refunded back to your wallet.\",\r\n    \"willNotBeRefundedText\": \"No Refund will be made to your wallet as the restaurant has already prepared the order.\",\r\n    \"orderCancellationConfirmationText\": \"Do you want to cancel this order?\",\r\n    \"yesCancelOrderBtn\": \"Yes, Cancel Order\",\r\n    \"cancelGoBackBtn\": \"Go back\",\r\n    \"deliveryWelcomeMessage\": \"Welcome\",\r\n    \"deliveryAcceptedOrdersTitle\": \"Accepted Orders\",\r\n    \"deliveryNoOrdersAccepted\": \"No Orders Accepted Yet\",\r\n    \"deliveryNewOrdersTitle\": \"New Orders\",\r\n    \"deliveryNoNewOrders\": \"No New Orders Yet\",\r\n    \"deliveryOrderItems\": \"Order Items\",\r\n    \"deliveryRestaurantAddress\": \"Restaurant Address\",\r\n    \"deliveryDeliveryAddress\": \"Delivery Address\",\r\n    \"deliveryGetDirectionButton\": \"Get Direction\",\r\n    \"deliveryOnlinePayment\": \"Online Payment\",\r\n    \"deliveryCashOnDelivery\": \"Cash On Delivery\",\r\n    \"deliveryDeliveryPinPlaceholder\": \"ENTER DELIVERY PIN\",\r\n    \"deliveryAcceptOrderButton\": \"Accept\",\r\n    \"deliveryPickedUpButton\": \"Picked Up\",\r\n    \"deliveryDeliveredButton\": \"Delivered\",\r\n    \"deliveryOrderCompletedButton\": \"Order Completed\",\r\n    \"deliveryAlreadyAccepted\": \"This delivery has been accepted by someone else.\",\r\n    \"deliveryInvalidDeliveryPin\": \"Incorrect delivery pin. Please try again.\",\r\n    \"deliveryLogoutDelivery\": \"Logout\",\r\n    \"deliveryLogoutConfirmation\": \"Are you sure?\",\r\n    \"deliveryOrdersRefreshBtn\": \"Refresh\",\r\n    \"deliveryOrderPlacedText\": \"Order Placed\",\r\n    \"deliveryFooterNewTitle\": \"New Orders\",\r\n    \"deliveryFooterAcceptedTitle\": \"Accepted\",\r\n    \"deliveryFooterAccount\": \"Account\",\r\n    \"deliveryEarningsText\": \"Earnings\",\r\n    \"deliveryOnGoingText\": \"On-Going\",\r\n    \"deliveryCompletedText\": \"Completed\",\r\n    \"deliveryCommissionMessage\": \"Commission for order:\",\r\n    \"updatingMessage\": \"Updating Foodomaa\",\r\n    \"categoriesFiltersText\": \"Filters\",\r\n    \"categoriesNoRestaurantsFoundText\": \"No Restaurants Found\",\r\n    \"deliveryTotalEarningsText\": \"Total Earnings\",\r\n    \"deliveryUsePhoneToAccessMsg\": \"Use your mobile phone to login into the Delivery Application.\",\r\n    \"deliveryMaxOrderReachedMsg\": \"Max Order Reached\",\r\n    \"chooseAvatarText\": \"Choose your avatar\",\r\n    \"customCartMessage\": \"<p><br></p>\",\r\n    \"customHomeMessage\": \"<p><br></p>\",\r\n    \"inAppCloseButton\": \"Close\",\r\n    \"inAppOpenLinkButton\": \"Open\",\r\n    \"iOSPWAPopupTitle\": \"Add to Home Screen\",\r\n    \"iOSPWAPopupBody\": \"This website has app functionality. Add it to your home screen to use it in fullscreen and while offline.\",\r\n    \"iOSPWAPopupShareButtonLabel\": \"1) Press the \'Share\' button\",\r\n    \"iOSPWAPopupAddButtonLabel\": \"2) Press \'Add to Home Screen\'\",\r\n    \"iOSPWAPopupCloseButtonLabel\": \"Cancel\",\r\n    \"offlineTitleMessage\": \"You Are Offline\",\r\n    \"offlineSubTitleMessage\": \"Please check your internet connection.\",\r\n    \"userInActiveMessage\": \"You are banned from placing orders\"\r\n}', '2020-08-04 11:31:20', '2020-08-04 11:31:20', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_address_id` int(11) DEFAULT 0,
  `delivery_pin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_guy_detail_id` int(11) DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `date_of_birth` date DEFAULT NULL,
  `otp` int(11) NOT NULL,
  `business_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_till` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `auth_token`, `phone`, `default_address_id`, `delivery_pin`, `delivery_guy_detail_id`, `avatar`, `is_active`, `date_of_birth`, `otp`, `business_name`, `business_till`) VALUES
(1, 'Kelvin Waithira', 'kelvinkibugi@gmail.com', NULL, '$2y$10$9Had3/5EIlYUFPbK0VfcBufd/XvVvO708/hkVVh3To7L1Y9ZTp.sy', 'hrWXVnYaSzRK6BEn7GfjCVRMpKQWR5wUw7kuboxSznC1Eq5obSkm3ePbGeoH', '2020-08-04 11:31:19', '2020-08-07 01:37:43', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xL3R1cGFydHkvcHVibGljL2FwaS9sb2dpbiIsImlhdCI6MTU5Njc1MzM2MCwibmJmIjoxNTk2NzUzMzYwLCJqdGkiOiJPY2VDV1UyemhtRndvU1lGIiwic3ViIjoxLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.FkrMrMbjgoJUQRlqBxeyls3uDG8r3FNoIURTM7aUH3A', NULL, 4, 'GWFM3', NULL, NULL, 1, NULL, 0, '', 0),
(39, 'jamila', 'jamila@test.com', NULL, '$2y$10$3/wM93HAGQIc7e8BwS5I1.PLvC6aHUISMdp42PAsgns.fGW//1lGq', NULL, '2020-08-07 01:11:51', '2020-08-10 14:26:29', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xL3R1cGFydHkvcHVibGljL2FwaS9sb2dpbiIsImlhdCI6MTU5NzA0NDM4OSwibmJmIjoxNTk3MDQ0Mzg5LCJqdGkiOiJXQWxDVFBlZWtBYVQ1MGZOIiwic3ViIjozOSwicHJ2IjoiODdlMGFmMWVmOWZkMTU4MTJmZGVjOTcxNTNhMTRlMGIwNDc1NDZhYSJ9.kj83G38YnUAqHWHE7T14IfS9t8-vArP-DKKG_FQ5cyo', NULL, 7, 'HXRNW', NULL, 'user4', 1, NULL, 14477, 'Junction Liqours', 558865),
(41, 'wakanai', 'wakanai@test.com', NULL, '$2y$10$3/fMabPEsQwf0xnpY7kNSOSnUBqIFP/EeBMoo1.mcYzH9Vwqvz/uu', 'sgq7p6L3d4h6dsbL7WwxTnO0V1OsilLyfnZGscnmUpqyq63Ke8JoPg5anIbX', '2020-08-10 15:36:05', '2020-08-10 15:40:47', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xL3R1cGFydHkvcHVibGljL2FwaS9sb2dpbiIsImlhdCI6MTU5NzA0ODg0NywibmJmIjoxNTk3MDQ4ODQ3LCJqdGkiOiIyeVJOWUkzNEZyRUNYbEMwIiwic3ViIjo0MSwicHJ2IjoiODdlMGFmMWVmOWZkMTU4MTJmZGVjOTcxNTNhMTRlMGIwNDc1NDZhYSJ9.NjzrY7OLe53qWRYlCDST3hEztUtKjgL33JBtJucgUEs', '0755555555', 9, 'Z5CYG', 2, NULL, 1, NULL, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(10) UNSIGNED NOT NULL,
  `holder_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` bigint(20) NOT NULL DEFAULT 0,
  `decimal_places` smallint(6) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `holder_type`, `holder_id`, `name`, `slug`, `description`, `balance`, `decimal_places`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 2, 'Default Wallet', 'default', NULL, 0, 2, '2020-08-04 12:39:59', '2020-08-04 12:39:59'),
(2, 'App\\User', 3, 'Default Wallet', 'default', NULL, 0, 2, '2020-08-04 12:47:21', '2020-08-04 12:47:21'),
(3, 'App\\User', 4, 'Default Wallet', 'default', NULL, 0, 2, '2020-08-04 12:50:02', '2020-08-04 12:50:02'),
(4, 'App\\User', 5, 'Default Wallet', 'default', NULL, 0, 2, '2020-08-04 12:53:42', '2020-08-04 12:53:42'),
(5, 'App\\User', 6, 'Default Wallet', 'default', NULL, 0, 2, '2020-08-04 15:15:49', '2020-08-04 15:15:49'),
(6, 'App\\User', 1, 'Default Wallet', 'default', NULL, 0, 2, '2020-08-04 15:18:51', '2020-08-04 15:18:51'),
(7, 'App\\User', 39, 'Default Wallet', 'default', NULL, 0, 2, '2020-08-09 16:27:21', '2020-08-10 15:36:55'),
(8, 'App\\User', 40, 'Default Wallet', 'default', NULL, 0, 2, '2020-08-10 15:27:18', '2020-08-10 15:27:18'),
(9, 'App\\User', 41, 'Default Wallet', 'default', NULL, 0, 2, '2020-08-10 15:36:06', '2020-08-10 15:36:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accept_deliveries`
--
ALTER TABLE `accept_deliveries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accept_deliveries_order_id_unique` (`order_id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_categories`
--
ALTER TABLE `addon_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_category_item`
--
ALTER TABLE `addon_category_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_collections`
--
ALTER TABLE `delivery_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_collection_logs`
--
ALTER TABLE `delivery_collection_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_guy_details`
--
ALTER TABLE `delivery_guy_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gps_tables`
--
ALTER TABLE `gps_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_sub_categories`
--
ALTER TABLE `item_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locations_name_unique` (`name`);

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
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mpesa_callbacks`
--
ALTER TABLE `mpesa_callbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderstatuses`
--
ALTER TABLE `orderstatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item_addons`
--
ALTER TABLE `order_item_addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_otps`
--
ALTER TABLE `password_reset_otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popular_geo_places`
--
ALTER TABLE `popular_geo_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_sliders`
--
ALTER TABLE `promo_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_tokens`
--
ALTER TABLE `push_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`),
  ADD KEY `ratings_rateable_id_index` (`rateable_id`),
  ADD KEY `ratings_rateable_type_index` (`rateable_type`),
  ADD KEY `ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurants_sku_unique` (`sku`),
  ADD UNIQUE KEY `restaurants_slug_unique` (`slug`);

--
-- Indexes for table `restaurant_categories`
--
ALTER TABLE `restaurant_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_category_restaurant`
--
ALTER TABLE `restaurant_category_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_category_sliders`
--
ALTER TABLE `restaurant_category_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_earnings`
--
ALTER TABLE `restaurant_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_payouts`
--
ALTER TABLE `restaurant_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_user`
--
ALTER TABLE `restaurant_user`
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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_otps`
--
ALTER TABLE `sms_otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_items`
--
ALTER TABLE `temp_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_uuid_unique` (`uuid`),
  ADD KEY `transactions_payable_type_payable_id_index` (`payable_type`,`payable_id`),
  ADD KEY `payable_type_ind` (`payable_type`,`payable_id`,`type`),
  ADD KEY `payable_confirmed_ind` (`payable_type`,`payable_id`,`confirmed`),
  ADD KEY `payable_type_confirmed_ind` (`payable_type`,`payable_id`,`type`,`confirmed`),
  ADD KEY `transactions_type_index` (`type`),
  ADD KEY `transactions_wallet_id_foreign` (`wallet_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transfers_uuid_unique` (`uuid`),
  ADD KEY `transfers_from_type_from_id_index` (`from_type`,`from_id`),
  ADD KEY `transfers_to_type_to_id_index` (`to_type`,`to_id`),
  ADD KEY `transfers_deposit_id_foreign` (`deposit_id`),
  ADD KEY `transfers_withdraw_id_foreign` (`withdraw_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallets_holder_type_holder_id_slug_unique` (`holder_type`,`holder_id`,`slug`),
  ADD KEY `wallets_holder_type_holder_id_index` (`holder_type`,`holder_id`),
  ADD KEY `wallets_slug_index` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accept_deliveries`
--
ALTER TABLE `accept_deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addon_categories`
--
ALTER TABLE `addon_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addon_category_item`
--
ALTER TABLE `addon_category_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_collections`
--
ALTER TABLE `delivery_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_collection_logs`
--
ALTER TABLE `delivery_collection_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_guy_details`
--
ALTER TABLE `delivery_guy_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gps_tables`
--
ALTER TABLE `gps_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `item_sub_categories`
--
ALTER TABLE `item_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mpesa_callbacks`
--
ALTER TABLE `mpesa_callbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orderstatuses`
--
ALTER TABLE `orderstatuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_item_addons`
--
ALTER TABLE `order_item_addons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_reset_otps`
--
ALTER TABLE `password_reset_otps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popular_geo_places`
--
ALTER TABLE `popular_geo_places`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promo_sliders`
--
ALTER TABLE `promo_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_tokens`
--
ALTER TABLE `push_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurant_categories`
--
ALTER TABLE `restaurant_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_category_restaurant`
--
ALTER TABLE `restaurant_category_restaurant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_category_sliders`
--
ALTER TABLE `restaurant_category_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_earnings`
--
ALTER TABLE `restaurant_earnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_payouts`
--
ALTER TABLE `restaurant_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_user`
--
ALTER TABLE `restaurant_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_otps`
--
ALTER TABLE `sms_otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_items`
--
ALTER TABLE `temp_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3335;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_deposit_id_foreign` FOREIGN KEY (`deposit_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_withdraw_id_foreign` FOREIGN KEY (`withdraw_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
