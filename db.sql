-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2020 at 07:45 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

CREATE TABLE `core_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'db_model_core_store', '{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}', 'object', NULL, NULL),
(2, 'db_model_upload_file', '{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(3, 'db_model_strapi_webhooks', '{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}', 'object', NULL, NULL),
(4, 'db_model_users-permissions_permission', '{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}}', 'object', NULL, NULL),
(5, 'db_model_strapi_administrator', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"required\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false}}', 'object', NULL, NULL),
(6, 'db_model_upload_file_morph', '{\"upload_file_id\":{\"type\":\"integer\"},\"related_id\":{\"type\":\"integer\"},\"related_type\":{\"type\":\"text\"},\"field\":{\"type\":\"text\"},\"order\":{\"type\":\"integer\"}}', 'object', NULL, NULL),
(7, 'db_model_users-permissions_user', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(8, 'db_model_users-permissions_role', '{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true}}', 'object', NULL, NULL),
(9, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"redirect_uri\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]}}', 'object', '', ''),
(10, 'plugin_email_provider', '{\"provider\":\"sendmail\",\"name\":\"Sendmail\",\"auth\":{\"sendmail_default_from\":{\"label\":\"Sendmail Default From\",\"type\":\"text\"},\"sendmail_default_replyto\":{\"label\":\"Sendmail Default Reply-To\",\"type\":\"text\"}}}', 'object', 'development', ''),
(11, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true}', 'object', 'development', ''),
(12, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}', 'object', '', ''),
(13, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', '', ''),
(14, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', '', ''),
(15, 'plugin_content_manager_configuration_content_types::strapi::administrator', '{\"uid\":\"strapi::administrator\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"blocked\"],\"editRelations\":[],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(16, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(17, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(18, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_confirmation_redirection\":\"http://0.0.0.0:1337/admin\",\"email_reset_password\":\"http://0.0.0.0:1337/admin\",\"default_role\":\"authenticated\"}', 'object', '', ''),
(19, 'db_model_global_settings', '{\"business_name\":{\"type\":\"string\"},\"business_slogan\":{\"type\":\"string\"},\"business_logo\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"business_favicon\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"business_number\":{\"type\":\"biginteger\"},\"business_email\":{\"type\":\"email\"},\"domain\":{\"type\":\"string\"},\"site_offline_msg\":{\"type\":\"text\"},\"mobile_app_ios_link\":{\"type\":\"string\"},\"mobile_app_android_link\":{\"type\":\"string\"},\"multi_language\":{\"type\":\"boolean\",\"default\":true},\"multi_currency\":{\"type\":\"boolean\",\"default\":true},\"auto_users_account_approve\":{\"type\":\"boolean\",\"default\":true},\"auto_users_geo_detect\":{\"type\":\"boolean\",\"default\":true},\"only_registered_users_book\":{\"type\":\"boolean\",\"default\":true},\"default_language\":{\"model\":\"global-languages\"},\"default_currency\":{\"model\":\"global-currencies\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(20, 'plugin_content_manager_configuration_content_types::application::global-settings.global-settings', '{\"uid\":\"application::global-settings.global-settings\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"business_name\",\"defaultSortBy\":\"business_name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"business_name\":{\"edit\":{\"label\":\"Business_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Business_name\",\"searchable\":true,\"sortable\":true}},\"business_slogan\":{\"edit\":{\"label\":\"Business_slogan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Business_slogan\",\"searchable\":true,\"sortable\":true}},\"business_logo\":{\"edit\":{\"label\":\"Business_logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Business_logo\",\"searchable\":false,\"sortable\":false}},\"business_favicon\":{\"edit\":{\"label\":\"Business_favicon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Business_favicon\",\"searchable\":false,\"sortable\":false}},\"business_number\":{\"edit\":{\"label\":\"Business_number\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Business_number\",\"searchable\":true,\"sortable\":true}},\"business_email\":{\"edit\":{\"label\":\"Business_email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Business_email\",\"searchable\":true,\"sortable\":true}},\"domain\":{\"edit\":{\"label\":\"Domain\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Domain\",\"searchable\":true,\"sortable\":true}},\"site_offline_msg\":{\"edit\":{\"label\":\"Site_offline_msg\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Site_offline_msg\",\"searchable\":true,\"sortable\":true}},\"mobile_app_ios_link\":{\"edit\":{\"label\":\"Mobile_app_ios_link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mobile_app_ios_link\",\"searchable\":true,\"sortable\":true}},\"mobile_app_android_link\":{\"edit\":{\"label\":\"Mobile_app_android_link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mobile_app_android_link\",\"searchable\":true,\"sortable\":true}},\"multi_language\":{\"edit\":{\"label\":\"Multi_language\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Multi_language\",\"searchable\":true,\"sortable\":true}},\"multi_currency\":{\"edit\":{\"label\":\"Multi_currency\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Multi_currency\",\"searchable\":true,\"sortable\":true}},\"auto_users_account_approve\":{\"edit\":{\"label\":\"Auto_users_account_approve\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Auto_users_account_approve\",\"searchable\":true,\"sortable\":true}},\"auto_users_geo_detect\":{\"edit\":{\"label\":\"Auto_users_geo_detect\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Auto_users_geo_detect\",\"searchable\":true,\"sortable\":true}},\"only_registered_users_book\":{\"edit\":{\"label\":\"Only_registered_users_book\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Only_registered_users_book\",\"searchable\":true,\"sortable\":true}},\"default_language\":{\"edit\":{\"label\":\"Default_language\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Default_language\",\"searchable\":false,\"sortable\":false}},\"default_currency\":{\"edit\":{\"label\":\"Default_currency\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Default_currency\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"business_name\",\"business_slogan\",\"business_logo\"],\"edit\":[[{\"name\":\"business_name\",\"size\":6},{\"name\":\"business_slogan\",\"size\":6}],[{\"name\":\"business_logo\",\"size\":6},{\"name\":\"business_favicon\",\"size\":6}],[{\"name\":\"business_number\",\"size\":4},{\"name\":\"business_email\",\"size\":6}],[{\"name\":\"domain\",\"size\":6}],[{\"name\":\"site_offline_msg\",\"size\":6},{\"name\":\"mobile_app_ios_link\",\"size\":6}],[{\"name\":\"mobile_app_android_link\",\"size\":6},{\"name\":\"multi_language\",\"size\":4}],[{\"name\":\"multi_currency\",\"size\":4},{\"name\":\"auto_users_account_approve\",\"size\":4},{\"name\":\"auto_users_geo_detect\",\"size\":4}],[{\"name\":\"only_registered_users_book\",\"size\":4}]],\"editRelations\":[\"default_language\",\"default_currency\"]}}', 'object', '', ''),
(21, 'db_model_global_languages', '{\"name\":{\"type\":\"string\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"LTR\",\"RTL\"]},\"status\":{\"type\":\"boolean\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(22, 'plugin_content_manager_configuration_content_types::application::global-languages.global-languages', '{\"uid\":\"application::global-languages.global-languages\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"Status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Status\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"type\",\"created_at\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"type\",\"size\":6}],[{\"name\":\"status\",\"size\":4}]],\"editRelations\":[]}}', 'object', '', ''),
(23, 'db_model_global_currencies', '{\"name\":{\"type\":\"string\"},\"symbol\":{\"type\":\"string\"},\"code\":{\"type\":\"string\"},\"rate\":{\"type\":\"string\"},\"decimals\":{\"type\":\"string\"},\"symbol_placement\":{\"type\":\"string\"},\"order\":{\"type\":\"integer\"},\"status\":{\"type\":\"boolean\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(25, 'plugin_content_manager_configuration_content_types::application::global-currencies.global-currencies', '{\"uid\":\"application::global-currencies.global-currencies\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"symbol\":{\"edit\":{\"label\":\"Symbol\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Symbol\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"rate\":{\"edit\":{\"label\":\"Rate\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Rate\",\"searchable\":true,\"sortable\":true}},\"decimals\":{\"edit\":{\"label\":\"Decimals\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Decimals\",\"searchable\":true,\"sortable\":true}},\"symbol_placement\":{\"edit\":{\"label\":\"Symbol_placement\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Symbol_placement\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"Order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Order\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"Status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Status\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"symbol\",\"code\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"symbol\",\"size\":6}],[{\"name\":\"code\",\"size\":6},{\"name\":\"rate\",\"size\":6}],[{\"name\":\"decimals\",\"size\":6},{\"name\":\"symbol_placement\",\"size\":6}],[{\"name\":\"order\",\"size\":4},{\"name\":\"status\",\"size\":4}]],\"editRelations\":[]}}', 'object', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `global_currencies`
--

CREATE TABLE `global_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `decimals` varchar(255) DEFAULT NULL,
  `symbol_placement` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `global_currencies`
--

INSERT INTO `global_currencies` (`id`, `name`, `symbol`, `code`, `rate`, `decimals`, `symbol_placement`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 'USD', '1', '2', 'before', 1, 0, '2020-05-04 05:40:22', '2020-05-04 05:40:22'),
(3, 'GBP', '£', 'GBP', '0.828955', '2', 'before', 3, 0, '2020-05-04 05:40:22', '2020-05-04 05:40:22'),
(9, 'SAR', NULL, 'ريال', '3.75075', '2', 'before', 0, 0, '2020-05-04 05:40:22', '2020-05-04 05:40:22'),
(11, 'EUR', '€', 'EUR', '0.911505', '2', 'before', 0, 0, '2020-05-04 05:40:22', '2020-05-04 05:40:22'),
(12, 'PKR', NULL, 'RS', '156.75', '2', 'before', 0, 0, '2020-05-04 05:40:22', '2020-05-04 05:40:22'),
(13, 'KWD', NULL, 'KWD', '0.304302', '2', 'before', 0, 0, '2020-05-04 05:40:22', '2020-05-04 05:40:22'),
(14, 'AUD', '$', 'AUD', '1.4889', '2', 'before', 0, 0, '2020-05-04 05:40:22', '2020-05-04 05:40:22'),
(15, 'PHP', NULL, 'PHP', '52.158', '2', 'before', 0, 0, '2020-05-04 05:40:22', '2020-05-04 05:40:22'),
(16, 'SGD', NULL, 'SGD', '1.3908', '2', 'before', 0, 0, '2020-05-04 05:40:22', '2020-05-04 05:40:22'),
(17, 'JPY', NULL, 'JPY', '106.191', '2', 'before', 0, 0, '2020-05-04 05:40:22', '2020-05-04 05:40:22'),
(18, 'INR', NULL, 'INR', '71.989', '2', 'before', 0, 0, '2020-05-04 05:40:22', '2020-05-04 05:40:22'),
(19, 'CNY', NULL, 'CNY', '7.17209', '2', 'before', 0, 0, '2020-05-04 05:40:22', '2020-05-04 05:40:22'),
(20, 'TRY', NULL, 'Turkish', '5.8221', '2', 'before', 0, 0, '2020-05-04 05:40:22', '2020-05-04 05:40:22'),
(22, 'RUB', NULL, 'RUB', '64.34', '2', 'before', 0, 0, '2020-05-04 05:40:22', '2020-05-04 05:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `global_languages`
--

CREATE TABLE `global_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `default_language` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `global_languages`
--

INSERT INTO `global_languages` (`id`, `name`, `type`, `created_at`, `updated_at`, `default_language`, `status`) VALUES
(1, 'english', 'LTR', '2020-05-04 00:21:37', '2020-05-04 00:21:37', NULL, NULL),
(2, 'arabic', 'RTL', '2020-05-04 00:21:55', '2020-05-04 00:21:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `business_slogan` varchar(255) DEFAULT NULL,
  `business_number` bigint(20) DEFAULT NULL,
  `business_email` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `site_offline` varchar(255) DEFAULT NULL,
  `site_offline_msg` longtext DEFAULT NULL,
  `mobile_app_ios_link` varchar(255) DEFAULT NULL,
  `mobile_app_android_link` varchar(255) DEFAULT NULL,
  `multi_language` tinyint(1) DEFAULT NULL,
  `multi_currency` tinyint(1) DEFAULT NULL,
  `auto_users_account_approve` tinyint(1) DEFAULT NULL,
  `auto_users_geo_detect` tinyint(1) DEFAULT NULL,
  `only_registered_users_book` tinyint(1) DEFAULT NULL,
  `global_language` int(11) DEFAULT NULL,
  `default_language` int(11) DEFAULT NULL,
  `default_currency` int(11) DEFAULT NULL,
  `global_currency` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`id`, `business_name`, `business_slogan`, `business_number`, `business_email`, `domain`, `created_at`, `updated_at`, `site_offline`, `site_offline_msg`, `mobile_app_ios_link`, `mobile_app_android_link`, `multi_language`, `multi_currency`, `auto_users_account_approve`, `auto_users_geo_detect`, `only_registered_users_book`, `global_language`, `default_language`, `default_currency`, `global_currency`) VALUES
(1, 'Travel', 'Portal', NULL, NULL, NULL, '2020-05-03 23:54:16', '2020-05-03 23:54:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_administrator`
--

CREATE TABLE `strapi_administrator` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_administrator`
--

INSERT INTO `strapi_administrator` (`id`, `username`, `email`, `password`, `resetPasswordToken`, `blocked`) VALUES
(1, 'admin', 'admin@admin.com', '$2a$10$8wLhMvLanrWv2giMz/mxteCB1TMAZDElkhmJohLo07//m3moWPwK6', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `upload_file`
--

CREATE TABLE `upload_file` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `upload_file_morph`
--

CREATE TABLE `upload_file_morph` (
  `id` int(10) UNSIGNED NOT NULL,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext DEFAULT NULL,
  `field` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`) VALUES
(1, 'content-manager', 'components', 'findcomponent', 0, '', 1),
(2, 'content-manager', 'components', 'findcomponent', 0, '', 2),
(3, 'content-manager', 'components', 'listcomponents', 0, '', 1),
(4, 'content-manager', 'components', 'listcomponents', 0, '', 2),
(5, 'content-manager', 'components', 'updatecomponent', 0, '', 1),
(6, 'content-manager', 'components', 'updatecomponent', 0, '', 2),
(7, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 2),
(8, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 1),
(9, 'content-manager', 'contentmanager', 'count', 0, '', 1),
(10, 'content-manager', 'contentmanager', 'count', 0, '', 2),
(11, 'content-manager', 'contentmanager', 'create', 0, '', 1),
(12, 'content-manager', 'contentmanager', 'create', 0, '', 2),
(13, 'content-manager', 'contentmanager', 'delete', 0, '', 1),
(14, 'content-manager', 'contentmanager', 'delete', 0, '', 2),
(15, 'content-manager', 'contentmanager', 'deletemany', 0, '', 1),
(16, 'content-manager', 'contentmanager', 'deletemany', 0, '', 2),
(17, 'content-manager', 'contentmanager', 'find', 0, '', 1),
(18, 'content-manager', 'contentmanager', 'find', 0, '', 2),
(19, 'content-manager', 'contentmanager', 'findone', 0, '', 1),
(20, 'content-manager', 'contentmanager', 'findone', 0, '', 2),
(21, 'content-manager', 'contentmanager', 'generateuid', 0, '', 1),
(22, 'content-manager', 'contentmanager', 'generateuid', 0, '', 2),
(23, 'content-manager', 'contentmanager', 'update', 0, '', 1),
(24, 'content-manager', 'contentmanager', 'update', 0, '', 2),
(25, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 1),
(26, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 2),
(27, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 1),
(28, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 2),
(29, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 1),
(30, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 2),
(31, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1),
(32, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2),
(33, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1),
(34, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2),
(35, 'content-type-builder', 'components', 'createcomponent', 0, '', 1),
(36, 'content-type-builder', 'components', 'createcomponent', 0, '', 2),
(37, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1),
(38, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2),
(39, 'content-type-builder', 'components', 'getcomponent', 0, '', 1),
(40, 'content-type-builder', 'components', 'getcomponent', 0, '', 2),
(41, 'content-type-builder', 'components', 'getcomponents', 0, '', 1),
(42, 'content-type-builder', 'components', 'getcomponents', 0, '', 2),
(43, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1),
(44, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2),
(45, 'content-type-builder', 'connections', 'getconnections', 0, '', 1),
(46, 'content-type-builder', 'connections', 'getconnections', 0, '', 2),
(47, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1),
(48, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2),
(49, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1),
(50, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2),
(51, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1),
(52, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2),
(53, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1),
(54, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2),
(55, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1),
(56, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2),
(57, 'email', 'email', 'getenvironments', 0, '', 1),
(58, 'email', 'email', 'getenvironments', 0, '', 2),
(59, 'email', 'email', 'getsettings', 0, '', 1),
(60, 'email', 'email', 'getsettings', 0, '', 2),
(61, 'email', 'email', 'send', 0, '', 1),
(62, 'email', 'email', 'send', 0, '', 2),
(63, 'email', 'email', 'updatesettings', 0, '', 1),
(64, 'email', 'email', 'updatesettings', 0, '', 2),
(65, 'upload', 'proxy', 'uploadproxy', 0, '', 1),
(66, 'upload', 'proxy', 'uploadproxy', 0, '', 2),
(67, 'upload', 'upload', 'count', 0, '', 1),
(68, 'upload', 'upload', 'count', 0, '', 2),
(69, 'upload', 'upload', 'destroy', 0, '', 1),
(70, 'upload', 'upload', 'destroy', 0, '', 2),
(71, 'upload', 'upload', 'find', 0, '', 1),
(72, 'upload', 'upload', 'find', 0, '', 2),
(73, 'upload', 'upload', 'findone', 0, '', 1),
(74, 'upload', 'upload', 'findone', 0, '', 2),
(75, 'upload', 'upload', 'getsettings', 0, '', 1),
(76, 'upload', 'upload', 'getsettings', 0, '', 2),
(77, 'upload', 'upload', 'search', 0, '', 1),
(78, 'upload', 'upload', 'search', 0, '', 2),
(79, 'upload', 'upload', 'updatesettings', 0, '', 1),
(80, 'upload', 'upload', 'updatesettings', 0, '', 2),
(81, 'upload', 'upload', 'upload', 0, '', 1),
(82, 'upload', 'upload', 'upload', 0, '', 2),
(83, 'users-permissions', 'auth', 'callback', 0, '', 1),
(84, 'users-permissions', 'auth', 'callback', 1, '', 2),
(85, 'users-permissions', 'auth', 'changepassword', 0, '', 1),
(86, 'users-permissions', 'auth', 'changepassword', 1, '', 2),
(87, 'users-permissions', 'auth', 'connect', 1, '', 1),
(88, 'users-permissions', 'auth', 'connect', 1, '', 2),
(89, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1),
(90, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2),
(91, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1),
(92, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2),
(93, 'users-permissions', 'auth', 'register', 0, '', 1),
(94, 'users-permissions', 'auth', 'register', 1, '', 2),
(95, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1),
(96, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2),
(97, 'users-permissions', 'user', 'create', 0, '', 1),
(98, 'users-permissions', 'user', 'create', 0, '', 2),
(99, 'users-permissions', 'user', 'destroy', 0, '', 1),
(100, 'users-permissions', 'user', 'destroy', 0, '', 2),
(101, 'users-permissions', 'user', 'destroyall', 0, '', 1),
(102, 'users-permissions', 'user', 'destroyall', 0, '', 2),
(103, 'users-permissions', 'user', 'find', 0, '', 1),
(104, 'users-permissions', 'user', 'find', 0, '', 2),
(105, 'users-permissions', 'user', 'findone', 0, '', 1),
(106, 'users-permissions', 'user', 'findone', 0, '', 2),
(107, 'users-permissions', 'user', 'me', 1, '', 1),
(108, 'users-permissions', 'user', 'me', 1, '', 2),
(109, 'users-permissions', 'user', 'update', 0, '', 1),
(110, 'users-permissions', 'user', 'update', 0, '', 2),
(111, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1),
(112, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2),
(113, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 1),
(114, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 2),
(115, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1),
(116, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2),
(117, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1),
(118, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2),
(119, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1),
(120, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2),
(121, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1),
(122, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2),
(123, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1),
(124, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2),
(125, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1),
(126, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2),
(127, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1),
(128, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2),
(129, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1),
(130, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2),
(131, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1),
(132, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2),
(133, 'users-permissions', 'userspermissions', 'index', 0, '', 1),
(134, 'users-permissions', 'userspermissions', 'index', 0, '', 2),
(135, 'users-permissions', 'userspermissions', 'init', 1, '', 1),
(136, 'users-permissions', 'userspermissions', 'init', 1, '', 2),
(137, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1),
(138, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2),
(139, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1),
(140, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2),
(141, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1),
(142, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2),
(143, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1),
(144, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2),
(145, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1),
(146, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2),
(147, 'application', 'global-settings', 'count', 0, '', 1),
(148, 'application', 'global-settings', 'count', 1, '', 2),
(149, 'application', 'global-settings', 'create', 0, '', 1),
(150, 'application', 'global-settings', 'create', 1, '', 2),
(151, 'application', 'global-settings', 'delete', 0, '', 1),
(152, 'application', 'global-settings', 'delete', 1, '', 2),
(153, 'application', 'global-settings', 'find', 0, '', 1),
(154, 'application', 'global-settings', 'find', 1, '', 2),
(155, 'application', 'global-settings', 'findone', 0, '', 1),
(156, 'application', 'global-settings', 'findone', 1, '', 2),
(157, 'application', 'global-settings', 'update', 0, '', 1),
(158, 'application', 'global-settings', 'update', 1, '', 2),
(159, 'application', 'global-languages', 'count', 0, '', 1),
(160, 'application', 'global-languages', 'count', 0, '', 2),
(161, 'application', 'global-languages', 'create', 0, '', 1),
(162, 'application', 'global-languages', 'delete', 0, '', 1),
(163, 'application', 'global-languages', 'delete', 0, '', 2),
(164, 'application', 'global-languages', 'create', 0, '', 2),
(165, 'application', 'global-languages', 'find', 0, '', 1),
(166, 'application', 'global-languages', 'find', 0, '', 2),
(167, 'application', 'global-languages', 'findone', 0, '', 1),
(168, 'application', 'global-languages', 'findone', 0, '', 2),
(169, 'application', 'global-languages', 'update', 0, '', 1),
(170, 'application', 'global-languages', 'update', 0, '', 2),
(183, 'application', 'global-currencies', 'count', 0, '', 1),
(184, 'application', 'global-currencies', 'count', 0, '', 2),
(185, 'application', 'global-currencies', 'create', 0, '', 1),
(186, 'application', 'global-currencies', 'delete', 0, '', 1),
(187, 'application', 'global-currencies', 'create', 0, '', 2),
(188, 'application', 'global-currencies', 'delete', 0, '', 2),
(189, 'application', 'global-currencies', 'find', 0, '', 1),
(190, 'application', 'global-currencies', 'find', 0, '', 2),
(191, 'application', 'global-currencies', 'findone', 0, '', 1),
(192, 'application', 'global-currencies', 'findone', 0, '', 2),
(193, 'application', 'global-currencies', 'update', 0, '', 1),
(194, 'application', 'global-currencies', 'update', 0, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated'),
(2, 'Public', 'Default role given to unauthenticated user.', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `core_store` ADD FULLTEXT KEY `SEARCH_CORE_STORE` (`key`,`value`,`type`,`environment`,`tag`);

--
-- Indexes for table `global_currencies`
--
ALTER TABLE `global_currencies`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `global_currencies` ADD FULLTEXT KEY `SEARCH_GLOBAL_CURRENCIES` (`name`,`symbol`,`code`,`rate`,`decimals`,`symbol_placement`);

--
-- Indexes for table `global_languages`
--
ALTER TABLE `global_languages`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `global_languages` ADD FULLTEXT KEY `SEARCH_GLOBAL_LANGUAGES` (`name`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `global_settings` ADD FULLTEXT KEY `SEARCH_GLOBAL_SETTINGS` (`business_name`,`business_slogan`,`domain`);

--
-- Indexes for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_administrator_username_unique` (`username`);
ALTER TABLE `strapi_administrator` ADD FULLTEXT KEY `SEARCH_STRAPI_ADMINISTRATOR` (`username`,`resetPasswordToken`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `strapi_webhooks` ADD FULLTEXT KEY `SEARCH_STRAPI_WEBHOOKS` (`name`,`url`);

--
-- Indexes for table `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `upload_file` ADD FULLTEXT KEY `SEARCH_UPLOAD_FILE` (`name`,`alternativeText`,`caption`,`hash`,`ext`,`mime`,`url`,`previewUrl`,`provider`);

--
-- Indexes for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `upload_file_morph` ADD FULLTEXT KEY `SEARCH_UPLOAD_FILE_MORPH` (`related_type`,`field`);

--
-- Indexes for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_permission` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_PERMISSION` (`type`,`controller`,`action`,`policy`);

--
-- Indexes for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_role_type_unique` (`type`);
ALTER TABLE `users-permissions_role` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_ROLE` (`name`,`description`,`type`);

--
-- Indexes for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_user_username_unique` (`username`);
ALTER TABLE `users-permissions_user` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_USER` (`username`,`provider`,`resetPasswordToken`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `global_currencies`
--
ALTER TABLE `global_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `global_languages`
--
ALTER TABLE `global_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
