-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2024 at 09:53 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `benzdashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(24, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(25, 5, 'drink_id', 'text', 'Drink Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(26, 5, 'size_id', 'text', 'Size Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(27, 5, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 8),
(28, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(29, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(30, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(31, 7, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(32, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 5),
(33, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(34, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(35, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(36, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(37, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, 'null', 5),
(38, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(39, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(40, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(41, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(42, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 5),
(43, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(44, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(45, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(46, 10, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(47, 10, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 5),
(48, 10, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 6),
(49, 10, 'meal_hasmany_meals_category_relationship', 'relationship', 'meals_category', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\MealsCategory\",\"table\":\"meals_category\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(50, 7, 'drink_belongsto_drinks_category_relationship', 'relationship', 'drinks_category', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\DrinksCategory\",\"table\":\"drinks_category\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(51, 5, 'drink_size_price_belongsto_drink_relationship', 'relationship', 'drinks', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Drinks\",\"table\":\"drinks\",\"type\":\"belongsTo\",\"column\":\"drink_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(52, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(53, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(54, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(55, 4, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:50\"}}', 4),
(56, 5, 'drink_size_price_belongsto_drink_size_relationship', 'relationship', 'drink_size', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\DrinkSizeCategory\",\"table\":\"drink_size\",\"type\":\"belongsTo\",\"column\":\"size_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(57, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(59, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(60, 11, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(61, 11, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 5),
(62, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 2),
(64, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(65, 12, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(66, 12, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 5),
(67, 12, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 6),
(68, 12, 'group_meal_belongsto_group_meals_cat_relationship', 'relationship', 'group_meals_cat', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\GroupMealsCat\",\"table\":\"group_meals_cat\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-03-25 18:03:19', '2024-03-25 18:03:19'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-03-25 18:03:19', '2024-03-25 18:03:19'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-03-25 18:03:19', '2024-03-25 18:03:19'),
(4, 'drink_size', 'drink-size', 'Drink Size', 'Drink Sizes', NULL, 'App\\Models\\DrinkSizeCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"name\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-25 18:47:23', '2024-03-26 18:12:56'),
(5, 'drink_size_price', 'drink-size-price', 'Drink Size Price', 'Drink Size Prices', NULL, 'App\\Models\\DrinkPrice', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-25 18:53:11', '2024-03-26 18:16:49'),
(7, 'drinks', 'drinks', 'Drink', 'Drinks', NULL, 'App\\Models\\Drinks', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-25 18:53:46', '2024-03-26 18:23:13'),
(8, 'drinks_category', 'drinks-category', 'Drinks Category', 'Drinks Categories', NULL, 'App\\Models\\DrinksCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-25 18:54:22', '2024-03-26 19:18:13'),
(9, 'meals_category', 'meals-category', 'Meals Category', 'Meals Categories', NULL, 'App\\Models\\MealsCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-25 18:54:40', '2024-03-26 19:13:22'),
(10, 'meals', 'meals', 'Meal', 'Meals', NULL, 'App\\Models\\Meals', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-25 18:54:58', '2024-03-26 19:14:55'),
(11, 'group_meals_cat', 'group-meals-cat', 'Group Meals Cat', 'Group Meals Cats', NULL, 'App\\Models\\GroupMealsCat', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-26 17:04:51', '2024-03-26 19:15:28'),
(12, 'group_meals', 'group-meals', 'Group Meal', 'Group Meals', NULL, 'App\\Models\\GroupMeals', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-26 17:21:41', '2024-03-26 19:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`id`, `created_at`, `updated_at`, `category_id`, `name`) VALUES
(2, '2024-03-25 22:35:48', '2024-03-25 22:35:48', 1, 'Cafe Americano'),
(3, '2024-03-25 22:41:31', '2024-03-25 22:41:31', 1, 'Cafe Mocha'),
(6, '2024-03-25 23:27:00', '2024-03-25 23:29:46', 4, 'BLUE LEMONADE'),
(10, '2024-03-26 21:45:11', '2024-03-26 21:45:11', 2, 'ESPRESSO'),
(11, '2024-03-26 21:45:48', '2024-03-26 21:45:48', 2, 'CAFE AMERICANO'),
(14, '2024-03-26 21:50:51', '2024-03-26 21:50:51', 2, 'CAPPUCCINO'),
(15, '2024-03-26 21:51:02', '2024-03-26 21:51:02', 2, 'CAFE LATTE'),
(16, '2024-03-26 21:51:18', '2024-03-26 21:51:18', 2, 'WHITE MOCHA'),
(18, '2024-03-26 21:53:00', '2024-03-26 22:23:26', 2, 'CAPPUCCINO'),
(19, '2024-03-26 21:56:19', '2024-03-26 21:56:19', 2, 'CARAMEL MACCHIATO'),
(20, '2024-03-26 22:06:21', '2024-03-26 22:06:21', 7, 'WALNUT COFFEE'),
(21, '2024-03-26 22:06:37', '2024-03-26 22:06:37', 7, 'UBE DELIGHT'),
(22, '2024-03-26 22:06:50', '2024-03-26 22:06:50', 7, 'FUNFETTI MOCHA'),
(23, '2024-03-26 22:07:03', '2024-03-26 22:07:03', 7, 'DULCE DE LECHE'),
(24, '2024-03-26 22:07:13', '2024-03-26 22:07:13', 7, 'CHOCOLATE CHIP'),
(25, '2024-03-26 22:07:23', '2024-03-26 22:07:23', 7, 'BLACK FOREST'),
(26, '2024-03-26 22:14:02', '2024-03-26 22:14:02', 1, 'WHITE MOCHA'),
(27, '2024-03-26 22:14:13', '2024-03-26 22:14:13', 1, 'CAPPUCCINO'),
(28, '2024-03-26 22:14:24', '2024-03-26 22:14:24', 1, 'CARAMEL MACCHIATO'),
(29, '2024-03-26 22:33:17', '2024-03-26 22:33:17', 8, 'WINTERMELON'),
(30, '2024-03-26 22:33:27', '2024-03-26 22:33:27', 8, 'SALTED CARAMEL'),
(31, '2024-03-26 22:33:36', '2024-03-26 22:33:36', 8, 'SAKURA STRAWBERRY'),
(32, '2024-03-26 22:33:46', '2024-03-26 22:33:46', 8, 'OKINAWA'),
(33, '2024-03-26 22:33:56', '2024-03-26 22:33:56', 8, 'MOCHACCINO'),
(34, '2024-03-26 22:34:10', '2024-03-26 22:34:10', 8, 'HOKKAIDO'),
(35, '2024-03-26 22:34:20', '2024-03-26 22:34:20', 8, 'COOKIES AND CREAM'),
(36, '2024-03-26 22:34:29', '2024-03-26 22:34:29', 8, 'CLASSIC'),
(37, '2024-03-26 22:34:37', '2024-03-26 22:34:37', 8, 'CHOCOLATE'),
(38, '2024-03-26 22:34:47', '2024-03-26 22:34:47', 8, 'CHEESECAKE'),
(39, '2024-03-26 22:42:19', '2024-03-26 22:42:19', 5, 'HOT TEA'),
(40, '2024-03-26 22:43:19', '2024-03-26 22:43:19', 5, 'HOT MATCHA GREEN TEA'),
(41, '2024-03-26 22:43:40', '2024-03-26 22:43:40', 5, 'HOT CHOCOLATE'),
(42, '2024-03-26 22:43:52', '2024-03-26 22:43:52', 5, 'HOT VANILLA MILK'),
(43, '2024-03-26 22:44:04', '2024-03-26 22:44:04', 5, 'ICED VANILLA MILK'),
(44, '2024-03-26 22:44:14', '2024-03-26 22:44:14', 5, 'ICED CHOCOLATE'),
(45, '2024-03-26 22:44:25', '2024-03-26 22:44:25', 5, 'ICED MATCHA GREEN TEA'),
(46, '2024-03-26 22:49:23', '2024-03-26 22:49:23', 4, 'CUCUMBER LEMONADE'),
(47, '2024-03-26 22:49:37', '2024-03-26 22:49:37', 4, 'BLACK TEA WITH CHIA SEED'),
(48, '2024-03-26 22:49:46', '2024-03-26 22:49:46', 4, 'BLUEBERRY FRUIT TEA'),
(49, '2024-03-26 22:50:04', '2024-03-26 22:50:04', 4, 'GREEN APPLE FRUIT TEA'),
(50, '2024-03-26 22:50:46', '2024-03-26 22:50:46', 4, 'KIWI FRUIT TEA'),
(51, '2024-03-26 22:50:54', '2024-03-26 22:50:54', 4, 'LEMON FRUIT TEA'),
(52, '2024-03-26 22:51:03', '2024-03-26 22:51:03', 4, 'MANGO FRUIT TEA'),
(53, '2024-03-26 22:51:10', '2024-03-26 22:51:10', 4, 'MINT FRUIT TEA'),
(54, '2024-03-26 22:51:19', '2024-03-26 22:51:19', 4, 'PASSION FRUIT TEA'),
(55, '2024-03-26 22:51:39', '2024-03-26 22:51:39', 4, 'STRAWBERRY FRUIT TEA'),
(56, '2024-03-26 22:55:59', '2024-03-26 22:55:59', 3, 'EXTRA MILK'),
(57, '2024-03-26 22:56:14', '2024-03-26 22:56:14', 3, 'TAPIOCA PEARLS'),
(58, '2024-03-26 22:56:23', '2024-03-26 22:56:23', 3, 'FRUIT JELLY'),
(59, '2024-03-26 22:56:33', '2024-03-26 22:56:33', 3, 'COFFEE JELLY'),
(60, '2024-03-26 22:56:42', '2024-03-26 22:56:42', 3, 'EXTRA SAUCE'),
(61, '2024-03-26 22:56:50', '2024-03-26 22:56:50', 3, 'ESPRESSO SHOT');

-- --------------------------------------------------------

--
-- Table structure for table `drinks_category`
--

CREATE TABLE `drinks_category` (
  `id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drinks_category`
--

INSERT INTO `drinks_category` (`id`, `created_at`, `updated_at`, `name`, `image`) VALUES
(1, '2024-03-25 19:27:24', '2024-03-25 19:27:24', 'Iced Coffee', 0x6472696e6b732d63617465676f72795c4d61726368323032345c4245446b334e343578714e5231745a44636756692e6a7067),
(2, '2024-03-25 19:28:02', '2024-03-25 19:28:02', 'Hot Coffee', 0x6472696e6b732d63617465676f72795c4d61726368323032345c7234784d496f6d3145644a4c57506f32424b70682e6a7067),
(3, '2024-03-25 23:22:55', '2024-03-25 23:22:55', 'Extra', NULL),
(4, '2024-03-25 23:25:14', '2024-03-25 23:25:14', 'THIRST QUENCHERS', 0x6472696e6b732d63617465676f72795c4d61726368323032345c434c4753736a715770566d47447048736452734d2e6a7067),
(5, '2024-03-25 23:26:19', '2024-03-25 23:26:19', 'NON CAFFEINATED DRINKS', 0x6472696e6b732d63617465676f72795c4d61726368323032345c584f7164576944564f5457754e4f4a614b4263462e6a7067),
(7, '2024-03-26 22:05:22', '2024-03-26 22:05:22', 'Frappe', 0x6472696e6b732d63617465676f72795c4d61726368323032345c6f3652625264746b6535687a666c7841503031542e6a7067),
(8, '2024-03-26 22:32:35', '2024-03-26 22:32:35', 'Milktea', 0x6472696e6b732d63617465676f72795c4d61726368323032345c7935547550347731516b5874456c4d744d48774b2e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `drink_size`
--

CREATE TABLE `drink_size` (
  `id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drink_size`
--

INSERT INTO `drink_size` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2024-03-25 19:22:45', '2024-03-25 19:22:45', 'Tall'),
(2, '2024-03-25 19:22:52', '2024-03-25 19:22:52', 'Grande'),
(3, '2024-03-25 19:23:17', '2024-03-25 19:23:17', '16oz'),
(4, '2024-03-25 19:23:38', '2024-03-25 19:23:38', '22oz');

-- --------------------------------------------------------

--
-- Table structure for table `drink_size_price`
--

CREATE TABLE `drink_size_price` (
  `id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `drink_id` int NOT NULL,
  `size_id` int DEFAULT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drink_size_price`
--

INSERT INTO `drink_size_price` (`id`, `created_at`, `updated_at`, `drink_id`, `size_id`, `price`) VALUES
(1, '2024-03-25 19:34:49', '2024-03-25 19:34:49', 1, 1, 110),
(2, '2024-03-25 19:35:04', '2024-03-25 19:35:04', 1, 2, 135),
(3, '2024-03-25 22:36:14', '2024-03-25 22:36:14', 2, 3, 130),
(4, '2024-03-25 22:36:32', '2024-03-25 22:36:32', 2, 4, 150),
(5, '2024-03-25 22:42:23', '2024-03-25 22:42:23', 3, 3, 160),
(6, '2024-03-25 22:42:41', '2024-03-25 22:42:41', 3, 4, 180),
(10, '2024-03-25 23:28:33', '2024-03-25 23:28:33', 5, NULL, 160),
(12, '2024-03-25 23:30:10', '2024-03-25 23:30:10', 6, NULL, 95),
(14, '2024-03-25 23:57:23', '2024-03-25 23:57:23', 8, NULL, 30),
(17, '2024-03-26 19:32:11', '2024-03-26 19:32:11', 4, 1, 130),
(18, '2024-03-26 19:32:29', '2024-03-26 19:32:29', 4, 2, 140),
(19, '2024-03-26 21:47:25', '2024-03-26 21:47:25', 10, 1, 90),
(20, '2024-03-26 21:48:00', '2024-03-26 21:48:00', 10, 2, 100),
(21, '2024-03-26 21:48:27', '2024-03-26 21:48:27', 11, 1, 110),
(22, '2024-03-26 21:48:38', '2024-03-26 21:48:38', 11, 2, 120),
(23, '2024-03-26 21:53:59', '2024-03-26 21:53:59', 14, 1, 130),
(24, '2024-03-26 21:54:10', '2024-03-26 21:54:10', 14, 2, 140),
(25, '2024-03-26 21:54:44', '2024-03-26 21:54:44', 15, 1, 130),
(26, '2024-03-26 21:55:19', '2024-03-26 21:55:19', 15, 2, 140),
(27, '2024-03-26 21:57:05', '2024-03-26 21:57:05', 16, 1, 150),
(28, '2024-03-26 21:57:27', '2024-03-26 21:57:27', 16, 2, 160),
(29, '2024-03-26 21:58:21', '2024-03-26 21:58:21', 18, 1, 150),
(30, '2024-03-26 21:58:32', '2024-03-26 21:58:32', 18, 2, 160),
(31, '2024-03-26 21:59:04', '2024-03-26 21:59:04', 19, 1, 150),
(32, '2024-03-26 21:59:14', '2024-03-26 21:59:14', 19, 2, 160),
(33, '2024-03-26 22:08:03', '2024-03-26 22:08:03', 20, 3, 175),
(34, '2024-03-26 22:08:00', '2024-03-26 22:29:24', 20, 4, 195),
(35, '2024-03-26 22:09:27', '2024-03-26 22:09:27', 21, 3, 175),
(36, '2024-03-26 22:09:44', '2024-03-26 22:09:44', 21, 4, 195),
(37, '2024-03-26 22:10:11', '2024-03-26 22:10:11', 22, 3, 175),
(38, '2024-03-26 22:10:23', '2024-03-26 22:10:23', 22, 4, 195),
(39, '2024-03-26 22:10:39', '2024-03-26 22:10:39', 23, 3, 175),
(40, '2024-03-26 22:10:57', '2024-03-26 22:10:57', 23, 3, 175),
(41, '2024-03-26 22:11:12', '2024-03-26 22:11:12', 23, 4, 195),
(42, '2024-03-26 22:11:23', '2024-03-26 22:11:23', 24, 3, 175),
(43, '2024-03-26 22:11:34', '2024-03-26 22:11:34', 24, 4, 195),
(44, '2024-03-26 22:11:46', '2024-03-26 22:11:46', 25, 3, 175),
(45, '2024-03-26 22:12:06', '2024-03-26 22:12:06', 25, 4, 195),
(46, '2024-03-26 22:26:56', '2024-03-26 22:26:56', 26, 3, 160),
(47, '2024-03-26 22:27:22', '2024-03-26 22:27:22', 26, 4, 180),
(48, '2024-03-26 22:27:52', '2024-03-26 22:27:52', 14, 3, 140),
(49, '2024-03-26 22:28:16', '2024-03-26 22:28:16', 18, 4, 160),
(50, '2024-03-26 22:29:40', '2024-03-26 22:29:40', 27, 3, 140),
(51, '2024-03-26 22:29:59', '2024-03-26 22:29:59', 27, 4, 160),
(52, '2024-03-26 22:30:50', '2024-03-26 22:30:50', 28, 3, 160),
(53, '2024-03-26 22:31:05', '2024-03-26 22:31:05', 28, 4, 180),
(54, '2024-03-26 22:36:25', '2024-03-26 22:36:25', 29, 3, 120),
(55, '2024-03-26 22:36:36', '2024-03-26 22:36:36', 29, 4, 140),
(56, '2024-03-26 22:36:51', '2024-03-26 22:36:51', 30, 3, 120),
(57, '2024-03-26 22:37:03', '2024-03-26 22:37:03', 30, 4, 140),
(58, '2024-03-26 22:37:23', '2024-03-26 22:37:23', 31, 3, 120),
(59, '2024-03-26 22:37:34', '2024-03-26 22:37:34', 31, 4, 140),
(60, '2024-03-26 22:37:51', '2024-03-26 22:37:51', 32, 3, 120),
(61, '2024-03-26 22:38:01', '2024-03-26 22:38:01', 32, 4, 140),
(62, '2024-03-26 22:38:27', '2024-03-26 22:38:27', 33, 3, 120),
(63, '2024-03-26 22:38:41', '2024-03-26 22:38:41', 33, 4, 140),
(64, '2024-03-26 22:39:01', '2024-03-26 22:39:01', 35, 3, 120),
(65, '2024-03-26 22:39:13', '2024-03-26 22:39:13', 35, 4, 140),
(66, '2024-03-26 22:39:25', '2024-03-26 22:39:25', 36, 3, 120),
(67, '2024-03-26 22:39:36', '2024-03-26 22:39:36', 36, 4, 140),
(68, '2024-03-26 22:39:45', '2024-03-26 22:39:45', 37, 3, 120),
(69, '2024-03-26 22:39:55', '2024-03-26 22:39:55', 37, 4, 140),
(70, '2024-03-26 22:40:09', '2024-03-26 22:40:09', 38, 3, 120),
(71, '2024-03-26 22:40:22', '2024-03-26 22:40:22', 38, 4, 140),
(72, '2024-03-26 22:40:56', '2024-03-26 22:40:56', 34, 3, 120),
(73, '2024-03-26 22:41:10', '2024-03-26 22:41:10', 34, 4, 140),
(74, '2024-03-26 22:45:45', '2024-03-26 22:45:45', 39, NULL, 120),
(75, '2024-03-26 22:46:17', '2024-03-26 22:46:17', 40, NULL, 120),
(76, '2024-03-26 22:46:31', '2024-03-26 22:46:31', 41, NULL, 130),
(77, '2024-03-26 22:46:44', '2024-03-26 22:46:44', 42, NULL, 130),
(78, '2024-03-26 22:47:06', '2024-03-26 22:47:06', 43, NULL, 140),
(79, '2024-03-26 22:47:16', '2024-03-26 22:47:16', 44, NULL, 150),
(80, '2024-03-26 22:47:26', '2024-03-26 22:47:26', 45, NULL, 160),
(81, '2024-03-26 22:52:07', '2024-03-26 22:52:07', 46, NULL, 95),
(82, '2024-03-26 22:52:28', '2024-03-26 22:52:28', 47, NULL, 130),
(83, '2024-03-26 22:52:40', '2024-03-26 22:52:40', 48, NULL, 130),
(84, '2024-03-26 22:52:54', '2024-03-26 22:52:54', 49, NULL, 130),
(85, '2024-03-26 22:53:06', '2024-03-26 22:53:06', 50, NULL, 130),
(86, '2024-03-26 22:53:18', '2024-03-26 22:53:18', 51, NULL, 130),
(87, '2024-03-26 22:54:13', '2024-03-26 22:54:13', 52, NULL, 130),
(88, '2024-03-26 22:54:24', '2024-03-26 22:54:24', 53, NULL, 130),
(89, '2024-03-26 22:54:49', '2024-03-26 22:54:49', 54, NULL, 130),
(90, '2024-03-26 22:54:59', '2024-03-26 22:54:59', 55, NULL, 130),
(91, '2024-03-26 22:57:46', '2024-03-26 22:57:46', 56, NULL, 10),
(92, '2024-03-26 22:58:27', '2024-03-26 22:58:27', 57, NULL, 15),
(93, '2024-03-26 22:58:54', '2024-03-26 22:58:54', 58, NULL, 15),
(94, '2024-03-26 22:59:22', '2024-03-26 22:59:22', 59, NULL, 15),
(95, '2024-03-26 22:59:45', '2024-03-26 22:59:45', 60, NULL, 30),
(96, '2024-03-26 23:00:05', '2024-03-26 23:00:05', 61, NULL, 30);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_meals`
--

CREATE TABLE `group_meals` (
  `id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_meals`
--

INSERT INTO `group_meals` (`id`, `created_at`, `updated_at`, `name`, `category_id`, `price`) VALUES
(1, '2024-03-26 17:33:00', '2024-03-26 21:31:03', 'Eggs', 1, 19),
(2, '2024-03-26 17:34:29', '2024-03-26 17:34:29', 'Spam', 1, 150),
(3, '2024-03-26 17:35:05', '2024-03-26 17:35:05', 'Chicken Longganisa', 1, 80),
(4, '2024-03-26 19:33:51', '2024-03-26 19:33:51', 'Siomai', 2, 100),
(5, '2024-03-26 19:35:05', '2024-03-26 19:35:05', 'Corned beef', 2, 100),
(6, '2024-03-26 19:35:21', '2024-03-26 19:35:21', 'Egg', 2, 49),
(7, '2024-03-26 21:29:53', '2024-03-26 21:29:53', 'Longganisa', 3, 100),
(8, '2024-03-26 21:30:25', '2024-03-26 21:30:25', 'Tapa', 3, 100),
(9, '2024-03-26 21:30:39', '2024-03-26 21:30:39', 'Egg', 3, 49),
(10, '2024-03-26 21:42:22', '2024-03-26 21:42:22', 'Tapa', 4, 100),
(11, '2024-03-26 21:42:37', '2024-03-26 21:42:37', 'Spam', 4, 100),
(12, '2024-03-26 21:42:50', '2024-03-26 21:42:50', 'Egg', 4, 49);

-- --------------------------------------------------------

--
-- Table structure for table `group_meals_cat`
--

CREATE TABLE `group_meals_cat` (
  `id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_meals_cat`
--

INSERT INTO `group_meals_cat` (`id`, `created_at`, `updated_at`, `name`, `image`) VALUES
(1, '2024-03-26 17:27:00', '2024-03-26 22:54:44', 'BENZ BREAKFAST A', 0x67726f75702d6d65616c732d6361745c4d61726368323032345c585666696e306750397a4a6839517273715742622e6a7067),
(2, '2024-03-26 17:30:00', '2024-03-26 22:54:34', 'BENZ BREAKFAST B', 0x67726f75702d6d65616c732d6361745c4d61726368323032345c7032564d56655047637962774e576e564c4d4b772e6a7067),
(3, '2024-03-26 21:27:00', '2024-03-26 22:54:11', 'BENZ BREAKFAST C', 0x67726f75702d6d65616c732d6361745c4d61726368323032345c693154686c63783269695a336f73757341317a7a2e6a7067),
(4, '2024-03-26 21:28:00', '2024-03-26 22:54:02', 'BENZ BREAKFAST D', 0x67726f75702d6d65616c732d6361745c4d61726368323032345c6c443451554148477436346f69495269374730472e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `created_at`, `updated_at`, `category_id`, `name`, `price`) VALUES
(1, '2024-03-25 19:12:03', '2024-03-25 19:12:03', 1, 'Tuna Salad Sandwich', 189),
(2, '2024-03-25 23:00:17', '2024-03-25 23:00:17', 1, 'CHICKEN SALAD SANDWICH', 189),
(3, '2024-03-25 23:00:32', '2024-03-25 23:00:32', 1, 'GRILLED CHEESE AND SPAM SANDWICH', 189),
(4, '2024-03-25 23:00:59', '2024-03-25 23:00:59', 2, 'BLUEBERRY', 155),
(5, '2024-03-25 23:01:15', '2024-03-25 23:01:15', 2, 'STRAWBERRY', 155),
(6, '2024-03-25 23:01:37', '2024-03-25 23:01:37', 2, 'MANGO', 155),
(7, '2024-03-25 23:04:00', '2024-03-26 22:55:48', 8, 'EXTRA RICE', 30),
(8, '2024-03-25 23:04:00', '2024-03-26 22:55:39', 8, 'EXTRA EGG', 20),
(9, '2024-03-25 23:05:23', '2024-03-25 23:05:23', 4, 'TUNA PASTA WITH PESTO', 199),
(10, '2024-03-25 23:05:41', '2024-03-25 23:05:41', 4, 'SPAGHETTI BOLOGNESE', 199),
(11, '2024-03-26 01:11:15', '2024-03-26 01:11:15', 6, 'SPANISH SARDINES & EGG', 199),
(13, '2024-03-26 21:23:03', '2024-03-26 21:23:03', 6, 'SPAM & EGG', 199),
(14, '2024-03-26 21:23:15', '2024-03-26 21:23:15', 6, 'SIOMAI & EGG', 199),
(15, '2024-03-26 21:23:27', '2024-03-26 21:23:27', 6, 'CORNED BEEF & EGG', 199),
(16, '2024-03-26 21:23:40', '2024-03-26 21:23:40', 6, 'BENZ TOCINO & EGG', 199),
(17, '2024-03-26 21:23:52', '2024-03-26 21:23:52', 6, 'BENZ LONGGANISA & EGG', 199),
(18, '2024-03-26 21:24:03', '2024-03-26 21:24:03', 6, 'BENZ BEEF TAPA & EGG', 199);

-- --------------------------------------------------------

--
-- Table structure for table `meals_category`
--

CREATE TABLE `meals_category` (
  `id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals_category`
--

INSERT INTO `meals_category` (`id`, `created_at`, `updated_at`, `name`, `image`) VALUES
(1, '2024-03-25 19:07:53', '2024-03-25 19:07:53', 'Sandwiches', 0x6d65616c732d63617465676f72795c4d61726368323032345c69453269317a526e4666426c396e58327a5053702e6a7067),
(2, '2024-03-25 19:09:06', '2024-03-25 19:09:06', 'Bubble Waffles', 0x6d65616c732d63617465676f72795c4d61726368323032345c547a7236435741746562377577453239434e37522e6a7067),
(4, '2024-03-25 23:02:07', '2024-03-25 23:02:07', 'PASTA', 0x6d65616c732d63617465676f72795c4d61726368323032345c545443494c4c6c4f504e39504477516c766558512e6a7067),
(6, '2024-03-26 01:09:53', '2024-03-26 01:09:53', 'RICE MEALS', 0x6d65616c732d63617465676f72795c4d61726368323032345c356161584b694a4c697161627a5a5047307861332e6a7067),
(8, '2024-03-26 21:19:00', '2024-03-26 22:53:15', 'Extra', 0x6d65616c732d63617465676f72795c4d61726368323032345c7a6f6a4871716b6c6e475133756954336a55644b2e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-03-25 18:03:20', '2024-03-25 18:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-03-25 18:03:20', '2024-03-25 18:03:20', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 5, '2024-03-25 18:03:20', '2024-03-26 17:20:51', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 21, 2, '2024-03-25 18:03:20', '2024-03-26 17:20:44', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 21, 1, '2024-03-25 18:03:20', '2024-03-26 17:20:37', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2024-03-25 18:03:20', '2024-03-26 22:55:54', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2024-03-25 18:03:20', '2024-03-25 19:40:03', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2024-03-25 18:03:20', '2024-03-25 19:40:03', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2024-03-25 18:03:20', '2024-03-25 19:40:03', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2024-03-25 18:03:20', '2024-03-25 19:40:03', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2024-03-25 18:03:20', '2024-03-26 22:55:54', 'voyager.settings.index', NULL),
(11, 1, 'Drink Sizes', '', '_self', 'voyager-rum', '#000000', 19, 4, '2024-03-25 18:47:23', '2024-03-26 17:23:17', 'voyager.drink-size.index', 'null'),
(12, 1, 'Drink Prices', '', '_self', 'voyager-rum', '#000000', 18, 2, '2024-03-25 18:53:11', '2024-03-26 19:29:02', 'voyager.drink-size-price.index', 'null'),
(13, 1, 'Drinks', '', '_self', 'voyager-cup', '#000000', 18, 1, '2024-03-25 18:53:46', '2024-03-26 17:15:54', 'voyager.drinks.index', 'null'),
(14, 1, 'Drinks Categories', '', '_self', 'voyager-cup', '#000000', 19, 3, '2024-03-25 18:54:22', '2024-03-26 17:23:21', 'voyager.drinks-category.index', 'null'),
(15, 1, 'Meals Categories', '', '_self', 'voyager-bread', '#000000', 19, 1, '2024-03-25 18:54:40', '2024-03-26 17:23:21', 'voyager.meals-category.index', 'null'),
(16, 1, 'Meals', '', '_self', 'voyager-bread', '#000000', 17, 1, '2024-03-25 18:54:58', '2024-03-26 17:17:44', 'voyager.meals.index', 'null'),
(17, 1, 'Meals', '', '_self', 'voyager-hotdog', '#000000', NULL, 6, '2024-03-25 19:38:22', '2024-03-26 22:55:54', NULL, ''),
(18, 1, 'Drinks', '', '_self', 'voyager-cup', '#000000', NULL, 5, '2024-03-25 19:39:20', '2024-03-26 22:55:54', NULL, ''),
(19, 1, 'Category', '', '_self', 'voyager-list', '#000000', NULL, 4, '2024-03-25 19:45:11', '2024-03-26 22:55:54', NULL, ''),
(20, 1, 'Group Meals Categories', '', '_self', 'voyager-basket', '#000000', 19, 2, '2024-03-26 17:04:51', '2024-03-26 19:28:45', 'voyager.group-meals-cat.index', 'null'),
(21, 1, 'User Management', '', '_self', 'voyager-people', '#000000', NULL, 3, '2024-03-26 17:20:20', '2024-03-26 22:55:54', NULL, ''),
(22, 1, 'Group Meals', '', '_self', 'voyager-basket', '#000000', 17, 2, '2024-03-26 17:21:42', '2024-03-26 19:26:04', 'voyager.group-meals.index', 'null'),
(23, 1, 'Website', 'http://localhost/benzDashboard/public/', '_blank', 'voyager-world', '#000000', NULL, 2, '2024-03-26 22:55:23', '2024-03-26 22:56:29', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(2, 'browse_bread', NULL, '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(3, 'browse_database', NULL, '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(4, 'browse_media', NULL, '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(5, 'browse_compass', NULL, '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(6, 'browse_menus', 'menus', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(7, 'read_menus', 'menus', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(8, 'edit_menus', 'menus', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(9, 'add_menus', 'menus', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(10, 'delete_menus', 'menus', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(11, 'browse_roles', 'roles', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(12, 'read_roles', 'roles', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(13, 'edit_roles', 'roles', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(14, 'add_roles', 'roles', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(15, 'delete_roles', 'roles', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(16, 'browse_users', 'users', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(17, 'read_users', 'users', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(18, 'edit_users', 'users', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(19, 'add_users', 'users', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(20, 'delete_users', 'users', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(21, 'browse_settings', 'settings', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(22, 'read_settings', 'settings', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(23, 'edit_settings', 'settings', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(24, 'add_settings', 'settings', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(25, 'delete_settings', 'settings', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(26, 'browse_drink_size', 'drink_size', '2024-03-25 18:47:23', '2024-03-25 18:47:23'),
(27, 'read_drink_size', 'drink_size', '2024-03-25 18:47:23', '2024-03-25 18:47:23'),
(28, 'edit_drink_size', 'drink_size', '2024-03-25 18:47:23', '2024-03-25 18:47:23'),
(29, 'add_drink_size', 'drink_size', '2024-03-25 18:47:23', '2024-03-25 18:47:23'),
(30, 'delete_drink_size', 'drink_size', '2024-03-25 18:47:23', '2024-03-25 18:47:23'),
(31, 'browse_drink_size_price', 'drink_size_price', '2024-03-25 18:53:11', '2024-03-25 18:53:11'),
(32, 'read_drink_size_price', 'drink_size_price', '2024-03-25 18:53:11', '2024-03-25 18:53:11'),
(33, 'edit_drink_size_price', 'drink_size_price', '2024-03-25 18:53:11', '2024-03-25 18:53:11'),
(34, 'add_drink_size_price', 'drink_size_price', '2024-03-25 18:53:11', '2024-03-25 18:53:11'),
(35, 'delete_drink_size_price', 'drink_size_price', '2024-03-25 18:53:11', '2024-03-25 18:53:11'),
(36, 'browse_drinks', 'drinks', '2024-03-25 18:53:46', '2024-03-25 18:53:46'),
(37, 'read_drinks', 'drinks', '2024-03-25 18:53:46', '2024-03-25 18:53:46'),
(38, 'edit_drinks', 'drinks', '2024-03-25 18:53:46', '2024-03-25 18:53:46'),
(39, 'add_drinks', 'drinks', '2024-03-25 18:53:46', '2024-03-25 18:53:46'),
(40, 'delete_drinks', 'drinks', '2024-03-25 18:53:46', '2024-03-25 18:53:46'),
(41, 'browse_drinks_category', 'drinks_category', '2024-03-25 18:54:22', '2024-03-25 18:54:22'),
(42, 'read_drinks_category', 'drinks_category', '2024-03-25 18:54:22', '2024-03-25 18:54:22'),
(43, 'edit_drinks_category', 'drinks_category', '2024-03-25 18:54:22', '2024-03-25 18:54:22'),
(44, 'add_drinks_category', 'drinks_category', '2024-03-25 18:54:22', '2024-03-25 18:54:22'),
(45, 'delete_drinks_category', 'drinks_category', '2024-03-25 18:54:22', '2024-03-25 18:54:22'),
(46, 'browse_meals_category', 'meals_category', '2024-03-25 18:54:40', '2024-03-25 18:54:40'),
(47, 'read_meals_category', 'meals_category', '2024-03-25 18:54:40', '2024-03-25 18:54:40'),
(48, 'edit_meals_category', 'meals_category', '2024-03-25 18:54:40', '2024-03-25 18:54:40'),
(49, 'add_meals_category', 'meals_category', '2024-03-25 18:54:40', '2024-03-25 18:54:40'),
(50, 'delete_meals_category', 'meals_category', '2024-03-25 18:54:40', '2024-03-25 18:54:40'),
(51, 'browse_meals', 'meals', '2024-03-25 18:54:58', '2024-03-25 18:54:58'),
(52, 'read_meals', 'meals', '2024-03-25 18:54:58', '2024-03-25 18:54:58'),
(53, 'edit_meals', 'meals', '2024-03-25 18:54:58', '2024-03-25 18:54:58'),
(54, 'add_meals', 'meals', '2024-03-25 18:54:58', '2024-03-25 18:54:58'),
(55, 'delete_meals', 'meals', '2024-03-25 18:54:58', '2024-03-25 18:54:58'),
(56, 'browse_group_meals_cat', 'group_meals_cat', '2024-03-26 17:04:51', '2024-03-26 17:04:51'),
(57, 'read_group_meals_cat', 'group_meals_cat', '2024-03-26 17:04:51', '2024-03-26 17:04:51'),
(58, 'edit_group_meals_cat', 'group_meals_cat', '2024-03-26 17:04:51', '2024-03-26 17:04:51'),
(59, 'add_group_meals_cat', 'group_meals_cat', '2024-03-26 17:04:51', '2024-03-26 17:04:51'),
(60, 'delete_group_meals_cat', 'group_meals_cat', '2024-03-26 17:04:51', '2024-03-26 17:04:51'),
(61, 'browse_group_meals', 'group_meals', '2024-03-26 17:21:42', '2024-03-26 17:21:42'),
(62, 'read_group_meals', 'group_meals', '2024-03-26 17:21:42', '2024-03-26 17:21:42'),
(63, 'edit_group_meals', 'group_meals', '2024-03-26 17:21:42', '2024-03-26 17:21:42'),
(64, 'add_group_meals', 'group_meals', '2024-03-26 17:21:42', '2024-03-26 17:21:42'),
(65, 'delete_group_meals', 'group_meals', '2024-03-26 17:21:42', '2024-03-26 17:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(65, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-03-25 18:03:20', '2024-03-25 18:03:20'),
(2, 'user', 'Normal User', '2024-03-25 18:03:20', '2024-03-25 18:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Benz Coffee', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'This day was absolutely delightful! start the day with a warm cup of coffee and enjoy some delicious meals alongside it. Everything was fantastic, and the best part was, it didn\'t break the bank!', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\March2024\\caUyuEzLXrSo6sl8Wk0R.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\March2024\\MzmJaGAzUhTdpg6RNQaz.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Benz Coffee', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'This day was absolutely delightful! start the day with a warm cup of coffee and enjoy some delicious meals alongside it. Everything was fantastic, and the best part was, it didn\'t break the bank!', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\March2024\\3bZkx0Tev3TTi2LwUzJu.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\March2024\\vxhUTZqmnrJAuTswsNbp.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$12$S5mgbP6eBaIMdaeT7wX6TeqFmvMgdQZTCT5GF8nIa9FqW.KPhzRWC', NULL, NULL, '2024-03-25 18:03:51', '2024-03-25 18:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drinks_category`
--
ALTER TABLE `drinks_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drink_size`
--
ALTER TABLE `drink_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drink_size_price`
--
ALTER TABLE `drink_size_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `group_meals`
--
ALTER TABLE `group_meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_meals_cat`
--
ALTER TABLE `group_meals_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meals_category`
--
ALTER TABLE `meals_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `drinks_category`
--
ALTER TABLE `drinks_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `drink_size`
--
ALTER TABLE `drink_size`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `drink_size_price`
--
ALTER TABLE `drink_size_price`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_meals`
--
ALTER TABLE `group_meals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `group_meals_cat`
--
ALTER TABLE `group_meals_cat`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `meals_category`
--
ALTER TABLE `meals_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
