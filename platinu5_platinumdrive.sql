-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2025 at 12:56 PM
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
-- Database: `platinu5_platinumdrive`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price_per_day` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `name`, `price_per_day`) VALUES
(1, 'Toddler Seat', 5.00),
(2, 'Baby Seat', 3.50),
(3, 'Booster Seat', 7.00),
(4, 'GPS', 4.25);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `booking_number` varchar(255) NOT NULL,
  `vehicle_id` varchar(225) NOT NULL,
  `car_category` varchar(255) NOT NULL,
  `pickup_location` varchar(255) DEFAULT NULL,
  `dropoff_location` varchar(255) DEFAULT NULL,
  `pickup_date` date DEFAULT NULL,
  `dropoff_date` date DEFAULT NULL,
  `pickup_time` time DEFAULT NULL,
  `dropoff_time` time DEFAULT NULL,
  `trip_days` int(11) DEFAULT NULL,
  `mileage` varchar(50) DEFAULT NULL,
  `passenger_name` varchar(255) DEFAULT NULL,
  `passenger_email` varchar(255) DEFAULT NULL,
  `passenger_phone` varchar(50) DEFAULT NULL,
  `flight_number` varchar(100) DEFAULT NULL,
  `passengers` int(11) DEFAULT NULL,
  `luggages` int(11) DEFAULT NULL,
  `need_driver` enum('yes','no') DEFAULT 'no',
  `need_license` enum('yes','no') DEFAULT 'no',
  `passport_image` varchar(255) DEFAULT NULL,
  `passport_image2` varchar(255) DEFAULT NULL,
  `idp_image` varchar(255) DEFAULT NULL,
  `addons` text DEFAULT NULL,
  `addon_quantities` text DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT 0.00,
  `invoice_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car_categories`
--

CREATE TABLE `car_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `passengers` int(11) DEFAULT NULL,
  `suitcases` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `avg_price` float(255,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_categories`
--

INSERT INTO `car_categories` (`id`, `name`, `description`, `passengers`, `suitcases`, `image`, `avg_price`) VALUES
(1, 'Mini', 'Small city-friendly car', 4, 1, 'assets/images/vehicles/1.png', 36.00),
(2, 'Economy', 'Small, fuel-efficient budget car.', 4, 2, 'assets/images/vehicles/2.png', 38.00),
(3, 'Compact', 'Compact car with good efficiency.', 5, 2, 'assets/images/vehicles/3.png', 40.00),
(4, 'Intermediate', 'Mid-size car with extra space.', 5, 3, 'assets/images/vehicles/4.png', 44.00),
(5, 'Standard', 'Standard sedan with comfort.', 5, 3, 'assets/images/vehicles/5.png', 48.00),
(6, 'Full Size', 'Large sedan with more room.', 5, 4, 'assets/images/vehicles/6.png', 50.00),
(7, 'Luxury', 'Premium high-end sedan.', 5, 3, 'assets/images/vehicles/7.png', 250.00),
(8, 'Compact SUV', 'Compact SUV with more space.', 5, 3, 'assets/images/vehicles/8.png', 100.00),
(9, 'Fullsize SUV', 'Large SUV with lots of seating.', 7, 4, 'assets/images/vehicles/9.png', 200.00),
(10, 'Minivan', 'Spacious van for families.', 7, 4, 'assets/images/vehicles/10.png', 90.00),
(11, 'Fullsize Van', 'Large van for big groups.', 12, 6, 'assets/images/vehicles/11.png', 120.00),
(12, 'Luxury SUV', 'Premium comfortable SUV.', 7, 4, 'assets/images/vehicles/12.png', 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_actiondom`
--

CREATE TABLE `modx_access_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_category`
--

CREATE TABLE `modx_access_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_context`
--

CREATE TABLE `modx_access_context` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'MODX\\Revolution\\modUserGroup', 0, 9999, 3),
(2, 'mgr', 'MODX\\Revolution\\modUserGroup', 1, 0, 2),
(3, 'web', 'MODX\\Revolution\\modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_elements`
--

CREATE TABLE `modx_access_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_media_source`
--

CREATE TABLE `modx_access_media_source` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_menus`
--

CREATE TABLE `modx_access_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_namespace`
--

CREATE TABLE `modx_access_namespace` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_permissions`
--

CREATE TABLE `modx_access_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_weblink', 'perm.delete_weblink_desc', 1),
(22, 1, 'delete_symlink', 'perm.delete_symlink_desc', 1),
(23, 1, 'delete_static_resource', 'perm.delete_static_resource_desc', 1),
(24, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(25, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(26, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(27, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(28, 1, 'delete_template', 'perm.delete_template_desc', 1),
(29, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(30, 1, 'delete_role', 'perm.delete_role_desc', 1),
(31, 1, 'delete_user', 'perm.delete_user_desc', 1),
(32, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(33, 1, 'directory_create', 'perm.directory_create_desc', 1),
(34, 1, 'directory_list', 'perm.directory_list_desc', 1),
(35, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(36, 1, 'directory_update', 'perm.directory_update_desc', 1),
(37, 1, 'edit_category', 'perm.edit_category_desc', 1),
(38, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(39, 1, 'edit_context', 'perm.edit_context_desc', 1),
(40, 1, 'edit_document', 'perm.edit_document_desc', 1),
(41, 1, 'edit_weblink', 'perm.edit_weblink_desc', 1),
(42, 1, 'edit_symlink', 'perm.edit_symlink_desc', 1),
(43, 1, 'edit_static_resource', 'perm.edit_static_resource_desc', 1),
(44, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(45, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(46, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(47, 1, 'edit_role', 'perm.edit_role_desc', 1),
(48, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(49, 1, 'edit_template', 'perm.edit_template_desc', 1),
(50, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(51, 1, 'edit_user', 'perm.edit_user_desc', 1),
(52, 1, 'element_tree', 'perm.element_tree_desc', 1),
(53, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(54, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(55, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(56, 1, 'export_static', 'perm.export_static_desc', 1),
(57, 1, 'file_create', 'perm.file_create_desc', 1),
(58, 1, 'file_list', 'perm.file_list_desc', 1),
(59, 1, 'file_manager', 'perm.file_manager_desc', 1),
(60, 1, 'file_remove', 'perm.file_remove_desc', 1),
(61, 1, 'file_tree', 'perm.file_tree_desc', 1),
(62, 1, 'file_update', 'perm.file_update_desc', 1),
(63, 1, 'file_upload', 'perm.file_upload_desc', 1),
(64, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(65, 1, 'file_view', 'perm.file_view_desc', 1),
(66, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(67, 1, 'frames', 'perm.frames_desc', 1),
(68, 1, 'help', 'perm.help_desc', 1),
(69, 1, 'home', 'perm.home_desc', 1),
(70, 1, 'language', 'perm.language_desc', 1),
(71, 1, 'languages', 'perm.languages_desc', 1),
(72, 1, 'lexicons', 'perm.lexicons_desc', 1),
(73, 1, 'list', 'perm.list_desc', 1),
(74, 1, 'load', 'perm.load_desc', 1),
(75, 1, 'logout', 'perm.logout_desc', 1),
(76, 1, 'mgr_log_view', 'perm.mgr_log_view_desc', 1),
(77, 1, 'mgr_log_erase', 'perm.mgr_log_erase_desc', 1),
(78, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(79, 1, 'menu_security', 'perm.menu_security_desc', 1),
(80, 1, 'menu_site', 'perm.menu_site_desc', 1),
(81, 1, 'menu_support', 'perm.menu_support_desc', 1),
(82, 1, 'menu_system', 'perm.menu_system_desc', 1),
(83, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(84, 1, 'menu_trash', 'perm.menu_trash_desc', 1),
(85, 1, 'menu_user', 'perm.menu_user_desc', 1),
(86, 1, 'menus', 'perm.menus_desc', 1),
(87, 1, 'messages', 'perm.messages_desc', 1),
(88, 1, 'namespaces', 'perm.namespaces_desc', 1),
(89, 1, 'new_category', 'perm.new_category_desc', 1),
(90, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(91, 1, 'new_context', 'perm.new_context_desc', 1),
(92, 1, 'new_document', 'perm.new_document_desc', 1),
(93, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(94, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(95, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(96, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(97, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(98, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(99, 1, 'new_role', 'perm.new_role_desc', 1),
(100, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(101, 1, 'new_template', 'perm.new_template_desc', 1),
(102, 1, 'new_tv', 'perm.new_tv_desc', 1),
(103, 1, 'new_user', 'perm.new_user_desc', 1),
(104, 1, 'packages', 'perm.packages_desc', 1),
(105, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(106, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(107, 1, 'policy_new', 'perm.policy_new_desc', 1),
(108, 1, 'policy_save', 'perm.policy_save_desc', 1),
(109, 1, 'policy_view', 'perm.policy_view_desc', 1),
(110, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(111, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(112, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(113, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(114, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(115, 1, 'property_sets', 'perm.property_sets_desc', 1),
(116, 1, 'providers', 'perm.providers_desc', 1),
(117, 1, 'publish_document', 'perm.publish_document_desc', 1),
(118, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(119, 1, 'remove', 'perm.remove_desc', 1),
(120, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(121, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(122, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(123, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(124, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(125, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(126, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(127, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(128, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(129, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(130, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(131, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(132, 1, 'save', 'perm.save_desc', 1),
(133, 1, 'save_category', 'perm.save_category_desc', 1),
(134, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(135, 1, 'save_context', 'perm.save_context_desc', 1),
(136, 1, 'save_document', 'perm.save_document_desc', 1),
(137, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(138, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(139, 1, 'save_role', 'perm.save_role_desc', 1),
(140, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(141, 1, 'save_template', 'perm.save_template_desc', 1),
(142, 1, 'save_tv', 'perm.save_tv_desc', 1),
(143, 1, 'save_user', 'perm.save_user_desc', 1),
(144, 1, 'search', 'perm.search_desc', 1),
(145, 1, 'set_sudo', 'perm.set_sudo_desc', 1),
(146, 1, 'settings', 'perm.settings_desc', 1),
(147, 1, 'events', 'perm.events_desc', 1),
(148, 1, 'source_save', 'perm.source_save_desc', 1),
(149, 1, 'source_delete', 'perm.source_delete_desc', 1),
(150, 1, 'source_edit', 'perm.source_edit_desc', 1),
(151, 1, 'source_view', 'perm.source_view_desc', 1),
(152, 1, 'sources', 'perm.sources_desc', 1),
(153, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(154, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(155, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(156, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(157, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(158, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(159, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(160, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(161, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(162, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(163, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(164, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(165, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(166, 1, 'view', 'perm.view_desc', 1),
(167, 1, 'view_category', 'perm.view_category_desc', 1),
(168, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(169, 1, 'view_context', 'perm.view_context_desc', 1),
(170, 1, 'view_document', 'perm.view_document_desc', 1),
(171, 1, 'view_element', 'perm.view_element_desc', 1),
(172, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(173, 1, 'view_offline', 'perm.view_offline_desc', 1),
(174, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(175, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(176, 1, 'view_role', 'perm.view_role_desc', 1),
(177, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(178, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(179, 1, 'view_template', 'perm.view_template_desc', 1),
(180, 1, 'view_tv', 'perm.view_tv_desc', 1),
(181, 1, 'view_user', 'perm.view_user_desc', 1),
(182, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(183, 1, 'workspaces', 'perm.workspaces_desc', 1),
(184, 2, 'add_children', 'perm.add_children_desc', 1),
(185, 2, 'copy', 'perm.copy_desc', 1),
(186, 2, 'create', 'perm.create_desc', 1),
(187, 2, 'delete', 'perm.delete_desc', 1),
(188, 2, 'list', 'perm.list_desc', 1),
(189, 2, 'load', 'perm.load_desc', 1),
(190, 2, 'move', 'perm.move_desc', 1),
(191, 2, 'publish', 'perm.publish_desc', 1),
(192, 2, 'remove', 'perm.remove_desc', 1),
(193, 2, 'save', 'perm.save_desc', 1),
(194, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(195, 2, 'undelete', 'perm.undelete_desc', 1),
(196, 2, 'unpublish', 'perm.unpublish_desc', 1),
(197, 2, 'view', 'perm.view_desc', 1),
(198, 3, 'load', 'perm.load_desc', 1),
(199, 3, 'list', 'perm.list_desc', 1),
(200, 3, 'view', 'perm.view_desc', 1),
(201, 3, 'save', 'perm.save_desc', 1),
(202, 3, 'remove', 'perm.remove_desc', 1),
(203, 4, 'add_children', 'perm.add_children_desc', 1),
(204, 4, 'create', 'perm.create_desc', 1),
(205, 4, 'copy', 'perm.copy_desc', 1),
(206, 4, 'delete', 'perm.delete_desc', 1),
(207, 4, 'list', 'perm.list_desc', 1),
(208, 4, 'load', 'perm.load_desc', 1),
(209, 4, 'remove', 'perm.remove_desc', 1),
(210, 4, 'save', 'perm.save_desc', 1),
(211, 4, 'view', 'perm.view_desc', 1),
(212, 5, 'create', 'perm.create_desc', 1),
(213, 5, 'copy', 'perm.copy_desc', 1),
(214, 5, 'list', 'perm.list_desc', 1),
(215, 5, 'load', 'perm.load_desc', 1),
(216, 5, 'remove', 'perm.remove_desc', 1),
(217, 5, 'save', 'perm.save_desc', 1),
(218, 5, 'view', 'perm.view_desc', 1),
(219, 6, 'load', 'perm.load_desc', 1),
(220, 6, 'list', 'perm.list_desc', 1),
(221, 6, 'view', 'perm.view_desc', 1),
(222, 6, 'save', 'perm.save_desc', 1),
(223, 6, 'remove', 'perm.remove_desc', 1),
(224, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(225, 6, 'copy', 'perm.copy_desc', 1),
(226, 7, 'list', 'perm.list_desc', 1),
(227, 7, 'load', 'perm.load_desc', 1),
(228, 7, 'view', 'perm.view_desc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policies`
--

CREATE TABLE `modx_access_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `template` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text DEFAULT NULL,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'policy_resource_desc', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}', 'permissions'),
(2, 'Administrator', 'policy_administrator_desc', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_static_resource\":true,\"delete_symlink\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"delete_weblink\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"edit_weblink\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_unpack\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"mgr_log_view\":true,\"mgr_log_erase\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_trash\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"set_sudo\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(3, 'Load Only', 'policy_load_only_desc', 0, 3, '', '{\"load\":true}', 'permissions'),
(4, 'Load, List and View', 'policy_load_list_and_view_desc', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(5, 'Object', 'policy_object_desc', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}', 'permissions'),
(6, 'Element', 'policy_element_desc', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}', 'permissions'),
(7, 'Content Editor', 'policy_content_editor_desc', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"delete_document\":true,\"delete_static_resource\":true,\"delete_symlink\":true,\"delete_weblink\":true,\"edit_document\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_weblink\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"list\":true,\"load\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true}', 'permissions'),
(8, 'Media Source Admin', 'policy_media_source_admin_desc', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}', 'permissions'),
(9, 'Media Source User', 'policy_media_source_user_desc', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(10, 'Developer', 'policy_developer_desc', 0, 1, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"edit_weblink\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_unpack\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"mgr_log_view\":true,\"mgr_log_erase\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(11, 'Context', 'policy_context_desc', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}', 'permissions'),
(12, 'Hidden Namespace', 'policy_hidden_namespace_desc', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true}', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_templates`
--

CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'policy_template_administrator_desc', 'permissions'),
(2, 3, 'ResourceTemplate', 'policy_template_resource_desc', 'permissions'),
(3, 2, 'ObjectTemplate', 'policy_template_object_desc', 'permissions'),
(4, 4, 'ElementTemplate', 'policy_template_element_desc', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'policy_template_mediasource_desc', 'permissions'),
(6, 7, 'ContextTemplate', 'policy_template_context_desc', 'permissions'),
(7, 6, 'NamespaceTemplate', 'policy_template_namespace_desc', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_template_groups`
--

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Administrator', 'policy_template_group_administrator_desc'),
(2, 'Object', 'policy_template_group_object_desc'),
(3, 'Resource', 'policy_template_group_resource_desc'),
(4, 'Element', 'policy_template_group_element_desc'),
(5, 'MediaSource', 'policy_template_group_mediasource_desc'),
(6, 'Namespace', 'policy_template_group_namespace_desc'),
(7, 'Context', 'policy_template_group_context_desc');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resources`
--

CREATE TABLE `modx_access_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resource_groups`
--

CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_templatevars`
--

CREATE TABLE `modx_access_templatevars` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actiondom`
--

CREATE TABLE `modx_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL DEFAULT 0,
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(255) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `for_parent` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actions_fields`
--

CREATE TABLE `modx_actions_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(255) NOT NULL DEFAULT '',
  `other` varchar(255) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'alias', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 5),
(9, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 3),
(11, 'resource/update', 'modx-resource-main-right-top', 'tab', '', 'modx-panel-resource', '', 4),
(12, 'resource/update', 'published', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 0),
(13, 'resource/update', 'deleted', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 1),
(14, 'resource/update', 'publishedon', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 2),
(15, 'resource/update', 'pub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'unpub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'modx-resource-main-right-middle', 'tab', '', 'modx-panel-resource', '', 5),
(18, 'resource/update', 'template', 'field', 'modx-resource-main-right-middle', 'modx-panel-resource', '', 0),
(19, 'resource/update', 'modx-resource-main-right-bottom', 'tab', '', 'modx-panel-resource', '', 6),
(20, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 0),
(21, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 1),
(22, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 2),
(23, 'resource/update', 'menuindex', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 3),
(24, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 7),
(25, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 8),
(26, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(27, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(28, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 9),
(29, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(30, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(31, 'resource/update', 'modx-page-settings-box-left', 'tab', '', 'modx-panel-resource', '', 10),
(32, 'resource/update', 'isfolder', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 0),
(33, 'resource/update', 'show_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 1),
(34, 'resource/update', 'hide_children_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 2),
(35, 'resource/update', 'alias_visible', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 3),
(36, 'resource/update', 'uri_override', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 4),
(37, 'resource/update', 'uri', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 5),
(38, 'resource/update', 'modx-page-settings-box-right', 'tab', '', 'modx-panel-resource', '', 11),
(39, 'resource/update', 'richtext', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 0),
(40, 'resource/update', 'cacheable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 1),
(41, 'resource/update', 'searchable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 2),
(42, 'resource/update', 'syncsite', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 3),
(43, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 12),
(44, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 13),
(45, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(46, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(47, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(48, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(49, 'resource/create', 'alias', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(51, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(52, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 5),
(53, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(54, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 3),
(55, 'resource/create', 'modx-resource-main-right-top', 'tab', '', 'modx-panel-resource', '', 4),
(56, 'resource/create', 'published', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 0),
(57, 'resource/create', 'deleted', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 1),
(58, 'resource/create', 'publishedon', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 2),
(59, 'resource/create', 'pub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 3),
(60, 'resource/create', 'unpub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 4),
(61, 'resource/create', 'modx-resource-main-right-middle', 'tab', '', 'modx-panel-resource', '', 5),
(62, 'resource/create', 'template', 'field', 'modx-resource-main-right-middle', 'modx-panel-resource', '', 0),
(63, 'resource/create', 'modx-resource-main-right-bottom', 'tab', '', 'modx-panel-resource', '', 6),
(64, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 0),
(65, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 1),
(66, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 2),
(67, 'resource/create', 'menuindex', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 3),
(68, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 7),
(69, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 8),
(70, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(71, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(72, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 9),
(73, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(74, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(75, 'resource/create', 'modx-page-settings-box-left', 'tab', '', 'modx-panel-resource', '', 10),
(76, 'resource/create', 'isfolder', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 0),
(77, 'resource/create', 'show_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 1),
(78, 'resource/create', 'hide_children_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 2),
(79, 'resource/create', 'alias_visible', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 3),
(80, 'resource/create', 'uri_override', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 4),
(81, 'resource/create', 'uri', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 5),
(82, 'resource/create', 'modx-page-settings-box-right', 'tab', '', 'modx-panel-resource', '', 11),
(83, 'resource/create', 'richtext', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 0),
(84, 'resource/create', 'cacheable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 1),
(85, 'resource/create', 'searchable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 2),
(86, 'resource/create', 'syncsite', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 3),
(87, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 12),
(88, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 13);

-- --------------------------------------------------------

--
-- Table structure for table `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `internalKey` int(9) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT 0,
  `id` int(10) DEFAULT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT 0,
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories_closure`
--

CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `descendant` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `depth` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_content_type`
--

CREATE TABLE `modx_content_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` tinytext DEFAULT NULL,
  `mime_type` tinytext DEFAULT NULL,
  `file_extensions` tinytext DEFAULT NULL,
  `icon` tinytext DEFAULT NULL,
  `headers` mediumtext DEFAULT NULL,
  `binary` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `icon`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', '', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', 'icon-xml', NULL, 0),
(3, 'Text', 'Plain text content', 'text/plain', '.txt', 'icon-txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', 'icon-css', NULL, 0),
(5, 'JavaScript', 'JavaScript content', 'text/javascript', '.js', 'icon-js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', 'icon-rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', 'icon-json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', 'icon-pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_context`
--

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0),
('web', 'Website', 'The default front-end context for your web site.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_resource`
--

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_setting`
--

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'MODX\\Revolution\\modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard`
--

CREATE TABLE `modx_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `hide_trees` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `customizable` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`, `customizable`) VALUES
(1, 'Default', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard_widget`
--

CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(255) NOT NULL DEFAULT 'half',
  `permission` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `properties`, `namespace`, `lexicon`, `size`, `permission`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', NULL, 'core', 'core:dashboards', 'one-third', ''),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', NULL, 'core', 'core:dashboards', 'one-third', ''),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', NULL, 'core', 'core:dashboards', 'one-third', ''),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', NULL, 'core', 'core:dashboards', 'two-thirds', 'view_document'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', NULL, 'core', 'core:dashboards', 'full', ''),
(6, 'w_buttons', 'w_buttons_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.buttons.php', '{\"create-resource\":{\"link\":\"[[++manager_url]]?a=resource\\/create\",\"icon\":\"file-o\",\"title\":\"[[%action_new_resource]]\",\"description\":\"[[%action_new_resource_desc]]\"},\"view-site\":{\"link\":\"[[++site_url]]\",\"icon\":\"eye\",\"title\":\"[[%action_view_website]]\",\"description\":\"[[%action_view_website_desc]]\",\"target\":\"_blank\"},\"advanced-search\":{\"link\":\"[[++manager_url]]?a=search\",\"icon\":\"search\",\"title\":\"[[%action_advanced_search]]\",\"description\":\"[[%action_advanced_search_desc]]\"},\"manage-users\":{\"link\":\"[[++manager_url]]?a=security\\/user\",\"icon\":\"user\",\"title\":\"[[%action_manage_users]]\",\"description\":\"[[%action_manage_users_desc]]\"}}', 'core', 'core:dashboards', 'full', ''),
(7, 'w_updates', 'w_updates_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.updates.php', NULL, 'core', 'core:dashboards', 'one-third', 'workspaces');

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard_widget_placement`
--

CREATE TABLE `modx_dashboard_widget_placement` (
  `user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `widget` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `size` varchar(255) NOT NULL DEFAULT 'half'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`user`, `dashboard`, `widget`, `rank`, `size`) VALUES
(0, 1, 1, 2, 'one-third'),
(0, 1, 2, 3, 'one-third'),
(0, 1, 3, 5, 'one-third'),
(0, 1, 4, 6, 'two-thirds'),
(0, 1, 5, 1, 'full'),
(0, 1, 6, 0, 'full'),
(0, 1, 7, 4, 'one-third'),
(1, 1, 1, 2, 'one-third'),
(1, 1, 2, 3, 'one-third'),
(1, 1, 3, 5, 'one-third'),
(1, 1, 4, 6, 'two-thirds'),
(1, 1, 5, 1, 'full'),
(1, 1, 6, 0, 'full'),
(1, 1, 7, 4, 'one-third'),
(2, 1, 1, 2, 'one-third'),
(2, 1, 2, 3, 'one-third'),
(2, 1, 3, 5, 'one-third'),
(2, 1, 4, 6, 'two-thirds'),
(2, 1, 5, 1, 'full'),
(2, 1, 6, 0, 'full'),
(2, 1, 7, 4, 'one-third');

-- --------------------------------------------------------

--
-- Table structure for table `modx_deprecated_call`
--

CREATE TABLE `modx_deprecated_call` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `call_count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `caller` varchar(191) NOT NULL DEFAULT '',
  `caller_file` varchar(191) NOT NULL DEFAULT '',
  `caller_line` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_deprecated_call`
--

INSERT INTO `modx_deprecated_call` (`id`, `method`, `call_count`, `caller`, `caller_file`, `caller_line`) VALUES
(1, 1, 22, 'MODX\\Revolution\\Registry\\modRegistry::_initRegister', '/home/platinu5/public_html/core/src/Revolution/Registry/modRegistry.php', 173),
(2, 2, 2, 'xPDO\\xPDO::getService', 'C:\\xampp\\htdocs\\platinum\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 1258);

-- --------------------------------------------------------

--
-- Table structure for table `modx_deprecated_method`
--

CREATE TABLE `modx_deprecated_method` (
  `id` int(10) UNSIGNED NOT NULL,
  `definition` varchar(191) NOT NULL DEFAULT '',
  `since` varchar(191) NOT NULL DEFAULT '',
  `recommendation` varchar(1024) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_deprecated_method`
--

INSERT INTO `modx_deprecated_method` (`id`, `definition`, `since`, `recommendation`) VALUES
(1, 'registry.modDbRegister', '3.0', 'Replace references to class registry.modDbRegister with MODX\\Revolution\\Registry\\modDbRegister to take advantage of PSR-4 autoloading.'),
(2, 'hashing.modHashing', '3.0', 'Replace references to class hashing.modHashing with MODX\\Revolution\\Hashing\\modHashing to take advantage of PSR-4 autoloading.');

-- --------------------------------------------------------

--
-- Table structure for table `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `private_webgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT 0,
  `document` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_element_property_sets`
--

CREATE TABLE `modx_element_property_sets` (
  `element` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_extension_packages`
--

CREATE TABLE `modx_extension_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text DEFAULT NULL,
  `table_prefix` varchar(255) NOT NULL DEFAULT '',
  `service_class` varchar(255) NOT NULL DEFAULT '',
  `service_name` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles`
--

CREATE TABLE `modx_fc_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles_usergroups`
--

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT 0,
  `profile` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_sets`
--

CREATE TABLE `modx_fc_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile` int(11) NOT NULL DEFAULT 0,
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `template` int(11) NOT NULL DEFAULT 0,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_lexicon_entries`
--

CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occurred` datetime NOT NULL DEFAULT current_timestamp(),
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2025-09-01 06:45:26', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(2, 1, '2025-09-01 06:54:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(3, 1, '2025-09-01 06:55:30', 'template_create', 'MODX\\Revolution\\modTemplate', '2'),
(4, 1, '2025-09-01 06:55:37', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(5, 1, '2025-09-01 06:55:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(6, 1, '2025-09-01 06:56:06', 'chunk_create', 'MODX\\Revolution\\modChunk', '1'),
(7, 1, '2025-09-01 06:56:13', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(8, 1, '2025-09-01 06:56:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(9, 1, '2025-09-01 06:57:08', 'chunk_create', 'MODX\\Revolution\\modChunk', '2'),
(10, 1, '2025-09-01 06:57:16', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(11, 1, '2025-09-01 06:57:17', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(12, 1, '2025-09-01 08:10:08', 'chunk_create', 'MODX\\Revolution\\modChunk', '3'),
(13, 1, '2025-09-01 08:10:23', 'resource_create', 'MODX\\Revolution\\modDocument', '2'),
(14, 1, '2025-09-01 08:10:37', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(15, 1, '2025-09-01 08:10:44', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(16, 1, '2025-09-01 08:11:48', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(17, 1, '2025-09-01 08:12:34', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(18, 1, '2025-09-01 08:13:08', 'resource_create', 'MODX\\Revolution\\modDocument', '3'),
(19, 1, '2025-09-01 08:13:22', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(20, 1, '2025-09-01 08:13:47', 'resource_create', 'MODX\\Revolution\\modDocument', '4'),
(21, 1, '2025-09-01 08:13:54', 'resource_update', 'MODX\\Revolution\\modResource', '4'),
(22, 1, '2025-09-01 08:13:59', 'resource_update', 'MODX\\Revolution\\modResource', '4'),
(23, 1, '2025-09-01 08:14:09', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(24, 1, '2025-09-01 08:14:39', 'resource_create', 'MODX\\Revolution\\modDocument', '5'),
(25, 1, '2025-09-01 08:14:45', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(26, 1, '2025-09-01 08:14:49', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(27, 1, '2025-09-01 08:15:01', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(28, 1, '2025-09-01 08:15:24', 'resource_create', 'MODX\\Revolution\\modDocument', '6'),
(29, 1, '2025-09-01 08:15:31', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(30, 1, '2025-09-01 08:15:35', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(31, 1, '2025-09-01 08:15:38', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(32, 1, '2025-09-01 08:15:54', 'resource_create', 'MODX\\Revolution\\modDocument', '7'),
(33, 1, '2025-09-01 08:16:15', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(34, 1, '2025-09-01 08:16:35', 'resource_create', 'MODX\\Revolution\\modDocument', '8'),
(35, 1, '2025-09-01 08:18:12', 'resource_update', 'MODX\\Revolution\\modResource', '8'),
(36, 1, '2025-09-01 08:18:43', 'resource_create', 'MODX\\Revolution\\modDocument', '9'),
(37, 1, '2025-09-01 08:18:55', 'resource_update', 'MODX\\Revolution\\modResource', '9'),
(38, 1, '2025-09-01 08:20:42', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(39, 1, '2025-09-01 08:20:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(40, 1, '2025-09-01 08:22:01', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(41, 1, '2025-09-01 08:43:23', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(42, 1, '2025-09-01 08:45:09', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(43, 1, '2025-09-01 09:22:46', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(44, 1, '2025-09-01 09:25:26', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(45, 1, '2025-09-01 09:47:40', 'resource_update', 'MODX\\Revolution\\modResource', '4'),
(46, 1, '2025-09-01 09:48:07', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(47, 1, '2025-09-01 09:48:27', 'resource_update', 'MODX\\Revolution\\modResource', '9'),
(48, 1, '2025-09-01 11:10:01', 'resource_update', 'MODX\\Revolution\\modResource', '9'),
(49, 1, '2025-09-01 12:14:47', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(50, 1, '2025-09-01 12:15:08', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(51, 1, '2025-09-30 05:39:08', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(52, 1, '2025-10-08 07:24:24', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(53, 1, '2025-10-08 11:19:45', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(54, 1, '2025-10-08 11:34:35', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(55, 1, '2025-10-08 11:37:02', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(56, 1, '2025-10-08 11:39:31', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(57, 1, '2025-10-08 11:42:16', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(58, 1, '2025-10-08 11:57:52', 'template_update', 'MODX\\Revolution\\modTemplate', '2'),
(59, 1, '2025-10-08 11:57:53', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 2 Default'),
(60, 1, '2025-10-10 08:28:31', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(61, 1, '2025-10-23 06:03:32', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(62, 1, '2025-10-23 06:05:03', 'user_create', 'MODX\\Revolution\\modUser', '2'),
(63, 2, '2025-10-23 06:10:34', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(64, 2, '2025-10-23 06:17:33', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(65, 2, '2025-10-23 06:17:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(66, 2, '2025-10-23 06:18:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(67, 2, '2025-10-23 06:18:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(68, 2, '2025-10-23 06:18:49', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(69, 2, '2025-10-23 06:18:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(70, 2, '2025-10-23 06:19:36', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(71, 2, '2025-10-23 06:19:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(72, 2, '2025-10-23 06:25:51', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(73, 2, '2025-10-23 06:27:53', 'file_update', '', 'Filesystem: assets/css/flaticon.css'),
(74, 2, '2025-10-23 11:29:40', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(75, 2, '2025-10-23 11:30:55', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(76, 2, '2025-10-23 11:31:24', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(77, 2, '2025-10-23 11:33:29', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(78, 2, '2025-10-23 11:34:36', 'file_update', '', 'Filesystem: assets/css/style.css'),
(79, 2, '2025-10-23 11:36:03', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(80, 2, '2025-10-23 11:37:13', 'file_update', '', 'Filesystem: assets/css/style.css'),
(81, 2, '2025-10-23 11:38:01', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(82, 2, '2025-10-23 11:39:29', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(83, 2, '2025-10-23 11:42:10', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(84, 2, '2025-10-23 11:42:35', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(85, 2, '2025-10-23 11:51:01', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(86, 2, '2025-10-23 11:52:35', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(87, 2, '2025-10-23 11:54:01', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(88, 2, '2025-10-23 11:56:53', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(89, 2, '2025-10-23 11:58:22', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(90, 2, '2025-10-23 11:58:46', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(91, 2, '2025-10-23 12:00:16', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(92, 2, '2025-10-23 12:01:27', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(93, 2, '2025-10-23 12:03:51', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(94, 2, '2025-10-23 12:07:30', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(95, 2, '2025-10-23 12:07:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(96, 2, '2025-10-23 12:08:06', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(97, 2, '2025-10-23 12:08:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(98, 2, '2025-10-23 12:08:39', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(99, 2, '2025-10-23 12:08:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(100, 2, '2025-10-23 12:09:09', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(101, 2, '2025-10-23 12:09:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(102, 2, '2025-10-23 12:13:15', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(103, 2, '2025-10-23 12:13:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(104, 2, '2025-10-23 12:13:37', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(105, 2, '2025-10-23 12:13:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(106, 2, '2025-10-24 04:42:24', 'file_update', '', 'Filesystem: assets/css/flaticon.css'),
(107, 2, '2025-10-24 04:43:02', 'file_update', '', 'Filesystem: assets/css/flaticon.css'),
(108, 2, '2025-10-24 04:53:48', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(109, 2, '2025-10-24 04:54:21', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(110, 2, '2025-10-24 04:57:08', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(111, 2, '2025-10-27 03:39:59', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(112, 2, '2025-10-27 03:41:02', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(113, 2, '2025-10-27 03:43:13', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(114, 2, '2025-10-27 03:44:05', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(115, 2, '2025-10-27 03:44:35', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(116, 2, '2025-10-27 04:43:33', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(117, 2, '2025-10-27 04:45:22', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(118, 2, '2025-10-27 04:46:13', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(119, 2, '2025-10-27 04:48:33', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(120, 2, '2025-10-27 04:50:05', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(121, 2, '2025-10-27 04:52:08', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(122, 2, '2025-10-27 04:54:14', 'file_update', '', 'Filesystem: assets/css/style.css'),
(123, 2, '2025-10-27 04:54:19', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(124, 2, '2025-10-27 04:54:52', 'file_update', '', 'Filesystem: assets/css/style.css'),
(125, 2, '2025-10-27 05:00:46', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(126, 2, '2025-10-27 05:05:47', 'file_update', '', 'Filesystem: assets/css/style.css'),
(127, 2, '2025-10-27 05:06:18', 'file_update', '', 'Filesystem: assets/css/style.css'),
(128, 2, '2025-10-27 05:07:38', 'file_update', '', 'Filesystem: assets/css/style.css'),
(129, 2, '2025-10-27 05:07:58', 'file_update', '', 'Filesystem: assets/css/style.css'),
(130, 2, '2025-10-27 05:11:06', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(131, 2, '2025-10-27 05:12:22', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(132, 2, '2025-10-27 05:13:36', 'file_update', '', 'Filesystem: assets/css/style.css'),
(133, 2, '2025-10-27 05:20:24', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(134, 2, '2025-10-27 05:21:47', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(135, 2, '2025-10-27 05:22:42', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(136, 2, '2025-10-27 05:24:53', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(137, 2, '2025-10-27 05:28:06', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(138, 2, '2025-10-27 05:42:53', 'file_update', '', 'Filesystem: assets/css/style.css'),
(139, 2, '2025-10-27 05:43:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(140, 2, '2025-10-27 05:44:28', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(141, 2, '2025-10-27 05:45:45', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(142, 2, '2025-10-27 05:46:12', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(143, 2, '2025-10-27 05:48:08', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(144, 2, '2025-10-27 05:48:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(145, 2, '2025-10-27 05:48:43', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(146, 2, '2025-10-27 05:48:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(147, 2, '2025-10-27 05:48:47', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(148, 2, '2025-10-27 05:49:34', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(149, 2, '2025-10-27 05:49:56', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(150, 2, '2025-10-27 06:01:55', 'file_update', '', 'Filesystem: assets/css/style.css'),
(151, 2, '2025-10-27 06:03:28', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(152, 2, '2025-10-27 06:04:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(153, 2, '2025-10-27 06:05:41', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(154, 2, '2025-10-27 06:12:32', 'file_upload', '', 'Filesystem: assets/images/blogs/'),
(155, 2, '2025-10-27 06:12:42', 'file_rename', '', 'Filesystem: assets/images/blogs/wmremove-transformed.png -> assets/images/blogs/4.png'),
(156, 2, '2025-10-27 06:12:59', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(157, 2, '2025-10-27 06:14:52', 'file_update', '', 'Filesystem: assets/css/style.css'),
(158, 2, '2025-10-27 06:16:27', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(159, 2, '2025-10-27 06:17:57', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(160, 2, '2025-10-27 06:21:44', 'file_upload', '', 'Filesystem: assets/images/blogs/'),
(161, 2, '2025-10-27 06:21:54', 'file_rename', '', 'Filesystem: assets/images/blogs/featured-inside-9-1-1600x900.webp -> assets/images/blogs/5.webp'),
(162, 2, '2025-10-27 06:22:05', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(163, 2, '2025-10-27 06:24:32', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(164, 2, '2025-10-27 06:24:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(165, 2, '2025-10-27 06:29:16', 'file_upload', '', 'Filesystem: assets/images/blogs/'),
(166, 2, '2025-10-27 06:29:26', 'file_rename', '', 'Filesystem: assets/images/blogs/mixcollage-27-oct-2025-11-58-am-4707.jpg -> assets/images/blogs/6.jpg'),
(167, 2, '2025-10-27 06:29:32', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(168, 2, '2025-10-27 06:37:28', 'resource_create', 'MODX\\Revolution\\modDocument', '10'),
(169, 2, '2025-10-27 06:38:22', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(170, 2, '2025-10-27 06:40:37', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(171, 2, '2025-10-27 06:40:47', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(172, 2, '2025-10-27 06:41:43', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(173, 2, '2025-10-27 06:42:55', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(174, 2, '2025-10-27 06:42:56', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(175, 2, '2025-10-27 06:43:32', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(176, 2, '2025-10-27 06:50:00', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(177, 2, '2025-10-27 06:50:30', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(178, 2, '2025-10-27 06:51:23', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(179, 2, '2025-10-27 06:51:42', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(180, 2, '2025-10-27 06:56:16', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(181, 2, '2025-10-27 06:57:35', 'directory_create', '', 'Filesystem: assets/images/blog-details'),
(182, 2, '2025-10-27 06:57:44', 'file_upload', '', 'Filesystem: assets/images/blog-details/'),
(183, 2, '2025-10-27 06:58:02', 'file_rename', '', 'Filesystem: assets/images/blog-details/10-best-places-to-visit-in-sri-lanka.webp -> assets/images/blog-details/1.webp'),
(184, 2, '2025-10-27 06:58:32', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(185, 2, '2025-10-27 07:02:37', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(186, 2, '2025-10-27 07:09:17', 'file_upload', '', 'Filesystem: assets/images/blog-details/'),
(187, 2, '2025-10-27 07:09:17', 'file_upload', '', 'Filesystem: assets/images/blog-details/'),
(188, 2, '2025-10-27 07:09:25', 'file_upload', '', 'Filesystem: assets/images/blog-details/'),
(189, 2, '2025-10-27 07:09:36', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(190, 2, '2025-10-27 07:12:18', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(191, 2, '2025-10-27 07:12:49', 'file_upload', '', 'Filesystem: assets/images/blog-details/'),
(192, 2, '2025-10-27 07:13:01', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(193, 2, '2025-10-27 07:14:10', 'resource_update', 'MODX\\Revolution\\modResource', '10'),
(194, 2, '2025-10-27 07:17:39', 'file_upload', '', 'Filesystem: assets/images/blog-details/'),
(195, 2, '2025-10-27 07:17:43', 'file_upload', '', 'Filesystem: assets/images/blog-details/'),
(196, 2, '2025-10-27 07:17:44', 'file_upload', '', 'Filesystem: assets/images/blog-details/'),
(197, 2, '2025-10-28 13:23:34', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(198, 2, '2025-10-29 05:21:20', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(199, 2, '2025-10-29 05:52:29', 'duplicate_resource', 'MODX\\Revolution\\modDocument', '11'),
(200, 2, '2025-10-29 05:52:48', 'resource_update', 'MODX\\Revolution\\modResource', '11'),
(201, 2, '2025-10-29 05:53:01', 'duplicate_resource', 'MODX\\Revolution\\modDocument', '12'),
(202, 2, '2025-10-29 05:53:18', 'resource_update', 'MODX\\Revolution\\modResource', '12'),
(203, 2, '2025-10-29 05:53:38', 'resource_create', 'MODX\\Revolution\\modDocument', '13'),
(204, 2, '2025-10-29 05:53:45', 'resource_update', 'MODX\\Revolution\\modResource', '13'),
(205, 2, '2025-10-29 05:54:04', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(206, 2, '2025-10-29 05:54:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(207, 2, '2025-10-29 05:54:38', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(208, 2, '2025-10-29 05:55:09', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(209, 2, '2025-10-29 05:55:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(210, 2, '2025-10-29 06:06:00', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(211, 2, '2025-10-29 06:07:30', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(212, 2, '2025-10-29 06:08:24', 'snippet_create', 'MODX\\Revolution\\modSnippet', '1'),
(213, 2, '2025-10-29 06:08:37', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(214, 2, '2025-10-29 06:09:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(215, 2, '2025-10-29 06:09:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(216, 2, '2025-10-29 06:21:13', 'resource_update', 'MODX\\Revolution\\modResource', '4'),
(217, 2, '2025-10-29 06:21:40', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(218, 2, '2025-10-29 06:21:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(219, 2, '2025-10-29 06:23:24', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(220, 2, '2025-10-29 06:23:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(221, 2, '2025-10-29 06:23:30', 'duplicate_resource', 'MODX\\Revolution\\modDocument', '14'),
(222, 2, '2025-10-29 06:24:10', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(223, 2, '2025-10-29 06:24:30', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(224, 2, '2025-10-29 06:24:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(225, 2, '2025-10-29 06:25:01', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(226, 2, '2025-10-29 06:25:58', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(227, 2, '2025-10-29 06:25:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(228, 2, '2025-10-29 06:27:07', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(229, 2, '2025-10-29 06:27:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(230, 2, '2025-10-29 06:27:20', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(231, 2, '2025-10-29 06:28:59', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(232, 2, '2025-10-29 06:37:40', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(233, 2, '2025-10-29 06:39:16', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(234, 2, '2025-10-29 06:39:17', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(235, 2, '2025-10-29 06:39:32', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(236, 2, '2025-10-29 06:40:49', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(237, 2, '2025-10-29 06:40:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(238, 2, '2025-10-29 06:44:23', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(239, 2, '2025-10-29 06:44:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(240, 2, '2025-10-29 06:48:36', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(241, 2, '2025-10-29 06:48:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(242, 2, '2025-10-29 06:48:42', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(243, 2, '2025-10-29 06:57:57', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(244, 2, '2025-10-29 06:57:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(245, 2, '2025-10-29 06:58:09', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(246, 2, '2025-10-29 06:58:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(247, 2, '2025-10-29 07:00:48', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(248, 2, '2025-10-29 07:00:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(249, 2, '2025-10-29 07:01:56', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(250, 2, '2025-10-29 07:02:31', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(251, 2, '2025-10-29 07:02:37', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(252, 2, '2025-10-29 07:02:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(253, 2, '2025-10-29 07:04:11', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(254, 2, '2025-10-29 07:04:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(255, 2, '2025-10-29 07:07:27', 'snippet_create', 'MODX\\Revolution\\modSnippet', '2'),
(256, 2, '2025-10-29 07:07:35', 'resource_update', 'MODX\\Revolution\\modResource', '14'),
(257, 2, '2025-10-29 07:08:50', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(258, 2, '2025-10-29 07:08:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(259, 2, '2025-10-29 07:09:06', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(260, 2, '2025-10-29 07:09:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(261, 2, '2025-10-29 07:09:36', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(262, 2, '2025-10-29 07:09:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(263, 2, '2025-10-29 07:10:15', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(264, 2, '2025-10-29 07:10:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(265, 2, '2025-10-29 07:10:28', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(266, 2, '2025-10-29 07:10:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(267, 2, '2025-10-29 07:12:23', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(268, 2, '2025-10-29 07:12:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(269, 2, '2025-10-29 07:13:35', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(270, 2, '2025-10-29 07:13:35', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(271, 2, '2025-10-29 07:14:04', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(272, 2, '2025-10-29 07:14:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(273, 2, '2025-10-29 07:14:29', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(274, 2, '2025-10-29 07:14:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(275, 2, '2025-10-29 07:25:26', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(276, 2, '2025-10-29 07:25:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(277, 2, '2025-10-29 07:33:59', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(278, 2, '2025-10-29 07:33:59', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(279, 2, '2025-10-29 07:36:12', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(280, 2, '2025-10-29 07:36:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(281, 2, '2025-10-29 07:36:42', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(282, 2, '2025-10-29 07:36:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(283, 2, '2025-10-29 07:37:28', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(284, 2, '2025-10-29 07:37:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(285, 2, '2025-10-29 07:38:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(286, 2, '2025-10-29 07:38:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(287, 2, '2025-10-29 07:39:14', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(288, 2, '2025-10-29 07:39:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(289, 2, '2025-10-29 07:41:20', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(290, 2, '2025-10-29 07:41:21', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(291, 2, '2025-10-29 07:41:36', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(292, 2, '2025-10-29 07:41:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(293, 2, '2025-10-29 08:12:17', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(294, 2, '2025-10-29 08:12:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(295, 2, '2025-10-29 08:14:12', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(296, 2, '2025-10-29 08:14:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(297, 2, '2025-10-29 08:15:05', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(298, 2, '2025-10-29 08:15:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(299, 2, '2025-10-29 09:45:12', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(300, 2, '2025-10-29 09:45:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(301, 2, '2025-10-29 09:48:11', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(302, 2, '2025-10-29 09:48:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(303, 2, '2025-10-29 09:49:38', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(304, 2, '2025-10-29 09:49:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(305, 2, '2025-10-29 09:50:01', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(306, 2, '2025-10-29 09:50:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(307, 2, '2025-10-29 09:51:55', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(308, 2, '2025-10-29 09:51:55', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(309, 2, '2025-10-29 09:54:32', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(310, 2, '2025-10-29 09:54:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(311, 2, '2025-10-29 09:58:56', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(312, 2, '2025-10-29 09:58:56', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(313, 2, '2025-10-29 13:18:30', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(314, 2, '2025-10-29 13:18:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(315, 2, '2025-10-29 13:18:49', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(316, 2, '2025-10-29 13:18:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(317, 2, '2025-10-29 13:20:52', 'snippet_create', 'MODX\\Revolution\\modSnippet', '3'),
(318, 2, '2025-10-29 13:23:47', 'snippet_delete', 'MODX\\Revolution\\modSnippet', '3'),
(319, 2, '2025-10-29 13:23:56', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(320, 2, '2025-10-29 13:23:56', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(321, 2, '2025-10-29 13:26:06', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(322, 2, '2025-10-29 13:26:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(323, 2, '2025-10-29 13:28:28', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(324, 2, '2025-10-29 13:28:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(325, 2, '2025-10-29 13:29:38', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(326, 2, '2025-10-29 13:29:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(327, 2, '2025-10-29 13:30:13', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(328, 2, '2025-10-29 13:30:13', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(329, 2, '2025-10-29 13:30:39', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(330, 2, '2025-10-29 13:30:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(331, 2, '2025-10-29 13:31:50', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(332, 2, '2025-10-29 13:31:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(333, 2, '2025-10-29 13:32:57', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(334, 2, '2025-10-29 13:32:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(335, 2, '2025-10-30 05:04:11', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(336, 2, '2025-10-30 05:04:19', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(337, 2, '2025-10-30 05:04:39', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(338, 2, '2025-10-30 05:05:06', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(339, 2, '2025-10-30 05:05:28', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(340, 2, '2025-10-30 05:07:10', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(341, 2, '2025-10-30 05:13:01', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(342, 2, '2025-10-30 05:15:28', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(343, 2, '2025-10-30 05:18:04', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(344, 2, '2025-10-30 05:18:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(345, 2, '2025-10-30 05:18:53', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(346, 2, '2025-10-30 05:18:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(347, 2, '2025-10-30 05:20:22', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(348, 2, '2025-10-30 05:20:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(349, 2, '2025-10-30 05:27:05', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(350, 2, '2025-10-30 05:27:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(351, 2, '2025-10-30 05:36:01', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(352, 2, '2025-10-30 05:36:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(353, 2, '2025-10-30 05:36:27', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(354, 2, '2025-10-30 05:36:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(355, 2, '2025-10-30 05:40:45', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(356, 2, '2025-10-30 05:40:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(357, 2, '2025-10-30 05:48:34', 'snippet_create', 'MODX\\Revolution\\modSnippet', '4'),
(358, 2, '2025-10-30 06:06:54', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(359, 2, '2025-10-30 06:06:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(360, 2, '2025-10-30 06:08:18', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(361, 2, '2025-10-30 06:08:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(362, 2, '2025-10-30 06:08:38', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(363, 2, '2025-10-30 06:08:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(364, 2, '2025-10-30 06:08:52', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(365, 2, '2025-10-30 06:08:53', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(366, 2, '2025-10-30 06:26:54', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(367, 2, '2025-10-30 06:26:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(368, 2, '2025-10-30 06:28:14', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(369, 2, '2025-10-30 06:28:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(370, 2, '2025-10-30 06:30:05', 'snippet_update', 'MODX\\Revolution\\modSnippet', '4'),
(371, 2, '2025-10-30 06:30:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 4 Default'),
(372, 2, '2025-10-30 06:30:24', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(373, 2, '2025-10-30 06:30:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(374, 2, '2025-10-30 06:38:47', 'snippet_update', 'MODX\\Revolution\\modSnippet', '4'),
(375, 2, '2025-10-30 06:38:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 4 Default'),
(376, 2, '2025-10-30 06:41:10', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(377, 2, '2025-10-30 06:41:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(378, 2, '2025-10-30 06:42:57', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(379, 2, '2025-10-30 06:42:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(380, 2, '2025-10-30 06:44:39', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(381, 2, '2025-10-30 06:44:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(382, 2, '2025-10-30 06:46:03', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(383, 2, '2025-10-30 06:46:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(384, 2, '2025-10-30 06:46:15', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(385, 2, '2025-10-30 06:46:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(386, 2, '2025-10-30 06:47:34', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(387, 2, '2025-10-30 06:47:35', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(388, 2, '2025-10-30 06:48:02', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(389, 2, '2025-10-30 06:48:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(390, 2, '2025-10-30 06:49:19', 'snippet_update', 'MODX\\Revolution\\modSnippet', '4'),
(391, 2, '2025-10-30 06:49:19', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 4 Default'),
(392, 2, '2025-10-30 06:53:56', 'resource_create', 'MODX\\Revolution\\modDocument', '15'),
(393, 2, '2025-10-30 06:54:04', 'resource_update', 'MODX\\Revolution\\modResource', '15'),
(394, 2, '2025-10-30 07:08:53', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(395, 2, '2025-10-30 07:08:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(396, 2, '2025-10-30 07:09:04', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(397, 2, '2025-10-30 07:10:23', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(398, 2, '2025-10-30 08:00:11', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(399, 2, '2025-10-30 08:00:22', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(400, 2, '2025-10-30 08:00:22', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(401, 2, '2025-10-30 08:00:34', 'snippet_delete', 'MODX\\Revolution\\modSnippet', '4'),
(402, 2, '2025-10-30 08:01:20', 'delete_resource', 'MODX\\Revolution\\modDocument', '15'),
(403, 2, '2025-10-30 08:02:52', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(404, 2, '2025-10-30 08:02:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(405, 2, '2025-10-30 08:04:10', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(406, 2, '2025-10-30 08:04:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(407, 2, '2025-10-30 08:05:09', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(408, 2, '2025-10-30 08:05:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(409, 2, '2025-10-30 08:05:29', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(410, 2, '2025-10-30 08:05:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(411, 2, '2025-10-30 08:06:44', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(412, 2, '2025-10-30 08:06:44', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(413, 2, '2025-10-30 08:07:02', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(414, 2, '2025-10-30 08:07:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(415, 2, '2025-10-30 08:08:00', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(416, 2, '2025-10-30 08:08:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(417, 2, '2025-10-30 08:21:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(418, 2, '2025-10-30 08:21:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(419, 2, '2025-10-30 10:46:09', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(420, 2, '2025-10-30 10:46:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(421, 2, '2025-10-30 10:47:15', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(422, 2, '2025-10-30 10:47:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(423, 2, '2025-10-30 10:49:19', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(424, 2, '2025-10-30 10:49:19', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(425, 2, '2025-10-30 10:51:16', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(426, 2, '2025-10-30 10:51:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(427, 2, '2025-10-30 10:53:36', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(428, 2, '2025-10-30 10:53:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(429, 2, '2025-10-30 10:59:02', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(430, 2, '2025-10-30 10:59:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(431, 2, '2025-10-30 10:59:24', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(432, 2, '2025-10-30 10:59:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(433, 2, '2025-10-30 11:00:28', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(434, 2, '2025-10-30 11:00:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(435, 2, '2025-10-30 11:01:35', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(436, 2, '2025-10-30 11:01:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(437, 2, '2025-10-30 11:04:38', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(438, 2, '2025-10-30 11:04:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(439, 2, '2025-10-30 11:06:08', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(440, 2, '2025-10-30 11:06:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(441, 2, '2025-10-30 11:09:13', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(442, 2, '2025-10-30 11:09:13', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(443, 2, '2025-10-30 11:09:42', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(444, 2, '2025-10-30 11:09:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(445, 2, '2025-10-30 11:10:32', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(446, 2, '2025-10-30 11:10:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(447, 2, '2025-10-30 11:11:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(448, 2, '2025-10-30 11:11:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(449, 2, '2025-10-30 11:13:57', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(450, 2, '2025-10-30 11:13:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(451, 2, '2025-10-30 11:17:47', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(452, 2, '2025-10-30 11:17:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(453, 2, '2025-10-30 11:21:10', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(454, 2, '2025-10-30 11:21:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(455, 2, '2025-10-30 12:57:56', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(456, 2, '2025-10-30 12:57:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(457, 2, '2025-10-30 12:58:00', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(458, 2, '2025-10-30 12:58:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(459, 2, '2025-10-30 13:00:42', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(460, 2, '2025-10-30 13:00:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(461, 2, '2025-10-30 13:03:48', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(462, 2, '2025-10-30 13:03:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(463, 2, '2025-10-30 13:04:28', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(464, 2, '2025-10-30 13:04:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(465, 2, '2025-10-30 13:05:43', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(466, 2, '2025-10-30 13:05:44', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(467, 2, '2025-10-30 13:19:55', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(468, 2, '2025-10-30 13:19:56', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(469, 2, '2025-10-30 13:20:47', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(470, 2, '2025-10-30 13:20:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(471, 2, '2025-10-30 13:22:43', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(472, 2, '2025-10-30 13:22:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(473, 2, '2025-10-30 13:24:40', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(474, 2, '2025-10-30 13:24:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(475, 2, '2025-10-30 13:29:34', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(476, 2, '2025-10-30 13:29:35', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(477, 2, '2025-10-30 13:32:23', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(478, 2, '2025-10-30 13:32:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(479, 2, '2025-10-30 13:34:07', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(480, 2, '2025-10-30 13:34:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(481, 2, '2025-10-30 13:34:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(482, 2, '2025-10-30 13:34:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default');
INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(483, 2, '2025-10-30 13:35:34', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(484, 2, '2025-10-30 13:35:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(485, 2, '2025-10-30 13:36:56', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(486, 2, '2025-10-30 13:36:56', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(487, 2, '2025-10-30 13:37:11', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(488, 2, '2025-10-30 13:37:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(489, 2, '2025-10-30 13:37:54', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(490, 2, '2025-10-30 13:37:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(491, 2, '2025-10-30 13:38:20', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(492, 2, '2025-10-30 13:38:20', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(493, 2, '2025-10-30 13:38:40', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(494, 2, '2025-10-30 13:38:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(495, 2, '2025-10-30 17:37:14', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(496, 2, '2025-10-30 17:41:13', 'snippet_create', 'MODX\\Revolution\\modSnippet', '5'),
(497, 2, '2025-10-30 17:41:37', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(498, 2, '2025-10-30 17:41:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(499, 2, '2025-10-30 17:41:48', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(500, 2, '2025-10-30 17:42:34', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(501, 2, '2025-10-30 17:42:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(502, 2, '2025-10-30 17:44:56', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(503, 2, '2025-10-30 17:44:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(504, 2, '2025-10-30 17:45:06', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(505, 2, '2025-10-30 17:45:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(506, 2, '2025-10-30 17:48:41', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(507, 2, '2025-10-30 17:48:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(508, 2, '2025-10-30 17:49:52', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(509, 2, '2025-10-30 17:56:20', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(510, 2, '2025-10-30 17:56:21', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(511, 2, '2025-10-30 17:56:32', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(512, 2, '2025-10-30 17:56:43', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(513, 2, '2025-10-30 17:56:44', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(514, 2, '2025-10-30 17:57:19', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(515, 2, '2025-10-30 17:57:29', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(516, 2, '2025-10-30 17:57:31', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(517, 2, '2025-10-30 17:57:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(518, 2, '2025-10-30 17:58:36', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(519, 2, '2025-10-30 17:58:44', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(520, 2, '2025-10-30 17:59:12', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(521, 2, '2025-10-30 17:59:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(522, 2, '2025-10-30 17:59:16', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(523, 2, '2025-10-30 17:59:48', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(524, 2, '2025-10-30 18:02:16', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(525, 2, '2025-10-30 18:04:35', 'snippet_create', 'MODX\\Revolution\\modSnippet', '6'),
(526, 2, '2025-10-30 18:04:59', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(527, 2, '2025-10-30 18:05:45', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(528, 2, '2025-10-30 18:05:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(529, 2, '2025-10-30 18:08:13', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(530, 2, '2025-10-30 18:12:33', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(531, 2, '2025-10-30 18:14:22', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(532, 2, '2025-10-30 18:22:57', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(533, 2, '2025-10-30 18:51:59', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(534, 2, '2025-10-30 18:51:59', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(535, 2, '2025-10-30 18:53:00', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(536, 2, '2025-10-30 18:53:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(537, 2, '2025-10-30 18:54:22', 'snippet_update', 'MODX\\Revolution\\modSnippet', '6'),
(538, 2, '2025-10-30 18:54:22', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 6 Default'),
(539, 2, '2025-10-30 18:58:05', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(540, 2, '2025-10-30 18:58:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(541, 2, '2025-10-30 18:58:19', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(542, 2, '2025-10-30 18:58:20', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(543, 2, '2025-10-30 19:21:22', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(544, 2, '2025-10-30 19:21:22', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(545, 2, '2025-10-30 19:37:18', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(546, 2, '2025-10-30 19:37:19', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(547, 2, '2025-10-30 20:03:21', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(548, 2, '2025-10-30 20:03:21', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(549, 2, '2025-10-30 20:06:26', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(550, 2, '2025-10-30 20:06:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(551, 2, '2025-10-30 20:07:07', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(552, 2, '2025-10-30 20:07:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(553, 2, '2025-10-30 20:08:27', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(554, 2, '2025-10-30 20:08:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(555, 2, '2025-10-30 20:10:43', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(556, 2, '2025-10-30 20:10:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(557, 2, '2025-10-30 20:11:24', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(558, 2, '2025-10-30 20:11:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(559, 2, '2025-10-30 20:12:23', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(560, 2, '2025-10-30 20:12:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(561, 2, '2025-10-30 20:13:40', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(562, 2, '2025-10-30 20:13:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(563, 2, '2025-10-30 20:17:34', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(564, 2, '2025-10-30 20:17:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(565, 2, '2025-10-30 20:19:59', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(566, 2, '2025-10-30 20:19:59', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(567, 2, '2025-10-30 20:21:51', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(568, 2, '2025-10-30 20:21:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(569, 2, '2025-10-30 20:22:06', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(570, 2, '2025-10-30 20:22:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(571, 2, '2025-10-30 20:22:47', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(572, 2, '2025-10-30 20:22:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(573, 2, '2025-10-30 20:26:21', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(574, 2, '2025-10-30 20:26:21', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(575, 2, '2025-10-30 20:29:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(576, 2, '2025-10-30 20:29:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(577, 2, '2025-10-30 20:32:27', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(578, 2, '2025-10-30 20:32:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(579, 2, '2025-10-30 20:32:57', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(580, 2, '2025-10-30 20:32:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(581, 2, '2025-10-30 20:33:11', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(582, 2, '2025-10-30 20:33:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(583, 2, '2025-10-30 20:33:32', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(584, 2, '2025-10-30 20:33:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(585, 2, '2025-10-30 20:43:56', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(586, 2, '2025-10-30 20:43:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(587, 2, '2025-10-30 20:49:06', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(588, 2, '2025-10-30 20:49:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(589, 2, '2025-10-30 20:50:47', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(590, 2, '2025-10-30 20:50:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(591, 2, '2025-10-31 04:37:14', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(592, 2, '2025-10-31 04:37:23', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(593, 2, '2025-10-31 04:43:39', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(594, 2, '2025-10-31 04:44:03', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(595, 2, '2025-10-31 04:45:23', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(596, 2, '2025-10-31 04:47:20', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(597, 2, '2025-10-31 04:49:27', 'snippet_update', 'MODX\\Revolution\\modSnippet', '6'),
(598, 2, '2025-10-31 04:49:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 6 Default'),
(599, 2, '2025-10-31 04:50:45', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(600, 2, '2025-10-31 04:50:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(601, 2, '2025-10-31 05:10:08', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(602, 2, '2025-10-31 05:10:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(603, 2, '2025-10-31 05:10:54', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(604, 2, '2025-10-31 05:10:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(605, 2, '2025-10-31 05:11:34', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(606, 2, '2025-10-31 05:11:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(607, 2, '2025-10-31 05:18:45', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(608, 2, '2025-10-31 05:18:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(609, 2, '2025-10-31 05:24:56', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(610, 2, '2025-10-31 05:24:56', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(611, 2, '2025-10-31 05:27:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(612, 2, '2025-10-31 05:27:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(613, 2, '2025-10-31 05:31:02', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(614, 2, '2025-10-31 05:31:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(615, 2, '2025-10-31 05:33:58', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(616, 2, '2025-10-31 05:33:59', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(617, 2, '2025-10-31 05:35:02', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(618, 2, '2025-10-31 05:35:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(619, 2, '2025-10-31 05:38:38', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(620, 2, '2025-10-31 05:38:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(621, 2, '2025-10-31 05:39:22', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(622, 2, '2025-10-31 05:39:22', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(623, 2, '2025-10-31 05:41:57', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(624, 2, '2025-10-31 05:41:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(625, 2, '2025-10-31 05:50:13', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(626, 2, '2025-10-31 05:50:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(627, 2, '2025-10-31 05:55:45', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(628, 2, '2025-10-31 05:55:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(629, 2, '2025-10-31 05:56:31', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(630, 2, '2025-10-31 05:56:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(631, 2, '2025-10-31 05:58:36', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(632, 2, '2025-10-31 05:58:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(633, 2, '2025-10-31 06:11:57', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(634, 2, '2025-10-31 06:11:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(635, 2, '2025-10-31 06:15:55', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(636, 2, '2025-10-31 06:15:55', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(637, 2, '2025-10-31 06:16:29', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(638, 2, '2025-10-31 06:16:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(639, 2, '2025-10-31 06:17:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(640, 2, '2025-10-31 06:17:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(641, 2, '2025-10-31 06:18:01', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(642, 2, '2025-10-31 06:18:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(643, 2, '2025-10-31 06:20:33', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(644, 2, '2025-10-31 06:20:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(645, 2, '2025-10-31 06:26:13', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(646, 2, '2025-10-31 06:26:13', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(647, 2, '2025-10-31 07:19:47', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(648, 2, '2025-10-31 07:19:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(649, 2, '2025-10-31 07:20:32', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(650, 2, '2025-10-31 07:20:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(651, 2, '2025-10-31 07:23:32', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(652, 2, '2025-10-31 07:23:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(653, 2, '2025-10-31 07:35:15', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(654, 2, '2025-10-31 07:35:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(655, 2, '2025-10-31 07:52:58', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(656, 2, '2025-10-31 07:52:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(657, 2, '2025-10-31 07:55:42', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(658, 2, '2025-10-31 07:55:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(659, 2, '2025-10-31 08:04:15', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(660, 2, '2025-10-31 08:04:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(661, 2, '2025-10-31 08:15:00', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(662, 2, '2025-10-31 08:15:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(663, 2, '2025-10-31 08:17:52', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(664, 2, '2025-10-31 08:17:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(665, 2, '2025-10-31 08:23:41', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(666, 2, '2025-10-31 08:23:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(667, 2, '2025-10-31 08:24:51', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(668, 2, '2025-10-31 08:24:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(669, 2, '2025-10-31 08:27:10', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(670, 2, '2025-10-31 08:27:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(671, 2, '2025-10-31 08:30:43', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(672, 2, '2025-10-31 08:30:44', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(673, 2, '2025-10-31 08:32:43', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(674, 2, '2025-10-31 08:32:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(675, 2, '2025-10-31 08:34:00', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(676, 2, '2025-10-31 08:34:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(677, 2, '2025-10-31 08:34:27', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(678, 2, '2025-10-31 08:34:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(679, 2, '2025-10-31 08:40:05', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(680, 2, '2025-10-31 08:40:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(681, 2, '2025-10-31 08:45:14', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(682, 2, '2025-10-31 08:45:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(683, 2, '2025-10-31 08:47:01', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(684, 2, '2025-10-31 08:47:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(685, 2, '2025-10-31 08:49:27', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(686, 2, '2025-10-31 08:49:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(687, 2, '2025-10-31 08:56:30', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(688, 2, '2025-10-31 08:56:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(689, 2, '2025-10-31 08:56:57', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(690, 2, '2025-10-31 08:56:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(691, 2, '2025-11-02 15:18:51', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(692, 2, '2025-11-02 15:21:42', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(693, 2, '2025-11-02 17:16:00', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(694, 2, '2025-11-02 17:16:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(695, 2, '2025-11-02 17:17:34', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(696, 2, '2025-11-02 17:17:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(697, 2, '2025-11-02 17:19:45', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(698, 2, '2025-11-02 17:19:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(699, 2, '2025-11-02 17:22:29', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(700, 2, '2025-11-02 17:22:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(701, 2, '2025-11-02 17:29:32', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(702, 2, '2025-11-02 17:29:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(703, 2, '2025-11-02 17:47:09', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(704, 2, '2025-11-02 17:47:38', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(705, 2, '2025-11-02 17:47:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(706, 2, '2025-11-02 17:49:26', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(707, 2, '2025-11-02 17:49:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(708, 2, '2025-11-02 17:49:44', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(709, 2, '2025-11-02 17:49:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(710, 2, '2025-11-02 17:52:02', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(711, 2, '2025-11-02 17:52:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(712, 2, '2025-11-02 17:52:24', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(713, 2, '2025-11-02 17:52:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(714, 2, '2025-11-02 17:53:24', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(715, 2, '2025-11-02 17:53:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(716, 2, '2025-11-02 17:53:54', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(717, 2, '2025-11-02 17:53:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(718, 2, '2025-11-02 17:54:09', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(719, 2, '2025-11-02 17:54:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(720, 2, '2025-11-02 17:54:58', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(721, 2, '2025-11-02 17:54:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(722, 2, '2025-11-02 17:55:29', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(723, 2, '2025-11-02 17:55:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(724, 2, '2025-11-02 17:55:54', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(725, 2, '2025-11-02 17:55:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(726, 2, '2025-11-02 17:56:14', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(727, 2, '2025-11-02 17:56:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(728, 2, '2025-11-02 17:59:03', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(729, 2, '2025-11-02 17:59:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(730, 2, '2025-11-02 17:59:47', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(731, 2, '2025-11-02 17:59:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(732, 2, '2025-11-02 18:01:15', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(733, 2, '2025-11-02 18:01:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(734, 2, '2025-11-02 18:10:59', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(735, 2, '2025-11-02 18:10:59', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(736, 2, '2025-11-02 18:11:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(737, 2, '2025-11-02 18:11:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(738, 2, '2025-11-02 18:13:28', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(739, 2, '2025-11-02 18:13:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(740, 2, '2025-11-02 18:15:04', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(741, 2, '2025-11-02 18:15:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(742, 2, '2025-11-02 18:18:51', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(743, 2, '2025-11-02 18:18:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(744, 2, '2025-11-02 18:21:12', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(745, 2, '2025-11-02 18:21:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(746, 2, '2025-11-02 18:27:06', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(747, 2, '2025-11-02 18:27:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(748, 2, '2025-11-02 18:27:41', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(749, 2, '2025-11-02 18:27:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(750, 2, '2025-11-02 18:30:05', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(751, 2, '2025-11-02 18:30:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(752, 2, '2025-11-02 18:35:01', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(753, 2, '2025-11-02 18:35:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(754, 2, '2025-11-02 18:35:34', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(755, 2, '2025-11-02 18:35:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(756, 2, '2025-11-02 18:36:36', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(757, 2, '2025-11-02 18:36:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(758, 2, '2025-11-02 18:37:23', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(759, 2, '2025-11-02 18:37:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(760, 2, '2025-11-02 18:46:56', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(761, 2, '2025-11-02 18:46:56', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(762, 2, '2025-11-02 18:47:21', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(763, 2, '2025-11-02 18:47:21', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(764, 2, '2025-11-02 18:48:05', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(765, 2, '2025-11-02 18:48:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(766, 2, '2025-11-02 18:50:05', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(767, 2, '2025-11-02 18:50:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(768, 2, '2025-11-03 04:35:11', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(769, 2, '2025-11-03 04:35:19', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(770, 2, '2025-11-03 04:41:58', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(771, 2, '2025-11-03 04:41:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(772, 2, '2025-11-03 04:42:38', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(773, 2, '2025-11-03 04:42:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(774, 2, '2025-11-03 04:44:10', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(775, 2, '2025-11-03 04:44:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(776, 2, '2025-11-03 04:45:40', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(777, 2, '2025-11-03 04:45:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(778, 2, '2025-11-03 04:48:04', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(779, 2, '2025-11-03 04:48:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(780, 2, '2025-11-03 07:58:07', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(781, 2, '2025-11-03 07:58:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(782, 2, '2025-11-03 08:23:08', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(783, 2, '2025-11-03 08:23:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(784, 2, '2025-11-03 08:24:44', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(785, 2, '2025-11-03 08:24:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(786, 2, '2025-11-03 08:28:44', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(787, 2, '2025-11-03 08:28:44', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(788, 2, '2025-11-03 09:48:01', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(789, 2, '2025-11-03 09:48:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(790, 2, '2025-11-03 09:53:29', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(791, 2, '2025-11-03 09:53:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(792, 2, '2025-11-03 09:55:31', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(793, 2, '2025-11-03 09:55:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(794, 2, '2025-11-03 10:37:18', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(795, 2, '2025-11-03 10:37:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(796, 2, '2025-11-03 10:37:57', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(797, 2, '2025-11-03 10:37:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(798, 2, '2025-11-03 10:53:09', 'duplicate_resource', 'MODX\\Revolution\\modDocument', '16'),
(799, 2, '2025-11-03 10:53:38', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(800, 2, '2025-11-03 10:53:44', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(801, 2, '2025-11-03 10:53:53', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(802, 2, '2025-11-03 10:54:27', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(803, 2, '2025-11-03 10:54:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(804, 2, '2025-11-03 10:56:00', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(805, 2, '2025-11-03 10:56:43', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(806, 2, '2025-11-03 10:57:07', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(807, 2, '2025-11-03 10:57:30', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(808, 2, '2025-11-03 10:58:31', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(809, 2, '2025-11-03 10:59:25', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(810, 2, '2025-11-03 11:02:20', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(811, 2, '2025-11-03 11:02:20', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(812, 2, '2025-11-03 11:06:08', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(813, 2, '2025-11-03 11:06:36', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(814, 2, '2025-11-03 11:09:12', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(815, 2, '2025-11-03 11:10:44', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(816, 2, '2025-11-03 11:11:11', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(817, 2, '2025-11-03 11:11:37', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(818, 2, '2025-11-03 11:12:31', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(819, 2, '2025-11-03 11:13:11', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(820, 2, '2025-11-03 11:17:48', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(821, 2, '2025-11-03 11:21:12', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(822, 2, '2025-11-03 11:22:50', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(823, 2, '2025-11-03 11:23:22', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(824, 2, '2025-11-03 11:31:13', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(825, 2, '2025-11-03 11:46:06', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(826, 2, '2025-11-03 11:48:01', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(827, 2, '2025-11-03 11:49:19', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(828, 2, '2025-11-03 11:50:04', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(829, 2, '2025-11-03 11:56:59', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(830, 2, '2025-11-03 11:57:22', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(831, 2, '2025-11-03 11:59:41', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(832, 2, '2025-11-03 12:04:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(833, 2, '2025-11-03 12:06:04', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(834, 2, '2025-11-03 12:07:02', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(835, 2, '2025-11-03 12:08:16', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(836, 2, '2025-11-03 12:20:26', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(837, 2, '2025-11-03 12:22:06', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(838, 2, '2025-11-03 12:26:01', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(839, 2, '2025-11-03 12:28:22', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(840, 2, '2025-11-03 12:29:34', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(841, 2, '2025-11-03 12:30:14', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(842, 2, '2025-11-03 12:33:38', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(843, 2, '2025-11-03 12:35:36', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(844, 2, '2025-11-03 12:45:20', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(845, 2, '2025-11-03 12:45:39', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(846, 2, '2025-11-03 12:48:29', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(847, 2, '2025-11-03 12:50:31', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(848, 2, '2025-11-03 13:00:04', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(849, 2, '2025-11-04 04:27:01', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(850, 2, '2025-11-04 04:55:24', 'resource_update', 'MODX\\Revolution\\modResource', '13'),
(851, 2, '2025-11-04 04:56:02', 'resource_update', 'MODX\\Revolution\\modResource', '13'),
(852, 2, '2025-11-04 05:03:19', 'resource_update', 'MODX\\Revolution\\modResource', '13'),
(853, 2, '2025-11-04 05:03:37', 'resource_update', 'MODX\\Revolution\\modResource', '13'),
(854, 2, '2025-11-04 05:36:28', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(855, 2, '2025-11-04 05:38:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(856, 2, '2025-11-04 05:40:48', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(857, 2, '2025-11-04 05:42:56', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(858, 2, '2025-11-04 05:55:10', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(859, 2, '2025-11-04 05:55:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(860, 2, '2025-11-04 05:56:09', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(861, 2, '2025-11-04 05:56:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(862, 2, '2025-11-04 05:56:36', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(863, 2, '2025-11-04 05:56:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(864, 2, '2025-11-04 05:58:16', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(865, 2, '2025-11-04 05:58:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(866, 2, '2025-11-04 06:00:13', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(867, 2, '2025-11-04 06:00:13', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(868, 2, '2025-11-04 06:02:14', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(869, 2, '2025-11-04 06:02:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(870, 2, '2025-11-04 06:04:56', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(871, 2, '2025-11-04 06:05:26', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(872, 2, '2025-11-04 06:06:40', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(873, 2, '2025-11-04 06:07:14', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(874, 2, '2025-11-04 06:09:32', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(875, 2, '2025-11-04 06:10:43', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(876, 2, '2025-11-04 06:14:50', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(877, 2, '2025-11-04 07:16:48', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(878, 2, '2025-11-04 07:18:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(879, 2, '2025-11-04 07:19:07', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(880, 2, '2025-11-04 07:19:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(881, 2, '2025-11-04 07:21:23', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(882, 2, '2025-11-04 07:22:03', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(883, 2, '2025-11-04 07:41:18', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(884, 2, '2025-11-04 07:41:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(885, 2, '2025-11-04 07:41:35', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(886, 2, '2025-11-04 07:41:35', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(887, 2, '2025-11-04 07:43:08', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(888, 2, '2025-11-04 07:43:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(889, 2, '2025-11-04 07:43:28', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(890, 2, '2025-11-04 07:43:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(891, 2, '2025-11-04 07:46:02', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(892, 2, '2025-11-04 07:46:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(893, 2, '2025-11-04 07:51:52', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(894, 2, '2025-11-04 07:51:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(895, 2, '2025-11-04 07:52:02', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(896, 2, '2025-11-04 07:52:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(897, 2, '2025-11-04 08:06:26', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(898, 2, '2025-11-04 08:06:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(899, 2, '2025-11-07 06:01:27', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(900, 2, '2025-11-07 06:05:36', 'resource_update', 'MODX\\Revolution\\modResource', '16'),
(901, 2, '2025-11-10 05:44:53', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(902, 2, '2025-11-10 05:46:11', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(903, 2, '2025-11-10 05:46:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(904, 2, '2025-11-10 05:48:19', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(905, 2, '2025-11-10 05:48:19', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(906, 2, '2025-11-10 05:49:18', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(907, 2, '2025-11-10 05:49:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(908, 2, '2025-11-21 05:30:47', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(909, 2, '2025-11-21 06:40:07', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(910, 2, '2025-11-21 06:40:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(911, 2, '2025-11-21 06:41:12', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(912, 2, '2025-11-21 06:41:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(913, 2, '2025-11-21 06:43:16', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(914, 2, '2025-11-21 06:43:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(915, 2, '2025-11-21 06:43:57', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(916, 2, '2025-11-21 06:43:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(917, 2, '2025-11-21 06:46:19', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(918, 2, '2025-11-21 06:46:19', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(919, 2, '2025-11-21 06:46:59', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(920, 2, '2025-11-21 06:46:59', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(921, 2, '2025-11-21 08:25:06', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(922, 2, '2025-11-21 08:25:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(923, 2, '2025-11-21 08:26:00', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(924, 2, '2025-11-21 08:26:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(925, 2, '2025-11-21 08:26:29', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(926, 2, '2025-11-21 08:26:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(927, 2, '2025-11-21 11:55:38', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(928, 2, '2025-11-21 11:55:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(929, 2, '2025-11-21 11:56:04', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(930, 2, '2025-11-21 11:56:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(931, 2, '2025-11-21 12:43:50', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(932, 2, '2025-11-21 12:43:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(933, 2, '2025-11-21 12:44:10', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(934, 2, '2025-11-21 12:44:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(935, 2, '2025-11-21 12:44:28', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(936, 2, '2025-11-21 12:44:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(937, 2, '2025-11-21 12:45:35', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(938, 2, '2025-11-21 12:45:35', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(939, 2, '2025-11-21 12:46:34', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(940, 2, '2025-11-21 12:46:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default');
INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(941, 2, '2025-11-21 12:46:51', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(942, 2, '2025-11-21 12:46:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(943, 2, '2025-11-21 12:48:31', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(944, 2, '2025-11-21 12:48:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(945, 2, '2025-11-21 12:53:03', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(946, 2, '2025-11-21 12:53:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(947, 2, '2025-11-21 12:59:30', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(948, 2, '2025-11-21 12:59:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(949, 2, '2025-11-21 13:00:01', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(950, 2, '2025-11-21 13:00:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(951, 2, '2025-11-21 13:00:16', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(952, 2, '2025-11-21 13:00:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(953, 2, '2025-11-21 13:02:40', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(954, 2, '2025-11-21 13:02:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(955, 2, '2025-11-21 13:02:48', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(956, 2, '2025-11-21 13:02:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(957, 2, '2025-11-25 07:41:19', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(958, 2, '2025-11-25 08:36:36', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(959, 2, '2025-11-25 08:36:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(960, 2, '2025-11-25 08:38:51', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(961, 2, '2025-11-25 08:38:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(962, 2, '2025-11-25 08:39:51', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(963, 2, '2025-11-25 08:39:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(964, 2, '2025-11-25 08:40:49', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(965, 2, '2025-11-25 08:40:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(966, 2, '2025-11-25 08:45:14', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(967, 2, '2025-11-25 08:45:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(968, 2, '2025-11-25 08:45:28', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(969, 2, '2025-11-25 08:45:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(970, 2, '2025-11-25 08:46:48', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(971, 2, '2025-11-25 08:46:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(972, 2, '2025-11-25 08:47:24', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(973, 2, '2025-11-25 08:47:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(974, 2, '2025-11-25 08:50:03', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(975, 2, '2025-11-25 08:50:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(976, 2, '2025-11-25 08:51:10', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(977, 2, '2025-11-25 08:51:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(978, 2, '2025-11-25 10:12:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(979, 2, '2025-11-25 10:12:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(980, 2, '2025-11-25 10:14:01', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(981, 2, '2025-11-25 10:14:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(982, 2, '2025-11-25 10:14:13', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(983, 2, '2025-11-25 10:14:13', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(984, 2, '2025-11-25 10:16:30', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(985, 2, '2025-11-25 10:16:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(986, 2, '2025-11-25 10:19:14', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(987, 2, '2025-11-25 10:19:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(988, 2, '2025-11-25 10:24:40', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(989, 2, '2025-11-25 10:24:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(990, 2, '2025-11-25 10:26:07', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(991, 2, '2025-11-25 10:26:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(992, 2, '2025-11-25 10:27:23', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(993, 2, '2025-11-25 10:27:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(994, 2, '2025-11-25 10:28:38', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(995, 2, '2025-11-25 10:28:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(996, 2, '2025-11-25 10:33:59', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(997, 2, '2025-11-25 10:33:59', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(998, 2, '2025-11-25 10:43:18', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(999, 2, '2025-11-25 10:43:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1000, 2, '2025-11-25 10:47:19', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1001, 2, '2025-11-25 10:47:20', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1002, 2, '2025-11-25 10:49:05', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1003, 2, '2025-11-25 10:49:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1004, 2, '2025-11-25 10:57:37', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1005, 2, '2025-11-25 10:57:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1006, 2, '2025-11-25 11:12:31', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1007, 2, '2025-11-25 11:12:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1008, 2, '2025-11-25 11:14:12', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1009, 2, '2025-11-25 11:14:13', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1010, 2, '2025-11-25 11:15:21', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1011, 2, '2025-11-25 11:15:22', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1012, 2, '2025-11-25 11:19:59', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1013, 2, '2025-11-25 11:19:59', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1014, 2, '2025-11-25 11:22:24', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1015, 2, '2025-11-25 11:22:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1016, 2, '2025-11-25 11:23:53', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1017, 2, '2025-11-25 11:23:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1018, 2, '2025-11-25 11:25:18', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1019, 2, '2025-11-25 11:25:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1020, 2, '2025-11-25 11:27:01', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1021, 2, '2025-11-25 11:27:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1022, 2, '2025-11-25 11:29:03', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1023, 2, '2025-11-25 11:29:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1024, 2, '2025-11-25 11:32:13', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1025, 2, '2025-11-25 11:32:13', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1026, 2, '2025-11-25 11:35:48', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1027, 2, '2025-11-25 11:35:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1028, 2, '2025-11-25 11:38:26', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1029, 2, '2025-11-25 11:38:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1030, 2, '2025-11-25 11:40:32', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1031, 2, '2025-11-25 11:40:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1032, 2, '2025-11-25 11:43:05', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1033, 2, '2025-11-25 11:43:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1034, 2, '2025-11-25 11:43:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1035, 2, '2025-11-25 11:43:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1036, 2, '2025-11-25 11:44:21', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1037, 2, '2025-11-25 11:44:21', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1038, 2, '2025-11-25 11:45:57', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1039, 2, '2025-11-25 11:45:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1040, 2, '2025-11-25 11:46:58', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1041, 2, '2025-11-25 11:46:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1042, 2, '2025-11-25 11:48:27', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1043, 2, '2025-11-25 11:48:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1044, 2, '2025-11-25 12:07:38', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1045, 2, '2025-11-25 12:07:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1046, 2, '2025-11-25 12:08:06', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1047, 2, '2025-11-25 12:08:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1048, 2, '2025-11-25 12:10:58', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1049, 2, '2025-11-25 12:10:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1050, 2, '2025-11-25 12:13:36', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1051, 2, '2025-11-25 12:13:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1052, 2, '2025-11-25 12:16:12', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1053, 2, '2025-11-25 12:16:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1054, 2, '2025-11-26 05:05:03', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(1055, 2, '2025-11-26 05:23:22', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1056, 2, '2025-11-26 05:23:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1057, 2, '2025-11-26 05:24:26', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1058, 2, '2025-11-26 05:24:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1059, 2, '2025-11-26 05:26:14', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1060, 2, '2025-11-26 05:26:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1061, 2, '2025-11-26 05:28:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1062, 2, '2025-11-26 05:28:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1063, 2, '2025-11-26 05:31:27', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1064, 2, '2025-11-26 05:31:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1065, 2, '2025-11-26 05:45:05', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1066, 2, '2025-11-26 05:45:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1067, 2, '2025-11-26 05:49:44', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1068, 2, '2025-11-26 05:49:44', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1069, 2, '2025-11-26 05:49:49', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1070, 2, '2025-11-26 05:49:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1071, 2, '2025-11-26 05:59:54', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1072, 2, '2025-11-26 05:59:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1073, 2, '2025-11-26 06:03:06', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1074, 2, '2025-11-26 06:03:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1075, 2, '2025-11-26 06:04:28', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1076, 2, '2025-11-26 06:04:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1077, 2, '2025-11-26 06:07:49', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1078, 2, '2025-11-26 06:07:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1079, 2, '2025-11-26 06:07:53', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1080, 2, '2025-11-26 06:07:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1081, 2, '2025-11-26 06:35:49', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1082, 2, '2025-11-26 06:35:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1083, 2, '2025-11-26 06:36:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1084, 2, '2025-11-26 06:36:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1085, 2, '2025-11-26 06:41:00', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1086, 2, '2025-11-26 06:41:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1087, 2, '2025-11-26 06:42:32', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1088, 2, '2025-11-26 06:42:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1089, 2, '2025-11-26 06:46:29', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1090, 2, '2025-11-26 06:46:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1091, 2, '2025-11-26 06:51:42', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1092, 2, '2025-11-26 06:51:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1093, 2, '2025-11-26 06:53:51', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1094, 2, '2025-11-26 06:53:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1095, 2, '2025-11-26 07:00:24', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1096, 2, '2025-11-26 07:00:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1097, 2, '2025-11-26 07:01:23', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1098, 2, '2025-11-26 07:01:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1099, 2, '2025-11-26 07:02:26', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1100, 2, '2025-11-26 07:02:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1101, 2, '2025-11-26 07:03:03', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1102, 2, '2025-11-26 07:03:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1103, 2, '2025-11-26 07:34:51', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1104, 2, '2025-11-26 07:34:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1105, 2, '2025-11-26 07:35:26', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1106, 2, '2025-11-26 07:35:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1107, 2, '2025-11-26 07:37:31', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1108, 2, '2025-11-26 07:37:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1109, 2, '2025-11-26 07:41:47', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1110, 2, '2025-11-26 07:41:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1111, 2, '2025-11-26 07:46:15', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1112, 2, '2025-11-26 07:46:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1113, 2, '2025-11-26 07:50:33', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1114, 2, '2025-11-26 07:50:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1115, 2, '2025-11-26 07:55:31', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1116, 2, '2025-11-26 07:55:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1117, 2, '2025-11-26 08:00:07', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1118, 2, '2025-11-26 08:00:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1119, 2, '2025-11-26 08:00:47', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1120, 2, '2025-11-26 08:00:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1121, 2, '2025-11-26 08:02:38', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1122, 2, '2025-11-26 08:02:38', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1123, 2, '2025-11-26 08:03:45', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1124, 2, '2025-11-26 08:03:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1125, 2, '2025-11-26 11:44:36', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1126, 2, '2025-11-26 11:44:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1127, 2, '2025-11-26 11:45:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1128, 2, '2025-11-26 11:45:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1129, 2, '2025-11-26 11:50:35', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1130, 2, '2025-11-26 11:50:35', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1131, 2, '2025-11-26 11:56:50', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1132, 2, '2025-11-26 11:56:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1133, 2, '2025-11-26 12:06:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1134, 2, '2025-11-26 12:06:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1135, 2, '2025-11-26 12:13:03', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1136, 2, '2025-11-26 12:13:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1137, 2, '2025-11-26 12:15:39', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1138, 2, '2025-11-26 12:15:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1139, 2, '2025-11-26 12:17:28', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1140, 2, '2025-11-26 12:17:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1141, 2, '2025-11-27 05:16:37', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(1142, 2, '2025-11-27 13:29:26', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1143, 2, '2025-11-27 13:29:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1144, 2, '2025-11-28 09:58:21', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(1145, 2, '2025-11-28 09:59:11', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(1146, 2, '2025-11-28 09:59:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(1147, 2, '2025-11-28 09:59:29', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(1148, 2, '2025-11-28 09:59:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(1149, 2, '2025-11-28 10:01:27', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(1150, 2, '2025-11-28 10:01:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(1151, 2, '2025-11-28 10:04:34', 'file_upload', '', 'Filesystem: assets\\images/\\'),
(1152, 2, '2025-11-28 10:04:45', 'file_rename', '', 'Filesystem: assets\\images\\whatsapp-icon-(1).png -> whatsapp-icon.png'),
(1153, 2, '2025-11-28 10:05:36', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(1154, 2, '2025-11-28 10:05:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(1155, 2, '2025-11-28 10:05:54', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(1156, 2, '2025-11-28 10:05:55', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(1157, 2, '2025-11-28 10:06:22', 'file_upload', '', 'Filesystem: assets\\images/\\'),
(1158, 2, '2025-11-28 10:07:59', 'file_update', '', 'Filesystem: assets\\css\\style.css'),
(1159, 2, '2025-11-28 10:08:45', 'file_update', '', 'Filesystem: assets\\css\\style.css'),
(1160, 2, '2025-11-28 10:09:14', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(1161, 2, '2025-11-28 10:09:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(1162, 2, '2025-11-28 11:48:51', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1163, 2, '2025-11-28 11:48:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1164, 2, '2025-12-01 06:15:20', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(1165, 2, '2025-12-01 07:32:30', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1166, 2, '2025-12-01 07:32:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1167, 2, '2025-12-01 07:34:47', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1168, 2, '2025-12-01 07:34:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1169, 2, '2025-12-01 07:38:33', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1170, 2, '2025-12-01 07:38:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1171, 2, '2025-12-01 07:53:05', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1172, 2, '2025-12-01 07:53:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1173, 2, '2025-12-01 08:20:04', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1174, 2, '2025-12-01 08:20:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1175, 2, '2025-12-01 08:59:03', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1176, 2, '2025-12-01 08:59:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1177, 2, '2025-12-01 08:59:41', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1178, 2, '2025-12-01 08:59:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1179, 2, '2025-12-01 09:22:45', 'save_profile', 'MODX\\Revolution\\modUser', '2'),
(1180, 2, '2025-12-01 09:22:47', 'save_profile', 'MODX\\Revolution\\modUser', '2'),
(1181, 2, '2025-12-01 09:23:58', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(1182, 2, '2025-12-01 09:34:09', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1183, 2, '2025-12-01 09:34:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1184, 2, '2025-12-01 09:58:51', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1185, 2, '2025-12-01 09:58:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1186, 2, '2025-12-01 09:59:37', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1187, 2, '2025-12-01 09:59:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1188, 2, '2025-12-01 11:02:31', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1189, 2, '2025-12-01 11:02:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1190, 2, '2025-12-01 11:04:09', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1191, 2, '2025-12-01 11:04:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1192, 2, '2025-12-01 11:08:09', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1193, 2, '2025-12-01 11:08:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1194, 2, '2025-12-01 11:50:47', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1195, 2, '2025-12-01 11:50:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1196, 2, '2025-12-01 12:12:15', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1197, 2, '2025-12-01 12:12:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1198, 2, '2025-12-01 12:13:44', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1199, 2, '2025-12-01 12:13:44', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1200, 2, '2025-12-01 12:17:14', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1201, 2, '2025-12-01 12:17:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(1202, 2, '2025-12-01 12:18:01', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(1203, 2, '2025-12-01 12:18:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default');

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources`
--

CREATE TABLE `modx_media_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `class_key` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\Sources\\modFileMediaSource',
  `properties` mediumtext DEFAULT NULL,
  `is_stream` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'MODX\\Revolution\\Sources\\modFileMediaSource', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources_contexts`
--

CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources_elements`
--

CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `object_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modTemplateVar',
  `object` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `member` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_menus`
--

CREATE TABLE `modx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `menuindex` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('about', 'usernav', 'help', 'about_desc', '<i class=\"icon-question-circle icon\"></i>', 3, '', '', 'help', 'core'),
('access', 'usernav', '', '', '<i class=\"icon-user-lock icon\"></i>', 1, '', '', 'access_permissions', 'core'),
('acls', 'access', 'security/permission', 'acls_desc', '', 2, '', '', 'access_permissions', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon\"></i>', 2, '', '', 'settings', 'core'),
('components', 'topnav', '', '', '<i class=\"icon-cube icon\"></i>', 2, '', '', 'components', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 4, '', '', 'content_types', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 4, '', '', 'view_context', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 5, '', '', 'dashboards', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 3, '', '', 'actions', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 1, '', '', 'view_eventlog', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('flush_access', 'access', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n                            title: _(\'flush_access\')\n                            ,text: _(\'flush_access_confirm\')\n                            ,url: MODx.config.connector_url\n                            ,params: {\n                                action: \'security/access/flush\'\n                            }\n                            ,listeners: {\n                                \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n                                \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n                            }\n                        });', 'access_permissions', 'core'),
('flush_sessions', 'access', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n                            title: _(\'flush_sessions\')\n                            ,text: _(\'flush_sessions_confirm\')\n                            ,url: MODx.config.connector_url\n                            ,params: {\n                                action: \'security/flush\'\n                            }\n                            ,listeners: {\n                                \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n                            }\n                        });', 'flush_sessions', 'core'),
('form_customization', 'admin', 'security/forms', 'form_customization_desc', '', 1, '', '', 'customize_forms', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('language', 'admin', '', 'language_desc', '', 8, '', '', 'language', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('media', 'topnav', '', '', '<i class=\"icon-file-image-o icon\"></i>', 1, '', '', 'file_manager', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 6, '', '', 'namespaces', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 2, '', '', 'property_sets', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('refresh_site', 'site', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('remove_locks', 'site', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('reports', 'admin', '', 'reports_desc', '', 9, '', '', 'menu_reports', 'core'),
('resource_groups', 'access', 'security/resourcegroup', 'resource_groups_desc', '', 1, '', '', 'access_permissions', 'core'),
('site', 'topnav', '', '', '<i class=\"icon-file-text-o icon\"></i>', 0, '', '', 'menu_site', 'core'),
('site_schedule', 'site', 'resource/site_schedule', 'site_schedule_desc', '', 3, '', '', 'view_document', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('trash', 'site', 'resource/trash', 'trash_desc', '', 5, '', '', 'menu_trash', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\" title=\"{$username}\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 0, '', '', 'menu_user', 'core'),
('usernav', '', '', 'usernav_desc', '', 1, '', '', '', 'core'),
('users', 'access', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 0, '', '', 'mgr_log_view', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 2, '', '', 'view_sysinfo', 'core'),
('{$username}', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `modx_namespaces`
--

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text DEFAULT NULL,
  `assets_path` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('core', '{core_path}', '{assets_path}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_property_set`
--

CREATE TABLE `modx_property_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL DEFAULT '',
  `properties` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_messages`
--

CREATE TABLE `modx_register_messages` (
  `topic` int(10) UNSIGNED NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `accesses` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expires` int(20) NOT NULL DEFAULT 0,
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_queues`
--

CREATE TABLE `modx_register_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `options` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}'),
(2, 'resource_reload', 'a:1:{s:9:\"directory\";s:15:\"resource_reload\";}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_topics`
--

CREATE TABLE `modx_register_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `options` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2025-09-01 06:54:39', NULL, NULL),
(2, 2, '/resourcereload/', '2025-09-01 08:10:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_session`
--

CREATE TABLE `modx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int(20) UNSIGNED NOT NULL,
  `data` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('03ohrp8cj9t3c5cspm7u6btttp', 1762749872, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('0dfrn3350ogghpnbrfv09cmd64', 1764577438, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_2692d509e185ef4.27779426\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('0e4tgh53il75lhranguctejbqs', 1761887682, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('0h71bf0fnv02oeckv4k55kjtg9', 1761807685, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_26902e6607330a6.67188457\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:4:{i:0;s:23:\"6902fb735aeab9.32125023\";i:1;s:23:\"6902fd75b85605.97221720\";i:2;s:23:\"690300fcb65288.59535730\";i:3;s:23:\"69030d45b5afb0.68236995\";}'),
('1qcqbv66aov1k3ifjpd0ljqlab', 1761897865, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_269042ef376eeb4.74706663\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:3:{i:0;s:23:\"690430676b0380.16636352\";i:1;s:23:\"6904435f8db581.51161631\";i:2;s:23:\"690443650b09e1.01414876\";}booking|a:6:{s:15:\"pickup_location\";s:36:\"JKIA (NBO), Embakasi, Nairobi, Kenya\";s:16:\"dropoff_location\";s:5:\"Kenya\";s:11:\"pickup_date\";s:9:\"10/7/2025\";s:11:\"pickup_time\";s:6:\"1:00am\";s:12:\"dropoff_date\";s:10:\"10/29/2025\";s:12:\"dropoff_time\";s:6:\"2:30am\";}'),
('2i7qs46pg5f4d41ucvhokphdli', 1761797051, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_26902e3bb41e0b7.05453478\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('37gibbdu4968fia7i3soijqf77', 1761654593, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}manager_language|s:2:\"en\";login_failed|i:3;modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_26900b5c608fe97.48401547\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:1:{i:0;s:23:\"6900b74198bc70.27069355\";}'),
('3c1sbqja50e92lngafnjsut81p', 1764054762, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";login_failed|i:1;modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_269254f8f576350.01835973\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:3:{i:0;s:23:\"6925512e3e5a91.38932349\";i:1;s:23:\"6925533b29fec5.24106186\";i:2;s:23:\"692556ea308dc0.20055407\";}'),
('3ljdqu3cv2kscc6hsdthbqattd', 1762749931, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_269116dc58bf082.37802120\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:1:{i:0;s:23:\"69116deae320f5.49812197\";}'),
('3t3ab0uunpiet3o4m3a9du1kh3', 1764320301, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_26929642d849370.33820800\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('4b89vrj78ffed4m6g47bqdoh5p', 1762167882, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_2690822f71975f0.73843897\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}booking|a:6:{s:15:\"pickup_location\";s:96:\"Friedrich-Dessauer-Gymnasium, Frankfurt, Michael-Stumpf-Straße, Frankfurt am Main West, Germany\";s:16:\"dropoff_location\";s:21:\"Retiro, Madrid, Spain\";s:11:\"pickup_date\";s:10:\"11/19/2025\";s:11:\"pickup_time\";s:6:\"4:00am\";s:12:\"dropoff_date\";s:9:\"12/2/2025\";s:12:\"dropoff_time\";s:6:\"4:00am\";}newResourceTokens|a:6:{i:0;s:23:\"69087b8b59cef1.75766689\";i:1;s:23:\"69087bed978f21.63764222\";i:2;s:23:\"69087c3da21e00.00869837\";i:3;s:23:\"69087c58c56d78.46235656\";i:4;s:23:\"69087e8dc0a6e3.35475325\";i:5;s:23:\"69088c4a49bf71.03884588\";}'),
('4f32phsp0p0pa1p0i6t1cstph8', 1762102029, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}booking|a:6:{s:15:\"pickup_location\";s:7:\"Denmark\";s:16:\"dropoff_location\";s:7:\"Finland\";s:11:\"pickup_date\";s:10:\"10/27/2025\";s:11:\"pickup_time\";s:6:\"3:00am\";s:12:\"dropoff_date\";s:10:\"11/17/2025\";s:12:\"dropoff_time\";s:6:\"3:00am\";}manager_language|s:2:\"en\";modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_269078b0d80cc76.90896690\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('57arpr44b17vm6raih9igtdsoh', 1761797106, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_26902e3f22c61f9.82085085\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('6ernvkck2bg3e42dqdnd7ccf52', 1763723747, 'modx.user.contextTokens|a:0:{}'),
('75nbaff7qpui462df16dh3ftn4', 1762491659, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_269097285b9cf77.92998579\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:8:{i:0;s:23:\"690978bd58fdc7.00084669\";i:1;s:23:\"690982c9ec5b51.22894492\";i:2;s:23:\"6909890d2489b8.63686051\";i:3;s:23:\"69099a4bf29221.69027874\";i:4;s:23:\"69099b609b2e98.32031022\";i:5;s:23:\"69099fd8412778.73168648\";i:6;s:23:\"6909a075479345.56466802\";i:7;s:23:\"690d7d08e2eac0.54538632\";}'),
('82ga79ntf7lo23lr2bt7mck2ic', 1762749876, 'modx.user.contextTokens|a:0:{}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('8csq5u5c5jn8lvn3fkfq82f2dp', 1764320966, 'modx.user.contextTokens|a:0:{}'),
('8r0g512lo46jtqdlov60l0cq8q', 1761654223, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('9tt5nfir0t838c56n8je0o43qt', 1761797128, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}login_failed|i:1;modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_26902e408c575e3.05017319\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('a9k9stpmaedhvjea8ar1tvll03', 1762236064, 'modx.user.contextTokens|a:0:{}'),
('b7o7opospsj29e792gfom4pi3n', 1761797059, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_26902e3c338b734.87285934\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('bfffv87io8smdsvldf6uokf07p', 1762505185, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('bsa2fg1kq26qkt6qcdhp54np74', 1762167298, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('c9ale6gmsk2m6p81emhaoas6q1', 1763700782, 'modx.user.contextTokens|a:0:{}'),
('cmbbrko3j04qs0g1d1njhvut9u', 1764216997, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_26927d0a5818120.97651235\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('cpe6evoqe95fn4b9prmseicrv0', 1761797230, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_26902e46edd9d30.71462960\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('drjho2cbsupc0j8uod55bkgpd2', 1764316842, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('f3odn82m9bbob1iefn0tmnoi93', 1761850966, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_269039439e9e226.62846349\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:7:{i:0;s:23:\"690395482ab868.73760786\";i:1;s:23:\"690395718b2e80.97873033\";i:2;s:23:\"690396a5e8a8a8.80536246\";i:3;s:23:\"690396a9d98569.46684430\";i:4;s:23:\"690396ec07ffe2.79084364\";i:5;s:23:\"69039a0c8c4372.06093385\";i:6;s:23:\"69039cc359fa72.28183557\";}booking|a:6:{s:15:\"pickup_location\";s:28:\"Dubai - United Arab Emirates\";s:16:\"dropoff_location\";s:6:\"France\";s:11:\"pickup_date\";s:0:\"\";s:11:\"pickup_time\";s:7:\"12:30am\";s:12:\"dropoff_date\";s:10:\"10/15/2025\";s:12:\"dropoff_time\";s:1:\"5\";}'),
('ff4fogu0hukf13gt4sv43b84ch', 1762918691, 'modx.user.contextTokens|a:0:{}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('g353a8r8fj53jmgin1ac23dcka', 1762235924, 'modx.user.contextTokens|a:0:{}'),
('hs253o3kd8io9ri6svepdv8us7', 1763725859, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_2691feaf6dbe650.22080088\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:1:{i:0;s:23:\"69205222504235.94698559\";}'),
('hsmhb6o9g2qcbc0rus02hv69o5', 1764566107, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('iu9fn38csol779k58rh25egajh', 1761711791, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('khhg3ealinjfbsk8gjt6hd2apb', 1761797581, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}login_failed|i:3;modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_26902e5cd186690.98510869\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('nhal1e0s4sqg0304dl0mshgnfg', 1761797079, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}login_failed|i:1;modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_26902e3d79ceb29.59680636\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('puv6du67jed0gdqnafr0p4m9ps', 1761881834, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}login_failed|i:1;modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_269042eea8a7703.48947264\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('rpp054e9shcak8ptg2vg6gpal6', 1764216988, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('rt58bll8map4rpmabe6v9ic5lf', 1764154009, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_269267c6f2577c9.67765080\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:2:{i:0;s:23:\"69269387d314b2.76467806\";i:1;s:23:\"6926da99913096.53751426\";}'),
('s7pbfdhgojt22nnmqqh6v1jap5', 1762140911, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}login_failed|i:1;modx.mgr.user.token|s:52:\"modx68b540e6de8ad9.76783708_2690822ef7c5720.90638581\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('sd3fk28jhr15f4bnt5bocca13b', 1762848901, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('serus490aesk3lorau2bsdembs', 1763719629, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('sigf7bta4ou95tnha5g7nq5phr', 1762140911, 'modx.user.contextTokens|a:0:{}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('ucfupsipo516qv6lhbk4g8o39e', 1761887767, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `alias` varchar(191) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pub_date` int(20) NOT NULL DEFAULT 0,
  `unpub_date` int(20) NOT NULL DEFAULT 0,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isfolder` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `introtext` text DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `richtext` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `template` int(10) NOT NULL DEFAULT 0,
  `menuindex` int(10) NOT NULL DEFAULT 0,
  `searchable` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `cacheable` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `createdby` int(10) NOT NULL DEFAULT 0,
  `createdon` int(20) NOT NULL DEFAULT 0,
  `editedby` int(10) NOT NULL DEFAULT 0,
  `editedon` int(20) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `deletedon` int(20) NOT NULL DEFAULT 0,
  `deletedby` int(10) NOT NULL DEFAULT 0,
  `publishedon` int(20) NOT NULL DEFAULT 0,
  `publishedby` int(10) NOT NULL DEFAULT 0,
  `menutitle` varchar(255) NOT NULL DEFAULT '',
  `content_dispo` tinyint(1) NOT NULL DEFAULT 0,
  `hidemenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `class_key` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `uri` text DEFAULT NULL,
  `uri_override` tinyint(1) NOT NULL DEFAULT 0,
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_tree` tinyint(1) NOT NULL DEFAULT 1,
  `properties` mediumtext DEFAULT NULL,
  `alias_visible` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`, `alias_visible`) VALUES
(1, 'document', 'Home', 'Congratulations!', '', 'index', '', 1, 0, 0, 0, 0, '', '\r\n\r\n\r\n<div class=\"hero-wrap ftco-degree-bg\" style=\"background-image: url(\'assets/images/bg_1.jpg\');\" data-stellar-background-ratio=\"0.5\">\r\n	<div class=\"overlay\"></div>\r\n	<div class=\"container\">\r\n	  <div class=\"row no-gutters slider-text justify-content-start align-items-center justify-content-center\">\r\n		<div class=\"col-lg-8 ftco-animate\">\r\n		</div>\r\n	  </div>\r\n	</div>\r\n  </div>\r\n\r\n    <section class=\"ftco-section ftco-no-pt bg-light\">\r\n	  <div class=\"container\">\r\n		  <div class=\"row no-gutters\">\r\n			  <div class=\"col-md-12	featured-top\">\r\n				  <div class=\"row no-gutters\">\r\n						<div class=\"col-md-4 d-flex align-items-center\">\r\n							[[!SaveFormSession]]\r\n							<form action=\"[[~[[*id]]]]\" method=\"post\" class=\"request-form ftco-animate bg-primary\">\r\n							<h2>Reserve your Vehicle</h2>\r\n\r\n							<div class=\"form-group\">\r\n								<label class=\"label\">Pick-up Location</label>\r\n								<input type=\"text\" class=\"form-control\" name=\"pickup_location\" id=\"pickup_location\" placeholder=\"City, Airport, Station, etc\" required>\r\n							</div>\r\n\r\n							<div class=\"form-group\">\r\n								<label class=\"label\">Drop-off Location</label>\r\n								<input type=\"text\" class=\"form-control\" name=\"dropoff_location\" id=\"dropoff_location\" placeholder=\"City, Airport, Station, etc\" required>\r\n							</div>\r\n\r\n							<div class=\"d-flex\">\r\n								<div class=\"form-group mr-2\">\r\n								<label class=\"label\">Pick-up Date</label>\r\n								<input type=\"text\" class=\"form-control\" name=\"pickup_date\" id=\"book_pick_date\" placeholder=\"Date\" required>\r\n								</div>\r\n								<div class=\"form-group\">\r\n								<label class=\"label\">Pick-up Time</label>\r\n								<input type=\"text\" class=\"form-control\" name=\"time_pick\" id=\"time_pick\" placeholder=\"Time\">\r\n								</div>\r\n							</div>\r\n\r\n							<div class=\"d-flex\">\r\n								<div class=\"form-group mr-2\">\r\n								<label class=\"label\">Drop-off Date</label>\r\n								<input type=\"text\" class=\"form-control\" name=\"book_off_date\" id=\"book_off_date\" placeholder=\"Date\" required>\r\n								</div>\r\n								<div class=\"form-group\">\r\n								<label class=\"label\">Drop-off Time</label>\r\n								<input type=\"text\" class=\"form-control\" name=\"time_drop\" id=\"time_drop\" placeholder=\"Time\">\r\n								</div>\r\n							</div>\r\n\r\n							<div class=\"form-group\">\r\n								<button type=\"submit\" class=\"btn btn-secondary py-3 px-4\">Rent A Car Now</button>\r\n							</div>\r\n							</form>\r\n						</div>\r\n						<div class=\"col-md-8 d-flex align-items-center\">\r\n							<div class=\"services-wrap rounded-right w-100\">\r\n								<h3 class=\"heading-section mb-4\">Better Way to Rent Your Perfect Cars</h3>\r\n								<div class=\"row d-flex mb-4\">\r\n							<div class=\"col-md-4 d-flex align-self-stretch ftco-animate\">\r\n							  <div class=\"services w-100 text-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-route\"></span></div>\r\n								<div class=\"text w-100\">\r\n								  <h3 class=\"heading mb-2\">Choose Your Pickup Location</h3>\r\n							  </div>\r\n							  </div>      \r\n							</div>\r\n							<div class=\"col-md-4 d-flex align-self-stretch ftco-animate\">\r\n							  <div class=\"services w-100 text-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-handshake\"></span></div>\r\n								<div class=\"text w-100\">\r\n								  <h3 class=\"heading mb-2\">Select the Best Deal</h3>\r\n								</div>\r\n							  </div>      \r\n							</div>\r\n							<div class=\"col-md-4 d-flex align-self-stretch ftco-animate\">\r\n							  <div class=\"services w-100 text-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-rent\"></span></div>\r\n								<div class=\"text w-100\">\r\n								  <h3 class=\"heading mb-2\">Reserve Your Rental Car</h3>\r\n								</div>\r\n							  </div>      \r\n							</div>\r\n						  </div>\r\n						  <!-- <p><a href=\"#\" class=\"btn btn-primary py-3 px-4\">Reserve Your Perfect Car</a></p> -->\r\n							</div>\r\n						</div>\r\n					</div>\r\n			  </div>\r\n		</div>\r\n  	</section>\r\n\r\n<section class=\"ftco-section\">\r\n	<div class=\"container\">\r\n		<div class=\"row justify-content-center mb-4\">\r\n			<div class=\"col-md-12 text-center heading-section ftco-animate\">\r\n				<span class=\"subheading\">Experience Excellence</span>\r\n				<h2 class=\"mb-3\">Drive Platinum</h2>\r\n				<p class=\"lead\" style=\"font-size: 16px; margin-bottom:0; text-align:justify;\">\r\n					Discover the art of luxury travel with our exclusive fleet of premium vehicles and world-class chauffeur services — where sophistication meets performance. \r\n					Whether you\'re attending a high-profile event, corporate meeting, or special celebration, Drive Platinum ensures every journey is defined by comfort, elegance, and professionalism. \r\n					Enjoy personalized service, immaculate interiors, and attention to every detail — because you deserve nothing less than perfection on the road.\r\n				</p>\r\n			</div>\r\n		</div>\r\n\r\n		<div class=\"row\">\r\n			<div class=\"col-12\">\r\n				<img src=\"assets/images/platinum_home.jpg\" alt=\"Our Services\" style=\"width: 100%; height: auto; display: block;\">\r\n			</div>\r\n		</div>\r\n	</div>\r\n</section>\r\n\r\n\r\n  <section class=\"ftco-section ftco-no-pt bg-light\">\r\n	<div class=\"container\">\r\n	  <div class=\"row justify-content-center\">\r\n		<div class=\"col-md-12 heading-section text-center ftco-animate mb-3 mt-3\">\r\n		  <span class=\"subheading\">What we offer</span>\r\n		  <h2 class=\"mb-2\">Our Fleet</h2>\r\n		</div>\r\n	  </div>\r\n	  <div class=\"row\">\r\n		<div class=\"col-md-12\">\r\n		  <div class=\"carousel-car owl-carousel\">\r\n			<div class=\"item\">\r\n				<div class=\"car-wrap rounded ftco-animate\">\r\n					<div class=\"img rounded d-flex align-items-end\" style=\"background-image: url(assets/images/fleet/3.jpg);\">\r\n					</div>\r\n					<div class=\"text\">\r\n						<h2 class=\"mb-0\" style=\"color: #102c4e !important;\">Mini Cars</h2>\r\n						<div class=\"d-flex mb-3\">\r\n							<span class=\"cat\">Suzuki WagonR or Similar</span>\r\n							<p class=\"price ml-auto\">$ 45 <span>/day</span></p>\r\n						</div>\r\n						<p class=\"d-flex justify-content-center mb-0 d-block\"><a href=\"[[~4]]\" class=\"btn btn-primary py-2 mr-1\">Book now</a></p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"item\">\r\n				<div class=\"car-wrap rounded ftco-animate\">\r\n					<div class=\"img rounded d-flex align-items-end\" style=\"background-image: url(assets/images/fleet/1.jpg);\">\r\n					</div>\r\n					<div class=\"text\">\r\n						<h2 class=\"mb-0\" style=\"color: #102c4e !important;\">Compact Cars</h2>\r\n						<div class=\"d-flex mb-3\">\r\n							<span class=\"cat\">Toyota Vitz or Similar</span>\r\n							<p class=\"price ml-auto\">$ 55 <span>/day</span></p>\r\n						</div>\r\n                        <p class=\"d-flex justify-content-center mb-0 d-block\"><a href=\"[[~5]]\" class=\"btn btn-primary py-2 mr-1\">Book now</a></p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"item\">\r\n				<div class=\"car-wrap rounded ftco-animate\">\r\n					<div class=\"img rounded d-flex align-items-end\" style=\"background-image: url(assets/images/fleet/6.jpg);\">\r\n					</div>\r\n					<div class=\"text\">\r\n						<h2 class=\"mb-0\" style=\"color: #102c4e !important;\">Standard Cars</h2>\r\n						<div class=\"d-flex mb-3\">\r\n							<span class=\"cat\">Honda Grace or Similar</span>\r\n							<p class=\"price ml-auto\">$ 85 <span>/day</span></p>\r\n						</div>\r\n						<p class=\"d-flex justify-content-center mb-0 d-block\"><a href=\"[[~6]]\" class=\"btn btn-primary py-2 mr-1\">Book now</a></p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"item\">\r\n				<div class=\"car-wrap rounded ftco-animate\">\r\n					<div class=\"img rounded d-flex align-items-end\" style=\"background-image: url(assets/images/fleet/4.jpg);\">\r\n					</div>\r\n					<div class=\"text\">\r\n						<h2 class=\"mb-0\" style=\"color: #102c4e !important;\">Premium Cars</h2>\r\n						<div class=\"d-flex mb-3\">\r\n							<span class=\"cat\">Honda Civic or Similar</span>\r\n							<p class=\"price ml-auto\">$ 100 <span>/day</span></p>\r\n						</div>\r\n                        <p class=\"d-flex justify-content-center mb-0 d-block\"><a href=\"[[~7]]\" class=\"btn btn-primary py-2 mr-1\">Book now</a></p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n            <div class=\"item\">\r\n				<div class=\"car-wrap rounded ftco-animate\">\r\n					<div class=\"img rounded d-flex align-items-end\" style=\"background-image: url(assets/images/fleet/5.jpg);\">\r\n					</div>\r\n					<div class=\"text\">\r\n						<h2 class=\"mb-0\" style=\"color: #102c4e !important;\">Premium Cars</h2>\r\n						<div class=\"d-flex mb-3\">\r\n							<span class=\"cat\">Honda Civic or Similar</span>\r\n							<p class=\"price ml-auto\">$ 100 <span>/day</span></p>\r\n						</div>\r\n                        <p class=\"d-flex justify-content-center mb-0 d-block\"><a href=\"[[~8]]\" class=\"btn btn-primary py-2 mr-1\">Book now</a></p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n            <div class=\"item\">\r\n				<div class=\"car-wrap rounded ftco-animate\">\r\n					<div class=\"img rounded d-flex align-items-end\" style=\"background-image: url(assets/images/fleet/2.jpg);\">\r\n					</div>\r\n					<div class=\"text\">\r\n						<h2 class=\"mb-0\" style=\"color: #102c4e !important;\">Premium Cars</h2>\r\n						<div class=\"d-flex mb-3\">\r\n							<span class=\"cat\">Honda Civic or Similar</span>\r\n							<p class=\"price ml-auto\">$ 100 <span>/day</span></p>\r\n						</div>\r\n                        <p class=\"d-flex justify-content-center mb-0 d-block\"><a href=\"[[~9]]\" class=\"btn btn-primary py-2 mr-1\">Book now</a></p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		  </div>\r\n		</div>\r\n	  </div>\r\n	</div>\r\n  </section>\r\n\r\n	<section class=\"ftco-section ftco-about\">\r\n		  <div class=\"container\">\r\n			  <div class=\"row no-gutters\">\r\n						<div class=\"col-md-6 p-md-5 img img-2 d-flex justify-content-center align-items-center\" \r\n						style=\"background-image: url(assets/images/about.jpg); border: 3px solid #102c4e;\">\r\n				</div>\r\n   \r\n				  <div class=\"col-md-6 wrap-about ftco-animate\">\r\n					<div class=\"heading-section heading-section-white pl-md-5\">\r\n						<span class=\"subheading\">About us</span>\r\n					<h2 class=\"mb-4\">Welcome to Platinum Drive</h2>\r\n\r\n					<p style=\"text-align: justify;\">Welcome to Platinum Drive Rent A Car, your trusted partner for premium car rental services. We specialize in providing a seamless and luxurious travel experience with a fleet of well-maintained vehicles to suit every need. Whether you\'re looking for a stylish sedan for business trips, an SUV for family vacations, or a luxury car for special occasions, we have the perfect ride for you.</p>\r\n					<p style=\"text-align: justify;\">At Platinum Drive, we prioritize customer satisfaction with flexible rental plans, competitive pricing, and 24/7 support. Our commitment to quality ensures that every vehicle in our fleet is thoroughly inspected, clean, and ready to deliver an exceptional driving experience.</p>\r\n					<p style=\"text-align: justify;\">With easy booking options and a dedicated team, we make renting a car hassle-free and enjoyable. Choose Platinum Drive Rent A Car and travel in comfort, style, and reliability.</p>\r\n					<!-- <p><a href=\"#\" class=\"btn btn-primary py-3 px-4\">Search Vehicle</a></p> -->\r\n					</div>\r\n				  </div>\r\n			  </div>\r\n		  </div>\r\n	</section>\r\n	\r\n	<!-- Our Premium Services section starts -->\r\n	<section class=\"ftco-section\" style=\"background: #ffffff;\">\r\n		<div class=\"container\">\r\n			<div class=\"row justify-content-center mb-5\">\r\n				<div class=\"col-md-8 text-center heading-section ftco-animate\">\r\n					<span class=\"subheading\" style=\"color: #d4af37; font-weight: 600; letter-spacing: 2px;\">Services</span>\r\n					<h2 class=\"mb-3\" style=\"color: #0a1628; font-weight: 700; text-transform: uppercase;\">Our Exclusive Services</h2>\r\n					<p style=\"color: #0a1628; font-size: 1.05em; line-height: 1.8; max-width: 700px; margin: 0 auto;\">\r\n						At Platinum Drive, we redefine luxury transportation. From private sightseeing tours to seamless airport transfers, our services are tailored for comfort, style, and absolute peace of mind.\r\n					</p>\r\n				</div>\r\n			</div>\r\n\r\n			<!-- Services Grid -->\r\n			<div class=\"row\">\r\n				<!-- Service 1 -->\r\n				<div class=\"col-md-6 col-lg-3\">\r\n					<div class=\"service-card text-center\" style=\"background: #102c4e; padding: 40px; border-radius: 20px; border: 2px solid rgba(212, 175, 55, 0.3); box-shadow: 0 10px 40px rgba(212,175,55,0.1); transition: all 0.4s ease; height: 92%;\">\r\n						<div class=\"service-icon\" style=\"font-size: 3em; color: #d4af37; width: 90px; height: 90px; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; border-radius: 50%; border: 2px solid rgba(212,175,55,0.4); box-shadow: 0 6px 20px rgba(212,175,55,0.15);\">\r\n							<i class=\"fas fa-map-marked-alt\"></i>\r\n						</div>\r\n						<h3 class=\"heading mb-3\" style=\"color: #d4af37; text-transform: uppercase; letter-spacing: 1px; font-size: 20px;\">Sightseeing Tours</h3>\r\n						<p style=\"color: #f0f0f0; line-height: 1.6; font-size: 1.05em; text-align:justify;\">\r\n							Explore the city in unmatched comfort and style. Personalized routes, elite vehicles, and professional chauffeurs make every tour unforgettable.\r\n						</p>\r\n					</div>\r\n				</div>\r\n\r\n				<!-- Service 2 -->\r\n				<div class=\"col-md-6 col-lg-3\">\r\n					<div class=\"service-card text-center\" style=\"background: #102c4e; padding: 40px; border-radius: 20px; border: 2px solid rgba(212, 175, 55, 0.3); box-shadow: 0 10px 40px rgba(212,175,55,0.1); transition: all 0.4s ease; height: 92%;\">\r\n						<div class=\"service-icon\" style=\"font-size: 3em; color: #d4af37; width: 90px; height: 90px; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; border-radius: 50%; border: 2px solid rgba(212,175,55,0.4); box-shadow: 0 6px 20px rgba(212,175,55,0.15);\">\r\n							<i class=\"fas fa-city\"></i>\r\n						</div>\r\n						<h3 class=\"heading mb-3\" style=\"color: #d4af37; text-transform: uppercase; letter-spacing: 1px; font-size: 23px;\">City Transfer</h3>\r\n						<p style=\"color: #f0f0f0; line-height: 1.6; font-size: 1.05em; text-align:justify;\">\r\n							Effortless and stylish travel within the city. Our professional drivers and premium fleet ensure stress-free and punctual transfers.\r\n						</p>\r\n					</div>\r\n				</div>\r\n\r\n				<!-- Service 3 -->\r\n				<div class=\"col-md-6 col-lg-3\">\r\n					<div class=\"service-card text-center\" style=\"background: #102c4e; padding: 40px; border-radius: 20px; border: 2px solid rgba(212, 175, 55, 0.3); box-shadow: 0 10px 40px rgba(212,175,55,0.1); transition: all 0.4s ease; height: 92%;\">\r\n						<div class=\"service-icon\" style=\"font-size: 3em; color: #d4af37; width: 90px; height: 90px; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; border-radius: 50%; border: 2px solid rgba(212,175,55,0.4); box-shadow: 0 6px 20px rgba(212,175,55,0.15);\">\r\n							<i class=\"fas fa-plane\"></i>\r\n						</div>\r\n						<h3 class=\"heading mb-3\" style=\"color: #d4af37; text-transform: uppercase; letter-spacing: 1px; font-size: 20px;\">Airport Transfer</h3>\r\n						<p style=\"color: #f0f0f0; line-height: 1.6; font-size: 1.05em; text-align:justify;\">\r\n							Seamless airport pickups and drop-offs. Luxury vehicles, punctual service, and professional drivers ensure a smooth start or end to your journey.\r\n						</p>\r\n					</div>\r\n				</div>\r\n\r\n				<!-- Service 4 -->\r\n				<div class=\"col-md-6 col-lg-3\">\r\n					<div class=\"service-card text-center\" style=\"background: #102c4e; padding: 40px; border-radius: 20px; border: 2px solid rgba(212, 175, 55, 0.3); box-shadow: 0 10px 40px rgba(212,175,55,0.1); transition: all 0.4s ease; height: 92%;\">\r\n						<div class=\"service-icon\" style=\"font-size: 3em; color: #d4af37; width: 90px; height: 90px; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; border-radius: 50%; border: 2px solid rgba(212,175,55,0.4); box-shadow: 0 6px 20px rgba(212,175,55,0.15);\">\r\n							<i class=\"fas fa-road\"></i>\r\n						</div>\r\n						<h3 class=\"heading mb-3\" style=\"color: #d4af37; text-transform: uppercase; letter-spacing: 1px; font-size: 20px;\">Drive Experience</h3>\r\n						<p style=\"color: #f0f0f0; line-height: 1.6; font-size: 1.05em; text-align:justify;\">\r\n							Comprehensive travel solutions for every journey. From city tours to special events, enjoy unrivaled luxury, comfort, and peace of mind with Platinum Drive.\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</section>\r\n	<!-- Our Premium Services section ends -->\r\n\r\n\r\n	<!-- Counter Section starts -->\r\n	<section class=\"ftco-counter ftco-section img\" id=\"section-counter\" style=\"background: #102c4e;\">\r\n		<div class=\"overlay\"></div>\r\n		<div class=\"container\">\r\n			<div class=\"row justify-content-center\">\r\n			\r\n			<!-- Luxury Fleets -->\r\n			<div class=\"col-md-6 col-lg-3 counter-wrap text-center mb-4\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n				<div class=\"counter-box p-3 shadow-sm rounded-2xl hover:shadow-lg transition duration-300\">\r\n				<strong class=\"number d-block fs-2 fw-bold\" data-number=\"80\">0</strong>\r\n				<span class=\"details d-block\">Luxury <br>Fleets</span>\r\n				</div>\r\n			</div>\r\n\r\n			<!-- Professional Chauffeurs -->\r\n			<div class=\"col-md-6 col-lg-3 counter-wrap text-center mb-4\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n				<div class=\"counter-box p-3 shadow-sm rounded-2xl hover:shadow-lg transition duration-300\">\r\n				<strong class=\"number d-block fs-2 fw-bold\" data-number=\"90\">0</strong>\r\n				<span class=\"details d-block\">Professional <br>Chauffeurs</span>\r\n				</div>\r\n			</div>\r\n\r\n			<!-- Happy Customers -->\r\n			<div class=\"col-md-6 col-lg-3 counter-wrap text-center mb-4\" data-aos=\"fade-up\" data-aos-delay=\"300\">\r\n				<div class=\"counter-box p-3 shadow-sm rounded-2xl hover:shadow-lg transition duration-300\">\r\n				<strong class=\"number d-block fs-2 fw-bold\" data-number=\"180\">0</strong>\r\n				<span class=\"details d-block\">Happy <br>Customers</span>\r\n				</div>\r\n			</div>\r\n\r\n			<!-- Years of Experience (New) -->\r\n			<div class=\"col-md-6 col-lg-3 counter-wrap text-center mb-4\" data-aos=\"fade-up\" data-aos-delay=\"400\">\r\n				<div class=\"counter-box p-3 shadow-sm rounded-2xl hover:shadow-lg transition duration-300\">\r\n				<strong class=\"number d-block fs-2 fw-bold\" data-number=\"15\">0</strong>\r\n				<span class=\"details d-block\">Years of <br>Experience</span>\r\n				</div>\r\n			</div>\r\n			</div>\r\n		</div>\r\n	</section>\r\n\r\n	<script>\r\n		// Initialize AOS\r\n		AOS.init({\r\n			duration: 1000,\r\n			once: true\r\n		});\r\n\r\n		// Counter Animation\r\n		const counters = document.querySelectorAll(\'.number\');\r\n		const options = { threshold: 0.6 };\r\n		const startCount = (counter) => {\r\n			const endValue = +counter.getAttribute(\'data-number\');\r\n			const countUp = new CountUp(counter, endValue, { duration: 2 });\r\n			if (!countUp.error) countUp.start();\r\n		};\r\n\r\n		const observer = new IntersectionObserver((entries, obs) => {\r\n			entries.forEach(entry => {\r\n			if (entry.isIntersecting) {\r\n				startCount(entry.target);\r\n				obs.unobserve(entry.target);\r\n			}\r\n			});\r\n		}, options);\r\n\r\n		counters.forEach(counter => observer.observe(counter));\r\n	</script>\r\n	<!-- Counter Section ends -->\r\n\r\n	<!-- testimony-section starts -->\r\n	<section class=\"ftco-section testimony-section bg-light py-5\">\r\n	<div class=\"container\">\r\n		<div class=\"row justify-content-center mb-3\">\r\n		<div class=\"col-md-8 text-center heading-section\">\r\n			<span class=\"subheading text-primary\">Testimonials</span>\r\n			<h2 class=\"mb-2 fw-bold\">What Our Clients Say</h2>\r\n			<p class=\"text-muted\">Hear from our happy travelers about their Platinum Drive experiences.</p>\r\n		</div>\r\n		</div>\r\n\r\n		<div class=\"row\">\r\n		<div class=\"col-md-12\">\r\n			<div class=\"carousel-testimony owl-carousel\">\r\n				<!-- Testimonial Item -->\r\n				<div class=\"item\">\r\n					<div class=\"testimony-wrap rounded shadow-sm bg-white text-center p-4 transition-all hover:shadow-lg hover:-translate-y-1\">\r\n					<div class=\"user-img mx-auto mb-3 rounded-circle border border-3\" \r\n						style=\"background-image: url(assets/images/reviews/1_profile.jpg); width: 90px; height: 90px; background-size: cover; background-position: center;\">\r\n					</div>\r\n					<div class=\"text\">\r\n						<div class=\"mb-2 text-warning\">\r\n						<i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i>\r\n						</div>\r\n						<p class=\"fst-italic mb-3\" style=\"text-align: justify;\">\"I had an incredible tour with Platinum Drive! The booking process was smooth, and the entire experience exceeded expectations!\"</p>\r\n						<p class=\"name fw-bold mb-0\">Sarah Thompson</p>\r\n					</div>\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"item\">\r\n					<div class=\"testimony-wrap rounded shadow-sm bg-white text-center p-4 transition-all hover:shadow-lg hover:-translate-y-1\">\r\n						<div class=\"user-img mx-auto mb-3 rounded-circle border border-3 border-primary\" \r\n							style=\"background-image: url(assets/images/reviews/2_profile.jpg); width: 90px; height: 90px; background-size: cover; background-position: center;\">\r\n						</div>\r\n						<div class=\"text\">\r\n						<div class=\"mb-2 text-warning\">\r\n							<i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star-half-alt\"></i>\r\n						</div>\r\n						<p class=\"fst-italic mb-3\" style=\"text-align: justify;\">\"My recent trip was amazing, thanks to Platinum Drive! Everything was organized perfectly, from booking to the journey.\"</p>\r\n						<p class=\"name fw-bold mb-0\">Isabella Wilson</p>\r\n						</div>\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"item\">\r\n					<div class=\"testimony-wrap rounded shadow-sm bg-white text-center p-4 transition-all hover:shadow-lg hover:-translate-y-1\">\r\n					<div class=\"user-img mx-auto mb-3 rounded-circle border border-3 border-primary\" \r\n						style=\"background-image: url(assets/images/reviews/3_profile.jpg); width: 90px; height: 90px; background-size: cover; background-position: center;\">\r\n					</div>\r\n					<div class=\"text\">\r\n						<div class=\"mb-2 text-warning\">\r\n						<i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i>\r\n						</div>\r\n						<p class=\"fst-italic mb-3\" style=\"text-align: justify;\">\"Platinum Drive made my trip unforgettable! Booking was effortless, and the itinerary was perfectly crafted to my preferences.\"</p>\r\n						<p class=\"name fw-bold mb-0\">Emily Clark</p>\r\n					</div>\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"item\">\r\n					<div class=\"testimony-wrap rounded shadow-sm bg-white text-center p-4 transition-all hover:shadow-lg hover:-translate-y-1\">\r\n					<div class=\"user-img mx-auto mb-3 rounded-circle border border-3 border-primary\" \r\n						style=\"background-image: url(assets/images/reviews/4_profile.jpg); width: 90px; height: 90px; background-size: cover; background-position: center;\">\r\n					</div>\r\n					<div class=\"text\">\r\n						<div class=\"mb-2 text-warning\">\r\n						<i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i>\r\n						</div>\r\n						<p class=\"fst-italic mb-3\" style=\"text-align: justify;\">\"I had the pleasure of traveling with Platinum Drive, and it was spectacular. Everything was planned to perfection — truly premium service!\"</p>\r\n						<p class=\"name fw-bold mb-0\">Michael Lee</p>\r\n					</div>\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"item\">\r\n					<div class=\"testimony-wrap rounded shadow-sm bg-white text-center p-4 transition-all hover:shadow-lg hover:-translate-y-1\">\r\n					<div class=\"user-img mx-auto mb-3 rounded-circle border border-3 border-primary\" \r\n						style=\"background-image: url(assets/images/reviews/5_profile.jpg); width: 90px; height: 90px; background-size: cover; background-position: center;\">\r\n					</div>\r\n					<div class=\"text\">\r\n						<div class=\"mb-2 text-warning\">\r\n						<i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i>\r\n						</div>\r\n						<p class=\"fst-italic mb-3\" style=\"text-align: justify;\">\"An amazing experience with Platinum Drive! The tour was seamless from start to finish. Their website made booking effortless.\"</p>\r\n						<p class=\"name fw-bold mb-0\">Olivia Harris</p>\r\n					</div>\r\n				</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n	</div>\r\n	</section>\r\n\r\n	<script>\r\n		$(document).ready(function(){\r\n			$(\'.carousel-testimony\').owlCarousel({\r\n				center: true,\r\n				loop: true,\r\n				items: 3,\r\n				margin: 30,\r\n				autoplay: true,\r\n				autoplayTimeout: 4000,\r\n				smartSpeed: 900,\r\n				responsive: {\r\n					0: { items: 1 },\r\n					768: { items: 3 },\r\n					1200: { items: 3 }\r\n				}\r\n			});\r\n		});\r\n	</script>\r\n	<!-- testimony-section ends -->\r\n\r\n	<!-- blogs-section starts -->\r\n	<section class=\"ftco-section\">\r\n		<div class=\"container\">\r\n			<div class=\"row justify-content-center mb-3\">\r\n				<div class=\"col-md-7 heading-section text-center ftco-animate\">\r\n					<span class=\"subheading\">Blog</span>\r\n					<h2>Recent Blogs</h2>\r\n				</div>\r\n			</div>\r\n			<div class=\"row d-flex\">\r\n				<div class=\"col-md-4 d-flex ftco-animate\">\r\n					<div class=\"blog-entry justify-content-end\">\r\n					<a href=\"#\" class=\"block-20\" style=\"background-image: url(\'assets/images/blogs/4.png\');\"></a>\r\n					<div class=\"text pt-2\">\r\n						<div class=\"meta mb-1\">\r\n						<div><a href=\"#\">Jan. 29, 2025</a></div>    \r\n						<div><a href=\"#\" class=\"meta-chat\"><span class=\"icon-chat\"></span> 8</a></div>\r\n						</div>\r\n						<h3 class=\"heading mt-0\"><a href=\"#\">Top 5 Scenic Routes to Explore in Sri Lanka</a></h3>\r\n						<p><a href=\"[[~12]]\" class=\"btn btn-primary\">Read more</a></p>\r\n					</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md-4 d-flex ftco-animate\">\r\n					<div class=\"blog-entry justify-content-end\">\r\n					<a href=\"#\" class=\"block-20\" style=\"background-image: url(\'assets/images/blogs/5.webp\');\">\r\n					</a>\r\n					<div class=\"text pt-2\">\r\n						<div class=\"meta mb-1\">\r\n						<div><a href=\"#\">Feb. 19, 2025</a></div>\r\n						<div><a href=\"#\" class=\"meta-chat\"><span class=\"icon-chat\"></span> 3</a></div>\r\n						</div>\r\n						<h3 class=\"heading mt-0\"><a href=\"#\">Hidden Gems: Exploring Sri Lanka\'s Untouched Villages</a></h3>\r\n						<p><a href=\"[[~11]]\" class=\"btn btn-primary\">Read more</a></p>\r\n					</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md-4 d-flex ftco-animate\">\r\n					<div class=\"blog-entry\">\r\n						<a href=\"#\" class=\"block-20\" style=\"background-image: url(\'assets/images/blogs/6.jpg\');\">\r\n						</a>\r\n						<div class=\"text pt-2\">\r\n							<div class=\"meta mb-1\">\r\n							<div><a href=\"#\">Mar. 22, 2025</a></div>\r\n							<div><a href=\"#\" class=\"meta-chat\"><span class=\"icon-chat\"></span> 12</a></div>\r\n							</div>\r\n							<h3 class=\"heading mt-0\"><a href=\"#\">Beaches vs. Mountains: Best Sri Lanka Destinations for Every Traveler</a></h3>\r\n							<p><a href=\"[[~10]]\" class=\"btn btn-primary\">Read more</a></p>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</section>\r\n	<!-- blogs-section ends -->\r\n\r\n\r\n\r\n<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css\">\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/countup.js/2.0.7/countUp.min.js\"></script>\r\n<script src=\"https://kit.fontawesome.com/a2e0e9a64d.js\" crossorigin=\"anonymous\"></script>\r\n\r\n', 1, 2, 0, 1, 1, 1, 1756709107, 2, 1762237184, 0, 0, 0, 0, 0, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(2, 'document', 'fleet', '', '', 'fleet', '', 1, 0, 0, 0, 0, '', '<section class=\"hero-wrap hero-wrap-2 js-fullheight\" style=\"background-image: url(\'assets/images/bg_3.jpg\');\" data-stellar-background-ratio=\"0.5\">\r\n  <div class=\"overlay\"></div>\r\n  <div class=\"container\">\r\n    <div class=\"row no-gutters slider-text js-fullheight align-items-end justify-content-start\">\r\n      <div class=\"col-md-9 ftco-animate pb-5\">\r\n        <p class=\"breadcrumbs\">\r\n          <span class=\"mr-2\"><a href=\"[[~1]]\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span>\r\n          <span>Cars <i class=\"ion-ios-arrow-forward\"></i></span>\r\n        </p>\r\n        <h1 class=\"mb-3 bread\">Choose Your Car</h1>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</section>\r\n\r\n<section class=\"ftco-section bg-light\">\r\n  <div class=\"container\">\r\n    <div class=\"row\">\r\n      [[!showVehicles]]\r\n    </div>\r\n  </div>\r\n</section>\r\n', 1, 2, 1, 1, 1, 1, 1756714223, 2, 1761844977, 0, 0, 0, 1756714200, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(3, 'document', 'contact_us', '', '', 'contact-us', '', 1, 0, 0, 0, 0, '', '\r\n<section class=\"hero-wrap hero-wrap-2 js-fullheight\" style=\"background-image: url(\'assets/images/bg_3.jpg\');\" data-stellar-background-ratio=\"0.5\">\r\n	<div class=\"overlay\"></div>\r\n	<div class=\"container\">\r\n		<div class=\"row no-gutters slider-text js-fullheight align-items-end justify-content-start\">\r\n		<div class=\"col-md-9 ftco-animate pb-5\">\r\n			<p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"[[~1]]\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span> <span>Contact <i class=\"ion-ios-arrow-forward\"></i></span></p>\r\n			<h1 class=\"mb-3 bread\">Contact Us</h1>\r\n		</div>\r\n		</div>\r\n	</div>\r\n</section>\r\n\r\n<style>\r\n  .contact-bg {\r\n    background: url(\'assets/images/contact-bg.png\') center center / cover no-repeat;\r\n  }\r\n</style>\r\n\r\n<section class=\"ftco-section contact-section contact-bg\">\r\n  <div class=\"container\">\r\n    <div class=\"row d-flex contact-info\">\r\n      <div class=\"col-md-5 col-lg-4\">\r\n        <div class=\"row mb-5\">\r\n          <div class=\"col-md-12\">\r\n            <div class=\"border w-100 p-3 rounded mb-2 d-flex bg-white\">\r\n              <div class=\"icon mr-3\">\r\n                <span class=\"icon-mobile-phone\"></span>\r\n              </div>\r\n              <p><span>Phone:</span> <a href=\"tel:+94768200099\">+94 76 820 0099</a></p>\r\n            </div>\r\n          </div>\r\n          <div class=\"col-md-12\">\r\n            <div class=\"border w-100 p-3 rounded mb-2 d-flex bg-white\">\r\n              <div class=\"icon mr-3\">\r\n                <span class=\"icon-envelope-o\"></span>\r\n              </div>\r\n              <p><span>Email:</span> <a href=\"mailto:info@platinumdrive.lk\">info@platinumdrive.lk</a></p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n\r\n      <div class=\"col-md-7 col-lg-8 block-9\">\r\n		 <!-- Success message box -->\r\n        <div id=\"success-message\" class=\"alert alert-success mt-3\" style=\"display:none;\">\r\n          âœ… Your message has been sent successfully!\r\n        </div>\r\n\r\n        <form id=\"contact-form\" action=\"https://formspree.io/f/xpwyrpej\" method=\"POST\" class=\"bg-light px-3 py-3 contact-form\">\r\n          <h3>Connect With Us</h3>\r\n\r\n          <div class=\"row\">\r\n            <div class=\"col-md-6 form-group\">\r\n              <input type=\"text\" name=\"name\" class=\"form-control\" placeholder=\"Your Name\" required>\r\n            </div>\r\n            <div class=\"col-md-6 form-group\">\r\n              <input type=\"email\" name=\"email\" class=\"form-control\" placeholder=\"Your Email\" required>\r\n            </div>\r\n          </div>\r\n\r\n          <div class=\"row\">\r\n            <div class=\"col-md-6 form-group\">\r\n              <input type=\"text\" name=\"subject\" class=\"form-control\" placeholder=\"Subject\" required>\r\n            </div>\r\n            <div class=\"col-md-6 form-group\">\r\n              <input type=\"text\" name=\"phone\" class=\"form-control\" placeholder=\"Phone\" required>\r\n            </div>\r\n          </div>\r\n\r\n          <div class=\"form-group\">\r\n            <textarea name=\"message\" cols=\"30\" rows=\"7\" class=\"form-control\" placeholder=\"Message\" required></textarea>\r\n          </div>\r\n\r\n          <div class=\"form-group\">\r\n            <input type=\"submit\" value=\"Send Message\" class=\"btn btn-primary py-3 px-5\">\r\n          </div>\r\n        </form>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</section>\r\n\r\n<section class=\"ftco-section contact-section\" style=\"padding:0; overflow:hidden;\">\r\n	<div class=\"container-fluid\" style=\"margin:0; padding:0;\">\r\n			<div class=\"row justify-content-center\">\r\n			<div class=\"col-md-12\">\r\n				<div class=\"bg-white\">\r\n					<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3958.8489877559136!2d79.8694241!3d7.1434549999999986!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2f1c5f33a01bf%3A0xbf605eaf222e328a!2sPlatinum%20Drive%20Rent%20A%20Car!5e0!3m2!1sen!2slk!4v1756716133695!5m2!1sen!2slk\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\">\r\n					</iframe>\r\n				</div>\r\n			</div> \r\n		</div> \r\n	</div>\r\n</section>\r\n\r\n<script>\r\n	document.getElementById(\'contact-form\').addEventListener(\'submit\', async function(e) {\r\n		e.preventDefault(); \r\n		const form = e.target;\r\n\r\n		const formData = new FormData(form);\r\n		const action = form.action;\r\n\r\n		try {\r\n			const response = await fetch(action, {\r\n			method: \'POST\',\r\n			body: formData,\r\n			headers: { \'Accept\': \'application/json\' }\r\n			});\r\n\r\n			if (response.ok) {\r\n			form.reset(); // clear form\r\n			document.getElementById(\'success-message\').style.display = \'block\';\r\n			setTimeout(() => {\r\n				location.reload(); // reload after 3 seconds\r\n			}, 2000);\r\n			} else {\r\n			alert(\'Oops! Something went wrong. Please try again.\');\r\n			}\r\n		} catch (error) {\r\n			alert(\'Error submitting the form. Please check your internet connection.\');\r\n		}\r\n	});\r\n</script>', 1, 2, 2, 1, 1, 1, 1756714388, 2, 1762233290, 0, 0, 0, 1756714440, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(4, 'document', 'car_1', '', '', 'car-1', '', 1, 0, 0, 0, 0, '', '<?php\r\ninclude_once MODX_BASE_PATH . \'assets/includes/db_connect.php\';\r\n\r\n// Get the car ID from URL\r\n$id = isset($_GET[\'id\']) ? intval($_GET[\'id\']) : 0;\r\n\r\n$seats = 4;\r\n$luggages = 2;\r\n\r\ntry {\r\n    $stmt = $conn->prepare(\"SELECT no_of_seats, luggages FROM vehicles WHERE id = ?\");\r\n    $stmt->execute([$id]);\r\n    $car = $stmt->fetch(PDO::FETCH_ASSOC);\r\n\r\n    if ($car) {\r\n        $seats = $car[\'no_of_seats\'];\r\n        $luggages = $car[\'luggages\'];\r\n    }\r\n} catch (PDOException $e) {\r\n    echo \"<p>?? Error loading car details: \" . htmlspecialchars($e->getMessage()) . \"</p>\";\r\n}\r\n?>\r\n\r\n<!-- Keep all your existing HTML below this line -->\r\n<section class=\"hero-wrap hero-wrap-2 js-fullheight\" style=\"background-image: url(\'assets/images/bg_3.jpg\');\" data-stellar-background-ratio=\"0.5\">\r\n	<div class=\"overlay\"></div>\r\n	<div class=\"container\">\r\n		<div class=\"row no-gutters slider-text js-fullheight align-items-end justify-content-start\">\r\n			<div class=\"col-md-9 ftco-animate pb-5\">\r\n				<p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"[[~1]]\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span> <span>Car Details <i class=\"ion-ios-arrow-forward\"></i></span></p>\r\n				<h1 class=\"mb-3 bread\" style=\"font-size: large;\">Car Details</h1>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</section>\r\n\r\n<section class=\"ftco-section ftco-car-details\">\r\n	<div class=\"container\">\r\n		<div class=\"row justify-content-center\">\r\n			<div class=\"col-md-12\">\r\n				<div class=\"car-details\">\r\n					<div class=\"text text-center\">\r\n						<h2>Mini Cars</h2>\r\n						<span class=\"subheading\">Suzuki WagonR or Similar</span>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n\r\n		<!-- Dynamic Seats and Luggage start here -->\r\n		<div class=\"row\">\r\n			<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n				<div class=\"media block-6 services\">\r\n					<div class=\"media-body py-md-4\">\r\n						<div class=\"d-flex mb-3 align-items-center\">\r\n							<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-car-seat\"></span></div>\r\n							<div class=\"text\">\r\n								<h3 class=\"heading mb-0 pl-3\">\r\n									Seats\r\n									<span><?php echo htmlspecialchars($seats); ?> Adults</span>\r\n								</h3>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n\r\n			<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n				<div class=\"media block-6 services\">\r\n					<div class=\"media-body py-md-4\">\r\n						<div class=\"d-flex mb-3 align-items-center\">\r\n							<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-backpack\"></span></div>\r\n							<div class=\"text\">\r\n								<h3 class=\"heading mb-0 pl-3\">\r\n									Luggage\r\n									<span><?php echo htmlspecialchars($luggages); ?> Bags</span>\r\n								</h3>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n\r\n			<!-- Keep your other static details (Transmission, Fuel, etc.) -->\r\n			<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n				<div class=\"media block-6 services\">\r\n					<div class=\"media-body py-md-4\">\r\n						<div class=\"d-flex mb-3 align-items-center\">\r\n							<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-pistons\"></span></div>\r\n							<div class=\"text\">\r\n								<h3 class=\"heading mb-0 pl-3\">\r\n									Transmission\r\n									<span>Automatic</span>\r\n								</h3>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n\r\n			<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n				<div class=\"media block-6 services\">\r\n					<div class=\"media-body py-md-4\">\r\n						<div class=\"d-flex mb-3 align-items-center\">\r\n							<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-diesel\"></span></div>\r\n							<div class=\"text\">\r\n								<h3 class=\"heading mb-0 pl-3\">\r\n									Fuel\r\n									<span>Petrol</span>\r\n								</h3>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n\r\n		<!-- Rest of your features, tabs, and booking form remain unchanged -->\r\n	</div>\r\n</section>\r\n', 1, 2, 3, 1, 1, 1, 1756714427, 2, 1761715273, 0, 0, 0, 1756714380, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1);
INSERT INTO `modx_site_content` (`id`, `type`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`, `alias_visible`) VALUES
(5, 'document', 'car_2', '', '', 'car-2', '', 1, 0, 0, 0, 0, '', '\r\n    \r\n    <section class=\"hero-wrap hero-wrap-2 js-fullheight\" style=\"background-image: url(\'assets/images/bg_3.jpg\');\" data-stellar-background-ratio=\"0.5\">\r\n		<div class=\"overlay\"></div>\r\n		<div class=\"container\">\r\n		  <div class=\"row no-gutters slider-text js-fullheight align-items-end justify-content-start\">\r\n			<div class=\"col-md-9 ftco-animate pb-5\">\r\n				<p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"[[~1]]\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span> <span>Car Details <i class=\"ion-ios-arrow-forward\"></i></span></p>\r\n			  <h1 class=\"mb-3 bread\" style=\"font-size: large;\">Car Details</h1>\r\n			</div>\r\n		  </div>\r\n		</div>\r\n	  </section>\r\n		  \r\n  \r\n		  <section class=\"ftco-section ftco-car-details\">\r\n		<div class=\"container\">\r\n			<div class=\"row justify-content-center\">\r\n				<div class=\"col-md-12\">\r\n					<div class=\"car-details\">\r\n						<!-- <div class=\"img rounded\" style=\"background-image: url(assets/images/bg_1.jpg);\"></div> -->\r\n						<div class=\"text text-center\">\r\n							<h2>Compact Cars</h2>\r\n							<span class=\"subheading\">Toyota Vitz or Similar</span>\r\n							\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-pistons\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Transmission\r\n										<span>Automatic</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-car-seat\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Seats\r\n										<span>4 Adults</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-backpack\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Luggage\r\n										<span>2 Bags</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-diesel\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Fuel\r\n										<span>Petrol</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			\r\n			<div class=\"row\">\r\n				<div class=\"col-md-12 pills\">\r\n						  <div class=\"bd-example bd-example-tabs\">\r\n							  <div class=\"d-flex justify-content-center\">\r\n								<ul class=\"nav nav-pills mb-3\" id=\"pills-tab\" role=\"tablist\">\r\n  \r\n								  <li class=\"nav-item\">\r\n									<a class=\"nav-link active\" id=\"pills-description-tab\" data-toggle=\"pill\" href=\"#pills-description\" role=\"tab\" aria-controls=\"pills-description\" aria-expanded=\"true\">Features</a>\r\n								  </li>\r\n								  <li class=\"nav-item\">\r\n									<a class=\"nav-link\" id=\"pills-manufacturer-tab\" data-toggle=\"pill\" href=\"#pills-manufacturer\" role=\"tab\" aria-controls=\"pills-manufacturer\" aria-expanded=\"true\">Description</a>\r\n								  </li>\r\n							\r\n								</ul>\r\n							  </div>\r\n  \r\n							<div class=\"tab-content\" id=\"pills-tabContent\">\r\n							  <div class=\"tab-pane fade show active\" id=\"pills-description\" role=\"tabpanel\" aria-labelledby=\"pills-description-tab\">\r\n								  <div class=\"row\">\r\n									  <div class=\"col-md-4\">\r\n										  <ul class=\"features\">\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Airconditions</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Child Seat</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>GPS</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Luggage</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Music</li>\r\n										  </ul>\r\n									  </div>\r\n									  <div class=\"col-md-4\">\r\n										  <ul class=\"features\">\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Seat Belt</li>\r\n											  <li class=\"remove\"><span class=\"ion-ios-close\"></span>Sleeping Bed</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Water</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Bluetooth</li>\r\n											  <li class=\"remove\"><span class=\"ion-ios-close\"></span>Onboard computer</li>\r\n										  </ul>\r\n									  </div>\r\n									  <div class=\"col-md-4\">\r\n										  <ul class=\"features\">\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Audio input</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Long Term Trips</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Car Kit</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Remote central locking</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Climate control</li>\r\n										  </ul>\r\n									  </div>\r\n								  </div>\r\n							  </div>\r\n  \r\n							  <div class=\"tab-pane fade\" id=\"pills-manufacturer\" role=\"tabpanel\" aria-labelledby=\"pills-manufacturer-tab\">\r\n						\r\n\r\n								<p style=\"text-align: justify;\">Compact cars are the perfect choice for city driving, offering a compact size that makes navigating through narrow streets and tight parking spaces much easier. With their fuel efficiency, they are also an economical option for both short trips and longer journeys. The Toyota Vitz, for example, is known for its practicality, comfort, and affordable pricing, making it a popular choice among urban drivers.</p>\r\n\r\n								<p style=\"text-align: justify;\">These cars are ideal for those who prioritize convenience without compromising on performance. Whether you\'re driving through bustling city streets or taking a weekend getaway, compact cars like the Toyota Vitz offer a smooth, enjoyable driving experience. With features like spacious interiors, advanced safety systems, and efficient engines, they deliver both reliability and comfort in a compact package.</p>\r\n								\r\n								\r\n\r\n							  </div>\r\n  \r\n							 \r\n							</div>\r\n						  </div>\r\n				</div>\r\n				  </div>\r\n		</div>\r\n	  </section>\r\n  \r\n	  \r\n  \r\n	  <section class=\"ftco-section ftco-contact\">\r\n		<div class=\"container\">\r\n		  <div class=\"row justify-content-center\">\r\n			<div class=\"col-md-8\">\r\n			  <div class=\"contact-form\">\r\n				<h2 class=\"text-center mb-4\">Book This Car</h2>\r\n				  <form action=\"connection.php\" method=\"POST\">\r\n		<div class=\"form-row\">\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"name\">Full Name</label>\r\n			<input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" placeholder=\"Enter your name\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"email\">Email Address</label>\r\n			<input type=\"email\" class=\"form-control\" id=\"email\" name=\"email\" placeholder=\"Enter your email\" required>\r\n		  </div>\r\n		</div>\r\n		<div class=\"form-row\">\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"phone\">Phone Number</label>\r\n			<input type=\"text\" class=\"form-control\" id=\"phone\" name=\"phone\" placeholder=\"Enter your phone number\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"pickup_date\">Pickup Date</label>\r\n			<input type=\"date\" class=\"form-control\" id=\"pickup_date\" name=\"pickup_date\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"pickup_date\">Drop Off Date</label>\r\n			<input type=\"date\" class=\"form-control\" id=\"pickup_date\" name=\"pickup_date\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"message\">Message</label>\r\n			<textarea class=\"form-control\" id=\"message\" name=\"message\" rows=\"4\" placeholder=\"Any special request?\" required></textarea>\r\n		  </div>\r\n		</div>\r\n		\r\n		<button type=\"submit\" class=\"btn btn-primary btn-block\">Submit</button>\r\n	  </form>\r\n	  \r\n	  \r\n			  </div>\r\n			</div>\r\n		  </div>\r\n		</div>\r\n	  </section>\r\n	  \r\n	  ', 1, 2, 4, 1, 1, 1, 1756714479, 1, 1756714501, 0, 0, 0, 1756714440, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(6, 'document', 'car_3', '', '', 'car-33', '', 1, 0, 0, 0, 0, '', '\r\n    \r\n    <section class=\"hero-wrap hero-wrap-2 js-fullheight\" style=\"background-image: url(\'assets/images/bg_3.jpg\');\" data-stellar-background-ratio=\"0.5\">\r\n		<div class=\"overlay\"></div>\r\n		<div class=\"container\">\r\n		  <div class=\"row no-gutters slider-text js-fullheight align-items-end justify-content-start\">\r\n			<div class=\"col-md-9 ftco-animate pb-5\">\r\n				<p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"[[~1]]\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span> <span>Car Details <i class=\"ion-ios-arrow-forward\"></i></span></p>\r\n			  <h1 class=\"mb-3 bread\" style=\"font-size: large;\">Car Details</h1>\r\n			</div>\r\n		  </div>\r\n		</div>\r\n	  </section>\r\n		  \r\n  \r\n		  <section class=\"ftco-section ftco-car-details\">\r\n		<div class=\"container\">\r\n			<div class=\"row justify-content-center\">\r\n				<div class=\"col-md-12\">\r\n					<div class=\"car-details\">\r\n						<!-- <div class=\"img rounded\" style=\"background-image: url(assets/images/bg_1.jpg);\"></div> -->\r\n						<div class=\"text text-center\">\r\n							<h2>Standard Cars</h2>\r\n							<span class=\"subheading\">Honda Grace or Similar</span>\r\n							\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-pistons\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Transmission\r\n										<span>Automatic</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-car-seat\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Seats\r\n										<span>4 Adults</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-backpack\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Luggage\r\n										<span>2 Bags</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-diesel\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Fuel\r\n										<span>Petrol</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-md-12 pills\">\r\n						  <div class=\"bd-example bd-example-tabs\">\r\n							  <div class=\"d-flex justify-content-center\">\r\n								<ul class=\"nav nav-pills mb-3\" id=\"pills-tab\" role=\"tablist\">\r\n  \r\n								  <li class=\"nav-item\">\r\n									<a class=\"nav-link active\" id=\"pills-description-tab\" data-toggle=\"pill\" href=\"#pills-description\" role=\"tab\" aria-controls=\"pills-description\" aria-expanded=\"true\">Features</a>\r\n								  </li>\r\n								  <li class=\"nav-item\">\r\n									<a class=\"nav-link\" id=\"pills-manufacturer-tab\" data-toggle=\"pill\" href=\"#pills-manufacturer\" role=\"tab\" aria-controls=\"pills-manufacturer\" aria-expanded=\"true\">Description</a>\r\n								  </li>\r\n							\r\n								</ul>\r\n							  </div>\r\n  \r\n							<div class=\"tab-content\" id=\"pills-tabContent\">\r\n							  <div class=\"tab-pane fade show active\" id=\"pills-description\" role=\"tabpanel\" aria-labelledby=\"pills-description-tab\">\r\n								  <div class=\"row\">\r\n									  <div class=\"col-md-4\">\r\n										  <ul class=\"features\">\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Airconditions</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Child Seat</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>GPS</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Luggage</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Music</li>\r\n										  </ul>\r\n									  </div>\r\n									  <div class=\"col-md-4\">\r\n										  <ul class=\"features\">\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Seat Belt</li>\r\n											  <li class=\"remove\"><span class=\"ion-ios-close\"></span>Sleeping Bed</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Water</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Bluetooth</li>\r\n											  <li class=\"remove\"><span class=\"ion-ios-close\"></span>Onboard computer</li>\r\n										  </ul>\r\n									  </div>\r\n									  <div class=\"col-md-4\">\r\n										  <ul class=\"features\">\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Audio input</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Long Term Trips</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Car Kit</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Remote central locking</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Climate control</li>\r\n										  </ul>\r\n									  </div>\r\n								  </div>\r\n							  </div>\r\n  \r\n							  <div class=\"tab-pane fade\" id=\"pills-manufacturer\" role=\"tabpanel\" aria-labelledby=\"pills-manufacturer-tab\">\r\n						\r\n\r\n								<p style=\"text-align: justify;\">Standard cars provide a balanced mix of performance, comfort, and efficiency, making them a versatile choice for various driving needs. Offering more space and power than compact cars, they are ideal for both city commutes and longer trips. The Honda Grace, for example, stands out for its stylish design, advanced features, and smooth driving experience, making it a top choice for those looking for a reliable and comfortable vehicle.</p>\r\n\r\n<p style=\"text-align: justify;\">These cars offer excellent fuel efficiency without sacrificing performance. Whether you\'re navigating urban streets or heading out on a road trip, standard cars like the Honda Grace provide a comfortable ride with plenty of legroom and modern amenities. With advanced safety systems and efficient engines, they offer both practicality and reliability in one attractive package.</p>\r\n\r\n								\r\n\r\n							  </div>\r\n  \r\n							 \r\n							</div>\r\n						  </div>\r\n				</div>\r\n				  </div>\r\n		</div>\r\n	  </section>\r\n  \r\n	  \r\n	  <section class=\"ftco-section ftco-contact\">\r\n		<div class=\"container\">\r\n		  <div class=\"row justify-content-center\">\r\n			<div class=\"col-md-8\">\r\n			  <div class=\"contact-form\">\r\n				<h2 class=\"text-center mb-4\">Book This Car</h2>\r\n				  <form action=\"connection.php\" method=\"POST\">\r\n		<div class=\"form-row\">\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"name\">Full Name</label>\r\n			<input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" placeholder=\"Enter your name\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"email\">Email Address</label>\r\n			<input type=\"email\" class=\"form-control\" id=\"email\" name=\"email\" placeholder=\"Enter your email\" required>\r\n		  </div>\r\n		</div>\r\n		<div class=\"form-row\">\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"phone\">Phone Number</label>\r\n			<input type=\"text\" class=\"form-control\" id=\"phone\" name=\"phone\" placeholder=\"Enter your phone number\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"pickup_date\">Pickup Date</label>\r\n			<input type=\"date\" class=\"form-control\" id=\"pickup_date\" name=\"pickup_date\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"pickup_date\">Drop Off Date</label>\r\n			<input type=\"date\" class=\"form-control\" id=\"pickup_date\" name=\"pickup_date\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"message\">Message</label>\r\n			<textarea class=\"form-control\" id=\"message\" name=\"message\" rows=\"4\" placeholder=\"Any special request?\" required></textarea>\r\n		  </div>\r\n		</div>\r\n		\r\n		<button type=\"submit\" class=\"btn btn-primary btn-block\">Submit</button>\r\n	  </form>\r\n	  \r\n	  \r\n			  </div>\r\n			</div>\r\n		  </div>\r\n		</div>\r\n	  </section>\r\n	  ', 1, 2, 5, 1, 1, 1, 1756714524, 1, 1756720087, 0, 0, 0, 1756714500, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(7, 'document', 'car_4', '', '', 'car-44', '', 1, 0, 0, 0, 0, '', '<section class=\"hero-wrap hero-wrap-2 js-fullheight\" style=\"background-image: url(\'assets/images/bg_3.jpg\');\" data-stellar-background-ratio=\"0.5\">\r\n	<div class=\"overlay\"></div>\r\n	<div class=\"container\">\r\n	  <div class=\"row no-gutters slider-text js-fullheight align-items-end justify-content-start\">\r\n		<div class=\"col-md-9 ftco-animate pb-5\">\r\n			<p class=\"breadcrumbs\">\r\n				<span class=\"mr-2\"><a href=\"[[~1]]\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span>\r\n				<span>Car Details <i class=\"ion-ios-arrow-forward\"></i></span>\r\n			</p>\r\n			<h1 class=\"mb-3 bread\" style=\"font-size: large;\">Car Details</h1>\r\n		</div>\r\n	  </div>\r\n	</div>\r\n</section>\r\n	  \r\n<section class=\"ftco-section ftco-car-details\">\r\n	<div class=\"container\">\r\n		<div class=\"row justify-content-center\">\r\n			<div class=\"col-md-12\">\r\n				<div class=\"car-details\">\r\n					<div class=\"text text-center\">\r\n						<h2>Premium Cars</h2>\r\n						<span class=\"subheading\">Honda Civic or Similar</span>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n\r\n		<!-- Car Features -->\r\n		<div class=\"row\">\r\n			<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n				<div class=\"media block-6 services\">\r\n					<div class=\"media-body py-md-2\">\r\n						<div class=\"d-flex mb-3 align-items-center\">\r\n							<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-pistons\"></span></div>\r\n							<div class=\"text\">\r\n								<h3 class=\"heading mb-0 pl-3\">Transmission<span>Automatic</span></h3>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n				<div class=\"media block-6 services\">\r\n					<div class=\"media-body py-md-4\">\r\n						<div class=\"d-flex mb-3 align-items-center\">\r\n							<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-car-seat\"></span></div>\r\n							<div class=\"text\">\r\n								<h3 class=\"heading mb-0 pl-3\">Seats<span>4 Adults</span></h3>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n				<div class=\"media block-6 services\">\r\n					<div class=\"media-body py-md-4\">\r\n						<div class=\"d-flex mb-3 align-items-center\">\r\n							<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-backpack\"></span></div>\r\n							<div class=\"text\">\r\n								<h3 class=\"heading mb-0 pl-3\">Luggage<span>2 Bags</span></h3>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n				<div class=\"media block-6 services\">\r\n					<div class=\"media-body py-md-4\">\r\n						<div class=\"d-flex mb-3 align-items-center\">\r\n							<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-diesel\"></span></div>\r\n							<div class=\"text\">\r\n								<h3 class=\"heading mb-0 pl-3\">Fuel<span>Petrol</span></h3>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n\r\n		<!-- Tabs for Features / Description -->\r\n		<div class=\"row\">\r\n			<div class=\"col-md-12 pills\">\r\n				<div class=\"bd-example bd-example-tabs\">\r\n					<div class=\"d-flex justify-content-center\">\r\n						<ul class=\"nav nav-pills mb-3\" id=\"pills-tab\" role=\"tablist\">\r\n							<li class=\"nav-item\">\r\n								<a class=\"nav-link active\" id=\"pills-description-tab\" data-toggle=\"pill\" href=\"#pills-description\" role=\"tab\" aria-controls=\"pills-description\">Features</a>\r\n							</li>\r\n							<li class=\"nav-item\">\r\n								<a class=\"nav-link\" id=\"pills-manufacturer-tab\" data-toggle=\"pill\" href=\"#pills-manufacturer\" role=\"tab\" aria-controls=\"pills-manufacturer\">Description</a>\r\n							</li>\r\n						</ul>\r\n					</div>\r\n\r\n					<div class=\"tab-content\" id=\"pills-tabContent\">\r\n						<div class=\"tab-pane fade show active\" id=\"pills-description\" role=\"tabpanel\" aria-labelledby=\"pills-description-tab\">\r\n							<div class=\"row\">\r\n								<div class=\"col-md-4\">\r\n									<ul class=\"features\">\r\n										<li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Airconditions</li>\r\n										<li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Child Seat</li>\r\n										<li class=\"check\"><span class=\"ion-ios-checkmark\"></span>GPS</li>\r\n										<li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Luggage</li>\r\n										<li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Music</li>\r\n									</ul>\r\n								</div>\r\n								<div class=\"col-md-4\">\r\n									<ul class=\"features\">\r\n										<li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Seat Belt</li>\r\n										<li class=\"remove\"><span class=\"ion-ios-close\"></span>Sleeping Bed</li>\r\n										<li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Water</li>\r\n										<li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Bluetooth</li>\r\n										<li class=\"remove\"><span class=\"ion-ios-close\"></span>Onboard computer</li>\r\n									</ul>\r\n								</div>\r\n								<div class=\"col-md-4\">\r\n									<ul class=\"features\">\r\n										<li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Audio input</li>\r\n										<li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Long Term Trips</li>\r\n										<li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Car Kit</li>\r\n										<li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Remote central locking</li>\r\n										<li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Climate control</li>\r\n									</ul>\r\n								</div>\r\n							</div>\r\n						</div>\r\n\r\n						<div class=\"tab-pane fade\" id=\"pills-manufacturer\" role=\"tabpanel\" aria-labelledby=\"pills-manufacturer-tab\">\r\n							<p style=\"text-align: justify;\">Premium cars are designed to offer superior comfort, performance, and luxury. With enhanced features, cutting-edge technology, and a refined driving experience, they cater to those who appreciate quality and style. The Honda Civic, for example, combines sleek design with advanced features and powerful performance, making it an ideal choice for those looking for both elegance and practicality.</p>\r\n\r\n							<p style=\"text-align: justify;\">These cars are perfect for individuals who value top-tier amenities, smooth handling, and modern technology. Whether you\'re enjoying a leisurely drive or navigating through city streets, premium cars like the Honda Civic provide a seamless, luxurious experience.</p>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</section>\r\n\r\n<!-- Vehicle Booking Form -->\r\n<section class=\"ftco-section ftco-contact\">\r\n	<div class=\"container\">\r\n	  <div class=\"row justify-content-center\">\r\n		<div class=\"col-md-8\">\r\n		  <div class=\"contact-form\">\r\n			<h2 class=\"text-center mb-4\">Book This Car</h2>\r\n			<form action=\"connection.php\" method=\"POST\">\r\n				<div class=\"form-row\">\r\n					<div class=\"form-group col-md-6\">\r\n						<label for=\"name\">Full Name</label>\r\n						<input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" placeholder=\"Enter your name\" required>\r\n					</div>\r\n					<div class=\"form-group col-md-6\">\r\n						<label for=\"email\">Email Address</label>\r\n						<input type=\"email\" class=\"form-control\" id=\"email\" name=\"email\" placeholder=\"Enter your email\" required>\r\n					</div>\r\n				</div>\r\n				<div class=\"form-row\">\r\n					<div class=\"form-group col-md-6\">\r\n						<label for=\"phone\">Phone Number</label>\r\n						<input type=\"text\" class=\"form-control\" id=\"phone\" name=\"phone\" placeholder=\"Enter your phone number\" required>\r\n					</div>\r\n					<div class=\"form-group col-md-6\">\r\n						<label for=\"pickup_date\">Pickup Date</label>\r\n						<input type=\"date\" class=\"form-control\" id=\"pickup_date\" name=\"pickup_date\" required>\r\n					</div>\r\n				</div>\r\n				<div class=\"form-row\">\r\n					<div class=\"form-group col-md-6\">\r\n						<label for=\"dropoff_date\">Drop Off Date</label>\r\n						<input type=\"date\" class=\"form-control\" id=\"dropoff_date\" name=\"dropoff_date\" required>\r\n					</div>\r\n					<div class=\"form-group col-md-6\">\r\n						<label for=\"message\">Message</label>\r\n						<textarea class=\"form-control\" id=\"message\" name=\"message\" rows=\"4\" placeholder=\"Any special requests?\" required></textarea>\r\n					</div>\r\n				</div>\r\n				<button type=\"submit\" class=\"btn btn-primary btn-block\">Submit Booking</button>\r\n			</form>\r\n		  </div>\r\n		</div>\r\n	  </div>\r\n	</div>\r\n</section>\r\n', 1, 2, 6, 1, 1, 1, 1756714554, 1, 1759923736, 0, 0, 0, 1756714560, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(8, 'document', 'car_5', '', '', 'car-5', '', 1, 0, 0, 0, 0, '', '\r\n    \r\n    <section class=\"hero-wrap hero-wrap-2 js-fullheight\" style=\"background-image: url(\'assets/images/bg_3.jpg\');\" data-stellar-background-ratio=\"0.5\">\r\n		<div class=\"overlay\"></div>\r\n		<div class=\"container\">\r\n		  <div class=\"row no-gutters slider-text js-fullheight align-items-end justify-content-start\">\r\n			<div class=\"col-md-9 ftco-animate pb-5\">\r\n				<p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"[[~1]]\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span> <span>Car Details <i class=\"ion-ios-arrow-forward\"></i></span></p>\r\n			  <h1 class=\"mb-3 bread\" style=\"font-size: large;\">Car Details</h1>\r\n			</div>\r\n		  </div>\r\n		</div>\r\n	  </section>\r\n		  \r\n  \r\n		  <section class=\"ftco-section ftco-car-details\">\r\n		<div class=\"container\">\r\n			<div class=\"row justify-content-center\">\r\n				<div class=\"col-md-12\">\r\n					<div class=\"car-details\">\r\n						<!-- <div class=\"img rounded\" style=\"background-image: url(assets/images/bg_1.jpg);\"></div> -->\r\n						<div class=\"text text-center\">\r\n							<h2>Sport Utility Vehicle</h2>\r\n							<span class=\"subheading\">Toyota C-HR or Similar</span>\r\n							\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-pistons\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Transmission\r\n										<span>Automatic</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-car-seat\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Seats\r\n										<span>4 Adults</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-backpack\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Luggage\r\n										<span>2 Bags</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-diesel\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Fuel\r\n										<span>Petrol</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-md-12 pills\">\r\n						  <div class=\"bd-example bd-example-tabs\">\r\n							  <div class=\"d-flex justify-content-center\">\r\n								<ul class=\"nav nav-pills mb-3\" id=\"pills-tab\" role=\"tablist\">\r\n  \r\n								  <li class=\"nav-item\">\r\n									<a class=\"nav-link active\" id=\"pills-description-tab\" data-toggle=\"pill\" href=\"#pills-description\" role=\"tab\" aria-controls=\"pills-description\" aria-expanded=\"true\">Features</a>\r\n								  </li>\r\n								  <li class=\"nav-item\">\r\n									<a class=\"nav-link\" id=\"pills-manufacturer-tab\" data-toggle=\"pill\" href=\"#pills-manufacturer\" role=\"tab\" aria-controls=\"pills-manufacturer\" aria-expanded=\"true\">Description</a>\r\n								  </li>\r\n							\r\n								</ul>\r\n							  </div>\r\n  \r\n							<div class=\"tab-content\" id=\"pills-tabContent\">\r\n							  <div class=\"tab-pane fade show active\" id=\"pills-description\" role=\"tabpanel\" aria-labelledby=\"pills-description-tab\">\r\n								  <div class=\"row\">\r\n									  <div class=\"col-md-4\">\r\n										  <ul class=\"features\">\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Airconditions</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Child Seat</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>GPS</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Luggage</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Music</li>\r\n										  </ul>\r\n									  </div>\r\n									  <div class=\"col-md-4\">\r\n										  <ul class=\"features\">\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Seat Belt</li>\r\n											  <li class=\"remove\"><span class=\"ion-ios-close\"></span>Sleeping Bed</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Water</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Bluetooth</li>\r\n											  <li class=\"remove\"><span class=\"ion-ios-close\"></span>Onboard computer</li>\r\n										  </ul>\r\n									  </div>\r\n									  <div class=\"col-md-4\">\r\n										  <ul class=\"features\">\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Audio input</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Long Term Trips</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Car Kit</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Remote central locking</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Climate control</li>\r\n										  </ul>\r\n									  </div>\r\n								  </div>\r\n							  </div>\r\n  \r\n							  <div class=\"tab-pane fade\" id=\"pills-manufacturer\" role=\"tabpanel\" aria-labelledby=\"pills-manufacturer-tab\">\r\n						\r\n\r\n								<p style=\"text-align: justify;\">Sport Utility Vehicles (SUVs) offer the perfect blend of rugged performance and stylish design, making them an excellent choice for both urban driving and outdoor adventures. With higher ground clearance, all-wheel drive options, and ample cargo space, they provide both versatility and comfort. The Toyota C-HR, for example, stands out with its modern design, advanced safety features, and impressive fuel efficiency, making it a popular choice among those who want an SUV that delivers both style and practicality.</p>\r\n\r\n<p style=\"text-align: justify;\">These vehicles are ideal for families, adventure enthusiasts, and those who need extra space for passengers and luggage. Whether you\'re navigating through city traffic or heading off-road, SUVs like the Toyota C-HR offer a smooth ride with plenty of features to ensure safety and convenience. With advanced technology and efficient engines, they provide a reliable and comfortable driving experience.</p>\r\n\r\n								\r\n\r\n								\r\n\r\n							  </div>\r\n  \r\n							 \r\n							</div>\r\n						  </div>\r\n				</div>\r\n				  </div>\r\n		</div>\r\n	  </section>\r\n  \r\n	  \r\n	  <section class=\"ftco-section ftco-contact\">\r\n		<div class=\"container\">\r\n		  <div class=\"row justify-content-center\">\r\n			<div class=\"col-md-8\">\r\n			  <div class=\"contact-form\">\r\n				<h2 class=\"text-center mb-4\">Book This Car</h2>\r\n				  <form action=\"connection.php\" method=\"POST\">\r\n		<div class=\"form-row\">\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"name\">Full Name</label>\r\n			<input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" placeholder=\"Enter your name\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"email\">Email Address</label>\r\n			<input type=\"email\" class=\"form-control\" id=\"email\" name=\"email\" placeholder=\"Enter your email\" required>\r\n		  </div>\r\n		</div>\r\n		<div class=\"form-row\">\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"phone\">Phone Number</label>\r\n			<input type=\"text\" class=\"form-control\" id=\"phone\" name=\"phone\" placeholder=\"Enter your phone number\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"pickup_date\">Pickup Date</label>\r\n			<input type=\"date\" class=\"form-control\" id=\"pickup_date\" name=\"pickup_date\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"pickup_date\">Drop Off Date</label>\r\n			<input type=\"date\" class=\"form-control\" id=\"pickup_date\" name=\"pickup_date\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"message\">Message</label>\r\n			<textarea class=\"form-control\" id=\"message\" name=\"message\" rows=\"4\" placeholder=\"Any special request?\" required></textarea>\r\n		  </div>\r\n		</div>\r\n		\r\n		<button type=\"submit\" class=\"btn btn-primary btn-block\">Submit</button>\r\n	  </form>\r\n	  \r\n	  \r\n			  </div>\r\n			</div>\r\n		  </div>\r\n		</div>\r\n	  </section>\r\n	  \r\n	  ', 1, 2, 7, 1, 1, 1, 1756714595, 1, 1756714692, 0, 0, 0, 1756714692, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(9, 'document', 'car_6', '', '', 'car-6', '', 1, 0, 0, 0, 0, '', '\r\n    \r\n    <section class=\"hero-wrap hero-wrap-2 js-fullheight\" style=\"background-image: url(\'assets/images/bg_3.jpg\');\" data-stellar-background-ratio=\"0.5\">\r\n		<div class=\"overlay\"></div>\r\n		<div class=\"container\">\r\n		  <div class=\"row no-gutters slider-text js-fullheight align-items-end justify-content-start\">\r\n			<div class=\"col-md-9 ftco-animate pb-5\">\r\n				<p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"[[~1]]\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span> <span>Car Details <i class=\"ion-ios-arrow-forward\"></i></span></p>\r\n			  <h1 class=\"mb-3 bread\" style=\"font-size: large;\">Car Details</h1>\r\n			</div>\r\n		  </div>\r\n		</div>\r\n	  </section>\r\n		  \r\n  \r\n		  <section class=\"ftco-section ftco-car-details\">\r\n		<div class=\"container\">\r\n			<div class=\"row justify-content-center\">\r\n				<div class=\"col-md-12\">\r\n					<div class=\"car-details\">\r\n						<!-- <div class=\"img rounded\" style=\"background-image: url(assets/images/bg_1.jpg);\"></div> -->\r\n						<div class=\"text text-center\">\r\n							<h2>Luxury Cars</h2>\r\n							<span class=\"subheading\">Mercedez Benz or Similar</span>\r\n							\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-pistons\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Transmission\r\n										<span>Automatic</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-car-seat\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Seats\r\n										<span>4 Adults</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-backpack\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Luggage\r\n										<span>2 Bags</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md d-flex align-self-stretch ftco-animate\">\r\n					<div class=\"media block-6 services\">\r\n						<div class=\"media-body py-md-4\">\r\n							<div class=\"d-flex mb-3 align-items-center\">\r\n								<div class=\"icon d-flex align-items-center justify-content-center\"><span class=\"flaticon-diesel\"></span></div>\r\n								<div class=\"text\">\r\n									<h3 class=\"heading mb-0 pl-3\">\r\n										Fuel\r\n										<span>Petrol</span>\r\n									</h3>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-md-12 pills\">\r\n						  <div class=\"bd-example bd-example-tabs\">\r\n							  <div class=\"d-flex justify-content-center\">\r\n								<ul class=\"nav nav-pills mb-3\" id=\"pills-tab\" role=\"tablist\">\r\n  \r\n								  <li class=\"nav-item\">\r\n									<a class=\"nav-link active\" id=\"pills-description-tab\" data-toggle=\"pill\" href=\"#pills-description\" role=\"tab\" aria-controls=\"pills-description\" aria-expanded=\"true\">Features</a>\r\n								  </li>\r\n								  <li class=\"nav-item\">\r\n									<a class=\"nav-link\" id=\"pills-manufacturer-tab\" data-toggle=\"pill\" href=\"#pills-manufacturer\" role=\"tab\" aria-controls=\"pills-manufacturer\" aria-expanded=\"true\">Description</a>\r\n								  </li>\r\n							\r\n								</ul>\r\n							  </div>\r\n  \r\n							<div class=\"tab-content\" id=\"pills-tabContent\">\r\n							  <div class=\"tab-pane fade show active\" id=\"pills-description\" role=\"tabpanel\" aria-labelledby=\"pills-description-tab\">\r\n								  <div class=\"row\">\r\n									  <div class=\"col-md-4\">\r\n										  <ul class=\"features\">\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Airconditions</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Child Seat</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>GPS</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Luggage</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Music</li>\r\n										  </ul>\r\n									  </div>\r\n									  <div class=\"col-md-4\">\r\n										  <ul class=\"features\">\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Seat Belt</li>\r\n											  <li class=\"remove\"><span class=\"ion-ios-close\"></span>Sleeping Bed</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Water</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Bluetooth</li>\r\n											  <li class=\"remove\"><span class=\"ion-ios-close\"></span>Onboard computer</li>\r\n										  </ul>\r\n									  </div>\r\n									  <div class=\"col-md-4\">\r\n										  <ul class=\"features\">\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Audio input</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Long Term Trips</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Car Kit</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Remote central locking</li>\r\n											  <li class=\"check\"><span class=\"ion-ios-checkmark\"></span>Climate control</li>\r\n										  </ul>\r\n									  </div>\r\n								  </div>\r\n							  </div>\r\n  \r\n							  <div class=\"tab-pane fade\" id=\"pills-manufacturer\" role=\"tabpanel\" aria-labelledby=\"pills-manufacturer-tab\">\r\n						\r\n\r\n								<p style=\"text-align: justify;\">Luxury cars are the epitome of elegance, comfort, and performance. Designed to offer a premium driving experience, they come with cutting-edge technology, exquisite craftsmanship, and superior performance. The Mercedes Benz, for example, is renowned for its luxurious interiors, advanced features, and smooth, powerful ride, making it a symbol of sophistication and status.</p>\r\n\r\n								<p style=\"text-align: justify;\">These cars are perfect for those who seek the highest level of comfort and style. Whether cruising on highways or navigating city streets, luxury cars like the Mercedes Benz offer an exceptional driving experience with features like premium interiors, advanced safety systems, and state-of-the-art technology. They combine performance, reliability, and luxury in a truly remarkable way.</p>\r\n								\r\n\r\n								\r\n\r\n								\r\n\r\n							  </div>\r\n  \r\n							 \r\n							</div>\r\n						  </div>\r\n				</div>\r\n				  </div>\r\n		</div>\r\n	  </section>\r\n  \r\n	  <section class=\"ftco-section ftco-contact\">\r\n		<div class=\"container\">\r\n		  <div class=\"row justify-content-center\">\r\n			<div class=\"col-md-8\">\r\n			  <div class=\"contact-form\">\r\n				<h2 class=\"text-center mb-4\">Book This Car</h2>\r\n				  <form action=\"connection.php\" method=\"POST\">\r\n		<div class=\"form-row\">\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"name\">Full Name</label>\r\n			<input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" placeholder=\"Enter your name\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"email\">Email Address</label>\r\n			<input type=\"email\" class=\"form-control\" id=\"email\" name=\"email\" placeholder=\"Enter your email\" required>\r\n		  </div>\r\n		</div>\r\n		<div class=\"form-row\">\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"phone\">Phone Number</label>\r\n			<input type=\"text\" class=\"form-control\" id=\"phone\" name=\"phone\" placeholder=\"Enter your phone number\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"pickup_date\">Pickup Date</label>\r\n			<input type=\"date\" class=\"form-control\" id=\"pickup_date\" name=\"pickup_date\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"pickup_date\">Drop Off Date</label>\r\n			<input type=\"date\" class=\"form-control\" id=\"pickup_date\" name=\"pickup_date\" required>\r\n		  </div>\r\n		  <div class=\"form-group col-md-6\">\r\n			<label for=\"message\">Message</label>\r\n			<textarea class=\"form-control\" id=\"message\" name=\"message\" rows=\"4\" placeholder=\"Any special request?\" required></textarea>\r\n		  </div>\r\n		</div>\r\n		\r\n		<button type=\"submit\" class=\"btn btn-primary btn-block\">Submit</button>\r\n	  </form>\r\n	  \r\n	  \r\n			  </div>\r\n			</div>\r\n		  </div>\r\n		</div>\r\n	  </section>', 1, 2, 8, 1, 1, 1, 1756714723, 1, 1756725001, 0, 0, 0, 1756720080, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1);
INSERT INTO `modx_site_content` (`id`, `type`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`, `alias_visible`) VALUES
(10, 'document', 'blog-details', '', '', 'blog-details', '', 1, 0, 0, 0, 0, '', '<section class=\"hero-wrap hero-wrap-2 js-fullheight\" style=\"background-image: url(\'assets/images/bg_3.jpg\');\" data-stellar-background-ratio=\"0.5\">\r\n	<div class=\"overlay\"></div>\r\n	<div class=\"container\">\r\n		<div class=\"row no-gutters slider-text js-fullheight align-items-end justify-content-start\">\r\n		<div class=\"col-md-9 ftco-animate pb-5\">\r\n			<p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"[[~1]]\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span> <span>Blogs <i class=\"ion-ios-arrow-forward\"></i></span></p>\r\n			<h1 class=\"mb-3 bread\">Blog Details</h1>\r\n		</div>\r\n		</div>\r\n	</div>\r\n</section>\r\n\r\n\r\n<!-- Blog Detail Page -->\r\n<section class=\"blog-detail-section py-5 bg-light\">\r\n  <div class=\"container\">\r\n    <!-- Blog Header -->\r\n    <div class=\"row justify-content-center mb-4\">\r\n      <div class=\"col-md-10 text-center\">\r\n        <h1 class=\"blog-title mb-2\">Beaches vs. Mountains: Best Sri Lanka Destinations for Every Traveler</h1>\r\n        <div class=\"meta text-muted mb-3\">\r\n          <span>By <strong>Admin</strong></span> | \r\n          <span>Jan 27, 2025</span> | \r\n          <span><i class=\"icon-chat\"></i> 5 Comments</span>\r\n        </div>\r\n        <div class=\"blog-featured-img mb-3\">\r\n          <img src=\"assets/images/blog-details/1.webp\" alt=\"Sri Lanka Travel\" class=\"img-fluid rounded shadow-sm\">\r\n        </div>\r\n      </div>\r\n    </div>\r\n\r\n    <!-- Blog Content -->\r\n    <div class=\"row justify-content-center\">\r\n      <div class=\"col-md-10\">\r\n        <div class=\"blog-content\">\r\n          <p class=\"lead\">Sri Lanka offers a perfect mix of serene beaches and majestic mountains. Choosing the right destination depends on the type of experience you seek. In this guide, we explore the top destinations for both.</p>\r\n\r\n            <h3>1. Best Beaches in Sri Lanka</h3>\r\n            <p>The southern and eastern coasts are dotted with pristine beaches like Unawatuna, Mirissa, and Arugam Bay. Perfect for sunbathing, surfing, and whale watching.</p>\r\n\r\n            <div class=\"row gap-3\">\r\n                <div class=\"col-md-4 col-sm-6 mt-3 mt-sm-0\">\r\n                    <img src=\"assets/images/blog-details/1.jpg\" class=\"img-fluid rounded shadow-sm\" alt=\"Unawatuna Beach\">\r\n                </div>\r\n                <div class=\"col-md-4 col-sm-6 mt-3 mt-sm-0\">\r\n                    <img src=\"assets/images/blog-details/2.jpg\" class=\"img-fluid rounded shadow-sm\" alt=\"Mirissa Beach\">\r\n                </div>\r\n                <div class=\"col-md-4 col-sm-6 mt-3 mt-sm-0\">\r\n                    <img src=\"assets/images/blog-details/3.webp\" class=\"img-fluid rounded shadow-sm\" alt=\"Arugam Bay\">\r\n                </div>\r\n            </div>\r\n\r\n\r\n          <h3>2. Top Mountain Destinations</h3>\r\n          <p>The central highlands, including Nuwara Eliya, Ella, and Horton Plains, offer breathtaking views, tea plantations, and hiking adventures. Ideal for nature lovers and adventure seekers.</p>\r\n          <img src=\"assets/images/blogs/sri_lanka_mountain.jpg\" class=\"img-fluid rounded my-3\" alt=\"Sri Lanka Mountains\">\r\n\r\n          <h3>3. Choosing the Right Experience</h3>\r\n          <p>If you want relaxation and water activities, beaches are your go-to. If you prefer cooler weather, scenic views, and trekking, the mountains will amaze you. Many travelers combine both for the ultimate trip.</p>\r\n\r\n          <!-- Quote Section -->\r\n          <blockquote class=\"blockquote text-center my-4 p-3 bg-white shadow-sm rounded\">\r\n            <p class=\"mb-0 fst-italic\">\"Sri Lankaâ€™s diverse landscapes make it a paradise for travelers of all kinds. Beaches and mountains each have their own magic.\"</p>\r\n            <footer class=\"blockquote-footer mt-2\">Platinum Drive Travel Guide</footer>\r\n          </blockquote>\r\n\r\n          <!-- Call-to-Action -->\r\n          <div class=\"text-center my-4\">\r\n            <a href=\"contact.html\" class=\"btn btn-primary btn-lg\">Book Your Sri Lanka Tour</a>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n\r\n  </div>\r\n</section>\r\n\r\n<style>\r\n.blog-title {\r\n  font-size: 30px;\r\n  font-weight: 700;\r\n  color: #022b57ff;\r\n}\r\n\r\n.blog-content h3 {\r\n  margin-top: 2rem;\r\n  font-weight: 600;\r\n  color: #333;\r\n}\r\n\r\n.blog-content p {\r\n  line-height: 1.8;\r\n  font-size: 18px;\r\n}\r\n\r\n.blockquote {\r\n  border-left: 5px solid #007bff;\r\n}\r\n\r\n.related-post h6 a {\r\n  color: #007bff;\r\n  text-decoration: none;\r\n}\r\n.related-post h6 a:hover {\r\n  text-decoration: underline;\r\n}\r\n</style>\r\n', 1, 2, 9, 1, 1, 2, 1761547048, 2, 1761549250, 0, 0, 0, 1761547080, 2, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(11, 'document', 'blog-details', '', '', 'blog-details', '', 1, 0, 0, 0, 0, '', '<section class=\"hero-wrap hero-wrap-2 js-fullheight\" style=\"background-image: url(\'assets/images/bg_3.jpg\');\" data-stellar-background-ratio=\"0.5\">\r\n    <div class=\"overlay\"></div>\r\n    <div class=\"container\">\r\n        <div class=\"row no-gutters slider-text js-fullheight align-items-end justify-content-start\">\r\n            <div class=\"col-md-9 ftco-animate pb-5\">\r\n                <p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"[[~1]]\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span> <span>Blogs <i class=\"ion-ios-arrow-forward\"></i></span></p>\r\n                <h1 class=\"mb-3 bread\">Blog Details</h1>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n<!-- Blog Detail Page -->\r\n<section class=\"blog-detail-section py-5 bg-light\">\r\n  <div class=\"container\">\r\n    <!-- Blog Header -->\r\n    <div class=\"row justify-content-center mb-4\">\r\n      <div class=\"col-md-10 text-center\">\r\n        <h1 class=\"blog-title mb-2\">Hidden Gems: Exploring Sri Lanka\'s Untouched Villages</h1>\r\n        <div class=\"meta text-muted mb-3\">\r\n          <span>By <strong>Admin</strong></span> | \r\n          <span>Oct 27, 2025</span> | \r\n        </div>\r\n        <div class=\"blog-featured-img mb-3\">\r\n          <img src=\"assets/images/blog-details/8.jpg\" alt=\"Sri Lanka Villages\" class=\"img-fluid rounded shadow-sm\">\r\n        </div>\r\n      </div>\r\n    </div>\r\n\r\n    <!-- Blog Content -->\r\n    <div class=\"row justify-content-center\">\r\n      <div class=\"col-md-10\">\r\n        <div class=\"blog-content\">\r\n          <p class=\"lead\">Sri Lanka is not just about beaches and mountains. Hidden deep within its lush landscapes are villages untouched by mass tourism, offering authentic cultural experiences. In this guide, we uncover some of these hidden gems.</p>\r\n\r\n          <h3>1. Ella\'s Surrounding Villages</h3>\r\n          <p>While Ella is known for its stunning viewpoints, the nearby villages like Diyaluma and Demodara offer tranquil escapes. Visitors can enjoy tea plantation walks, interact with locals, and experience traditional village life.</p>\r\n          <div class=\"row gap-3\">\r\n              <div class=\"col-md-4 col-sm-6 mt-3 mt-sm-0\">\r\n                  <img src=\"assets/images/blog-details/9.jpg\" class=\"img-fluid rounded shadow-sm\" alt=\"Diyaluma Village\">\r\n              </div>\r\n              <div class=\"col-md-4 col-sm-6 mt-3 mt-sm-0\">\r\n                  <img src=\"assets/images/blog-details/10.webp\" class=\"img-fluid rounded shadow-sm\" alt=\"Demodara Village\">\r\n              </div>\r\n              <div class=\"col-md-4 col-sm-6 mt-3 mt-sm-0\">\r\n                  <img src=\"assets/images/blog-details/11.jpg\" class=\"img-fluid rounded shadow-sm\" alt=\"Tea Plantation Village\">\r\n              </div>\r\n          </div>\r\n\r\n          <h3>2. Knuckles Mountain Range Villages</h3>\r\n          <p>The Knuckles region is a paradise for nature lovers. Villages here are surrounded by misty mountains and rice terraces. Trekking routes take you through these serene communities, offering an insight into daily rural life.</p>\r\n          <div class=\"row gap-3\">\r\n              <div class=\"col-md-4 col-sm-6 mt-3 mt-sm-0\">\r\n                  <img src=\"assets/images/blog-details/12.jpg\" class=\"img-fluid rounded shadow-sm\" alt=\"Knuckles Village\">\r\n              </div>\r\n              <div class=\"col-md-4 col-sm-6 mt-3 mt-sm-0\">\r\n                  <img src=\"assets/images/blog-details/13.jpg\" class=\"img-fluid rounded shadow-sm\" alt=\"Rice Terraces\">\r\n              </div>\r\n              <div class=\"col-md-4 col-sm-6 mt-3 mt-sm-0\">\r\n                  <img src=\"assets/images/blog-details/14.jpg\" class=\"img-fluid rounded shadow-sm\" alt=\"Mountain Trails\">\r\n              </div>\r\n          </div>\r\n\r\n          <h3>3. Cultural Immersion in Jaffna Villages</h3>\r\n          <p>In the northern region, villages around Jaffna offer rich cultural experiences. Visitors can witness traditional crafts, local cuisine, and vibrant festivals, all while enjoying the slower pace of rural life.</p>\r\n\r\n          <!-- Quote Section -->\r\n          <blockquote class=\"blockquote text-center my-4 p-3 bg-white shadow-sm rounded\">\r\n            <p class=\"mb-0 fst-italic\">\"Discovering Sri Lanka’s untouched villages is like stepping back in time, where nature, culture, and community remain unspoiled.\"</p>\r\n            <footer class=\"blockquote-footer mt-2\">Platinum Drive Travel Guide</footer>\r\n          </blockquote>\r\n\r\n          <!-- Call-to-Action -->\r\n          <div class=\"text-center my-4\">\r\n            <a href=\"[[~2]]\" class=\"btn btn-primary btn-lg\">Plan Your Village Tour</a>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n\r\n  </div>\r\n</section>\r\n\r\n<style>\r\n.blog-title {\r\n  font-size: 30px;\r\n  font-weight: 700;\r\n  color: #022b57ff;\r\n}\r\n\r\n.blog-content h3 {\r\n  margin-top: 2rem;\r\n  font-weight: 600;\r\n  color: #333;\r\n}\r\n\r\n.blog-content p {\r\n  line-height: 1.8;\r\n  font-size: 18px;\r\n}\r\n\r\n.blockquote {\r\n  border-left: 5px solid #007bff;\r\n}\r\n\r\n.related-post h6 a {\r\n  color: #007bff;\r\n  text-decoration: none;\r\n}\r\n.related-post h6 a:hover {\r\n  text-decoration: underline;\r\n}\r\n</style>\r\n', 1, 2, 10, 1, 1, 2, 1761713549, 2, 1761713568, 0, 0, 0, 1761547080, 2, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(12, 'document', 'blog-details', '', '', 'blog-details', '', 1, 0, 0, 0, 0, '', '<section class=\"hero-wrap hero-wrap-2 js-fullheight\" style=\"background-image: url(\'assets/images/bg_3.jpg\');\" data-stellar-background-ratio=\"0.5\">\r\n    <div class=\"overlay\"></div>\r\n    <div class=\"container\">\r\n        <div class=\"row no-gutters slider-text js-fullheight align-items-end justify-content-start\">\r\n            <div class=\"col-md-9 ftco-animate pb-5\">\r\n                <p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"[[~1]]\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span> <span>Blogs <i class=\"ion-ios-arrow-forward\"></i></span></p>\r\n                <h1 class=\"mb-3 bread\">Blog Details</h1>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n<!-- Blog Detail Page -->\r\n<section class=\"blog-detail-section py-5 bg-light\">\r\n  <div class=\"container\">\r\n    <!-- Blog Header -->\r\n    <div class=\"row justify-content-center mb-4\">\r\n      <div class=\"col-md-10 text-center\">\r\n        <h1 class=\"blog-title mb-2\">Top 5 Scenic Routes to Explore in Sri Lanka</h1>\r\n        <div class=\"meta text-muted mb-3\">\r\n          <span>By <strong>Admin</strong></span> | \r\n          <span>Oct 27, 2025</span> | \r\n        </div>\r\n        <div class=\"blog-featured-img mb-3\">\r\n          <img src=\"assets/images/blog-details/15.jpg\" alt=\"Scenic Routes Sri Lanka\" class=\"img-fluid rounded shadow-sm\">\r\n        </div>\r\n      </div>\r\n    </div>\r\n\r\n    <!-- Blog Content -->\r\n    <div class=\"row justify-content-center\">\r\n      <div class=\"col-md-10\">\r\n        <div class=\"blog-content\">\r\n          <p class=\"lead\">Sri Lanka offers some of the most breathtaking scenic drives, from misty mountain roads to coastal highways. These routes are perfect for travelers seeking panoramic views, nature, and unforgettable journeys.</p>\r\n\r\n          <h3>1. Kandy to Nuwara Eliya via Tea Country</h3>\r\n          <p>This route takes you through lush tea plantations, waterfalls, and misty hills. Ideal for photography enthusiasts and nature lovers alike.</p>\r\n          <div class=\"row gap-3\">\r\n              <div class=\"col-md-6 col-sm-6 mt-3 mt-sm-0\">\r\n                  <img src=\"assets/images/blog-details/16.gif\" class=\"img-fluid rounded shadow-sm\" alt=\"Tea Plantation Drive\">\r\n              </div>\r\n              <div class=\"col-md-6 col-sm-6 mt-3 mt-sm-0\">\r\n                  <img src=\"assets/images/blog-details/17.jpg\" class=\"img-fluid rounded shadow-sm\" alt=\"Waterfalls en route\">\r\n              </div>\r\n          </div>\r\n\r\n          <h3>2. Colombo to Galle Coastal Drive</h3>\r\n          <p>Drive along the southwest coast and enjoy stunning ocean views, beaches, and charming colonial towns. Perfect for a relaxed scenic road trip.</p>\r\n          <div class=\"row gap-3\">\r\n              <div class=\"col-md-6 col-sm-6 mt-3 mt-sm-0\">\r\n                  <img src=\"assets/images/blog-details/18.jpg\" class=\"img-fluid rounded shadow-sm\" alt=\"Coastal Drive\">\r\n              </div>\r\n              <div class=\"col-md-6 col-sm-6 mt-3 mt-sm-0\">\r\n                  <img src=\"assets/images/blog-details/19.webp\" class=\"img-fluid rounded shadow-sm\" alt=\"Ocean View\">\r\n              </div>\r\n          </div>\r\n\r\n          <h3>3. Nuwara Eliya to Horton Plains</h3>\r\n          <p>Experience highland roads leading to Horton Plains, with breathtaking viewpoints and tea estates. Don’t miss World’s End for a spectacular cliff view.</p>\r\n\r\n          <h3>4. Sigiriya to Polonnaruwa</h3>\r\n          <p>This route combines cultural exploration with scenic landscapes, passing through ancient temples, villages, and vast paddy fields.</p>\r\n\r\n          <h3>5. Ella to Yala National Park</h3>\r\n          <p>A diverse route featuring rolling hills, forests, and wildlife sightings. Perfect for adventure seekers who enjoy both nature and safari experiences.</p>\r\n\r\n          <!-- Quote Section -->\r\n          <blockquote class=\"blockquote text-center my-4 p-3 bg-white shadow-sm rounded\">\r\n            <p class=\"mb-0 fst-italic\">\"Exploring Sri Lanka’s scenic routes is not just a journey, it’s an immersion into the island’s beauty, culture, and soul.\"</p>\r\n            <footer class=\"blockquote-footer mt-2\">Platinum Drive Travel Guide</footer>\r\n          </blockquote>\r\n\r\n          <!-- Call-to-Action -->\r\n          <div class=\"text-center my-4\">\r\n            <a href=\"[[~2]]\" class=\"btn btn-primary btn-lg\">Start Your Scenic Journey</a>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n\r\n  </div>\r\n</section>\r\n\r\n<style>\r\n.blog-title {\r\n  font-size: 30px;\r\n  font-weight: 700;\r\n  color: #022b57ff;\r\n}\r\n\r\n.blog-content h3 {\r\n  margin-top: 2rem;\r\n  font-weight: 600;\r\n  color: #333;\r\n}\r\n\r\n.blog-content p {\r\n  line-height: 1.8;\r\n  font-size: 18px;\r\n}\r\n\r\n.blockquote {\r\n  border-left: 5px solid #007bff;\r\n}\r\n\r\n.related-post h6 a {\r\n  color: #007bff;\r\n  text-decoration: none;\r\n}\r\n.related-post h6 a:hover {\r\n  text-decoration: underline;\r\n}\r\n</style>\r\n', 1, 2, 11, 1, 1, 2, 1761713581, 2, 1761713598, 0, 0, 0, 1761547080, 2, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(13, 'document', 'faq', '', '', 'faq', '', 1, 0, 0, 0, 0, '', '<section class=\"hero-wrap hero-wrap-2 js-fullheight\" style=\"background-image: url(\'assets/images/bg_3.jpg\');\" data-stellar-background-ratio=\"0.5\">\r\n	<div class=\"overlay\"></div>\r\n	<div class=\"container\">\r\n		<div class=\"row no-gutters slider-text js-fullheight align-items-end justify-content-start\">\r\n		<div class=\"col-md-9 ftco-animate pb-5\">\r\n			<p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"[[~1]]\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span> <span>FAQ <i class=\"ion-ios-arrow-forward\"></i></span></p>\r\n			<h1 class=\"mb-3 bread\">Frequently Asked Questions</h1>\r\n		</div>\r\n		</div>\r\n	</div>\r\n</section>\r\n\r\n<div class=\"container my-5\">\r\n\r\n    <div class=\"faq-grid\">\r\n        <div class=\"faq-item\">\r\n            <div class=\"faq-question\">\r\n                <span>What types of luxury vehicles do you offer?</span>\r\n                <div class=\"faq-icon\">+</div>\r\n            </div>\r\n            <div class=\"faq-answer\">\r\n                Our premium fleet includes high-end sedans, luxury SUVs, exotic sports cars, and executive limousines from brands like Mercedes-Benz, BMW, Audi, Porsche, and more. Each vehicle is meticulously maintained to ensure the highest standards of comfort and performance.\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"faq-item\">\r\n            <div class=\"faq-question\">\r\n                <span>Are professional chauffeurs included with all rentals?</span>\r\n                <div class=\"faq-icon\">+</div>\r\n            </div>\r\n            <div class=\"faq-answer\">\r\n                Yes, all our rentals come with experienced, professional chauffeurs who are trained in luxury service standards. They are punctual, discreet, and knowledgeable about the area to ensure you have a seamless and comfortable journey.\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"faq-item\">\r\n            <div class=\"faq-question\">\r\n                <span>How far in advance should I book?</span>\r\n                <div class=\"faq-icon\">+</div>\r\n            </div>\r\n            <div class=\"faq-answer\">\r\n                We recommend booking at least 48-72 hours in advance to ensure vehicle availability, especially for special occasions or peak seasons. However, we also accommodate last-minute bookings subject to fleet availability.\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"faq-item\">\r\n            <div class=\"faq-question\">\r\n                <span>What is included in the rental price?</span>\r\n                <div class=\"faq-icon\">+</div>\r\n            </div>\r\n            <div class=\"faq-answer\">\r\n                Our rental packages include the luxury vehicle of your choice, professional chauffeur service, comprehensive insurance coverage, fuel costs, and standard amenities. Additional services like special decorations, refreshments, or extended hours can be arranged upon request.\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"faq-item\">\r\n            <div class=\"faq-question\">\r\n                <span>Do you provide service for special events?</span>\r\n                <div class=\"faq-icon\">+</div>\r\n            </div>\r\n            <div class=\"faq-answer\">\r\n                Absolutely! We specialize in providing luxury transportation for weddings, corporate events, airport transfers, proms, anniversaries, and other special occasions. We can customize our services to meet your specific event requirements.\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"faq-item\">\r\n            <div class=\"faq-question\">\r\n                <span>What are your service areas?</span>\r\n                <div class=\"faq-icon\">+</div>\r\n            </div>\r\n            <div class=\"faq-answer\">\r\n                We primarily serve the metropolitan area and surrounding regions. For destinations outside our standard service area, we can arrange special accommodations. Contact us to discuss your specific travel needs.\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"faq-item\">\r\n            <div class=\"faq-question\">\r\n                <span>What is your cancellation policy?</span>\r\n                <div class=\"faq-icon\">+</div>\r\n            </div>\r\n            <div class=\"faq-answer\">\r\n                We offer flexible cancellation policies depending on your booking type. Generally, cancellations made 48 hours or more before your scheduled service receive a full refund. Cancellations within 48 hours may be subject to a fee. Please refer to your booking confirmation for specific terms.\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"faq-item\">\r\n            <div class=\"faq-question\">\r\n                <span>How do I make a reservation?</span>\r\n                <div class=\"faq-icon\">+</div>\r\n            </div>\r\n            <div class=\"faq-answer\">\r\n                Booking is easy! You can reserve your luxury vehicle through our website, call our customer service team directly, or send us an email. We\'ll confirm your booking details and answer any questions you may have to ensure a perfect experience.\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"contact-cta\">\r\n        <h2>Still Have Questions?</h2>\r\n        <p>Our dedicated team is here to assist you with any inquiries</p>\r\n        <a href=\"[[~3]]\" class=\"cta-button\">Contact Us</a>\r\n    </div>\r\n</div>\r\n\r\n<script>\r\n    const faqItems = document.querySelectorAll(\'.faq-item\');\r\n\r\n    faqItems.forEach(item => {\r\n        const question = item.querySelector(\'.faq-question\');\r\n        \r\n        question.addEventListener(\'click\', () => {\r\n            const isActive = item.classList.contains(\'active\');\r\n            faqItems.forEach(faq => faq.classList.remove(\'active\'));\r\n            \r\n            if (!isActive) {\r\n                item.classList.add(\'active\');\r\n            }\r\n        });\r\n    });\r\n</script>\r\n', 1, 2, 12, 1, 1, 2, 1761713618, 2, 1762229017, 0, 0, 0, 1761713580, 2, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(14, 'document', 'details.php', '', '', 'car-1', '', 1, 0, 0, 0, 0, '', '[[!CarDetails]]\r\n', 1, 2, 13, 1, 1, 2, 1761715410, 2, 1761718055, 0, 0, 0, 1756714380, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(15, 'document', 'Reservation Form', '', '', 'reservation-form', '', 0, 0, 0, 0, 0, '', '<form action=\"[[~[[*id]]]]\" method=\"post\">\r\n    <label>Pickup Location:</label>\r\n    <input type=\"text\" name=\"pickup_location\" required><br>\r\n\r\n    <label>Dropoff Location:</label>\r\n    <input type=\"text\" name=\"dropoff_location\" required><br>\r\n\r\n    <label>Pickup Date:</label>\r\n    <input type=\"date\" name=\"pickup_date\" required><br>\r\n\r\n    <label>Pickup Time:</label>\r\n    <input type=\"time\" name=\"pickup_time\" required><br>\r\n\r\n    <label>Dropoff Date:</label>\r\n    <input type=\"date\" name=\"dropoff_date\" required><br>\r\n\r\n    <label>Dropoff Time:</label>\r\n    <input type=\"time\" name=\"dropoff_time\" required><br>\r\n\r\n    <button type=\"submit\" name=\"reserve_submit\">Reserve</button>\r\n</form>\r\n\r\n[[!SaveReservationToSession]]\r\n', 1, 2, 14, 1, 1, 2, 1761803636, 2, 1761803644, 1, 1761807680, 2, 0, 0, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(16, 'document', 'about-us', '', '', 'about-us', '', 1, 0, 0, 0, 0, '', '<section class=\"hero-wrap hero-wrap-2 js-fullheight\" style=\"background-image: url(\'assets/images/bg_3.jpg\');\" data-stellar-background-ratio=\"0.5\">\r\n    <div class=\"overlay\"></div>\r\n    <div class=\"container\">\r\n        <div class=\"row no-gutters slider-text js-fullheight align-items-end justify-content-start\">\r\n        <div class=\"col-md-9 ftco-animate pb-5\">\r\n            <p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"[[~1]]\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span> <span>About <i class=\"ion-ios-arrow-forward\"></i></span></p>\r\n            <h1 class=\"mb-3 bread\">About Us</h1>\r\n        </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n<div class=\"container py-5\">\r\n    <!-- INTRO -->\r\n    <section class=\"intro-section\">\r\n        <div class=\"intro-content\">\r\n            <h2><span style=\"font-size: 26px; color:#102c4e; font-weight:700;\">About </span> <br> Platinum Drive</h2>\r\n            <p>\r\n                Welcome to <strong>Platinum Drive</strong> — the ultimate destination for refined automotive luxury.\r\n                For over a decade, we have set the gold standard in elite car rentals, offering a seamless blend of\r\n                sophistication, performance, and prestige. Every vehicle in our fleet represents artistry and power,\r\n                designed for those who demand more than just a drive — they demand excellence.\r\n            </p>\r\n        </div>\r\n        <div class=\"intro-image\">\r\n            <img src=\"assets/images/about_car.webp\" alt=\"Luxury car at Platinum Drive\">\r\n        </div>\r\n    </section>\r\n\r\n    <!-- FEATURES -->\r\n    <div class=\"features-grid\">\r\n        <div class=\"feature-card\">\r\n            <h3>Premium Fleet</h3>\r\n            <p>Our collection includes the world’s most iconic brands — each vehicle handpicked and maintained to perfection.</p>\r\n        </div>\r\n\r\n        <div class=\"feature-card\">\r\n            <h3>Concierge Service</h3>\r\n            <p>From doorstep delivery to custom route planning, our team ensures a flawless luxury experience from start to finish.</p>\r\n        </div>\r\n\r\n        <div class=\"feature-card\">\r\n            <h3>Trust & Security</h3>\r\n            <p>Your peace of mind is our highest priority, with full coverage, verified rentals, and discreet, secure transactions.</p>\r\n        </div>\r\n    </div>\r\n\r\n    <!-- VALUES -->\r\n    <section class=\"values-section\">\r\n        <h2>Our Core Values</h2>\r\n        <div class=\"values-list\">\r\n            <div class=\"value-item\">\r\n                <h3>Excellence</h3>\r\n                <p>We deliver precision, perfection, and prestige in every journey — without compromise.</p>\r\n            </div>\r\n            <div class=\"value-item\">\r\n                <h3>Integrity</h3>\r\n                <p>Our reputation is built on honesty, trust, and consistent transparency with every client.</p>\r\n            </div>\r\n            <div class=\"value-item\">\r\n                <h3>Luxury</h3>\r\n                <p>Luxury isn’t a product; it’s an experience — one we tailor uniquely for you.</p>\r\n            </div>\r\n        </div>\r\n    </section>\r\n\r\n    <!-- CTA -->\r\n    <section class=\"cta-section\">\r\n        <h2>Begin Your Journey</h2>\r\n        <p>Experience the Platinum Drive standard. Reserve your luxury vehicle today and embrace driving perfection.</p>\r\n        <a href=\"[[~2]]\" class=\"cta-button\">Book Now!</a>\r\n    </section>\r\n</div>\r\n', 1, 2, 15, 1, 1, 2, 1762163589, 2, 1762491936, 0, 0, 0, 1756714440, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'footer', '', 0, 0, 0, '\n<footer class=\"ftco-footer ftco-bg-dark ftco-section\">\n	<div class=\"container\">\n	  <div class=\"row mb-5\">\n		<div class=\"col-md\">\n		  <div class=\"ftco-footer-widget mb-4\">\n			<img src=\"assets/images/logo.png\" alt=\"CarBook Logo\" height=\"100\">\n			<p style=\"text-align: justify; margin-top: 8%;\">Platinum Drive Rent a Car offers premium vehicles for transfers and city travel across Sri Lanka. Our high-end fleet and professional chauffeurs ensure a safe, comfortable, and stylish journey, tailored for business, leisure, or city exploration.</p>\n		 \n		  </div>\n		</div>\n	\n		  <div class=\"col-md\">\n			<div class=\"ftco-footer-widget mb-4\">\n				<!-- <h2 class=\"ftco-heading-2\">We are Located</h2>\n			\n					<iframe \n					  src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7405.353880602396!2d8.51228779204323!3d47.511205671410366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4790743bf365baf5%3A0xe35763ebf24c7305!2sHofstrasse%2015%2C%208181%20H%C3%B6ri%2C%20Switzerland!5e0!3m2!1sen!2slk!4v1754470128639!5m2!1sen!2slk\" \n					  width=\"100%\" height=\"200\" style=\"border: 2px solid #ffffff;\" allowfullscreen=\"\" loading=\"lazy\"></iframe> -->\n				\n			</div>\n		  </div>\n		<div class=\"col-md\">\n		  <div class=\"ftco-footer-widget mb-4\">\n			  <h2 class=\"ftco-heading-2\">Contact Us</h2>\n			  <div class=\"block-23 mb-3\">\n					<ul>\n				   <li><a href=\"https://maps.app.goo.gl/xrmbXQFwX8j4buQh6\"><span class=\"icon icon-map-marker\"></span><span class=\"text\">No : 375 / 2 / 1, Seeduwa, Sri Lanka</span></a></li> \n				  <li><a href=\"tel:+94768200099\"><span class=\"icon icon-phone\"></span><span class=\"text\">+94 76 820 0099</span></a></li>\n				  <li><a href=\"mailto:info@platinumdrive.lk\"><span class=\"icon icon-envelope\"></span><span class=\"text\">info@platinumdrive.lk</span></a></li>\n				</ul>\n			  </div>\n			<ul class=\"ftco-footer-social list-unstyled float-md-left float-lft mt-2\">\n			  <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-twitter\"></span></a></li>\n			  <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-facebook\"></span></a></li>\n			  <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-instagram\"></span></a></li>\n			</ul>\n		  </div>\n		</div>\n	  </div>\n	  <div class=\"row\">\n		<div class=\"col-md-12 text-center\">\n\n		  <p><!-- Link back to Colorlib can\'t be removed. Template is licensed under CC BY 3.0. -->\nCopyright &copy;<script>document.write(new Date().getFullYear());</script> All Rights Reserved | Platinum Drive Rent A Car </a>\n<!-- Link back to Colorlib can\'t be removed. Template is licensed under CC BY 3.0. --></p>\n		</div>\n	  </div>\n	</div>\n  </footer>\n  \n\n\n<!-- loader -->\n<div id=\"ftco-loader\" class=\"show fullscreen\"><svg class=\"circular\" width=\"48px\" height=\"48px\"><circle class=\"path-bg\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke=\"#eeeeee\"/><circle class=\"path\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke-miterlimit=\"10\" stroke=\"#F96D00\"/></svg></div>\n\n  <!-- WhatsApp Chat Popup starts -->\n<div id=\"whatsapp-chat-btn\" class=\"wa-button\">\n    <img src=\"assets/images/whatsapp-icon.png\" class=\"img-fluid\" style=\"width:30px\">\n</div>\n\n<div id=\"whatsapp-chat-popup\" class=\"wa-popup hidden\">\n    <div class=\"wa-header\">\n        <i class=\"bi bi-whatsapp\"></i> Chat With Us\n        <span id=\"close-chat\">×</span>\n    </div>\n\n    <div class=\"wa-body\">\n        <p style=\"font-size:14px;\">Hey! Looking to rent a car? We\'re here to help!</p>\n        <textarea id=\"wa-chat-input\" placeholder=\"Type your message...\" sty></textarea>\n        <button id=\"wa-send-btn\">Send</button>\n    </div>\n</div>\n\n\n<script>\n    document.addEventListener(\"DOMContentLoaded\", function () {\n        const chatBtn = document.getElementById(\"whatsapp-chat-btn\");\n        const chatPopup = document.getElementById(\"whatsapp-chat-popup\");\n        const closeChat = document.getElementById(\"close-chat\");\n        const sendBtn = document.getElementById(\"wa-send-btn\");\n        const messageBox = document.getElementById(\"wa-chat-input\");\n        const phone = \"94764428250\";\n\n        // Open popup\n        chatBtn.addEventListener(\"click\", () => {\n            chatPopup.classList.remove(\"hidden\");\n        });\n\n        // Close popup\n        closeChat.addEventListener(\"click\", () => {\n            chatPopup.classList.add(\"hidden\");\n        });\n\n        // Send message\n        sendBtn.addEventListener(\"click\", () => {\n            let msg = messageBox.value.trim();\n            if (!msg) msg = \"Hello! I need more information ?\";\n\n            const url = `https://wa.me/${phone}?text=${encodeURIComponent(msg)}`;\n            window.open(url, \"_blank\");\n\n            messageBox.value = \"\";\n            chatPopup.classList.add(\"hidden\");\n        });\n    });\n</script>\n<!-- WhatsApp Chat Popup ends -->\n\n\n<script src=\"https://kit.fontawesome.com/a076d05399.js\" crossorigin=\"anonymous\"></script>\n\n\n\n<script src=\"assets/js/jquery.min.js\"></script>\n<script src=\"assets/js/jquery-migrate-3.0.1.min.js\"></script>\n<script src=\"assets/js/popper.min.js\"></script>\n<script src=\"assets/js/bootstrap.min.js\"></script>\n<script src=\"assets/js/jquery.easing.1.3.js\"></script>\n<script src=\"assets/js/jquery.waypoints.min.js\"></script>\n<script src=\"assets/js/jquery.stellar.min.js\"></script>\n<script src=\"assets/js/owl.carousel.min.js\"></script>\n<script src=\"assets/js/jquery.magnific-popup.min.js\"></script>\n<script src=\"assets/js/aos.js\"></script>\n<script src=\"assets/js/jquery.animateNumber.min.js\"></script>\n<script src=\"assets/js/bootstrap-datepicker.js\"></script>\n<script src=\"assets/js/jquery.timepicker.min.js\"></script>\n<script src=\"assets/js/scrollax.min.js\"></script>\n\n<script src=\"assets/js/google-map.js\"></script>\n<script src=\"assets/js/main.js\"></script>\n  <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyAHmbwBrk0OKY0Nhp9FrR_zn8HKLGZ54OU&libraries=places\"></script>\n  \n  <script>\n    function initAutocomplete() {\n        const pickupInput = document.getElementById(\'pickup_location\');\n        const dropoffInput = document.getElementById(\'dropoff_location\');\n\n        const pickupAutocomplete = new google.maps.places.Autocomplete(pickupInput);\n        const dropoffAutocomplete = new google.maps.places.Autocomplete(dropoffInput);\n    }\n\n    google.maps.event.addDomListener(window, \'load\', initAutocomplete);\n</script>\n\n', 0, 'a:0:{}', 0, ''),
(2, 1, 0, 'header', '', 0, 0, 0, '  <head>\n    <title>Platinum Car Rent</title>\n    <link rel=\"icon\" type=\"assets/images/favicon.png\" href=\"assets/images/favicon.png\">\n    <meta charset=\"utf-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n    \n    <link href=\"https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap\" rel=\"stylesheet\">\n\n    <link rel=\"stylesheet\" href=\"assets/css/open-iconic-bootstrap.min.css\">\n    <link rel=\"stylesheet\" href=\"assets/css/animate.css\">\n<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css\">\n\n    \n\n  <!-- Google Maps & Places API -->\n  <script src=\"https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places\"></script>\n\n\n    <link rel=\"stylesheet\" href=\"assets/css/owl.carousel.min.css\">\n    <link rel=\"stylesheet\" href=\"assets/css/owl.theme.default.min.css\">\n    <link rel=\"stylesheet\" href=\"assets/css/magnific-popup.css\">\n\n    <link rel=\"stylesheet\" href=\"assets/css/aos.css\">\n\n    <link rel=\"stylesheet\" href=\"assets/css/ionicons.min.css\">\n\n    <link rel=\"stylesheet\" href=\"assets/css/bootstrap-datepicker.css\">\n    <link rel=\"stylesheet\" href=\"assets/css/jquery.timepicker.css\">\n\n    \n    <link rel=\"stylesheet\" href=\"assets/css/flaticon.css\">\n    <link rel=\"stylesheet\" href=\"assets/css/icomoon.css\">\n    <link rel=\"stylesheet\" href=\"assets/css/style.css\">\n\n    <script src=\"https://code.jquery.com/jquery-3.6.0.min.js\"></script>\n\n     <script src=\"https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js\"></script>\n  </head>', 0, 'a:0:{}', 0, ''),
(3, 1, 0, 'navbar', '', 0, 0, 0, ' <nav class=\"navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light\" id=\"ftco-navbar\">\n	    <div class=\"container\">\n        <a class=\"navbar-brand\" href=\"[[~1]]\">\n          <img id=\"logo\" src=\"assets/images/logo1.png\" alt=\"Platinum Logo\" height=\"100\">\n      </a>\n      \n      \n	      <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#ftco-nav\" aria-controls=\"ftco-nav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n	        <span class=\"oi oi-menu\"></span> Menu\n	      </button>\n\n	      <div class=\"collapse navbar-collapse\" id=\"ftco-nav\">\n	        <ul class=\"navbar-nav ml-auto\">\n	          <li class=\"nav-item active\"><a href=\"[[~1]]\" class=\"nav-link\">HOME</a></li>\n	          <!-- <li class=\"nav-item\"><a href=\"about.html\" class=\"nav-link\">ABOUT US</a></li> -->\n	          <li class=\"nav-item\"><a href=\"[[~2]]\" class=\"nav-link\">FLEET</a></li>\n	          <!-- <li class=\"nav-item\"><a href=\"pricing.html\" class=\"nav-link\">BLOG</a></li> -->\n	          <!-- <li class=\"nav-item\"><a href=\"car.html\" class=\"nav-link\">Cars</a></li>\n	          <li class=\"nav-item\"><a href=\"blog.html\" class=\"nav-link\">Blog</a></li> -->\n	          <li class=\"nav-item\"><a href=\"[[~13]]\" class=\"nav-link\">FAQ</a></li>\n	          <li class=\"nav-item\"><a href=\"[[~16]]\" class=\"nav-link\">ABOUT US</a></li>\n	          <li class=\"nav-item\"><a href=\"[[~3]]\" class=\"nav-link\">CONTACT US</a></li>\n	        </ul>\n	      </div>\n	    </div>\n	  </nav>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT 0,
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT 0,
  `propertyset` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 1, 0, 'showVehicles', '', 0, 0, 0, 'include_once MODX_BASE_PATH . \'assets/includes/db_connect.php\';\n\n$output = \'\';\n\ntry {\n    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);\n\n    $stmt = $conn->query(\"\n        SELECT \n            cc.id,\n            rr.car_category AS car_category,\n            cc.description,\n            cc.passengers,\n            cc.suitcases,\n            cc.image,\n            cc.avg_price\n        FROM car_categories cc\n        LEFT JOIN rental_rates rr \n            ON rr.car_category = cc.name\n        GROUP BY cc.id\n        ORDER BY cc.id\n    \");\n\n    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {\n        $id = $row[\'id\'];\n\n        // Name from rental_rates, fallback to car_categories if empty\n        $name = ucfirst(htmlspecialchars($row[\'car_category\']));\n        \n        $categoryParam = rawurlencode($row[\'car_category\']);\n\n        $price = number_format($row[\'avg_price\'], 2);\n        $description = htmlspecialchars($row[\'description\']);\n        $image = $row[\'image\'];\n        $seats = (int)$row[\'passengers\'];\n        $luggage = (int)$row[\'suitcases\'];\n\n        // PASS car_category INSTEAD OF car_id\n        $detailsLink = \"[[~14? &car_category=`$categoryParam`]]\";\n\n        $output .= \"\n        <div class=\'col-md-4 mb-4\'>\n            <div class=\'car-wrap rounded ftco-animate\'>\n                <div class=\'img rounded d-flex align-items-end\' style=\'background-image: url($image); height: 220px; background-size: cover; background-position: center;\'></div>\n                <div class=\'text p-3\'>\n                    <div class=\'d-flex justify-content-between align-items-center mb-1\'>\n                        <h2 class=\'mb-0\' style=\'color: #102c4e !important; font-size: 1.25rem;\'>$name</h2>\n                        <small style=\'font-size: 16px; color: #d09c00;\'>\n                            <i class=\'fa fa-users\'></i> $seats |\n                            <i class=\'fa fa-suitcase ml-2\'></i> $luggage\n                        </small>\n                    </div>\n                    <div class=\'d-flex mb-3\'>\n                        <span class=\'cat\'>$description</span>\n                        <p class=\'price ml-auto\'>€ $price <span>/day</span></p>\n                    </div>\n                    <p class=\'d-flex mb-0 d-block justify-content-center\'>\n                        <a href=\'$detailsLink\' class=\'btn btn-primary py-2 mr-1\'>Book now</a>\n                    </p>\n                </div>\n            </div>\n        </div>\";\n    }\n\n\n} catch (PDOException $e) {\n    $output = \"? Query failed: \" . $e->getMessage();\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(2, 1, 0, 'CarDetails', '', 0, 0, 0, '$pickup = $_SESSION[\'booking\'][\'pickup_location\'] ?? \'\';\n$dropoff = $_SESSION[\'booking\'][\'dropoff_location\'] ?? \'\';\n$pickup_date = $_SESSION[\'booking\'][\'pickup_date\'] ?? \'\';\n$pickup_time = $_SESSION[\'booking\'][\'pickup_time\'] ?? \'\';\n$dropoff_date = $_SESSION[\'booking\'][\'dropoff_date\'] ?? \'\';\n$dropoff_time = $_SESSION[\'booking\'][\'dropoff_time\'] ?? \'\';\n\nif (!empty($pickup_date)) {\n    $timestamp = strtotime($pickup_date);\n    if ($timestamp) $pickup_date = date(\'Y-m-d\', $timestamp);\n}\n\nif (!empty($dropoff_date)) {\n    $timestamp = strtotime($dropoff_date);\n    if ($timestamp) $dropoff_date = date(\'Y-m-d\', $timestamp);\n}\n\nif (!empty($pickup_time)) {\n    $timestamp = strtotime($pickup_time);\n    if ($timestamp) $pickup_time = date(\'H:i\', $timestamp);\n}\n\nif (!empty($dropoff_time)) {\n    $timestamp = strtotime($dropoff_time);\n    if ($timestamp) $dropoff_time = date(\'H:i\', $timestamp);\n}\n\n\ninclude_once MODX_BASE_PATH . \'assets/includes/db_connect.php\';\n\n$car_category = isset($_GET[\'car_category\']) ? $_GET[\'car_category\'] : \'\';\n$car_category = rawurldecode($car_category);\n\ntry {\n    $stmt = $conn->prepare(\"\n        SELECT \n            rr.car_category AS name,\n            cc.avg_price,\n            cc.description,\n            cc.image,\n            cc.passengers AS no_of_seats,\n            cc.suitcases AS luggages\n        FROM rental_rates rr\n        LEFT JOIN car_categories cc ON cc.name = rr.car_category\n        WHERE rr.car_category = ?\n        LIMIT 1\n    \");\n    $stmt->execute([$car_category]);\n    $car = $stmt->fetch(PDO::FETCH_ASSOC);\n\n    if ($car) {\n        $price_per_day = $car[\'avg_price\']; \n        $seats = $car[\'no_of_seats\'];\n        $luggages = $car[\'luggages\'];\n        $car_name = ucfirst($car[\'name\']);\n        $car_description = $car[\'description\'];\n        $car_image = $car[\'image\'];\n    }\n} catch (PDOException $e) {\n    return \"<p>?? Error loading car details: \" . htmlspecialchars($e->getMessage()) . \"</p>\";\n}\n\n\n// Fetch add-ons from DB\n$addons_html = \'<div class=\"row\" id=\"addons_section\" style=\"margin-top:15px;\"><div class=\"col-12\"><h6 style=\"font-weight:600;\">Available Add-ons</h6><div class=\"form-row\">\';\ntry {\n    $stmt = $conn->prepare(\"SELECT id, name, price_per_day FROM addons ORDER BY name ASC\");\n    $stmt->execute();\n    $addons = $stmt->fetchAll(PDO::FETCH_ASSOC);\n\n    if ($addons) {\n        foreach ($addons as $addon) {\n            $addons_html .= \'\n            <div class=\"form-group col-md-6\">\n                <div class=\"form-check d-flex align-items-center justify-content-around\">\n                    <div>\n                        <input class=\"form-check-input addon-checkbox\" type=\"checkbox\" id=\"addon_\' . $addon[\'id\'] . \'\" name=\"addons[]\" value=\"\' . $addon[\'id\'] . \'\" data-name=\"\' . htmlspecialchars(trim($addon[\'name\']), ENT_QUOTES) . \'\"data-price=\"\' . $addon[\'price_per_day\'] . \'\">\n                        <label class=\"form-check-label\" for=\"addon_\' . $addon[\'id\'] . \'\">\'\n                            . htmlspecialchars($addon[\'name\']) . \n                            \' (<strong>$\' . number_format($addon[\'price_per_day\'], 2) . \'</strong>/day)\n                        </label>\n                    </div>\n                    <select class=\"form-control form-control-sm addon-qty\" name=\"addon_qty[\' . $addon[\'id\'] . \']\" id=\"addon_qty_\' . $addon[\'id\'] . \'\" style=\"width:70px;\" disabled>\n                        <option value=\"1\">1</option>\n                        <option value=\"2\">2</option>\n                        <option value=\"3\">3</option>\n                    </select>\n                </div>\n            </div>\';\n        }\n    } else {\n        $addons_html .= \'<p>No add-ons available.</p>\';\n    }\n} catch (PDOException $e) {\n    $addons_html .= \'<p>Error loading add-ons.</p>\';\n}\n$addons_html .= \'</div></div></div>\';\n\n// Build output using heredoc\n$output = <<<HTML\n<!-- Hero Section -->\n<section class=\"hero-wrap hero-wrap-2 js-fullheight\" style=\"background-image: url(\'assets/images/bg_3.jpg\');\" data-stellar-background-ratio=\"0.5\">\n    <div class=\"overlay\"></div>\n    <div class=\"container\">\n        <div class=\"row no-gutters slider-text js-fullheight align-items-end justify-content-start\">\n            <div class=\"col-md-9 ftco-animate pb-5\">\n                <p class=\"breadcrumbs\">\n                    <span class=\"mr-2\"><a href=\"[[~1]]\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span>\n                    <span>Car Details <i class=\"ion-ios-arrow-forward\"></i></span>\n                </p>\n                <h1 class=\"bread\" style=\"font-size: large;\">{$car_name}</h1>\n            </div>\n        </div>\n    </div>\n</section>\n\n<section class=\"ftco-section ftco-car-details\">\n    <div class=\"container\">\n        <!-- Progress Bar -->\n        <div class=\"progressbar-container\">\n            <ul class=\"progressbar\">\n                <li class=\"active\">Vehicle</li>\n                <li>Extras</li>\n                <li>Passengers + Transfers</li>\n                <li>Confirmation</li>\n            </ul>\n        </div>\n\n        <style>\n        .progressbar {\n            display: flex;\n            justify-content: space-between;\n            counter-reset: step;\n            margin-bottom: 30px;\n            list-style-type: none;\n            padding: 0;\n        }\n        .progressbar li {\n            position: relative;\n            text-align: center;\n            flex: 1;\n            cursor: pointer;\n        }\n        .progressbar li:before {\n            content: counter(step);\n            counter-increment: step;\n            width: 30px;\n            height: 30px;\n            line-height: 30px;\n            display: block;\n            border: 2px solid #ccc;\n            border-radius: 50%;\n            background: white;\n            margin: 0 auto 10px auto;\n        }\n        .progressbar li.active:before,\n        .progressbar li.completed:before {\n            border-color: #007bff;\n            background: #007bff;\n            color: white;\n        }\n        .progressbar li:after {\n            content: \'\';\n            position: absolute;\n            width: 100%;\n            height: 2px;\n            background: #ccc;\n            top: 15px;\n            left: -50%;\n            z-index: -1;\n        }\n        .progressbar li:first-child:after { content: none; }\n        .progressbar li.completed + li:after { background: #007bff; }\n\n        /* Hide steps by default */\n        .form-step { display: none; opacity: 0; transition: opacity 0.3s ease; }\n        .form-step.active { display: block; opacity: 1; }\n\n        .side-box {\n            border: 1px solid #ddd;\n            border-radius: 10px;\n            padding: 20px;\n            background: #f8f9fa;\n            box-shadow: 0 2px 5px rgba(0,0,0,0.05);\n        }\n        .side-box h5 {\n            margin-bottom: 15px;\n            font-weight: 600;\n        }\n        .help-box {\n            margin-top: 20px;\n            border: 1px solid #e2e2e2;\n            border-radius: 10px;\n            padding: 15px;\n            text-align: center;\n            background: #fff;\n        }\n        .help-box a {\n            color: #007bff;\n            font-weight: 600;\n            text-decoration: none;\n        }\n\n        .buttons {\n            display: flex;\n            justify-content: end;\n            gap: 8px;\n        }\n\n        .price-summary {\n            border-radius: 8px;\n            padding: 12px 15px;\n            background-color: #f8f9fa;\n            margin-top: 10px;\n            text-align: left;\n        }\n        .price-summary h6 {\n            font-weight: 600;\n            margin-bottom: 8px;\n        }\n        .price-summary p {\n            margin-bottom: 5px;\n        }\n\n        #confirmation_summary {\n            max-width: 900px;\n            margin: 0 auto;\n            font-size: 16px;\n            line-height: 1.6;\n            margin-bottom: 2rem;\n        }\n\n        .conf-row {\n            display: flex;\n            justify-content: space-between;\n            flex-wrap: wrap;\n            margin-bottom: 10px;\n        }\n\n        .conf-row p {\n            width: 48%;\n            margin: 0;\n            word-break: break-word;\n        }\n\n        .conf-row.full p {\n            width: 100%;\n        }\n\n        #confirmation_summary strong {\n            color: #333;\n        }\n\n        #confirmation_summary span {\n            color: #555;\n        }\n\n        #confirmation_summary ul {\n            margin: 0;\n            padding-left: 20px;\n        }\n\n        #confirmation_summary li {\n            list-style-type: disc;\n        }\n\n        .carousel-control-next , .carousel-control-prev {\n            height: fit-content;\n            top: 50%;\n            color: black;\n            background-color: black;\n            width: auto;\n        }\n        </style>\n\n        <div class=\"row\">\n            <!-- LEFT COLUMN -->\n            <div class=\"col-md-4\">\n                 <div class=\"price-summary mt-3\">\n                    <h6>Trip Summary</h6>\n                    <hr class=\"my-2\">\n                    <p style=\"font-size: 24px;\"><strong>Total Price :</strong> <span id=\"trip_total\">-</span></p>\n                </div>\n                \n                <div class=\"side-box\">\n                    <h5>Trip Details</h5>\n                    <form id=\"bookingForm\" action=\"assets/includes/connection.php\" method=\"POST\" enctype=\"multipart/form-data\">\n                        <div class=\"form-group\">\n                            <label for=\"pickup_location\">Pickup Location</label>\n                            <input type=\"text\" class=\"form-control\" id=\"pickup_location\" name=\"pickup_location\"\n                                value=\"{$pickup}\" placeholder=\"Enter pickup location\">\n                        </div>\n                        <div class=\"form-group\">\n                            <label for=\"dropoff_location\">Drop-off Location</label>\n                            <input type=\"text\" class=\"form-control\" id=\"dropoff_location\" name=\"dropoff_location\" value=\"{$dropoff}\" placeholder=\"Enter drop-off location\">\n                        </div>\n                        <div class=\"form-group\">\n                            <label for=\"pickup_date\">Pickup Date</label>\n                            <input type=\"date\" class=\"form-control\" id=\"pickup_date\" name=\"pickup_date\" \n                                value=\"{$pickup_date}\">\n                        </div>\n                        <div class=\"form-group\">\n                            <label for=\"pickup_time\">Pickup Time</label>\n                            <input type=\"time\" class=\"form-control\" id=\"pickup_time\" name=\"pickup_time\"\n                                value=\"{$pickup_time}\">\n                        </div>\n                        <div class=\"form-group\">\n                            <label for=\"dropoff_date\">Drop-off Date</label>\n                            <input type=\"date\" class=\"form-control\" id=\"dropoff_date\"  name=\"dropoff_date\" \n                                value=\"{$dropoff_date}\">\n                        </div>\n                        <div class=\"form-group\">\n                            <label for=\"dropoff_time\">Drop-off Time</label>\n                            <input type=\"time\" class=\"form-control\" id=\"dropoff_time\" name=\"dropoff_time\"\n                                value=\"{$dropoff_time}\">\n                        </div>\n\n                        <!-- Trip summary -->\n                        <div class=\"form-group mt-3\">\n                            <label><strong>Number of Trip Days:</strong></label>\n                            <p id=\"trip_days\">-</p>\n                        </div>\n                    </form>\n                </div>\n\n                <div class=\"help-box\">\n                    <h6 style=\"font-weight:600;\">Help Center!</h6>\n                    <p class=\"mb-0\"><a href=\"[[~13]]\">Frequently Asked Questions</a></p>\n                </div>\n            </div>\n\n            <!-- RIGHT COLUMN -->\n            <div class=\"col-md-8\">\n                <form id=\"multiStepForm\" action=\"assets/includes/connection.php\" method=\"POST\" enctype=\"multipart/form-data\">\n                    <input type=\"hidden\" name=\"car_category\" value=\"{$car_category}\">\n\n                    <!-- STEP 1: VEHICLE -->\n                    <div class=\"form-step active\" data-step=\"1\">\n                        <h4>Selected Vehicle</h4>\n                        <div class=\"card mb-3\">\n                            <div id=\"carCarousel\" class=\"carousel slide\" data-bs-ride=\"carousel\">\n                            <div class=\"carousel-inner\" style=\"height: 22rem; border-radius: 10px; overflow: hidden;\">\n                                <div class=\"carousel-item active\">\n                                <img src=\"{$car_image}\" class=\"d-block w-100\" alt=\"{$car_name}\" style=\"height: 22rem; object-fit: cover;\">\n                                </div>\n                                <!-- Add more images here -->\n                                <div class=\"carousel-item\">\n                                <img src=\"{$car_image1}\" class=\"d-block w-100\" alt=\"{$car_name}\" style=\"height: 22rem; object-fit: cover;\">\n                                </div>\n                                <div class=\"carousel-item\">\n                                <img src=\"{$car_image2}\" class=\"d-block w-100\" alt=\"{$car_name}\" style=\"height: 22rem; object-fit: cover;\">\n                                </div>\n                            </div>\n\n                            <!-- Carousel controls -->\n                            <button class=\"carousel-control-prev\" type=\"button\" data-bs-target=\"#carCarousel\" data-bs-slide=\"prev\">\n                                <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n                            </button>\n                            <button class=\"carousel-control-next\" type=\"button\" data-bs-target=\"#carCarousel\" data-bs-slide=\"next\">\n                                <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n                            </button>\n                            </div>\n                            <div class=\"card-body\">\n                                <h5 class=\"card-title mb-0\" style=\"font-weight:600;\">{$car_name}</h5>\n                                <p class=\"card-text\">{$car_description}</p>\n                                <div class=\"row\">\n                                    <div class=\"col-6\">\n                                        <p><strong>Seats:</strong> {$seats} | <strong>Luggages:</strong> {$luggages}</p>\n                                    </div>\n                                </div>\n                                <p><strong>Price per Day :</strong> \\$ {$price_per_day}</p>\n                            </div>\n                        </div>\n\n                        <div class=\"buttons\">\n                            <a href=\"[[~2]]\" class=\"btn btn-secondary\">Back</a>\n                            <button type=\"button\" class=\"btn btn-primary next-step\">Next</button>\n                        </div>\n                    </div>\n\n                    <!-- STEP 2: EXTRAS -->\n                    <div class=\"form-step\" data-step=\"2\">\n                        <h4>Choose Extras</h4>\n                        {$addons_html}\n\n                        <div class=\"buttons\">\n                            <button type=\"button\" class=\"btn btn-secondary prev-step\">Back</button>\n                            <button type=\"button\" class=\"btn btn-primary next-step\">Next</button>\n                        </div>\n                    </div>\n\n                    <!-- STEP 3: PASSENGERS & TRANSFERS -->\n                   <div class=\"form-step\" data-step=\"3\">\n                        <h4>Passengers & Transfers</h4>\n                        <div class=\"form-row\">\n                            <div class=\"form-group col-md-6\">\n                                <label for=\"passenger_name\">Full Name <span class=\"text-danger\">*</span></label>\n                                <input type=\"text\" class=\"form-control required-field\" id=\"passenger_name\" name=\"passenger_name\" placeholder=\"Enter your full name\">\n                            </div>\n\n                            <div class=\"form-group col-md-6\">\n                                <label for=\"passenger_email\">Email <span class=\"text-danger\">*</span></label>\n                                <input type=\"email\" class=\"form-control required-field\" id=\"passenger_email\" name=\"passenger_email\" placeholder=\"Enter your email\">\n                            </div>\n\n                            <div class=\"form-group col-md-6\">\n                                <label for=\"passenger_phone\">Phone <span class=\"text-danger\">*</span></label>\n                                <input type=\"text\" class=\"form-control required-field\" id=\"passenger_phone\" name=\"passenger_phone\" placeholder=\"Enter your phone number\">\n                            </div>\n\n                            <div class=\"form-group col-md-6\">\n                                <label for=\"flight_number\">Flight Number <span class=\"text-danger\">*</span></label>\n                                <input type=\"text\" class=\"form-control required-field\" id=\"flight_number\" name=\"flight_number\" placeholder=\"Enter flight number\">\n                            </div>\n\n                            <div class=\"form-group col-md-6\">\n                                <label for=\"mileage\">Mileage <span class=\"text-danger\">*</span></label>\n                                <select class=\"form-control required-field\" id=\"mileage\" name=\"mileage\">\n                                    <option value=\"\">Select Mileage</option>\n                                    <option value=\"0-150\">0-150 km</option>\n                                    <option value=\"unlimited\">Unlimited</option>\n                                </select>\n                            </div>\n\n                            <div class=\"form-group col-md-6\">\n                                <label for=\"need_driver\">Do you need a Driver? <span class=\"text-danger\">*</span></label>\n                                <select class=\"form-control required-field\" id=\"need_driver\" name=\"need_driver\">\n                                    <option value=\"\">Select</option>\n                                    <option value=\"yes\">Yes</option>\n                                    <option value=\"no\">No</option>\n                                </select>\n                            </div>\n\n                            <div class=\"form-group col-md-6\">\n                                <label for=\"need_license\">Do you need a Driver\'s License? <span class=\"text-danger\">*</span></label>\n                                <select class=\"form-control required-field\" id=\"need_license\" name=\"need_license\">\n                                    <option value=\"\">Select</option>\n                                    <option value=\"yes\">Yes</option>\n                                    <option value=\"no\">No</option>\n                                </select>\n                            </div>\n\n                            <div class=\"form-group col-md-12\" id=\"license_uploads\" style=\"display:none; margin-top:10px;\">\n                                <div style=\"display: flex; gap: 10px; align-items: center;\">\n                                    <div class=\"mb-2\">\n                                        <label for=\"passport_image\">Passport</label>\n                                        <input type=\"file\" class=\"form-control\" id=\"passport_image\" name=\"passport_image\" accept=\"image/*\">\n                                    </div>\n                                    <div class=\"mb-2\">\n                                        <label for=\"idp_image\">International Driving Permit (IDP)</label>\n                                        <input type=\"file\" class=\"form-control\" id=\"idp_image\" name=\"idp_image\" accept=\"image/*\">\n                                    </div>\n                                    <div class=\"mb-2\">\n                                        <label for=\"passport_image2\">Photograph of the Applicant</label>\n                                        <input type=\"file\" class=\"form-control\" id=\"passport_image2\" name=\"passport_image2\" accept=\"image/*\">\n                                    </div>\n                                </div>\n                            </div>\n\n                            <div class=\"form-group col-md-6\">\n                                <label for=\"num_passengers\">Number of Passengers <span class=\"text-danger\">*</span></label>\n                                <input type=\"number\" class=\"form-control required-field\" id=\"num_passengers\" name=\"num_passengers\" min=\"1\" value=\"1\">\n                            </div>\n\n                            <div class=\"form-group col-md-6\">\n                                <label for=\"num_luggages\">Number of Luggages <span class=\"text-danger\">*</span></label>\n                                <input type=\"number\" class=\"form-control required-field\" id=\"num_luggages\" name=\"num_luggages\" min=\"1\" value=\"1\">\n                            </div>\n\n                            <div class=\"form-group col-md-6\">\n                                <label for=\"other_info\">Other Information</label>\n                                <input type=\"text\" class=\"form-control\" id=\"other_info\" name=\"other_info\" placeholder=\"Any notes...\">\n                            </div>\n                        </div>\n\n                        <div id=\"validation_error\" class=\"text-danger mb-3\" style=\"display:none;\">Please fill all required fields before continuing.</div>\n\n                        <div class=\"buttons\">\n                            <button type=\"button\" class=\"btn btn-secondary prev-step\">Back</button>\n                            <button type=\"button\" class=\"btn btn-primary next-step\">Next</button>\n                        </div>\n                    </div>\n\n                    <!-- STEP 4: CONFIRMATION -->\n                    <div class=\"form-step\" data-step=\"4\">\n                        <h4>Confirm Your Booking</h4>\n                        <p class=\"text-muted\">Please review your trip details below before submitting.</p>\n                        \n                        <div id=\"confirmation_summary\" class=\"p-4 bg-light rounded shadow-sm\">\n                            <h4 class=\"mb-3 text-center\"><strong>Confirm Your Booking</strong></h4>\n                            <h5 class=\"text-primary text-center mb-4\"><strong>Total Price:</strong> <span id=\"conf_total\"></span></h5>\n\n                            <hr> \n                            <!-- Trip Info -->\n                            <div class=\"conf-row\">\n                                <p><strong>Pickup Location:</strong> <span id=\"conf_pickup\"></span></p>\n                                <p><strong>Drop-off Location:</strong> <span id=\"conf_dropoff\"></span></p>\n                            </div>\n                            <div class=\"conf-row\">\n                                <p><strong>Pickup Date:</strong> <span id=\"conf_pickup_date\"></span></p>\n                                <p><strong>Drop-off Date:</strong> <span id=\"conf_dropoff_date\"></span></p>\n                            </div>\n                            <div class=\"conf-row\">\n                                <p><strong>Pickup Time:</strong> <span id=\"conf_pickup_time\"></span></p>\n                                <p><strong>Drop-off Time:</strong> <span id=\"conf_dropoff_time\"></span></p>\n                            </div>\n                            <div class=\"conf-row\">\n                                <p><strong>Trip Duration:</strong> <span id=\"conf_days\"></span></p>\n                                <p><strong>Car:</strong> {$car_name}</p>\n                            </div>\n                            <div class=\"conf-row\">\n                                <p><strong>Price/Day:</strong> \\$ {$price_per_day}</p>\n                                <p><strong>Seats:</strong> {$seats}</p>\n                            </div>\n                            <div class=\"conf-row\">\n                                <p><strong>Luggage:</strong> {$luggages}</p>\n                                <p><strong>Mileage:</strong> <span id=\"conf_mileage\"></span></p>\n                            </div>\n\n                            <hr>\n\n                            <!-- Passenger Info -->\n                            <div class=\"conf-row\">\n                                <p><strong>Name:</strong> <span id=\"conf_name\"></span></p>\n                                <p><strong>Email:</strong> <span id=\"conf_email\"></span></p>\n                            </div>\n                            <div class=\"conf-row\">\n                                <p><strong>Phone:</strong> <span id=\"conf_phone\"></span></p>\n                                <p><strong>Flight Number:</strong> <span id=\"conf_flight\"></span></p>\n                            </div>\n                            <div class=\"conf-row\">\n                                <p><strong>Passengers:</strong> <span id=\"conf_passengers\"></span></p>\n                                <p><strong>Luggages:</strong> <span id=\"conf_luggages\"></span></p>\n                                <p><strong>Need Driver:</strong> <span id=\"conf_driver\"></span></p>\n                            </div>\n                            <div class=\"conf-row\">\n                                <p><strong>Need License:</strong> <span id=\"conf_license\"></span></p>\n                                <p><strong>Other Info:</strong> <span id=\"conf_other\"></span></p>\n                            </div>\n\n                            <hr>\n\n                            <!-- Extras -->\n                            <!-- <div class=\"conf-row full\">\n                                <p><strong>Extras:</strong></p>\n                                <ul id=\"conf_addons\" style=\"margin-left: 20px;\"><li>No extras selected.</li></ul>\n                            </div> -->\n                        </div>\n\n                        <div class=\"buttons\">\n                            <button type=\"button\" class=\"btn btn-secondary prev-step\">Back</button>\n                            <button type=\"submit\" class=\"btn btn-primary\">Confirm & Submit</button>\n                        </div>\n                    </div>\n                    <input type=\"hidden\" name=\"total_price\" id=\"total_price\" value=\"\">\n                </form>\n            </div>\n\n            <div id=\"toast_container\" style=\"position: fixed; top: 20px; right: 20px; z-index: 9999;\"></div>\n        </div>\n\n        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js\"></script>\n\n        <script>\n            document.getElementById(\'need_driver\').addEventListener(\'change\', function() {\n                const needLicense = document.getElementById(\'need_license\');\n                const licenseUploads = document.getElementById(\'license_uploads\');\n\n                if (this.value === \'yes\') {\n                    needLicense.value = \'no\';\n                    needLicense.disabled = true;\n                    licenseUploads.style.display = \'none\';\n                } else {\n                    // Enable license option again\n                    needLicense.disabled = false;\n                }\n            });\n\n            document.getElementById(\'need_license\').addEventListener(\'change\', function() {\n                const licenseUploads = document.getElementById(\'license_uploads\');\n                licenseUploads.style.display = (this.value === \'yes\') ? \'block\' : \'none\';\n            });\n        </script>\n\n        <script>\n            document.querySelector(\'#multiStepForm\').addEventListener(\'submit\', function() {\n                [\'pickup_location\',\'dropoff_location\',\'pickup_date\',\'dropoff_date\',\'pickup_time\',\'dropoff_time\'].forEach(id => {\n                    const val = document.getElementById(id)?.value || \'\';\n                    let hidden = document.createElement(\'input\');\n                    hidden.type = \'hidden\';\n                    hidden.name = id;\n                    hidden.value = val;\n                    this.appendChild(hidden);\n                });\n\n                // Also include total_price and duration\n                document.querySelector(\'#total_price\').value = \'€\' + document.getElementById(\'trip_total\').textContent;\n            });\n\n            document.addEventListener(\"DOMContentLoaded\", () => {\n                const pickupDateInput = document.getElementById(\'pickup_date\');\n                const dropoffDateInput = document.getElementById(\'dropoff_date\');\n                const tripDaysEl = document.getElementById(\'trip_days\');\n                const tripTotalEl = document.getElementById(\'trip_total\');\n                const confTotalEl = document.getElementById(\'conf_total\');\n                const confDaysEl = document.getElementById(\'conf_days\');\n                const totalPriceInput = document.getElementById(\'total_price\');\n                const pricePerDay = parseFloat(\"{$price_per_day}\");\n\n                function calculateTrip() {\n                    const pickup = pickupDateInput.value;\n                    const dropoff = dropoffDateInput.value;\n                    if (!pickup || !dropoff) return;\n\n                    const carCategory = \"{$car_category}\";\n\n                    fetch(\"get_rate.php?car_category=\" + encodeURIComponent(carCategory) + \n                        \"&pickup_date=\" + encodeURIComponent(pickup) +\n                        \"&dropoff_date=\" + encodeURIComponent(dropoff))            \n                    .then(res => res.json())\n                    .then(data => {\n                        console.log(\"API Response:\", data);\n\n                        if (data.error) {\n                            tripDaysEl.textContent = \'-\';\n                            tripTotalEl.textContent = \'-\';\n                            confDaysEl.textContent = \'-\';\n                            confTotalEl.textContent = \'-\';\n                            totalPriceInput.value = \'\';\n                            return;\n                        }\n\n                        const days = data.requested_days;\n                        let total = data.total_price; // base car price\n\n                        // Add-ons calculation\n                        const checkedAddons = document.querySelectorAll(\'.addon-checkbox:checked\');\n                        checkedAddons.forEach(cb => {\n                            const addonPrice = parseFloat(cb.dataset.price || 0);\n                            const qty = parseInt(document.getElementById(\'addon_qty_\' + cb.value)?.value || 1);\n                            total += addonPrice * qty * days;\n                        });\n\n                        // Update UI\n                        tripDaysEl.textContent = days + (days === 1 ? \' day\' : \' days\');\n                        tripTotalEl.textContent = total.toFixed(2);\n                        confDaysEl.textContent = days + (days === 1 ? \' day\' : \' days\');\n                        confTotalEl.textContent = \'$\' + total.toFixed(2);\n\n                        // Update hidden input for form submission\n                        totalPriceInput.value = total.toFixed(2);\n                    });\n                }\n\n                // Recalculate when dates change\n                pickupDateInput.addEventListener(\'change\', calculateTrip);\n                dropoffDateInput.addEventListener(\'change\', calculateTrip);\n\n                // Recalculate when addons change\n                document.querySelectorAll(\'.addon-checkbox, .addon-qty\').forEach(el => {\n                    el.addEventListener(\'change\', calculateTrip);\n                });\n\n                // Initial calculation on page load\n                calculateTrip();\n            });\n        </script>\n\n        <script>\n            function validateTripDetails() {\n                const pickup = document.getElementById(\'pickup_location\');\n                const dropoff = document.getElementById(\'dropoff_location\');\n                const pickupDate = document.getElementById(\'pickup_date\');\n                const dropoffDate = document.getElementById(\'dropoff_date\');\n\n                let valid = true;\n\n                // Reset previous errors\n                [pickup, dropoff, pickupDate, dropoffDate].forEach(field => {\n                    field.classList.remove(\'is-invalid\');\n                });\n\n                if (!pickup.value.trim()) {\n                    pickup.classList.add(\'is-invalid\');\n                    valid = false;\n                }\n                if (!dropoff.value.trim()) {\n                    dropoff.classList.add(\'is-invalid\');\n                    valid = false;\n                }\n                if (!pickupDate.value) {\n                    pickupDate.classList.add(\'is-invalid\');\n                    valid = false;\n                }\n                if (!dropoffDate.value) {\n                    dropoffDate.classList.add(\'is-invalid\');\n                    valid = false;\n                }\n\n                // Date logic\n                if (pickupDate.value && dropoffDate.value) {\n                    const d1 = new Date(pickupDate.value);\n                    const d2 = new Date(dropoffDate.value);\n\n                    if (d2 < d1) {\n                        dropoffDate.classList.add(\'is-invalid\');\n                        valid = false;\n                    }\n                }\n\n                return valid;\n            }\n        </script>\n\n        <script>\n            document.getElementById(\'multiStepForm\').addEventListener(\'submit\', function(e){\n                e.preventDefault(); \n\n                const form = this;\n\n                // Get total price\n                const totalPrice = document.getElementById(\'conf_total\').textContent.replace(\'€\',\'\').trim();\n                document.getElementById(\'total_price\').value = totalPrice;\n\n                const formData = new FormData(form);\n\n                // Send via AJAX\n                fetch(form.action, {\n                    method: \'POST\',\n                    body: formData\n                })\n                .then(response => response.text()) \n                .then(data => {\n                    // Show toast\n                    const toast = document.createElement(\'div\');\n                    toast.textContent = \'Booking Submitted Successfully!\';\n                    toast.style.background = \'#28a745\';\n                    toast.style.color = \'#fff\';\n                    toast.style.padding = \'10px 20px\';\n                    toast.style.borderRadius = \'5px\';\n                    toast.style.boxShadow = \'0 2px 5px rgba(0,0,0,0.2)\';\n                    toast.style.marginBottom = \'10px\';\n                    toast.style.opacity = \'0\';\n                    toast.style.transition = \'opacity 0.5s\';\n                    document.getElementById(\'toast_container\').appendChild(toast);\n                    setTimeout(() => toast.style.opacity = 1, 10);\n\n                    // Generate PDF using jsPDF\n                    generatePDF();\n\n                    // Optional redirect after 2s\n                    setTimeout(() => {\n                        toast.style.opacity = 0;\n                        setTimeout(() => window.location.href = \'[[~2]]\', 500);\n                    }, 2000);\n                })\n                .catch(err => {\n                    alert(\"Error submitting booking. Please try again.\");\n                    console.error(err);\n                });\n            });\n\n        </script>\n\n        <script src=\"assets/js/generate-pdf.js\"></script>\n\n        <script>\n            function fillConfirmation() {\n                const inputs = {\n                    pickup: document.getElementById(\'pickup_location\'),\n                    dropoff: document.getElementById(\'dropoff_location\'),\n                    pickupDate: document.getElementById(\'pickup_date\'),\n                    pickupTime: document.getElementById(\'pickup_time\'),\n                    dropoffDate: document.getElementById(\'dropoff_date\'),\n                    dropoffTime: document.getElementById(\'dropoff_time\'),\n                    name: document.getElementById(\'passenger_name\'),\n                    email: document.getElementById(\'passenger_email\'),\n                    phone: document.getElementById(\'passenger_phone\'),\n                    flight: document.getElementById(\'flight_number\'),\n                    mileage: document.getElementById(\'mileage\'),\n                    driver: document.getElementById(\'need_driver\'),\n                    license: document.getElementById(\'need_license\'),\n                    passengers: document.getElementById(\'num_passengers\'),\n                    luggages: document.getElementById(\'num_luggages\'),\n                    other: document.getElementById(\'other_info\'),\n                };\n\n                const pricePerDay = parseFloat(\"{$price_per_day}\");\n\n                // Fill trip details\n                document.getElementById(\'conf_pickup\').textContent = inputs.pickup.value || \'-\';\n                document.getElementById(\'conf_dropoff\').textContent = inputs.dropoff.value || \'-\';\n                document.getElementById(\'conf_pickup_date\').textContent = inputs.pickupDate.value || \'-\';\n                document.getElementById(\'conf_pickup_time\').textContent = inputs.pickupTime.value || \'-\';\n                document.getElementById(\'conf_dropoff_date\').textContent = inputs.dropoffDate.value || \'-\';\n                document.getElementById(\'conf_dropoff_time\').textContent = inputs.dropoffTime.value || \'-\';\n                document.getElementById(\'conf_name\').textContent = inputs.name.value || \'-\';\n                document.getElementById(\'conf_email\').textContent = inputs.email.value || \'-\';\n                document.getElementById(\'conf_phone\').textContent = inputs.phone.value || \'-\';\n                document.getElementById(\'conf_flight\').textContent = inputs.flight.value || \'-\';\n                document.getElementById(\'conf_mileage\').textContent = inputs.mileage.value || \'-\';\n                document.getElementById(\'conf_driver\').textContent = inputs.driver.value || \'-\';\n                document.getElementById(\'conf_license\').textContent = inputs.license.value || \'-\';\n                document.getElementById(\'conf_passengers\').textContent = inputs.passengers.value || \'-\';\n                document.getElementById(\'conf_luggages\').textContent = inputs.luggages.value || \'-\';\n                document.getElementById(\'conf_other\').textContent = inputs.other.value || \'-\';\n\n                // Calculate trip days\n                const pickup = new Date(inputs.pickupDate.value);\n                const dropoff = new Date(inputs.dropoffDate.value);\n                let days = 1;\n                if (pickup && dropoff && dropoff >= pickup) {\n                    const diff = dropoff - pickup;\n                    days = Math.ceil(diff / (1000 * 60 * 60 * 24));\n                }\n\n                // Use already calculated total from sidebar (API + addons)\n                const total = parseFloat(document.getElementById(\'trip_total\').textContent) || 0;\n                document.getElementById(\'conf_total\').textContent = \'€\' + total.toFixed(2);\n                document.getElementById(\'total_price\').value = total.toFixed(2);\n\n                const addonsList = document.getElementById(\'conf_addons\');\n                addonsList.innerHTML = \'\';\n                if (checkedAddons.length > 0) {\n                    checkedAddons.forEach(cb => {\n                        let label = cb.dataset.name;\n                        if (!label || label.trim() === \'\') {\n                        const labelEl = document.querySelector(\'label[for=\"\' + cb.id + \'\"]\');\n                        if (labelEl) label = labelEl.textContent.replace(/\\(.*?\\)/, \'\').trim();\n                        else label = \'Unknown Add-on\';\n                        }\n                        const qty = document.getElementById(\'addon_qty_\' + cb.value)?.value || \'1\';\n                        const price = parseFloat(cb.dataset.price || 0);\n                        const lineTotal = (price * qty * days).toFixed(2);\n                        const li = document.createElement(\'li\');\n                        li.innerHTML = `${label} — <strong>Qty:</strong> ${qty} <strong>Total:</strong> $${lineTotal}`;\n                        addonsList.appendChild(li);\n                    });\n                } else {\n                    addonsList.innerHTML = \'<li>No extras selected.</li>\';\n                }\n            }\n        </script>\n\n        <script>\n            const steps = document.querySelectorAll(\'.form-step\');\n            const progressItems = document.querySelectorAll(\'.progressbar li\');\n            let currentStep = 0;\n\n            function showStep(step) {\n                steps.forEach((s, i) => {\n                    s.classList.toggle(\'active\', i === step);\n                    progressItems[i].classList.toggle(\'active\', i === step);\n                    progressItems[i].classList.toggle(\'completed\', i < step);\n                });\n                currentStep = step;\n            }\n\n            function validateStep(stepIndex) {\n                const step = steps[stepIndex];\n                const requiredFields = step.querySelectorAll(\'.required-field\');\n                let valid = true;\n\n                requiredFields.forEach(field => {\n                    if (!field.value.trim()) {\n                        field.classList.add(\'is-invalid\');\n                        valid = false;\n                    } else {\n                        field.classList.remove(\'is-invalid\');\n                    }\n                });\n\n                const errorBox = step.querySelector(\'#validation_error\');\n                if (errorBox) errorBox.style.display = valid ? \'none\' : \'block\';\n\n                return valid;\n            }\n\n            document.querySelectorAll(\'.next-step\').forEach(btn => {\n                btn.addEventListener(\'click\', () => {\n                    const current = document.querySelector(\'.form-step.active\');\n                    const nextStep = parseInt(current.dataset.step) + 1;\n\n                    // STEP 1 VALIDATION (Trip details)\n                    if (current.dataset.step === \"1\") {\n                        if (!validateTripDetails()) {\n                            return; // Stop user from going forward\n                        }\n                    }\n\n                    // STEP 3 validation (already exists)\n                    if (current.dataset.step === \"3\" && !validateStep(2)) {\n                        return;\n                    }\n\n                    showStep(nextStep - 1);\n\n                    if (nextStep === 4) {\n                        document.querySelectorAll(\'.addon-checkbox\').forEach(cb => {\n                            const qtySelect = document.getElementById(\'addon_qty_\' + cb.value);\n                            if (qtySelect) qtySelect.disabled = !cb.checked;\n                        });\n                        fillConfirmation();\n                    }\n                });\n            });\n\n            document.querySelectorAll(\'.prev-step\').forEach(btn => {\n                btn.addEventListener(\'click\', () => {\n                    if (currentStep > 0) showStep(currentStep - 1);\n                });\n            });\n\n            // Make progress bar clickable\n            // progressItems.forEach((item, index) => {\n            //     item.addEventListener(\'click\', () => showStep(index));\n            // });\n\n            // Disable progress bar clicks\n            progressItems.forEach(item => {\n                item.style.pointerEvents = \"none\";\n                item.style.cursor = \"default\";\n            });\n\n            // License upload toggle\n            const needLicense = document.getElementById(\'need_license\');\n            const licenseUploads = document.getElementById(\'license_uploads\');\n            needLicense.addEventListener(\'change\', function() {\n                licenseUploads.style.display = (this.value === \'yes\') ? \'block\' : \'none\';\n            });\n\n            // Initialize\n            showStep(currentStep);\n        </script>\n\n        <script>\n            document.addEventListener(\"DOMContentLoaded\", () => {\n                document.querySelectorAll(\'.addon-checkbox\').forEach(checkbox => {\n                    checkbox.addEventListener(\'change\', function() {\n                        const qtySelect = document.getElementById(\'addon_qty_\' + this.value);\n                        if (qtySelect) {\n                            qtySelect.disabled = !this.checked;\n                        }\n                    });\n                });\n            });\n        </script>\n</section>\nHTML;\n\nreturn $output;', 0, 'a:0:{}', '', 0, '');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(5, 1, 0, 'showSessionData', '', 0, 0, 0, 'if (session_status() === PHP_SESSION_NONE) {\n    session_start();\n}\n\n$pickup = $_SESSION[\'booking\'][\'pickup_location\'] ?? \'\';\n$dropoff = $_SESSION[\'booking\'][\'dropoff_location\'] ?? \'\';\n$pickup_date = $_SESSION[\'booking\'][\'pickup_date\'] ?? \'\';\n$pickup_time = $_SESSION[\'booking\'][\'pickup_time\'] ?? \'\';\n$dropoff_date = $_SESSION[\'booking\'][\'dropoff_date\'] ?? \'\';\n$dropoff_time = $_SESSION[\'booking\'][\'dropoff_time\'] ?? \'\';\n\nif (!$pickup && !$dropoff) return \'\';\n\nreturn \"\n<div class=\'trip-summary bg-white shadow-sm p-4 rounded mb-4\'>\n  <h4 class=\'mb-3 text-primary\'><i class=\'fa fa-info-circle\'></i> Your Trip Details</h4>\n  <div class=\'row\'>\n    <div class=\'col-md-6 mb-2\'><strong>Pickup:</strong> \" . htmlspecialchars($pickup) . \"</div>\n    <div class=\'col-md-6 mb-2\'><strong>Drop-off:</strong> \" . htmlspecialchars($dropoff) . \"</div>\n    <div class=\'col-md-6 mb-2\'><strong>Pickup Date & Time:</strong> \" . htmlspecialchars($pickup_date) . \" \" . htmlspecialchars($pickup_time) . \"</div>\n    <div class=\'col-md-6 mb-2\'><strong>Drop-off Date & Time:</strong> \" . htmlspecialchars($dropoff_date) . \" \" . htmlspecialchars($dropoff_time) . \"</div>\n  </div>\n</div>\";', 0, 'a:0:{}', '', 0, ''),
(6, 1, 0, 'SaveFormSession', '', 0, 0, 0, 'if (session_status() === PHP_SESSION_NONE) {\n    session_start();\n}\n\nif ($_SERVER[\'REQUEST_METHOD\'] === \'POST\') {\n    // Save form values to session\n    $_SESSION[\'booking\'] = [\n        \'pickup_location\' => $_POST[\'pickup_location\'] ?? \'\',\n        \'dropoff_location\' => $_POST[\'dropoff_location\'] ?? \'\',\n        \'pickup_date\' => $_POST[\'pickup_date\'] ?? $_POST[\'pickup_date\'] ?? \'\',\n        \'pickup_time\' => $_POST[\'pickup_time\'] ?? $_POST[\'time_pick\'] ?? \'\',\n        \'dropoff_date\' => $_POST[\'book_off_date\'] ?? $_POST[\'book_off_date\'] ?? \'\',\n        \'dropoff_time\' => $_POST[\'time_drop\'] ?? $_POST[\'time_drop\'] ?? \'\',\n    ];\n\n    // Optional: Redirect to car listing page (ID 2 in your case)\n    $url = $modx->makeUrl(2); // Replace 2 with your \"Choose Your Car\" page ID\n    $modx->sendRedirect($url);\n}\nreturn \'\';', 0, 'a:0:{}', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(255) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT 0,
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT '',
  `preview_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`, `preview_file`) VALUES
(1, 0, 0, 'BaseTemplate', '', 0, 0, '', 0, '<!doctype html>\n<html lang=\"en\">\n<head>\n    <title>[[*pagetitle]] - [[++site_name]]</title>\n    <base href=\"[[!++site_url]]\">\n    <meta charset=\"[[++modx_charset]]\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n\n    <style>\n        body {\n            background-color: #eee;\n            font-family: sans-serif;\n            font-size: 20px;\n            line-height: 1.4em;\n            padding: 0;\n            margin: 0;\n        }\n        body.loaded {\n            font-family: \'Open Sans\', sans-serif;\n        }\n        .container {\n            display: block;\n            max-width: 960px;\n            margin: 2em auto 2em;\n            padding: 2em;\n            background: #fff;\n            border: 1px solid #ddd;\n            border-radius: 3px;\n        }\n        .container > section {\n            height: 100%;\n            width: 60%;\n            display: inline-block;\n            float: left;\n            margin-bottom: 2em;\n        }\n        .container > aside {\n            height: 100%;\n            display: inline-block;\n            width: 30%;\n            border-left: 2px dashed #eee;\n            float: right;\n            padding-left: 1.5em;\n        }\n        .logo {\n            background: url(\'[[++manager_url]]templates/default/images/modx-logo-color.svg\') no-repeat center transparent;\n            width: 220px;\n            height: 85px;\n            background-size: contain;\n            display: block;\n            position: relative;\n            text-indent: -9999px;\n            margin: 2em auto;\n        }\n        h1, h2, h3, h4, h5 {\n            color: #494949;\n            font-family: \'Open Sans\', sans-serif;\n            font-weight: 700;\n        }\n        h1 {\n            font-size: 36px;\n            color: #137899;\n        }\n        h2 {\n            font-size: 29px;\n        }\n        h3 {\n            font-size: 24px;\n        }\n        a {\n            color: #0f7096;\n        }\n        ul {\n            padding-left: 2em;\n        }\n        img {\n            max-width: 100%;\n        }\n        .cta-button {\n            display: block;\n            text-align: center;\n            vertical-align: middle;\n            -webkit-transform: translateZ(0);\n            transform: translateZ(0);\n            box-shadow: 0 0 1px rgba(0, 0, 0, 0);\n            -webkit-backface-visibility: hidden;\n            backface-visibility: hidden;\n            -moz-osx-font-smoothing: grayscale;\n            position: relative;\n            overflow: hidden;\n            margin: .2em 0;\n            padding: 1em;\n            cursor: pointer;\n            background: #67a749;\n            text-decoration: none;\n            border-radius: 3px;\n            color: #fff;\n            -webkit-tap-highlight-color: rgba(0,0,0,0);\n        }\n        .cta-button:before {\n            content: \"\";\n            position: absolute;\n            z-index: -1;\n            left: 50%;\n            right: 50%;\n            bottom: 0;\n            background: #137899;\n            height: 5px;\n            -webkit-transition-property: left, right;\n            transition-property: left, right;\n            -webkit-transition-duration: 0.3s;\n            transition-duration: 0.3s;\n            -webkit-transition-timing-function: ease-out;\n            transition-timing-function: ease-out;\n        }\n        .cta-button:hover:before, .cta-button:focus:before, .cta-button:active:before {\n            left: 0;\n            right: 0;\n        }\n        .companies {\n            clear: both;\n            display: block;\n            width: 100%;\n            padding: 1em 0 0;\n            border-top: 2px dashed #eee;\n        }\n        .companies h3 {\n            text-align: center;\n            margin: 0;\n        }\n        .companies ul {\n            margin: 0;\n            padding: 0;\n            list-style: none;\n            text-align: center;\n        }\n        .companies ul li {\n            display: inline-block;\n            padding: 0 1em;\n        }\n        .companies ul li:first-child {\n            padding-left: 0;\n        }\n        .companies ul li:last-child {\n            padding-right: 0;\n        }\n        .companies ul li a {\n            display: block;\n            position: relative;\n            text-indent: -99999px;\n            width: 200px;\n            height: 75px;\n            background-repeat: no-repeat;\n            background-size: 200px;\n            background-position: center;\n        }\n        .companies ul li.modmore a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfQAAABxCAMAAAAUAqFnAAADAFBMVEUgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToB8YRCjAAAA/3RSTlMAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIzNDU2Nzg5Ojs8PT4/QEFCQ0RFRkdISUpLTE1OT1BRUlNUVVZXWFlaW1xdXl9gYWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXp7fH1+f4CBgoOEhYaHiImKi4yNjo+QkZKTlJWWl5iZmpucnZ6foKGio6SlpqeoqaqrrK2ur7CxsrO0tba3uLm6u7y9vr/AwcLDxMXGx8jJysvMzc7P0NHS09TV1tfY2drb3N3e3+Dh4uPk5ebn6Onq6+zt7u/w8fLz9PX29/j5+vv8/f7rCNk1AAAXa0lEQVR4Ae3deVxU5eLH8e+wMCigqICguSSiiUiauedSmUtYXVtysbr6u+WtrpmWy22xunmte7Ml762riVppmpaauZuaqKSmLbmgoKip4CKOCrIzzPc3nDPnzHNmgQGGQJn3n3OYM/D6zGHOeeac80Cr48Sl+84YzOajXEJSDGapO+aMagaP64nXyJ1FtFiOcgk10OLqkm64bnh02k6rZeWMfoEq4+z6uD54DM+ke6KTP0XB43rwUDHdFp3HmqHm82ifSTdGZ4IvajoP7wS6NTonoabzeJBujn4xFDcAr9FTJptNGaPDjUe33d3R+QJuAN4nKDnpjRtPe6Pbo+/zuhGiH6Dk4I0YfTxtrUG5hOXSRmEbT/SabSlF22fN+NcIlEvAK2/PiD9M0QhP9BpN9yutMgajguq8RsEMT/Qard5ZWv0fKm4lrRZ5otdoTa9QdTEYFfcnWq1GjeaJfpWq3aiEdkaqvsf1whN9AyqhSQ5ViZ7otS/6Tk90T3RPdE90T3RP9BrJE13nY+WJXkui33pItat+1Uf3C2nbqVfvbu0b+8BWUMsO3Xrf0SkyCC7RBYQ1btw40NVuviGtoju2aVHfG2auRfeq08j8CiH+sOPfMLxxeAM9XKavW7euHuWir39TVCsdHPEPbx0bGxnqV+HoPanKbVSl0f06PP7BxpSMfJoVGpK+ejYKisYDXvpyb/o1I81y0hJmDghAqRoMfH3lL2mXDAZD+v41M4aEoXT1Bs5Yl5yRU2jKyzp/cM3bQyPLil633dAp8zf+euqi+RUyTiYu+GsMLCL6jH3/m90nLpgXXEjdvuBvnX1QhtYj3l390/G0tLRje755a2hzlCmk4yNT567+MfX81dxfvGCrQdy7W05czjUacy6lrH3tDr8KRe9O1eWGVRe93pA5R4zUylk9AGa3Tv7OQBvHXguFU70XpFPj4rLBcC72P6eolZ1fSvQ63SatSi2iVuHOJwMROWrOT1doY/+rzeBc2LiduRRlbvxzPTjlGzNmzp4LJiqSbKN3+DidGgcmNayp0bv/5yQdWtb1uV1GOnLqCTjWcRUd2NoPjoV9lEdHHEcPvn/eMTqWtC2HDl2aXh+OBb6UTnvHnvaGI+EPxycVUeOgNnqj/+TRzskna2J0n6FbTKyAj33hwAu5dMj4tg8cuDOVdDW6z53z0lgRh3rAkV6/0bGEaNhqNGrlJcqcRu9+hA6tCK150duygr70gi2veDr1bT3YGZlHl6N7r2VFZT8Ie2Ny6UzGIGgEvXeGAsfRh1yjE/tvruLoO1Be0UWsoBmwNY+l2KiHjbgiuh7d5wwrLH8QbD3FUuTeC1EUWWb0Pjl0Kikcish8qja6K3oiyqtdIV11zWC4aqKquA+0XqZVYVrKvr3Jp/NoNQdakQaq8k7s27xxx6Gzxc6jH2PFZbSC1mAjS3P1Vggi88qM3iSdpdjqC4uBtFpZmeghl6hKC6h49Is/xE8ZNaBrp9vuHDU9IZ8i0+HFLwzp2DKiSbMOw+Iv0WKXF0TdimiRs2T4LfW9Ae+gqKHzrGkfgki3kYpNf46qIz3UIGbk7OQqiM610Ig4x9L9Vrd80b9iqV51dMLLrMpE90uh1ZiKRv+pdyMI2i+iomjP1Nv8YNX8K1oMgMArkRbrYiBoqa7peJDDs/5PPwCRftA590fnIIg+Z1leL1f0gdQyUSv3FkgmUDC6MtHxDa0u3lbB6F/CxlRaPKWDlk6p/gUE99Nivhe0ptHieVh576XsRGvY+LUKom+BoLORZbnStBzRdTsoKnq7Y6dZ1FgMs+YfUZDdHE7EUmXwgxNjKDCMrVOh6MthazllU2Ar7CIlaYGw+p6y77xg6zPKUvRQ9aEsr7v92LuL0S+fNtCBjJQf95ygjaJoWC2mVvrCd5ZdptY/y45+2Ev4WwSPwWwyRQVtgPkGij6F6PZBVhOouvbIIKtmEASnUXTkefdE72J0upc5h7LOwnqKKMm5BXYapVPWH6r/UfY+KhQ9+Y2HY5sGRdy9lFprhsc29gHq9t1IrRehapZNjYWhAG7+jhqn6pYe3VSQs0+JHk/RIki2UPQWUEjRpRYQJbBs4yB6nBo/uCe6z1FKjvnD1jDKRkI1mbL5cOBVyj6GQm9pmNOyYtHfEVYtehcW3kupsRqqp6mxSYcSQQepMdBZ9CMLp4+9v2/ndjffBFnAKQoKYyHpr32SHwwUFN4HjY0s29PQ+Iii79wTHespyWzsdFfj7/a/dR840Drf0tEHFrcWU7IeFYv+ARSJFP3m5eSir+N6KFZTVBAL2RBqzHIWfRRs3EHRXsj8jlJQ3EkT3TAUlY6Od6si+leUFETBVnQhJf+Gov5ZSn6vA0d2UZLXChajKZtQ6eh/oSirKRQfU3StBSyC0inaBAufJIr2OYv+OGy8SNGHsJhL0TNi9PXRcEN0DDvq/ugL1J0QW7cU2EaPNZU64vAeZffCYiZld1Q6esdiCoQVDqdGJydPeA6K9ym60thJ9CdgY7HjNM9QFK9ELzy+eBDgluio/9Smi6bqiz6Ustfh0Gjbg7YVlGQ2rXT0FtcoGg5FH2r0g8XDFJm6QzFMu6CLi9F1eylK2ZEo2ZFC0Q4l+qU3m8Ad0WVdlhVWX/TxlD0Gh/pS9p7N//sT+kpHD7/sZBe3t5PoUyjKioCis4mih12MHpBGF6TAQIusRR3dFP3BnSay+qLPoOzu0r/WWawkPEjJL3B39IllRv+AIuFt1yyLoudcjN40iy64CANVua+6I3rECpLVGf1/lHWFQy2vacfAA45Tst3t0SeUGf1Tin7VQVHvAkXTXIzeroAuuAwDBZ95Vzp6ZDKrOfo8SoyxcCjsEiVbbKKvr4boyylKhKrOSYrecTH67Sa6wIDLFH0EjS0s298gapRE0eZqiB5PSX7b0qPvqgHRV1G0VfPNleh9F6P3oGvRs6kxBKLFZ9MVaRlUFZ9LS1ecfRyiudTYWn1belEMHAq1RP9eiX6Ckm3VEP0birZD5X+covfcGj0D9yw0UrDXB4LAhg0UwfdQdaVVA1VDPQTtiyhInx5TDdE/oawLHGqWqd2yfZMo2VcN0RdS9LMOiqDzFL3hYvTbiumCdAB9TlLQA07cTtXlenBiOgUrmgDVEP3flPUr/VWWweJHSlJ8/vjo/6UoxReKiCsUTXQxetsCCozHjiQ7shJm7Q20mlKZ79N1P9Bqqw+qJfqLlD1a+kUb/4XFOkouhPzx0V+hyBACRQcjRSNcjB5+lYKc1n6O6OUur9NqQWWiB52mqrAzqif6MMqmwqHhtu/u2ZQY2//x0R+nyNgRivuocYeL0fUnSjlHp5SPgrWViR6eSdUhr2qK3pWyhaV/Aj0Ei4mUPfjHR+9GjdHCLynKbu5idGynaANK0TzbXWfD5lK1HdUUPcRASZIPHNlCiTEaFv0pm/nHR2+UQdFSKPbYnoHtYvSPqTER9jo0tLS6Uv0XO7gvOnZqR2ccf+yl+tv+e9rv7TT6oSqKju8putoEstuNFC2Aq9GfoIZpEmx0nJfZVrzY4YaJPoOyt+HAWPszKRM0X3KJvPZT8rNXFUV/mRpzHY+EDnc1urxctKYHVN5tn9lcxMJWN2T0HpSdD4Ed/WHKHoFqEmVfwVbQOUo2oIqity9ycJt83/epcSnE5ehIoI3ihFfiune/Y/Djb3x5MJ9meTdmdJ/92g1H9AplZ+vD7gKf4ntg4z5tV/dHxxZqbR0/YspeasXD9ehPsXQ3bHQ8TYvxsDG8kPY/jhWUnY6ERr3fKHugyqLfyzIVxpYjenC6W6P3oqqoUc2OHpBKi3cCIfCbVETZ5aYQdC2m7FhvCKK2U3Y+uMqi67ayLPNRjuh43q3Rw8epnvKv2dHxEBVHpnSoA4lv23G/OJt34lNaFM7tGQhJo94fGmgxE1UWHR3zWLpzTcoVXb/PndE1anh0LBBHoLct/eKLL7cczqfqO29ohJ2i6uTWJV98sWrPOarOR1RhdIxj6e5DuaLj1qzaGj0gkaVIjoCNfvl0bhiqMjo+YGleQDmj4xEjS1MYeaNGR9gPdOpIJOwMLaAz01C10fEunTK9CNeiu35XjWs33bDREbSQTqyLgAMDz9Ih42RUdXSMvULHzjyACkRHnyN0akMPnX309aiEiJoRXTYqhQ6kjdPBoZu/pgP77kLVR0f0cjqQ/8lNqFB0NPjXVTpSsGYQZNrom1EJzfMqc/uR9s7fd19SdgtsRTu/mULQsz/SxsGpjeHUwDV51DAmjtbDns85imZDEVFE0RQo+lGjP+z0mn+BWqc+iIWdKGr8Bc5ETk+mjdzdr3WA1U2ZVB3QoeLEszE3orwiZsfPNZv3NOyMnj/XLH62fbJwy5MeggO6rlPXJGcV06w4J3Xjm331KFW751cdzTHRrOjqoRUvdoJDXjPi51rNHwZF/Q/FBfOsbaPihQXx8W3hQNjQd79PzSww0ZR/JXnjW4OC4UDox5pX6AHn6vad9u1BQ14xWZRz8eDGmSNaQ6Oxgaq8SFTc87RaiZpB3/TWvv379+vUrC5cUadZ57v69+/VvrEv/nh1w9t07npb6zA93MMnpFWnrl2imzf0gR3/k7SKR4U1PEqrOajRPHZQsOD2+np/X5SLTu/vHxa3j4LJqNE8PqLGmZRjs1AuDfccPZpBjf6o0Twepq2VKJewq7RxuRFqNI9Qg9tnVV6JGs4j3u3R41DDeUTnuTn6Lm/UdB5vuTe6sRdqPA//HW6NPg3XAY+IX90YfQ6uCx5ha90V3TgN1wkP3bOn3BJ9Rz9cPzwaPp2QRdkalEtYLmVpiwfrcH3xaD5o4vvzF8xf8DTKJehD83M+efupnvVRq3h4eHh4eHh4eHh4eHh4eHh4eHh4eLSIiQmBKDomJhAK/07Dnx3317iWUDWJaS+JiQyEIlJ6TBbTEhpB4rIoHWS+HR41r/f+1lA1Vtbbuh7sBcbEtIOocUxMc6iaDnpy3N9GdQmAwr99jLSy9k29YVGvU/uYAKhuiYltCUWL+8dNHHtnMGqLdUbjIbH6S0VG492QNXgt2cQS2ZsfhMVco0X+yS/7Q6L72SjYYjsVtiBJjxIBkw8YWSJvx2OweNtoUXB6eRxsDTQaC5+DVUSq0fgNLPp/e4WSE+80hayjUVaUdeDj7pCEHDFZn4IxBcbCAZDdt42kicya3wG1wyaSK6C620jyHki6JtPqi7qQLKDgvz5S9AMU7IVGHAVnpejRP9Pq22BI3qHg8zrQGqyd69Vrk/WbTp9ZtEobDEknWhXPDkKJu0zkeMiirpD/giRiNX9/o2/z8Kj75xfxdR1qgw2ay22anLFeiNHhInlt0V/j7h360g6Sq3yUOQJWvG42fcnvyuS2ut9YuOLzhbJFf4fGveSpz5Rl//YF0PIUmf/Vs0PufWDSZpIJdZU7km983ezNhakkZ0NrEM2ONoTFmzT71nqm8k9vPHTvvWPiL5H5/ZToaa+bzVybQXJroHKiY3YHlPBOIHf6osQtvxdPqANZy4Vc5ltrohf2gcR7I9XoPrvJfTGQPZFDTlCiD4UkeCaZ20qOnhkKkTb6Moh068mkrpA9eIWcoUR/GpKAV8niTg6iczlkQ0zW6I+SxS94W6JtIo8HW6LvgqTpm0XKNCz6H8k9fjB7ibwchRKhqVe7wepFLqgd0QtPkCcbo8Q/yNyzlugPk2lNxUnAzwZboj8Gi63kM3L0rBalRF8B0d3klTZQ3F/MzKaW6BOFCXtes4t+rpB8QW57njxjkqP7HRJPMw08SE60RP8RFiOLWRSLErHZ8lusS776Ryw1dQPm7d5/4MDP/+sM4A2OqBXRi+KOkWt0AOJM5LhlluhrtFPn7yZH2kYfT84qd/TPyOmwWkc+Zxt9JLnYLvoXfycL+pR0TiD3D7dE76udS/pB8hdvm+j4TJ1WdQJp7IvAA1Q26L6cAuAAf97741Hm/wnw2pseWBuis1XPYvIVeQtagTVy9AYZzL4JVs+Rn9pGf5z8pLzR/VO1cwaNIFfbRo8jV9hFX45N5PFQYCaZH9udcvTp5DuwqnuGhVG20buZmOSLEroNZEq9mWRSPUi+ueAP4JdMf0A3pOC4PzCAo2pF9E54hSy6EwlkagjWy9FvV2fKkXUh9+psos8gp1mih5cS/WsIogqZqodVmwIe87OJPoGcZRd9FZqklZQeSnI8BliiryLvh2AdeZ9tdP1x5raApEUGuTuf+d0gCc77AFL0AJitZxTgc2ZNLYmONeTReWReTyjR77OJ1TSLp+rK0UcoD50i75SjZ/eLaiNp29A++iZlWWMAvcnvIQg6z0vhcvTxkDVIIh92EB0DjeT/0sglUKPvpakjBLPIZ2yjYyvZC7KRLDEJsu4cLEevA7PveDOAxedqS/TwkywxHmr0x8h5EDQ8R0OwHH1sveDg+g1aPZFM7vaVozMvV5b3d/voxlxZ/ifyv+7VEOiPMedmOfrLJesNbvHoz2RyoKPomMYSScFqdO+jzImEYBr5kl30ZcLM4PPEcYmH2U6KntXQ17feKNNPPgBeLa4t0dG3iOQSOI/e6Lwa3XD6zJkz6Xkkz3eAHN3qn/bRVcscRT/K7JZy9Csl603LIZnZEw6je60nmd0ZanSf47x2MwSTyH/YRf+UjIPFAyZhXpBRbAWzH02nTx0/zQvdYTaRtSY6pshbkBp9OPkpBCEXeLG+HF1RtD4aluhF65Z9LVn+kH30tGVfycueBTCQXAeB/wleayFHVxgTusBxdISfIsfCGt3rEAvaQjCDfMEu+ipyAGShx8UJcOPYWYpenHQgjQkRKPFOXu2JjtXGzhCi301ugCCygMl+cvT0pCOHU0jTY4ASPTPM1cGZztYccoUrPBssRz9vXm+yiXwOcBYdd/FzCNGxnewJwXzyz3bRd9HUCbKvyHwyqx0kt3CMsiMX+vv5lijx/eFaFL35gxCjty3kCX/t6PcWyNFH++n9/BeRX1ujZzV39ZAt4iozGsCqWzF/0cnRJ/vp9foPyS3ezqNjeKgm+mfkk4DYl71toze6pE7k9ySZf892MtEXJXzT1srR6wJ/4maYhebPqjXRZUJ0v2QWd4XVB+QMS/SRUrwL8h0Zy3ucrttNDtZOIDIHcvTnYVbvBDnVaXSZEP0Z7UFGi2y5ryb6MHVCtHZZ5EuIzSH/Acl0tpGiBwL4mk8BmMqutTc6ZpFfaC/B7KYZnPk/MqNZ+aPjVc3nRsBxcrBmcOYB8lq0y9Fb5TG7LVRvkStgE13/m3I06LeL3OYFTCCLeqNERPYGAMcYBKBZFmPRXHqg1kaPLmDxSFh4LyO36TTRsZlcqUZv4nL05lnkOChmk/v9NNGxlEzwcjU6viR3BMGify55t030oGVkeiOU+Cd5OUodmEOJpzgNeGycL8zunnx7wO7cqNocHf8ii2bcDDO/XpvIwq7QRm+XTT5uiX6tY6MQWWj9MqJjEslZUTDz7voNyYHQRr8pg5zgcvTIy+SeAXVh1mRKNrkQYvTANs8cUicTvstIjlEH5j6B5GO+5Q1FRCL/hFod3W8pyazdK5esP0LS+GfYRMcr5LlwObop49x52YUVZUXHJySz965asvagieTzsImOsWRWlKvREZdD8vh3S77+wUByR30les4Bs9/zSRaPR4mGx61H6COts8m+x5/jfFEi7MXM/KGoDbaRnSH6Xtn24DP9GhWHB0O2iBwNmf5X8lsfQJdSypkz95FrYWOqgYrUYdYdxSmQ6baRiXUgiiM3QDSY3ARZzz1U5H0UCElnWiX2Rwnfb8jTYbD+GdfaQDL0GE8tmjrhzfW53BCNWuHdxJ1REM1MTLwdFlEvbz5hMGQcWDIyQA2WmDgAFj13JO7qDOg+TdypSvwPNHokJv4Ttpq/uD7VYLiU9PXoYFg8k5j4KCxitu3ccydE3RIT34aoq/CAzwPzf7loMJzeMb0DLKIsv8zWpS/3gKzH7sSdA6FotDZxz0uQ+T/y9WljccHh2b0g+X8Vbbf7yuo/YwAAAABJRU5ErkJggg==);\n        }\n        .companies ul li.extrasio a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAA9CAYAAAAXgFT/AAAoo0lEQVR4AexabZAcRRm+fBxmd2dmdy+3M5sFQ8APxCiISFF+KKhBDZDszGwWyZ1A1JLSglJL/YNllbEKSn9QWohawQ/QBLRELH9oFVh+4EcplkZF4okYDZQhF3M7M7t3iblwd8n4PDvTVtfUZWe93WIP6bfqqZ6d6X777X7ffvrtvhsanCgJh3auFM9+yd3WNN1wwbom9Cxnb1Cs56U63YoSJSuAVYl3/K1EiSIsJc8ZWUZxpEQRlhKVWRGQkUzmLEMzdho5fbee03fg1fCyIS0lirCUKBHHvmKxmDdy2g/zmhG2kQOy+scTxKZEiSIsJYPPrvSsfjUyqxA4BcyQtFD+Vdf1teo+S4kirGUlirDyudwmElYeQDlPwsKx8FFmXoqwlCjCUrJcRBBRBkfCe0lYcXY1m89q708SmxIlirCUDD7TEvdYmnYTSOt2HhHV/ZUSRVhKlqusTHmvJARzc2GFQ/VVDw9dvpolwXedWV3Nm0xYQUxYvuX+zh8ZN/7fCItjuR9xIeKEEHHCuViOsSxspN07nzu+WBWDc7p6AGS1UrJhdVwOlgvoxImN9TNCOLRzPTr/xuGJIdRFm34FPvumzjSwb9ZlyWBcchCzfawnrc/F+uMzxy+DdbggIsKyrwlMp01YATKs6bPqI3wv6sjtxG9Zf9LeDvXSZAUXJ/0qxrx36OLhpcaI8AF91nv9/oscn8IXvcfzwGWFTBbPEkENE12QI206g+WzQmB7xSLrEHSdgo0LgegpK+kxQPvfX+/tm5ZTbYoMq+T8NtywY00/9afVo0+4CDk/vfZFguvkY5m802JN6Om3CEJOI1BB+Knx/PwUjns4PdNLJbr+E1cywEhagVV9ZcNyrg1K7i1YZHf4pn0PsoR7cbTZDdyFTOEzvmV/COXVR0z7RWwnt1/qDjVVqpcbo1vPa1lbzjli1c5tdUT9nKlS7SV+pfrCXhZ5Y9Rd1xh1Xso+qbcTWMdbW3sZbNQXzXo6ZFjziQyLJNJ9hpXIkgCUKZnY4tkMbffW1s+cjudO1OkUXMI2+V0LfsfcXeWV7Ju9knObZ7pf8k3n64wTYI9vOV/zLPvzvunuDCz7Rs+qbvJH6KsEKbD/PsUx9SXGWmmOOpchht8NWz6B4/nngK/SPtpJe2l3UHJuBW4KStUr0+N58BmWhP6KyN4kKWaK642c8Q5DM27Wc/qndU2/y8jpe/gXS5T3oLyD/8CKOmOFbOEiNMkkdA73NasSz0fMrRaC7H0IsAc8094Ph56Ys+phWN4ehuvGgXfFGMO7a8NjVi0EkU3D6Y+h7jcaljvWLNgFWXe35EHw2bNql0Lfo9D3d5T7EGh/8QBfgvjN78Df+Nyw7O0iaLvdhVk2y+6b0dfvoecfHEesd4J9EIn+/gQcAr5zuFwvSYviNYFp38f3XASo+y0BzgvwS3wLZ0zOl+Njbh/wUE+q88243IP33/VYWtVLxXhke4NKfX1guXdicf2UC88vV18uvp+OBPyRzUYD40TfHyOJwGcP4fkRlAdoM/8I0GnuZN0kW2SL13kRKT2G9i2OKyy/ExhLxMk4Y4dEzXETHja7P9BuYNtkZUtWJoVesyqZkKkf/e1CLP8G5b8AZri0ZxEbo3g+injmeOhnbszw03Wt9WNFObsc9P9iaZq2EQRxH/CQkTXuxO9SHy/e5fFl9Kxug5x2gZT2Ak0j/neKgpaX0X5H4Ps8cAD4Pojto7qunydnbD3ZKLICcZQiUfG4AmedZPCJYDtmbaMTp4GngCe8NpG4hxGscwiAmLzGRFA+g/e/QJ3rRT/d3rPQBmEXbLmb/Z+EzjmA5cJpQEJl/wiw/cyAqCPtOCC+t/JXFWHzz9kX9SR1y3gG3xnUtAcZxQ7Z5gBETR1h5XrOBxeCDLbj3Jzi3GJRSAsmAS6cyg3tsllybpBt5X1TlIFuvQhzPBVWdrTnG1nDW0W2lhz75Dr37AZICvV+7KHNtOnGxLKdYF/U8fRMZctoctEvRiQeiAr1fw3M09+0k+M9BZ3x+DzgScYJ/YE4eRo49m9rW9xnVPeEVWf9ORDmj4KSvVkmnV7JKsCpABvMwxjvcfpKkCh90DJdEcsHuSHHdh7gfOJ5QcRzHHvCxl/h+7jc14D/efQKEkdBz5MgGvk1+XNFZtSLfjmrAtE40P2gkdWPSgQlSOkEMIlv+1E+ATyVIDNRD8B3zbh1bSZzZoK4/jeR/3LD9Jc7vjiyIKDFTrMP776AY997Pct5y1TJfpW3zjnfL9c2cvdvWu7WeMf+NgOTC5rByCBh8DJjaJbtDYKEur2YZck7HgTezxjoDDzgBBdnEkFUHkdfc7Sd2U1SV1Lul97zGEC7GazsJ9a3CNxZ2nA8Iu9Pifa8gI+zwk2Yh8cZ/MzOImKPEGdmh4CwGS2YWS4W1pfrRc/2RBBtDH/2zdrbxQKRCQnz8goPbWMSPIgjzBv5fv+LN79AzPGTGy5f41vuh+lD9sm6IosgaTErhl3/xPcmyewgsqbknMm/mWUwK+IY6N95IJ63SWbjIPBboLOG8b8+MGsXiDhh5olj49t4HMTYvsjMmaRBwmJWRoLgvLL9UgmBNkqbz5cD+DKOY2HjIRDt92DfJ7mxMKPGMfbVzExpJ04VF/hm9XWwz0bdj6DczU15Fr6mjvk4nqF3F08PwsYBZliXgQimY1J4vLCmcHaPhLUyxlA2m60go/pKPqcfp/42YuJBeTePhMjqrgQuYaYHnF/I5S6MbDLG0fY2ZFY/AdheIi7jjwVNc1NIK52s4IjXAhN0ChcjncQg592UOMenCReKV3Yv4Z0WAxjByKOicPQ+klu3pMU6YkcHmbwB7Y/GJLEAhIshiMr5o1gAfGamKAJZvpNJpvU+FhLazcRjnmPb0/fhzjF4mY0xaBOZDO/dNN678W5rBndh4pkl74qw438Q+sUC2tcatS8mmXPBsM5/gbZRu7YOXcyJnGHxbpHHYBKQh6POVMl9k/ADSxIFfPGDlsimImI7CTwCfBZE9R6UV0zDZ/RN03QuFGNhX0kimET2hfoPklxIMvQHxtLA/N3O9iC7TLexd5hjNu0PcA5mIz3/ae9cYOSqzjsuwKDau6wJsAZME5UqqqJIlYJE0zZ9iL6rNsB6jYWCAq2apmmC0qYQSNskFPJIk1SEUKklbVOFkjZBRFACgRZCCuUBQoRHqNIQqWhxINjeHc/ugr1r76x3+/0833/96XTv3Hs9987OuB7paPYxc+65557zP9/j+/5fi0OJNYN9KV67DFjxTMzWeidjpD/6dknvWtbmztN+fajoGFl/zCG2WxvfC9wv6xmJq2nAJ3BnHa0FYNnGP1eAgJQTAasbsNq4YeM5Bi5PxsRqu853rF0OMBVV58hrJKAVtZVIfPpakcw2DH+kFGhdYxeltTfshW/jhF7wheib/wssqhTgsEXJpS/XdDhlgoFz6zkGNHchoXGyA1qc5Hba/0wEy6KePrMLXeULO4LWUgCT+PsCal2ThYpdJwGVKKWgAmFXclVmv/ppZPRrY+A+mtxHVHOLGvlRe4jDYtFjUynrhVwdsN7B2HZgUD40/2PnNux/zPui7EYGXiYdXYRjoei1kEJ1n3Z43XLgtIPzBBjw/hiHyaoG77BOtFZYJ6Fvt6mN/yi2Pe+vBSA0DVSRcsIaKLxOkKyYWwNp1jJAfgfztJp0/e3VxpjhHQe44nq2eWAd/EO857UALJNY9lYAWDLeAzK/YIAyESSq/QY419N3h9CF2I5f5frHbhwevhDQA/xoriZeFw38hWxWnOaoJWxwVATEcqQq/hc3CA+x04Yk2I6ThoceJS5bQNe5veAgaKH+zI6e/8aixtVoaG7YgvHNZ4A1dhBEArDEnw/Q+CxqSjwx08VlKtVfcu/he7Gf2BYBSwALKWnVharYsRTQbR4EMthVXOXmOk8BmFLd0pgzvpOGIGRJWAAW6jp/593mZzubym1EE0iby0hAyTqQ21+AkgUErAmXqAArxn4vjpl4AAAA+k7e2uMeYoAmzgPvfz+HR8McCXIAML5O/QlUpzBNuG2QhjMgSn1lYr80NzyTKD1j9uD+AUPmoiH7ImMYVAkL4KG/DRvOHhk+8YVgd5qy/rm/+CoWW8UY9Fl/mY3tLOvzTvpWM9Xy4xHYOoIACxgvUctPJNtM+01y+P24MXi4hxtIuAIKZh+addBiEyFOA2aFbAABXJGWsEO4mN+S5JMhZbW4Jq0xOv7+KNVxTUk79rm9bBRsX6nU1vDmf2uhVllYwi0aDwBdVjqawb4TIt3x2hWVzjpIWGyeBrZFNhUeOza9z9PD0/b3FFC5h6IS7rQZ7AE9NirN+n9mr0tpy13EUAFYEx6HxnpAlUNV9gNugTAZrZGC0tXtADT3zdy+euaWU9R3N4ACIHKg8PMeA2m7zhOsGQ46DPEv+3UA7AEErOPdHrbJ+ngkgNWkqXPnRaA6XM9elLpOPfXUE00qvDWCFuSDAbCO6WRo/lMeLpuaRcLvicrU1YuNFUV1FjvidPskHX9f0SDP+H8Dn9/ldGO8Ug0bGaDFac0GwBEwPbr17IN9nXbJkMI2sOVIFczrB1BvmLeLWK8ErErnEja7zCXMkLBeRk3FViMDMZ43VK4Yi8V72THbeK/a6/Ybm6P5SYtP0hxUETclMMBQb+OfYn3M89xGxz+et0a0nmdHt73Rvr9dgEeslb5XwRg1f7J5bt3ta4twH2LrNB+DBFjxc8RPCawwtBNHVWnsFGAE6DFue2GQl3poP7+E4X4Ve5Ybu10nJyaFxUHDk5e6+nlVBFry3Dwugz72FU7uop6WeEIS6sCGl+qXoxouHgAc7PTG4xgA9LPex1JOHy236zFH26LTYK2SnyNgMY+43jFeN+zAwatIWAQnP4Gtep7a2KXGLC+tORiQXGioRPpMlUGewVZ5M0DAMyMmTWuD906mDUAULzHfQx0mkLXKMcZDHKnYrnUf12Ito87GORkUwBIQ4e0zoNoDeKRqGp+peOyS6N5sILldIRD2M/gTwC1ZGEwyC2POvShIDilYVf2gEfFRwTipedAm0X2ojNFSNqjGKW8/E48m4y+iGnLick1JkIwDqckNvauqggK8pgMeXrXU3d4PgEVQrcIa6M/DUHbLKVA2tzIFZCRT1E2XJgj5GOfvVScy69naNf6QeXdHwj1KDuc+Otmvpi3ej2foHtzHYgBsHawbeDJZU+6EuF/XQy0cEMDSGl5PcGcIXXgQCUhqYJ0sExYR/wcu0bnncOS3w9h8wt0WZAtvxz43tNsiuVLidfeLMNfO8BXp/002GFHiAoESUfBTbfBbRPopoBruA3TY3EQsoyr5Jt+fglXoRwZgVMpHiWaPG6cfAGtnWyWcaHkME8/SQfjybrxXeI9X5tkCJZkLAIsYMUIz6pAkNK8elf6aq7n3EfdVBLA8RGMZwCJuD1te1YAV1imBs1sYp6+j50ht0uE8QICFpDOukIP2+/DW+P+aXur7R0z1vH+Fk374xH9d1XZFcB4SjmKBdp62ZVO9no64ILf8JjFPCtIkGTiCURn1gXivVrZaF1sEpHmXnJblaUzBKoQw8D6jcAF5SvsRsIgit80KyD5CvJQ+V8EBc/U+V9Hs2X2D+68TsCbNHsS9CLAwJej/nVXC8YvkGCGd5rVa1nTIMmjHBs4sn3Epc76bOEb9fwAAa536Ig8wxEfdCYhEVbCWVzCuG0Bug5fer9+0sIqfDxudRX7JEDYJFiAi7dSmsWsiYNRNYrfcDnX4FoDFRiMBNaoFZU45NjteMDZ/qhpmgZbc0YBWNlgphGGbpM8ELKsBrGZFgOXgv4B0ZeEHH+j2ecaxEGuk9B0cJ/Ez9UguY+/kUOF6ZQCLKH8AxA+w2TROrup8WwJ68Wri7GCcqM4yvPc9YMn4PTT0FsVc2fsi3roe8sGvkwHeQike9zFggP/0iguZdx4k6RhsGPKmSE1IH2zdoGWpPB9RLhuAUzbNIaoCpFKwQBV4KODpAFqoj51iuPgf0ez87XYANt0wfSZhvYiK7ff/QzZOdyd9wl5x+ti5hIXAwjB7+thb089UbcPCeywbFqp7BKxOc0u4AalP8wprGB27PtpQ62A1wfhOAjjPMK7dPgcsvnusSzfvldGboE7ipGqxXeV4KIl6l5Rn4PXo6Ojo8MqnWHwsbj+J7mXie+HdiIBEvh2noQPWK7ssJaSsBBM/awv7in15wZ/5TdLZfp+bCXL14mbpR8BqenyUB7/eSxpPncZfgKqWdeH9kubD/Xi4ybfyASuwuRrVkXITsS/hXInXqMpG24nGp98BK/7PjN3/KKAgb7CXJe8jcBJdr+RqglVH1o+YdOwvKEVYDCwKuIl6OdkCGWKD8PK5IXyxkdixygIgi5kUDO4rqoaN8mDVksoIy4TGhHTaj4DVdJVQIQdN45tKbZb99JL3kRbptaVGEYwK5cy8AzBMC0UAS+uqYRIgByFrG88w+ZVK8Uk/3y1l83IOF1kfA9YJntx8hkkzjzlILFFxp4dglRr+N5G7qLHgPTzEDWRGWTfOtgiAk8jMohExW9WNfmP0O+kSuII90ZqFednh2kboP0TBvyS6knzAyo7ZgsQtBcV+BSyScq0vZ14YvyICf/Ugky1ZRB73SD5YFBxISsZe5mEZCxw+RQBL14/hBqiFCoaGXcP6/TxhO1nPRuPttj7BIAEWLAvmofuBg8ROWBb0/14DFi8bwz/JjkXuoi+K886C9sRVsR3kEa7VrDcs4RVwcYP5tVEKO1wwIBYHCWlWUfAFAYvWdLsVPGAwU1Zm+6g/cFRxWAtNM1hHEK/bHqkDqewhEyl5YIpl3Db+h2SLI0SDZwExYQSswjFSRoWElCZJi34xjjftIIJFFA9ikXtbDoyvRwpgCSQg5CNYNNivfjwFrLWyY5mEddvBP0Kvgcjsp9d/k7WvBa7Ym1pbOGXhRGIhsTBNTb2hG7bJIAVBQfxF+nSJaamgdNXyRf0qYRexz34HLMjx3KM20zSK4rqCf1N65CLPBKmJfL7m5vPeQGYFoQB271uwo2IUJ4+14bmh3IPbnqYJLgaEUxtWGbsmQcI4l/CgKlCZnzmYCOWB5hsDP2wTHFB8t1NcWgSvwQWsYHDfMPyeQ1HmI98MwaLHr0WpMjyUjMfv5WH+Jt6nlnuUGiSLkv5ggHErKRe9ag0ohA0wGYsbi/++KqZJAhuhbXHVcDEPtBSTBYdWjLwHQAYBsAK9zK5p8+jV5RWT6pT+ncBfOL08v+5yjObQxUBlA20P4GA//8DZPbG1rZAI0vhZhwWSNnZV64M4rBwvYT5ozUKxzZqza3MNrq1wGhpAhnEeeyrEfuQuNo1eG34wvI4RnOI8iCZnQAFLBvcPCSBM2vpaAKp1a3EvNobzFY8FY8TB/3K6WeOUQVQOlLG897BxTTf88zN5jNVS445/ipQJAVaOLWvRVchARayTdKAAawcEfnUAVgpUEA7C5e7Mo88CMEgwgI/WFI1nzdj4u/LuuHckKLzD1p6xdhvSENK/IutxxPC9Ri5g5c+3Ql/sugDpUwAUkhzgJSpsNA4avzM+A7kmwaeAHWOjYAbB1TkA3v+AFSQayxe8luhytxvdVL+HMDfE4pdtHAtuw9qrzXIRQOUbdM652V9o0/nSxsI7Lf49/i3vM6GfjL7xbvnPs3b9z3QTnBnjsogzwzvkp+diR7BKCP+YC0BAG2SwAGt8x3QErBrACgZVG/OnuSYSi6SkQKU9D3DaAQTl8yMknGOrbKt/4x/FuWLP5yL4unCSqGJQfEGhjOSdG4dVok6BXsT7wXtv1/8wPGku/TVFSCjp64CDmEAWhgqAmftAio2HI+rxgALWJ0L+4BfXGLDwFP6ic8QDoAdWAIvN4mycz8K5TYgBhHoUbehlg3aZRsQweXrxJg5XusILimfJbVitEjYseLqV1nGbAIFNMhiAdXEtgMWGj0ACxzybGInJo+tfRf02YPk7Cyx9P/xirClsQlTBKTM/4keDj60KwIp9Z0nMUAxBaePX/Jy93+2mihmekexetAV/xyEAnxuVh+I8DSBgfUwSFhztawxY3MsvwW7qgDWvNIttqIMq4qmJHuRXvAdsIGluYYmwhkVxdVFQI8Yz/X8ELO5b44I1Vtz8nl+5w+btxhkCgGFTyHuFsvBpqIOcPRw6+YBVTWl63rM+gw0UKQqGVWxxXs5tzmmYVDBDifPX6lkgaQ0SYBlI/Vkwut/Cd9bShgVTA5KV+LH8lNx6HhuZhcdJAk1LWiZ9bVq6gMrToLB5YGVANclP0ckm6sO2QTKrKtCwkQYasLqnUfmUPG2YE2wj3429KatwqdZRjN1KW3Y8XX2Ala4bgJJx5nn/kMKoCkUUPTUJ5twONxt43SN7bl8DVgSI4eH3BS6qf4cJdC29hAaa79R47L1d6wDWAQyefkK8pDisnkbqhk0RF3U3hnY8VWx+v6+FRBUsDVqohtbfg9hYtFn6FbDg41fVnCoAK0b2s1EpCLHXWWnJkoh9My/dr536Aau0BJZR3Rm7W9PCcTgY3Q7s0tbYxwaIwG9dYEkQrcy3qei8lnFYdh9XJawR7Tp2sIz6xn5tymlTBBqDqgoSyXwgMJAGLvbSTfFbSKEYmOOG6mcJqyrAivUMKWUWSB7v47pp3UO91hKwBDJVhxvIcB/zMoMnc2rmEP/YDHtJ4xyASHfy936OIqh8FxWM/L21jHSn5L0i3U09bGea4JqFbMyZGiDqf1ftgFVD4mgcL6EaAE2Mbs8Gq7HI1tDRa0iVa96RMqIUeiQDlqSMwFuGipwcbgKFeg4ggkp5fhj28wGrd0nI9Mm8x6rSpP0AWgvt/XRjtP/1O2AhUSFZOUgsUB0nBZFeUswQLBqKrf7xysYhSXhR7trIRd0DwOL6wZt3Gbzq00YQR55XmRw4ncZEUFsfzy9EquQO/O4AhXNcZbM6BNYGl9qeo8y7Ns2RDFhxDJQ/mzvE6nEP/6trM8Zn3rTrYi9zep/MSHe+IwDF1EEhCOib8XrXClwBtHA8zB+ao+9Qo0Dz3+8qIe/wqIvt037+fGJb6sUrFm5tOGBN4zFc+QSRxIr4pSgEVLI9p5chqx5WyTMuYQwLDYtI1ilbzis4/iVAJYvjSn9TgU5ivsz9/iQno7MyZEpkCnUgHod0n3gP3QJWcwAAy/r7OpIDa8UA9qPxM3VJVxxEhJUoHqpTLmEskoG9ke/wTKm/WOdY4/wT00Ucl5MJNGbsd421z/mwZDf6oAzdkOgNDQ2dviZ8WMMjfxQ8lk+bunrqymmDqI9hWXE0ELT1hMAvSkZGBgcg+IN+aLsWJf8vXO5rjHJfipxezGNh8BP7JmKEkBiKcLrH2oaUjYrjOJIlrGU7xDjMVK+S5OQ6QUDjJSYP3njFPxFTtz0HsHjxPFWKH8kwBcK6xos0R3iQ14XcT70AXbePASu1Y+1wT+Fe+N175ikMvO54KRP7lU+il2Ynahc1CoMhBuseqIXp6X3HvJ+iBOylgJbLe3TK1jfh5ZwvUDWHheQq44siCuQkJMnW1cOOoKXvkw8HYV4VVXOsz74GLBKWUXFUSg07Xp002ppPUqM0/1w7pZfJViPH/5pwFg+IvoP+6oyNEn8XjKNNHX6sGWptRhtr3wJWAIvhE78evHM3x8/0JCVnaOhX5a2k7P5K5Zy0PLsq5JIiQ+R5r4pQEFmMhwWwQuUiNqzIZojMqCRtLxZQBcnMlxQ2ZeWjdB3xJrmUmakaNhLKZIBWlMl4jrpVCalO3I+ARTgH1Z1Vt5EKMTF+qQ6w4t2u9bWl9jzvzaOXielYAMW0G7+hkXk1hOvUCViYUyjMAWA1WUfwug0GYOkzJB3/XigCsZs+a1cLAxgStBpShB6wP7G/0lpzY29B557zar7k8tV5gnLdWASV6/pmeJzNUaYcORHIXi49VxWkcZ1Y/BPyQBWwwAvlaun+TMAKgOYesw9GEC17/xiH2VwO2E+xIfsNsKCFobQZY0RyAezrUgk1VtJ67B7mHHTm8gArzv+UsUVQn2De17M97z+pa7xhLKoe/nBbJRxfaJiEOAgqYVT7sBfZdx+lj8DccFyNquGxtMDQsKACrkkRjCQ3zEjO2hHMXnhz04Vvq62Qqm8wagmS2Q/g0HBhx4WVpwpCY8JYAbxmVAWzVTneJwj4i/emdza4AUhzX75qSFvguhju4VAqY/eLFMt4suiv1QbS72FT61Oj++2sD1env1AHAHAfOkQ4PHgOnhg/Awh08hLGsfAM7Dv/pgIUJDXn17vsetzil3vJVcIGrA4a6wCVqhcX1ZIXNF2GKytcq2rwVeXnUbNdPaV8RkrXB6nO11gQkzFwMtnKkSK7Hqmj6tpqBBmqWjNqhgommKT0ZJFFJbDCGyRa5RKqICffe1JwSSv4OmCp346gteSVfrSRUA/KFICdtqRZJAiXsCYnR88/OzyXY/oFsAyUP8mzYm4ohw+wVik9xE1NiX2oaFCR7X7+ytoU9DSAGBJ4kUKqOAZUxs0l8M/y96pBK8bjUd+T67EmKNmGEb7U/Af66bUBrBjiMHKrq4W0HdQHDJ+p5JCKaiaUNgJIClCEUIbjMhclUcWI/CFi9yv8X5uiG/WQfugj6vpcgwfsIDAeN3Oxgp7ZNqdUFWxJFUyAL90wGE6J4mbRRS74PDWzgRpdIgqee4kHxYKDJBWLY0n5fgscRQJnjTD/EQAqjGW6lIMCKQUvGyozzwEJC6N7XsVtjRebIvxZ4rRCRYOzKz7vKkwbsmHCoAod0bwKgBjQlpFCI1DFA7XHgBUlnjdbH/8TQOu7Fubwk6G/dV1KhSeExOvPjEia433D8NXxsx1jmewh/y0bkIdsi5OJ/zJubVHDshDKRqHHxQENsy28u2R3AkiK8F/F05PseQyxrr62Gp1BRdxWE3gTOy1W/Z1EZ2x6LLwioQ6wkwJcU8F7lrdIuU9tVjbW/kPqy/18X9Ko8tjSXMte5RJyvaCmPcqceBbBzO5NW38jzF2pdSFGhgh2Uyb9ElqDNEX8lSiQmHsHsKdfseBgjSeLKkZzSzyfAW1zzrncUd9Jo4lj1vfLgni83z2j206HvtmA3A39Y9vL8KilQJVer8eAdUywKb0daQc1TaBF6EMCbmX7Pl7987OpgTfQd0i8/ufw/+NyNxC8RVAkA1ozDloYOwnuTL05q20mfs9KGMWQyqIDrKY9ux16ZE6pQqqgSNcs1mVBqmAnu1X0Chp/Uzy5CkR2f3g+GPNz2B4WxHixe/MFry8bQ4Y3iWuJ/RVa4YIPv1YJK5V4kXZYE9ZcMh5/mVp/cUyrMTTECjr6f7wGFC7w+DPPDlYPwY2mazbMztnyfFdU6KxxpmNWIRIR8gWiymuXreJ5/HyRcdPicwsVph9nPgSMcIXFcRRZBwgDZHs02GujY3dCXx4/Uzdg5bAmzEf10JgdLouf8Z/XcR1vx6pJGkslspM2bDjb+voGfYZg1TtOPvnkkcJhFAIFUmWaXsVGNi02AGkSSCllFzxGaTL7G7bg6EtsjgRuoh5GNaqAKvg5hR8EBtGl2EJ5eafOGbsl3mMRWwrjohCpVMP0GvG6npPY4rN4PYuqShGE7fuPOWEgjUPiLvLTmG/sNkgUABPgw3wUoEiuhV6GWodkE4j3HomIpHBoksv2S9Umit5CHkmfKkfP3/UZKlcTmjDvgIMdi6R9xkQQKbZQHXistQxP9LsVHE0fNOyO2LmY+5LDVgT+z1KNh5Ac2WHpl4Ou4FqLkjiazXsBO9YAjf02oyrskqoLABaxSxUAVvwOTA4XGqjsUtoOBnlr95gEdgGxWyX6xAv5Jkts/qSpfi+j/oU+b4pgVephaLItAO/POdVYTHJpE3AJmE2brQWvCMZXAG7CjOBIZ2wucgFnNm35NYyn1sfdePJYcOLMZpFjoOQaeWAVY32oAoOKxoOF0sNBqcV72ki3cWCbwE5U1CAeQQugZUG6oXmuSb8Z15PqyNhwZ0ejbJF7I7QEsGGxAuqqp4hXk4BSVEUcIZy+LOQAiHhdo0r4vHupfjhZA4Ef4ADnE3MrGyTrgmo9lM0CZGEZxcWPFAPLA+tiZuPFr5sxIJo0iYSwCA4rG+P39ziPP/Nm/d5AkGp8Bv4cvupgttTOZBjfDnAR8GzXe2DSGHLjfKSAobWDF5Z1HFLRWkSmY9inaAbzR8kvxq31fPAwOfmC1zPnxMw1rDAFBxnrYt4rUnu9gFfMcfSueO0yB0E4HOcBV54hRVBif3mARS3BUDH5+a4AK/kedQtNevsPefEU2Gmg85+WSnON/f+3DIx+YmRk5GTzNKwHyODUWr9+/ZnG/PDTVqrr3TamL1t7URKVYr2s3yu7IgzkwUeRlwBJHq6nOwh0AI1JyoMhHZC/xanlxP4TAB0Lecm/wzt0snBn77Jg0QiQRR4q/OGctKg7c4GqNm2AIv8XrzjAGlXBshIFwCpeb4Fu1rW5rvOp76HQQTwdi6hc8JHZpv8XwJHr0FfkSSfXkuuw+SIQrTgz2qD3yvLmS5cJF4ErPQBal68kWPe08Q9wLR1CbFoH2RZ/J0kcm5fWBV4zaiZi+wLkWBMAFXOKGiT7X3xWvIeiuE8wBy6Jtdvm3+F6y0hcebFZvLB/uddxJ/PIGGiMAZAA5Bk3MWcaN7mmJNTb2HdhYlBxDa7veauNppH5kfUQr1k2yRvTiEvYS7LtRgBkznMAiyjxXwEMThreCBDssNqCZ0Xg6Ra0kIAMXK6wvr8P2KipUARgRGiCvT9kQPYg+Yj28/esTQmkQlDonAHeVwGzSqLpI2ixECg42TB1h8rCiL6qiJLd3gFIyf7zXYjOGsYCGh8mYFX0gSKteZGM/yJNhPeM9hyNAhdNsU+UjhdS5LoCSpEGxrYThsE1ctqzACvME9xrUdWAFlVoijQ02yWpHsM25pvmFTYQxuS0ND/vsybZwgBqn5tkwxkAniPJspYiFKau2lg/QbUbDiPsigFkQ4vVkS6WOWAnJeWQbJDQ45qIcxHAfLN9/kokTHjjORh5N6nnesJhNLa80IOgOl9tfTyCtM94ssatsWtNA1gkONt9P8AzIkg1a37KzOfMGVvPYZ+IOQWnAyqvxl+QVvinoIihgrO9323l5zdXxLZwbAQuk9x+DMoXa/fbdWYFQid1aMEG9ryN82+oikO/lab+rEZXTNqOc07ZAx+72R7aNxGr2cwuXT3SbFdHuRH7BJ4k4lG6KYlEoOWkeWKoDcfiRGxX20lLfkcdoUny6IZyWTFfXD9eS+9pY3xcmw0GoHRT1YXfie/CKA1VCXYivKz/R8UL1CqoVHityBGtK2AxHSf3zGFERDll/WF2QDqx96cAcFRaHDeEycDGSS0BJGaeS3r/ncBc4IvZgWsCdGXmNz0gUfeQhL0yz3WkAgH0Hv/1rIPio5g1sE3a2P/CJMGLp1APLfwlZ6+UflH1mqR65kf3VjKU6AQCMGFZMPXslIqDPI9JQWV0dHTYJKS3ou5RTn7j8Im3w2NlPz9tYPaMgdMT9vO99v4lOOPxOsK7lUpwtIqpYrNJ2tDz2VRskJdts/AgtaH6oegk1+z2/nv5/aKl3um3PBFi/YVUJfGx4QAW1sXMGy5+3bKtk+wxak3kg3kVYEvL+h/OlpcYd1jPhJfkV75eWxLLzCDjip9/TgzWOuxWgCUpPl49en0HqW1d5eNLT6iyCyd+r+vAU1zPBRufvbXSRV7u2oy3m7nWNaO7Xa3TAs8ppFBbqfqy19I4cTqUXQOak27uU9enz8Ndi1WBaIwzjOPrQgqiVTa2HMApG5V/XE1Alb+hHkg2U/q3aDs4+jqyX9pwRdZFeZCov9hEzrh7MvYBradwTBpvFdS89G9HseDo6+jr6OvIf/0vj9NbYMKQ+00AAAAASUVORK5CYII=);\n        }\n        .companies ul li.modstore a {\n            background-image: url(data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QMxaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzA2NyA3OS4xNTc3NDcsIDIwMTUvMDMvMzAtMjM6NDA6NDIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE1IChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkM1OTk4RURBQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkM1OTk4RURCQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6RjlCOUZEN0ZCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6RjlCOUZEODBCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAACAgICAgICAgICAwICAgMEAwICAwQFBAQEBAQFBgUFBQUFBQYGBwcIBwcGCQkKCgkJDAwMDAwMDAwMDAwMDAwMAQMDAwUEBQkGBgkNCwkLDQ8ODg4ODw8MDAwMDA8PDAwMDAwMDwwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCABLANwDAREAAhEBAxEB/8QAuwABAAMAAwEBAAAAAAAAAAAAAAcICQQFBgoDAQEBAQEBAAMBAAAAAAAAAAAAAgEDBAUGBwgQAAEDAwQABAIEBgwJDQAAAAIBAwQABQYREgcIITETCUEUUWEiFYEjtRZ2ODJCUmJyonOzlNRWGHGRobEzg3U2F6MkNGS0JTXVJsY3SBkRAAICAQIFAgEJBQkAAAAAAAABEQIDMRIhQRMEBSIUUWGxMkKi0lQGF3GBwSMV8JHhUlPDRBZG/9oADAMBAAIRAxEAPwDfygFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAV35F7Yde+J8qcwjkDkqHYMpZbZck2n5SdKJgZAI416xxYzwNKQEhIhki7VRfJUrVVsl2SJ4tF2tl/tVsvtlnsXWzXmKzOtNzimjjEiNIBHGXmjHVCEwJCRU80WsKK+5v2964ccZbLwXMuUoFoymAYNXC2jFnShjuGKEgPPxo7rLZIhJqhGip8dK1VbJdkixkeQxLjsSorwSI0lsXY77aoQG2aIQkJJ4KiouqLWFFa8v7k9YsGub1nyLmGyhcoznoyY1uGTdfScTwUHCt7MgRUV8FRV8PjVbWS7Ik/jnmTizlyLIl8bZ3aMvCGiLNjwX0WSwhfsSejHtebRfgpAiL8Kxpo1NM4PK/OfFHB8C1XLlPMY+Jxb466zaEdZkyXZBsoKu+mzEaecVAQx3Lt0TVNV8Uok2G0tSE2O/vUWS62y3zDHE3V0EnbRemgT+EbkARH8K1uxmb0WZwzO8M5FsjWR4JlFsy2xvGrY3O1yW5LQuCiKTZqCrsMdU1EtCT4pUtQanJ39xuNvtECXdLtPj2u2W9on59xlugwww0Cak4664oiAiniqquiUNKuTO8vVCDdfuZ7me0nL3bPWjxp8iLrrp/0xmMcfTw8/U0qtrJ3osdj+XYtlePx8rxnIrdf8altE/Hv0CS3IiE2Gu9fVbJR+zoqEir4KioulSVJV5/v31GjPOsOcxRiNklAyatN5dBVT9y43BIST60VUqtjJ3o/IfcC6hmYtpzA0hEqIilZb4I+P0ktvRE/CtNjG9FqYuVY1NxmLmke+wSxKbbm7vGyM3wbhlBdaR4JKvGoiLatqhblVE0qSit1w7y9ULbcvuqRzPaXJW5Q9WLGny42qf8AWo8ZxjT69+lVtZO9FhsOzjDuQrIzkmDZPbcssT5k23dLXJbkso4Gm5sibVdpjqmoloqfFKmDU5I75X7HcK8HzLXbuUc7jYtcL0yUm2wCjTJjzjIkoK4rcNh8hHciohEiIqounktak2HZIjG298+pN1ltwovMkFp51dBOZbrrDZT+E9JhtNj+Eq3azN6LV2i8Wm/2yFerFdIl6s9yaR+3XWC8EiM+0XkbTrSkBiv0otSUQhyf2m4D4Zv7WLck8iRscyB6MEwbUkOfNdFl1SQDc+SjPoG7auiEqL8a1VbJdkiNV9wPqEOmvMDXj9Fkvi/5rfW7GN6LGcbco4Dy9jQZfxxksfKcdOQ5EW4Rwda2SGkEjacafBtwCRDFdCFF0VF8lrGoNTk6jJebuLcRu8mxZBlrMK7Q9qSoYR5UhW1IUJEImGXBRdFRdNda6VwXspSPrfkPzh4nsMzw586rdaqLWj9u1NHQ/wB5ThP+24f0C4f1aq9rk+HzHh/UHwf4j7GT7o/vKcJ/23D+gXD+rU9rk+HzD9QfB/iPsZPuj+8pwn/bcP6BcP6tT2uT4fMP1B8H+I+xk+6SJ+fuH/mj+fn39H/NH0vW++9D9Pb6vo6bdu/d6n2Nu3Xd4aa1z6dt22OJ89/W+y9n73qLoRO/jGu34TO7hETPA+cH3D/1vuV/rCwfkK31dND231LZdNe59s426zcn49mMpp+9cPRCncdQX3PxlyaurxNx4IjrvJGJzibyTXYy4mibW1qbVll1vCMi73errkl5u2Q32c7c73fZj9wu9yfXV2RKkuE686a/EjMlVa6HI3J76c63zjbrvxJxzidxctV55SsscbzcY5kD7Vngw46PsgYqigslx4AVdfEBcH9tXOilna7hGbnX7pXzH2Mx+55ZiP3RYsZgPuQ495v0h6O3MlNChG1GBhh9wkHcKEaiga6oiqQkiW7JHOtGyP8Aby71F5sBHUPGOQcDmNm42DiuRZkZxBcQVJtUR6NKaVNU1TUV0XaaeDg0ZxqzQ33PsttufccdWs4s6/8AdeXQrvd4AqSEQtTYtqeECVP2w7tpfWlRTmdMjlIqBwl0i5X5/wCM7lyVgN2x5Y9vuUm1t49cZL8eZIeitNOl6ZJHNhNyPIg73BTXzVPOqdkiFRtHX9UeYsr62c/2hm5nLtVmm3ccY5Pxh9VAfSJ9YzpPNLqiPQnVVwV8C1Eg1QTNF2ylCrhl0fdd5VyVvJcE4agz3YeLHZhye+w2lURnSXpT8aML/wASFhIxEI66bj3KiqIqMY1zLyPkVn449vXmzlDiKDyvjtwx8RvcY5uN4nIlGE2bHAlFF9VG1YaJxRXYJuJ8N6hVO6TJVG1J6b28c0ziw82XTg90bgxjHJttu9tyuyOtHrbZsSE8YTiZNEVpxtW1ZPXbqhIhaqIaLrhIo+MHgeyfR/OetOHW/N8jzGw5FarpfGrHDjW0ZQSfUeYkSBdMXmhBBQY6oqIarqqedK2ky1IPP9aOn2a9nrdlVzxTKLHjzOJSosWc3dvmd7iywcMSbRhpxNERtddVSttaBWsk398eQL5hlv4t6kWrIXJePcQ4lZGc3eYFWAul4SK36KuBqS+k0ygONipabnF3aqAEmVXM275Hg+PPbv7CckccQuR7UzYbVFvUNu4Y3j10muMXCfFdTe06AiwbLaOgqEHqujqioq6IutHdIKjaPKdQeZcp678/2OHcHZdtsF7uzeMck41IImwEHX/lldeaJFQXYTq70XTdoht6ohlrtlKMq4ZZL3ZP/mfjj9Ch/KMupx6FZNSvWNdHeVsx6/tdgsautiuVkOBcLoeLes+3c0iWx+QxJIUJn0SNPlyNA9TVR8E1LQV3cpgnY4ksx7V3LmSQeRMj4alznZeIX20Sb3aYDhKQw7lDcaRwmUVdAF9oy9RE8yAF+nXLrmVjfIhz3Mv1prz+j1n/AJkq2mhmTU7/AI79s/lXkjA8Pz+1Z/icK25laIl4gw5Sz/XaamNC6IObIxDuFC0XRVTXyWjukFjbNSOv3E196c9csttd7ucTMb3EuE/Il+7WnUjC5IZjRmmtXNpkAqyhmW0dEVfDw1XKrqXSPj/NeQfjOxy9yq7nSraXy8p+SdfgpKT2R08jzi0PX0iuTl9vkc7wTirrIWTJFXtyjov29y66V8vb01cckfyx2dn3nf0eb1O+Rbp+tust398lvsrxzj4slgY/drRhMa4fn5arZi9oxU1Wc5bFm+nMbvTQEoiqsqKfAt+qJ4V4qWtEqdHM/wAD9T8n2Hjn3VcGWnbq3ucdMdcL9bx74us6ThemPg90o/XJeO8Uvl2xe2XCy4pCS550totcvDkebbW2RBcclxLm4i+mElU2CiJoeuu3wRaVyWSbTenP+BXkPA9p3ObDjyY8Fd3c7KvBKXTqm70yv6KyfRS+tMxwkiK8nj+d8e8m3kcKsuH3Hje4WsLG7Z2CjG9GnynIpR5epKjxggIW9U3a6+SeFdqzS1VLcyfV+7fb+T8d3eb2+PDbtrY9mxbW63s6Ot+Pqaidz4z8hMf/ANJv9X/7hrj/AMj+3wPtf/hv3f75j37iH633K38nYPyFb681ND9evqU/vthvOMXSTZMgtr9ou0NGykwJIqDgC82LzRKi/A2zEhXyVFRU8Kok49xtlwtMgYlzhuwJRsMSRjvCoH6MpoH2D2r4ohtmJj9KKi0Bod7kMp88y4GhEZfKx+KLO8y2q/ZQ3pEoTVE+lUbFF/wVFC78jXToxBi2/qhw0zEAQbetUmS5t+LsifJedVfrUzWotqdaaGWnuvwIrHOmCz2gQJU/CGBlqn7b0bjNQCX69C01+qrx6HPJqR32TkOyunvR915VUxhZWyir+4Zlxmw/iilatWZbRGj/ALWf6tVz/Ta6f9kg1F9S8ehkf3jt0Sz9sOZo9uBGGju8aaSB4fj5kGNKeLw+JOuktdK6HO+prL3Y6jZD2PxPCuRcDdZc5LxiyNxZFlluIyF2guD8wjLbx6C2826ZqG9UEt5IRDolc62g6XrJlpxR2U7GdPshfwqXGmR7TbnzW7cW5Sw6McFcPU3IyFtcYU1RVE2i2Eq7lE6t1TOas6m4/WbtVxP2SjXCRi8ZMaz+DHF7JcQnI388LKEgeuy+CIklhCVB3Jooqo7wDcOvO1WjtWyZXX3XE16+4av0Z9B/JlyrcepOTQjn2jv91Oa/9rWb+YlVuQzEZ0d3pL0rtZzQ6+qqY3lpkVX9wzDjtB/FFKuuhF9T6f8AHYUa24/YrdCAWocC3xY0RsPARaaaEARPqRESuB6D5gO6kViz9r+ZUtojHQb+3NRW0RNH5EZiS6fh8VdMlX66710PPfUs77qjpyOV+KpLvg5IwNlxxP3xTpRL/lWppoVk1Kv2XuNzVjnCI8B2C4Wy0YWkKZbinR4elzKLcH3X5TXzJOEKeorxgqiCEgr4Ki+NVtUyTucQaU+2r1cvOFg92Ay6VDVzK7KsHBLTDktS9sKU426/LkOMqYC4XpC2LaFuFPURxBLREi9uReOvMpl7maadpbx9eO2df+SKqpoTk1IvxfnXuRZ8bsNoxLKs8Yxe1wI8XHmIUJ5yMEJltAYBk0jkigIIiD4r4VsIxOxv31Wume5v1wwKfzNHly8wvkG4M5E1d4qRpEiMs2SzHWQxsD/SRUbXxFNyLuXzrk+D4F3x1y43S6mtk009Gnwaf7UVOyPr1yjiWbyHsPx1+92q13AJuOXQDZMSbA0dZRwXDFdweAkijoqoungqV8nXuKWr6mfzr3/5F8r2Hft9pid6VsrUtwfBOaym9Vo5XFr4HCLi/n0sy/PtcJk/nCl2S9etpGRr5tHvXRfT9TTTenlW9XFt2zwOL/Ln5hfe+99u+rv6k+mN07tJ0nkds1hnZBhm+stYjKD7+vbWRuuIMXfFujLqvDKhr6n4g1VdqqPmP2fKp34uHHRR+49VfE/matciWB/zMiy/V9ORPdvpx9D5OPq8NDk5ZivZDMrcVqueD/JwZEr5+5s22LBhfPTNFT5iUrJCrp+K+K+GvjprWUviq5TOnk/G/mbyGPpZO3ire6ypWlN9/wDNfa/Uywf/AA3zL+6x/wAP/uj/ANXfL+p90eq3u/8AF/ndm/ds3el46a+fh515+rXrbuX+B96/oHe/9T9js/nx9GV/q9SJmJ2/LrwMQ/cQ/W+5W/k7B+QrfXKmh+i31NPb10P445/i8H8o3m+z7BJDC8ZYzS0QmgMb01EgsI2pPKQmy4rSI0RohagIaIKjqsboOmxPiZQd6vDtfzA2iILbE63sMNiiCINM2uG22AomiIgiKIifQldK6HO+pa/3KsGlDivW3ktiORwX8Waxm5ykRdrTrTDUyGCr5auC5IVP4C1NGVdaEjdHe8vEmAcOW/i3l2+O4ncMIdmJYLssOVMYnQJDxyxBVitvEDrRumG0hQVBA0JS3ImWq5NpdJcSgvc3n22diuapuYY7HkMYpZbdHsGLLKH03n4sZx14pBt6rs9V59whTz2bd2haol1UIizllmO9WCzONOu3THCLkCs3SxWa7hd2CTRW5rzNtflN6fvHXCH8FTVy2VdQkSb0U7XcF8Fde7zY+RMwK3ZKGT3G5R8bjQZcqVIYdjRAaVtW2lZ1MmyRN7gomn2lRKy1W2bSySM5bzcL52c7GypsOA63c+XMwEIVuFVcKLGmSEbaAjRPFI8fTcWiJoKl4JV6I56s1Y7hd3+ZuvHMzPHOHYrjrOK2602+4QJN3jSZDtyZfFUMhNuQygNg42bKbU11Al3fBIrVNHS12md1m/bXo92C4ebc5oAm8gC3avYuFulOXu3XA2tDS1Tm2fTXRxV2GrggSInrCiajWKrT4Gu1WuJmp0Keu7XbPiRLITom9LuDc4Q10KGtulLIRxE8FFARV8fiiL5oldLaHOmpqP7rf6vmHfp9B/Jlyrnj1OmTQjj2jv8AdTmv/a1m/mJVbkMxFLPccwWfiHaHK7u8woWvP4Nvv1nf8xJPlwhyB18tyPxjVU80RRX4pVUfAm64mk/EnuPcArxHj8nkC/zrFneP2iNDv2Mhb5Ul2bLjNI0TsN1ptWFF5R3ojjg7NdC8tyw6OS1dQY1PS772e7KDLbtxDc+W8zbUbc1q4kWLKkIm0iRPEI0dPtnp+xBSWumiOWrLpe7GIjzHxqIogiOFiginkiJcJXhU49C8mpHeQdU7JfOjnHnYnC4DsfMrIFxd5EjNm66FxtwXaVEGULRKaNuRRAFLYgirW8i8RTXd3GDNvpkk/wBrjnSRjmfXrhC+3LTHs5ZcuWJMPH9li9RB3OtNa6IPzUYSUtfMmgQU1JdcuuZuN8iJvc0/Wlu36O2f+aKtpoZk1NNOvfbzrhifBXEOM5Ly9aLff7DiNpgXe3ujKJyPIjxW2zZLRlU1bVNvgunh4eFQ6uTpWyguZx3ylx7yzZpGQccZZAy6zxJJQ5cyCaqjUgQFxW3BNBIS2mK+KeS1LUFJye+rDRQCgFAKAyL7V+3vyhzjzllPKOI5li1vs+UNW1HIF4cmsyY5woLEIkRI8WQBoXob0XcPnpp4ar0rdJHK1G2am4Rj7mJYXiOKvSRmu4zZYFqdmAKgLpQozbCuIKqqohKGumtc2dUZP9k/bp5T5i5wzTkrF81xWBYMukxZKRbo5ObmR1bisx3B2MRHmz8W1UV3pqnnpXRXhHK1G2aVZpwvh/JPEo8Q55GK8WE7ZDguymV9GQ0/CABalxjVC9NwCDcPmnmJIQqQrEwzo1KgyByn2mOS2Lm+mE8n4zdbMrirFcvbcyBKFtV8BMIzMwCVE8NUJNfPRPKunUOTxssN1u9tCz8Z5bas95ayiHnN1sDwS7Fi9uYcC2NS2lQmpEh1/a4/6ZIhCHpgO5EUtyfZqXeSq441Jk7ydU807PWzjtnCsisljm4VIuZymb2Ultp8LgEZEUHIzL5IoLH8lDx3eaaeOVtBt6yZ4te0/wA9qYI9neANtqv4wwl3QyRPqFbaOv8AjSr6iI6bNA+p3Q7E+ul2XOsgviZ1ySrDke33IY/y8G1tvCoPfJtkRmTjgKoE6SouxVERFCLdNrSXWkEtdnOqWBdnMfgRMgkPY7llgRz82czhti49HF3RXGH2SUUfZJUQtikKoviBjqW7K2g21ZMupXtMcthOVuFydiEi2b9ElvhPZf2a+foCw6Ov1ep+Gr6iOfTZoh1Q6VYZ1mSdkD11LNeRbtH+VlZO6wkdmJGJUI48Jjc4oIaom8yJSLRNNiaisWtJdaQd73Q68ZN2U4rtOE4lfLZYrzaMjjXwH7v6yRnW2YsqMTSmw26YL/zhCRdhfsdPjqirhm3rKPKdH+reYdY8czuBmeQ2e+XLL7hDkMt2VZDjDDUNpwE3OyWmCIjV1fBA0TTzXXwWtJlKwSp2W6x4N2ZxGLYMnddst+sjjj+KZfEbFyTBcdREcAgJRR1l3aPqN7h12iqEJIi1lbQbasmUM32muZm55N23kfC5dsQ1QJkkrjHfUPgqsBEeFF+r1fw106iOfTZfnqd0TxPrjc3M3vd8TOeSXY7kWHdUY+XhWxl5NrqQ2iIzVxwfsk6S67VUREUI90WtJdaQeM7u9LOQey2a4hl2EZRj1oCxWRbROgXw5bKqqSXXxdbcjR5O7VHVRUUU008118NraDL0ktN194Vd4r6+4twtmUmBlJW633KDkRRwP5KU3c5cmQ6yIuoJEGyR6aqqJu010TXSpblyVVQoMwD9rrmPFOR4uScZcqY3brRYry3c8UvNwKYF2hpHfR6MRstRHGHHGtqa/jBE1TyFF0TpvRz6bJf7cdCOV+fOVW+Q8WzLFY7Uix2+33KPeCmw3PmoYEDhtjGiyx2HqhIikip5eOmq5W8Iq1G2Ve//ACg7A/2349/p11/8qreoiemzTHpJ1oyzrNgmV49mV9tN7u+S3tLkK2Un3IzTLcdtkRVyQywakqiSr9jRE08VqLWkulYLp1JYoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAf/Z);\n        }\n        .companies ul li.modxextras a {\n            background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMjkuNDkgNjEuNTQiPjxkZWZzPjxzdHlsZT4uY2xzLTF7ZmlsbDojMDBiNWRlO30uY2xzLTJ7ZmlsbDojMDBkZWNjO30uY2xzLTN7ZmlsbDojZmY1NTI5O30uY2xzLTR7ZmlsbDojZmY5NjQwO30uY2xzLTV7ZmlsbDojMTAyYzUzO308L3N0eWxlPjwvZGVmcz48ZyBpZD0iTGF5ZXJfMiIgZGF0YS1uYW1lPSJMYXllciAyIj48ZyBpZD0iYnJhbmRfZ3VpZGVzIiBkYXRhLW5hbWU9ImJyYW5kIGd1aWRlcyI+PGcgaWQ9ImxvZ29fb25fbGlnaHQiIGRhdGEtbmFtZT0ibG9nbyBvbiBsaWdodCI+PHBvbHlnb24gY2xhc3M9ImNscy0xIiBwb2ludHM9IjU5LjI5IDUuOTUgMjkuNTggNS45NSAyNS41NiAxMi40IDQ2Ljk0IDI1LjcgNDYuOTQgMjUuNyA0Ni45NCAyNS43MSA1OS4yOSA1Ljk1Ii8+PHBvbHlnb24gY2xhc3M9ImNscy0yIiBwb2ludHM9IjI1LjU2IDEyLjQgNS42MiAwIDUuNjIgMjkuNzEgMTIuNDkgMzMuNzIgNDYuOTQgMjUuNyA0Ni45NCAyNS43IDI1LjU2IDEyLjQiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNDcuMDYgMjcuODIgNDcuMDYgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNTMuNDcgMzEuODMgNDcuMDcgMjcuODIgMzMuNjUgNDkuMTUgNTMuNDcgNjEuNTQgNTMuNDcgMzEuODMiLz48cG9seWdvbiBjbGFzcz0iY2xzLTQiIHBvaW50cz0iNDcuMDcgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIgMTIuMzUgMzUuOTggMCA1NS40MSAyOS43MSA1NS40MSAzMy42NSA0OS4xNSA0Ny4wNyAyNy44MiA0Ny4wNyAyNy44MiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTEwNy42Niw0Ny44bDAtMTguODRMOTguMzcsNDQuNDhIOTUuMUw4NS45LDI5LjM3VjQ3LjhINzkuMDhWMTYuNGg2TDk2Ljg1LDM1LjkyLDEwOC40MiwxNi40aDZsLjA5LDMxLjRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMTIxLjgyLDMyLjFjMC05LjMzLDcuMjctMTYuMjQsMTcuMTgtMTYuMjRzMTcuMTgsNi44NywxNy4xOCwxNi4yNFMxNDguODcsNDguMzQsMTM5LDQ4LjM0LDEyMS44Miw0MS40MywxMjEuODIsMzIuMVptMjcsMGMwLTYtNC4yMi0xMC05LjgzLTEwcy05LjgyLDQuMDktOS44MiwxMC4wNSw0LjIxLDEwLDkuODIsMTBTMTQ4LjgzLDM4LjA3LDE0OC44MywzMi4xWiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTE2My41OSwxNi40aDE0LjI2YzEwLjI3LDAsMTcuMzIsNi4xOSwxNy4zMiwxNS43cy03LDE1LjctMTcuMzIsMTUuN0gxNjMuNTlabTEzLjksMjUuNDRjNi4yNCwwLDEwLjMyLTMuNzMsMTAuMzItOS43NHMtNC4wOC05LjczLTEwLjMyLTkuNzNoLTYuNjRWNDEuODRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMjIxLjEsNDcuOGwtNy41OC0xMC45LTcuNDUsMTAuOWgtOC4zNGwxMS42MS0xNi0xMS0xNS40M2g4LjI1bDcuMjIsMTAuMTgsNy4wOS0xMC4xOGg3Ljg1TDIxNy43OCwzMS41NiwyMjkuNDksNDcuOFoiLz48L2c+PC9nPjwvZz48L3N2Zz4=);\n        }\n        .disclaimer {\n            max-width: 960px;\n            display: block;\n            margin: 0 auto;\n            text-align: center;\n            color: #333;\n            font-size: .6em;\n        }\n        @media (min-width: 768px) and (max-width: 991px)  {\n            .container {\n                padding: 1em;\n                border: 0;\n                border-radius: 0;\n            }\n        }\n        @media (max-width: 767px)  {\n            body {\n                font-size: 16px;\n            }\n            .container {\n                padding: 1em;\n                margin: 0 0 1em;\n                border: 0;\n                border-radius: 0;\n            }\n            .container > section, .container > aside {\n                float: none;\n                width: 100%;\n            }\n            .container aside {\n                border: 0;\n                padding: 0;\n            }\n            .logo {\n                width: 100%;\n                height: 48px;\n            }\n            h1 {\n                font-size: 24px;\n            }\n            h2 {\n                font-size: 19px;\n            }\n            h3 {\n                font-size: 16px;\n            }\n            .companys ul li {\n                display: block;\n            }\n        }\n    </style>\n</head>\n<body>\n<a href=\"https://modx.com\" title=\"MODX\" class=\"logo\" target=\"_blank\">MODX</a>\n<div class=\"container\">\n    <section>\n        <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>\n        [[*content]]\n    </section>\n    <aside>\n        <a href=\"[[++manager_url]]\" title=\"Your MODX manager\" class=\"cta-button\">Go to the&nbsp;manager</a>\n        <h3>Learn more about&nbsp;MODX</h3>\n        <ul>\n            <li><a href=\"https://docs.modx.com/3.x/en/index\" target=\"_blank\">Official&nbsp;Documentation</a></li>\n            <li><a href=\"https://docs.modx.com/3.x/en/getting-started/friendly-urls\" target=\"_blank\">Using Friendly&nbsp;URLs</a></li>\n            <li><a href=\"https://docs.modx.com/current/en/building-sites/extras\" target=\"_blank\">Package&nbsp;Management</a></li>\n            <li><a href=\"https://modx.com/blog/\" target=\"_blank\">Official MODX&nbsp;Blog</a></li>\n            <li><a href=\"http://www.discovermodx.com/\" target=\"_blank\">Discover&nbsp;MODX</a></li>\n            <li><a href=\"https://modx.today\" target=\"_blank\">MODX.today</a></li>\n        </ul>\n        <h3>Get help!</h3>\n        <ul>\n            <li><a href=\"https://community.modx.com\" target=\"_blank\">Official MODX&nbsp;Forums</a></li>\n            <li><a href=\"https://modx.org/\" target=\"_blank\">MODX on&nbsp;Slack</a></li>\n            <li><a href=\"https://twitter.com/modx\" target=\"_blank\">MODX on&nbsp;Twitter</a></li>\n            <li><a href=\"https://www.facebook.com/modxcms\" target=\"_blank\">MODX on&nbsp;Facebook</a></li>\n            <li><a href=\"https://modx.com/professionals/\" target=\"_blank\">Find a MODX&nbsp;Professional</a></li>\n        </ul>\n    </aside>\n    <div class=\"companies\">\n        <h3>Extend MODX with&nbsp;Extras</h3>\n        <ul>\n            <li class=\"modxextras\"><a href=\"https://modx.com/extras/\" title=\"MODX extras\" target=\"_blank\">MODX&nbsp;extras</a></li>\n            <li class=\"modmore\"><a href=\"https://www.modmore.com/extras/\" title=\"modmore.com\" target=\"_blank\">modmore.com</a></li>\n            <li class=\"modstore\"><a href=\"https://modstore.pro/\" title=\"modstore.pro\" target=\"_blank\">modstore.pro</a></li>\n            <li class=\"extrasio\"><a href=\"https://extras.io/extras/\" title=\"Extras.io\" target=\"_blank\">Extras.io</a></li>\n        </ul>\n    </div>\n</div>\n<footer class=\"disclaimer\">\n    <p>&copy; 2005-present the <a href=\"https://modx.com\" target=\"_blank\">MODX</a> Content Management Framework (CMF) project. All rights reserved. MODX is licensed under the GNU&nbsp;GPL.</p>\n</footer>\n\n<script>\n    // Load the Open Sans font\n    try {\n        document.addEventListener(\"DOMContentLoaded\", function() { // prevent a Flash Of Unstyled Text (FOUT)\n            document.querySelector(\'head\').innerHTML += \"<link href=\'https://fonts.googleapis.com/css?family=Open+Sans:400,700\' rel=\'stylesheet\' type=\'text/css\'>\";\n            document.body.classList.add(\'loaded\');\n        });\n    } catch (e) { }\n\n    // Shuffle the vendors to prevent favoritism of one vendor over the other\n    // with thanks to http://james.padolsey.com/javascript/shuffling-the-dom/\n    function shuffle(elems) {\n        var allElems = (function(){\n            var ret = [], l = elems.length;\n            while (l--) {\n                if (elems[l].className !== \'modxextras\') {\n                    ret[ret.length] = elems[l];\n                }\n            }\n            return ret;\n        })();\n\n        var shuffled = (function(){\n            var l = allElems.length, ret = [];\n            while (l--) {\n                var random = Math.floor(Math.random() * allElems.length),\n                        randEl = allElems[random].cloneNode(true);\n                allElems.splice(random, 1);\n                ret[ret.length] = randEl;\n            }\n            return ret;\n        })(), l = elems.length;\n\n        // To make sure the MODX logo stays #1, we lower the count by one here (shuffling 3 instead of 4 items)\n        // and refer to elems[l+1] in the loop below. This matches because allElems was also filtered to not include\n        // the official MODX logo.\n        l--;\n        while (l--) {\n            elems[l+1].parentNode.insertBefore(shuffled[l], elems[l+1].nextSibling);\n            elems[l+1].parentNode.removeChild(elems[l+1]);\n        }\n    }\n    shuffle(document.querySelectorAll(\'.companies li\'));\n</script>\n\n</body>\n</html>\n', 0, NULL, 0, '', ''),
(2, 1, 0, 'home', '', 0, 0, '', 0, '[[$header?]]\n[[$navbar?]]\n\n[[*content]]\n[[$footer?]]', 0, 'a:0:{}', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `elements` text DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `input_properties` text DEFAULT NULL,
  `output_properties` text DEFAULT NULL,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `documentgroup` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `contentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `templateid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnBeforeCacheUpdate', 4, 'System'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnBeforeRegisterClientScripts', 5, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnBeforeUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnBeforeWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnCacheUpdate', 4, 'System'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategorySave', 1, 'Categories'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkSave', 1, 'Chunks'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnContextInit', 1, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextSave', 1, 'Contexts'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnElementNotFound', 1, 'System'),
('OnEmptyTrash', 1, 'Resources'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnInitCulture', 1, 'Internationalization'),
('OnLoadWebDocument', 5, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnManagerPageAfterRender', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMODXInit', 5, 'System'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPageNotFound', 1, 'System'),
('OnPageUnauthorized', 1, 'Security'),
('OnParseDocument', 5, 'System'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginSave', 1, 'Plugins'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnSiteRefresh', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnTempFormDelete', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserActivate', 1, 'Users'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserNotFound', 1, 'Users'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserRemove', 1, 'Users'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnUserSave', 1, 'Users'),
('OnWebAuthentication', 3, 'Security'),
('OnWebLogin', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnWebPageComplete', 5, 'System'),
('OnWebPageInit', 5, 'System'),
('OnWebPagePrerender', 5, 'System');

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('automatic_template_assignment', 'sibling', 'textfield', 'core', 'site', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'numberfield', 'core', 'system', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('base_help_url', '//docs.modx.com/help/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'numberfield', 'core', 'authentication', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'numberfield', 'core', 'caching', NULL),
('cache_db_session', '', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'numberfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'numberfield', 'core', 'caching', NULL),
('cache_format', '0', 'numberfield', 'core', 'caching', NULL),
('cache_handler', 'xPDO\\Cache\\xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_clear_partial', '', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'numberfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '/', 'textfield', 'core', 'furls', NULL),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'en', 'modx-combo-language', 'core', 'language', NULL),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'numberfield', 'core', 'system', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_media_source_type', 'MODX\\Revolution\\Sources\\modFileMediaSource', 'modx-combo-source-type', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('emailsender', 'it@explorevacations.lk', 'textfield', 'core', 'authentication', '2025-09-01 06:45:07'),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('enable_gravatar', '', 'combo-boolean', 'core', 'manager', NULL),
('enable_template_picker_in_tree', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_log_filename', 'error.log', 'textfield', 'core', 'system', NULL),
('error_log_filepath', '', 'textfield', 'core', 'system', NULL),
('error_page', '1', 'numberfield', 'core', 'site', NULL),
('failed_login_attempts', '5', 'numberfield', 'core', 'authentication', NULL),
('feed_modx_news', 'https://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'https://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'numberfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '', 'combo-boolean', 'core', 'furls', NULL),
('friendly_urls_strict', '', 'combo-boolean', 'core', 'furls', NULL),
('global_duplicate_uri_check', '', 'combo-boolean', 'core', 'furls', NULL),
('hidemenu_default', '', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('lock_ttl', '360', 'numberfield', 'core', 'system', NULL),
('login_background_image', '', 'textfield', 'core', 'authentication', NULL),
('login_help_button', '', 'combo-boolean', 'core', 'authentication', NULL),
('login_logo', '', 'textfield', 'core', 'authentication', NULL),
('log_deprecated', '1', 'combo-boolean', 'core', 'system', NULL),
('log_level', '1', 'numberfield', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_dkim_domain', '', 'textfield', 'core', 'mail', NULL),
('mail_dkim_identity', '', 'textfield', 'core', 'mail', NULL),
('mail_dkim_passphrase', '', 'text-password', 'core', 'mail', NULL),
('mail_dkim_privatekeyfile', '', 'textfield', 'core', 'mail', NULL),
('mail_dkim_privatekeystring', '', 'textfield', 'core', 'mail', NULL),
('mail_dkim_selector', '', 'textfield', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_autotls', '1', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'numberfield', 'core', 'mail', NULL),
('mail_smtp_secure', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'numberfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('manager_datetime_empty_value', 'â€”', 'textfield', 'core', 'manager', NULL),
('manager_datetime_separator', ', ', 'textfield', 'core', 'manager', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_favicon_url', 'favicon.ico', 'textfield', 'core', 'manager', NULL),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_logo', '', 'textfield', 'core', 'manager', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_time_format', 'H:i', 'textfield', 'core', 'manager', NULL),
('manager_tooltip_delay', '2300', 'numberfield', 'core', 'manager', NULL),
('manager_tooltip_enable', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('manager_week_start', '0', 'numberfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('package_installer_at_top', '1', 'combo-boolean', 'core', 'manager', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('passwordless_activated', '', 'combo-boolean', 'core', 'authentication', NULL),
('passwordless_expiration', '3600', 'textfield', 'core', 'authentication', NULL),
('password_generated_length', '10', 'numberfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'numberfield', 'core', 'authentication', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('preserve_menuindex', '', 'combo-boolean', 'core', 'manager', NULL),
('principal_targets', 'MODX\\Revolution\\modAccessContext,MODX\\Revolution\\modAccessResourceGroup,MODX\\Revolution\\modAccessCategory,MODX\\Revolution\\Sources\\modAccessMediaSource,MODX\\Revolution\\modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'numberfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('quick_search_in_content', '1', 'combo-boolean', 'core', 'manager', NULL),
('quick_search_result_max', '10', 'numberfield', 'core', 'manager', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resource_static_allow_absolute', '0', 'combo-boolean', 'core', 'static_resources', NULL),
('resource_static_path', '{assets_path}', 'textfield', 'core', 'static_resources', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'alias', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('send_poweredby_header', '1', 'combo-boolean', 'core', 'system', '2025-09-01 06:45:07'),
('server_offset_time', '0', 'numberfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'numberfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_samesite', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'MODX\\Revolution\\modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('settings_version', '3.1.2-pl', 'textfield', 'core', 'system', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', NULL),
('site_start', '1', 'numberfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', '[[%site_unavailable_message]]', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'numberfield', 'core', 'site', NULL),
('static_elements_automate_chunks', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_plugins', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_snippets', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_templates', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_tvs', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_basepath', '', 'textfield', 'core', 'static_elements', NULL),
('static_elements_default_category', '0', 'modx-combo-category', 'core', 'static_elements', NULL),
('static_elements_default_mediasource', '0', 'modx-combo-source', 'core', 'static_elements', NULL),
('static_elements_html_extension', '.tpl', 'textfield', 'core', 'static_elements', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '', 'combo-boolean', 'core', 'manager', NULL),
('unauthorized_page', '1', 'numberfield', 'core', 'site', NULL),
('upload_files', 'aac,au,avi,bmp,css,css.map,doc,docx,eot,gif,gz,htm,html,ico,jpeg,jpg,js,js.map,less,md,mp3,mp4,mpeg,mpg,odb,odf,odg,odp,ods,odt,pdf,png,ppt,pptx,psd,rar,scss,svg,svgz,tar,tgz,tiff,ttf,txt,wav,webp,wmv,woff,woff2,xls,xlsx,xml,z,zip', 'textfield', 'core', 'file', NULL),
('upload_file_exists', '1', 'combo-boolean', 'core', 'file', NULL),
('upload_maxsize', '4194304', 'numberfield', 'core', 'file', '2025-09-01 06:45:07'),
('upload_translit', '1', 'combo-boolean', 'core', 'file', NULL),
('upload_translit_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'file', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('use_alias_path', '', 'combo-boolean', 'core', 'furls', NULL),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_frozen_parent_uris', '', 'combo-boolean', 'core', 'furls', NULL),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2025-09-01 06:45:07'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2025-09-01 06:45:27'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.31.html', 'textfield', 'core', 'manager', NULL),
('which_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('which_element_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_packages`
--

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `workspace` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `provider` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `source` tinytext DEFAULT NULL,
  `manifest` text DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `package_name` varchar(191) NOT NULL,
  `metadata` text DEFAULT NULL,
  `version_major` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `version_minor` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `version_patch` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_providers`
--

CREATE TABLE `modx_transport_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `service_url` tinytext DEFAULT NULL,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `priority` tinyint(4) NOT NULL DEFAULT 10,
  `properties` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2025-04-02 10:20:59', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_users`
--

CREATE TABLE `modx_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `cachepwd` varchar(255) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modUser',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text DEFAULT NULL,
  `hash_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\Hashing\\modNative',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `session_stale` text DEFAULT NULL,
  `sudo` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `createdon` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'Admin', '$2y$10$xI44QSBFt6E/ORiN.E6bH.xXcI2ZzGl1VbI1fPMjE458PaStOpWrm', '', 'MODX\\Revolution\\modUser', 1, NULL, NULL, 'MODX\\Revolution\\Hashing\\modNative', 'af0bfbde6d6fc1db86146a544d6eb449', 1, NULL, 1, 1756709107),
(2, 'navodya', '$2y$10$g/PBtPmVjzP6Hym2G//r7uXvsilchzaKDA4Z7eF9Zwsdy.dlKaRla', '', 'MODX\\Revolution\\modUser', 1, NULL, NULL, 'MODX\\Revolution\\Hashing\\modNative', '32b658fc61217dcc6e57b7743d9bfcac', 0, NULL, 1, 1761199503);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `internalKey` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `blockeduntil` int(11) NOT NULL DEFAULT 0,
  `blockedafter` int(11) NOT NULL DEFAULT 0,
  `logincount` int(11) NOT NULL DEFAULT 0,
  `lastlogin` int(11) NOT NULL DEFAULT 0,
  `thislogin` int(11) NOT NULL DEFAULT 0,
  `failedlogincount` int(10) NOT NULL DEFAULT 0,
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT 0,
  `gender` tinyint(1) NOT NULL DEFAULT 0,
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '',
  `extended` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Default Admin User', 'it@explorevacations.lk', '', '', 0, 1763703039, 0, 7, 1760084911, 1761199412, 1, '', 0, 0, '', '', '', '', '', '', '', '', '', NULL),
(2, 2, 'Navodya Divyanjali', 'navoda@explorevacations.lk', '', '', 0, 0, 0, 28, 1764566120, 1764577438, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_group_roles`
--

CREATE TABLE `modx_user_group_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_group_settings`
--

CREATE TABLE `modx_user_group_settings` (
  `group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(50) NOT NULL,
  `value` text DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `recipient` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `private` tinyint(4) NOT NULL DEFAULT 0,
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_workspaces`
--

CREATE TABLE `modx_workspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `attributes` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2025-09-01 06:44:55', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rental_rates`
--

CREATE TABLE `rental_rates` (
  `id` int(11) NOT NULL,
  `pickup_date` date NOT NULL,
  `dropoff_date` date NOT NULL,
  `car_category` varchar(225) NOT NULL,
  `car_code` varchar(225) NOT NULL,
  `car_model` varchar(225) NOT NULL,
  `duration` int(11) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rental_rates`
--

INSERT INTO `rental_rates` (`id`, `pickup_date`, `dropoff_date`, `car_category`, `car_code`, `car_model`, `duration`, `rate`) VALUES
(1, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 1, 56),
(2, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 2, 56),
(3, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 3, 56),
(4, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 4, 36),
(5, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 5, 36),
(6, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 6, 36),
(7, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 7, 36),
(8, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 8, 36),
(9, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 9, 36),
(10, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 10, 36),
(11, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 11, 36),
(12, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 12, 36),
(13, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 13, 36),
(14, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 14, 36),
(15, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 15, 36),
(16, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 16, 36),
(17, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 17, 36),
(18, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 18, 36),
(19, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 19, 36),
(20, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 20, 36),
(21, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 21, 36),
(22, '2025-01-11', '2025-11-27', 'mini', 'car_001', 'Suzuki Wagon R', 22, 46),
(23, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 1, 90),
(24, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 2, 90),
(25, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 3, 90),
(26, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 4, 70),
(27, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 5, 70),
(28, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 6, 70),
(29, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 7, 70),
(30, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 8, 70),
(31, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 9, 70),
(32, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 10, 70),
(33, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 11, 70),
(34, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 12, 70),
(35, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 13, 70),
(36, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 14, 70),
(37, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 15, 70),
(38, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 16, 70),
(39, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 17, 70),
(40, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 18, 70),
(41, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 19, 70),
(42, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 20, 70),
(43, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 21, 70),
(44, '2025-11-28', '2025-12-12', 'mini', 'car_001', 'Suzuki Wagon R', 22, 80),
(45, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 1, 100),
(46, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 2, 100),
(47, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 3, 100),
(48, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 4, 80),
(49, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 5, 80),
(50, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 6, 80),
(51, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 7, 80),
(52, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 8, 80),
(53, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 9, 80),
(54, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 10, 80),
(55, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 11, 80),
(56, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 12, 80),
(57, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 13, 80),
(58, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 14, 80),
(59, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 15, 80),
(60, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 16, 80),
(61, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 17, 80),
(62, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 18, 80),
(63, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 19, 80),
(64, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 20, 80),
(65, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 21, 80),
(66, '2025-12-13', '2025-12-22', 'mini', 'car_001', 'Suzuki Wagon R', 22, 90),
(67, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 1, 110),
(68, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 2, 110),
(69, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 3, 110),
(70, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 4, 90),
(71, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 5, 90),
(72, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 6, 90),
(73, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 7, 90),
(74, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 8, 90),
(75, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 9, 90),
(76, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 10, 90),
(77, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 11, 90),
(78, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 12, 90),
(79, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 13, 90),
(80, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 14, 90),
(81, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 15, 90),
(82, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 16, 90),
(83, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 17, 90),
(84, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 18, 90),
(85, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 19, 90),
(86, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 20, 90),
(87, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 21, 90),
(88, '2025-12-23', '2026-05-01', 'mini', 'car_001', 'Suzuki Wagon R', 22, 100),
(89, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 1, 90),
(90, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 2, 90),
(91, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 3, 90),
(92, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 4, 70),
(93, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 5, 70),
(94, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 6, 70),
(95, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 7, 70),
(96, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 8, 70),
(97, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 9, 70),
(98, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 10, 70),
(99, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 11, 70),
(100, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 12, 70),
(101, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 13, 70),
(102, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 14, 70),
(103, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 15, 70),
(104, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 16, 70),
(105, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 17, 70),
(106, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 18, 70),
(107, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 19, 70),
(108, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 20, 70),
(109, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 21, 70),
(110, '2026-06-01', '2026-02-28', 'mini', 'car_001', 'Suzuki Wagon R', 22, 80),
(111, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 1, 70),
(112, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 2, 70),
(113, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 3, 70),
(114, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 4, 46),
(115, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 5, 46),
(116, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 6, 46),
(117, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 7, 46),
(118, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 8, 46),
(119, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 9, 46),
(120, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 10, 46),
(121, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 11, 46),
(122, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 12, 46),
(123, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 13, 46),
(124, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 14, 46),
(125, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 15, 46),
(126, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 16, 46),
(127, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 17, 46),
(128, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 18, 46),
(129, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 19, 46),
(130, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 20, 46),
(131, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 21, 46),
(132, '2026-01-03', '2026-04-30', 'mini', 'car_001', 'Suzuki Wagon R', 22, 56),
(133, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 1, 56),
(134, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 2, 56),
(135, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 3, 56),
(136, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 4, 36),
(137, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 5, 36),
(138, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 6, 36),
(139, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 7, 36),
(140, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 8, 36),
(141, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 9, 36),
(142, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 10, 36),
(143, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 11, 36),
(144, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 12, 36),
(145, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 13, 36),
(146, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 14, 36),
(147, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 15, 36),
(148, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 16, 36),
(149, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 17, 36),
(150, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 18, 36),
(151, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 19, 36),
(152, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 20, 36),
(153, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 21, 36),
(154, '2026-01-05', '2026-06-30', 'mini', 'car_001', 'Suzuki Wagon R', 22, 46),
(155, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 1, 56),
(156, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 2, 56),
(157, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 3, 56),
(158, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 4, 36),
(159, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 5, 36),
(160, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 6, 36),
(161, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 7, 36),
(162, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 8, 36),
(163, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 9, 36),
(164, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 10, 36),
(165, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 11, 36),
(166, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 12, 36),
(167, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 13, 36),
(168, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 14, 36),
(169, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 15, 36),
(170, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 16, 36),
(171, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 17, 36),
(172, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 18, 36),
(173, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 19, 36),
(174, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 20, 36),
(175, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 21, 36),
(176, '2025-01-11', '2025-11-27', 'mini', 'car_002', 'Suzuki Alto', 22, 46),
(177, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 1, 90),
(178, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 2, 90),
(179, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 3, 90),
(180, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 4, 70),
(181, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 5, 70),
(182, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 6, 70),
(183, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 7, 70),
(184, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 8, 70),
(185, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 9, 70),
(186, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 10, 70),
(187, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 11, 70),
(188, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 12, 70),
(189, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 13, 70),
(190, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 14, 70),
(191, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 15, 70),
(192, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 16, 70),
(193, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 17, 70),
(194, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 18, 70),
(195, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 19, 70),
(196, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 20, 70),
(197, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 21, 70),
(198, '2025-11-28', '2025-12-12', 'mini', 'car_002', 'Suzuki Alto', 22, 80),
(199, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 1, 100),
(200, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 2, 100),
(201, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 3, 100),
(202, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 4, 80),
(203, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 5, 80),
(204, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 6, 80),
(205, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 7, 80),
(206, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 8, 80),
(207, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 9, 80),
(208, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 10, 80),
(209, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 11, 80),
(210, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 12, 80),
(211, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 13, 80),
(212, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 14, 80),
(213, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 15, 80),
(214, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 16, 80),
(215, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 17, 80),
(216, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 18, 80),
(217, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 19, 80),
(218, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 20, 80),
(219, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 21, 80),
(220, '2025-12-13', '2025-12-22', 'mini', 'car_002', 'Suzuki Alto', 22, 90),
(221, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 1, 110),
(222, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 2, 110),
(223, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 3, 110),
(224, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 4, 90),
(225, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 5, 90),
(226, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 6, 90),
(227, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 7, 90),
(228, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 8, 90),
(229, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 9, 90),
(230, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 10, 90),
(231, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 11, 90),
(232, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 12, 90),
(233, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 13, 90),
(234, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 14, 90),
(235, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 15, 90),
(236, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 16, 90),
(237, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 17, 90),
(238, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 18, 90),
(239, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 19, 90),
(240, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 20, 90),
(241, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 21, 90),
(242, '2025-12-23', '2026-05-01', 'mini', 'car_002', 'Suzuki Alto', 22, 100),
(243, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 1, 90),
(244, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 2, 90),
(245, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 3, 90),
(246, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 4, 70),
(247, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 5, 70),
(248, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 6, 70),
(249, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 7, 70),
(250, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 8, 70),
(251, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 9, 70),
(252, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 10, 70),
(253, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 11, 70),
(254, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 12, 70),
(255, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 13, 70),
(256, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 14, 70),
(257, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 15, 70),
(258, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 16, 70),
(259, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 17, 70),
(260, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 18, 70),
(261, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 19, 70),
(262, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 20, 70),
(263, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 21, 70),
(264, '2026-06-01', '2026-02-28', 'mini', 'car_002', 'Suzuki Alto', 22, 80),
(265, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 1, 70),
(266, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 2, 70),
(267, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 3, 70),
(268, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 4, 46),
(269, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 5, 46),
(270, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 6, 46),
(271, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 7, 46),
(272, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 8, 46),
(273, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 9, 46),
(274, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 10, 46),
(275, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 11, 46),
(276, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 12, 46),
(277, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 13, 46),
(278, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 14, 46),
(279, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 15, 46),
(280, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 16, 46),
(281, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 17, 46),
(282, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 18, 46),
(283, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 19, 46),
(284, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 20, 46),
(285, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 21, 46),
(286, '2026-01-03', '2026-04-30', 'mini', 'car_002', 'Suzuki Alto', 22, 56),
(287, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 1, 56),
(288, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 2, 56),
(289, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 3, 56),
(290, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 4, 36),
(291, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 5, 36),
(292, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 6, 36),
(293, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 7, 36),
(294, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 8, 36),
(295, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 9, 36),
(296, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 10, 36),
(297, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 11, 36),
(298, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 12, 36),
(299, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 13, 36),
(300, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 14, 36),
(301, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 15, 36),
(302, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 16, 36),
(303, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 17, 36),
(304, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 18, 36),
(305, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 19, 36),
(306, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 20, 36),
(307, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 21, 36),
(308, '2026-01-05', '2026-06-30', 'mini', 'car_002', 'Suzuki Alto', 22, 46),
(309, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 1, 58),
(310, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 2, 58),
(311, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 3, 58),
(312, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 4, 38),
(313, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 5, 38),
(314, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 6, 38),
(315, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 7, 38),
(316, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 8, 38),
(317, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 9, 38),
(318, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 10, 38),
(319, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 11, 38),
(320, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 12, 38),
(321, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 13, 38),
(322, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 14, 38),
(323, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 15, 38),
(324, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 16, 38),
(325, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 17, 38),
(326, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 18, 38),
(327, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 19, 38),
(328, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 20, 38),
(329, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 21, 38),
(330, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Perodua Axia', 22, 48),
(331, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 1, 92),
(332, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 2, 92),
(333, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 3, 92),
(334, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 4, 72),
(335, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 5, 72),
(336, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 6, 72),
(337, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 7, 72),
(338, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 8, 72),
(339, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 9, 72),
(340, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 10, 72),
(341, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 11, 72),
(342, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 12, 72),
(343, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 13, 72),
(344, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 14, 72),
(345, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 15, 72),
(346, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 16, 72),
(347, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 17, 72),
(348, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 18, 72),
(349, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 19, 72),
(350, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 20, 72),
(351, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 21, 72),
(352, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Perodua Axia', 22, 82),
(353, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 1, 102),
(354, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 2, 102),
(355, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 3, 102),
(356, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 4, 82),
(357, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 5, 82),
(358, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 6, 82),
(359, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 7, 82),
(360, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 8, 82),
(361, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 9, 82),
(362, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 10, 82),
(363, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 11, 82),
(364, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 12, 82),
(365, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 13, 82),
(366, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 14, 82),
(367, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 15, 82),
(368, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 16, 82),
(369, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 17, 82),
(370, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 18, 82),
(371, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 19, 82),
(372, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 20, 82),
(373, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 21, 82),
(374, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Perodua Axia', 22, 92),
(375, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 1, 112),
(376, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 2, 112),
(377, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 3, 112),
(378, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 4, 92),
(379, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 5, 92),
(380, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 6, 92),
(381, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 7, 92),
(382, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 8, 92),
(383, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 9, 92),
(384, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 10, 92),
(385, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 11, 92),
(386, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 12, 92),
(387, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 13, 92),
(388, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 14, 92),
(389, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 15, 92),
(390, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 16, 92),
(391, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 17, 92),
(392, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 18, 92),
(393, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 19, 92),
(394, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 20, 92),
(395, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 21, 92),
(396, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Perodua Axia', 22, 102),
(397, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 1, 92),
(398, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 2, 92),
(399, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 3, 92),
(400, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 4, 72),
(401, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 5, 72),
(402, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 6, 72),
(403, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 7, 72),
(404, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 8, 72),
(405, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 9, 72),
(406, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 10, 72),
(407, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 11, 72),
(408, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 12, 72),
(409, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 13, 72),
(410, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 14, 72),
(411, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 15, 72),
(412, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 16, 72),
(413, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 17, 72),
(414, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 18, 72),
(415, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 19, 72),
(416, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 20, 72),
(417, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 21, 72),
(418, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Perodua Axia', 22, 82),
(419, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 1, 72),
(420, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 2, 72),
(421, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 3, 72),
(422, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 4, 48),
(423, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 5, 48),
(424, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 6, 48),
(425, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 7, 48),
(426, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 8, 48),
(427, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 9, 48),
(428, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 10, 48),
(429, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 11, 48),
(430, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 12, 48),
(431, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 13, 48),
(432, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 14, 48),
(433, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 15, 48),
(434, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 16, 48),
(435, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 17, 48),
(436, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 18, 48),
(437, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 19, 48),
(438, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 20, 48),
(439, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 21, 48),
(440, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Perodua Axia', 22, 58),
(441, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 1, 58),
(442, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 2, 58),
(443, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 3, 58),
(444, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 4, 38),
(445, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 5, 38),
(446, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 6, 38),
(447, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 7, 38),
(448, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 8, 38),
(449, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 9, 38),
(450, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 10, 38),
(451, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 11, 38),
(452, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 12, 38),
(453, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 13, 38),
(454, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 14, 38),
(455, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 15, 38),
(456, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 16, 38),
(457, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 17, 38),
(458, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 18, 38),
(459, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 19, 38),
(460, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 20, 38),
(461, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 21, 38),
(462, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Perodua Axia', 22, 48),
(463, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 1, 58),
(464, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 2, 58),
(465, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 3, 58),
(466, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 4, 38),
(467, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 5, 38),
(468, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 6, 38),
(469, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 7, 38),
(470, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 8, 38),
(471, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 9, 38),
(472, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 10, 38),
(473, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 11, 38),
(474, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 12, 38),
(475, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 13, 38),
(476, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 14, 38),
(477, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 15, 38),
(478, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 16, 38),
(479, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 17, 38),
(480, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 18, 38),
(481, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 19, 38),
(482, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 20, 38),
(483, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 21, 38),
(484, '2025-01-11', '2025-11-27', 'economy', 'car_003', 'Toyota Passo', 22, 48),
(485, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 1, 92),
(486, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 2, 92),
(487, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 3, 92),
(488, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 4, 72),
(489, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 5, 72),
(490, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 6, 72),
(491, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 7, 72),
(492, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 8, 72),
(493, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 9, 72),
(494, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 10, 72),
(495, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 11, 72),
(496, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 12, 72),
(497, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 13, 72),
(498, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 14, 72),
(499, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 15, 72),
(500, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 16, 72),
(501, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 17, 72),
(502, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 18, 72),
(503, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 19, 72),
(504, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 20, 72),
(505, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 21, 72),
(506, '2025-11-28', '2025-12-12', 'economy', 'car_003', 'Toyota Passo', 22, 82),
(507, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 1, 102),
(508, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 2, 102),
(509, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 3, 102),
(510, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 4, 82),
(511, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 5, 82),
(512, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 6, 82),
(513, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 7, 82),
(514, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 8, 82),
(515, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 9, 82),
(516, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 10, 82),
(517, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 11, 82),
(518, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 12, 82),
(519, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 13, 82),
(520, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 14, 82),
(521, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 15, 82),
(522, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 16, 82),
(523, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 17, 82),
(524, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 18, 82),
(525, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 19, 82),
(526, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 20, 82),
(527, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 21, 82),
(528, '2025-12-13', '2025-12-22', 'economy', 'car_003', 'Toyota Passo', 22, 92),
(529, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 1, 112),
(530, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 2, 112),
(531, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 3, 112),
(532, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 4, 92),
(533, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 5, 92),
(534, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 6, 92),
(535, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 7, 92),
(536, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 8, 92),
(537, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 9, 92),
(538, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 10, 92),
(539, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 11, 92),
(540, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 12, 92),
(541, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 13, 92),
(542, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 14, 92),
(543, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 15, 92),
(544, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 16, 92),
(545, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 17, 92),
(546, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 18, 92),
(547, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 19, 92),
(548, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 20, 92),
(549, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 21, 92),
(550, '2025-12-23', '2025-12-23', 'economy', 'car_003', 'Toyota Passo', 22, 102),
(551, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 1, 92),
(552, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 2, 92),
(553, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 3, 92),
(554, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 4, 72),
(555, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 5, 72),
(556, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 6, 72),
(557, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 7, 72),
(558, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 8, 72),
(559, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 9, 72),
(560, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 10, 72),
(561, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 11, 72),
(562, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 12, 72),
(563, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 13, 72),
(564, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 14, 72),
(565, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 15, 72),
(566, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 16, 72),
(567, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 17, 72),
(568, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 18, 72),
(569, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 19, 72),
(570, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 20, 72),
(571, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 21, 72),
(572, '2026-06-01', '2026-02-28', 'economy', 'car_003', 'Toyota Passo', 22, 82),
(573, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 1, 72),
(574, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 2, 72),
(575, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 3, 72),
(576, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 4, 48),
(577, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 5, 48),
(578, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 6, 48),
(579, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 7, 48),
(580, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 8, 48),
(581, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 9, 48),
(582, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 10, 48),
(583, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 11, 48),
(584, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 12, 48),
(585, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 13, 48),
(586, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 14, 48),
(587, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 15, 48),
(588, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 16, 48),
(589, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 17, 48),
(590, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 18, 48),
(591, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 19, 48),
(592, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 20, 48),
(593, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 21, 48),
(594, '2026-01-03', '2026-04-30', 'economy', 'car_003', 'Toyota Passo', 22, 58),
(595, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 1, 58),
(596, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 2, 58),
(597, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 3, 58),
(598, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 4, 38),
(599, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 5, 38),
(600, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 6, 38),
(601, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 7, 38),
(602, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 8, 38),
(603, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 9, 38),
(604, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 10, 38),
(605, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 11, 38),
(606, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 12, 38),
(607, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 13, 38),
(608, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 14, 38),
(609, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 15, 38),
(610, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 16, 38),
(611, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 17, 38),
(612, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 18, 38),
(613, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 19, 38),
(614, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 20, 38),
(615, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 21, 38),
(616, '2026-01-05', '2026-06-30', 'economy', 'car_003', 'Toyota Passo', 22, 48),
(617, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 1, 60),
(618, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 2, 60),
(619, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 3, 60),
(620, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 4, 40),
(621, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 5, 40),
(622, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 6, 40),
(623, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 7, 40),
(624, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 8, 40),
(625, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 9, 40),
(626, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 10, 40),
(627, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 11, 40),
(628, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 12, 40),
(629, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 13, 40),
(630, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 14, 40),
(631, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 15, 40),
(632, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 16, 40),
(633, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 17, 40),
(634, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 18, 40),
(635, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 19, 40),
(636, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 20, 40),
(637, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 21, 40),
(638, '2025-01-11', '2025-11-27', 'compact', 'car_004', 'Toyota Vitz', 22, 50),
(639, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 1, 94),
(640, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 2, 94),
(641, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 3, 94),
(642, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 4, 74),
(643, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 5, 74),
(644, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 6, 74),
(645, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 7, 74);
INSERT INTO `rental_rates` (`id`, `pickup_date`, `dropoff_date`, `car_category`, `car_code`, `car_model`, `duration`, `rate`) VALUES
(646, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 8, 74),
(647, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 9, 74),
(648, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 10, 74),
(649, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 11, 74),
(650, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 12, 74),
(651, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 13, 74),
(652, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 14, 74),
(653, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 15, 74),
(654, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 16, 74),
(655, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 17, 74),
(656, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 18, 74),
(657, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 19, 74),
(658, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 20, 74),
(659, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 21, 74),
(660, '2025-11-28', '2025-12-12', 'compact', 'car_004', 'Toyota Vitz', 22, 84),
(661, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 1, 104),
(662, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 2, 104),
(663, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 3, 104),
(664, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 4, 84),
(665, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 5, 84),
(666, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 6, 84),
(667, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 7, 84),
(668, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 8, 84),
(669, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 9, 84),
(670, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 10, 84),
(671, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 11, 84),
(672, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 12, 84),
(673, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 13, 84),
(674, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 14, 84),
(675, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 15, 84),
(676, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 16, 84),
(677, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 17, 84),
(678, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 18, 84),
(679, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 19, 84),
(680, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 20, 84),
(681, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 21, 84),
(682, '2025-12-13', '2025-12-22', 'compact', 'car_004', 'Toyota Vitz', 22, 94),
(683, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 1, 114),
(684, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 2, 114),
(685, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 3, 114),
(686, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 4, 94),
(687, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 5, 94),
(688, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 6, 94),
(689, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 7, 94),
(690, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 8, 94),
(691, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 9, 94),
(692, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 10, 94),
(693, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 11, 94),
(694, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 12, 94),
(695, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 13, 94),
(696, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 14, 94),
(697, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 15, 94),
(698, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 16, 94),
(699, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 17, 94),
(700, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 18, 94),
(701, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 19, 94),
(702, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 20, 94),
(703, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 21, 94),
(704, '2025-12-23', '2026-05-01', 'compact', 'car_004', 'Toyota Vitz', 22, 104),
(705, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 1, 94),
(706, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 2, 94),
(707, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 3, 94),
(708, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 4, 74),
(709, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 5, 74),
(710, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 6, 74),
(711, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 7, 74),
(712, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 8, 74),
(713, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 9, 74),
(714, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 10, 74),
(715, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 11, 74),
(716, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 12, 74),
(717, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 13, 74),
(718, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 14, 74),
(719, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 15, 74),
(720, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 16, 74),
(721, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 17, 74),
(722, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 18, 74),
(723, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 19, 74),
(724, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 20, 74),
(725, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 21, 74),
(726, '2026-06-01', '2026-02-28', 'compact', 'car_004', 'Toyota Vitz', 22, 84),
(727, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 1, 74),
(728, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 2, 74),
(729, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 3, 74),
(730, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 4, 50),
(731, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 5, 50),
(732, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 6, 50),
(733, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 7, 50),
(734, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 8, 50),
(735, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 9, 50),
(736, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 10, 50),
(737, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 11, 50),
(738, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 12, 50),
(739, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 13, 50),
(740, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 14, 50),
(741, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 15, 50),
(742, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 16, 50),
(743, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 17, 50),
(744, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 18, 50),
(745, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 19, 50),
(746, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 20, 50),
(747, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 21, 50),
(748, '2026-01-03', '2026-04-30', 'compact', 'car_004', 'Toyota Vitz', 22, 60),
(749, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 1, 60),
(750, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 2, 60),
(751, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 3, 60),
(752, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 4, 40),
(753, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 5, 40),
(754, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 6, 40),
(755, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 7, 40),
(756, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 8, 40),
(757, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 9, 40),
(758, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 10, 40),
(759, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 11, 40),
(760, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 12, 40),
(761, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 13, 40),
(762, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 14, 40),
(763, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 15, 40),
(764, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 16, 40),
(765, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 17, 40),
(766, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 18, 40),
(767, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 19, 40),
(768, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 20, 40),
(769, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 21, 40),
(770, '2026-01-05', '2026-06-30', 'compact', 'car_004', 'Toyota Vitz', 22, 50),
(771, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 1, 60),
(772, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 2, 60),
(773, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 3, 60),
(774, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 4, 40),
(775, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 5, 40),
(776, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 6, 40),
(777, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 7, 40),
(778, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 8, 40),
(779, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 9, 40),
(780, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 10, 40),
(781, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 11, 40),
(782, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 12, 40),
(783, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 13, 40),
(784, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 14, 40),
(785, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 15, 40),
(786, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 16, 40),
(787, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 17, 40),
(788, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 18, 40),
(789, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 19, 40),
(790, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 20, 40),
(791, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 21, 40),
(792, '2025-01-11', '2025-11-27', 'compact', 'car_005', 'Mazda Demio', 22, 50),
(793, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 1, 94),
(794, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 2, 94),
(795, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 3, 94),
(796, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 4, 74),
(797, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 5, 74),
(798, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 6, 74),
(799, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 7, 74),
(800, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 8, 74),
(801, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 9, 74),
(802, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 10, 74),
(803, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 11, 74),
(804, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 12, 74),
(805, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 13, 74),
(806, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 14, 74),
(807, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 15, 74),
(808, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 16, 74),
(809, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 17, 74),
(810, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 18, 74),
(811, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 19, 74),
(812, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 20, 74),
(813, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 21, 74),
(814, '2025-11-28', '2025-12-12', 'compact', 'car_005', 'Mazda Demio', 22, 84),
(815, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 1, 104),
(816, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 2, 104),
(817, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 3, 104),
(818, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 4, 84),
(819, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 5, 84),
(820, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 6, 84),
(821, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 7, 84),
(822, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 8, 84),
(823, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 9, 84),
(824, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 10, 84),
(825, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 11, 84),
(826, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 12, 84),
(827, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 13, 84),
(828, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 14, 84),
(829, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 15, 84),
(830, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 16, 84),
(831, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 17, 84),
(832, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 18, 84),
(833, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 19, 84),
(834, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 20, 84),
(835, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 21, 84),
(836, '2025-12-13', '2025-12-22', 'compact', 'car_005', 'Mazda Demio', 22, 94),
(837, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 1, 114),
(838, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 2, 114),
(839, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 3, 114),
(840, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 4, 94),
(841, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 5, 94),
(842, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 6, 94),
(843, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 7, 94),
(844, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 8, 94),
(845, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 9, 94),
(846, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 10, 94),
(847, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 11, 94),
(848, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 12, 94),
(849, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 13, 94),
(850, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 14, 94),
(851, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 15, 94),
(852, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 16, 94),
(853, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 17, 94),
(854, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 18, 94),
(855, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 19, 94),
(856, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 20, 94),
(857, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 21, 94),
(858, '2025-12-23', '2026-05-01', 'compact', 'car_005', 'Mazda Demio', 22, 104),
(859, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 1, 94),
(860, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 2, 94),
(861, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 3, 94),
(862, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 4, 74),
(863, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 5, 74),
(864, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 6, 74),
(865, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 7, 74),
(866, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 8, 74),
(867, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 9, 74),
(868, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 10, 74),
(869, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 11, 74),
(870, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 12, 74),
(871, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 13, 74),
(872, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 14, 74),
(873, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 15, 74),
(874, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 16, 74),
(875, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 17, 74),
(876, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 18, 74),
(877, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 19, 74),
(878, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 20, 74),
(879, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 21, 74),
(880, '2026-06-01', '2026-02-28', 'compact', 'car_005', 'Mazda Demio', 22, 84),
(881, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 1, 74),
(882, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 2, 74),
(883, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 3, 74),
(884, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 4, 50),
(885, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 5, 50),
(886, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 6, 50),
(887, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 7, 50),
(888, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 8, 50),
(889, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 9, 50),
(890, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 10, 50),
(891, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 11, 50),
(892, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 12, 50),
(893, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 13, 50),
(894, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 14, 50),
(895, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 15, 50),
(896, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 16, 50),
(897, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 17, 50),
(898, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 18, 50),
(899, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 19, 50),
(900, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 20, 50),
(901, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 21, 50),
(902, '2026-01-03', '2026-04-30', 'compact', 'car_005', 'Mazda Demio', 22, 60),
(903, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 1, 60),
(904, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 2, 60),
(905, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 3, 60),
(906, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 4, 40),
(907, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 5, 40),
(908, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 6, 40),
(909, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 7, 40),
(910, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 8, 40),
(911, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 9, 40),
(912, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 10, 40),
(913, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 11, 40),
(914, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 12, 40),
(915, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 13, 40),
(916, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 14, 40),
(917, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 15, 40),
(918, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 16, 40),
(919, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 17, 40),
(920, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 18, 40),
(921, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 19, 40),
(922, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 20, 40),
(923, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 21, 40),
(924, '2026-01-05', '2026-06-30', 'compact', 'car_005', 'Mazda Demio', 22, 50),
(925, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 1, 62),
(926, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 2, 62),
(927, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 3, 62),
(928, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 4, 44),
(929, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 5, 44),
(930, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 6, 44),
(931, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 7, 44),
(932, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 8, 44),
(933, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 9, 44),
(934, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 10, 44),
(935, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 11, 44),
(936, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 12, 44),
(937, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 13, 44),
(938, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 14, 44),
(939, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 15, 44),
(940, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 16, 44),
(941, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 17, 44),
(942, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 18, 44),
(943, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 19, 44),
(944, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 20, 44),
(945, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 21, 44),
(946, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Perodua Bezza', 22, 54),
(947, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 1, 98),
(948, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 2, 98),
(949, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 3, 98),
(950, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 4, 78),
(951, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 5, 78),
(952, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 6, 78),
(953, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 7, 78),
(954, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 8, 78),
(955, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 9, 78),
(956, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 10, 78),
(957, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 11, 78),
(958, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 12, 78),
(959, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 13, 78),
(960, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 14, 78),
(961, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 15, 78),
(962, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 16, 78),
(963, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 17, 78),
(964, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 18, 78),
(965, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 19, 78),
(966, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 20, 78),
(967, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 21, 78),
(968, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Perodua Bezza', 22, 88),
(969, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 1, 108),
(970, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 2, 108),
(971, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 3, 108),
(972, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 4, 88),
(973, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 5, 88),
(974, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 6, 88),
(975, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 7, 88),
(976, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 8, 88),
(977, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 9, 88),
(978, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 10, 88),
(979, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 11, 88),
(980, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 12, 88),
(981, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 13, 88),
(982, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 14, 88),
(983, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 15, 88),
(984, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 16, 88),
(985, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 17, 88),
(986, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 18, 88),
(987, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 19, 88),
(988, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 20, 88),
(989, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 21, 88),
(990, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Perodua Bezza', 22, 98),
(991, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 1, 118),
(992, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 2, 118),
(993, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 3, 118),
(994, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 4, 98),
(995, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 5, 98),
(996, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 6, 98),
(997, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 7, 98),
(998, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 8, 98),
(999, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 9, 98),
(1000, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 10, 98),
(1001, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 11, 98),
(1002, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 12, 98),
(1003, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 13, 98),
(1004, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 14, 98),
(1005, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 15, 98),
(1006, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 16, 98),
(1007, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 17, 98),
(1008, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 18, 98),
(1009, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 19, 98),
(1010, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 20, 98),
(1011, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 21, 98),
(1012, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Perodua Bezza', 22, 108),
(1013, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 1, 98),
(1014, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 2, 98),
(1015, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 3, 98),
(1016, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 4, 78),
(1017, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 5, 78),
(1018, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 6, 78),
(1019, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 7, 78),
(1020, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 8, 78),
(1021, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 9, 78),
(1022, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 10, 78),
(1023, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 11, 78),
(1024, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 12, 78),
(1025, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 13, 78),
(1026, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 14, 78),
(1027, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 15, 78),
(1028, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 16, 78),
(1029, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 17, 78),
(1030, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 18, 78),
(1031, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 19, 78),
(1032, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 20, 78),
(1033, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 21, 78),
(1034, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Perodua Bezza', 22, 88),
(1035, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 1, 78),
(1036, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 2, 78),
(1037, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 3, 78),
(1038, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 4, 54),
(1039, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 5, 54),
(1040, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 6, 54),
(1041, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 7, 54),
(1042, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 8, 54),
(1043, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 9, 54),
(1044, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 10, 54),
(1045, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 11, 54),
(1046, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 12, 54),
(1047, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 13, 54),
(1048, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 14, 54),
(1049, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 15, 54),
(1050, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 16, 54),
(1051, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 17, 54),
(1052, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 18, 54),
(1053, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 19, 54),
(1054, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 20, 54),
(1055, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 21, 54),
(1056, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Perodua Bezza', 22, 62),
(1057, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 1, 62),
(1058, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 2, 62),
(1059, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 3, 62),
(1060, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 4, 44),
(1061, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 5, 44),
(1062, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 6, 44),
(1063, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 7, 44),
(1064, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 8, 44),
(1065, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 9, 44),
(1066, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 10, 44),
(1067, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 11, 44),
(1068, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 12, 44),
(1069, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 13, 44),
(1070, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 14, 44),
(1071, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 15, 44),
(1072, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 16, 44),
(1073, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 17, 44),
(1074, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 18, 44),
(1075, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 19, 44),
(1076, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 20, 44),
(1077, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 21, 44),
(1078, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Perodua Bezza', 22, 54),
(1079, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 1, 62),
(1080, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 2, 62),
(1081, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 3, 62),
(1082, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 4, 44),
(1083, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 5, 44),
(1084, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 6, 44),
(1085, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 7, 44),
(1086, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 8, 44),
(1087, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 9, 44),
(1088, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 10, 44),
(1089, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 11, 44),
(1090, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 12, 44),
(1091, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 13, 44),
(1092, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 14, 44),
(1093, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 15, 44),
(1094, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 16, 44),
(1095, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 17, 44),
(1096, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 18, 44),
(1097, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 19, 44),
(1098, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 20, 44),
(1099, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 21, 44),
(1100, '2025-01-11', '2025-11-27', 'intermediate', 'car_006', 'Honda Fit ', 22, 54),
(1101, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 1, 98),
(1102, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 2, 98),
(1103, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 3, 98),
(1104, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 4, 78),
(1105, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 5, 78),
(1106, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 6, 78),
(1107, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 7, 78),
(1108, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 8, 78),
(1109, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 9, 78),
(1110, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 10, 78),
(1111, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 11, 78),
(1112, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 12, 78),
(1113, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 13, 78),
(1114, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 14, 78),
(1115, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 15, 78),
(1116, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 16, 78),
(1117, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 17, 78),
(1118, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 18, 78),
(1119, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 19, 78),
(1120, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 20, 78),
(1121, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 21, 78),
(1122, '2025-11-28', '2025-12-12', 'intermediate', 'car_006', 'Honda Fit ', 22, 88),
(1123, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 1, 108),
(1124, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 2, 108),
(1125, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 3, 108),
(1126, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 4, 88),
(1127, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 5, 88),
(1128, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 6, 88),
(1129, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 7, 88),
(1130, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 8, 88),
(1131, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 9, 88),
(1132, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 10, 88),
(1133, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 11, 88),
(1134, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 12, 88),
(1135, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 13, 88),
(1136, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 14, 88),
(1137, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 15, 88),
(1138, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 16, 88),
(1139, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 17, 88),
(1140, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 18, 88),
(1141, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 19, 88),
(1142, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 20, 88),
(1143, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 21, 88),
(1144, '2025-12-13', '2025-12-22', 'intermediate', 'car_006', 'Honda Fit ', 22, 98),
(1145, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 1, 118),
(1146, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 2, 118),
(1147, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 3, 118),
(1148, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 4, 98),
(1149, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 5, 98),
(1150, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 6, 98),
(1151, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 7, 98),
(1152, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 8, 98),
(1153, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 9, 98),
(1154, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 10, 98),
(1155, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 11, 98),
(1156, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 12, 98),
(1157, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 13, 98),
(1158, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 14, 98),
(1159, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 15, 98),
(1160, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 16, 98),
(1161, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 17, 98),
(1162, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 18, 98),
(1163, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 19, 98),
(1164, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 20, 98),
(1165, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 21, 98),
(1166, '2025-12-23', '2026-05-01', 'intermediate', 'car_006', 'Honda Fit ', 22, 108),
(1167, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 1, 98),
(1168, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 2, 98),
(1169, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 3, 98),
(1170, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 4, 78),
(1171, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 5, 78),
(1172, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 6, 78),
(1173, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 7, 78),
(1174, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 8, 78),
(1175, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 9, 78),
(1176, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 10, 78),
(1177, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 11, 78),
(1178, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 12, 78),
(1179, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 13, 78),
(1180, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 14, 78),
(1181, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 15, 78),
(1182, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 16, 78),
(1183, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 17, 78),
(1184, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 18, 78),
(1185, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 19, 78),
(1186, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 20, 78),
(1187, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 21, 78),
(1188, '2026-06-01', '2026-02-28', 'intermediate', 'car_006', 'Honda Fit ', 22, 88),
(1189, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 1, 78),
(1190, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 2, 78),
(1191, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 3, 78),
(1192, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 4, 54),
(1193, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 5, 54),
(1194, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 6, 54),
(1195, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 7, 54),
(1196, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 8, 54),
(1197, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 9, 54),
(1198, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 10, 54),
(1199, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 11, 54),
(1200, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 12, 54),
(1201, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 13, 54),
(1202, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 14, 54),
(1203, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 15, 54),
(1204, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 16, 54),
(1205, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 17, 54),
(1206, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 18, 54),
(1207, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 19, 54),
(1208, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 20, 54),
(1209, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 21, 54),
(1210, '2026-01-03', '2026-04-30', 'intermediate', 'car_006', 'Honda Fit ', 22, 62),
(1211, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 1, 62),
(1212, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 2, 62),
(1213, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 3, 62),
(1214, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 4, 44),
(1215, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 5, 44),
(1216, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 6, 44),
(1217, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 7, 44),
(1218, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 8, 44),
(1219, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 9, 44),
(1220, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 10, 44),
(1221, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 11, 44),
(1222, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 12, 44),
(1223, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 13, 44),
(1224, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 14, 44),
(1225, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 15, 44),
(1226, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 16, 44),
(1227, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 17, 44),
(1228, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 18, 44),
(1229, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 19, 44),
(1230, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 20, 44),
(1231, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 21, 44),
(1232, '2026-01-05', '2026-06-30', 'intermediate', 'car_006', 'Honda Fit ', 22, 54),
(1233, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 1, 68),
(1234, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 2, 68),
(1235, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 3, 68),
(1236, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 4, 48),
(1237, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 5, 48),
(1238, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 6, 48),
(1239, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 7, 48),
(1240, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 8, 48),
(1241, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 9, 48),
(1242, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 10, 48),
(1243, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 11, 48),
(1244, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 12, 48),
(1245, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 13, 48),
(1246, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 14, 48),
(1247, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 15, 48),
(1248, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 16, 48),
(1249, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 17, 48),
(1250, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 18, 48),
(1251, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 19, 48),
(1252, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 20, 48),
(1253, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 21, 48),
(1254, '2025-01-11', '2025-11-27', 'standard', 'car_007', 'Toyota Axio', 22, 58),
(1255, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 1, 105),
(1256, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 2, 105),
(1257, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 3, 105),
(1258, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 4, 85),
(1259, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 5, 85),
(1260, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 6, 85),
(1261, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 7, 85);
INSERT INTO `rental_rates` (`id`, `pickup_date`, `dropoff_date`, `car_category`, `car_code`, `car_model`, `duration`, `rate`) VALUES
(1262, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 8, 85),
(1263, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 9, 85),
(1264, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 10, 85),
(1265, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 11, 85),
(1266, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 12, 85),
(1267, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 13, 85),
(1268, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 14, 85),
(1269, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 15, 85),
(1270, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 16, 85),
(1271, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 17, 85),
(1272, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 18, 85),
(1273, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 19, 85),
(1274, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 20, 85),
(1275, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 21, 85),
(1276, '2025-11-28', '2025-12-12', 'standard', 'car_007', 'Toyota Axio', 22, 95),
(1277, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 1, 115),
(1278, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 2, 115),
(1279, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 3, 115),
(1280, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 4, 95),
(1281, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 5, 95),
(1282, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 6, 95),
(1283, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 7, 95),
(1284, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 8, 95),
(1285, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 9, 95),
(1286, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 10, 95),
(1287, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 11, 95),
(1288, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 12, 95),
(1289, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 13, 95),
(1290, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 14, 95),
(1291, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 15, 95),
(1292, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 16, 95),
(1293, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 17, 95),
(1294, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 18, 95),
(1295, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 19, 95),
(1296, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 20, 95),
(1297, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 21, 95),
(1298, '2025-12-13', '2025-12-22', 'standard', 'car_007', 'Toyota Axio', 22, 105),
(1299, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 1, 125),
(1300, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 2, 125),
(1301, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 3, 125),
(1302, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 4, 105),
(1303, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 5, 105),
(1304, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 6, 105),
(1305, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 7, 105),
(1306, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 8, 105),
(1307, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 9, 105),
(1308, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 10, 105),
(1309, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 11, 105),
(1310, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 12, 105),
(1311, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 13, 105),
(1312, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 14, 105),
(1313, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 15, 105),
(1314, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 16, 105),
(1315, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 17, 105),
(1316, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 18, 105),
(1317, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 19, 105),
(1318, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 20, 105),
(1319, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 21, 105),
(1320, '2025-12-23', '2026-05-01', 'standard', 'car_007', 'Toyota Axio', 22, 115),
(1321, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 1, 105),
(1322, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 2, 105),
(1323, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 3, 105),
(1324, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 4, 85),
(1325, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 5, 85),
(1326, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 6, 85),
(1327, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 7, 85),
(1328, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 8, 85),
(1329, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 9, 85),
(1330, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 10, 85),
(1331, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 11, 85),
(1332, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 12, 85),
(1333, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 13, 85),
(1334, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 14, 85),
(1335, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 15, 85),
(1336, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 16, 85),
(1337, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 17, 85),
(1338, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 18, 85),
(1339, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 19, 85),
(1340, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 20, 85),
(1341, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 21, 85),
(1342, '2026-06-01', '2026-02-28', 'standard', 'car_007', 'Toyota Axio', 22, 95),
(1343, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 1, 85),
(1344, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 2, 85),
(1345, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 3, 85),
(1346, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 4, 58),
(1347, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 5, 58),
(1348, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 6, 58),
(1349, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 7, 58),
(1350, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 8, 58),
(1351, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 9, 58),
(1352, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 10, 58),
(1353, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 11, 58),
(1354, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 12, 58),
(1355, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 13, 58),
(1356, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 14, 58),
(1357, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 15, 58),
(1358, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 16, 58),
(1359, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 17, 58),
(1360, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 18, 58),
(1361, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 19, 58),
(1362, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 20, 58),
(1363, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 21, 58),
(1364, '2026-01-03', '2026-04-30', 'standard', 'car_007', 'Toyota Axio', 22, 68),
(1365, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 1, 68),
(1366, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 2, 68),
(1367, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 3, 68),
(1368, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 4, 48),
(1369, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 5, 48),
(1370, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 6, 48),
(1371, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 7, 48),
(1372, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 8, 48),
(1373, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 9, 48),
(1374, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 10, 48),
(1375, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 11, 48),
(1376, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 12, 48),
(1377, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 13, 48),
(1378, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 14, 48),
(1379, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 15, 48),
(1380, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 16, 48),
(1381, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 17, 48),
(1382, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 18, 48),
(1383, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 19, 48),
(1384, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 20, 48),
(1385, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 21, 48),
(1386, '2026-01-05', '2026-06-30', 'standard', 'car_007', 'Toyota Axio', 22, 58),
(1387, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 1, 68),
(1388, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 2, 68),
(1389, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 3, 68),
(1390, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 4, 48),
(1391, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 5, 48),
(1392, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 6, 48),
(1393, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 7, 48),
(1394, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 8, 48),
(1395, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 9, 48),
(1396, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 10, 48),
(1397, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 11, 48),
(1398, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 12, 48),
(1399, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 13, 48),
(1400, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 14, 48),
(1401, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 15, 48),
(1402, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 16, 48),
(1403, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 17, 48),
(1404, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 18, 48),
(1405, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 19, 48),
(1406, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 20, 48),
(1407, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 21, 48),
(1408, '2025-01-11', '2025-11-27', 'standard', 'car_008', 'Toyota Allion', 22, 58),
(1409, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 1, 105),
(1410, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 2, 105),
(1411, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 3, 105),
(1412, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 4, 85),
(1413, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 5, 85),
(1414, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 6, 85),
(1415, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 7, 85),
(1416, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 8, 85),
(1417, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 9, 85),
(1418, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 10, 85),
(1419, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 11, 85),
(1420, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 12, 85),
(1421, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 13, 85),
(1422, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 14, 85),
(1423, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 15, 85),
(1424, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 16, 85),
(1425, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 17, 85),
(1426, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 18, 85),
(1427, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 19, 85),
(1428, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 20, 85),
(1429, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 21, 85),
(1430, '2025-11-28', '2025-12-12', 'standard', 'car_008', 'Toyota Allion', 22, 95),
(1431, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 1, 115),
(1432, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 2, 115),
(1433, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 3, 115),
(1434, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 4, 95),
(1435, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 5, 95),
(1436, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 6, 95),
(1437, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 7, 95),
(1438, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 8, 95),
(1439, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 9, 95),
(1440, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 10, 95),
(1441, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 11, 95),
(1442, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 12, 95),
(1443, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 13, 95),
(1444, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 14, 95),
(1445, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 15, 95),
(1446, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 16, 95),
(1447, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 17, 95),
(1448, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 18, 95),
(1449, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 19, 95),
(1450, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 20, 95),
(1451, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 21, 95),
(1452, '2025-12-13', '2025-12-22', 'standard', 'car_008', 'Toyota Allion', 22, 105),
(1453, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 1, 125),
(1454, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 2, 125),
(1455, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 3, 125),
(1456, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 4, 105),
(1457, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 5, 105),
(1458, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 6, 105),
(1459, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 7, 105),
(1460, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 8, 105),
(1461, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 9, 105),
(1462, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 10, 105),
(1463, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 11, 105),
(1464, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 12, 105),
(1465, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 13, 105),
(1466, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 14, 105),
(1467, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 15, 105),
(1468, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 16, 105),
(1469, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 17, 105),
(1470, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 18, 105),
(1471, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 19, 105),
(1472, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 20, 105),
(1473, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 21, 105),
(1474, '2025-12-23', '2026-05-01', 'standard', 'car_008', 'Toyota Allion', 22, 115),
(1475, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 1, 105),
(1476, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 2, 105),
(1477, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 3, 105),
(1478, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 4, 85),
(1479, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 5, 85),
(1480, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 6, 85),
(1481, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 7, 85),
(1482, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 8, 85),
(1483, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 9, 85),
(1484, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 10, 85),
(1485, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 11, 85),
(1486, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 12, 85),
(1487, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 13, 85),
(1488, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 14, 85),
(1489, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 15, 85),
(1490, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 16, 85),
(1491, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 17, 85),
(1492, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 18, 85),
(1493, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 19, 85),
(1494, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 20, 85),
(1495, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 21, 85),
(1496, '2026-06-01', '2026-02-28', 'standard', 'car_008', 'Toyota Allion', 22, 95),
(1497, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 1, 85),
(1498, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 2, 85),
(1499, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 3, 85),
(1500, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 4, 58),
(1501, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 5, 58),
(1502, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 6, 58),
(1503, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 7, 58),
(1504, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 8, 58),
(1505, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 9, 58),
(1506, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 10, 58),
(1507, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 11, 58),
(1508, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 12, 58),
(1509, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 13, 58),
(1510, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 14, 58),
(1511, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 15, 58),
(1512, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 16, 58),
(1513, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 17, 58),
(1514, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 18, 58),
(1515, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 19, 58),
(1516, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 20, 58),
(1517, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 21, 58),
(1518, '2026-01-03', '2026-04-30', 'standard', 'car_008', 'Toyota Allion', 22, 68),
(1519, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 1, 68),
(1520, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 2, 68),
(1521, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 3, 68),
(1522, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 4, 48),
(1523, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 5, 48),
(1524, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 6, 48),
(1525, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 7, 48),
(1526, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 8, 48),
(1527, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 9, 48),
(1528, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 10, 48),
(1529, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 11, 48),
(1530, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 12, 48),
(1531, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 13, 48),
(1532, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 14, 48),
(1533, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 15, 48),
(1534, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 16, 48),
(1535, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 17, 48),
(1536, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 18, 48),
(1537, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 19, 48),
(1538, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 20, 48),
(1539, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 21, 48),
(1540, '2026-01-05', '2026-06-30', 'standard', 'car_008', 'Toyota Allion', 22, 58),
(1541, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 1, 68),
(1542, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 2, 68),
(1543, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 3, 68),
(1544, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 4, 50),
(1545, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 5, 50),
(1546, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 6, 50),
(1547, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 7, 50),
(1548, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 8, 50),
(1549, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 9, 50),
(1550, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 10, 50),
(1551, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 11, 50),
(1552, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 12, 50),
(1553, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 13, 50),
(1554, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 14, 50),
(1555, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 15, 50),
(1556, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 16, 50),
(1557, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 17, 50),
(1558, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 18, 50),
(1559, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 19, 50),
(1560, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 20, 50),
(1561, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 21, 50),
(1562, '2025-01-11', '2025-11-27', 'full size', 'car_009', 'Honda Grace', 22, 60),
(1563, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 1, 107),
(1564, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 2, 107),
(1565, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 3, 107),
(1566, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 4, 87),
(1567, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 5, 87),
(1568, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 6, 87),
(1569, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 7, 87),
(1570, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 8, 87),
(1571, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 9, 87),
(1572, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 10, 87),
(1573, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 11, 87),
(1574, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 12, 87),
(1575, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 13, 87),
(1576, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 14, 87),
(1577, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 15, 87),
(1578, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 16, 87),
(1579, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 17, 87),
(1580, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 18, 87),
(1581, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 19, 87),
(1582, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 20, 87),
(1583, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 21, 87),
(1584, '2025-11-28', '2025-12-12', 'full size', 'car_009', 'Honda Grace', 22, 97),
(1585, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 1, 127),
(1586, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 2, 127),
(1587, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 3, 127),
(1588, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 4, 97),
(1589, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 5, 97),
(1590, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 6, 97),
(1591, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 7, 97),
(1592, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 8, 97),
(1593, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 9, 97),
(1594, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 10, 97),
(1595, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 11, 97),
(1596, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 12, 97),
(1597, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 13, 97),
(1598, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 14, 97),
(1599, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 15, 97),
(1600, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 16, 97),
(1601, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 17, 97),
(1602, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 18, 97),
(1603, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 19, 97),
(1604, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 20, 97),
(1605, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 21, 97),
(1606, '2025-12-13', '2025-12-22', 'full size', 'car_009', 'Honda Grace', 22, 107),
(1607, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 1, 137),
(1608, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 2, 137),
(1609, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 3, 137),
(1610, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 4, 107),
(1611, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 5, 107),
(1612, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 6, 107),
(1613, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 7, 107),
(1614, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 8, 107),
(1615, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 9, 107),
(1616, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 10, 107),
(1617, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 11, 107),
(1618, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 12, 107),
(1619, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 13, 107),
(1620, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 14, 107),
(1621, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 15, 107),
(1622, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 16, 107),
(1623, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 17, 107),
(1624, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 18, 107),
(1625, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 19, 107),
(1626, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 20, 107),
(1627, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 21, 107),
(1628, '2025-12-23', '2026-05-01', 'full size', 'car_009', 'Honda Grace', 22, 127),
(1629, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 1, 107),
(1630, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 2, 107),
(1631, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 3, 107),
(1632, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 4, 87),
(1633, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 5, 87),
(1634, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 6, 87),
(1635, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 7, 87),
(1636, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 8, 87),
(1637, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 9, 87),
(1638, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 10, 87),
(1639, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 11, 87),
(1640, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 12, 87),
(1641, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 13, 87),
(1642, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 14, 87),
(1643, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 15, 87),
(1644, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 16, 87),
(1645, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 17, 87),
(1646, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 18, 87),
(1647, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 19, 87),
(1648, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 20, 87),
(1649, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 21, 87),
(1650, '2026-06-01', '2026-02-28', 'full size', 'car_009', 'Honda Grace', 22, 97),
(1651, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 1, 87),
(1652, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 2, 87),
(1653, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 3, 87),
(1654, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 4, 60),
(1655, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 5, 60),
(1656, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 6, 60),
(1657, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 7, 60),
(1658, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 8, 60),
(1659, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 9, 60),
(1660, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 10, 60),
(1661, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 11, 60),
(1662, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 12, 60),
(1663, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 13, 60),
(1664, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 14, 60),
(1665, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 15, 60),
(1666, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 16, 60),
(1667, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 17, 60),
(1668, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 18, 60),
(1669, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 19, 60),
(1670, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 20, 60),
(1671, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 21, 60),
(1672, '2026-01-03', '2026-04-30', 'full size', 'car_009', 'Honda Grace', 22, 68),
(1673, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 1, 68),
(1674, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 2, 68),
(1675, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 3, 68),
(1676, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 4, 50),
(1677, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 5, 50),
(1678, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 6, 50),
(1679, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 7, 50),
(1680, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 8, 50),
(1681, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 9, 50),
(1682, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 10, 50),
(1683, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 11, 50),
(1684, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 12, 50),
(1685, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 13, 50),
(1686, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 14, 50),
(1687, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 15, 50),
(1688, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 16, 50),
(1689, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 17, 50),
(1690, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 18, 50),
(1691, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 19, 50),
(1692, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 20, 50),
(1693, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 21, 50),
(1694, '2026-01-05', '2026-06-30', 'full size', 'car_009', 'Honda Grace', 22, 60),
(1695, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 1, 68),
(1696, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 2, 68),
(1697, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 3, 68),
(1698, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 4, 50),
(1699, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 5, 50),
(1700, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 6, 50),
(1701, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 7, 50),
(1702, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 8, 50),
(1703, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 9, 50),
(1704, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 10, 50),
(1705, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 11, 50),
(1706, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 12, 50),
(1707, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 13, 50),
(1708, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 14, 50),
(1709, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 15, 50),
(1710, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 16, 50),
(1711, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 17, 50),
(1712, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 18, 50),
(1713, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 19, 50),
(1714, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 20, 50),
(1715, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 21, 50),
(1716, '2025-01-11', '2025-11-27', 'full size', 'car_010', 'Toyota Prius', 22, 60),
(1717, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 1, 107),
(1718, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 2, 107),
(1719, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 3, 107),
(1720, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 4, 87),
(1721, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 5, 87),
(1722, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 6, 87),
(1723, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 7, 87),
(1724, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 8, 87),
(1725, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 9, 87),
(1726, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 10, 87),
(1727, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 11, 87),
(1728, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 12, 87),
(1729, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 13, 87),
(1730, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 14, 87),
(1731, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 15, 87),
(1732, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 16, 87),
(1733, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 17, 87),
(1734, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 18, 87),
(1735, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 19, 87),
(1736, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 20, 87),
(1737, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 21, 87),
(1738, '2025-11-28', '2025-12-12', 'full size', 'car_010', 'Toyota Prius', 22, 97),
(1739, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 1, 127),
(1740, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 2, 127),
(1741, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 3, 127),
(1742, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 4, 97),
(1743, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 5, 97),
(1744, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 6, 97),
(1745, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 7, 97),
(1746, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 8, 97),
(1747, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 9, 97),
(1748, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 10, 97),
(1749, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 11, 97),
(1750, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 12, 97),
(1751, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 13, 97),
(1752, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 14, 97),
(1753, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 15, 97),
(1754, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 16, 97),
(1755, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 17, 97),
(1756, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 18, 97),
(1757, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 19, 97),
(1758, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 20, 97),
(1759, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 21, 97),
(1760, '2025-12-13', '2025-12-22', 'full size', 'car_010', 'Toyota Prius', 22, 107),
(1761, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 1, 137),
(1762, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 2, 137),
(1763, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 3, 137),
(1764, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 4, 107),
(1765, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 5, 107),
(1766, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 6, 107),
(1767, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 7, 107),
(1768, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 8, 107),
(1769, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 9, 107),
(1770, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 10, 107),
(1771, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 11, 107),
(1772, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 12, 107),
(1773, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 13, 107),
(1774, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 14, 107),
(1775, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 15, 107),
(1776, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 16, 107),
(1777, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 17, 107),
(1778, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 18, 107),
(1779, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 19, 107),
(1780, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 20, 107),
(1781, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 21, 107),
(1782, '2025-12-23', '2026-05-01', 'full size', 'car_010', 'Toyota Prius', 22, 127),
(1783, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 1, 107),
(1784, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 2, 107),
(1785, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 3, 107),
(1786, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 4, 87),
(1787, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 5, 87),
(1788, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 6, 87),
(1789, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 7, 87),
(1790, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 8, 87),
(1791, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 9, 87),
(1792, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 10, 87),
(1793, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 11, 87),
(1794, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 12, 87),
(1795, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 13, 87),
(1796, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 14, 87),
(1797, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 15, 87),
(1798, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 16, 87),
(1799, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 17, 87),
(1800, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 18, 87),
(1801, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 19, 87),
(1802, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 20, 87),
(1803, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 21, 87),
(1804, '2026-06-01', '2026-02-28', 'full size', 'car_010', 'Toyota Prius', 22, 97),
(1805, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 1, 87),
(1806, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 2, 87),
(1807, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 3, 87),
(1808, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 4, 60),
(1809, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 5, 60),
(1810, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 6, 60),
(1811, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 7, 60),
(1812, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 8, 60),
(1813, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 9, 60),
(1814, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 10, 60),
(1815, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 11, 60),
(1816, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 12, 60),
(1817, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 13, 60),
(1818, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 14, 60),
(1819, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 15, 60),
(1820, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 16, 60),
(1821, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 17, 60),
(1822, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 18, 60),
(1823, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 19, 60),
(1824, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 20, 60),
(1825, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 21, 60),
(1826, '2026-01-03', '2026-04-30', 'full size', 'car_010', 'Toyota Prius', 22, 68),
(1827, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 1, 68),
(1828, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 2, 68),
(1829, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 3, 68),
(1830, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 4, 50),
(1831, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 5, 50),
(1832, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 6, 50),
(1833, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 7, 50),
(1834, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 8, 50),
(1835, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 9, 50),
(1836, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 10, 50),
(1837, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 11, 50),
(1838, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 12, 50),
(1839, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 13, 50),
(1840, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 14, 50),
(1841, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 15, 50),
(1842, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 16, 50),
(1843, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 17, 50),
(1844, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 18, 50),
(1845, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 19, 50),
(1846, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 20, 50),
(1847, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 21, 50),
(1848, '2026-01-05', '2026-06-30', 'full size', 'car_010', 'Toyota Prius', 22, 60),
(1849, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 1, 270),
(1850, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 2, 270),
(1851, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 3, 270),
(1852, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 4, 250),
(1853, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 5, 250),
(1854, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 6, 250),
(1855, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 7, 250),
(1856, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 8, 250),
(1857, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 9, 250),
(1858, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 10, 250),
(1859, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 11, 250),
(1860, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 12, 250),
(1861, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 13, 250),
(1862, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 14, 250),
(1863, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 15, 250),
(1864, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 16, 250),
(1865, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 17, 250),
(1866, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 18, 250),
(1867, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 19, 250),
(1868, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 20, 250),
(1869, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 21, 250),
(1870, '2025-01-11', '2025-11-27', 'luxury', 'car_011', 'Mercedes Benz C Class', 22, 260),
(1871, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 1, 450),
(1872, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 2, 450),
(1873, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 3, 450);
INSERT INTO `rental_rates` (`id`, `pickup_date`, `dropoff_date`, `car_category`, `car_code`, `car_model`, `duration`, `rate`) VALUES
(1874, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 4, 400),
(1875, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 5, 400),
(1876, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 6, 400),
(1877, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 7, 400),
(1878, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 8, 400),
(1879, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 9, 400),
(1880, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 10, 400),
(1881, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 11, 400),
(1882, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 12, 400),
(1883, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 13, 400),
(1884, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 14, 400),
(1885, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 15, 400),
(1886, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 16, 400),
(1887, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 17, 400),
(1888, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 18, 400),
(1889, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 19, 400),
(1890, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 20, 400),
(1891, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 21, 400),
(1892, '2025-11-28', '2025-12-12', 'luxury', 'car_011', 'Mercedes Benz C Class', 22, 420),
(1893, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 1, 500),
(1894, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 2, 500),
(1895, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 3, 500),
(1896, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 4, 420),
(1897, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 5, 420),
(1898, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 6, 420),
(1899, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 7, 420),
(1900, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 8, 420),
(1901, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 9, 420),
(1902, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 10, 420),
(1903, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 11, 420),
(1904, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 12, 420),
(1905, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 13, 420),
(1906, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 14, 420),
(1907, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 15, 420),
(1908, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 16, 420),
(1909, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 17, 420),
(1910, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 18, 420),
(1911, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 19, 420),
(1912, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 20, 420),
(1913, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 21, 420),
(1914, '2025-12-13', '2025-12-22', 'luxury', 'car_011', 'Mercedes Benz C Class', 22, 450),
(1915, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 1, 600),
(1916, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 2, 600),
(1917, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 3, 600),
(1918, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 4, 450),
(1919, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 5, 450),
(1920, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 6, 450),
(1921, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 7, 450),
(1922, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 8, 450),
(1923, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 9, 450),
(1924, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 10, 450),
(1925, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 11, 450),
(1926, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 12, 450),
(1927, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 13, 450),
(1928, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 14, 450),
(1929, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 15, 450),
(1930, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 16, 450),
(1931, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 17, 450),
(1932, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 18, 450),
(1933, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 19, 450),
(1934, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 20, 450),
(1935, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 21, 450),
(1936, '2025-12-23', '2026-05-01', 'luxury', 'car_011', 'Mercedes Benz C Class', 22, 500),
(1937, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 1, 450),
(1938, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 2, 450),
(1939, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 3, 450),
(1940, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 4, 400),
(1941, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 5, 400),
(1942, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 6, 400),
(1943, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 7, 400),
(1944, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 8, 400),
(1945, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 9, 400),
(1946, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 10, 400),
(1947, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 11, 400),
(1948, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 12, 400),
(1949, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 13, 400),
(1950, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 14, 400),
(1951, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 15, 400),
(1952, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 16, 400),
(1953, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 17, 400),
(1954, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 18, 400),
(1955, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 19, 400),
(1956, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 20, 400),
(1957, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 21, 400),
(1958, '2026-06-01', '2026-02-28', 'luxury', 'car_011', 'Mercedes Benz C Class', 22, 420),
(1959, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 1, 400),
(1960, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 2, 400),
(1961, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 3, 400),
(1962, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 4, 260),
(1963, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 5, 260),
(1964, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 6, 260),
(1965, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 7, 260),
(1966, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 8, 260),
(1967, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 9, 260),
(1968, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 10, 260),
(1969, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 11, 260),
(1970, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 12, 260),
(1971, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 13, 260),
(1972, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 14, 260),
(1973, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 15, 260),
(1974, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 16, 260),
(1975, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 17, 260),
(1976, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 18, 260),
(1977, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 19, 260),
(1978, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 20, 260),
(1979, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 21, 260),
(1980, '2026-01-03', '2026-04-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 22, 270),
(1981, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 1, 270),
(1982, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 2, 270),
(1983, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 3, 270),
(1984, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 4, 250),
(1985, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 5, 250),
(1986, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 6, 250),
(1987, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 7, 250),
(1988, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 8, 250),
(1989, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 9, 250),
(1990, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 10, 250),
(1991, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 11, 250),
(1992, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 12, 250),
(1993, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 13, 250),
(1994, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 14, 250),
(1995, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 15, 250),
(1996, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 16, 250),
(1997, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 17, 250),
(1998, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 18, 250),
(1999, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 19, 250),
(2000, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 20, 250),
(2001, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 21, 250),
(2002, '2026-01-05', '2026-06-30', 'luxury', 'car_011', 'Mercedes Benz C Class', 22, 260),
(2003, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 1, 270),
(2004, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 2, 270),
(2005, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 3, 270),
(2006, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 4, 250),
(2007, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 5, 250),
(2008, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 6, 250),
(2009, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 7, 250),
(2010, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 8, 250),
(2011, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 9, 250),
(2012, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 10, 250),
(2013, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 11, 250),
(2014, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 12, 250),
(2015, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 13, 250),
(2016, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 14, 250),
(2017, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 15, 250),
(2018, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 16, 250),
(2019, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 17, 250),
(2020, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 18, 250),
(2021, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 19, 250),
(2022, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 20, 250),
(2023, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 21, 250),
(2024, '2025-01-11', '2025-11-27', 'luxury', 'car_012', 'BMW', 22, 260),
(2025, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 1, 450),
(2026, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 2, 450),
(2027, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 3, 450),
(2028, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 4, 400),
(2029, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 5, 400),
(2030, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 6, 400),
(2031, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 7, 400),
(2032, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 8, 400),
(2033, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 9, 400),
(2034, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 10, 400),
(2035, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 11, 400),
(2036, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 12, 400),
(2037, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 13, 400),
(2038, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 14, 400),
(2039, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 15, 400),
(2040, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 16, 400),
(2041, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 17, 400),
(2042, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 18, 400),
(2043, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 19, 400),
(2044, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 20, 400),
(2045, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 21, 400),
(2046, '2025-11-28', '2025-12-12', 'luxury', 'car_012', 'BMW', 22, 420),
(2047, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 1, 500),
(2048, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 2, 500),
(2049, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 3, 500),
(2050, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 4, 420),
(2051, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 5, 420),
(2052, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 6, 420),
(2053, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 7, 420),
(2054, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 8, 420),
(2055, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 9, 420),
(2056, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 10, 420),
(2057, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 11, 420),
(2058, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 12, 420),
(2059, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 13, 420),
(2060, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 14, 420),
(2061, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 15, 420),
(2062, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 16, 420),
(2063, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 17, 420),
(2064, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 18, 420),
(2065, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 19, 420),
(2066, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 20, 420),
(2067, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 21, 420),
(2068, '2025-12-13', '2025-12-22', 'luxury', 'car_012', 'BMW', 22, 450),
(2069, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 1, 600),
(2070, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 2, 600),
(2071, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 3, 600),
(2072, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 4, 450),
(2073, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 5, 450),
(2074, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 6, 450),
(2075, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 7, 450),
(2076, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 8, 450),
(2077, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 9, 450),
(2078, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 10, 450),
(2079, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 11, 450),
(2080, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 12, 450),
(2081, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 13, 450),
(2082, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 14, 450),
(2083, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 15, 450),
(2084, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 16, 450),
(2085, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 17, 450),
(2086, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 18, 450),
(2087, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 19, 450),
(2088, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 20, 450),
(2089, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 21, 450),
(2090, '2025-12-23', '2026-05-01', 'luxury', 'car_012', 'BMW', 22, 500),
(2091, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 1, 450),
(2092, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 2, 450),
(2093, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 3, 450),
(2094, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 4, 400),
(2095, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 5, 400),
(2096, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 6, 400),
(2097, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 7, 400),
(2098, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 8, 400),
(2099, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 9, 400),
(2100, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 10, 400),
(2101, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 11, 400),
(2102, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 12, 400),
(2103, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 13, 400),
(2104, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 14, 400),
(2105, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 15, 400),
(2106, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 16, 400),
(2107, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 17, 400),
(2108, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 18, 400),
(2109, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 19, 400),
(2110, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 20, 400),
(2111, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 21, 400),
(2112, '2026-06-01', '2026-02-28', 'luxury', 'car_012', 'BMW', 22, 420),
(2113, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 1, 400),
(2114, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 2, 400),
(2115, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 3, 400),
(2116, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 4, 260),
(2117, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 5, 260),
(2118, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 6, 260),
(2119, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 7, 260),
(2120, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 8, 260),
(2121, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 9, 260),
(2122, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 10, 260),
(2123, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 11, 260),
(2124, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 12, 260),
(2125, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 13, 260),
(2126, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 14, 260),
(2127, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 15, 260),
(2128, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 16, 260),
(2129, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 17, 260),
(2130, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 18, 260),
(2131, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 19, 260),
(2132, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 20, 260),
(2133, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 21, 260),
(2134, '2026-01-03', '2026-04-30', 'luxury', 'car_012', 'BMW', 22, 270),
(2135, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 1, 270),
(2136, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 2, 270),
(2137, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 3, 270),
(2138, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 4, 250),
(2139, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 5, 250),
(2140, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 6, 250),
(2141, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 7, 250),
(2142, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 8, 250),
(2143, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 9, 250),
(2144, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 10, 250),
(2145, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 11, 250),
(2146, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 12, 250),
(2147, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 13, 250),
(2148, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 14, 250),
(2149, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 15, 250),
(2150, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 16, 250),
(2151, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 17, 250),
(2152, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 18, 250),
(2153, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 19, 250),
(2154, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 20, 250),
(2155, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 21, 250),
(2156, '2026-01-05', '2026-06-30', 'luxury', 'car_012', 'BMW', 22, 260),
(2157, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 1, 120),
(2158, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 2, 120),
(2159, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 3, 120),
(2160, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 4, 100),
(2161, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 5, 100),
(2162, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 6, 100),
(2163, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 7, 100),
(2164, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 8, 100),
(2165, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 9, 100),
(2166, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 10, 100),
(2167, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 11, 100),
(2168, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 12, 100),
(2169, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 13, 100),
(2170, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 14, 100),
(2171, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 15, 100),
(2172, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 16, 100),
(2173, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 17, 100),
(2174, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 18, 100),
(2175, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 19, 100),
(2176, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 20, 100),
(2177, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 21, 100),
(2178, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_013', 'MG ZS', 22, 110),
(2179, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 1, 350),
(2180, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 2, 350),
(2181, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 3, 350),
(2182, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 4, 300),
(2183, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 5, 300),
(2184, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 6, 300),
(2185, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 7, 300),
(2186, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 8, 300),
(2187, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 9, 300),
(2188, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 10, 300),
(2189, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 11, 300),
(2190, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 12, 300),
(2191, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 13, 300),
(2192, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 14, 300),
(2193, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 15, 300),
(2194, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 16, 300),
(2195, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 17, 300),
(2196, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 18, 300),
(2197, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 19, 300),
(2198, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 20, 300),
(2199, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 21, 300),
(2200, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_013', 'MG ZS', 22, 320),
(2201, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 1, 400),
(2202, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 2, 400),
(2203, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 3, 400),
(2204, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 4, 320),
(2205, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 5, 320),
(2206, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 6, 320),
(2207, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 7, 320),
(2208, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 8, 320),
(2209, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 9, 320),
(2210, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 10, 320),
(2211, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 11, 320),
(2212, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 12, 320),
(2213, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 13, 320),
(2214, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 14, 320),
(2215, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 15, 320),
(2216, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 16, 320),
(2217, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 17, 320),
(2218, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 18, 320),
(2219, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 19, 320),
(2220, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 20, 320),
(2221, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 21, 320),
(2222, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_013', 'MG ZS', 22, 350),
(2223, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 1, 500),
(2224, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 2, 500),
(2225, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 3, 500),
(2226, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 4, 350),
(2227, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 5, 350),
(2228, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 6, 350),
(2229, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 7, 350),
(2230, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 8, 350),
(2231, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 9, 350),
(2232, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 10, 350),
(2233, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 11, 350),
(2234, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 12, 350),
(2235, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 13, 350),
(2236, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 14, 350),
(2237, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 15, 350),
(2238, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 16, 350),
(2239, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 17, 350),
(2240, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 18, 350),
(2241, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 19, 350),
(2242, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 20, 350),
(2243, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 21, 350),
(2244, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_013', 'MG ZS', 22, 400),
(2245, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 1, 350),
(2246, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 2, 350),
(2247, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 3, 350),
(2248, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 4, 300),
(2249, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 5, 300),
(2250, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 6, 300),
(2251, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 7, 300),
(2252, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 8, 300),
(2253, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 9, 300),
(2254, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 10, 300),
(2255, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 11, 300),
(2256, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 12, 300),
(2257, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 13, 300),
(2258, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 14, 300),
(2259, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 15, 300),
(2260, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 16, 300),
(2261, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 17, 300),
(2262, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 18, 300),
(2263, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 19, 300),
(2264, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 20, 300),
(2265, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 21, 300),
(2266, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_013', 'MG ZS', 22, 320),
(2267, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 1, 300),
(2268, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 2, 300),
(2269, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 3, 300),
(2270, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 4, 110),
(2271, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 5, 110),
(2272, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 6, 110),
(2273, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 7, 110),
(2274, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 8, 110),
(2275, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 9, 110),
(2276, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 10, 110),
(2277, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 11, 110),
(2278, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 12, 110),
(2279, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 13, 110),
(2280, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 14, 110),
(2281, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 15, 110),
(2282, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 16, 110),
(2283, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 17, 110),
(2284, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 18, 110),
(2285, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 19, 110),
(2286, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 20, 110),
(2287, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 21, 110),
(2288, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_013', 'MG ZS', 22, 120),
(2289, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 1, 120),
(2290, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 2, 120),
(2291, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 3, 120),
(2292, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 4, 100),
(2293, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 5, 100),
(2294, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 6, 100),
(2295, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 7, 100),
(2296, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 8, 100),
(2297, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 9, 100),
(2298, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 10, 100),
(2299, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 11, 100),
(2300, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 12, 100),
(2301, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 13, 100),
(2302, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 14, 100),
(2303, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 15, 100),
(2304, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 16, 100),
(2305, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 17, 100),
(2306, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 18, 100),
(2307, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 19, 100),
(2308, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 20, 100),
(2309, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 21, 100),
(2310, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_013', 'MG ZS', 22, 110),
(2311, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 1, 120),
(2312, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 2, 120),
(2313, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 3, 120),
(2314, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 4, 100),
(2315, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 5, 100),
(2316, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 6, 100),
(2317, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 7, 100),
(2318, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 8, 100),
(2319, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 9, 100),
(2320, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 10, 100),
(2321, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 11, 100),
(2322, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 12, 100),
(2323, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 13, 100),
(2324, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 14, 100),
(2325, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 15, 100),
(2326, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 16, 100),
(2327, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 17, 100),
(2328, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 18, 100),
(2329, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 19, 100),
(2330, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 20, 100),
(2331, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 21, 100),
(2332, '2025-01-11', '2025-11-27', 'Compact SUV', 'car_014', 'DFSK', 22, 110),
(2333, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 1, 350),
(2334, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 2, 350),
(2335, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 3, 350),
(2336, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 4, 300),
(2337, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 5, 300),
(2338, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 6, 300),
(2339, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 7, 300),
(2340, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 8, 300),
(2341, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 9, 300),
(2342, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 10, 300),
(2343, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 11, 300),
(2344, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 12, 300),
(2345, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 13, 300),
(2346, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 14, 300),
(2347, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 15, 300),
(2348, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 16, 300),
(2349, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 17, 300),
(2350, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 18, 300),
(2351, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 19, 300),
(2352, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 20, 300),
(2353, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 21, 300),
(2354, '2025-11-28', '2025-12-12', 'Compact SUV', 'car_014', 'DFSK', 22, 320),
(2355, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 1, 400),
(2356, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 2, 400),
(2357, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 3, 400),
(2358, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 4, 320),
(2359, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 5, 320),
(2360, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 6, 320),
(2361, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 7, 320),
(2362, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 8, 320),
(2363, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 9, 320),
(2364, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 10, 320),
(2365, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 11, 320),
(2366, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 12, 320),
(2367, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 13, 320),
(2368, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 14, 320),
(2369, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 15, 320),
(2370, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 16, 320),
(2371, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 17, 320),
(2372, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 18, 320),
(2373, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 19, 320),
(2374, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 20, 320),
(2375, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 21, 320),
(2376, '2025-12-13', '2025-12-22', 'Compact SUV', 'car_014', 'DFSK', 22, 350),
(2377, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 1, 500),
(2378, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 2, 500),
(2379, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 3, 500),
(2380, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 4, 350),
(2381, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 5, 350),
(2382, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 6, 350),
(2383, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 7, 350),
(2384, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 8, 350),
(2385, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 9, 350),
(2386, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 10, 350),
(2387, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 11, 350),
(2388, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 12, 350),
(2389, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 13, 350),
(2390, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 14, 350),
(2391, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 15, 350),
(2392, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 16, 350),
(2393, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 17, 350),
(2394, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 18, 350),
(2395, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 19, 350),
(2396, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 20, 350),
(2397, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 21, 350),
(2398, '2025-12-23', '2026-05-01', 'Compact SUV', 'car_014', 'DFSK', 22, 400),
(2399, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 1, 350),
(2400, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 2, 350),
(2401, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 3, 350),
(2402, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 4, 300),
(2403, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 5, 300),
(2404, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 6, 300),
(2405, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 7, 300),
(2406, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 8, 300),
(2407, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 9, 300),
(2408, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 10, 300),
(2409, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 11, 300),
(2410, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 12, 300),
(2411, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 13, 300),
(2412, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 14, 300),
(2413, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 15, 300),
(2414, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 16, 300),
(2415, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 17, 300),
(2416, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 18, 300),
(2417, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 19, 300),
(2418, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 20, 300),
(2419, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 21, 300),
(2420, '2026-06-01', '2026-02-28', 'Compact SUV', 'car_014', 'DFSK', 22, 320),
(2421, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 1, 300),
(2422, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 2, 300),
(2423, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 3, 300),
(2424, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 4, 110),
(2425, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 5, 110),
(2426, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 6, 110),
(2427, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 7, 110),
(2428, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 8, 110),
(2429, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 9, 110),
(2430, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 10, 110),
(2431, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 11, 110),
(2432, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 12, 110),
(2433, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 13, 110),
(2434, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 14, 110),
(2435, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 15, 110),
(2436, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 16, 110),
(2437, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 17, 110),
(2438, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 18, 110),
(2439, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 19, 110),
(2440, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 20, 110),
(2441, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 21, 110),
(2442, '2026-01-03', '2026-04-30', 'Compact SUV', 'car_014', 'DFSK', 22, 120),
(2443, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 1, 120),
(2444, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 2, 120),
(2445, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 3, 120),
(2446, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 4, 100),
(2447, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 5, 100),
(2448, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 6, 100),
(2449, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 7, 100),
(2450, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 8, 100),
(2451, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 9, 100),
(2452, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 10, 100),
(2453, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 11, 100),
(2454, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 12, 100),
(2455, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 13, 100),
(2456, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 14, 100),
(2457, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 15, 100),
(2458, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 16, 100),
(2459, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 17, 100),
(2460, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 18, 100),
(2461, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 19, 100),
(2462, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 20, 100),
(2463, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 21, 100),
(2464, '2026-01-05', '2026-06-30', 'Compact SUV', 'car_014', 'DFSK', 22, 110),
(2465, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 1, 215),
(2466, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 2, 215),
(2467, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 3, 215),
(2468, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 4, 200),
(2469, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 5, 200),
(2470, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 6, 200),
(2471, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 7, 200),
(2472, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 8, 200),
(2473, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 9, 200),
(2474, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 10, 200),
(2475, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 11, 200),
(2476, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 12, 200),
(2477, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 13, 200),
(2478, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 14, 200),
(2479, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 15, 200),
(2480, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 16, 200),
(2481, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 17, 200),
(2482, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 18, 200),
(2483, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 19, 200),
(2484, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 20, 200),
(2485, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 21, 200),
(2486, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 22, 210),
(2487, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 1, 500),
(2488, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 2, 500),
(2489, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 3, 500),
(2490, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 4, 450),
(2491, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 5, 450),
(2492, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 6, 450),
(2493, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 7, 450),
(2494, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 8, 450),
(2495, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 9, 450),
(2496, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 10, 450),
(2497, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 11, 450),
(2498, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 12, 450),
(2499, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 13, 450),
(2500, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 14, 450),
(2501, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 15, 450),
(2502, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 16, 450),
(2503, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 17, 450),
(2504, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 18, 450),
(2505, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 19, 450);
INSERT INTO `rental_rates` (`id`, `pickup_date`, `dropoff_date`, `car_category`, `car_code`, `car_model`, `duration`, `rate`) VALUES
(2506, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 20, 450),
(2507, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 21, 450),
(2508, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 22, 470),
(2509, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 1, 550),
(2510, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 2, 550),
(2511, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 3, 550),
(2512, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 4, 470),
(2513, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 5, 470),
(2514, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 6, 470),
(2515, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 7, 470),
(2516, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 8, 470),
(2517, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 9, 470),
(2518, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 10, 470),
(2519, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 11, 470),
(2520, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 12, 470),
(2521, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 13, 470),
(2522, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 14, 470),
(2523, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 15, 470),
(2524, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 16, 470),
(2525, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 17, 470),
(2526, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 18, 470),
(2527, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 19, 470),
(2528, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 20, 470),
(2529, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 21, 470),
(2530, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 22, 500),
(2531, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 1, 650),
(2532, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 2, 650),
(2533, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 3, 650),
(2534, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 4, 500),
(2535, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 5, 500),
(2536, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 6, 500),
(2537, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 7, 500),
(2538, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 8, 500),
(2539, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 9, 500),
(2540, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 10, 500),
(2541, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 11, 500),
(2542, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 12, 500),
(2543, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 13, 500),
(2544, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 14, 500),
(2545, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 15, 500),
(2546, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 16, 500),
(2547, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 17, 500),
(2548, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 18, 500),
(2549, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 19, 500),
(2550, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 20, 500),
(2551, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 21, 500),
(2552, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 22, 550),
(2553, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 1, 500),
(2554, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 2, 500),
(2555, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 3, 500),
(2556, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 4, 450),
(2557, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 5, 450),
(2558, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 6, 450),
(2559, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 7, 450),
(2560, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 8, 450),
(2561, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 9, 450),
(2562, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 10, 450),
(2563, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 11, 450),
(2564, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 12, 450),
(2565, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 13, 450),
(2566, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 14, 450),
(2567, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 15, 450),
(2568, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 16, 450),
(2569, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 17, 450),
(2570, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 18, 450),
(2571, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 19, 450),
(2572, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 20, 450),
(2573, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 21, 450),
(2574, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 22, 470),
(2575, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 1, 450),
(2576, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 2, 450),
(2577, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 3, 450),
(2578, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 4, 210),
(2579, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 5, 210),
(2580, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 6, 210),
(2581, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 7, 210),
(2582, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 8, 210),
(2583, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 9, 210),
(2584, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 10, 210),
(2585, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 11, 210),
(2586, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 12, 210),
(2587, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 13, 210),
(2588, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 14, 210),
(2589, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 15, 210),
(2590, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 16, 210),
(2591, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 17, 210),
(2592, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 18, 210),
(2593, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 19, 210),
(2594, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 20, 210),
(2595, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 21, 210),
(2596, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 22, 215),
(2597, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 1, 215),
(2598, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 2, 215),
(2599, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 3, 215),
(2600, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 4, 200),
(2601, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 5, 200),
(2602, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 6, 200),
(2603, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 7, 200),
(2604, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 8, 200),
(2605, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 9, 200),
(2606, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 10, 200),
(2607, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 11, 200),
(2608, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 12, 200),
(2609, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 13, 200),
(2610, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 14, 200),
(2611, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 15, 200),
(2612, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 16, 200),
(2613, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 17, 200),
(2614, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 18, 200),
(2615, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 19, 200),
(2616, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 20, 200),
(2617, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 21, 200),
(2618, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_015', 'Mitsubishi Montero', 22, 210),
(2619, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 1, 215),
(2620, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 2, 215),
(2621, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 3, 215),
(2622, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 4, 200),
(2623, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 5, 200),
(2624, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 6, 200),
(2625, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 7, 200),
(2626, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 8, 200),
(2627, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 9, 200),
(2628, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 10, 200),
(2629, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 11, 200),
(2630, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 12, 200),
(2631, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 13, 200),
(2632, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 14, 200),
(2633, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 15, 200),
(2634, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 16, 200),
(2635, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 17, 200),
(2636, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 18, 200),
(2637, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 19, 200),
(2638, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 20, 200),
(2639, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 21, 200),
(2640, '2025-01-11', '2025-11-27', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 22, 210),
(2641, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 1, 500),
(2642, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 2, 500),
(2643, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 3, 500),
(2644, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 4, 450),
(2645, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 5, 450),
(2646, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 6, 450),
(2647, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 7, 450),
(2648, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 8, 450),
(2649, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 9, 450),
(2650, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 10, 450),
(2651, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 11, 450),
(2652, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 12, 450),
(2653, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 13, 450),
(2654, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 14, 450),
(2655, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 15, 450),
(2656, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 16, 450),
(2657, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 17, 450),
(2658, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 18, 450),
(2659, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 19, 450),
(2660, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 20, 450),
(2661, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 21, 450),
(2662, '2025-11-28', '2025-12-12', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 22, 470),
(2663, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 1, 550),
(2664, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 2, 550),
(2665, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 3, 550),
(2666, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 4, 470),
(2667, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 5, 470),
(2668, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 6, 470),
(2669, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 7, 470),
(2670, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 8, 470),
(2671, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 9, 470),
(2672, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 10, 470),
(2673, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 11, 470),
(2674, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 12, 470),
(2675, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 13, 470),
(2676, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 14, 470),
(2677, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 15, 470),
(2678, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 16, 470),
(2679, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 17, 470),
(2680, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 18, 470),
(2681, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 19, 470),
(2682, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 20, 470),
(2683, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 21, 470),
(2684, '2025-12-13', '2025-12-22', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 22, 500),
(2685, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 1, 650),
(2686, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 2, 650),
(2687, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 3, 650),
(2688, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 4, 500),
(2689, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 5, 500),
(2690, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 6, 500),
(2691, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 7, 500),
(2692, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 8, 500),
(2693, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 9, 500),
(2694, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 10, 500),
(2695, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 11, 500),
(2696, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 12, 500),
(2697, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 13, 500),
(2698, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 14, 500),
(2699, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 15, 500),
(2700, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 16, 500),
(2701, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 17, 500),
(2702, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 18, 500),
(2703, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 19, 500),
(2704, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 20, 500),
(2705, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 21, 500),
(2706, '2025-12-23', '2026-05-01', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 22, 550),
(2707, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 1, 500),
(2708, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 2, 500),
(2709, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 3, 500),
(2710, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 4, 450),
(2711, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 5, 450),
(2712, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 6, 450),
(2713, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 7, 450),
(2714, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 8, 450),
(2715, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 9, 450),
(2716, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 10, 450),
(2717, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 11, 450),
(2718, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 12, 450),
(2719, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 13, 450),
(2720, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 14, 450),
(2721, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 15, 450),
(2722, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 16, 450),
(2723, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 17, 450),
(2724, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 18, 450),
(2725, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 19, 450),
(2726, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 20, 450),
(2727, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 21, 450),
(2728, '2026-06-01', '2026-02-28', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 22, 470),
(2729, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 1, 450),
(2730, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 2, 450),
(2731, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 3, 450),
(2732, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 4, 210),
(2733, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 5, 210),
(2734, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 6, 210),
(2735, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 7, 210),
(2736, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 8, 210),
(2737, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 9, 210),
(2738, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 10, 210),
(2739, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 11, 210),
(2740, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 12, 210),
(2741, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 13, 210),
(2742, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 14, 210),
(2743, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 15, 210),
(2744, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 16, 210),
(2745, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 17, 210),
(2746, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 18, 210),
(2747, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 19, 210),
(2748, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 20, 210),
(2749, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 21, 210),
(2750, '2026-01-03', '2026-04-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 22, 215),
(2751, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 1, 215),
(2752, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 2, 215),
(2753, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 3, 215),
(2754, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 4, 200),
(2755, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 5, 200),
(2756, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 6, 200),
(2757, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 7, 200),
(2758, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 8, 200),
(2759, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 9, 200),
(2760, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 10, 200),
(2761, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 11, 200),
(2762, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 12, 200),
(2763, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 13, 200),
(2764, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 14, 200),
(2765, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 15, 200),
(2766, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 16, 200),
(2767, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 17, 200),
(2768, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 18, 200),
(2769, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 19, 200),
(2770, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 20, 200),
(2771, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 21, 200),
(2772, '2026-01-05', '2026-06-30', 'Fullsize SUV', 'car_016', 'Toyota Landcruiser Prado', 22, 210),
(2773, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV200', 1, 110),
(2774, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV201', 2, 110),
(2775, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV202', 3, 110),
(2776, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV203', 4, 90),
(2777, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV204', 5, 90),
(2778, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV205', 6, 90),
(2779, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV206', 7, 90),
(2780, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV207', 8, 90),
(2781, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV208', 9, 90),
(2782, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV209', 10, 90),
(2783, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV210', 11, 90),
(2784, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV211', 12, 90),
(2785, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV212', 13, 90),
(2786, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV213', 14, 90),
(2787, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV214', 15, 90),
(2788, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV215', 16, 90),
(2789, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV216', 17, 90),
(2790, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV217', 18, 90),
(2791, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV218', 19, 90),
(2792, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV219', 20, 90),
(2793, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV220', 21, 90),
(2794, '2025-01-11', '2025-11-27', 'minivan', 'car_017', 'Nissan NV221', 22, 100),
(2795, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV222', 1, 200),
(2796, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV223', 2, 200),
(2797, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV224', 3, 200),
(2798, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV225', 4, 150),
(2799, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV226', 5, 150),
(2800, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV227', 6, 150),
(2801, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV228', 7, 150),
(2802, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV229', 8, 150),
(2803, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV230', 9, 150),
(2804, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV231', 10, 150),
(2805, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV232', 11, 150),
(2806, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV233', 12, 150),
(2807, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV234', 13, 150),
(2808, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV235', 14, 150),
(2809, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV236', 15, 150),
(2810, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV237', 16, 150),
(2811, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV238', 17, 150),
(2812, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV239', 18, 150),
(2813, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV240', 19, 150),
(2814, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV241', 20, 150),
(2815, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV242', 21, 150),
(2816, '2025-11-28', '2025-12-12', 'minivan', 'car_017', 'Nissan NV243', 22, 170),
(2817, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV244', 1, 250),
(2818, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV245', 2, 250),
(2819, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV246', 3, 250),
(2820, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV247', 4, 170),
(2821, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV248', 5, 170),
(2822, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV249', 6, 170),
(2823, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV250', 7, 170),
(2824, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV251', 8, 170),
(2825, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV252', 9, 170),
(2826, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV253', 10, 170),
(2827, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV254', 11, 170),
(2828, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV255', 12, 170),
(2829, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV256', 13, 170),
(2830, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV257', 14, 170),
(2831, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV258', 15, 170),
(2832, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV259', 16, 170),
(2833, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV260', 17, 170),
(2834, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV261', 18, 170),
(2835, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV262', 19, 170),
(2836, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV263', 20, 170),
(2837, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV264', 21, 170),
(2838, '2025-12-13', '2025-12-22', 'minivan', 'car_017', 'Nissan NV265', 22, 200),
(2839, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV266', 1, 350),
(2840, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV267', 2, 350),
(2841, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV268', 3, 350),
(2842, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV269', 4, 200),
(2843, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV270', 5, 200),
(2844, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV271', 6, 200),
(2845, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV272', 7, 200),
(2846, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV273', 8, 200),
(2847, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV274', 9, 200),
(2848, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV275', 10, 200),
(2849, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV276', 11, 200),
(2850, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV277', 12, 200),
(2851, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV278', 13, 200),
(2852, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV279', 14, 200),
(2853, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV280', 15, 200),
(2854, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV281', 16, 200),
(2855, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV282', 17, 200),
(2856, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV283', 18, 200),
(2857, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV284', 19, 200),
(2858, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV285', 20, 200),
(2859, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV286', 21, 200),
(2860, '2025-12-23', '2026-05-01', 'minivan', 'car_017', 'Nissan NV287', 22, 250),
(2861, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV288', 1, 200),
(2862, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV289', 2, 200),
(2863, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV290', 3, 200),
(2864, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV291', 4, 150),
(2865, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV292', 5, 150),
(2866, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV293', 6, 150),
(2867, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV294', 7, 150),
(2868, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV295', 8, 150),
(2869, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV296', 9, 150),
(2870, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV297', 10, 150),
(2871, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV298', 11, 150),
(2872, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV299', 12, 150),
(2873, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV300', 13, 150),
(2874, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV301', 14, 150),
(2875, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV302', 15, 150),
(2876, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV303', 16, 150),
(2877, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV304', 17, 150),
(2878, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV305', 18, 150),
(2879, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV306', 19, 150),
(2880, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV307', 20, 150),
(2881, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV308', 21, 150),
(2882, '2026-06-01', '2026-02-28', 'minivan', 'car_017', 'Nissan NV309', 22, 170),
(2883, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV310', 1, 150),
(2884, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV311', 2, 150),
(2885, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV312', 3, 150),
(2886, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV313', 4, 100),
(2887, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV314', 5, 100),
(2888, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV315', 6, 100),
(2889, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV316', 7, 100),
(2890, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV317', 8, 100),
(2891, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV318', 9, 100),
(2892, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV319', 10, 100),
(2893, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV320', 11, 100),
(2894, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV321', 12, 100),
(2895, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV322', 13, 100),
(2896, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV323', 14, 100),
(2897, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV324', 15, 100),
(2898, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV325', 16, 100),
(2899, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV326', 17, 100),
(2900, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV327', 18, 100),
(2901, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV328', 19, 100),
(2902, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV329', 20, 100),
(2903, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV330', 21, 100),
(2904, '2026-01-03', '2026-04-30', 'minivan', 'car_017', 'Nissan NV331', 22, 110),
(2905, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV332', 1, 110),
(2906, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV333', 2, 110),
(2907, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV334', 3, 110),
(2908, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV335', 4, 90),
(2909, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV336', 5, 90),
(2910, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV337', 6, 90),
(2911, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV338', 7, 90),
(2912, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV339', 8, 90),
(2913, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV340', 9, 90),
(2914, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV341', 10, 90),
(2915, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV342', 11, 90),
(2916, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV343', 12, 90),
(2917, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV344', 13, 90),
(2918, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV345', 14, 90),
(2919, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV346', 15, 90),
(2920, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV347', 16, 90),
(2921, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV348', 17, 90),
(2922, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV349', 18, 90),
(2923, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV350', 19, 90),
(2924, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV351', 20, 90),
(2925, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV352', 21, 90),
(2926, '2026-01-05', '2026-06-30', 'minivan', 'car_017', 'Nissan NV353', 22, 100),
(2927, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 1, 110),
(2928, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 2, 110),
(2929, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 3, 110),
(2930, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 4, 90),
(2931, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 5, 90),
(2932, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 6, 90),
(2933, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 7, 90),
(2934, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 8, 90),
(2935, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 9, 90),
(2936, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 10, 90),
(2937, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 11, 90),
(2938, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 12, 90),
(2939, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 13, 90),
(2940, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 14, 90),
(2941, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 15, 90),
(2942, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 16, 90),
(2943, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 17, 90),
(2944, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 18, 90),
(2945, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 19, 90),
(2946, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 20, 90),
(2947, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 21, 90),
(2948, '2025-01-11', '2025-11-27', 'minivan', 'car_018', 'Nissan Vanette', 22, 100),
(2949, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 1, 200),
(2950, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 2, 200),
(2951, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 3, 200),
(2952, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 4, 150),
(2953, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 5, 150),
(2954, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 6, 150),
(2955, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 7, 150),
(2956, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 8, 150),
(2957, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 9, 150),
(2958, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 10, 150),
(2959, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 11, 150),
(2960, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 12, 150),
(2961, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 13, 150),
(2962, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 14, 150),
(2963, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 15, 150),
(2964, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 16, 150),
(2965, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 17, 150),
(2966, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 18, 150),
(2967, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 19, 150),
(2968, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 20, 150),
(2969, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 21, 150),
(2970, '2025-11-28', '2025-12-12', 'minivan', 'car_018', 'Nissan Vanette', 22, 170),
(2971, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 1, 250),
(2972, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 2, 250),
(2973, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 3, 250),
(2974, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 4, 170),
(2975, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 5, 170),
(2976, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 6, 170),
(2977, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 7, 170),
(2978, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 8, 170),
(2979, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 9, 170),
(2980, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 10, 170),
(2981, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 11, 170),
(2982, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 12, 170),
(2983, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 13, 170),
(2984, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 14, 170),
(2985, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 15, 170),
(2986, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 16, 170),
(2987, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 17, 170),
(2988, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 18, 170),
(2989, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 19, 170),
(2990, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 20, 170),
(2991, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 21, 170),
(2992, '2025-12-13', '2025-12-22', 'minivan', 'car_018', 'Nissan Vanette', 22, 200),
(2993, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 1, 350),
(2994, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 2, 350),
(2995, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 3, 350),
(2996, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 4, 200),
(2997, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 5, 200),
(2998, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 6, 200),
(2999, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 7, 200),
(3000, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 8, 200),
(3001, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 9, 200),
(3002, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 10, 200),
(3003, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 11, 200),
(3004, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 12, 200),
(3005, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 13, 200),
(3006, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 14, 200),
(3007, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 15, 200),
(3008, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 16, 200),
(3009, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 17, 200),
(3010, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 18, 200),
(3011, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 19, 200),
(3012, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 20, 200),
(3013, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 21, 200),
(3014, '2025-12-23', '2026-05-01', 'minivan', 'car_018', 'Nissan Vanette', 22, 250),
(3015, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 1, 200),
(3016, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 2, 200),
(3017, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 3, 200),
(3018, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 4, 150),
(3019, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 5, 150),
(3020, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 6, 150),
(3021, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 7, 150),
(3022, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 8, 150),
(3023, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 9, 150),
(3024, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 10, 150),
(3025, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 11, 150),
(3026, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 12, 150),
(3027, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 13, 150),
(3028, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 14, 150),
(3029, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 15, 150),
(3030, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 16, 150),
(3031, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 17, 150),
(3032, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 18, 150),
(3033, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 19, 150),
(3034, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 20, 150),
(3035, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 21, 150),
(3036, '2026-06-01', '2026-02-28', 'minivan', 'car_018', 'Nissan Vanette', 22, 170),
(3037, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 1, 150),
(3038, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 2, 150),
(3039, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 3, 150),
(3040, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 4, 100),
(3041, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 5, 100),
(3042, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 6, 100),
(3043, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 7, 100),
(3044, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 8, 100),
(3045, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 9, 100),
(3046, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 10, 100),
(3047, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 11, 100),
(3048, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 12, 100),
(3049, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 13, 100),
(3050, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 14, 100),
(3051, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 15, 100),
(3052, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 16, 100),
(3053, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 17, 100),
(3054, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 18, 100),
(3055, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 19, 100),
(3056, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 20, 100),
(3057, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 21, 100),
(3058, '2026-01-03', '2026-04-30', 'minivan', 'car_018', 'Nissan Vanette', 22, 110),
(3059, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 1, 110),
(3060, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 2, 110),
(3061, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 3, 110),
(3062, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 4, 90),
(3063, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 5, 90),
(3064, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 6, 90),
(3065, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 7, 90),
(3066, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 8, 90),
(3067, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 9, 90),
(3068, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 10, 90),
(3069, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 11, 90),
(3070, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 12, 90),
(3071, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 13, 90),
(3072, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 14, 90),
(3073, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 15, 90);
INSERT INTO `rental_rates` (`id`, `pickup_date`, `dropoff_date`, `car_category`, `car_code`, `car_model`, `duration`, `rate`) VALUES
(3074, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 16, 90),
(3075, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 17, 90),
(3076, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 18, 90),
(3077, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 19, 90),
(3078, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 20, 90),
(3079, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 21, 90),
(3080, '2026-01-05', '2026-06-30', 'minivan', 'car_018', 'Nissan Vanette', 22, 100),
(3081, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 1, 140),
(3082, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 2, 140),
(3083, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 3, 140),
(3084, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 4, 120),
(3085, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 5, 120),
(3086, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 6, 120),
(3087, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 7, 120),
(3088, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 8, 120),
(3089, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 9, 120),
(3090, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 10, 120),
(3091, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 11, 120),
(3092, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 12, 120),
(3093, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 13, 120),
(3094, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 14, 120),
(3095, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 15, 120),
(3096, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 16, 120),
(3097, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 17, 120),
(3098, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 18, 120),
(3099, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 19, 120),
(3100, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 20, 120),
(3101, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 21, 120),
(3102, '2025-01-11', '2025-11-27', 'fullsize van', 'car_019', 'Toyota Hiace', 22, 130),
(3103, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 1, 250),
(3104, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 2, 250),
(3105, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 3, 250),
(3106, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 4, 200),
(3107, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 5, 200),
(3108, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 6, 200),
(3109, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 7, 200),
(3110, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 8, 200),
(3111, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 9, 200),
(3112, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 10, 200),
(3113, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 11, 200),
(3114, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 12, 200),
(3115, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 13, 200),
(3116, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 14, 200),
(3117, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 15, 200),
(3118, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 16, 200),
(3119, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 17, 200),
(3120, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 18, 200),
(3121, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 19, 200),
(3122, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 20, 200),
(3123, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 21, 200),
(3124, '2025-11-28', '2025-12-12', 'fullsize van', 'car_019', 'Toyota Hiace', 22, 220),
(3125, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 1, 300),
(3126, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 2, 300),
(3127, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 3, 300),
(3128, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 4, 220),
(3129, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 5, 220),
(3130, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 6, 220),
(3131, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 7, 220),
(3132, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 8, 220),
(3133, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 9, 220),
(3134, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 10, 220),
(3135, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 11, 220),
(3136, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 12, 220),
(3137, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 13, 220),
(3138, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 14, 220),
(3139, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 15, 220),
(3140, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 16, 220),
(3141, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 17, 220),
(3142, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 18, 220),
(3143, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 19, 220),
(3144, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 20, 220),
(3145, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 21, 220),
(3146, '2025-12-13', '2025-12-22', 'fullsize van', 'car_019', 'Toyota Hiace', 22, 250),
(3147, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 1, 400),
(3148, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 2, 400),
(3149, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 3, 400),
(3150, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 4, 250),
(3151, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 5, 250),
(3152, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 6, 250),
(3153, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 7, 250),
(3154, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 8, 250),
(3155, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 9, 250),
(3156, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 10, 250),
(3157, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 11, 250),
(3158, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 12, 250),
(3159, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 13, 250),
(3160, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 14, 250),
(3161, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 15, 250),
(3162, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 16, 250),
(3163, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 17, 250),
(3164, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 18, 250),
(3165, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 19, 250),
(3166, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 20, 250),
(3167, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 21, 250),
(3168, '2025-12-23', '2026-05-01', 'fullsize van', 'car_019', 'Toyota Hiace', 22, 300),
(3169, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 1, 250),
(3170, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 2, 250),
(3171, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 3, 250),
(3172, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 4, 200),
(3173, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 5, 200),
(3174, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 6, 200),
(3175, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 7, 200),
(3176, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 8, 200),
(3177, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 9, 200),
(3178, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 10, 200),
(3179, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 11, 200),
(3180, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 12, 200),
(3181, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 13, 200),
(3182, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 14, 200),
(3183, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 15, 200),
(3184, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 16, 200),
(3185, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 17, 200),
(3186, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 18, 200),
(3187, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 19, 200),
(3188, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 20, 200),
(3189, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 21, 200),
(3190, '2026-06-01', '2026-02-28', 'fullsize van', 'car_019', 'Toyota Hiace', 22, 220),
(3191, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 1, 200),
(3192, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 2, 200),
(3193, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 3, 200),
(3194, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 4, 130),
(3195, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 5, 130),
(3196, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 6, 130),
(3197, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 7, 130),
(3198, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 8, 130),
(3199, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 9, 130),
(3200, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 10, 130),
(3201, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 11, 130),
(3202, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 12, 130),
(3203, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 13, 130),
(3204, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 14, 130),
(3205, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 15, 130),
(3206, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 16, 130),
(3207, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 17, 130),
(3208, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 18, 130),
(3209, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 19, 130),
(3210, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 20, 130),
(3211, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 21, 130),
(3212, '2026-01-03', '2026-04-30', 'fullsize van', 'car_019', 'Toyota Hiace', 22, 140),
(3213, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 1, 140),
(3214, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 2, 140),
(3215, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 3, 140),
(3216, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 4, 120),
(3217, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 5, 120),
(3218, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 6, 120),
(3219, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 7, 120),
(3220, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 8, 120),
(3221, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 9, 120),
(3222, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 10, 120),
(3223, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 11, 120),
(3224, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 12, 120),
(3225, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 13, 120),
(3226, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 14, 120),
(3227, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 15, 120),
(3228, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 16, 120),
(3229, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 17, 120),
(3230, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 18, 120),
(3231, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 19, 120),
(3232, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 20, 120),
(3233, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 21, 120),
(3234, '2026-01-05', '2026-06-30', 'fullsize van', 'car_019', 'Toyota Hiace', 22, 130),
(3235, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 1, 140),
(3236, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 2, 140),
(3237, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 3, 140),
(3238, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 4, 120),
(3239, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 5, 120),
(3240, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 6, 120),
(3241, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 7, 120),
(3242, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 8, 120),
(3243, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 9, 120),
(3244, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 10, 120),
(3245, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 11, 120),
(3246, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 12, 120),
(3247, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 13, 120),
(3248, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 14, 120),
(3249, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 15, 120),
(3250, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 16, 120),
(3251, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 17, 120),
(3252, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 18, 120),
(3253, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 19, 120),
(3254, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 20, 120),
(3255, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 21, 120),
(3256, '2025-01-11', '2025-11-27', 'fullsize van', 'car_020', 'Toyota Townace', 22, 130),
(3257, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 1, 250),
(3258, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 2, 250),
(3259, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 3, 250),
(3260, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 4, 200),
(3261, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 5, 200),
(3262, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 6, 200),
(3263, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 7, 200),
(3264, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 8, 200),
(3265, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 9, 200),
(3266, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 10, 200),
(3267, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 11, 200),
(3268, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 12, 200),
(3269, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 13, 200),
(3270, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 14, 200),
(3271, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 15, 200),
(3272, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 16, 200),
(3273, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 17, 200),
(3274, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 18, 200),
(3275, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 19, 200),
(3276, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 20, 200),
(3277, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 21, 200),
(3278, '2025-11-28', '2025-12-12', 'fullsize van', 'car_020', 'Toyota Townace', 22, 220),
(3279, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 1, 300),
(3280, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 2, 300),
(3281, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 3, 300),
(3282, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 4, 220),
(3283, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 5, 220),
(3284, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 6, 220),
(3285, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 7, 220),
(3286, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 8, 220),
(3287, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 9, 220),
(3288, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 10, 220),
(3289, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 11, 220),
(3290, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 12, 220),
(3291, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 13, 220),
(3292, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 14, 220),
(3293, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 15, 220),
(3294, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 16, 220),
(3295, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 17, 220),
(3296, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 18, 220),
(3297, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 19, 220),
(3298, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 20, 220),
(3299, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 21, 220),
(3300, '2025-12-13', '2025-12-22', 'fullsize van', 'car_020', 'Toyota Townace', 22, 250),
(3301, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 1, 400),
(3302, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 2, 400),
(3303, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 3, 400),
(3304, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 4, 250),
(3305, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 5, 250),
(3306, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 6, 250),
(3307, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 7, 250),
(3308, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 8, 250),
(3309, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 9, 250),
(3310, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 10, 250),
(3311, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 11, 250),
(3312, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 12, 250),
(3313, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 13, 250),
(3314, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 14, 250),
(3315, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 15, 250),
(3316, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 16, 250),
(3317, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 17, 250),
(3318, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 18, 250),
(3319, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 19, 250),
(3320, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 20, 250),
(3321, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 21, 250),
(3322, '2025-12-23', '2026-05-01', 'fullsize van', 'car_020', 'Toyota Townace', 22, 300),
(3323, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 1, 250),
(3324, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 2, 250),
(3325, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 3, 250),
(3326, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 4, 200),
(3327, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 5, 200),
(3328, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 6, 200),
(3329, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 7, 200),
(3330, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 8, 200),
(3331, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 9, 200),
(3332, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 10, 200),
(3333, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 11, 200),
(3334, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 12, 200),
(3335, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 13, 200),
(3336, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 14, 200),
(3337, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 15, 200),
(3338, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 16, 200),
(3339, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 17, 200),
(3340, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 18, 200),
(3341, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 19, 200),
(3342, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 20, 200),
(3343, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 21, 200),
(3344, '2026-06-01', '2026-02-28', 'fullsize van', 'car_020', 'Toyota Townace', 22, 220),
(3345, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 1, 200),
(3346, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 2, 200),
(3347, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 3, 200),
(3348, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 4, 130),
(3349, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 5, 130),
(3350, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 6, 130),
(3351, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 7, 130),
(3352, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 8, 130),
(3353, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 9, 130),
(3354, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 10, 130),
(3355, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 11, 130),
(3356, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 12, 130),
(3357, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 13, 130),
(3358, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 14, 130),
(3359, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 15, 130),
(3360, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 16, 130),
(3361, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 17, 130),
(3362, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 18, 130),
(3363, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 19, 130),
(3364, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 20, 130),
(3365, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 21, 130),
(3366, '2026-01-03', '2026-04-30', 'fullsize van', 'car_020', 'Toyota Townace', 22, 140),
(3367, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 1, 140),
(3368, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 2, 140),
(3369, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 3, 140),
(3370, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 4, 120),
(3371, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 5, 120),
(3372, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 6, 120),
(3373, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 7, 120),
(3374, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 8, 120),
(3375, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 9, 120),
(3376, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 10, 120),
(3377, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 11, 120),
(3378, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 12, 120),
(3379, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 13, 120),
(3380, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 14, 120),
(3381, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 15, 120),
(3382, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 16, 120),
(3383, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 17, 120),
(3384, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 18, 120),
(3385, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 19, 120),
(3386, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 20, 120),
(3387, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 21, 120),
(3388, '2026-01-05', '2026-06-30', 'fullsize van', 'car_020', 'Toyota Townace', 22, 130),
(3389, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 1, 550),
(3390, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 2, 550),
(3391, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 3, 550),
(3392, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 4, 500),
(3393, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 5, 500),
(3394, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 6, 500),
(3395, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 7, 500),
(3396, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 8, 500),
(3397, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 9, 500),
(3398, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 10, 500),
(3399, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 11, 500),
(3400, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 12, 500),
(3401, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 13, 500),
(3402, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 14, 500),
(3403, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 15, 500),
(3404, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 16, 500),
(3405, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 17, 500),
(3406, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 18, 500),
(3407, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 19, 500),
(3408, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 20, 500),
(3409, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 21, 500),
(3410, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_021', 'Range Rover Sport', 22, 520),
(3411, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 1, 750),
(3412, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 2, 750),
(3413, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 3, 750),
(3414, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 4, 700),
(3415, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 5, 700),
(3416, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 6, 700),
(3417, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 7, 700),
(3418, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 8, 700),
(3419, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 9, 700),
(3420, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 10, 700),
(3421, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 11, 700),
(3422, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 12, 700),
(3423, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 13, 700),
(3424, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 14, 700),
(3425, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 15, 700),
(3426, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 16, 700),
(3427, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 17, 700),
(3428, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 18, 700),
(3429, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 19, 700),
(3430, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 20, 700),
(3431, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 21, 700),
(3432, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_021', 'Range Rover Sport', 22, 720),
(3433, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 1, 800),
(3434, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 2, 800),
(3435, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 3, 800),
(3436, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 4, 720),
(3437, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 5, 720),
(3438, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 6, 720),
(3439, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 7, 720),
(3440, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 8, 720),
(3441, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 9, 720),
(3442, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 10, 720),
(3443, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 11, 720),
(3444, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 12, 720),
(3445, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 13, 720),
(3446, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 14, 720),
(3447, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 15, 720),
(3448, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 16, 720),
(3449, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 17, 720),
(3450, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 18, 720),
(3451, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 19, 720),
(3452, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 20, 720),
(3453, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 21, 720),
(3454, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_021', 'Range Rover Sport', 22, 750),
(3455, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 1, 900),
(3456, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 2, 900),
(3457, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 3, 900),
(3458, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 4, 750),
(3459, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 5, 750),
(3460, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 6, 750),
(3461, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 7, 750),
(3462, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 8, 750),
(3463, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 9, 750),
(3464, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 10, 750),
(3465, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 11, 750),
(3466, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 12, 750),
(3467, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 13, 750),
(3468, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 14, 750),
(3469, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 15, 750),
(3470, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 16, 750),
(3471, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 17, 750),
(3472, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 18, 750),
(3473, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 19, 750),
(3474, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 20, 750),
(3475, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 21, 750),
(3476, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_021', 'Range Rover Sport', 22, 800),
(3477, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 1, 750),
(3478, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 2, 750),
(3479, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 3, 750),
(3480, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 4, 700),
(3481, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 5, 700),
(3482, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 6, 700),
(3483, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 7, 700),
(3484, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 8, 700),
(3485, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 9, 700),
(3486, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 10, 700),
(3487, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 11, 700),
(3488, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 12, 700),
(3489, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 13, 700),
(3490, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 14, 700),
(3491, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 15, 700),
(3492, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 16, 700),
(3493, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 17, 700),
(3494, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 18, 700),
(3495, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 19, 700),
(3496, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 20, 700),
(3497, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 21, 700),
(3498, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_021', 'Range Rover Sport', 22, 720),
(3499, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 1, 700),
(3500, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 2, 700),
(3501, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 3, 700),
(3502, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 4, 520),
(3503, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 5, 520),
(3504, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 6, 520),
(3505, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 7, 520),
(3506, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 8, 520),
(3507, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 9, 520),
(3508, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 10, 520),
(3509, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 11, 520),
(3510, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 12, 520),
(3511, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 13, 520),
(3512, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 14, 520),
(3513, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 15, 520),
(3514, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 16, 520),
(3515, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 17, 520),
(3516, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 18, 520),
(3517, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 19, 520),
(3518, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 20, 520),
(3519, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 21, 520),
(3520, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 22, 550),
(3521, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 1, 550),
(3522, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 2, 550),
(3523, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 3, 550),
(3524, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 4, 500),
(3525, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 5, 500),
(3526, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 6, 500),
(3527, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 7, 500),
(3528, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 8, 500),
(3529, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 9, 500),
(3530, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 10, 500),
(3531, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 11, 500),
(3532, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 12, 500),
(3533, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 13, 500),
(3534, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 14, 500),
(3535, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 15, 500),
(3536, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 16, 500),
(3537, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 17, 500),
(3538, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 18, 500),
(3539, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 19, 500),
(3540, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 20, 500),
(3541, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 21, 500),
(3542, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_021', 'Range Rover Sport', 22, 520),
(3543, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 1, 550),
(3544, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 2, 550),
(3545, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 3, 550),
(3546, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 4, 500),
(3547, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 5, 500),
(3548, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 6, 500),
(3549, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 7, 500),
(3550, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 8, 500),
(3551, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 9, 500),
(3552, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 10, 500),
(3553, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 11, 500),
(3554, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 12, 500),
(3555, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 13, 500),
(3556, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 14, 500),
(3557, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 15, 500),
(3558, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 16, 500),
(3559, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 17, 500),
(3560, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 18, 500),
(3561, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 19, 500),
(3562, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 20, 500),
(3563, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 21, 500),
(3564, '2025-01-11', '2025-11-27', 'luxury SUV', 'car_022', 'Land Rover Discovery', 22, 520),
(3565, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 1, 750),
(3566, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 2, 750),
(3567, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 3, 750),
(3568, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 4, 700),
(3569, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 5, 700),
(3570, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 6, 700),
(3571, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 7, 700),
(3572, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 8, 700),
(3573, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 9, 700),
(3574, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 10, 700),
(3575, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 11, 700),
(3576, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 12, 700),
(3577, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 13, 700),
(3578, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 14, 700),
(3579, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 15, 700),
(3580, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 16, 700),
(3581, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 17, 700),
(3582, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 18, 700),
(3583, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 19, 700),
(3584, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 20, 700),
(3585, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 21, 700),
(3586, '2025-11-28', '2025-12-12', 'luxury SUV', 'car_022', 'Land Rover Discovery', 22, 720),
(3587, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 1, 800),
(3588, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 2, 800),
(3589, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 3, 800),
(3590, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 4, 720),
(3591, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 5, 720),
(3592, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 6, 720),
(3593, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 7, 720),
(3594, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 8, 720),
(3595, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 9, 720),
(3596, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 10, 720),
(3597, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 11, 720),
(3598, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 12, 720),
(3599, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 13, 720),
(3600, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 14, 720),
(3601, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 15, 720),
(3602, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 16, 720),
(3603, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 17, 720),
(3604, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 18, 720),
(3605, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 19, 720),
(3606, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 20, 720),
(3607, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 21, 720),
(3608, '2025-12-13', '2025-12-22', 'luxury SUV', 'car_022', 'Land Rover Discovery', 22, 750),
(3609, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 1, 900),
(3610, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 2, 900),
(3611, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 3, 900),
(3612, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 4, 750),
(3613, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 5, 750),
(3614, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 6, 750),
(3615, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 7, 750),
(3616, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 8, 750),
(3617, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 9, 750),
(3618, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 10, 750),
(3619, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 11, 750),
(3620, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 12, 750),
(3621, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 13, 750),
(3622, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 14, 750),
(3623, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 15, 750),
(3624, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 16, 750),
(3625, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 17, 750),
(3626, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 18, 750),
(3627, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 19, 750),
(3628, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 20, 750),
(3629, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 21, 750),
(3630, '2025-12-23', '2026-05-01', 'luxury SUV', 'car_022', 'Land Rover Discovery', 22, 800),
(3631, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 1, 750),
(3632, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 2, 750),
(3633, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 3, 750),
(3634, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 4, 700),
(3635, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 5, 700),
(3636, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 6, 700),
(3637, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 7, 700),
(3638, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 8, 700),
(3639, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 9, 700),
(3640, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 10, 700);
INSERT INTO `rental_rates` (`id`, `pickup_date`, `dropoff_date`, `car_category`, `car_code`, `car_model`, `duration`, `rate`) VALUES
(3641, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 11, 700),
(3642, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 12, 700),
(3643, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 13, 700),
(3644, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 14, 700),
(3645, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 15, 700),
(3646, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 16, 700),
(3647, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 17, 700),
(3648, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 18, 700),
(3649, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 19, 700),
(3650, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 20, 700),
(3651, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 21, 700),
(3652, '2026-06-01', '2026-02-28', 'luxury SUV', 'car_022', 'Land Rover Discovery', 22, 720),
(3653, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 1, 700),
(3654, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 2, 700),
(3655, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 3, 700),
(3656, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 4, 520),
(3657, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 5, 520),
(3658, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 6, 520),
(3659, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 7, 520),
(3660, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 8, 520),
(3661, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 9, 520),
(3662, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 10, 520),
(3663, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 11, 520),
(3664, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 12, 520),
(3665, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 13, 520),
(3666, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 14, 520),
(3667, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 15, 520),
(3668, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 16, 520),
(3669, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 17, 520),
(3670, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 18, 520),
(3671, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 19, 520),
(3672, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 20, 520),
(3673, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 21, 520),
(3674, '2026-01-03', '2026-04-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 22, 550),
(3675, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 1, 550),
(3676, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 2, 550),
(3677, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 3, 550),
(3678, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 4, 500),
(3679, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 5, 500),
(3680, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 6, 500),
(3681, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 7, 500),
(3682, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 8, 500),
(3683, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 9, 500),
(3684, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 10, 500),
(3685, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 11, 500),
(3686, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 12, 500),
(3687, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 13, 500),
(3688, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 14, 500),
(3689, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 15, 500),
(3690, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 16, 500),
(3691, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 17, 500),
(3692, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 18, 500),
(3693, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 19, 500),
(3694, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 20, 500),
(3695, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 21, 500),
(3696, '2026-01-05', '2026-06-30', 'luxury SUV', 'car_022', 'Land Rover Discovery', 22, 520);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','staff') DEFAULT 'admin',
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', '$2y$10$7RaOskJSQMbF1ywOkt7QmeJ/5bK94re1GXuzdFfWZ5HU75tXDQBya', 'admin', 'active', '2025-10-20 06:19:02', '2025-12-01 11:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `no_of_seats` int(3) NOT NULL,
  `luggages` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `name`, `description`, `image`, `no_of_seats`, `luggages`, `created_at`) VALUES
(1, 'Mini Cars', 'Suzuki WagonR or Similar', 'assets/images/fleet/3.jpg', 4, 2, '2025-10-28 05:08:43'),
(2, 'Compact Cars', 'Toyota Vitz or Similar', 'assets/images/fleet/1.jpg', 4, 2, '2025-10-28 05:08:43'),
(3, 'Standard Cars', 'Honda Grace or Similar', 'assets/images/fleet/6.jpg', 5, 3, '2025-10-28 05:08:43'),
(4, 'Premium Cars', 'Honda Civic or Similar', 'assets/images/fleet/4.jpg', 5, 3, '2025-10-28 05:08:43'),
(5, 'Sport Utility Vehicle', 'Toyota C-HR or Similar', 'assets/images/fleet/5.jpg', 5, 4, '2025-10-28 05:08:43'),
(6, 'Luxury Cars', 'Mercedes Benz or Similar', 'assets/images/fleet/2.jpg', 5, 4, '2025-10-28 05:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_rates`
--

CREATE TABLE `vehicle_rates` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `rate_per_day` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_rates`
--

INSERT INTO `vehicle_rates` (`id`, `vehicle_id`, `rate_per_day`, `created_at`, `updated_at`) VALUES
(1, 1, 45.00, '2025-11-04 06:39:37', '2025-11-04 06:39:37'),
(2, 2, 55.00, '2025-11-04 06:39:37', '2025-11-04 06:39:37'),
(3, 3, 100.00, '2025-11-04 06:39:37', '2025-11-04 06:39:37'),
(4, 4, 100.00, '2025-11-04 06:39:37', '2025-11-04 06:39:37'),
(5, 5, 110.00, '2025-11-04 06:39:37', '2025-11-04 06:39:37'),
(6, 6, 210.00, '2025-11-04 06:39:37', '2025-11-04 06:39:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_categories`
--
ALTER TABLE `car_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_category`
--
ALTER TABLE `modx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_context`
--
ALTER TABLE `modx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Indexes for table `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Indexes for table `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Indexes for table `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_categories_closure`
--
ALTER TABLE `modx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Indexes for table `modx_content_type`
--
ALTER TABLE `modx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `modx_context`
--
ALTER TABLE `modx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_context_resource`
--
ALTER TABLE `modx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Indexes for table `modx_context_setting`
--
ALTER TABLE `modx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Indexes for table `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Indexes for table `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Indexes for table `modx_dashboard_widget_placement`
--
ALTER TABLE `modx_dashboard_widget_placement`
  ADD PRIMARY KEY (`user`,`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_deprecated_call`
--
ALTER TABLE `modx_deprecated_call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `method` (`method`),
  ADD KEY `call_count` (`call_count`),
  ADD KEY `caller` (`caller`),
  ADD KEY `caller_file` (`caller_file`),
  ADD KEY `caller_line` (`caller_line`);

--
-- Indexes for table `modx_deprecated_method`
--
ALTER TABLE `modx_deprecated_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `definition` (`definition`);

--
-- Indexes for table `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Indexes for table `modx_element_property_sets`
--
ALTER TABLE `modx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Indexes for table `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `modx_fc_profiles_usergroups`
--
ALTER TABLE `modx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Indexes for table `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Indexes for table `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Indexes for table `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Indexes for table `modx_media_sources_contexts`
--
ALTER TABLE `modx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Indexes for table `modx_media_sources_elements`
--
ALTER TABLE `modx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Indexes for table `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Indexes for table `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_menus`
--
ALTER TABLE `modx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Indexes for table `modx_namespaces`
--
ALTER TABLE `modx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `modx_property_set`
--
ALTER TABLE `modx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `modx_register_messages`
--
ALTER TABLE `modx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Indexes for table `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `modx_session`
--
ALTER TABLE `modx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Indexes for table `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Indexes for table `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Indexes for table `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Indexes for table `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Indexes for table `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `modx_transport_packages`
--
ALTER TABLE `modx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Indexes for table `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `modx_users`
--
ALTER TABLE `modx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Indexes for table `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Indexes for table `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `authority` (`authority`);

--
-- Indexes for table `modx_user_group_settings`
--
ALTER TABLE `modx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Indexes for table `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Indexes for table `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_rates`
--
ALTER TABLE `vehicle_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vehicle` (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_categories`
--
ALTER TABLE `car_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_category`
--
ALTER TABLE `modx_access_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_context`
--
ALTER TABLE `modx_access_context`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_content_type`
--
ALTER TABLE `modx_content_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `modx_deprecated_call`
--
ALTER TABLE `modx_deprecated_call`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_deprecated_method`
--
ALTER TABLE `modx_deprecated_method`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1204;

--
-- AUTO_INCREMENT for table `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_property_set`
--
ALTER TABLE `modx_property_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_users`
--
ALTER TABLE `modx_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_rates`
--
ALTER TABLE `vehicle_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vehicle_rates`
--
ALTER TABLE `vehicle_rates`
  ADD CONSTRAINT `fk_vehicle` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
