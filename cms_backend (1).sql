-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2018 at 06:17 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_assign_user`
--

CREATE TABLE `app_assign_user` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `app_basic_id` int(10) UNSIGNED NOT NULL COMMENT 'Foreign key',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'Foreign key',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_basic`
--

CREATE TABLE `app_basic` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `app_unique_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_json_data` longtext COLLATE utf8mb4_unicode_ci,
  `menu_location_type` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1 => SideMenu, 2 => TabMenu',
  `app_general_css_json_data` longtext COLLATE utf8mb4_unicode_ci,
  `app_side_menu_css_json_data` longtext COLLATE utf8mb4_unicode_ci,
  `version` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_publish_status` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1 => Working, 2=> Awaiting Publish, 3=> Published, 4=> On Hold',
  `app_publish_counter` int(11) DEFAULT '0',
  `app_created_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Foreign key',
  `app_updated_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Foreign key',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted, 4=>Not selected'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_basic`
--

INSERT INTO `app_basic` (`id`, `app_unique_id`, `app_name`, `app_code`, `app_json_data`, `menu_location_type`, `app_general_css_json_data`, `app_side_menu_css_json_data`, `version`, `app_publish_status`, `app_publish_counter`, `app_created_by`, `app_updated_by`, `created_at`, `updated_at`, `status`) VALUES
(1, '4Rn5_K', 'Joe\'s Italian Ice', 'joes_italian_ice1', '{\"menu_location_type\":\"2\",\"appInfo\":{\"appID\":\"1\",\"appName\":\"Joe\'s Italian Ice\",\"appBundleId\":\"\",\"appJSONVersion\":\"\",\"appDescription\":\"\",\"homePageIndex\":0,\"googleAnalyticId\":\"\",\"firebase_id\":\"\",\"analytics_id\":\"\",\"crashlytics_id\":\"\",\"add_ipad_screenshot\":null,\"tutorial\":{\"flag\":0,\"index\":0}},\"menu\":{\"sidemenu\":[{\"id\":1,\"menu_icon\":\"\",\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Asdf\",\"type\":\"customweb\",\"value\":\"http:\\/\\/google.com\"},{\"id\":2,\"menu_icon\":null,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Asdf1\",\"type\":\"customweb\"},{\"id\":3,\"menu_icon\":null,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Asdf2\",\"type\":\"customweb\"},{\"id\":4,\"menu_icon\":null,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Asdf3\",\"type\":\"customweb\"},{\"id\":5,\"menu_icon\":null,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Asdf4\",\"type\":\"customweb\"},{\"id\":6,\"menu_icon\":null,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Asdf5\",\"type\":\"customweb\"},{\"id\":15,\"menu_icon\":null,\"name\":\"App Tutorial\",\"slug\":\"tutorial\",\"menu_type_icon\":\"fa fa-file-text\",\"menuTypeId\":10,\"title\":\"Italian Ice\",\"type\":\"tutorial\",\"css\":{\"pagerCss\":{\"background\":\"#000000\",\"height\":\"12px\",\"width\":\"12px\",\"bottom\":\"2%\"},\"imgCss\":{\"position\":\"relative\"},\"buttonCss\":{\"fontSize\":\"50px\",\"position\":\"absolute\",\"top\":\"0px\",\"right\":\"20px\",\"color\":\"#000000\"}}},{\"id\":16,\"menu_icon\":null,\"name\":\"Content Editor\",\"slug\":\"content_editor\",\"menu_type_icon\":\"fa fa-edit\",\"menuTypeId\":12,\"title\":\"Asdf\",\"type\":\"content\"}],\"tabmenu\":[{\"id\":1,\"menu_icon\":\"\",\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Asdf\",\"type\":\"customweb\",\"value\":\"http:\\/\\/google.com\"},{\"id\":2,\"menu_icon\":null,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Asdf1\",\"type\":\"customweb\"},{\"id\":3,\"menu_icon\":null,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Asdf2\",\"type\":\"customweb\"},{\"id\":4,\"menu_icon\":null,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Asdf3\",\"type\":\"customweb\"},{\"id\":5,\"menu_icon\":null,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Asdf4\",\"type\":\"customweb\"},{\"id\":6,\"menu_icon\":null,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Asdf5\",\"type\":\"customweb\"},{\"id\":15,\"menu_icon\":null,\"name\":\"App Tutorial\",\"slug\":\"tutorial\",\"menu_type_icon\":\"fa fa-file-text\",\"menuTypeId\":10,\"title\":\"Italian Ice\",\"type\":\"tutorial\",\"css\":{\"pagerCss\":{\"background\":\"#000000\",\"height\":\"12px\",\"width\":\"12px\",\"bottom\":\"2%\"},\"imgCss\":{\"position\":\"relative\"},\"buttonCss\":{\"fontSize\":\"50px\",\"position\":\"absolute\",\"top\":\"0px\",\"right\":\"20px\",\"color\":\"#000000\"}}},{\"id\":16,\"menu_icon\":null,\"name\":\"Content Editor\",\"slug\":\"content_editor\",\"menu_type_icon\":\"fa fa-edit\",\"menuTypeId\":12,\"title\":\"Asdf\",\"type\":\"content\"}]},\"url\":{\"imageUrl\":\"http:\\/\\/127.0.0.1:8000\\/json\\/joes_italian_ice1\\/1.0\"},\"frameworkConfig\":{\"language-json-name\":\"language.json\"},\"popups\":{\"notification\":{\"title\":\"Title\",\"message\":\"You have been automatically subscribed to receive push notifications. Remember, you can always update your push notification settings by going to Settings\",\"button1\":\"Continue\",\"button2\":\"Manage Notifications\",\"isShow\":\"false\"},\"updateApp\":{\"title\":\"Title\",\"buttonName\":\"Update\",\"message\":\"\",\"isShow\":\"false\",\"application\":{\"ios\":{\"version\":\"\",\"id\":\"\"},\"android\":{\"version\":\"\",\"id\":\"\"}}},\"rateApp\":{\"isShow\":\"false\",\"andr_app_id\":\"\",\"ios_app_id\":\"\",\"uses_until_prompt\":\"5\",\"title\":\"Title\",\"message\":\"If you enjoy this app, please take a moment to rate it.\",\"rateThisButton\":\"Agree\",\"cancelButton\":\"Decline\",\"remindLaterButton\":\"Remind\",\"rateTitle\":null,\"application\":{\"ios\":{\"version\":\"\",\"id\":\"\"},\"android\":{\"version\":\"\",\"id\":\"\"}}}},\"appSpecific\":{\"sideMenuCss\":{\"mainMenu\":{\"fontSize\":\"22px\",\"fontName\":\"bebas_neueregular\",\"paddingLeft\":\"15\",\"paddingTop\":\"0\",\"lineDividerHeight\":\"2px\",\"borderBottom\":\"2px solid #ffffff\",\"lineDividerColor\":\"#000000\",\"selectedColor\":\"#c9c9c97d\",\"selectedFontColor\":\"#000000\",\"nonSelectedColor\":\"#ffffff\",\"nonSelectedFontColor\":\"#0000007d\",\"backgroundColor\":\"#ffffff\",\"sideMenuImg\":\"http:\\/\\/54.70.182.92\\/upload\\/appicon\\/original\\/default.png\"},\"subMenu\":{\"fontSize\":\"20px\",\"color\":\"#000000\",\"fontName\":\"bebas_neueregular\",\"paddingLeft\":\"\",\"paddingTop\":\"\",\"backgroundColor\":\"#ffffff\",\"borderBottom\":\"2px solid #0000007d\",\"marginTop\":\"10px\"},\"arrow\":{\"right\":\"10px\",\"position\":\"absolute\",\"fontSize\":\"30px\",\"arrowColor\":\"#000000\"},\"backArrow\":{\"color\":\"#b13333\"}},\"tabMenuCss\":{\"tabMenu\":{\"fontsizetab\":\"22px\",\"fontcolor\":\"#c41515\",\"fontName\":\"arial\",\"backgroundColor\":\"#612121\",\"tab-position\":\"1\",\"tabheight\":\"64px\"}},\"menuIconCss\":{\"color\":\"#b13333\"},\"headerCss\":{\"color\":\"#ca0f0f\",\"height\":\"70px\",\"borderBottom\":\"2px solid #852828\",\"headerIcon\":\"http:\\/\\/54.70.182.92\\/upload\\/appicon\\/original\\/default.png\"},\"statusBarCss\":{\"color\":\"#988383\"},\"sponsorSplash_screen\":{\"url\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/sponsorsplash\\/thumb\\/default.png\",\"time\":\"10\"},\"splash_Screen\":{\"url\":\"\"},\"toggleIcon\":{\"iconBackgroundColor\":\"#000000\",\"innerBackgroundColor\":\"#ffffff\"}}}', '2', '[{\"menuIconCss\":[{\"key\":\"backgroundColorMenu\",\"value\":\"#b13333\",\"label\":\"Menu Icon Color\",\"type\":\"color\"}]},{\"headerCss\":[{\"key\":\"background color\",\"value\":\"#ca0f0f\",\"label\":\"Header Color\",\"type\":\"color\"},{\"key\":\"height\",\"value\":\"70\",\"label\":\"Header Height\",\"type\":\"size\"},{\"key\":\"borderbottom\",\"value\":\"2\",\"label\":\"Header Border Bottom\",\"type\":\"size\"},{\"key\":\"background color border\",\"value\":\"#852828\",\"label\":\"Header Border Bottom\",\"type\":\"color\"},{\"key\":\"headerIcon\",\"value\":\"http://54.70.182.92/upload/appicon/original/default.png\",\"label\":\"headerIcon\",\"type\":\"image\"},{\"key\":\"headerAlignment\",\"value\":\"center\",\"label\":\"Header Alignment\",\"type\":\"drpAlignment\"}]},{\"statusBarCss\":[{\"key\":\"background color\",\"value\":\"#988383\",\"label\":\"Status Bar Color\",\"type\":\"color\"}]}]', '{\"sideMenuCss\":[{\"mainMenu\":[{\"key\":\"fontSize\",\"value\":\"22\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"fontName\",\"value\":\"bebas_neueregular\",\"label\":\"Font Style\",\"type\":\"font\"},{\"key\":\"paddingLeft\",\"value\":\"15\",\"label\":\"Padding Left\",\"type\":\"size\"},{\"key\":\"paddingTop\",\"value\":\"0\",\"label\":\"Padding Top\",\"type\":\"size\"},{\"key\":\"lineDividerHeight\",\"value\":\"2\",\"label\":\"Menu Separator Height\",\"type\":\"size\"},{\"key\":\"borderBottom\",\"value\":\"2px solid #ffffff\",\"label\":\"Header Separator Color\",\"type\":\"color\"},{\"key\":\"lineDividerColor\",\"value\":\"#000000\",\"label\":\"Separator Color\",\"type\":\"color\"},{\"key\":\"selectedColor\",\"value\":\"#c9c9c97d\",\"label\":\"Selected Menu Color\",\"type\":\"color\"},{\"key\":\"selectedFontColor\",\"value\":\"#000000\",\"label\":\"Selected Menu Font Color\",\"type\":\"color\"},{\"key\":\"nonSelectedColor\",\"value\":\"#ffffff\",\"label\":\"Non-Selected Menu Color\",\"type\":\"color\"},{\"key\":\"nonSelectedFontColor\",\"value\":\"#0000007d\",\"label\":\"Non-Selected Menu Font Color\",\"type\":\"color\"},{\"key\":\"backgroundColor\",\"value\":\"#ffffff\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"sideMenuImg\",\"value\":\"http://54.70.182.92/upload/appicon/original/default.png\",\"label\":\"\",\"type\":\"color\"}]},{\"subMenu\":[{\"key\":\"fontSize\",\"value\":\"20\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"color\",\"value\":\"#000000\",\"label\":\"Font Color\",\"type\":\"color\"},{\"key\":\"fontName\",\"value\":\"bebas_neueregular\",\"label\":\"Font Style\",\"type\":\"font\"},{\"key\":\"paddingLeft\",\"value\":\"15\",\"label\":\"Padding Left\",\"type\":\"paddingleft\"},{\"key\":\"paddingTop\",\"value\":\"\",\"label\":\"Padding Top\",\"type\":\"paddingtop\"},{\"key\":\"backgroundColor\",\"value\":\"#ffffff\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"borderBottom\",\"value\":\"2\",\"label\":\"Submenu Separator Height\",\"type\":\"size\"},{\"key\":\"borderColor\",\"value\":\"#0000007d\",\"label\":\"Submenu Separator Color\",\"type\":\"color\"},{\"key\":\"marginTop\",\"value\":\"10\",\"label\":\"Margin Top\",\"type\":\"margintop\"}]},{\"arrow\":[{\"key\":\"arrowColor\",\"value\":\"#000000\",\"label\":\"Arrow Color\",\"type\":\"color\"},{\"key\":\"arrow padding left\",\"value\":\"10\",\"label\":\"Right\",\"type\":\"size\"},{\"key\":\"size\",\"value\":\"30\",\"label\":\"Arrow Size\",\"type\":\"size\"},{\"key\":\"position\",\"value\":\"absolute\",\"label\":\"Position\",\"type\":\"position\"},{\"key\":\"backarrowcolor\",\"value\":\"#b13333\",\"label\":\"Back Arrow Color\",\"type\":\"color\"},{\"key\":\"toggleouter\",\"value\":\"#000000\",\"label\":\"Toggle Outer Color\",\"type\":\"color\"},{\"key\":\"toggleinner\",\"value\":\"#ffffff\",\"label\":\"Toggle Inner Color\",\"type\":\"color\"}]},{\"tabMenu\":[{\"key\":\"fontsizetab\",\"value\":\"22\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"fontcolor\",\"value\":\"#c41515\",\"label\":\"Font Color\",\"type\":\"color\"},{\"key\":\"fontName\",\"value\":\"\",\"label\":\"Font Name\",\"type\":\"font\"},{\"key\":\"backgroundColor\",\"value\":\"#612121\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"tab-position\",\"value\":\"1\",\"label\":\"Tab Position\",\"type\":\"position\"},{\"key\":\"tabheight\",\"value\":\"64\",\"label\":\"Tab Height\",\"type\":\"size\"}]}]}', '1.0', '1', 0, 1, NULL, '2018-03-15 13:00:39', '2018-03-29 10:51:47', '1'),
(2, 'Gb9sv7', 'Test', 'test2', '{\"menu_location_type\":\"2\",\"appInfo\":{\"appID\":\"2\",\"appName\":\"Test\",\"appBundleId\":\"\",\"appJSONVersion\":\"\",\"appDescription\":\"\",\"homePageIndex\":0,\"googleAnalyticId\":\"\",\"firebase_id\":\"\",\"analytics_id\":\"\",\"crashlytics_id\":\"\",\"add_ipad_screenshot\":null},\"menu\":{\"sidemenu\":[]},\"url\":{\"imageUrl\":\"http:\\/\\/127.0.0.1:8000\\/json\\/test2\\/1.0\\/\"},\"frameworkConfig\":{\"language-json-name\":\"language.json\"},\"popups\":{\"notification\":{\"title\":\"Title\",\"message\":\"You have been automatically subscribed to receive push notifications. Remember, you can always update your push notification settings by going to Settings\",\"button1\":\"Continue\",\"button2\":\"Manage Notifications\",\"isShow\":\"false\"},\"updateApp\":{\"title\":\"Title\",\"buttonName\":\"Update\",\"message\":\"\",\"isShow\":\"false\",\"application\":{\"ios\":{\"version\":\"\",\"id\":\"\"},\"android\":{\"version\":\"\",\"id\":\"\"}}},\"rateApp\":{\"isShow\":\"false\",\"andr_app_id\":\"\",\"ios_app_id\":\"\",\"uses_until_prompt\":\"5\",\"title\":\"Title\",\"message\":\"If you enjoy this app, please take a moment to rate it.\",\"rateThisButton\":\"Agree\",\"cancelButton\":\"Decline\",\"remindLaterButton\":\"Remind\",\"rateTitle\":null,\"application\":{\"ios\":{\"version\":\"\",\"id\":\"\"},\"android\":{\"version\":\"\",\"id\":\"\"}}}},\"appSpecific\":{\"sideMenuCss\":{\"mainMenu\":{\"fontSize\":\"22px\",\"fontName\":\"bebas_neueregular\",\"paddingLeft\":\"15\",\"paddingTop\":\"0\",\"lineDividerHeight\":\"2px\",\"borderBottom\":\"2px solid #ffffff\",\"lineDividerColor\":\"#000000\",\"selectedColor\":\"#c9c9c97d\",\"selectedFontColor\":\"#000000\",\"nonSelectedColor\":\"#ffffff\",\"nonSelectedFontColor\":\"#0000007d\",\"backgroundColor\":\"#ffffff\",\"sideMenuImg\":\"http:\\/\\/54.70.182.92\\/upload\\/appicon\\/original\\/default.png\"},\"subMenu\":{\"fontSize\":\"20px\",\"color\":\"#000000\",\"fontName\":\"bebas_neueregular\",\"paddingLeft\":\"\",\"paddingTop\":\"\",\"backgroundColor\":\"#ffffff\",\"borderBottom\":\"2px solid #0000007d\",\"marginTop\":\"10px\"},\"arrow\":{\"right\":\"10px\",\"position\":\"absolute\",\"fontSize\":\"30px\",\"arrowColor\":\"#000000\"},\"backArrow\":{\"color\":\"#000000\"}},\"tabMenuCss\":{\"tabMenu\":{\"fontsizetab\":\"22px\",\"fontcolor\":\"#ff0000\",\"fontName\":\"arial\",\"backgroundColor\":\"#ff0000\",\"tab-position\":\"1\",\"tabheight\":\"64px\"}},\"menuIconCss\":{\"color\":\"#000000\"},\"headerCss\":{\"color\":\"#ffffff\",\"height\":\"70px\",\"borderBottom\":\"2px solid #0000007d\",\"headerIcon\":\"http:\\/\\/54.70.182.92\\/upload\\/appicon\\/original\\/default.png\"},\"statusBarCss\":{\"color\":\"#000000\"},\"sponsorSplash_screen\":{\"url\":\"\",\"time\":\"\"},\"splash_Screen\":{\"url\":\"\"},\"toggleIcon\":{\"iconBackgroundColor\":\"#000000\",\"innerBackgroundColor\":\"#ffffff\"}}}', '2', '[{\"menuIconCss\":[{\"key\":\"backgroundColorMenu\",\"value\":\"#000000\",\"label\":\"Menu Icon Color\",\"type\":\"color\"}]},{\"headerCss\":[{\"key\":\"background color\",\"value\":\"#ffffff\",\"label\":\"Header Color\",\"type\":\"color\"},{\"key\":\"height\",\"value\":\"70\",\"label\":\"Header Height\",\"type\":\"size\"},{\"key\":\"borderbottom\",\"value\":\"2\",\"label\":\"Header Border Bottom\",\"type\":\"size\"},{\"key\":\"background color border\",\"value\":\"#0000007d\",\"label\":\"Header Border Bottom\",\"type\":\"color\"},{\"key\":\"headerIcon\",\"value\":\"http://54.70.182.92/upload/appicon/original/default.png\",\"label\":\"headerIcon\",\"type\":\"image\"},{\"key\":\"headerAlignment\",\"value\":\"center\",\"label\":\"Header Alignment\",\"type\":\"drpAlignment\"}]},{\"statusBarCss\":[{\"key\":\"background color\",\"value\":\"#000000\",\"label\":\"Status Bar Color\",\"type\":\"color\"}]}]', '{\"sideMenuCss\":[{\"mainMenu\":[{\"key\":\"fontSize\",\"value\":\"22\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"fontName\",\"value\":\"bebas_neueregular\",\"label\":\"Font Style\",\"type\":\"font\"},{\"key\":\"paddingLeft\",\"value\":\"15\",\"label\":\"Padding Left\",\"type\":\"size\"},{\"key\":\"paddingTop\",\"value\":\"0\",\"label\":\"Padding Top\",\"type\":\"size\"},{\"key\":\"lineDividerHeight\",\"value\":\"2\",\"label\":\"Menu Separator Height\",\"type\":\"size\"},{\"key\":\"borderBottom\",\"value\":\"2px solid #ffffff\",\"label\":\"Header Separator Color\",\"type\":\"color\"},{\"key\":\"lineDividerColor\",\"value\":\"#000000\",\"label\":\"Separator Color\",\"type\":\"color\"},{\"key\":\"selectedColor\",\"value\":\"#c9c9c97d\",\"label\":\"Selected Menu Color\",\"type\":\"color\"},{\"key\":\"selectedFontColor\",\"value\":\"#000000\",\"label\":\"Selected Menu Font Color\",\"type\":\"color\"},{\"key\":\"nonSelectedColor\",\"value\":\"#ffffff\",\"label\":\"Non-Selected Menu Color\",\"type\":\"color\"},{\"key\":\"nonSelectedFontColor\",\"value\":\"#0000007d\",\"label\":\"Non-Selected Menu Font Color\",\"type\":\"color\"},{\"key\":\"backgroundColor\",\"value\":\"#ffffff\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"sideMenuImg\",\"value\":\"http:\\/\\/54.70.182.92\\/upload\\/appicon\\/original\\/default.png\",\"label\":\"\",\"type\":\"color\"}]},{\"subMenu\":[{\"key\":\"fontSize\",\"value\":\"20\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"color\",\"value\":\"#000000\",\"label\":\"Font Color\",\"type\":\"color\"},{\"key\":\"fontName\",\"value\":\"bebas_neueregular\",\"label\":\"Font Style\",\"type\":\"font\"},{\"key\":\"paddingLeft\",\"value\":\"15\",\"label\":\"Padding Left\",\"type\":\"paddingleft\"},{\"key\":\"paddingTop\",\"value\":\"\",\"label\":\"Padding Top\",\"type\":\"paddingtop\"},{\"key\":\"backgroundColor\",\"value\":\"#ffffff\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"borderBottom\",\"value\":\"2\",\"label\":\"Submenu Separator Height\",\"type\":\"size\"},{\"key\":\"borderColor\",\"value\":\"#0000007d\",\"label\":\"Submenu Separator Color\",\"type\":\"color\"},{\"key\":\"marginTop\",\"value\":\"10\",\"label\":\"Margin Top\",\"type\":\"margintop\"}]},{\"arrow\":[{\"key\":\"arrowColor\",\"value\":\"#000000\",\"label\":\"Arrow Color\",\"type\":\"color\"},{\"key\":\"arrow padding left\",\"value\":\"10\",\"label\":\"Right\",\"type\":\"size\"},{\"key\":\"size\",\"value\":\"30\",\"label\":\"Arrow Size\",\"type\":\"size\"},{\"key\":\"position\",\"value\":\"absolute\",\"label\":\"Position\",\"type\":\"position\"},{\"key\":\"backarrowcolor\",\"value\":\"#000000\",\"label\":\"Back Arrow Color\",\"type\":\"color\"},{\"key\":\"toggleouter\",\"value\":\"#000000\",\"label\":\"Toggle Outer Color\",\"type\":\"color\"},{\"key\":\"toggleinner\",\"value\":\"#ffffff\",\"label\":\"Toggle Inner Color\",\"type\":\"color\"}]},{\"tabMenu\":[{\"key\":\"fontsizetab\",\"value\":\"22\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"fontcolor\",\"value\":\"#ff0000\",\"label\":\"Font Color\",\"type\":\"color\"},{\"key\":\"fontName\",\"value\":\"\",\"label\":\"Font Name\",\"type\":\"font\"},{\"key\":\"backgroundColor\",\"value\":\"#ff0000\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"tab-position\",\"value\":\"1\",\"label\":\"Tab Position\",\"type\":\"position\"},{\"key\":\"tabheight\",\"value\":\"64\",\"label\":\"Tab Height\",\"type\":\"size\"}]}]}', '1.0', '1', 0, 1, NULL, '2018-03-15 14:37:51', '2018-03-16 03:24:58', '2'),
(3, 'oYaP8f', 'Test', 'test3', '{\"menu_location_type\":\"1\",\"appInfo\":{\"appID\":\"3\",\"appName\":\"Test\",\"appBundleId\":\"\",\"appJSONVersion\":\"\",\"appDescription\":\"\",\"homePageIndex\":0,\"googleAnalyticId\":\"\",\"firebase_id\":\"\",\"analytics_id\":\"\",\"crashlytics_id\":\"\",\"add_ipad_screenshot\":null},\"menu\":{\"sidemenu\":[]},\"url\":{\"imageUrl\":\"http:\\/\\/127.0.0.1:8000\\/json\\/test3\\/1.0\\/\"},\"frameworkConfig\":{\"language-json-name\":\"language.json\"},\"popups\":{\"notification\":{\"title\":\"Title\",\"message\":\"You have been automatically subscribed to receive push notifications. Remember, you can always update your push notification settings by going to Settings\",\"button1\":\"Continue\",\"button2\":\"Manage Notifications\",\"isShow\":\"false\"},\"updateApp\":{\"title\":\"Title\",\"buttonName\":\"Update\",\"message\":\"\",\"isShow\":\"false\",\"application\":{\"ios\":{\"version\":\"\",\"id\":\"\"},\"android\":{\"version\":\"\",\"id\":\"\"}}},\"rateApp\":{\"isShow\":\"false\",\"andr_app_id\":\"\",\"ios_app_id\":\"\",\"uses_until_prompt\":\"5\",\"title\":\"Title\",\"message\":\"If you enjoy this app, please take a moment to rate it.\",\"rateThisButton\":\"Agree\",\"cancelButton\":\"Decline\",\"remindLaterButton\":\"Remind\",\"rateTitle\":null,\"application\":{\"ios\":{\"version\":\"\",\"id\":\"\"},\"android\":{\"version\":\"\",\"id\":\"\"}}}},\"appSpecific\":{\"sideMenuCss\":{\"mainMenu\":{\"fontSize\":\"22px\",\"fontName\":\"bebas_neueregular\",\"paddingLeft\":\"15\",\"paddingTop\":\"0\",\"lineDividerHeight\":\"2px\",\"borderBottom\":\"2px solid #ffffff\",\"lineDividerColor\":\"#000000\",\"selectedColor\":\"#c9c9c97d\",\"selectedFontColor\":\"#000000\",\"nonSelectedColor\":\"#ffffff\",\"nonSelectedFontColor\":\"#0000007d\",\"backgroundColor\":\"#ffffff\",\"sideMenuImg\":\"http:\\/\\/54.70.182.92\\/upload\\/appicon\\/original\\/default.png\"},\"subMenu\":{\"fontSize\":\"20px\",\"color\":\"#000000\",\"fontName\":\"bebas_neueregular\",\"paddingLeft\":\"\",\"paddingTop\":\"\",\"backgroundColor\":\"#ffffff\",\"borderBottom\":\"2px solid #0000007d\",\"marginTop\":\"10px\"},\"arrow\":{\"right\":\"10px\",\"position\":\"absolute\",\"fontSize\":\"30px\",\"arrowColor\":\"#000000\"},\"backArrow\":{\"color\":\"#000000\"}},\"tabMenuCss\":{\"tabMenu\":{\"fontsizetab\":\"22px\",\"fontcolor\":\"#ff0000\",\"fontName\":\"arial\",\"backgroundColor\":\"#ff0000\",\"tab-position\":\"1\",\"tabheight\":\"64px\"}},\"menuIconCss\":{\"color\":\"#000000\"},\"headerCss\":{\"color\":\"#ffffff\",\"height\":\"70px\",\"borderBottom\":\"2px solid #0000007d\",\"headerIcon\":\"http:\\/\\/54.70.182.92\\/upload\\/appicon\\/original\\/default.png\"},\"statusBarCss\":{\"color\":\"#000000\"},\"sponsorSplash_screen\":{\"url\":\"\",\"time\":\"\"},\"splash_Screen\":{\"url\":\"\"},\"toggleIcon\":{\"iconBackgroundColor\":\"#000000\",\"innerBackgroundColor\":\"#ffffff\"}}}', '2', '[{\"menuIconCss\":[{\"key\":\"backgroundColorMenu\",\"value\":\"#000000\",\"label\":\"Menu Icon Color\",\"type\":\"color\"}]},{\"headerCss\":[{\"key\":\"background color\",\"value\":\"#ffffff\",\"label\":\"Header Color\",\"type\":\"color\"},{\"key\":\"height\",\"value\":\"70\",\"label\":\"Header Height\",\"type\":\"size\"},{\"key\":\"borderbottom\",\"value\":\"2\",\"label\":\"Header Border Bottom\",\"type\":\"size\"},{\"key\":\"background color border\",\"value\":\"#0000007d\",\"label\":\"Header Border Bottom\",\"type\":\"color\"},{\"key\":\"headerIcon\",\"value\":\"http:\\/\\/54.70.182.92\\/upload\\/appicon\\/original\\/default.png\",\"label\":\"headerIcon\",\"type\":\"image\"},{\"key\":\"headerAlignment\",\"value\":\"center\",\"label\":\"Header Alignment\",\"type\":\"drpAlignment\"}]},{\"statusBarCss\":[{\"key\":\"background color\",\"value\":\"#000000\",\"label\":\"Status Bar Color\",\"type\":\"color\"}]}]', '{\"sideMenuCss\":[{\"mainMenu\":[{\"key\":\"fontSize\",\"value\":\"22\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"fontName\",\"value\":\"bebas_neueregular\",\"label\":\"Font Style\",\"type\":\"font\"},{\"key\":\"paddingLeft\",\"value\":\"15\",\"label\":\"Padding Left\",\"type\":\"size\"},{\"key\":\"paddingTop\",\"value\":\"0\",\"label\":\"Padding Top\",\"type\":\"size\"},{\"key\":\"lineDividerHeight\",\"value\":\"2\",\"label\":\"Menu Separator Height\",\"type\":\"size\"},{\"key\":\"borderBottom\",\"value\":\"2px solid #ffffff\",\"label\":\"Header Separator Color\",\"type\":\"color\"},{\"key\":\"lineDividerColor\",\"value\":\"#000000\",\"label\":\"Separator Color\",\"type\":\"color\"},{\"key\":\"selectedColor\",\"value\":\"#c9c9c97d\",\"label\":\"Selected Menu Color\",\"type\":\"color\"},{\"key\":\"selectedFontColor\",\"value\":\"#000000\",\"label\":\"Selected Menu Font Color\",\"type\":\"color\"},{\"key\":\"nonSelectedColor\",\"value\":\"#ffffff\",\"label\":\"Non-Selected Menu Color\",\"type\":\"color\"},{\"key\":\"nonSelectedFontColor\",\"value\":\"#0000007d\",\"label\":\"Non-Selected Menu Font Color\",\"type\":\"color\"},{\"key\":\"backgroundColor\",\"value\":\"#ffffff\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"sideMenuImg\",\"value\":\"http:\\/\\/54.70.182.92\\/upload\\/appicon\\/original\\/default.png\",\"label\":\"\",\"type\":\"color\"}]},{\"subMenu\":[{\"key\":\"fontSize\",\"value\":\"20\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"color\",\"value\":\"#000000\",\"label\":\"Font Color\",\"type\":\"color\"},{\"key\":\"fontName\",\"value\":\"bebas_neueregular\",\"label\":\"Font Style\",\"type\":\"font\"},{\"key\":\"paddingLeft\",\"value\":\"15\",\"label\":\"Padding Left\",\"type\":\"paddingleft\"},{\"key\":\"paddingTop\",\"value\":\"\",\"label\":\"Padding Top\",\"type\":\"paddingtop\"},{\"key\":\"backgroundColor\",\"value\":\"#ffffff\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"borderBottom\",\"value\":\"2\",\"label\":\"Submenu Separator Height\",\"type\":\"size\"},{\"key\":\"borderColor\",\"value\":\"#0000007d\",\"label\":\"Submenu Separator Color\",\"type\":\"color\"},{\"key\":\"marginTop\",\"value\":\"10\",\"label\":\"Margin Top\",\"type\":\"margintop\"}]},{\"arrow\":[{\"key\":\"arrowColor\",\"value\":\"#000000\",\"label\":\"Arrow Color\",\"type\":\"color\"},{\"key\":\"arrow padding left\",\"value\":\"10\",\"label\":\"Right\",\"type\":\"size\"},{\"key\":\"size\",\"value\":\"30\",\"label\":\"Arrow Size\",\"type\":\"size\"},{\"key\":\"position\",\"value\":\"absolute\",\"label\":\"Position\",\"type\":\"position\"},{\"key\":\"backarrowcolor\",\"value\":\"#000000\",\"label\":\"Back Arrow Color\",\"type\":\"color\"},{\"key\":\"toggleouter\",\"value\":\"#000000\",\"label\":\"Toggle Outer Color\",\"type\":\"color\"},{\"key\":\"toggleinner\",\"value\":\"#ffffff\",\"label\":\"Toggle Inner Color\",\"type\":\"color\"}]},{\"tabMenu\":[{\"key\":\"fontsizetab\",\"value\":\"22\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"fontcolor\",\"value\":\"#ff0000\",\"label\":\"Font Color\",\"type\":\"color\"},{\"key\":\"fontName\",\"value\":\"\",\"label\":\"Font Name\",\"type\":\"font\"},{\"key\":\"backgroundColor\",\"value\":\"#ff0000\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"tab-position\",\"value\":\"1\",\"label\":\"Tab Position\",\"type\":\"position\"},{\"key\":\"tabheight\",\"value\":\"64\",\"label\":\"Tab Height\",\"type\":\"size\"}]}]}', '1.0', '1', 0, 1, NULL, '2018-03-16 03:25:09', '2018-03-16 04:48:53', '2'),
(4, 'puZ8HE', 'Test', 'test4', '{\"menu_location_type\":\"2\",\"appInfo\":{\"appID\":\"4\",\"appName\":\"Test\",\"appBundleId\":\"\",\"appJSONVersion\":\"\",\"appDescription\":\"\",\"homePageIndex\":0,\"googleAnalyticId\":\"\",\"firebase_id\":\"\",\"analytics_id\":\"\",\"crashlytics_id\":\"\",\"add_ipad_screenshot\":null,\"tutorial\":{\"flag\":0,\"index\":0}},\"menu\":{\"sidemenu\":[{\"id\":7,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Italian Ice\",\"type\":\"customweb\",\"image\":\"null\",\"value\":\"http:\\/\\/undefined\"},{\"id\":8,\"name\":\"Animated Panels\",\"slug\":\"animated_panels\",\"menu_type_icon\":\"fa fa-bars\",\"menuTypeId\":1,\"title\":\"Italian Ice\",\"type\":\"kenburns\",\"css\":{\"kenburnHeader\":{\"textAlignment\":\"right\",\"color\":\"\",\"bottomBorder\":\"2px solid #ffffff7d\"},\"kenburnListBanner\":{\"radius\":\"0px\",\"background\":\"#ffffff7d\",\"border\":\"2px solid #ffffff7d\",\"margin\":\"0px 0px 0px 0px\",\"width\":\"calc(100%)\",\"padding\":\"1px 4px 1px 4px\"},\"kenburnListTitle\":{\"bottom\":\"0px\",\"height\":\"23px\",\"color\":\"#ffffff7d\",\"size\":\"24px\",\"alignment\":\"right\",\"backgroundColor\":\"#0000007d\",\"display\":\"block\",\"fontName\":\"bebas_neueregular\",\"lineHeight\":\"20px\"},\"kenburnAnimation\":{\"name\":\"zoom\",\"duration\":\"6s\",\"from\":\"undefined\",\"to\":\"undefined\"},\"kenburnIcon\":{\"fontSize\":\"24px\",\"verticalAlign\":\"middle\",\"margin\":\"0px 5px 0px 0px\"}},\"value\":[{\"id\":9,\"name\":\"Animated Panels\",\"slug\":\"animated_panels\",\"menu_type_icon\":\"fa fa-bars\",\"menuTypeId\":1,\"title\":\"Italian Ice\",\"type\":\"kenburns\",\"css\":{\"kenburnHeader\":{\"textAlignment\":\"right\",\"color\":\"\",\"bottomBorder\":\"2px solid #ffffff7d\"},\"kenburnListBanner\":{\"radius\":\"0px\",\"background\":\"#ffffff7d\",\"border\":\"2px solid #ffffff7d\",\"margin\":\"0px 0px 0px 0px\",\"width\":\"calc(100%)\",\"padding\":\"1px 4px 1px 4px\"},\"kenburnListTitle\":{\"bottom\":\"0px\",\"height\":\"23px\",\"color\":\"#ffffff7d\",\"size\":\"24px\",\"alignment\":\"right\",\"backgroundColor\":\"#0000007d\",\"display\":\"block\",\"fontName\":\"bebas_neueregular\",\"lineHeight\":\"20px\"},\"kenburnAnimation\":{\"name\":\"zoom\",\"duration\":\"6s\",\"from\":\"undefined\",\"to\":\"undefined\"},\"kenburnIcon\":{\"fontSize\":\"24px\",\"verticalAlign\":\"middle\",\"margin\":\"0px 5px 0px 0px\"}},\"image\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/menu_icon\\/thumb\\/default.png\"},{\"id\":10,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"TestTest\",\"type\":\"customweb\",\"image\":\"https:\\/\\/lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com\\/test4\\/setting\\/menuImage10.png\",\"value\":\"http:\\/\\/undefined\"},{\"id\":11,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"gjc\",\"type\":\"customweb\",\"image\":\"https:\\/\\/lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com\\/test4\\/setting\\/menuImage11.png\",\"value\":\"http:\\/\\/undefined\"}]},{\"id\":12,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Italian Ice\",\"type\":\"customweb\"}],\"tabmenu\":[{\"id\":7,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Italian Ice\",\"type\":\"customweb\",\"image\":\"null\",\"value\":\"http:\\/\\/undefined\"},{\"id\":8,\"name\":\"Animated Panels\",\"slug\":\"animated_panels\",\"menu_type_icon\":\"fa fa-bars\",\"menuTypeId\":1,\"title\":\"Italian Ice\",\"type\":\"kenburns\",\"css\":{\"kenburnHeader\":{\"textAlignment\":\"right\",\"color\":\"\",\"bottomBorder\":\"2px solid #ffffff7d\"},\"kenburnListBanner\":{\"radius\":\"0px\",\"background\":\"#ffffff7d\",\"border\":\"2px solid #ffffff7d\",\"margin\":\"0px 0px 0px 0px\",\"width\":\"calc(100%)\",\"padding\":\"1px 4px 1px 4px\"},\"kenburnListTitle\":{\"bottom\":\"0px\",\"height\":\"23px\",\"color\":\"#ffffff7d\",\"size\":\"24px\",\"alignment\":\"right\",\"backgroundColor\":\"#0000007d\",\"display\":\"block\",\"fontName\":\"bebas_neueregular\",\"lineHeight\":\"20px\"},\"kenburnAnimation\":{\"name\":\"zoom\",\"duration\":\"6s\",\"from\":\"undefined\",\"to\":\"undefined\"},\"kenburnIcon\":{\"fontSize\":\"24px\",\"verticalAlign\":\"middle\",\"margin\":\"0px 5px 0px 0px\"}},\"value\":[{\"id\":9,\"name\":\"Animated Panels\",\"slug\":\"animated_panels\",\"menu_type_icon\":\"fa fa-bars\",\"menuTypeId\":1,\"title\":\"Italian Ice\",\"type\":\"kenburns\",\"css\":{\"kenburnHeader\":{\"textAlignment\":\"right\",\"color\":\"\",\"bottomBorder\":\"2px solid #ffffff7d\"},\"kenburnListBanner\":{\"radius\":\"0px\",\"background\":\"#ffffff7d\",\"border\":\"2px solid #ffffff7d\",\"margin\":\"0px 0px 0px 0px\",\"width\":\"calc(100%)\",\"padding\":\"1px 4px 1px 4px\"},\"kenburnListTitle\":{\"bottom\":\"0px\",\"height\":\"23px\",\"color\":\"#ffffff7d\",\"size\":\"24px\",\"alignment\":\"right\",\"backgroundColor\":\"#0000007d\",\"display\":\"block\",\"fontName\":\"bebas_neueregular\",\"lineHeight\":\"20px\"},\"kenburnAnimation\":{\"name\":\"zoom\",\"duration\":\"6s\",\"from\":\"undefined\",\"to\":\"undefined\"},\"kenburnIcon\":{\"fontSize\":\"24px\",\"verticalAlign\":\"middle\",\"margin\":\"0px 5px 0px 0px\"}},\"image\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/menu_icon\\/thumb\\/default.png\"},{\"id\":10,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"TestTest\",\"type\":\"customweb\",\"image\":\"https:\\/\\/lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com\\/test4\\/setting\\/menuImage10.png\",\"value\":\"http:\\/\\/undefined\"},{\"id\":11,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"gjc\",\"type\":\"customweb\",\"image\":\"https:\\/\\/lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com\\/test4\\/setting\\/menuImage11.png\",\"value\":\"http:\\/\\/undefined\"}]},{\"id\":12,\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Italian Ice\",\"type\":\"customweb\"}]},\"url\":{\"imageUrl\":\"http:\\/\\/54.70.182.92\\/json\\/test4\\/1.0\\/\"},\"frameworkConfig\":{\"language-json-name\":\"language.json\"},\"popups\":{\"notification\":{\"title\":\"Title\",\"message\":\"You have been automatically subscribed to receive push notifications. Remember, you can always update your push notification settings by going to Settings\",\"button1\":\"Continue\",\"button2\":\"Manage Notifications\",\"isShow\":\"false\"},\"updateApp\":{\"title\":\"Title\",\"buttonName\":\"Update\",\"message\":\"\",\"isShow\":\"false\",\"application\":{\"ios\":{\"version\":\"\",\"id\":\"\"},\"android\":{\"version\":\"\",\"id\":\"\"}}},\"rateApp\":{\"isShow\":\"false\",\"andr_app_id\":\"\",\"ios_app_id\":\"\",\"uses_until_prompt\":\"5\",\"title\":\"Title\",\"message\":\"If you enjoy this app, please take a moment to rate it.\",\"rateThisButton\":\"Agree\",\"cancelButton\":\"Decline\",\"remindLaterButton\":\"Remind\",\"rateTitle\":null,\"application\":{\"ios\":{\"version\":\"\",\"id\":\"\"},\"android\":{\"version\":\"\",\"id\":\"\"}}}},\"appSpecific\":{\"sideMenuCss\":{\"mainMenu\":{\"fontSize\":\"22px\",\"fontName\":\"Adamina\",\"paddingLeft\":\"15\",\"paddingTop\":\"0\",\"lineDividerHeight\":\"2px\",\"borderBottom\":\"2px solid #ffffff\",\"lineDividerColor\":\"#000000\",\"selectedColor\":\"#c9c9c97d\",\"selectedFontColor\":\"#000000\",\"nonSelectedColor\":\"#ffffff\",\"nonSelectedFontColor\":\"#0000007d\",\"backgroundColor\":\"#ffffff\",\"sideMenuImg\":\"https:\\/\\/lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com\\/test4\\/sidemenu\\/app_icon.png\"},\"subMenu\":{\"fontSize\":\"20px\",\"color\":\"#000000\",\"fontName\":\"Alegreya SC\",\"paddingLeft\":\"\",\"paddingTop\":\"\",\"backgroundColor\":\"#ffffff\",\"borderBottom\":\"2px solid #0000007d\",\"marginTop\":\"10px\"},\"arrow\":{\"right\":\"10px\",\"position\":\"absolute\",\"fontSize\":\"30px\",\"arrowColor\":\"#000000\"},\"backArrow\":{\"color\":\"#000000\"}},\"tabMenuCss\":{\"tabMenu\":{\"fontsizetab\":\"22px\",\"fontcolor\":\"#ff0000\",\"fontName\":\"Alike Angular\",\"backgroundColor\":\"#ff0000\",\"tab-position\":\"1\",\"tabheight\":\"68px\",\"tabcount\":\"8\"}},\"menuIconCss\":{\"color\":\"#000000\"},\"headerCss\":{\"color\":\"#ffffff\",\"height\":\"70px\",\"borderBottom\":\"2px solid #0000007d\",\"headerIcon\":\"https:\\/\\/lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com\\/test4\\/mainmenu\\/app_icon.png\"},\"statusBarCss\":{\"color\":\"#000000\"},\"sponsorSplash_screen\":{\"url\":\"\",\"time\":\"\"},\"splash_Screen\":{\"url\":\"\"},\"toggleIcon\":{\"iconBackgroundColor\":\"#000000\",\"innerBackgroundColor\":\"#ffffff\"}}}', '2', '[{\"menuIconCss\":[{\"key\":\"backgroundColorMenu\",\"value\":\"#000000\",\"label\":\"Menu Icon Color\",\"type\":\"color\"}]},{\"headerCss\":[{\"key\":\"background color\",\"value\":\"#ffffff\",\"label\":\"Header Color\",\"type\":\"color\"},{\"key\":\"height\",\"value\":\"70\",\"label\":\"Header Height\",\"type\":\"size\"},{\"key\":\"borderbottom\",\"value\":\"2\",\"label\":\"Header Border Bottom\",\"type\":\"size\"},{\"key\":\"background color border\",\"value\":\"#0000007d\",\"label\":\"Header Border Bottom\",\"type\":\"color\"},{\"key\":\"headerIcon\",\"value\":\"https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/test4/mainmenu/app_icon.png\",\"label\":\"headerIcon\",\"type\":\"image\"},{\"key\":\"headerAlignment\",\"value\":\"center\",\"label\":\"Header Alignment\",\"type\":\"drpAlignment\"}]},{\"statusBarCss\":[{\"key\":\"background color\",\"value\":\"#000000\",\"label\":\"Status Bar Color\",\"type\":\"color\"}]}]', '{\"sideMenuCss\":[{\"mainMenu\":[{\"key\":\"fontSize\",\"value\":\"22\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"fontName\",\"value\":\"Adamina\",\"label\":\"Font Style\",\"type\":\"font\"},{\"key\":\"paddingLeft\",\"value\":\"15\",\"label\":\"Padding Left\",\"type\":\"size\"},{\"key\":\"paddingTop\",\"value\":\"0\",\"label\":\"Padding Top\",\"type\":\"size\"},{\"key\":\"lineDividerHeight\",\"value\":\"2\",\"label\":\"Menu Separator Height\",\"type\":\"size\"},{\"key\":\"borderBottom\",\"value\":\"2px solid #ffffff\",\"label\":\"Header Separator Color\",\"type\":\"color\"},{\"key\":\"lineDividerColor\",\"value\":\"#000000\",\"label\":\"Separator Color\",\"type\":\"color\"},{\"key\":\"selectedColor\",\"value\":\"#c9c9c97d\",\"label\":\"Selected Menu Color\",\"type\":\"color\"},{\"key\":\"selectedFontColor\",\"value\":\"#000000\",\"label\":\"Selected Menu Font Color\",\"type\":\"color\"},{\"key\":\"nonSelectedColor\",\"value\":\"#ffffff\",\"label\":\"Non-Selected Menu Color\",\"type\":\"color\"},{\"key\":\"nonSelectedFontColor\",\"value\":\"#0000007d\",\"label\":\"Non-Selected Menu Font Color\",\"type\":\"color\"},{\"key\":\"backgroundColor\",\"value\":\"#ffffff\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"sideMenuImg\",\"value\":\"https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/test4/sidemenu/app_icon.png\",\"label\":\"\",\"type\":\"color\"}]},{\"subMenu\":[{\"key\":\"fontSize\",\"value\":\"20\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"color\",\"value\":\"#000000\",\"label\":\"Font Color\",\"type\":\"color\"},{\"key\":\"fontName\",\"value\":\"Alegreya SC\",\"label\":\"Font Style\",\"type\":\"font\"},{\"key\":\"paddingLeft\",\"value\":\"15\",\"label\":\"Padding Left\",\"type\":\"paddingleft\"},{\"key\":\"paddingTop\",\"value\":\"\",\"label\":\"Padding Top\",\"type\":\"paddingtop\"},{\"key\":\"backgroundColor\",\"value\":\"#ffffff\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"borderBottom\",\"value\":\"2\",\"label\":\"Submenu Separator Height\",\"type\":\"size\"},{\"key\":\"borderColor\",\"value\":\"#0000007d\",\"label\":\"Submenu Separator Color\",\"type\":\"color\"},{\"key\":\"marginTop\",\"value\":\"10\",\"label\":\"Margin Top\",\"type\":\"margintop\"}]},{\"arrow\":[{\"key\":\"arrowColor\",\"value\":\"#000000\",\"label\":\"Arrow Color\",\"type\":\"color\"},{\"key\":\"arrow padding left\",\"value\":\"10\",\"label\":\"Right\",\"type\":\"size\"},{\"key\":\"size\",\"value\":\"30\",\"label\":\"Arrow Size\",\"type\":\"size\"},{\"key\":\"position\",\"value\":\"absolute\",\"label\":\"Position\",\"type\":\"position\"},{\"key\":\"backarrowcolor\",\"value\":\"#000000\",\"label\":\"Back Arrow Color\",\"type\":\"color\"},{\"key\":\"toggleouter\",\"value\":\"#000000\",\"label\":\"Toggle Outer Color\",\"type\":\"color\"},{\"key\":\"toggleinner\",\"value\":\"#ffffff\",\"label\":\"Toggle Inner Color\",\"type\":\"color\"}]},{\"tabMenu\":[{\"key\":\"fontsizetab\",\"value\":\"22\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"fontcolor\",\"value\":\"#ff0000\",\"label\":\"Font Color\",\"type\":\"color\"},{\"key\":\"fontName\",\"value\":\"Alike Angular\",\"label\":\"Font Name\",\"type\":\"font\"},{\"key\":\"backgroundColor\",\"value\":\"#ff0000\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"tab-position\",\"value\":\"1\",\"label\":\"Tab Position\",\"type\":\"position\"},{\"key\":\"tabheight\",\"value\":\"68\",\"label\":\"Tab Height\",\"type\":\"size\"},{\"key\":\"tabcount\",\"value\":\"8\",\"label\":\"Tab Count\",\"type\":\"count\"}]}]}', '1.0', '1', 0, 1, NULL, '2018-03-16 04:50:11', '2018-03-18 22:27:27', '1'),
(5, '166Ei0', 'Test', 'test5', '{\"menu_location_type\":\"1\",\"appInfo\":{\"appID\":\"5\",\"appName\":\"Test\",\"appBundleId\":\"\",\"appJSONVersion\":\"\",\"appDescription\":\"\",\"homePageIndex\":0,\"googleAnalyticId\":\"\",\"firebase_id\":\"\",\"analytics_id\":\"\",\"crashlytics_id\":\"\",\"add_ipad_screenshot\":null},\"menu\":{\"sidemenu\":[]},\"url\":{\"imageUrl\":\"http:\\/\\/54.70.182.92\\/json\\/test5\\/1.0\\/\"},\"frameworkConfig\":{\"language-json-name\":\"language.json\"},\"popups\":{\"notification\":{\"title\":\"Title\",\"message\":\"You have been automatically subscribed to receive push notifications. Remember, you can always update your push notification settings by going to Settings\",\"button1\":\"Continue\",\"button2\":\"Manage Notifications\",\"isShow\":\"false\"},\"updateApp\":{\"title\":\"Title\",\"buttonName\":\"Update\",\"message\":\"\",\"isShow\":\"false\",\"application\":{\"ios\":{\"version\":\"\",\"id\":\"\"},\"android\":{\"version\":\"\",\"id\":\"\"}}},\"rateApp\":{\"isShow\":\"false\",\"andr_app_id\":\"\",\"ios_app_id\":\"\",\"uses_until_prompt\":\"5\",\"title\":\"Title\",\"message\":\"If you enjoy this app, please take a moment to rate it.\",\"rateThisButton\":\"Agree\",\"cancelButton\":\"Decline\",\"remindLaterButton\":\"Remind\",\"rateTitle\":null,\"application\":{\"ios\":{\"version\":\"\",\"id\":\"\"},\"android\":{\"version\":\"\",\"id\":\"\"}}}},\"appSpecific\":{\"sideMenuCss\":{\"mainMenu\":{\"fontSize\":\"22px\",\"fontName\":\"bebas_neueregular\",\"paddingLeft\":\"15\",\"paddingTop\":\"0\",\"lineDividerHeight\":\"2px\",\"borderBottom\":\"2px solid #ffffff\",\"lineDividerColor\":\"#000000\",\"selectedColor\":\"#c9c9c97d\",\"selectedFontColor\":\"#000000\",\"nonSelectedColor\":\"#ffffff\",\"nonSelectedFontColor\":\"#0000007d\",\"backgroundColor\":\"#ffffff\",\"sideMenuImg\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/appicon\\/original\\/default.png\"},\"subMenu\":{\"fontSize\":\"20px\",\"color\":\"#000000\",\"fontName\":\"bebas_neueregular\",\"paddingLeft\":\"\",\"paddingTop\":\"\",\"backgroundColor\":\"#ffffff\",\"borderBottom\":\"2px solid #0000007d\",\"marginTop\":\"10px\"},\"arrow\":{\"right\":\"10px\",\"position\":\"absolute\",\"fontSize\":\"30px\",\"arrowColor\":\"#000000\"},\"backArrow\":{\"color\":\"#000000\"}},\"tabMenuCss\":{\"tabMenu\":{\"fontsizetab\":\"22px\",\"fontcolor\":\"#ff0000\",\"fontName\":\"arial\",\"backgroundColor\":\"#ff0000\",\"tab-position\":\"1\",\"tabheight\":\"64px\",\"tabcount\":\"5\"}},\"menuIconCss\":{\"color\":\"#000000\"},\"headerCss\":{\"color\":\"#ffffff\",\"height\":\"70px\",\"borderBottom\":\"2px solid #0000007d\",\"headerIcon\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/appicon\\/original\\/default.png\"},\"statusBarCss\":{\"color\":\"#000000\"},\"sponsorSplash_screen\":{\"url\":\"\",\"time\":\"\"},\"splash_Screen\":{\"url\":\"\"},\"toggleIcon\":{\"iconBackgroundColor\":\"#000000\",\"innerBackgroundColor\":\"#ffffff\"}}}', '1', '[{\"menuIconCss\":[{\"key\":\"backgroundColorMenu\",\"value\":\"#000000\",\"label\":\"Menu Icon Color\",\"type\":\"color\"}]},{\"headerCss\":[{\"key\":\"background color\",\"value\":\"#ffffff\",\"label\":\"Header Color\",\"type\":\"color\"},{\"key\":\"height\",\"value\":\"70\",\"label\":\"Header Height\",\"type\":\"size\"},{\"key\":\"borderbottom\",\"value\":\"2\",\"label\":\"Header Border Bottom\",\"type\":\"size\"},{\"key\":\"background color border\",\"value\":\"#0000007d\",\"label\":\"Header Border Bottom\",\"type\":\"color\"},{\"key\":\"headerIcon\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/appicon\\/original\\/default.png\",\"label\":\"headerIcon\",\"type\":\"image\"},{\"key\":\"headerAlignment\",\"value\":\"center\",\"label\":\"Header Alignment\",\"type\":\"drpAlignment\"}]},{\"statusBarCss\":[{\"key\":\"background color\",\"value\":\"#000000\",\"label\":\"Status Bar Color\",\"type\":\"color\"}]}]', '{\"sideMenuCss\":[{\"mainMenu\":[{\"key\":\"fontSize\",\"value\":\"22\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"fontName\",\"value\":\"bebas_neueregular\",\"label\":\"Font Style\",\"type\":\"font\"},{\"key\":\"paddingLeft\",\"value\":\"15\",\"label\":\"Padding Left\",\"type\":\"size\"},{\"key\":\"paddingTop\",\"value\":\"0\",\"label\":\"Padding Top\",\"type\":\"size\"},{\"key\":\"lineDividerHeight\",\"value\":\"2\",\"label\":\"Menu Separator Height\",\"type\":\"size\"},{\"key\":\"borderBottom\",\"value\":\"2px solid #ffffff\",\"label\":\"Header Separator Color\",\"type\":\"color\"},{\"key\":\"lineDividerColor\",\"value\":\"#000000\",\"label\":\"Separator Color\",\"type\":\"color\"},{\"key\":\"selectedColor\",\"value\":\"#c9c9c97d\",\"label\":\"Selected Menu Color\",\"type\":\"color\"},{\"key\":\"selectedFontColor\",\"value\":\"#000000\",\"label\":\"Selected Menu Font Color\",\"type\":\"color\"},{\"key\":\"nonSelectedColor\",\"value\":\"#ffffff\",\"label\":\"Non-Selected Menu Color\",\"type\":\"color\"},{\"key\":\"nonSelectedFontColor\",\"value\":\"#0000007d\",\"label\":\"Non-Selected Menu Font Color\",\"type\":\"color\"},{\"key\":\"backgroundColor\",\"value\":\"#ffffff\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"sideMenuImg\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/appicon\\/original\\/default.png\",\"label\":\"\",\"type\":\"color\"}]},{\"subMenu\":[{\"key\":\"fontSize\",\"value\":\"20\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"color\",\"value\":\"#000000\",\"label\":\"Font Color\",\"type\":\"color\"},{\"key\":\"fontName\",\"value\":\"bebas_neueregular\",\"label\":\"Font Style\",\"type\":\"font\"},{\"key\":\"paddingLeft\",\"value\":\"15\",\"label\":\"Padding Left\",\"type\":\"paddingleft\"},{\"key\":\"paddingTop\",\"value\":\"\",\"label\":\"Padding Top\",\"type\":\"paddingtop\"},{\"key\":\"backgroundColor\",\"value\":\"#ffffff\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"borderBottom\",\"value\":\"2\",\"label\":\"Submenu Separator Height\",\"type\":\"size\"},{\"key\":\"borderColor\",\"value\":\"#0000007d\",\"label\":\"Submenu Separator Color\",\"type\":\"color\"},{\"key\":\"marginTop\",\"value\":\"10\",\"label\":\"Margin Top\",\"type\":\"margintop\"}]},{\"arrow\":[{\"key\":\"arrowColor\",\"value\":\"#000000\",\"label\":\"Arrow Color\",\"type\":\"color\"},{\"key\":\"arrow padding left\",\"value\":\"10\",\"label\":\"Right\",\"type\":\"size\"},{\"key\":\"size\",\"value\":\"30\",\"label\":\"Arrow Size\",\"type\":\"size\"},{\"key\":\"position\",\"value\":\"absolute\",\"label\":\"Position\",\"type\":\"position\"},{\"key\":\"backarrowcolor\",\"value\":\"#000000\",\"label\":\"Back Arrow Color\",\"type\":\"color\"},{\"key\":\"toggleouter\",\"value\":\"#000000\",\"label\":\"Toggle Outer Color\",\"type\":\"color\"},{\"key\":\"toggleinner\",\"value\":\"#ffffff\",\"label\":\"Toggle Inner Color\",\"type\":\"color\"}]},{\"tabMenu\":[{\"key\":\"fontsizetab\",\"value\":\"22\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"fontcolor\",\"value\":\"#ff0000\",\"label\":\"Font Color\",\"type\":\"color\"},{\"key\":\"fontName\",\"value\":\"\",\"label\":\"Font Name\",\"type\":\"font\"},{\"key\":\"backgroundColor\",\"value\":\"#ff0000\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"tab-position\",\"value\":\"1\",\"label\":\"Tab Position\",\"type\":\"position\"},{\"key\":\"tabheight\",\"value\":\"64\",\"label\":\"Tab Height\",\"type\":\"size\"},{\"key\":\"tabcount\",\"value\":\"5\",\"label\":\"Tab Count\",\"type\":\"count\"}]}]}', '1.0', '1', 0, 1, NULL, '2018-03-19 09:22:26', '2018-03-19 09:22:26', '1');
INSERT INTO `app_basic` (`id`, `app_unique_id`, `app_name`, `app_code`, `app_json_data`, `menu_location_type`, `app_general_css_json_data`, `app_side_menu_css_json_data`, `version`, `app_publish_status`, `app_publish_counter`, `app_created_by`, `app_updated_by`, `created_at`, `updated_at`, `status`) VALUES
(6, 'Ko8NVD', 'AAA', 'aaa6', '{\"menu_location_type\":\"2\",\"appInfo\":{\"appID\":\"6\",\"appName\":\"AAA\",\"appBundleId\":\"\",\"appJSONVersion\":\"\",\"appDescription\":\"\",\"homePageIndex\":0,\"googleAnalyticId\":\"\",\"firebase_id\":\"\",\"analytics_id\":\"\",\"crashlytics_id\":\"\",\"add_ipad_screenshot\":null,\"tutorial\":{\"flag\":0,\"index\":0}},\"menu\":{\"sidemenu\":[{\"id\":13,\"menu_icon\":\"https:\\/\\/lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com\\/aaa6\\/setting\\/tab_menuImage13.png\",\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Italian Ice\",\"type\":\"customweb\",\"image\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/menu_icon\\/thumb\\/default.png\",\"value\":\"http:\\/\\/google.com\"},{\"id\":14,\"menu_icon\":\"https:\\/\\/lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com\\/aaa6\\/setting\\/tab_menuImage14.png\",\"name\":\"List Menu\",\"slug\":\"list_menu\",\"menu_type_icon\":\"fa fa-list\",\"menuTypeId\":4,\"title\":\"Italian Ice\",\"type\":\"subMenu\",\"css\":{\"labelCss\":{\"paddingLeft\":\"11px 12px 13px 14px\",\"borderBottom\":\"2px solid #000000\",\"fontName\":\"Courier\",\"size\":\"18px\",\"color\":\"#000000\"}},\"image\":\"null\"}],\"tabmenu\":[{\"id\":13,\"menu_icon\":\"https:\\/\\/lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com\\/aaa6\\/setting\\/tab_menuImage13.png\",\"name\":\"Website\",\"slug\":\"website\",\"menu_type_icon\":\"icmn-sphere\",\"menuTypeId\":9,\"title\":\"Italian Ice\",\"type\":\"customweb\",\"image\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/menu_icon\\/thumb\\/default.png\",\"value\":\"http:\\/\\/google.com\"},{\"id\":14,\"menu_icon\":\"https:\\/\\/lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com\\/aaa6\\/setting\\/tab_menuImage14.png\",\"name\":\"List Menu\",\"slug\":\"list_menu\",\"menu_type_icon\":\"fa fa-list\",\"menuTypeId\":4,\"title\":\"Italian Ice\",\"type\":\"subMenu\",\"css\":{\"labelCss\":{\"paddingLeft\":\"11px 12px 13px 14px\",\"borderBottom\":\"2px solid #000000\",\"fontName\":\"Courier\",\"size\":\"18px\",\"color\":\"#000000\"}},\"image\":\"null\"}]},\"url\":{\"imageUrl\":\"http:\\/\\/54.70.182.92\\/json\\/aaa6\\/1.0\\/\"},\"frameworkConfig\":{\"language-json-name\":\"language.json\"},\"popups\":{\"notification\":{\"title\":\"Title\",\"message\":\"You have been automatically subscribed to receive push notifications. Remember, you can always update your push notification settings by going to Settings\",\"button1\":\"Continue\",\"button2\":\"Manage Notifications\",\"isShow\":\"false\"},\"updateApp\":{\"title\":\"Title\",\"buttonName\":\"Update\",\"message\":\"\",\"isShow\":\"false\",\"application\":{\"ios\":{\"version\":\"\",\"id\":\"\"},\"android\":{\"version\":\"\",\"id\":\"\"}}},\"rateApp\":{\"isShow\":\"false\",\"andr_app_id\":\"\",\"ios_app_id\":\"\",\"uses_until_prompt\":\"5\",\"title\":\"Title\",\"message\":\"If you enjoy this app, please take a moment to rate it.\",\"rateThisButton\":\"Agree\",\"cancelButton\":\"Decline\",\"remindLaterButton\":\"Remind\",\"rateTitle\":null,\"application\":{\"ios\":{\"version\":\"\",\"id\":\"\"},\"android\":{\"version\":\"\",\"id\":\"\"}}}},\"appSpecific\":{\"sideMenuCss\":{\"mainMenu\":{\"fontSize\":\"22px\",\"fontName\":\"bebas_neueregular\",\"paddingLeft\":\"15\",\"paddingTop\":\"0\",\"lineDividerHeight\":\"2px\",\"borderBottom\":\"2px solid #ffffff\",\"lineDividerColor\":\"#000000\",\"selectedColor\":\"#c9c9c97d\",\"selectedFontColor\":\"#000000\",\"nonSelectedColor\":\"#ffffff\",\"nonSelectedFontColor\":\"#0000007d\",\"backgroundColor\":\"#ffffff\",\"sideMenuImg\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/appicon\\/original\\/default.png\"},\"subMenu\":{\"fontSize\":\"20px\",\"color\":\"#000000\",\"fontName\":\"bebas_neueregular\",\"paddingLeft\":\"\",\"paddingTop\":\"\",\"backgroundColor\":\"#ffffff\",\"borderBottom\":\"2px solid #0000007d\",\"marginTop\":\"10px\"},\"arrow\":{\"right\":\"10px\",\"position\":\"absolute\",\"fontSize\":\"30px\",\"arrowColor\":\"#000000\"},\"backArrow\":{\"color\":\"#000000\"}},\"tabMenuCss\":{\"tabMenu\":{\"fontsizetab\":\"11px\",\"fontcolor\":\"#ff0000\",\"fontName\":\"arial\",\"backgroundColor\":\"#ff0000\",\"tab-position\":\"4\",\"tabheight\":\"48px\",\"tabcount\":\"8\"}},\"menuIconCss\":{\"color\":\"#000000\"},\"headerCss\":{\"color\":\"#ffffff\",\"height\":\"70px\",\"borderBottom\":\"2px solid #0000007d\",\"headerIcon\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/appicon\\/original\\/default.png\"},\"statusBarCss\":{\"color\":\"#000000\"},\"sponsorSplash_screen\":{\"url\":\"\",\"time\":\"\"},\"splash_Screen\":{\"url\":\"\"},\"toggleIcon\":{\"iconBackgroundColor\":\"#000000\",\"innerBackgroundColor\":\"#ffffff\"}}}', '2', '[{\"menuIconCss\":[{\"key\":\"backgroundColorMenu\",\"value\":\"#000000\",\"label\":\"Menu Icon Color\",\"type\":\"color\"}]},{\"headerCss\":[{\"key\":\"background color\",\"value\":\"#ffffff\",\"label\":\"Header Color\",\"type\":\"color\"},{\"key\":\"height\",\"value\":\"70\",\"label\":\"Header Height\",\"type\":\"size\"},{\"key\":\"borderbottom\",\"value\":\"2\",\"label\":\"Header Border Bottom\",\"type\":\"size\"},{\"key\":\"background color border\",\"value\":\"#0000007d\",\"label\":\"Header Border Bottom\",\"type\":\"color\"},{\"key\":\"headerIcon\",\"value\":\"http://127.0.0.1:8000/upload/appicon/original/default.png\",\"label\":\"headerIcon\",\"type\":\"image\"},{\"key\":\"headerAlignment\",\"value\":\"center\",\"label\":\"Header Alignment\",\"type\":\"drpAlignment\"}]},{\"statusBarCss\":[{\"key\":\"background color\",\"value\":\"#000000\",\"label\":\"Status Bar Color\",\"type\":\"color\"}]}]', '{\"sideMenuCss\":[{\"mainMenu\":[{\"key\":\"fontSize\",\"value\":\"22\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"fontName\",\"value\":\"bebas_neueregular\",\"label\":\"Font Style\",\"type\":\"font\"},{\"key\":\"paddingLeft\",\"value\":\"15\",\"label\":\"Padding Left\",\"type\":\"size\"},{\"key\":\"paddingTop\",\"value\":\"0\",\"label\":\"Padding Top\",\"type\":\"size\"},{\"key\":\"lineDividerHeight\",\"value\":\"2\",\"label\":\"Menu Separator Height\",\"type\":\"size\"},{\"key\":\"borderBottom\",\"value\":\"2px solid #ffffff\",\"label\":\"Header Separator Color\",\"type\":\"color\"},{\"key\":\"lineDividerColor\",\"value\":\"#000000\",\"label\":\"Separator Color\",\"type\":\"color\"},{\"key\":\"selectedColor\",\"value\":\"#c9c9c97d\",\"label\":\"Selected Menu Color\",\"type\":\"color\"},{\"key\":\"selectedFontColor\",\"value\":\"#000000\",\"label\":\"Selected Menu Font Color\",\"type\":\"color\"},{\"key\":\"nonSelectedColor\",\"value\":\"#ffffff\",\"label\":\"Non-Selected Menu Color\",\"type\":\"color\"},{\"key\":\"nonSelectedFontColor\",\"value\":\"#0000007d\",\"label\":\"Non-Selected Menu Font Color\",\"type\":\"color\"},{\"key\":\"backgroundColor\",\"value\":\"#ffffff\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"sideMenuImg\",\"value\":\"http://127.0.0.1:8000/upload/appicon/original/default.png\",\"label\":\"\",\"type\":\"color\"}]},{\"subMenu\":[{\"key\":\"fontSize\",\"value\":\"20\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"color\",\"value\":\"#000000\",\"label\":\"Font Color\",\"type\":\"color\"},{\"key\":\"fontName\",\"value\":\"bebas_neueregular\",\"label\":\"Font Style\",\"type\":\"font\"},{\"key\":\"paddingLeft\",\"value\":\"15\",\"label\":\"Padding Left\",\"type\":\"paddingleft\"},{\"key\":\"paddingTop\",\"value\":\"\",\"label\":\"Padding Top\",\"type\":\"paddingtop\"},{\"key\":\"backgroundColor\",\"value\":\"#ffffff\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"borderBottom\",\"value\":\"2\",\"label\":\"Submenu Separator Height\",\"type\":\"size\"},{\"key\":\"borderColor\",\"value\":\"#0000007d\",\"label\":\"Submenu Separator Color\",\"type\":\"color\"},{\"key\":\"marginTop\",\"value\":\"10\",\"label\":\"Margin Top\",\"type\":\"margintop\"}]},{\"arrow\":[{\"key\":\"arrowColor\",\"value\":\"#000000\",\"label\":\"Arrow Color\",\"type\":\"color\"},{\"key\":\"arrow padding left\",\"value\":\"10\",\"label\":\"Right\",\"type\":\"size\"},{\"key\":\"size\",\"value\":\"30\",\"label\":\"Arrow Size\",\"type\":\"size\"},{\"key\":\"position\",\"value\":\"absolute\",\"label\":\"Position\",\"type\":\"position\"},{\"key\":\"backarrowcolor\",\"value\":\"#000000\",\"label\":\"Back Arrow Color\",\"type\":\"color\"},{\"key\":\"toggleouter\",\"value\":\"#000000\",\"label\":\"Toggle Outer Color\",\"type\":\"color\"},{\"key\":\"toggleinner\",\"value\":\"#ffffff\",\"label\":\"Toggle Inner Color\",\"type\":\"color\"}]},{\"tabMenu\":[{\"key\":\"fontsizetab\",\"value\":\"11\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"fontcolor\",\"value\":\"#ff0000\",\"label\":\"Font Color\",\"type\":\"color\"},{\"key\":\"fontName\",\"value\":\"\",\"label\":\"Font Name\",\"type\":\"font\"},{\"key\":\"backgroundColor\",\"value\":\"#ff0000\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"tab-position\",\"value\":\"4\",\"label\":\"Tab Position\",\"type\":\"position\"},{\"key\":\"tabheight\",\"value\":\"48\",\"label\":\"Tab Height\",\"type\":\"size\"},{\"key\":\"tabcount\",\"value\":\"8\",\"label\":\"Tab Count\",\"type\":\"count\"}]}]}', '1.0', '1', 0, 1, NULL, '2018-03-19 16:56:19', '2018-03-19 23:32:26', '1'),
(7, '9EJ2fS', 'Complete', 'complete7', '{\"menu_location_type\":\"1\",\"appInfo\":{\"appID\":\"7\",\"appName\":\"Complete\",\"appBundleId\":\"\",\"appJSONVersion\":\"\",\"appDescription\":\"\",\"homePageIndex\":0,\"googleAnalyticId\":\"\",\"firebase_id\":\"\",\"analytics_id\":\"\",\"crashlytics_id\":\"\",\"add_ipad_screenshot\":null},\"menu\":{\"sidemenu\":[]},\"url\":{\"imageUrl\":\"http:\\/\\/127.0.0.1:8000\\/json\\/complete7\\/1.0\"},\"frameworkConfig\":{\"language-json-name\":\"language.json\"},\"popups\":{\"notification\":{\"title\":\"Title\",\"message\":\"You have been automatically subscribed to receive push notifications. Remember, you can always update your push notification settings by going to Settings\",\"button1\":\"Continue\",\"button2\":\"Manage Notifications\",\"isShow\":\"false\"},\"updateApp\":{\"title\":\"Title\",\"buttonName\":\"Update\",\"message\":\"\",\"isShow\":\"false\",\"application\":{\"ios\":{\"version\":\"\",\"id\":\"\"},\"android\":{\"version\":\"\",\"id\":\"\"}}},\"rateApp\":{\"isShow\":\"false\",\"andr_app_id\":\"\",\"ios_app_id\":\"\",\"uses_until_prompt\":\"5\",\"title\":\"Title\",\"message\":\"If you enjoy this app, please take a moment to rate it.\",\"rateThisButton\":\"Agree\",\"cancelButton\":\"Decline\",\"remindLaterButton\":\"Remind\",\"rateTitle\":null,\"application\":{\"ios\":{\"version\":\"\",\"id\":\"\"},\"android\":{\"version\":\"\",\"id\":\"\"}}}},\"appSpecific\":{\"sideMenuCss\":{\"mainMenu\":{\"fontSize\":\"22px\",\"fontName\":\"bebas_neueregular\",\"paddingLeft\":\"15\",\"paddingTop\":\"0\",\"lineDividerHeight\":\"2px\",\"borderBottom\":\"2px solid #ffffff\",\"lineDividerColor\":\"#000000\",\"selectedColor\":\"#c9c9c97d\",\"selectedFontColor\":\"#000000\",\"nonSelectedColor\":\"#ffffff\",\"nonSelectedFontColor\":\"#0000007d\",\"backgroundColor\":\"#6ba2b18c\",\"sideMenuImg\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/appicon\\/original\\/default.png\"},\"subMenu\":{\"fontSize\":\"20px\",\"color\":\"#000000\",\"fontName\":\"bebas_neueregular\",\"paddingLeft\":\"\",\"paddingTop\":\"\",\"backgroundColor\":\"#ffffff\",\"borderBottom\":\"2px solid #0000007d\",\"marginTop\":\"10px\"},\"arrow\":{\"right\":\"10px\",\"position\":\"absolute\",\"fontSize\":\"30px\",\"arrowColor\":\"#000000\"},\"backArrow\":{\"color\":\"#000000\"}},\"tabMenuCss\":{\"tabMenu\":{\"fontsizetab\":\"22px\",\"fontcolor\":\"#ff0000\",\"fontName\":\"arial\",\"backgroundColor\":\"#ff0000\",\"tab-position\":\"1\",\"tabheight\":\"64px\",\"tabcount\":\"5\"}},\"menuIconCss\":{\"color\":\"#000000\"},\"headerCss\":{\"color\":\"#ffffff\",\"height\":\"70px\",\"borderBottom\":\"2px solid #0000007d\",\"headerIcon\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/appicon\\/original\\/default.png\"},\"statusBarCss\":{\"color\":\"#000000\"},\"sponsorSplash_screen\":{\"url\":\"\",\"time\":\"\"},\"splash_Screen\":{\"url\":\"\"},\"toggleIcon\":{\"iconBackgroundColor\":\"#000000\",\"innerBackgroundColor\":\"#ffffff\"}}}', '1', '[{\"menuIconCss\":[{\"key\":\"backgroundColorMenu\",\"value\":\"#000000\",\"label\":\"Menu Icon Color\",\"type\":\"color\"}]},{\"headerCss\":[{\"key\":\"background color\",\"value\":\"#ffffff\",\"label\":\"Header Color\",\"type\":\"color\"},{\"key\":\"height\",\"value\":\"70\",\"label\":\"Header Height\",\"type\":\"size\"},{\"key\":\"borderbottom\",\"value\":\"2\",\"label\":\"Header Border Bottom\",\"type\":\"size\"},{\"key\":\"background color border\",\"value\":\"#0000007d\",\"label\":\"Header Border Bottom\",\"type\":\"color\"},{\"key\":\"headerIcon\",\"value\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/appicon\\/original\\/default.png\",\"label\":\"headerIcon\",\"type\":\"image\"},{\"key\":\"headerAlignment\",\"value\":\"center\",\"label\":\"Header Alignment\",\"type\":\"drpAlignment\"}]},{\"statusBarCss\":[{\"key\":\"background color\",\"value\":\"#000000\",\"label\":\"Status Bar Color\",\"type\":\"color\"}]}]', '{\"sideMenuCss\":[{\"mainMenu\":[{\"key\":\"fontSize\",\"value\":\"22\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"fontName\",\"value\":\"bebas_neueregular\",\"label\":\"Font Style\",\"type\":\"font\"},{\"key\":\"paddingLeft\",\"value\":\"15\",\"label\":\"Padding Left\",\"type\":\"size\"},{\"key\":\"paddingTop\",\"value\":\"0\",\"label\":\"Padding Top\",\"type\":\"size\"},{\"key\":\"lineDividerHeight\",\"value\":\"2\",\"label\":\"Menu Separator Height\",\"type\":\"size\"},{\"key\":\"borderBottom\",\"value\":\"2px solid #ffffff\",\"label\":\"Header Separator Color\",\"type\":\"color\"},{\"key\":\"lineDividerColor\",\"value\":\"#000000\",\"label\":\"Separator Color\",\"type\":\"color\"},{\"key\":\"selectedColor\",\"value\":\"#c9c9c97d\",\"label\":\"Selected Menu Color\",\"type\":\"color\"},{\"key\":\"selectedFontColor\",\"value\":\"#000000\",\"label\":\"Selected Menu Font Color\",\"type\":\"color\"},{\"key\":\"nonSelectedColor\",\"value\":\"#ffffff\",\"label\":\"Non-Selected Menu Color\",\"type\":\"color\"},{\"key\":\"nonSelectedFontColor\",\"value\":\"#0000007d\",\"label\":\"Non-Selected Menu Font Color\",\"type\":\"color\"},{\"key\":\"backgroundColor\",\"value\":\"#6ba2b18c\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"sideMenuImg\",\"value\":\"http://127.0.0.1:8000/upload/appicon/original/default.png\",\"label\":\"\",\"type\":\"color\"}]},{\"subMenu\":[{\"key\":\"fontSize\",\"value\":\"20\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"color\",\"value\":\"#000000\",\"label\":\"Font Color\",\"type\":\"color\"},{\"key\":\"fontName\",\"value\":\"bebas_neueregular\",\"label\":\"Font Style\",\"type\":\"font\"},{\"key\":\"paddingLeft\",\"value\":\"15\",\"label\":\"Padding Left\",\"type\":\"paddingleft\"},{\"key\":\"paddingTop\",\"value\":\"\",\"label\":\"Padding Top\",\"type\":\"paddingtop\"},{\"key\":\"backgroundColor\",\"value\":\"#ffffff\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"borderBottom\",\"value\":\"2\",\"label\":\"Submenu Separator Height\",\"type\":\"size\"},{\"key\":\"borderColor\",\"value\":\"#0000007d\",\"label\":\"Submenu Separator Color\",\"type\":\"color\"},{\"key\":\"marginTop\",\"value\":\"10\",\"label\":\"Margin Top\",\"type\":\"margintop\"}]},{\"arrow\":[{\"key\":\"arrowColor\",\"value\":\"#000000\",\"label\":\"Arrow Color\",\"type\":\"color\"},{\"key\":\"arrow padding left\",\"value\":\"10\",\"label\":\"Right\",\"type\":\"size\"},{\"key\":\"size\",\"value\":\"30\",\"label\":\"Arrow Size\",\"type\":\"size\"},{\"key\":\"position\",\"value\":\"absolute\",\"label\":\"Position\",\"type\":\"position\"},{\"key\":\"backarrowcolor\",\"value\":\"#000000\",\"label\":\"Back Arrow Color\",\"type\":\"color\"},{\"key\":\"toggleouter\",\"value\":\"#000000\",\"label\":\"Toggle Outer Color\",\"type\":\"color\"},{\"key\":\"toggleinner\",\"value\":\"#ffffff\",\"label\":\"Toggle Inner Color\",\"type\":\"color\"}]},{\"tabMenu\":[{\"key\":\"fontsizetab\",\"value\":\"22\",\"label\":\"Font Size\",\"type\":\"size\"},{\"key\":\"fontcolor\",\"value\":\"#ff0000\",\"label\":\"Font Color\",\"type\":\"color\"},{\"key\":\"fontName\",\"value\":\"\",\"label\":\"Font Name\",\"type\":\"font\"},{\"key\":\"backgroundColor\",\"value\":\"#ff0000\",\"label\":\"Background Color\",\"type\":\"color\"},{\"key\":\"tab-position\",\"value\":\"1\",\"label\":\"Tab Position\",\"type\":\"position\"},{\"key\":\"tabheight\",\"value\":\"64\",\"label\":\"Tab Height\",\"type\":\"size\"},{\"key\":\"tabcount\",\"value\":\"5\",\"label\":\"Tab Count\",\"type\":\"count\"}]}]}', '1.0', '1', 0, 1, NULL, '2018-03-26 12:35:33', '2018-03-26 13:36:20', '1');

-- --------------------------------------------------------

--
-- Table structure for table `app_basic_detail`
--

CREATE TABLE `app_basic_detail` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `app_basic_id` int(10) UNSIGNED NOT NULL COMMENT 'Foreign key',
  `app_section_id` int(10) UNSIGNED NOT NULL COMMENT 'Foreign key',
  `app_section_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_json_data` longtext COLLATE utf8mb4_unicode_ci,
  `app_version` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_basic_detail`
--

INSERT INTO `app_basic_detail` (`id`, `app_basic_id`, `app_section_id`, `app_section_slug`, `section_json_data`, `app_version`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'splash_screen', NULL, NULL, '2018-03-15 13:00:39', '2018-03-15 13:00:39'),
(2, 1, 2, 'sponsor_splash', '{\"sponsorsplash_image\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/sponsorsplash\\/thumb\\/default.png\",\"no_sec_display\":\"10\"}', NULL, '2018-03-15 13:00:40', '2018-03-26 20:49:30'),
(3, 1, 3, 'app_icon', NULL, NULL, '2018-03-15 13:00:40', '2018-03-15 13:00:40'),
(4, 1, 4, 'basic_information', NULL, NULL, '2018-03-15 13:00:40', '2018-03-15 13:00:40'),
(5, 1, 5, 'google_analytic', NULL, NULL, '2018-03-15 13:00:40', '2018-03-15 13:00:40'),
(6, 1, 6, 'add_screenshot', NULL, NULL, '2018-03-15 13:00:40', '2018-03-15 13:00:40'),
(7, 1, 7, 'notification_popup', NULL, NULL, '2018-03-15 13:00:40', '2018-03-15 13:00:40'),
(8, 1, 8, 'auto_upgrade_popup', NULL, NULL, '2018-03-15 13:00:40', '2018-03-15 13:00:40'),
(9, 1, 9, 'rate_popup', NULL, NULL, '2018-03-15 13:00:40', '2018-03-15 13:00:40'),
(10, 1, 10, 'home_screen', NULL, NULL, '2018-03-15 13:00:40', '2018-03-15 13:00:40'),
(11, 1, 11, 'menu_configuration', NULL, NULL, '2018-03-15 13:00:40', '2018-03-15 13:00:40'),
(12, 1, 12, 'add_ipad_screenshot', NULL, NULL, '2018-03-15 13:00:40', '2018-03-15 13:00:40'),
(13, 2, 1, 'splash_screen', NULL, NULL, '2018-03-15 14:37:51', '2018-03-15 14:37:51'),
(14, 2, 2, 'sponsor_splash', NULL, NULL, '2018-03-15 14:37:51', '2018-03-15 14:37:51'),
(15, 2, 3, 'app_icon', NULL, NULL, '2018-03-15 14:37:51', '2018-03-15 14:37:51'),
(16, 2, 4, 'basic_information', NULL, NULL, '2018-03-15 14:37:51', '2018-03-15 14:37:51'),
(17, 2, 5, 'google_analytic', NULL, NULL, '2018-03-15 14:37:51', '2018-03-15 14:37:51'),
(18, 2, 6, 'add_screenshot', NULL, NULL, '2018-03-15 14:37:51', '2018-03-15 14:37:51'),
(19, 2, 7, 'notification_popup', NULL, NULL, '2018-03-15 14:37:51', '2018-03-15 14:37:51'),
(20, 2, 8, 'auto_upgrade_popup', NULL, NULL, '2018-03-15 14:37:51', '2018-03-15 14:37:51'),
(21, 2, 9, 'rate_popup', NULL, NULL, '2018-03-15 14:37:51', '2018-03-15 14:37:51'),
(22, 2, 10, 'home_screen', NULL, NULL, '2018-03-15 14:37:52', '2018-03-15 14:37:52'),
(23, 2, 11, 'menu_configuration', NULL, NULL, '2018-03-15 14:37:52', '2018-03-15 14:37:52'),
(24, 2, 12, 'add_ipad_screenshot', NULL, NULL, '2018-03-15 14:37:52', '2018-03-15 14:37:52'),
(25, 3, 1, 'splash_screen', NULL, NULL, '2018-03-16 03:25:10', '2018-03-16 03:25:10'),
(26, 3, 2, 'sponsor_splash', NULL, NULL, '2018-03-16 03:25:10', '2018-03-16 03:25:10'),
(27, 3, 3, 'app_icon', NULL, NULL, '2018-03-16 03:25:10', '2018-03-16 03:25:10'),
(28, 3, 4, 'basic_information', NULL, NULL, '2018-03-16 03:25:10', '2018-03-16 03:25:10'),
(29, 3, 5, 'google_analytic', NULL, NULL, '2018-03-16 03:25:10', '2018-03-16 03:25:10'),
(30, 3, 6, 'add_screenshot', NULL, NULL, '2018-03-16 03:25:10', '2018-03-16 03:25:10'),
(31, 3, 7, 'notification_popup', NULL, NULL, '2018-03-16 03:25:10', '2018-03-16 03:25:10'),
(32, 3, 8, 'auto_upgrade_popup', NULL, NULL, '2018-03-16 03:25:10', '2018-03-16 03:25:10'),
(33, 3, 9, 'rate_popup', NULL, NULL, '2018-03-16 03:25:10', '2018-03-16 03:25:10'),
(34, 3, 10, 'home_screen', NULL, NULL, '2018-03-16 03:25:10', '2018-03-16 03:25:10'),
(35, 3, 11, 'menu_configuration', NULL, NULL, '2018-03-16 03:25:10', '2018-03-16 03:25:10'),
(36, 3, 12, 'add_ipad_screenshot', NULL, NULL, '2018-03-16 03:25:10', '2018-03-16 03:25:10'),
(37, 4, 1, 'splash_screen', NULL, NULL, '2018-03-16 04:50:11', '2018-03-16 04:50:11'),
(38, 4, 2, 'sponsor_splash', NULL, NULL, '2018-03-16 04:50:12', '2018-03-16 04:50:12'),
(39, 4, 3, 'app_icon', NULL, NULL, '2018-03-16 04:50:12', '2018-03-16 04:50:12'),
(40, 4, 4, 'basic_information', NULL, NULL, '2018-03-16 04:50:12', '2018-03-16 04:50:12'),
(41, 4, 5, 'google_analytic', NULL, NULL, '2018-03-16 04:50:12', '2018-03-16 04:50:12'),
(42, 4, 6, 'add_screenshot', NULL, NULL, '2018-03-16 04:50:12', '2018-03-16 04:50:12'),
(43, 4, 7, 'notification_popup', NULL, NULL, '2018-03-16 04:50:12', '2018-03-16 04:50:12'),
(44, 4, 8, 'auto_upgrade_popup', NULL, NULL, '2018-03-16 04:50:12', '2018-03-16 04:50:12'),
(45, 4, 9, 'rate_popup', NULL, NULL, '2018-03-16 04:50:12', '2018-03-16 04:50:12'),
(46, 4, 10, 'home_screen', NULL, NULL, '2018-03-16 04:50:12', '2018-03-16 04:50:12'),
(47, 4, 11, 'menu_configuration', NULL, NULL, '2018-03-16 04:50:12', '2018-03-16 04:50:12'),
(48, 4, 12, 'add_ipad_screenshot', NULL, NULL, '2018-03-16 04:50:12', '2018-03-16 04:50:12'),
(49, 5, 1, 'splash_screen', NULL, NULL, '2018-03-19 09:22:26', '2018-03-19 09:22:26'),
(50, 5, 2, 'sponsor_splash', NULL, NULL, '2018-03-19 09:22:26', '2018-03-19 09:22:26'),
(51, 5, 3, 'app_icon', NULL, NULL, '2018-03-19 09:22:26', '2018-03-19 09:22:26'),
(52, 5, 4, 'basic_information', NULL, NULL, '2018-03-19 09:22:26', '2018-03-19 09:22:26'),
(53, 5, 5, 'google_analytic', NULL, NULL, '2018-03-19 09:22:26', '2018-03-19 09:22:26'),
(54, 5, 6, 'add_screenshot', NULL, NULL, '2018-03-19 09:22:26', '2018-03-19 09:22:26'),
(55, 5, 7, 'notification_popup', NULL, NULL, '2018-03-19 09:22:27', '2018-03-19 09:22:27'),
(56, 5, 8, 'auto_upgrade_popup', NULL, NULL, '2018-03-19 09:22:27', '2018-03-19 09:22:27'),
(57, 5, 9, 'rate_popup', NULL, NULL, '2018-03-19 09:22:27', '2018-03-19 09:22:27'),
(58, 5, 10, 'home_screen', NULL, NULL, '2018-03-19 09:22:27', '2018-03-19 09:22:27'),
(59, 5, 11, 'menu_configuration', NULL, NULL, '2018-03-19 09:22:27', '2018-03-19 09:22:27'),
(60, 5, 12, 'add_ipad_screenshot', NULL, NULL, '2018-03-19 09:22:27', '2018-03-19 09:22:27'),
(61, 6, 1, 'splash_screen', NULL, NULL, '2018-03-19 16:56:19', '2018-03-19 16:56:19'),
(62, 6, 2, 'sponsor_splash', NULL, NULL, '2018-03-19 16:56:19', '2018-03-19 16:56:19'),
(63, 6, 3, 'app_icon', NULL, NULL, '2018-03-19 16:56:19', '2018-03-19 16:56:19'),
(64, 6, 4, 'basic_information', NULL, NULL, '2018-03-19 16:56:19', '2018-03-19 16:56:19'),
(65, 6, 5, 'google_analytic', NULL, NULL, '2018-03-19 16:56:20', '2018-03-19 16:56:20'),
(66, 6, 6, 'add_screenshot', NULL, NULL, '2018-03-19 16:56:20', '2018-03-19 16:56:20'),
(67, 6, 7, 'notification_popup', NULL, NULL, '2018-03-19 16:56:20', '2018-03-19 16:56:20'),
(68, 6, 8, 'auto_upgrade_popup', NULL, NULL, '2018-03-19 16:56:20', '2018-03-19 16:56:20'),
(69, 6, 9, 'rate_popup', NULL, NULL, '2018-03-19 16:56:20', '2018-03-19 16:56:20'),
(70, 6, 10, 'home_screen', NULL, NULL, '2018-03-19 16:56:20', '2018-03-19 16:56:20'),
(71, 6, 11, 'menu_configuration', NULL, NULL, '2018-03-19 16:56:20', '2018-03-19 16:56:20'),
(72, 6, 12, 'add_ipad_screenshot', NULL, NULL, '2018-03-19 16:56:20', '2018-03-19 16:56:20'),
(73, 7, 1, 'splash_screen', NULL, NULL, '2018-03-26 12:35:33', '2018-03-26 12:35:33'),
(74, 7, 2, 'sponsor_splash', NULL, NULL, '2018-03-26 12:35:33', '2018-03-26 12:35:33'),
(75, 7, 3, 'app_icon', NULL, NULL, '2018-03-26 12:35:33', '2018-03-26 12:35:33'),
(76, 7, 4, 'basic_information', NULL, NULL, '2018-03-26 12:35:33', '2018-03-26 12:35:33'),
(77, 7, 5, 'google_analytic', NULL, NULL, '2018-03-26 12:35:33', '2018-03-26 12:35:33'),
(78, 7, 6, 'add_screenshot', NULL, NULL, '2018-03-26 12:35:33', '2018-03-26 12:35:33'),
(79, 7, 7, 'notification_popup', NULL, NULL, '2018-03-26 12:35:33', '2018-03-26 12:35:33'),
(80, 7, 8, 'auto_upgrade_popup', NULL, NULL, '2018-03-26 12:35:33', '2018-03-26 12:35:33'),
(81, 7, 9, 'rate_popup', NULL, NULL, '2018-03-26 12:35:33', '2018-03-26 12:35:33'),
(82, 7, 10, 'home_screen', NULL, NULL, '2018-03-26 12:35:33', '2018-03-26 12:35:33'),
(83, 7, 11, 'menu_configuration', NULL, NULL, '2018-03-26 12:35:33', '2018-03-26 12:35:33'),
(84, 7, 12, 'add_ipad_screenshot', NULL, NULL, '2018-03-26 12:35:33', '2018-03-26 12:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `app_css`
--

CREATE TABLE `app_css` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `css_component` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_properties` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_css`
--

INSERT INTO `app_css` (`id`, `css_component`, `css_properties`, `created_at`, `updated_at`) VALUES
(1, 'menuicon_css', '[\r\n              {\r\n                 \"key\":\"backgroundColorMenu\",\r\n                 \"value\":\"#000000\",\r\n                 \"label\":\"Menu Icon Color\",\r\n                 \"type\":\"color\"\r\n              }\r\n           ]', NULL, NULL),
(2, 'header_css', '[\r\n              {\r\n                 \"key\":\"background color\",\r\n                 \"value\":\"#ffffff\",\r\n                 \"label\":\"Header Color\",\r\n                 \"type\":\"color\"\r\n              },\r\n              {\r\n                 \"key\":\"height\",\r\n                 \"value\":\"70\",\r\n                 \"label\":\"Header Height\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"key\":\"borderbottom\",\r\n                 \"value\":\"2\",\r\n                 \"label\":\"Header Border Bottom\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"key\":\"background color border\",\r\n                 \"value\":\"#000000\",\r\n                 \"label\":\"Header Border Bottom\",\r\n                 \"type\":\"color\"\r\n              },\r\n              {\r\n                 \"key\":\"headerIcon\",\r\n                 \"value\":\"http://cmsbackend.inexture.com/upload/appicon/original/default.png\",\r\n                 \"label\":\"headerIcon\",\r\n                 \"type\":\"image\"\r\n              },\r\n              {\r\n                 \"key\":\"headerAlignment\",\r\n                 \"value\":\"center\",\r\n                 \"label\":\"Header Alignment\",\r\n                 \"type\":\"drpAlignment\"\r\n              }\r\n           ]', NULL, NULL),
(3, 'menu_css', '[\r\n                {\r\n                   \"key\":\"fontSize\",\r\n                   \"value\":\"22\",\r\n                   \"label\":\"Font Size\",\r\n                   \"type\":\"size\"\r\n                },\r\n                {\r\n                   \"key\":\"fontName\",\r\n                   \"value\":\"ABeeZee\",\r\n                   \"label\":\"Font Style\",\r\n                   \"type\":\"font\"\r\n                },\r\n                {\r\n                   \"key\":\"paddingLeft\",\r\n                   \"value\":\"15\",\r\n                   \"label\":\"Padding Left\",\r\n                   \"type\":\"size\"\r\n                },\r\n                {\r\n                   \"key\":\"paddingTop\",\r\n                   \"value\":\"0\",\r\n                   \"label\":\"Padding Top\",\r\n                   \"type\":\"size\"\r\n                },\r\n                {\r\n                   \"key\":\"lineDividerHeight\",\r\n                   \"value\":\"2\",\r\n                   \"label\":\"Menu Separator Height\",\r\n                   \"type\":\"size\"\r\n                },\r\n                {\r\n                   \"key\":\"borderBottom\",\r\n                   \"value\":\"2px solid #ffffff\",\r\n                   \"label\":\"Header Separator Color\",\r\n                   \"type\":\"color\"\r\n                },\r\n                {\r\n                   \"key\":\"lineDividerColor\",\r\n                   \"value\":\"#000000\",\r\n                   \"label\":\"Separator Color\",\r\n                   \"type\":\"color\"\r\n                },\r\n                {\r\n                   \"key\":\"selectedColor\",\r\n                   \"value\":\"#c9c9c97d\",\r\n                   \"label\":\"Selected Menu Color\",\r\n                   \"type\":\"color\"\r\n                },\r\n                {\r\n                   \"key\":\"selectedFontColor\",\r\n                   \"value\":\"#000000\",\r\n                   \"label\":\"Selected Menu Font Color\",\r\n                   \"type\":\"color\"\r\n                },\r\n                {\r\n                   \"key\":\"nonSelectedColor\",\r\n                   \"value\":\"#ffffff\",\r\n                   \"label\":\"Non-Selected Menu Color\",\r\n                   \"type\":\"color\"\r\n                },\r\n                {\r\n                   \"key\":\"nonSelectedFontColor\",\r\n                   \"value\":\"#0000007d\",\r\n                   \"label\":\"Non-Selected Menu Font Color\",\r\n                   \"type\":\"color\"\r\n                },\r\n                {\r\n                   \"key\":\"backgroundColor\",\r\n                   \"value\":\"#ffffff\",\r\n                   \"label\":\"Background Color\",\r\n                   \"type\":\"color\"\r\n                },\r\n                {\r\n                   \"key\":\"sideMenuImg\",\r\n                   \"value\":http://cmsbackend.inexture.com/upload/appicon/original/default.png\",\r\n                   \"label\":\"\",\r\n                   \"type\":\"color\"\r\n                }\r\n             ]', NULL, NULL),
(4, 'submenu_css', '[\r\n                {\r\n                   \"key\":\"fontSize\",\r\n                   \"value\":\"20\",\r\n                   \"label\":\"Font Size\",\r\n                   \"type\":\"size\"\r\n                },\r\n                {\r\n                   \"key\":\"color\",\r\n                   \"value\":\"#000000\",\r\n                   \"label\":\"Font Color\",\r\n                   \"type\":\"color\"\r\n                },\r\n                {\r\n                   \"key\":\"fontName\",\r\n                   \"value\":\"ABeeZee\",\r\n                   \"label\":\"Font Style\",\r\n                   \"type\":\"font\"\r\n                },\r\n                {\r\n                   \"key\":\"paddingLeft\",\r\n                   \"value\":\"15\",\r\n                   \"label\":\"Padding Left\",\r\n                   \"type\":\"paddingleft\"\r\n                },\r\n                {\r\n                   \"key\":\"paddingTop\",\r\n                   \"value\":\"\",\r\n                   \"label\":\"Padding Top\",\r\n                   \"type\":\"paddingtop\"\r\n                },\r\n                {\r\n                   \"key\":\"backgroundColor\",\r\n                   \"value\":\"#ffffff\",\r\n                   \"label\":\"Background Color\",\r\n                   \"type\":\"color\"\r\n                },\r\n                {\r\n                   \"key\":\"borderBottom\",\r\n                   \"value\":\"2\",\r\n                   \"label\":\"Submenu Separator Height\",\r\n                   \"type\":\"size\"\r\n                },\r\n                {\r\n                   \"key\":\"borderColor\",\r\n                   \"value\":\"#0000007d\",\r\n                   \"label\":\"Submenu Separator Color\",\r\n                   \"type\":\"color\"\r\n                },\r\n                {\r\n                   \"key\":\"marginTop\",\r\n                   \"value\":\"10\",\r\n                   \"label\":\"Margin Top\",\r\n                   \"type\":\"margintop\"\r\n                }\r\n             ]', NULL, NULL),
(5, 'arrow_css', '[\r\n                {\r\n                   \"key\":\"arrowColor\",\r\n                   \"value\":\"#000000\",\r\n                   \"label\":\"Arrow Color\",\r\n                   \"type\":\"color\"\r\n                },\r\n                {\r\n                   \"key\":\"arrow padding left\",\r\n                   \"value\":\"10\",\r\n                   \"label\":\"Right\",\r\n                   \"type\":\"size\"\r\n                },\r\n                {\r\n                   \"key\":\"size\",\r\n                   \"value\":\"30\",\r\n                   \"label\":\"Arrow Size\",\r\n                   \"type\":\"size\"\r\n                },\r\n                {\r\n                   \"key\":\"position\",\r\n                   \"value\":\"absolute\",\r\n                   \"label\":\"Position\",\r\n                   \"type\":\"position\"\r\n                },\r\n                {\r\n                   \"key\":\"backarrowcolor\",\r\n                   \"value\":\"#000000\",\r\n                   \"label\":\"Back Arrow Color\",\r\n                   \"type\":\"color\"\r\n                },\r\n                {\r\n                   \"key\":\"toggleouter\",\r\n                   \"value\":\"#000000\",\r\n                   \"label\":\"Toggle Outer Color\",\r\n                   \"type\":\"color\"\r\n                },\r\n                {\r\n                   \"key\":\"toggleinner\",\r\n                   \"value\":\"#ffffff\",\r\n                   \"label\":\"Toggle Inner Color\",\r\n                   \"type\":\"color\"\r\n                }\r\n             ]', NULL, NULL),
(6, 'image_menu_css', '[\r\n              {\r\n                 \"group\":\"kenburnHeader\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"textAlignment\",\r\n                 \"value\":\"right\",\r\n                 \"label\":\"Panel Text Alignment\",\r\n                 \"type\":\"align\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnHeader\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"kenburnHeaderColor\",\r\n                 \"value\":\"\",\r\n                 \"label\":\"Panel Font Color\",\r\n                 \"type\":\"color\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnHeader\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"bottomBorderWidth\",\r\n                 \"value\":\"2\",\r\n                 \"label\":\"Panel Border Size\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnHeader\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"bottomBorderStyle\",\r\n                 \"value\":\"solid\",\r\n                 \"label\":\"Panel Border Style\",\r\n                 \"type\":\"borderStyle\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnHeader\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"bottomBorderColor\",\r\n                 \"value\":\"#ffffff7d\",\r\n                 \"label\":\"Panel Border Color\",\r\n                 \"type\":\"color\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListBanner\",\r\n                 \"key\":\"radius\",\r\n                 \"value\":\"0\",\r\n                 \"label\":\"Panel Border Radius\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListBanner\",\r\n                 \"key\":\"listBannerBackground\",\r\n                 \"value\":\"#ffffff7d\",\r\n                 \"label\":\"Panel List Banner Background\",\r\n                 \"type\":\"color\"\r\n              },\r\n              {\r\n                \"group\":\"kenburnListBanner\",\r\n                \"key\":\"listBannerBorderWidth\",\r\n                \"value\":\"2\",\r\n                \"label\":\"Panel List Banner Border Size\",\r\n                \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListBanner\",\r\n                 \"key\":\"listBannerBorderStyle\",\r\n                 \"value\":\"solid\",\r\n                 \"label\":\"Panel List Banner Border Style\",\r\n                 \"type\":\"borderStyle\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListBanner\",\r\n                 \"key\":\"listBannerBorderColor\",\r\n                 \"value\":\"#ffffff7d\",\r\n                 \"label\":\"Panel Banner Border Color\",\r\n                 \"type\":\"color\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListBanner\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"marginTop\",\r\n                 \"value\":\"0\",\r\n                 \"label\":\"Top Margin\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListBanner\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"marginRight\",\r\n                 \"value\":\"0\",\r\n                 \"label\":\"Right Margin\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListBanner\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"marginBottom\",\r\n                 \"value\":\"0\",\r\n                 \"label\":\"Bottom Margin\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListBanner\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"marginLeft\",\r\n                 \"value\":\"0\",\r\n                 \"label\":\"Left Margin\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListBanner\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"width\",\r\n                 \"value\":\"100\",\r\n                 \"label\":\"Panel Banner Width\",\r\n                 \"type\":\"sizeper\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListBanner\",\r\n                 \"key\":\"paddingTop\",\r\n                 \"value\":\"1\",\r\n                 \"label\":\"Top Padding\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListBanner\",\r\n                 \"key\":\"paddingRight\",\r\n                 \"value\":\"4\",\r\n                 \"label\":\"Right Padding\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListBanner\",\r\n                 \"key\":\"paddingBottom\",\r\n                 \"value\":\"1\",\r\n                 \"label\":\"Bottom Padding\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                \"group\":\"kenburnListBanner\",\r\n                \"key\":\"paddingLeft\",\r\n                \"value\":\"4\",\r\n                \"label\":\"Left Padding\",\r\n                \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListTitle\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"positionBottom\",\r\n                 \"value\":\"0\",\r\n                 \"label\":\"Bottom Position\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListTitle\",\r\n                 \"key\":\"kenburnListTitleHeight\",\r\n                 \"value\":\"23\",\r\n                 \"label\":\"Panel List Title Height\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListTitle\",\r\n                 \"key\":\"listTitleFontColor\",\r\n                 \"value\":\"#ffffff7d\",\r\n                 \"label\":\"List Title Font Color\",\r\n                 \"type\":\"color\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListTitle\",\r\n                 \"key\":\"listTitleFontSize\",\r\n                 \"value\":\"24\",\r\n                 \"label\":\"List Title Font Size\",\r\n                 \"type\":\"sizeem\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListTitle\",\r\n                 \"key\":\"kenburnListTitleAlignment\",\r\n                 \"value\":\"right\",\r\n                 \"label\":\"List Title Alignment\",\r\n                 \"type\":\"align\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListTitle\",\r\n                 \"key\":\"listTitleBackgroundColor\",\r\n                 \"value\":\"#0000007d\",\r\n                 \"label\":\"List Title Background Color\",\r\n                 \"type\":\"color\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListTitle\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"display\",\r\n                 \"value\":\"block\",\r\n                 \"label\":\"List Title Display\",\r\n                 \"type\":\"displayDrop\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListTitle\",\r\n                 \"key\":\"fontName\",\r\n                 \"value\":\"ABeeZee\",\r\n                 \"label\":\"Font Style\",\r\n                 \"type\":\"font\"\r\n              },\r\n              {\r\n                 \"group\":\"kenburnListTitle\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"lineHeight\",\r\n                 \"value\":\"20\",\r\n                 \"label\":\"List Title Line Height\",\r\n                 \"type\":\"size\"\r\n              }\r\n           ]', NULL, NULL),
(7, 'single_video_menu_css', NULL, NULL, NULL),
(8, 'youtube_video_menu_css', '[\r\n            {\r\n               \"group\":\"contentCss\",\r\n               \"key\":\"fontColor\",\r\n               \"value\":\"#000000\",\r\n               \"label\":\"Content Font Color\",\r\n               \"type\":\"color\"\r\n            },\r\n            {\r\n               \"group\":\"contentCss\",\r\n               \"key\":\"fontName\",\r\n               \"value\":\"ABeeZee\",\r\n               \"label\":\"Content Font Style\",\r\n               \"type\":\"font\"\r\n            },\r\n            {\r\n               \"group\":\"contentCss\",\r\n               \"key\":\"fontSize\",\r\n               \"value\":\"28\",\r\n               \"label\":\"Content Font Size\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"contentCss\",\r\n               \"time\":\"always\",\r\n               \"key\":\"paddingTop\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Content Top Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"contentCss\",\r\n               \"time\":\"always\",\r\n               \"key\":\"paddingRight\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Content Right Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"contentCss\",\r\n               \"time\":\"always\",\r\n               \"key\":\"paddingBottom\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Content Bottom Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"contentCss\",\r\n               \"time\":\"always\",\r\n               \"key\":\"paddingLeft\",\r\n               \"value\":\"10\",\r\n               \"label\":\"Content Left Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"contentCss\",\r\n               \"time\":\"always\",\r\n               \"key\":\"height\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Height\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"videoListCss\",\r\n               \"key\":\"marginTop\",\r\n               \"value\":\"3\",\r\n               \"label\":\"Video List Top Margin\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"videoListCss\",\r\n               \"key\":\"marginRight\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Video List Right Margin\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"videoListCss\",\r\n               \"key\":\"marginBottom\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Video List Bottom Margin\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"videoListCss\",\r\n               \"key\":\"marginLeft\",\r\n               \"value\":\"16\",\r\n               \"label\":\"Video List Left Margin\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"videoListCss\",\r\n               \"key\":\"paddingTop\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Video List Top Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"videoListCss\",\r\n               \"key\":\"paddingRight\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Video List Right Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"videoListCss\",\r\n               \"key\":\"paddingBottom\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Video List Bottom Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"videoListCss\",\r\n               \"key\":\"paddingLeft\",\r\n               \"value\":\"10\",\r\n               \"label\":\"Video List Left Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"videoListCss\",\r\n               \"key\":\"borderSize\",\r\n               \"value\":\"2\",\r\n               \"label\":\"Video List Border Size\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"videoListCss\",\r\n               \"key\":\"borderColor\",\r\n               \"value\":\"#000000\",\r\n               \"label\":\"Video List Border Color\",\r\n               \"type\":\"color\"\r\n            },\r\n            {\r\n               \"group\":\"videoListCss\",\r\n               \"key\":\"bottomBorderStyle\",\r\n               \"value\":\"solid\",\r\n               \"label\":\"Video List Border Style\",\r\n               \"type\":\"borderStyle\"\r\n            },\r\n            {\r\n               \"group\":\"textCss\",\r\n               \"time\":\"always\",\r\n               \"key\":\"marginTop\",\r\n               \"value\":\"10\",\r\n               \"label\":\"Text Top Margin\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"textCss\",\r\n               \"time\":\"always\",\r\n               \"key\":\"marginRight\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Text Right Margin\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"textCss\",\r\n               \"time\":\"always\",\r\n               \"key\":\"marginBottom\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Text Bottom Margin\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"textCss\",\r\n               \"time\":\"always\",\r\n               \"key\":\"marginLeft\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Text Left Margin\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"arrowCss\",\r\n               \"time\":\"always\",\r\n               \"key\":\"marginTop\",\r\n               \"value\":\"12\",\r\n               \"label\":\"Arrow Top Margin\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"arrowCss\",\r\n               \"time\":\"always\",\r\n               \"key\":\"marginRight\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Arrow Right Margin\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"arrowCss\",\r\n               \"time\":\"always\",\r\n               \"key\":\"marginBottom\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Arrow Bottom Margin\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"arrowCss\",\r\n               \"time\":\"always\",\r\n               \"key\":\"marginLeft\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Arrow Left Margin\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"arrowCss\",\r\n               \"key\":\"fontSize\",\r\n               \"value\":\"28\",\r\n               \"label\":\"Arrow Font Size\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"arrowCss\",\r\n               \"key\":\"positionLeft\",\r\n               \"value\":\"20\",\r\n               \"label\":\"Arrow Left Position\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"arrowCss\",\r\n               \"time\":\"always\",\r\n               \"key\":\"positionRight\",\r\n               \"value\":\"\",\r\n               \"label\":\"Arrow Right Position\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"arrowCss\",\r\n               \"time\":\"always\",\r\n               \"key\":\"positionBottom\",\r\n               \"value\":\"\",\r\n               \"label\":\"Arrow Bottom Position\",\r\n               \"type\":\"size\"\r\n            }\r\n         ]', NULL, NULL),
(9, 'list_menu_css', '[\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"paddingTop\",\r\n                 \"value\":\"0\",\r\n                 \"label\":\"Top Padding\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"paddingRight\",\r\n                 \"value\":\"0\",\r\n                 \"label\":\"Right Padding\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"paddingBottom\",\r\n                 \"value\":\"0\",\r\n                 \"label\":\"Bottom Padding\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"paddingLeft\",\r\n                 \"value\":\"15\",\r\n                 \"label\":\"Left Padding\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"borderSize\",\r\n                 \"value\":\"1\",\r\n                 \"label\":\"Border Size\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"borderColor\",\r\n                 \"value\":\"#000000\",\r\n                 \"label\":\"Border Color\",\r\n                 \"type\":\"color\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"bottomBorderStyle\",\r\n                 \"value\":\"solid\",\r\n                 \"label\":\"Border Style\",\r\n                 \"type\":\"borderStyle\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"fontName\",\r\n                 \"value\":\"ABeeZee\",\r\n                 \"label\":\"Font Style\",\r\n                 \"type\":\"font\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"fontSize\",\r\n                 \"value\":\"18\",\r\n                 \"label\":\"Font Size\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"fontColor\",\r\n                 \"value\":\"#000000\",\r\n                 \"label\":\"Font Color\",\r\n                 \"type\":\"color\"\r\n              }\r\n           ]', NULL, NULL),
(10, 'rss_feed_menu_css', '[\r\n            {\r\n               \"group\":\"buttonCss\",\r\n               \"key\":\"borderSize\",\r\n               \"value\":\"1\",\r\n               \"label\":\"Button Border Size\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"buttonCss\",\r\n               \"key\":\"borderColor\",\r\n               \"value\":\"#000000\",\r\n               \"label\":\"Button Border Color\",\r\n               \"type\":\"color\"\r\n            },\r\n            {\r\n               \"group\":\"buttonCss\",\r\n               \"key\":\"bottomBorderStyle\",\r\n               \"value\":\"solid\",\r\n               \"label\":\"Button Border Style\",\r\n               \"type\":\"borderStyle\"\r\n            },\r\n            {\r\n               \"group\":\"buttonCss\",\r\n               \"key\":\"paddingTop\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Button Top Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"buttonCss\",\r\n               \"key\":\"paddingRight\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Button Right Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"buttonCss\",\r\n               \"key\":\"paddingBottom\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Button Bottom Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"buttonCss\",\r\n               \"key\":\"paddingLeft\",\r\n               \"value\":\"15\",\r\n               \"label\":\"Button Left Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"buttonCss\",\r\n               \"key\":\"fontColor\",\r\n               \"value\":\"#000000\",\r\n               \"label\":\"Font Color\",\r\n               \"type\":\"color\"\r\n            },\r\n            {\r\n               \"group\":\"buttonCss\",\r\n               \"key\":\"fontName\",\r\n               \"value\":\"ABeeZee\",\r\n               \"label\":\"Font Style\",\r\n               \"type\":\"font\"\r\n            },\r\n            {\r\n               \"group\":\"buttonCss\",\r\n               \"key\":\"fontSize\",\r\n               \"value\":\"16\",\r\n               \"label\":\"Font Size\",\r\n               \"type\":\"size\"\r\n            }\r\n         ]', NULL, NULL),
(11, 'notification_menu_css', '[\r\n            {\r\n               \"group\":\"labelCss\",\r\n               \"key\":\"fontColor\",\r\n               \"value\":\"#000000\",\r\n               \"label\":\"Font Color\",\r\n               \"type\":\"color\"\r\n            },\r\n            {\r\n               \"group\":\"labelCss\",\r\n               \"key\":\"fontName\",\r\n               \"value\":\"ABeeZee\",\r\n               \"label\":\"Font Style\",\r\n               \"type\":\"font\"\r\n            },\r\n            {\r\n               \"group\":\"labelCss\",\r\n               \"key\":\"fontSize\",\r\n               \"value\":\"18\",\r\n               \"label\":\"Font Size\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"labelCss\",\r\n               \"key\":\"paddingTop\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Top Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"labelCss\",\r\n               \"key\":\"paddingRight\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Right Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"labelCss\",\r\n               \"key\":\"paddingBottom\",\r\n               \"value\":\"0\",\r\n               \"label\":\"Bottom Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"labelCss\",\r\n               \"key\":\"paddingLeft\",\r\n               \"value\":\"15\",\r\n               \"label\":\"Left Padding\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"itemInner\",\r\n               \"key\":\"borderSize\",\r\n               \"value\":\"1\",\r\n               \"label\":\"Border Size\",\r\n               \"type\":\"size\"\r\n            },\r\n            {\r\n               \"group\":\"itemInner\",\r\n               \"key\":\"borderColor\",\r\n               \"value\":\"#000000\",\r\n               \"label\":\"Border Color\",\r\n               \"type\":\"color\"\r\n            },\r\n            {\r\n               \"group\":\"itemInner\",\r\n               \"key\":\"bottomBorderStyle\",\r\n               \"value\":\"solid\",\r\n               \"label\":\"Border Style\",\r\n               \"type\":\"borderStyle\"\r\n            }\r\n         ]', NULL, NULL),
(12, 'picasa_album_menu_css', '[\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"paddingTop\",\r\n                 \"value\":\"0\",\r\n                 \"label\":\"Top Padding\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"paddingRight\",\r\n                 \"value\":\"0\",\r\n                 \"label\":\"Right Padding\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"paddingBottom\",\r\n                 \"value\":\"0\",\r\n                 \"label\":\"Bottom Padding\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"paddingLeft\",\r\n                 \"value\":\"15\",\r\n                 \"label\":\"Left Padding\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"borderSize\",\r\n                 \"value\":\"1\",\r\n                 \"label\":\"Border Size\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"borderColor\",\r\n                 \"value\":\"#000000\",\r\n                 \"label\":\"Border Color\",\r\n                 \"type\":\"color\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"bottomBorderStyle\",\r\n                 \"value\":\"solid\",\r\n                 \"label\":\"Border Style\",\r\n                 \"type\":\"borderStyle\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"fontName\",\r\n                 \"value\":\"ABeeZee\",\r\n                 \"label\":\"Font Style\",\r\n                 \"type\":\"font\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"fontSize\",\r\n                 \"value\":\"18\",\r\n                 \"label\":\"Font Size\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"labelCss\",\r\n                 \"key\":\"fontColor\",\r\n                 \"value\":\"#000000\",\r\n                 \"label\":\"Font Color\",\r\n                 \"type\":\"color\"\r\n              }\r\n           ]', NULL, NULL),
(13, 'web_view_menu_css', NULL, NULL, NULL),
(14, 'tutorial_menu_css', '[\r\n              {\r\n                 \"group\":\"pagerCss\",\r\n                 \"key\":\"backgroundColor\",\r\n                 \"value\":\"#000000\",\r\n                 \"label\":\"Pager Background Color\",\r\n                 \"type\":\"color\"\r\n              },\r\n              {\r\n                 \"group\":\"pagerCss\",\r\n                 \"key\":\"height\",\r\n                 \"value\":\"12\",\r\n                 \"label\":\"Pager Height\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"pagerCss\",\r\n                 \"key\":\"width\",\r\n                 \"value\":\"12\",\r\n                 \"label\":\"Pager Width\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"pagerCss\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"positionTop\",\r\n                 \"value\":\"\",\r\n                 \"label\":\"Pager Top Position\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"pagerCss\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"positionRight\",\r\n                 \"value\":\"\",\r\n                 \"label\":\"Pager Right Position\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"pagerCss\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"positionBottom\",\r\n                 \"value\":\"2\",\r\n                 \"label\":\"Pager Bottom Position\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"pagerCss\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"positionLeft\",\r\n                 \"value\":\"\",\r\n                 \"label\":\"Pager Left Position\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"imgCss\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"imgPositionType\",\r\n                 \"value\":\"relative\",\r\n                 \"label\":\"Image Position Type\",\r\n                 \"type\":\"positionType\"\r\n              },\r\n              {\r\n                 \"group\":\"buttonCss\",\r\n                 \"key\":\"fontSize\",\r\n                 \"value\":\"50\",\r\n                 \"label\":\"Close Button Font Size\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"buttonCss\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"buttonPositionType\",\r\n                 \"value\":\"absolute\",\r\n                 \"label\":\"Close Button Position Type\",\r\n                 \"type\":\"positionType\"\r\n              },\r\n              {\r\n                 \"group\":\"buttonCss\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"positionTop\",\r\n                 \"value\":\"0\",\r\n                 \"label\":\"Close Button Bottom Position\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"buttonCss\",\r\n                 \"time\":\"always\",\r\n                 \"key\":\"positionRight\",\r\n                 \"value\":\"20\",\r\n                 \"label\":\"Close Button Right Position\",\r\n                 \"type\":\"size\"\r\n              },\r\n              {\r\n                 \"group\":\"buttonCss\",\r\n                 \"key\":\"bottomFontColor\",\r\n                 \"value\":\"#000000\",\r\n                 \"label\":\"Bottom Font Color\",\r\n                 \"type\":\"color\"\r\n              }\r\n           ]', NULL, NULL),
(15, 'statusbar_css', '[\r\n                {\r\n                   \"key\":\"background color\",\r\n                   \"value\":\"#000000\",\r\n                   \"label\":\"Status Bar Color\",\r\n                   \"type\":\"color\"\r\n                }\r\n             ]', NULL, NULL),
(16, 'tab_css', '[\r\n                {\r\n                   \"key\":\"fontsizetab\",\r\n                   \"value\":\"22\",\r\n                   \"label\":\"Font Size\",\r\n                   \"type\":\"size\"\r\n                },\r\n                {\r\n                   \"key\":\"fontcolor\",\r\n                   \"value\":\"#ff0000\",\r\n                   \"label\":\"Font Color\",\r\n                   \"type\":\"color\"\r\n                },\r\n                {\r\n                   \"key\":\"fontName\",\r\n                   \"value\":\"\",\r\n                   \"label\":\"Font Name\",\r\n                   \"type\":\"font\"\r\n                },\r\n                {\r\n                    \"key\":\"backgroundColor\",\r\n                    \"value\":\"#ff0000\",\r\n                    \"label\":\"Background Color\",\r\n                    \"type\":\"color\"\r\n                },\r\n                {\r\n                    \"key\":\"tab-position\",\r\n                    \"value\":\"1\",\r\n                    \"label\":\"Tab Position\",\r\n                    \"type\":\"position\"\r\n                },\r\n                {\r\n                   \"key\":\"tabheight\",\r\n                   \"value\":\"64\",\r\n                   \"label\":\"Tab Height\",\r\n                   \"type\":\"size\"\r\n                },\r\n                {\r\n                    \"key\":\"tabcount\",\r\n                    \"value\":\"5\",\r\n                    \"label\":\"Tab Count\",\r\n                    \"type\":\"count\"\r\n                }\r\n             ]', NULL, NULL),
(17, 'contact_menu_css', '[{\"type\":\"header\",\"subtype\":\"h1\",\"label\":\"Contact Us\"},{\"type\":\"text\",\"label\":\"Email\",\"placeholder\":\"Please enter your email\",\"className\":\"form-control\",\"name\":\"text-1521921526935\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"label\":\"textArea\",\"placeholder\":\"Comments here\",\"className\":\"form-control\",\"name\":\"textarea-1521921559841\",\"subtype\":\"tinymce\"},{\"type\":\"button\",\"subtype\":\"submit\",\"label\":\"Send\",\"className\":\"btn pull-right full-width btn-primary\",\"name\":\"button-1521921607323\",\"style\":\"primary\"}]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_general_dicussions`
--

CREATE TABLE `app_general_dicussions` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `app_id` int(10) UNSIGNED NOT NULL COMMENT ' app foreign key',
  `sender_id` int(10) UNSIGNED NOT NULL COMMENT 'sender(normal user) foreign key',
  `receiver_id` int(10) UNSIGNED NOT NULL COMMENT 'receiver(typically user) foreign key',
  `dicussion` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>open, 2=>close, 3=>deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_inquiry`
--

CREATE TABLE `app_inquiry` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'primary key',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'inquiry name',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'inquiry mail id',
  `budget` int(11) NOT NULL COMMENT 'inquiry budget',
  `app_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'inquiry application description',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_menu`
--

CREATE TABLE `app_menu` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `is_parent` int(11) NOT NULL DEFAULT '0',
  `app_basic_id` int(10) UNSIGNED NOT NULL COMMENT 'Foreign key',
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `menu_level` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Menu Level',
  `menu_type` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign key',
  `menu_type_json_data` longtext COLLATE utf8mb4_unicode_ci,
  `is_display_on_app` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 => Not display, 1 => Display',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_menu`
--

INSERT INTO `app_menu` (`id`, `is_parent`, `app_basic_id`, `menu_name`, `menu_icon`, `order`, `menu_level`, `menu_type`, `menu_type_json_data`, `is_display_on_app`, `created_at`, `updated_at`, `status`) VALUES
(1, 0, 1, 'Asdf', '', 1, 1, 9, '{\"type\":\"website\",\"web_url\":\"google.com\",\"css_string_json\":\"\"}', '1', '2018-03-15 13:01:55', '2018-03-15 13:02:58', '1'),
(2, 0, 1, 'Asdf1', NULL, 2, 1, 9, '{\"type\":\"website\",\"css_string_json\":\"\"}', '1', '2018-03-15 13:02:08', '2018-03-15 13:02:08', '1'),
(3, 0, 1, 'Asdf2', NULL, 3, 1, 9, '{\"type\":\"website\",\"css_string_json\":\"\"}', '1', '2018-03-15 13:02:18', '2018-03-15 13:02:18', '1'),
(4, 0, 1, 'Asdf3', NULL, 4, 1, 9, '{\"type\":\"website\",\"css_string_json\":\"\"}', '1', '2018-03-15 13:02:29', '2018-03-15 13:02:29', '1'),
(5, 0, 1, 'Asdf4', NULL, 5, 1, 9, '{\"type\":\"website\",\"css_string_json\":\"\"}', '1', '2018-03-15 13:02:40', '2018-03-15 13:02:40', '1'),
(6, 0, 1, 'Asdf5', NULL, 6, 1, 9, '{\"type\":\"website\",\"css_string_json\":\"\"}', '1', '2018-03-15 13:03:09', '2018-03-15 13:03:09', '1'),
(7, 0, 4, 'Italian Ice', 'https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/test4/setting/tab_menuImage7.png', 1, 1, 9, '{\"type\":\"website\",\"image\":\"null\",\"web_url\":\"undefined\",\"css_string_json\":\"\"}', '1', '2018-03-17 08:08:49', '2018-03-19 05:16:02', '1'),
(8, 0, 4, 'Italian Ice', 'https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/test4/setting/tab_menuImage8.png', 2, 1, 1, '{\"type\":\"animated_panels\",\"duration\":\"6\",\"from\":\"undefined\",\"to\":\"undefined\",\"css_string_json\":[{\"group\":\"kenburnHeader\",\"time\":\"always\",\"key\":\"textAlignment\",\"value\":\"right\",\"label\":\"Panel Text Alignment\",\"type\":\"align\"},{\"group\":\"kenburnHeader\",\"time\":\"always\",\"key\":\"kenburnHeaderColor\",\"value\":\"\",\"label\":\"Panel Font Color\",\"type\":\"color\"},{\"group\":\"kenburnHeader\",\"time\":\"always\",\"key\":\"bottomBorderWidth\",\"value\":\"2\",\"label\":\"Panel Border Size\",\"type\":\"size\"},{\"group\":\"kenburnHeader\",\"time\":\"always\",\"key\":\"bottomBorderStyle\",\"value\":\"solid\",\"label\":\"Panel Border Style\",\"type\":\"borderStyle\"},{\"group\":\"kenburnHeader\",\"time\":\"always\",\"key\":\"bottomBorderColor\",\"value\":\"#ffffff7d\",\"label\":\"Panel Border Color\",\"type\":\"color\"},{\"group\":\"kenburnListBanner\",\"key\":\"radius\",\"value\":\"0\",\"label\":\"Panel Border Radius\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"key\":\"listBannerBackground\",\"value\":\"#ffffff7d\",\"label\":\"Panel List Banner Background\",\"type\":\"color\"},{\"group\":\"kenburnListBanner\",\"key\":\"listBannerBorderWidth\",\"value\":\"2\",\"label\":\"Panel List Banner Border Size\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"key\":\"listBannerBorderStyle\",\"value\":\"solid\",\"label\":\"Panel List Banner Border Style\",\"type\":\"borderStyle\"},{\"group\":\"kenburnListBanner\",\"key\":\"listBannerBorderColor\",\"value\":\"#ffffff7d\",\"label\":\"Panel Banner Border Color\",\"type\":\"color\"},{\"group\":\"kenburnListBanner\",\"time\":\"always\",\"key\":\"marginTop\",\"value\":\"0\",\"label\":\"Top Margin\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"time\":\"always\",\"key\":\"marginRight\",\"value\":\"0\",\"label\":\"Right Margin\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"time\":\"always\",\"key\":\"marginBottom\",\"value\":\"0\",\"label\":\"Bottom Margin\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"time\":\"always\",\"key\":\"marginLeft\",\"value\":\"0\",\"label\":\"Left Margin\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"time\":\"always\",\"key\":\"width\",\"value\":\"100\",\"label\":\"Panel Banner Width\",\"type\":\"sizeper\"},{\"group\":\"kenburnListBanner\",\"key\":\"paddingTop\",\"value\":\"1\",\"label\":\"Top Padding\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"key\":\"paddingRight\",\"value\":\"4\",\"label\":\"Right Padding\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"key\":\"paddingBottom\",\"value\":\"1\",\"label\":\"Bottom Padding\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"key\":\"paddingLeft\",\"value\":\"4\",\"label\":\"Left Padding\",\"type\":\"size\"},{\"group\":\"kenburnListTitle\",\"time\":\"always\",\"key\":\"positionBottom\",\"value\":\"0\",\"label\":\"Bottom Position\",\"type\":\"size\"},{\"group\":\"kenburnListTitle\",\"key\":\"kenburnListTitleHeight\",\"value\":\"23\",\"label\":\"Panel List Title Height\",\"type\":\"size\"},{\"group\":\"kenburnListTitle\",\"key\":\"listTitleFontColor\",\"value\":\"#ffffff7d\",\"label\":\"List Title Font Color\",\"type\":\"color\"},{\"group\":\"kenburnListTitle\",\"key\":\"listTitleFontSize\",\"value\":\"24\",\"label\":\"List Title Font Size\",\"type\":\"sizeem\"},{\"group\":\"kenburnListTitle\",\"key\":\"kenburnListTitleAlignment\",\"value\":\"right\",\"label\":\"List Title Alignment\",\"type\":\"align\"},{\"group\":\"kenburnListTitle\",\"key\":\"listTitleBackgroundColor\",\"value\":\"#0000007d\",\"label\":\"List Title Background Color\",\"type\":\"color\"},{\"group\":\"kenburnListTitle\",\"time\":\"always\",\"key\":\"display\",\"value\":\"block\",\"label\":\"List Title Display\",\"type\":\"displayDrop\"},{\"group\":\"kenburnListTitle\",\"key\":\"fontName\",\"value\":\"bebas_neueregular\",\"label\":\"Font Style\",\"type\":\"font\"},{\"group\":\"kenburnListTitle\",\"time\":\"always\",\"key\":\"lineHeight\",\"value\":\"20\",\"label\":\"List Title Line Height\",\"type\":\"size\"}]}', '1', '2018-03-17 09:29:23', '2018-03-18 16:38:18', '1'),
(9, 8, 4, 'Italian Ice', 'https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/test4/setting/tab_menuImage8.png', 1, 2, 1, '{\"type\":\"animated_panels\",\"image\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/menu_icon\\/thumb\\/default.png\",\"duration\":\"6\",\"from\":\"undefined\",\"to\":\"undefined\",\"css_string_json\":[{\"group\":\"kenburnHeader\",\"time\":\"always\",\"key\":\"textAlignment\",\"value\":\"right\",\"label\":\"Panel Text Alignment\",\"type\":\"align\"},{\"group\":\"kenburnHeader\",\"time\":\"always\",\"key\":\"kenburnHeaderColor\",\"value\":\"\",\"label\":\"Panel Font Color\",\"type\":\"color\"},{\"group\":\"kenburnHeader\",\"time\":\"always\",\"key\":\"bottomBorderWidth\",\"value\":\"2\",\"label\":\"Panel Border Size\",\"type\":\"size\"},{\"group\":\"kenburnHeader\",\"time\":\"always\",\"key\":\"bottomBorderStyle\",\"value\":\"solid\",\"label\":\"Panel Border Style\",\"type\":\"borderStyle\"},{\"group\":\"kenburnHeader\",\"time\":\"always\",\"key\":\"bottomBorderColor\",\"value\":\"#ffffff7d\",\"label\":\"Panel Border Color\",\"type\":\"color\"},{\"group\":\"kenburnListBanner\",\"key\":\"radius\",\"value\":\"0\",\"label\":\"Panel Border Radius\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"key\":\"listBannerBackground\",\"value\":\"#ffffff7d\",\"label\":\"Panel List Banner Background\",\"type\":\"color\"},{\"group\":\"kenburnListBanner\",\"key\":\"listBannerBorderWidth\",\"value\":\"2\",\"label\":\"Panel List Banner Border Size\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"key\":\"listBannerBorderStyle\",\"value\":\"solid\",\"label\":\"Panel List Banner Border Style\",\"type\":\"borderStyle\"},{\"group\":\"kenburnListBanner\",\"key\":\"listBannerBorderColor\",\"value\":\"#ffffff7d\",\"label\":\"Panel Banner Border Color\",\"type\":\"color\"},{\"group\":\"kenburnListBanner\",\"time\":\"always\",\"key\":\"marginTop\",\"value\":\"0\",\"label\":\"Top Margin\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"time\":\"always\",\"key\":\"marginRight\",\"value\":\"0\",\"label\":\"Right Margin\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"time\":\"always\",\"key\":\"marginBottom\",\"value\":\"0\",\"label\":\"Bottom Margin\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"time\":\"always\",\"key\":\"marginLeft\",\"value\":\"0\",\"label\":\"Left Margin\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"time\":\"always\",\"key\":\"width\",\"value\":\"100\",\"label\":\"Panel Banner Width\",\"type\":\"sizeper\"},{\"group\":\"kenburnListBanner\",\"key\":\"paddingTop\",\"value\":\"1\",\"label\":\"Top Padding\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"key\":\"paddingRight\",\"value\":\"4\",\"label\":\"Right Padding\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"key\":\"paddingBottom\",\"value\":\"1\",\"label\":\"Bottom Padding\",\"type\":\"size\"},{\"group\":\"kenburnListBanner\",\"key\":\"paddingLeft\",\"value\":\"4\",\"label\":\"Left Padding\",\"type\":\"size\"},{\"group\":\"kenburnListTitle\",\"time\":\"always\",\"key\":\"positionBottom\",\"value\":\"0\",\"label\":\"Bottom Position\",\"type\":\"size\"},{\"group\":\"kenburnListTitle\",\"key\":\"kenburnListTitleHeight\",\"value\":\"23\",\"label\":\"Panel List Title Height\",\"type\":\"size\"},{\"group\":\"kenburnListTitle\",\"key\":\"listTitleFontColor\",\"value\":\"#ffffff7d\",\"label\":\"List Title Font Color\",\"type\":\"color\"},{\"group\":\"kenburnListTitle\",\"key\":\"listTitleFontSize\",\"value\":\"24\",\"label\":\"List Title Font Size\",\"type\":\"sizeem\"},{\"group\":\"kenburnListTitle\",\"key\":\"kenburnListTitleAlignment\",\"value\":\"right\",\"label\":\"List Title Alignment\",\"type\":\"align\"},{\"group\":\"kenburnListTitle\",\"key\":\"listTitleBackgroundColor\",\"value\":\"#0000007d\",\"label\":\"List Title Background Color\",\"type\":\"color\"},{\"group\":\"kenburnListTitle\",\"time\":\"always\",\"key\":\"display\",\"value\":\"block\",\"label\":\"List Title Display\",\"type\":\"displayDrop\"},{\"group\":\"kenburnListTitle\",\"key\":\"fontName\",\"value\":\"bebas_neueregular\",\"label\":\"Font Style\",\"type\":\"font\"},{\"group\":\"kenburnListTitle\",\"time\":\"always\",\"key\":\"lineHeight\",\"value\":\"20\",\"label\":\"List Title Line Height\",\"type\":\"size\"}]}', '1', '2018-03-17 09:29:34', '2018-03-18 16:38:36', '1'),
(10, 8, 4, 'TestTest', 'https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/test4/setting/menuImage10.png', 2, 2, 9, '{\"type\":\"website\",\"image\":\"https:\\/\\/lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com\\/test4\\/setting\\/menuImage10.png\",\"web_url\":\"undefined\",\"css_string_json\":\"\"}', '1', '2018-03-17 09:44:22', '2018-03-17 09:44:40', '1'),
(11, 8, 4, 'gjc', 'https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/test4/setting/tab_menuImage11.png', 3, 2, 9, '{\"type\":\"website\",\"image\":\"https:\\/\\/lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com\\/test4\\/setting\\/menuImage11.png\",\"web_url\":\"undefined\",\"css_string_json\":\"\"}', '1', '2018-03-18 12:56:38', '2018-03-18 16:37:21', '1'),
(12, 0, 4, 'Italian Ice', NULL, 4, 1, 9, '{\"type\":\"website\",\"css_string_json\":\"\"}', '1', '2018-03-19 04:49:00', '2018-03-19 04:49:00', '1'),
(13, 0, 6, 'Italian Ice', 'https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/aaa6/setting/tab_menuImage13.png', 1, 1, 9, '{\"type\":\"website\",\"image\":\"http:\\/\\/127.0.0.1:8000\\/upload\\/menu_icon\\/thumb\\/default.png\",\"web_url\":\"google.com\",\"css_string_json\":\"\"}', '1', '2018-03-19 16:57:29', '2018-03-19 18:03:51', '1'),
(14, 0, 6, 'Italian Ice', 'https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/aaa6/setting/tab_menuImage14.png', 2, 1, 4, '{\"type\":\"list_menu\",\"image\":\"null\",\"show_child_on\":\"1\",\"css_string_json\":[{\"group\":\"labelCss\",\"key\":\"paddingTop\",\"value\":\"11\",\"label\":\"Top Padding\",\"type\":\"size\"},{\"group\":\"labelCss\",\"key\":\"paddingRight\",\"value\":\"12\",\"label\":\"Right Padding\",\"type\":\"size\"},{\"group\":\"labelCss\",\"key\":\"paddingBottom\",\"value\":\"13\",\"label\":\"Bottom Padding\",\"type\":\"size\"},{\"group\":\"labelCss\",\"key\":\"paddingLeft\",\"value\":\"14\",\"label\":\"Left Padding\",\"type\":\"size\"},{\"group\":\"labelCss\",\"key\":\"borderSize\",\"value\":\"2\",\"label\":\"Border Size\",\"type\":\"size\"},{\"group\":\"labelCss\",\"key\":\"borderColor\",\"value\":\"#000000\",\"label\":\"Border Color\",\"type\":\"color\"},{\"group\":\"labelCss\",\"key\":\"bottomBorderStyle\",\"value\":\"solid\",\"label\":\"Border Style\",\"type\":\"borderStyle\"},{\"group\":\"labelCss\",\"key\":\"fontName\",\"value\":\"Courier\",\"label\":\"Font Style\",\"type\":\"font\"},{\"group\":\"labelCss\",\"key\":\"fontSize\",\"value\":\"18\",\"label\":\"Font Size\",\"type\":\"size\"},{\"group\":\"labelCss\",\"key\":\"fontColor\",\"value\":\"#000000\",\"label\":\"Font Color\",\"type\":\"color\"}]}', '1', '2018-03-19 21:50:01', '2018-03-19 23:32:47', '1'),
(15, 0, 1, 'Italian Ice', NULL, 7, 1, 10, '{\"show_tutorial\":\"\",\"tutorial_add_more_fields\":[{\"video_url\":\"\",\"display_order\":\"\"}],\"type\":\"tutorial\",\"css_string_json\":[{\"group\":\"pagerCss\",\"key\":\"backgroundColor\",\"value\":\"#000000\",\"label\":\"Pager Background Color\",\"type\":\"color\"},{\"group\":\"pagerCss\",\"key\":\"height\",\"value\":\"12\",\"label\":\"Pager Height\",\"type\":\"size\"},{\"group\":\"pagerCss\",\"key\":\"width\",\"value\":\"12\",\"label\":\"Pager Width\",\"type\":\"size\"},{\"group\":\"pagerCss\",\"time\":\"always\",\"key\":\"positionTop\",\"value\":\"\",\"label\":\"Pager Top Position\",\"type\":\"size\"},{\"group\":\"pagerCss\",\"time\":\"always\",\"key\":\"positionRight\",\"value\":\"\",\"label\":\"Pager Right Position\",\"type\":\"size\"},{\"group\":\"pagerCss\",\"time\":\"always\",\"key\":\"positionBottom\",\"value\":\"2\",\"label\":\"Pager Bottom Position\",\"type\":\"size\"},{\"group\":\"pagerCss\",\"time\":\"always\",\"key\":\"positionLeft\",\"value\":\"\",\"label\":\"Pager Left Position\",\"type\":\"size\"},{\"group\":\"imgCss\",\"time\":\"always\",\"key\":\"imgPositionType\",\"value\":\"relative\",\"label\":\"Image Position Type\",\"type\":\"positionType\"},{\"group\":\"buttonCss\",\"key\":\"fontSize\",\"value\":\"50\",\"label\":\"Close Button Font Size\",\"type\":\"size\"},{\"group\":\"buttonCss\",\"time\":\"always\",\"key\":\"buttonPositionType\",\"value\":\"absolute\",\"label\":\"Close Button Position Type\",\"type\":\"positionType\"},{\"group\":\"buttonCss\",\"time\":\"always\",\"key\":\"positionTop\",\"value\":\"0\",\"label\":\"Close Button Bottom Position\",\"type\":\"size\"},{\"group\":\"buttonCss\",\"time\":\"always\",\"key\":\"positionRight\",\"value\":\"20\",\"label\":\"Close Button Right Position\",\"type\":\"size\"},{\"group\":\"buttonCss\",\"key\":\"bottomFontColor\",\"value\":\"#000000\",\"label\":\"Bottom Font Color\",\"type\":\"color\"}]}', '1', '2018-03-28 05:57:09', '2018-03-28 05:57:09', '1'),
(16, 0, 1, 'Asdf', NULL, 8, 1, 12, '{\"type\":\"content_editor\",\"css_string_json\":\"\"}', '1', '2018-03-29 15:03:20', '2018-03-29 15:03:20', '1');

-- --------------------------------------------------------

--
-- Table structure for table `app_section`
--

CREATE TABLE `app_section` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `app_section_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_section_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_section`
--

INSERT INTO `app_section` (`id`, `app_section_name`, `app_section_slug`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Splash Screen', 'splash_screen', NULL, NULL, '1'),
(2, 'Sponsor Splash', 'sponsor_splash', NULL, NULL, '1'),
(3, 'App Icon', 'app_icon', NULL, NULL, '1'),
(4, 'Basic Information', 'basic_information', NULL, NULL, '1'),
(5, 'Google Analytic', 'google_analytic', NULL, NULL, '1'),
(6, 'Add Screenshot', 'add_screenshot', NULL, NULL, '1'),
(7, 'Notification Popup', 'notification_popup', NULL, NULL, '1'),
(8, 'Auto Upgrade Popup', 'auto_upgrade_popup', NULL, NULL, '1'),
(9, 'Rate Popup', 'rate_popup', NULL, NULL, '1'),
(10, 'Home Screen', 'home_screen', NULL, NULL, '1'),
(11, 'Menu Configuration', 'menu_configuration', NULL, NULL, '1'),
(12, 'Add Ipad Screenshot', 'add_ipad_screenshot', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `arrow_css`
--

CREATE TABLE `arrow_css` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `css_properties` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--

CREATE TABLE `bonus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cost` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `app_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_type`
--

CREATE TABLE `category_type` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_type`
--

INSERT INTO `category_type` (`id`, `name`, `status`) VALUES
(1, 'Art and Design', '1'),
(2, 'Auto and Vehicles', '1'),
(3, 'Beauty', '1'),
(4, 'Books and Reference', '1'),
(5, 'Business', '1'),
(6, 'Comics', '1'),
(7, 'Communication', '1'),
(8, 'Dating', '1'),
(9, 'Education', '1'),
(10, 'Entertainment', '1'),
(11, 'Events', '1'),
(12, 'Finance', '1'),
(13, 'Food and Drink', '1'),
(14, 'Health and Fitness', '1'),
(15, 'House and Home', '1'),
(16, 'Libraries and Demo', '1'),
(17, 'Lifestyle', '1'),
(18, 'Maps and Navigation', '1'),
(19, 'Medical', '1'),
(20, 'Music and Audio', '1'),
(21, 'News and Magazines', '1'),
(22, 'Parenting', '1'),
(23, 'Personalization', '1'),
(24, 'Photography', '1'),
(25, 'Productivity', '1'),
(26, 'Shopping', '1'),
(27, 'Social', '1'),
(28, 'Sports', '1'),
(29, 'Tools', '1'),
(30, 'Travel and Local', '1'),
(31, 'Video Players and Editors', '1'),
(32, 'Weather', '1');

-- --------------------------------------------------------

--
-- Table structure for table `checkin`
--

CREATE TABLE `checkin` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `app_id` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_msg`
--

CREATE TABLE `contact_us_msg` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `msg_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach_msg_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_ticket`
--

CREATE TABLE `contact_us_ticket` (
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `attach_ticket_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_themes`
--

CREATE TABLE `content_themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_data` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `et_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `et_pseudo_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `et_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `et_body` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `firebase`
--

CREATE TABLE `firebase` (
  `id` int(10) UNSIGNED NOT NULL,
  `server_key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fitness_challenge`
--

CREATE TABLE `fitness_challenge` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` double(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fitness_challenge_day`
--

CREATE TABLE `fitness_challenge_day` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `challenge_id` int(11) DEFAULT NULL,
  `day_no` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fitness_challenge_loop`
--

CREATE TABLE `fitness_challenge_loop` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `day` int(11) DEFAULT NULL,
  `loop_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loop_id` int(11) DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fontfamily_type`
--

CREATE TABLE `fontfamily_type` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fontfamily_type`
--

INSERT INTO `fontfamily_type` (`id`, `name`, `value`, `status`) VALUES
(1, 'ABeeZee', 'ABeeZee', '1'),
(2, 'Abel', 'Abel', '1'),
(3, 'Abril Fatface', 'Abril Fatface', '1'),
(4, 'Aclonica', 'Aclonica', '1'),
(5, 'Acme', 'Acme', '1'),
(6, 'Actor', 'Actor', '1'),
(7, 'Adamina', 'Adamina', '1'),
(8, 'Advent Pro', 'Advent Pro', '1'),
(9, 'Aguafina Script', 'Aguafina Script', '1'),
(10, 'Akronim', 'Akronim', '1'),
(11, 'Aladin', 'Aladin', '1'),
(12, 'Aldrich', 'Aldrich', '1'),
(13, 'Alegreya', 'Alegreya', '1'),
(14, 'Alegreya SC', 'Alegreya SC', '1'),
(15, 'Alex Brush', 'Alex Brush', '1'),
(16, 'Alfa Slab One', 'Alfa Slab One', '1'),
(17, 'Alice', 'Alice', '1'),
(18, 'Alike', 'Alike', '1'),
(19, 'Alike Angular', 'Alike Angular', '1'),
(20, 'Allan', 'Allan', '1'),
(21, 'Allerta', 'Allerta', '1'),
(22, 'Allerta Stencil', 'Allerta Stencil', '1'),
(23, 'Allura', 'Allura', '1'),
(24, 'Almendra', 'Almendra', '1'),
(25, 'Almendra Display', 'Almendra Display', '1'),
(26, 'Almendra SC', 'Almendra SC', '1'),
(27, 'Amarante', 'Amarante', '1'),
(28, 'Amaranth', 'Amaranth', '1'),
(29, 'Amatic SC', 'Amatic SC', '1'),
(30, 'Amethysta', 'Amethysta', '1'),
(31, 'Anaheim', 'Anaheim', '1'),
(32, 'Andada', 'Andada', '1'),
(33, 'Andika', 'Andika', '1'),
(34, 'Angkor', 'Angkor', '1'),
(35, 'Annie Use Your Telescope', 'Annie Use Your Telescope', '1'),
(36, 'Anonymous Pro', 'Anonymous Pro', '1'),
(37, 'Antic', 'Antic', '1'),
(38, 'Antic Didone', 'Antic Didone', '1'),
(39, 'Antic Slab', 'Antic Slab', '1'),
(40, 'Anton', 'Anton', '1'),
(41, 'Arapey', 'Arapey', '1'),
(42, 'Arbutus', 'Arbutus', '1'),
(43, 'Arbutus Slab', 'Arbutus Slab', '1'),
(44, 'Architects Daughter', 'Architects Daughter', '1'),
(45, 'Archivo Black', 'Archivo Black', '1'),
(46, 'Archivo Narrow', 'Archivo Narrow', '1'),
(47, 'Arimo', 'Arimo', '1'),
(48, 'Arizonia', 'Arizonia', '1'),
(49, 'Armata', 'Armata', '1'),
(50, 'Artifika', 'Artifika', '1'),
(51, 'Arvo', 'Arvo', '1'),
(52, 'Asap', 'Asap', '1'),
(53, 'Asset', 'Asset', '1'),
(54, 'Astloch', 'Astloch', '1'),
(55, 'Asul', 'Asul', '1'),
(56, 'Atomic Age', 'Atomic Age', '1'),
(57, 'Aubrey', 'Aubrey', '1'),
(58, 'Audiowide', 'Audiowide', '1'),
(59, 'Autour One', 'Autour One', '1'),
(60, 'Average', 'Average', '1'),
(61, 'Average Sans', 'Average Sans', '1'),
(62, 'Averia Gruesa Libre', 'Averia Gruesa Libre', '1'),
(63, 'Averia Libre', 'Averia Libre', '1'),
(64, 'Averia Sans Libre', 'Averia Sans Libre', '1'),
(65, 'Averia Serif Libre', 'Averia Serif Libre', '1'),
(66, 'Bad Script', 'Bad Script', '1'),
(67, 'Balthazar', 'Balthazar', '1'),
(68, 'Bangers', 'Bangers', '1'),
(69, 'Basic', 'Basic', '1'),
(70, 'Battambang', 'Battambang', '1'),
(71, 'Baumans', 'Baumans', '1'),
(72, 'Bayon', 'Bayon', '1'),
(73, 'Belgrano', 'Belgrano', '1'),
(74, 'Belleza', 'Belleza', '1'),
(75, 'BenchNine', 'BenchNine', '1'),
(76, 'Bentham', 'Bentham', '1'),
(77, 'Berkshire Swash', 'Berkshire Swash', '1'),
(78, 'Bevan', 'Bevan', '1'),
(79, 'Bigelow Rules', 'Bigelow Rules', '1'),
(80, 'Bigshot One', 'Bigshot One', '1'),
(81, 'Bilbo', 'Bilbo', '1'),
(82, 'Bilbo Swash Caps', 'Bilbo Swash Caps', '1'),
(83, 'Bitter', 'Bitter', '1'),
(84, 'Black Ops One', 'Black Ops One', '1'),
(85, 'Bokor', 'Bokor', '1'),
(86, 'Bonbon', 'Bonbon', '1'),
(87, 'Boogaloo', 'Boogaloo', '1'),
(88, 'Bowlby One', 'Bowlby One', '1'),
(89, 'Bowlby One SC', 'Bowlby One SC', '1'),
(90, 'Brawler', 'Brawler', '1'),
(91, 'Bree Serif', 'Bree Serif', '1'),
(92, 'Bubblegum Sans', 'Bubblegum Sans', '1'),
(93, 'Bubbler One', 'Bubbler One', '1'),
(94, 'Buda', 'Buda', '1'),
(95, 'Buenard', 'Buenard', '1'),
(96, 'Butcherman', 'Butcherman', '1'),
(97, 'Butterfly Kids', 'Butterfly Kids', '1'),
(98, 'Cabin', 'Cabin', '1'),
(99, 'Cabin Condensed', 'Cabin Condensed', '1'),
(100, 'Cabin Sketch', 'Cabin Sketch', '1'),
(101, 'Caesar Dressing', 'Caesar Dressing', '1'),
(102, 'Cagliostro', 'Cagliostro', '1'),
(103, 'Calligraffitti', 'Calligraffitti', '1'),
(104, 'Cambo', 'Cambo', '1'),
(105, 'Candal', 'Candal', '1'),
(106, 'Cantarell', 'Cantarell', '1'),
(107, 'Cantata One', 'Cantata One', '1'),
(108, 'Cantora One', 'Cantora One', '1'),
(109, 'Capriola', 'Capriola', '1'),
(110, 'Cardo', 'Cardo', '1'),
(111, 'Carme', 'Carme', '1'),
(112, 'Carrois Gothic', 'Carrois Gothic', '1'),
(113, 'Carrois Gothic SC', 'Carrois Gothic SC', '1'),
(114, 'Carter One', 'Carter One', '1'),
(115, 'Caudex', 'Caudex', '1'),
(116, 'Cedarville Cursive', 'Cedarville Cursive', '1'),
(117, 'Ceviche One', 'Ceviche One', '1'),
(118, 'Changa One', 'Changa One', '1'),
(119, 'Chango', 'Chango', '1'),
(120, 'Chau Philomene One', 'Chau Philomene One', '1'),
(121, 'Chela One', 'Chela One', '1'),
(122, 'Chelsea Market', 'Chelsea Market', '1'),
(123, 'Chenla', 'Chenla', '1'),
(124, 'Cherry Cream Soda', 'Cherry Cream Soda', '1'),
(125, 'Cherry Swash', 'Cherry Swash', '1'),
(126, 'Chewy', 'Chewy', '1'),
(127, 'Chicle', 'Chicle', '1'),
(128, 'Chivo', 'Chivo', '1'),
(129, 'Cinzel', 'Cinzel', '1'),
(130, 'Cinzel Decorative', 'Cinzel Decorative', '1'),
(131, 'Clicker Script', 'Clicker Script', '1'),
(132, 'Coda', 'Coda', '1'),
(133, 'Coda Caption', 'Coda Caption', '1'),
(134, 'Codystar', 'Codystar', '1'),
(135, 'Combo', 'Combo', '1'),
(136, 'Comfortaa', 'Comfortaa', '1'),
(137, 'Coming Soon', 'Coming Soon', '1'),
(138, 'Concert One', 'Concert One', '1'),
(139, 'Condiment', 'Condiment', '1'),
(140, 'Content', 'Content', '1'),
(141, 'Contrail One', 'Contrail One', '1'),
(142, 'Convergence', 'Convergence', '1'),
(143, 'Cookie', 'Cookie', '1'),
(144, 'Copse', 'Copse', '1'),
(145, 'Corben', 'Corben', '1'),
(146, 'Courgette', 'Courgette', '1'),
(147, 'Cousine', 'Cousine', '1'),
(148, 'Coustard', 'Coustard', '1'),
(149, 'Covered By Your Grace', 'Covered By Your Grace', '1'),
(150, 'Crafty Girls', 'Crafty Girls', '1'),
(151, 'Creepster', 'Creepster', '1'),
(152, 'Crete Round', 'Crete Round', '1'),
(153, 'Crimson Text', 'Crimson Text', '1'),
(154, 'Croissant One', 'Croissant One', '1'),
(155, 'Crushed', 'Crushed', '1'),
(156, 'Cuprum', 'Cuprum', '1'),
(157, 'Cutive', 'Cutive', '1'),
(158, 'Cutive Mono', 'Cutive Mono', '1'),
(159, 'Damion', 'Damion', '1'),
(160, 'Dancing Script', 'Dancing Script', '1'),
(161, 'Dangrek', 'Dangrek', '1'),
(162, 'Dawning of a New Day', 'Dawning of a New Day', '1'),
(163, 'Days One', 'Days One', '1'),
(164, 'Delius', 'Delius', '1'),
(165, 'Delius Swash Caps', 'Delius Swash Caps', '1'),
(166, 'Delius Unicase', 'Delius Unicase', '1'),
(167, 'Della Respira', 'Della Respira', '1'),
(168, 'Denk One', 'Denk One', '1'),
(169, 'Devonshire', 'Devonshire', '1'),
(170, 'Didact Gothic', 'Didact Gothic', '1'),
(171, 'Diplomata', 'Diplomata', '1'),
(172, 'Diplomata SC', 'Diplomata SC', '1'),
(173, 'Domine', 'Domine', '1'),
(174, 'Donegal One', 'Donegal One', '1'),
(175, 'Doppio One', 'Doppio One', '1'),
(176, 'Dorsa', 'Dorsa', '1'),
(177, 'Dosis', 'Dosis', '1'),
(178, 'Dr Sugiyama', 'Dr Sugiyama', '1'),
(179, 'Droid Sans', 'Droid Sans', '1'),
(180, 'Droid Sans Mono', 'Droid Sans Mono', '1'),
(181, 'Droid Serif', 'Droid Serif', '1'),
(182, 'Duru Sans', 'Duru Sans', '1'),
(183, 'Dynalight', 'Dynalight', '1'),
(184, 'EB Garamond', 'EB Garamond', '1'),
(185, 'Eagle Lake', 'Eagle Lake', '1'),
(186, 'Eater', 'Eater', '1'),
(187, 'Economica', 'Economica', '1'),
(188, 'Electrolize', 'Electrolize', '1'),
(189, 'Elsie', 'Elsie', '1'),
(190, 'Elsie Swash Caps', 'Elsie Swash Caps', '1'),
(191, 'Emblema One', 'Emblema One', '1'),
(192, 'Emilys Candy', 'Emilys Candy', '1'),
(193, 'Engagement', 'Engagement', '1'),
(194, 'Englebert', 'Englebert', '1'),
(195, 'Enriqueta', 'Enriqueta', '1'),
(196, 'Erica One', 'Erica One', '1'),
(197, 'Esteban', 'Esteban', '1'),
(198, 'Euphoria Script', 'Euphoria Script', '1'),
(199, 'Ewert', 'Ewert', '1'),
(200, 'Exo', 'Exo', '1'),
(201, 'Expletus Sans', 'Expletus Sans', '1'),
(202, 'Fanwood Text', 'Fanwood Text', '1'),
(203, 'Fascinate', 'Fascinate', '1'),
(204, 'Fascinate Inline', 'Fascinate Inline', '1'),
(205, 'Faster One', 'Faster One', '1'),
(206, 'Fasthand', 'Fasthand', '1'),
(207, 'Federant', 'Federant', '1'),
(208, 'Federo', 'Federo', '1'),
(209, 'Felipa', 'Felipa', '1'),
(210, 'Fenix', 'Fenix', '1'),
(211, 'Finger Paint', 'Finger Paint', '1'),
(212, 'Fjalla One', 'Fjalla One', '1'),
(213, 'Fjord One', 'Fjord One', '1'),
(214, 'Flamenco', 'Flamenco', '1'),
(215, 'Flavors', 'Flavors', '1'),
(216, 'Fondamento', 'Fondamento', '1'),
(217, 'Fontdiner Swanky', 'Fontdiner Swanky', '1'),
(218, 'Forum', 'Forum', '1'),
(219, 'Francois One', 'Francois One', '1'),
(220, 'Freckle Face', 'Freckle Face', '1'),
(221, 'Fredericka the Great', 'Fredericka the Great', '1'),
(222, 'Fredoka One', 'Fredoka One', '1'),
(223, 'Freehand', 'Freehand', '1'),
(224, 'Fresca', 'Fresca', '1'),
(225, 'Frijole', 'Frijole', '1'),
(226, 'Fruktur', 'Fruktur', '1'),
(227, 'Fugaz One', 'Fugaz One', '1'),
(228, 'GFS Didot', 'GFS Didot', '1'),
(229, 'GFS Neohellenic', 'GFS Neohellenic', '1'),
(230, 'Gabriela', 'Gabriela', '1'),
(231, 'Gafata', 'Gafata', '1'),
(232, 'Galdeano', 'Galdeano', '1'),
(233, 'Galindo', 'Galindo', '1'),
(234, 'Gentium Basic', 'Gentium Basic', '1'),
(235, 'Gentium Book Basic', 'Gentium Book Basic', '1'),
(236, 'Geo', 'Geo', '1'),
(237, 'Geostar', 'Geostar', '1'),
(238, 'Geostar Fill', 'Geostar Fill', '1'),
(239, 'Germania One', 'Germania One', '1'),
(240, 'Gilda Display', 'Gilda Display', '1'),
(241, 'Give You Glory', 'Give You Glory', '1'),
(242, 'Glass Antiqua', 'Glass Antiqua', '1'),
(243, 'Glegoo', 'Glegoo', '1'),
(244, 'Gloria Hallelujah', 'Gloria Hallelujah', '1'),
(245, 'Goblin One', 'Goblin One', '1'),
(246, 'Gochi Hand', 'Gochi Hand', '1'),
(247, 'Gorditas', 'Gorditas', '1'),
(248, 'Goudy Bookletter 1911', 'Goudy Bookletter 1911', '1'),
(249, 'Graduate', 'Graduate', '1'),
(250, 'Grand Hotel', 'Grand Hotel', '1'),
(251, 'Gravitas One', 'Gravitas One', '1'),
(252, 'Great Vibes', 'Great Vibes', '1'),
(253, 'Griffy', 'Griffy', '1'),
(254, 'Gruppo', 'Gruppo', '1'),
(255, 'Gudea', 'Gudea', '1'),
(256, 'Habibi', 'Habibi', '1'),
(257, 'Hammersmith One', 'Hammersmith One', '1'),
(258, 'Hanalei', 'Hanalei', '1'),
(259, 'Hanalei Fill', 'Hanalei Fill', '1'),
(260, 'Handlee', 'Handlee', '1'),
(261, 'Hanuman', 'Hanuman', '1'),
(262, 'Happy Monkey', 'Happy Monkey', '1'),
(263, 'Headland One', 'Headland One', '1'),
(264, 'Henny Penny', 'Henny Penny', '1'),
(265, 'Herr Von Muellerhoff', 'Herr Von Muellerhoff', '1'),
(266, 'Holtwood One SC', 'Holtwood One SC', '1'),
(267, 'Homemade Apple', 'Homemade Apple', '1'),
(268, 'Homenaje', 'Homenaje', '1'),
(269, 'IM Fell DW Pica', 'IM Fell DW Pica', '1'),
(270, 'IM Fell DW Pica SC', 'IM Fell DW Pica SC', '1'),
(271, 'IM Fell Double Pica', 'IM Fell Double Pica', '1'),
(272, 'IM Fell Double Pica SC', 'IM Fell Double Pica SC', '1'),
(273, 'IM Fell English', 'IM Fell English', '1'),
(274, 'IM Fell English SC', 'IM Fell English SC', '1'),
(275, 'IM Fell French Canon', 'IM Fell French Canon', '1'),
(276, 'IM Fell French Canon SC', 'IM Fell French Canon SC', '1'),
(277, 'IM Fell Great Primer', 'IM Fell Great Primer', '1'),
(278, 'IM Fell Great Primer SC', 'IM Fell Great Primer SC', '1'),
(279, 'Iceberg', 'Iceberg', '1'),
(280, 'Iceland', 'Iceland', '1'),
(281, 'Imprima', 'Imprima', '1'),
(282, 'Inconsolata', 'Inconsolata', '1'),
(283, 'Inder', 'Inder', '1'),
(284, 'Indie Flower', 'Indie Flower', '1'),
(285, 'Inika', 'Inika', '1'),
(286, 'Irish Grover', 'Irish Grover', '1'),
(287, 'Istok Web', 'Istok Web', '1'),
(288, 'Italiana', 'Italiana', '1'),
(289, 'Italianno', 'Italianno', '1'),
(290, 'Jacques Francois', 'Jacques Francois', '1'),
(291, 'Jacques Francois Shadow', 'Jacques Francois Shadow', '1'),
(292, 'Jim Nightshade', 'Jim Nightshade', '1'),
(293, 'Jockey One', 'Jockey One', '1'),
(294, 'Jolly Lodger', 'Jolly Lodger', '1'),
(295, 'Josefin Sans', 'Josefin Sans', '1'),
(296, 'Josefin Slab', 'Josefin Slab', '1'),
(297, 'Joti One', 'Joti One', '1'),
(298, 'Judson', 'Judson', '1'),
(299, 'Julee', 'Julee', '1'),
(300, 'Julius Sans One', 'Julius Sans One', '1'),
(301, 'Junge', 'Junge', '1'),
(302, 'Jura', 'Jura', '1'),
(303, 'Just Another Hand', 'Just Another Hand', '1'),
(304, 'Just Me Again Down Here', 'Just Me Again Down Here', '1'),
(305, 'Kameron', 'Kameron', '1'),
(306, 'Karla', 'Karla', '1'),
(307, 'Kaushan Script', 'Kaushan Script', '1'),
(308, 'Kavoon', 'Kavoon', '1'),
(309, 'Keania One', 'Keania One', '1'),
(310, 'Kelly Slab', 'Kelly Slab', '1'),
(311, 'Kenia', 'Kenia', '1'),
(312, 'Khmer', 'Khmer', '1'),
(313, 'Kite One', 'Kite One', '1'),
(314, 'Knewave', 'Knewave', '1'),
(315, 'Kotta One', 'Kotta One', '1'),
(316, 'Koulen', 'Koulen', '1'),
(317, 'Kranky', 'Kranky', '1'),
(318, 'Kreon', 'Kreon', '1'),
(319, 'Kristi', 'Kristi', '1'),
(320, 'Krona One', 'Krona One', '1'),
(321, 'La Belle Aurore', 'La Belle Aurore', '1'),
(322, 'Lancelot', 'Lancelot', '1'),
(323, 'Lato', 'Lato', '1'),
(324, 'League Script', 'League Script', '1'),
(325, 'Leckerli One', 'Leckerli One', '1'),
(326, 'Ledger', 'Ledger', '1'),
(327, 'Lekton', 'Lekton', '1'),
(328, 'Lemon', 'Lemon', '1'),
(329, 'Libre Baskerville', 'Libre Baskerville', '1'),
(330, 'Life Savers', 'Life Savers', '1'),
(331, 'Lilita One', 'Lilita One', '1'),
(332, 'Limelight', 'Limelight', '1'),
(333, 'Linden Hill', 'Linden Hill', '1'),
(334, 'Lobster', 'Lobster', '1'),
(335, 'Lobster Two', 'Lobster Two', '1'),
(336, 'Londrina Outline', 'Londrina Outline', '1'),
(337, 'Londrina Shadow', 'Londrina Shadow', '1'),
(338, 'Londrina Sketch', 'Londrina Sketch', '1'),
(339, 'Londrina Solid', 'Londrina Solid', '1'),
(340, 'Lora', 'Lora', '1'),
(341, 'Love Ya Like A Sister', 'Love Ya Like A Sister', '1'),
(342, 'Loved by the King', 'Loved by the King', '1'),
(343, 'Lovers Quarrel', 'Lovers Quarrel', '1'),
(344, 'Luckiest Guy', 'Luckiest Guy', '1'),
(345, 'Lusitana', 'Lusitana', '1'),
(346, 'Lustria', 'Lustria', '1'),
(347, 'Macondo', 'Macondo', '1'),
(348, 'Macondo Swash Caps', 'Macondo Swash Caps', '1'),
(349, 'Magra', 'Magra', '1'),
(350, 'Maiden Orange', 'Maiden Orange', '1'),
(351, 'Mako', 'Mako', '1'),
(352, 'Marcellus', 'Marcellus', '1'),
(353, 'Marcellus SC', 'Marcellus SC', '1'),
(354, 'Marck Script', 'Marck Script', '1'),
(355, 'Margarine', 'Margarine', '1'),
(356, 'Marko One', 'Marko One', '1'),
(357, 'Marmelad', 'Marmelad', '1'),
(358, 'Marvel', 'Marvel', '1'),
(359, 'Mate', 'Mate', '1'),
(360, 'Mate SC', 'Mate SC', '1'),
(361, 'Maven Pro', 'Maven Pro', '1'),
(362, 'McLaren', 'McLaren', '1'),
(363, 'Meddon', 'Meddon', '1'),
(364, 'MedievalSharp', 'MedievalSharp', '1'),
(365, 'Medula One', 'Medula One', '1'),
(366, 'Megrim', 'Megrim', '1'),
(367, 'Meie Script', 'Meie Script', '1'),
(368, 'Merienda', 'Merienda', '1'),
(369, 'Merienda One', 'Merienda One', '1'),
(370, 'Merriweather', 'Merriweather', '1'),
(371, 'Merriweather Sans', 'Merriweather Sans', '1'),
(372, 'Metal', 'Metal', '1'),
(373, 'Metal Mania', 'Metal Mania', '1'),
(374, 'Metamorphous', 'Metamorphous', '1'),
(375, 'Metrophobic', 'Metrophobic', '1'),
(376, 'Michroma', 'Michroma', '1'),
(377, 'Milonga', 'Milonga', '1'),
(378, 'Miltonian', 'Miltonian', '1'),
(379, 'Miltonian Tattoo', 'Miltonian Tattoo', '1'),
(380, 'Miniver', 'Miniver', '1'),
(381, 'Miss Fajardose', 'Miss Fajardose', '1'),
(382, 'Modern Antiqua', 'Modern Antiqua', '1'),
(383, 'Molengo', 'Molengo', '1'),
(384, 'Molle', 'Molle', '1'),
(385, 'Monda', 'Monda', '1'),
(386, 'Monofett', 'Monofett', '1'),
(387, 'Monoton', 'Monoton', '1'),
(388, 'Monsieur La Doulaise', 'Monsieur La Doulaise', '1'),
(389, 'Montaga', 'Montaga', '1'),
(390, 'Montez', 'Montez', '1'),
(391, 'Montserrat', 'Montserrat', '1'),
(392, 'Montserrat Alternates', 'Montserrat Alternates', '1'),
(393, 'Montserrat Subrayada', 'Montserrat Subrayada', '1'),
(394, 'Moul', 'Moul', '1'),
(395, 'Moulpali', 'Moulpali', '1'),
(396, 'Mountains of Christmas', 'Mountains of Christmas', '1'),
(397, 'Mouse Memoirs', 'Mouse Memoirs', '1'),
(398, 'Mr Bedfort', 'Mr Bedfort', '1'),
(399, 'Mr Dafoe', 'Mr Dafoe', '1'),
(400, 'Mr De Haviland', 'Mr De Haviland', '1'),
(401, 'Mrs Saint Delafield', 'Mrs Saint Delafield', '1'),
(402, 'Mrs Sheppards', 'Mrs Sheppards', '1'),
(403, 'Muli', 'Muli', '1'),
(404, 'Mystery Quest', 'Mystery Quest', '1'),
(405, 'Neucha', 'Neucha', '1'),
(406, 'Neuton', 'Neuton', '1'),
(407, 'New Rocker', 'New Rocker', '1'),
(408, 'News Cycle', 'News Cycle', '1'),
(409, 'Niconne', 'Niconne', '1'),
(410, 'Nixie One', 'Nixie One', '1'),
(411, 'Nobile', 'Nobile', '1'),
(412, 'Nokora', 'Nokora', '1'),
(413, 'Norican', 'Norican', '1'),
(414, 'Nosifer', 'Nosifer', '1'),
(415, 'Nothing You Could Do', 'Nothing You Could Do', '1'),
(416, 'Noticia Text', 'Noticia Text', '1'),
(417, 'Nova Cut', 'Nova Cut', '1'),
(418, 'Nova Flat', 'Nova Flat', '1'),
(419, 'Nova Mono', 'Nova Mono', '1'),
(420, 'Nova Oval', 'Nova Oval', '1'),
(421, 'Nova Round', 'Nova Round', '1'),
(422, 'Nova Script', 'Nova Script', '1'),
(423, 'Nova Slim', 'Nova Slim', '1'),
(424, 'Nova Square', 'Nova Square', '1'),
(425, 'Numans', 'Numans', '1'),
(426, 'Nunito', 'Nunito', '1'),
(427, 'Odor Mean Chey', 'Odor Mean Chey', '1'),
(428, 'Offside', 'Offside', '1'),
(429, 'Old Standard TT', 'Old Standard TT', '1'),
(430, 'Oldenburg', 'Oldenburg', '1'),
(431, 'Oleo Script', 'Oleo Script', '1'),
(432, 'Oleo Script Swash Caps', 'Oleo Script Swash Caps', '1'),
(433, 'Open Sans', 'Open Sans', '1'),
(434, 'Open Sans Condensed', 'Open Sans Condensed', '1'),
(435, 'Oranienbaum', 'Oranienbaum', '1'),
(436, 'Orbitron', 'Orbitron', '1'),
(437, 'Oregano', 'Oregano', '1'),
(438, 'Orienta', 'Orienta', '1'),
(439, 'Original Surfer', 'Original Surfer', '1'),
(440, 'Oswald', 'Oswald', '1'),
(441, 'Over the Rainbow', 'Over the Rainbow', '1'),
(442, 'Overlock', 'Overlock', '1'),
(443, 'Overlock SC', 'Overlock SC', '1'),
(444, 'Ovo', 'Ovo', '1'),
(445, 'Oxygen', 'Oxygen', '1'),
(446, 'Oxygen Mono', 'Oxygen Mono', '1'),
(447, 'PT Mono', 'PT Mono', '1'),
(448, 'PT Sans', 'PT Sans', '1'),
(449, 'PT Sans Caption', 'PT Sans Caption', '1'),
(450, 'PT Sans Narrow', 'PT Sans Narrow', '1'),
(451, 'PT Serif', 'PT Serif', '1'),
(452, 'PT Serif Caption', 'PT Serif Caption', '1'),
(453, 'Pacifico', 'Pacifico', '1'),
(454, 'Paprika', 'Paprika', '1'),
(455, 'Parisienne', 'Parisienne', '1'),
(456, 'Passero One', 'Passero One', '1'),
(457, 'Passion One', 'Passion One', '1'),
(458, 'Patrick Hand', 'Patrick Hand', '1'),
(459, 'Patrick Hand SC', 'Patrick Hand SC', '1'),
(460, 'Patua One', 'Patua One', '1'),
(461, 'Paytone One', 'Paytone One', '1'),
(462, 'Peralta', 'Peralta', '1'),
(463, 'Permanent Marker', 'Permanent Marker', '1'),
(464, 'Petit Formal Script', 'Petit Formal Script', '1'),
(465, 'Petrona', 'Petrona', '1'),
(466, 'Philosopher', 'Philosopher', '1'),
(467, 'Piedra', 'Piedra', '1'),
(468, 'Pinyon Script', 'Pinyon Script', '1'),
(469, 'Pirata One', 'Pirata One', '1'),
(470, 'Plaster', 'Plaster', '1'),
(471, 'Play', 'Play', '1'),
(472, 'Playball', 'Playball', '1'),
(473, 'Playfair Display', 'Playfair Display', '1'),
(474, 'Playfair Display SC', 'Playfair Display SC', '1'),
(475, 'Podkova', 'Podkova', '1'),
(476, 'Poiret One', 'Poiret One', '1'),
(477, 'Poller One', 'Poller One', '1'),
(478, 'Poly', 'Poly', '1'),
(479, 'Pompiere', 'Pompiere', '1'),
(480, 'Pontano Sans', 'Pontano Sans', '1'),
(481, 'Port Lligat Sans', 'Port Lligat Sans', '1'),
(482, 'Port Lligat Slab', 'Port Lligat Slab', '1'),
(483, 'Prata', 'Prata', '1'),
(484, 'Preahvihear', 'Preahvihear', '1'),
(485, 'Press Start 2P', 'Press Start 2P', '1'),
(486, 'Princess Sofia', 'Princess Sofia', '1'),
(487, 'Prociono', 'Prociono', '1'),
(488, 'Prosto One', 'Prosto One', '1'),
(489, 'Puritan', 'Puritan', '1'),
(490, 'Purple Purse', 'Purple Purse', '1'),
(491, 'Quando', 'Quando', '1'),
(492, 'Quantico', 'Quantico', '1'),
(493, 'Quattrocento', 'Quattrocento', '1'),
(494, 'Quattrocento Sans', 'Quattrocento Sans', '1'),
(495, 'Questrial', 'Questrial', '1'),
(496, 'Quicksand', 'Quicksand', '1'),
(497, 'Quintessential', 'Quintessential', '1'),
(498, 'Qwigley', 'Qwigley', '1'),
(499, 'Racing Sans One', 'Racing Sans One', '1'),
(500, 'Radley', 'Radley', '1'),
(501, 'Raleway', 'Raleway', '1'),
(502, 'Raleway Dots', 'Raleway Dots', '1'),
(503, 'Rambla', 'Rambla', '1'),
(504, 'Rammetto One', 'Rammetto One', '1'),
(505, 'Ranchers', 'Ranchers', '1'),
(506, 'Rancho', 'Rancho', '1'),
(507, 'Rationale', 'Rationale', '1'),
(508, 'Redressed', 'Redressed', '1'),
(509, 'Reenie Beanie', 'Reenie Beanie', '1'),
(510, 'Revalia', 'Revalia', '1'),
(511, 'Ribeye', 'Ribeye', '1'),
(512, 'Ribeye Marrow', 'Ribeye Marrow', '1'),
(513, 'Righteous', 'Righteous', '1'),
(514, 'Risque', 'Risque', '1'),
(515, 'Roboto', 'Roboto', '1'),
(516, 'Roboto Condensed', 'Roboto Condensed', '1'),
(517, 'Rochester', 'Rochester', '1'),
(518, 'Rock Salt', 'Rock Salt', '1'),
(519, 'Rokkitt', 'Rokkitt', '1'),
(520, 'Romanesco', 'Romanesco', '1'),
(521, 'Ropa Sans', 'Ropa Sans', '1'),
(522, 'Rosario', 'Rosario', '1'),
(523, 'Rosarivo', 'Rosarivo', '1'),
(524, 'Rouge Script', 'Rouge Script', '1'),
(525, 'Ruda', 'Ruda', '1'),
(526, 'Rufina', 'Rufina', '1'),
(527, 'Ruge Boogie', 'Ruge Boogie', '1'),
(528, 'Ruluko', 'Ruluko', '1'),
(529, 'Rum Raisin', 'Rum Raisin', '1'),
(530, 'Ruslan Display', 'Ruslan Display', '1'),
(531, 'Russo One', 'Russo One', '1'),
(532, 'Ruthie', 'Ruthie', '1'),
(533, 'Rye', 'Rye', '1'),
(534, 'Sacramento', 'Sacramento', '1'),
(535, 'Sail', 'Sail', '1'),
(536, 'Salsa', 'Salsa', '1'),
(537, 'Sanchez', 'Sanchez', '1'),
(538, 'Sancreek', 'Sancreek', '1'),
(539, 'Sansita One', 'Sansita One', '1'),
(540, 'Sarina', 'Sarina', '1'),
(541, 'Satisfy', 'Satisfy', '1'),
(542, 'Scada', 'Scada', '1'),
(543, 'Schoolbell', 'Schoolbell', '1'),
(544, 'Seaweed Script', 'Seaweed Script', '1'),
(545, 'Sevillana', 'Sevillana', '1'),
(546, 'Seymour One', 'Seymour One', '1'),
(547, 'Shadows Into Light', 'Shadows Into Light', '1'),
(548, 'Shadows Into Light Two', 'Shadows Into Light Two', '1'),
(549, 'Shanti', 'Shanti', '1'),
(550, 'Share', 'Share', '1'),
(551, 'Share Tech', 'Share Tech', '1'),
(552, 'Share Tech Mono', 'Share Tech Mono', '1'),
(553, 'Shojumaru', 'Shojumaru', '1'),
(554, 'Short Stack', 'Short Stack', '1'),
(555, 'Siemreap', 'Siemreap', '1'),
(556, 'Sigmar One', 'Sigmar One', '1'),
(557, 'Signika', 'Signika', '1'),
(558, 'Signika Negative', 'Signika Negative', '1'),
(559, 'Simonetta', 'Simonetta', '1'),
(560, 'Sintony', 'Sintony', '1'),
(561, 'Sirin Stencil', 'Sirin Stencil', '1'),
(562, 'Six Caps', 'Six Caps', '1'),
(563, 'Skranji', 'Skranji', '1'),
(564, 'Slackey', 'Slackey', '1'),
(565, 'Smokum', 'Smokum', '1'),
(566, 'Smythe', 'Smythe', '1'),
(567, 'Sniglet', 'Sniglet', '1'),
(568, 'Snippet', 'Snippet', '1'),
(569, 'Snowburst One', 'Snowburst One', '1'),
(570, 'Sofadi One', 'Sofadi One', '1'),
(571, 'Sofia', 'Sofia', '1'),
(572, 'Sonsie One', 'Sonsie One', '1'),
(573, 'Sorts Mill Goudy', 'Sorts Mill Goudy', '1'),
(574, 'Source Code Pro', 'Source Code Pro', '1'),
(575, 'Source Sans Pro', 'Source Sans Pro', '1'),
(576, 'Special Elite', 'Special Elite', '1'),
(577, 'Spicy Rice', 'Spicy Rice', '1'),
(578, 'Spinnaker', 'Spinnaker', '1'),
(579, 'Spirax', 'Spirax', '1'),
(580, 'Squada One', 'Squada One', '1'),
(581, 'Stalemate', 'Stalemate', '1'),
(582, 'Stalinist One', 'Stalinist One', '1'),
(583, 'Stardos Stencil', 'Stardos Stencil', '1'),
(584, 'Stint Ultra Condensed', 'Stint Ultra Condensed', '1'),
(585, 'Stint Ultra Expanded', 'Stint Ultra Expanded', '1'),
(586, 'Stoke', 'Stoke', '1'),
(587, 'Strait', 'Strait', '1'),
(588, 'Sue Ellen Francisco', 'Sue Ellen Francisco', '1'),
(589, 'Sunshiney', 'Sunshiney', '1'),
(590, 'Supermercado One', 'Supermercado One', '1'),
(591, 'Suwannaphum', 'Suwannaphum', '1'),
(592, 'Swanky and Moo Moo', 'Swanky and Moo Moo', '1'),
(593, 'Syncopate', 'Syncopate', '1'),
(594, 'Tangerine', 'Tangerine', '1'),
(595, 'Taprom', 'Taprom', '1'),
(596, 'Tauri', 'Tauri', '1'),
(597, 'Telex', 'Telex', '1'),
(598, 'Tenor Sans', 'Tenor Sans', '1'),
(599, 'Text Me One', 'Text Me One', '1'),
(600, 'The Girl Next Door', 'The Girl Next Door', '1'),
(601, 'Tienne', 'Tienne', '1'),
(602, 'Tinos', 'Tinos', '1'),
(603, 'Titan One', 'Titan One', '1'),
(604, 'Titillium Web', 'Titillium Web', '1'),
(605, 'Trade Winds', 'Trade Winds', '1'),
(606, 'Trocchi', 'Trocchi', '1'),
(607, 'Trochut', 'Trochut', '1'),
(608, 'Trykker', 'Trykker', '1'),
(609, 'Tulpen One', 'Tulpen One', '1'),
(610, 'Ubuntu', 'Ubuntu', '1'),
(611, 'Ubuntu Condensed', 'Ubuntu Condensed', '1'),
(612, 'Ubuntu Mono', 'Ubuntu Mono', '1'),
(613, 'Ultra', 'Ultra', '1'),
(614, 'Uncial Antiqua', 'Uncial Antiqua', '1'),
(615, 'Underdog', 'Underdog', '1'),
(616, 'Unica One', 'Unica One', '1'),
(617, 'UnifrakturCook', 'UnifrakturCook', '1'),
(618, 'UnifrakturMaguntia', 'UnifrakturMaguntia', '1'),
(619, 'Unkempt', 'Unkempt', '1'),
(620, 'Unlock', 'Unlock', '1'),
(621, 'Unna', 'Unna', '1'),
(622, 'VT323', 'VT323', '1'),
(623, 'Vampiro One', 'Vampiro One', '1'),
(624, 'Varela', 'Varela', '1'),
(625, 'Varela Round', 'Varela Round', '1'),
(626, 'Vast Shadow', 'Vast Shadow', '1'),
(627, 'Vibur', 'Vibur', '1'),
(628, 'Vidaloka', 'Vidaloka', '1'),
(629, 'Viga', 'Viga', '1'),
(630, 'Voces', 'Voces', '1'),
(631, 'Volkhov', 'Volkhov', '1'),
(632, 'Vollkorn', 'Vollkorn', '1'),
(633, 'Voltaire', 'Voltaire', '1'),
(634, 'Waiting for the Sunrise', 'Waiting for the Sunrise', '1'),
(635, 'Wallpoet', 'Wallpoet', '1'),
(636, 'Walter Turncoat', 'Walter Turncoat', '1'),
(637, 'Warnes', 'Warnes', '1'),
(638, 'Wellfleet', 'Wellfleet', '1'),
(639, 'Wendy One', 'Wendy One', '1'),
(640, 'Wire One', 'Wire One', '1'),
(641, 'Yanone Kaffeesatz', 'Yanone Kaffeesatz', '1'),
(642, 'Yellowtail', 'Yellowtail', '1'),
(643, 'Yeseva One', 'Yeseva One', '1'),
(644, 'Yesteryear', 'Yesteryear', '1'),
(645, 'Zeyada', 'Zeyada', '1');

-- --------------------------------------------------------

--
-- Table structure for table `industry_type`
--

CREATE TABLE `industry_type` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industry_type`
--

INSERT INTO `industry_type` (`id`, `name`, `status`) VALUES
(1, 'Art and Design', '1'),
(2, 'Auto and Vehicles', '1'),
(3, 'Beauty', '1'),
(4, 'Books and Reference', '1'),
(5, 'Business', '1'),
(6, 'Comics', '1'),
(7, 'Communication', '1'),
(8, 'Dating', '1'),
(9, 'Education', '1'),
(10, 'Entertainment', '1'),
(11, 'Events', '1'),
(12, 'Finance', '1'),
(13, 'Food and Drink', '1'),
(14, 'Health and Fitness', '1'),
(15, 'House and Home', '1'),
(16, 'Libraries and Demo', '1'),
(17, 'Lifestyle', '1'),
(18, 'Maps and Navigation', '1'),
(19, 'Medical', '1'),
(20, 'Music and Audio', '1'),
(21, 'News and Magazines', '1'),
(22, 'Parenting', '1'),
(23, 'Personalization', '1'),
(24, 'Photography', '1'),
(25, 'Productivity', '1'),
(26, 'Shopping', '1'),
(27, 'Social', '1'),
(28, 'Sports', '1'),
(29, 'Tools', '1'),
(30, 'Travel and Local', '1'),
(31, 'Video Players and Editors', '1'),
(32, 'Weather', '1');

-- --------------------------------------------------------

--
-- Table structure for table `language_type`
--

CREATE TABLE `language_type` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_type`
--

INSERT INTO `language_type` (`id`, `name`, `status`) VALUES
(1, 'English (U.S.)', '1'),
(2, 'Chinese (Traditional)', '1'),
(3, 'Danish', '1'),
(4, 'Dutch', '1'),
(5, 'English (Australia)', '1'),
(6, 'English (Canada)', '1'),
(7, 'English (U.K.)', '1'),
(8, 'Chinese (Simplified)', '1'),
(9, 'Finnish', '1'),
(10, 'French', '1'),
(11, 'French (Canada)', '1'),
(12, 'German', '1'),
(13, 'Greek', '1'),
(14, 'Indonesian', '1'),
(15, 'Italian', '1'),
(16, 'Japanese', '1'),
(17, 'Korean', '1'),
(18, 'Malay', '1'),
(19, 'Norwegian', '1'),
(20, 'Portuguese (Brazil)', '1'),
(21, 'Portuguese (Portugal)', '1'),
(22, 'Russian', '1'),
(23, 'Spanish (Mexico)', '1'),
(24, 'Spanish (Spain)', '1'),
(25, 'Swedish', '1'),
(26, 'Thai', '1'),
(27, 'Turkish', '1'),
(28, 'Vietnamese', '1');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `point` int(11) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `notification` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_css`
--

CREATE TABLE `menu_css` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `css_properties` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_icon`
--

CREATE TABLE `menu_icon` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `icon_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_icon`
--

INSERT INTO `menu_icon` (`id`, `icon_name`, `name`, `status`) VALUES
(1, 'ios-add', 'ios-add', '1'),
(2, 'ios-add-circle', 'ios-add-circle', '1'),
(3, 'ios-alarm', 'ios-alarm', '1'),
(4, 'ios-albums', 'ios-albums', '1'),
(5, 'ios-alert', 'ios-alert', '1'),
(6, 'ios-american-football', 'ios-american-football', '1'),
(7, 'ios-analytics', 'ios-analytics', '1'),
(8, 'logo-android', 'logo-android', '1'),
(9, 'logo-angular', 'logo-angular', '1'),
(10, 'ios-aperture', 'ios-aperture', '1'),
(11, 'logo-apple', 'logo-apple', '1'),
(12, 'ios-apps', 'ios-apps', '1'),
(13, 'ios-appstore', 'ios-appstore', '1'),
(14, 'ios-archive', 'ios-archive', '1'),
(15, 'ios-arrow-back', 'ios-arrow-back', '1'),
(16, 'ios-arrow-down', 'ios-arrow-down', '1'),
(17, 'ios-arrow-dropdown', 'ios-arrow-dropdown', '1'),
(18, 'ios-arrow-dropdown-circle', 'ios-arrow-dropdown-circle', '1'),
(19, 'ios-arrow-dropleft', 'ios-arrow-dropleft', '1'),
(20, 'ios-arrow-dropleft-circle', 'ios-arrow-dropleft-circle', '1'),
(21, 'ios-arrow-dropright', 'ios-arrow-dropright', '1'),
(22, 'ios-arrow-dropright-circle', 'ios-arrow-dropright-circle', '1'),
(23, 'ios-arrow-dropup', 'ios-arrow-dropup', '1'),
(24, 'ios-arrow-dropup-circle', 'ios-arrow-dropup-circle', '1'),
(25, 'ios-arrow-forward', 'ios-arrow-forward', '1'),
(26, 'ios-arrow-round-back', 'ios-arrow-round-back', '1'),
(27, 'ios-arrow-round-down', 'ios-arrow-round-down', '1'),
(28, 'ios-arrow-round-forward', 'ios-arrow-round-forward', '1'),
(29, 'ios-arrow-round-up', 'ios-arrow-round-up', '1'),
(30, 'ios-arrow-up', 'ios-arrow-up', '1'),
(31, 'ios-at', 'ios-at', '1'),
(32, 'ios-attach', 'ios-attach', '1'),
(33, 'ios-backspace', 'ios-backspace', '1'),
(34, 'ios-barcode', 'ios-barcode', '1'),
(35, 'ios-baseball', 'ios-baseball', '1'),
(36, 'ios-basket', 'ios-basket', '1'),
(37, 'ios-basketball', 'ios-basketball', '1'),
(38, 'ios-battery-charging', 'ios-battery-charging', '1'),
(39, 'ios-battery-dead', 'ios-battery-dead', '1'),
(40, 'ios-battery-full', 'ios-battery-full', '1'),
(41, 'ios-beaker', 'ios-beaker', '1'),
(42, 'ios-beer', 'ios-beer', '1'),
(43, 'ios-bicycle', 'ios-bicycle', '1'),
(44, 'logo-bitcoin', 'logo-bitcoin', '1'),
(45, 'ios-bluetooth', 'ios-bluetooth', '1'),
(46, 'ios-boat', 'ios-boat', '1'),
(47, 'ios-body', 'ios-body', '1'),
(48, 'ios-bonfire', 'ios-bonfire', '1'),
(49, 'ios-book', 'ios-book', '1'),
(50, 'ios-bookmark', 'ios-bookmark', '1'),
(51, 'ios-bookmarks', 'ios-bookmarks', '1'),
(52, 'ios-bowtie', 'ios-bowtie', '1'),
(53, 'ios-briefcase', 'ios-briefcase', '1'),
(54, 'ios-browsers', 'ios-browsers', '1'),
(55, 'ios-brush', 'ios-brush', '1'),
(56, 'logo-buffer', 'logo-buffer', '1'),
(57, 'ios-bug', 'ios-bug', '1'),
(58, 'ios-build', 'ios-build', '1'),
(59, 'ios-bulb', 'ios-bulb', '1'),
(60, 'ios-bus', 'ios-bus', '1'),
(61, 'ios-cafe', 'ios-cafe', '1'),
(62, 'ios-calculator', 'ios-calculator', '1'),
(63, 'ios-calendar', 'ios-calendar', '1'),
(64, 'ios-call', 'ios-call', '1'),
(65, 'ios-camera', 'ios-camera', '1'),
(66, 'ios-car', 'ios-car', '1'),
(67, 'ios-card', 'ios-card', '1'),
(68, 'ios-cart', 'ios-cart', '1'),
(69, 'ios-cash', 'ios-cash', '1'),
(70, 'ios-chatboxes', 'ios-chatboxes', '1'),
(71, 'ios-chatbubbles', 'ios-chatbubbles', '1'),
(72, 'ios-checkbox', 'ios-checkbox', '1'),
(73, 'ios-checkbox-outline', 'ios-checkbox-outline', '1'),
(74, 'ios-checkmark', 'ios-checkmark', '1'),
(75, 'ios-checkmark-circle', 'ios-checkmark-circle', '1'),
(76, 'ios-checkmark-circle-outline', 'ios-checkmark-circle-outline', '1'),
(77, 'logo-chrome', 'logo-chrome', '1'),
(78, 'ios-clipboard', 'ios-clipboard', '1'),
(79, 'ios-clock', 'ios-clock', '1'),
(80, 'ios-close', 'ios-close', '1'),
(81, 'ios-close-circle', 'ios-close-circle', '1'),
(82, 'ios-closed-captioning', 'ios-closed-captioning', '1'),
(83, 'ios-cloud', 'ios-cloud', '1'),
(84, 'ios-cloud-circle', 'ios-cloud-circle', '1'),
(85, 'ios-cloud-done', 'ios-cloud-done', '1'),
(86, 'ios-cloud-download', 'ios-cloud-download', '1'),
(87, 'ios-cloud-outline', 'ios-cloud-outline', '1'),
(88, 'ios-cloud-upload', 'ios-cloud-upload', '1'),
(89, 'ios-cloudy', 'ios-cloudy', '1'),
(90, 'ios-cloudy-night', 'ios-cloudy-night', '1'),
(91, 'ios-code', 'ios-code', '1'),
(92, 'ios-code-download', 'ios-code-download', '1'),
(93, 'ios-code-working', 'ios-code-working', '1'),
(94, 'logo-codepen', 'logo-codepen', '1'),
(95, 'ios-cog', 'ios-cog', '1'),
(96, 'ios-color-fill', 'ios-color-fill', '1'),
(97, 'ios-color-filter', 'ios-color-filter', '1'),
(98, 'ios-color-palette', 'ios-color-palette', '1'),
(99, 'ios-color-wand', 'ios-color-wand', '1'),
(100, 'ios-compass', 'ios-compass', '1'),
(101, 'ios-construct', 'ios-construct', '1'),
(102, 'ios-contact', 'ios-contact', '1'),
(103, 'ios-contacts', 'ios-contacts', '1'),
(104, 'ios-contract', 'ios-contract', '1'),
(105, 'ios-contrast', 'ios-contrast', '1'),
(106, 'ios-copy', 'ios-copy', '1'),
(107, 'ios-create', 'ios-create', '1'),
(108, 'ios-crop', 'ios-crop', '1'),
(109, 'logo-css3', 'logo-css3', '1'),
(110, 'ios-cube', 'ios-cube', '1'),
(111, 'ios-cut', 'ios-cut', '1'),
(112, 'logo-designernews', 'logo-designernews', '1'),
(113, 'ios-desktop', 'ios-desktop', '1'),
(114, 'ios-disc', 'ios-disc', '1'),
(115, 'ios-document', 'ios-document', '1'),
(116, 'ios-done-all', 'ios-done-all', '1'),
(117, 'ios-download', 'ios-download', '1'),
(118, 'logo-dribbble', 'logo-dribbble', '1'),
(119, 'logo-dropbox', 'logo-dropbox', '1'),
(120, 'ios-easel', 'ios-easel', '1'),
(121, 'ios-egg', 'ios-egg', '1'),
(122, 'logo-euro', 'logo-euro', '1'),
(123, 'ios-exit', 'ios-exit', '1'),
(124, 'ios-expand', 'ios-expand', '1'),
(125, 'ios-eye', 'ios-eye', '1'),
(126, 'ios-eye-off', 'ios-eye-off', '1'),
(127, 'logo-facebook', 'logo-facebook', '1'),
(128, 'ios-fastforward', 'ios-fastforward', '1'),
(129, 'ios-female', 'ios-female', '1'),
(130, 'ios-filing', 'ios-filing', '1'),
(131, 'ios-film', 'ios-film', '1'),
(132, 'ios-finger-print', 'ios-finger-print', '1'),
(133, 'ios-flag', 'ios-flag', '1'),
(134, 'ios-flame', 'ios-flame', '1'),
(135, 'ios-flash', 'ios-flash', '1'),
(136, 'ios-flask', 'ios-flask', '1'),
(137, 'ios-flower', 'ios-flower', '1'),
(138, 'ios-folder', 'ios-folder', '1'),
(139, 'ios-folder-open', 'ios-folder-open', '1'),
(140, 'ios-football', 'ios-football', '1'),
(141, 'logo-foursquare', 'logo-foursquare', '1'),
(142, 'logo-freebsd-devil', 'logo-freebsd-devil', '1'),
(143, 'ios-funnel', 'ios-funnel', '1'),
(144, 'ios-game-controller-a', 'ios-game-controller-a', '1'),
(145, 'ios-game-controller-b', 'ios-game-controller-b', '1'),
(146, 'ios-git-branch', 'ios-git-branch', '1'),
(147, 'ios-git-commit', 'ios-git-commit', '1'),
(148, 'ios-git-compare', 'ios-git-compare', '1'),
(149, 'ios-git-merge', 'ios-git-merge', '1'),
(150, 'ios-git-network', 'ios-git-network', '1'),
(151, 'ios-git-pull-request', 'ios-git-pull-request', '1'),
(152, 'logo-github', 'logo-github', '1'),
(153, 'ios-glasses', 'ios-glasses', '1'),
(154, 'ios-globe', 'ios-globe', '1'),
(155, 'logo-google', 'logo-google', '1'),
(156, 'logo-googleplus', 'logo-googleplus', '1'),
(157, 'ios-grid', 'ios-grid', '1'),
(158, 'logo-hackernews', 'logo-hackernews', '1'),
(159, 'ios-hammer', 'ios-hammer', '1'),
(160, 'ios-hand', 'ios-hand', '1'),
(161, 'ios-happy', 'ios-happy', '1'),
(162, 'ios-headset', 'ios-headset', '1'),
(163, 'ios-heart', 'ios-heart', '1'),
(164, 'ios-heart-outline', 'ios-heart-outline', '1'),
(165, 'ios-help', 'ios-help', '1'),
(166, 'ios-help-buoy', 'ios-help-buoy', '1'),
(167, 'ios-help-circle', 'ios-help-circle', '1'),
(168, 'ios-home', 'ios-home', '1'),
(169, 'logo-html5', 'logo-html5', '1'),
(170, 'ios-ice-cream', 'ios-ice-cream', '1'),
(171, 'ios-image', 'ios-image', '1'),
(172, 'ios-images', 'ios-images', '1'),
(173, 'ios-infinite', 'ios-infinite', '1'),
(174, 'ios-information', 'ios-information', '1'),
(175, 'ios-information-circle', 'ios-information-circle', '1'),
(176, 'logo-instagram', 'logo-instagram', '1'),
(177, 'ios-ionic', 'ios-ionic', '1'),
(178, 'ios-ionitron', 'ios-ionitron', '1'),
(179, 'logo-javascript', 'logo-javascript', '1'),
(180, 'ios-jet', 'ios-jet', '1'),
(181, 'ios-key', 'ios-key', '1'),
(182, 'ios-keypad', 'ios-keypad', '1'),
(183, 'ios-laptop', 'ios-laptop', '1'),
(184, 'ios-leaf', 'ios-leaf', '1'),
(185, 'ios-link', 'ios-link', '1'),
(186, 'logo-linkedin', 'logo-linkedin', '1'),
(187, 'ios-list', 'ios-list', '1'),
(188, 'ios-list-box', 'ios-list-box', '1'),
(189, 'ios-locate', 'ios-locate', '1'),
(190, 'ios-lock', 'ios-lock', '1'),
(191, 'ios-log-in', 'ios-log-in', '1'),
(192, 'ios-log-out', 'ios-log-out', '1'),
(193, 'ios-magnet', 'ios-magnet', '1'),
(194, 'ios-mail', 'ios-mail', '1'),
(195, 'ios-mail-open', 'ios-mail-open', '1'),
(196, 'ios-male', 'ios-male', '1'),
(197, 'ios-man', 'ios-man', '1'),
(198, 'ios-map', 'ios-map', '1'),
(199, 'logo-markdown', 'logo-markdown', '1'),
(200, 'ios-medal', 'ios-medal', '1'),
(201, 'ios-medical', 'ios-medical', '1'),
(202, 'ios-medkit', 'ios-medkit', '1'),
(203, 'ios-megaphone', 'ios-megaphone', '1'),
(204, 'ios-menu', 'ios-menu', '1'),
(205, 'ios-mic', 'ios-mic', '1'),
(206, 'ios-mic-off', 'ios-mic-off', '1'),
(207, 'ios-microphone', 'ios-microphone', '1'),
(208, 'ios-moon', 'ios-moon', '1'),
(209, 'ios-more', 'ios-more', '1'),
(210, 'ios-move', 'ios-move', '1'),
(211, 'ios-musical-note', 'ios-musical-note', '1'),
(212, 'ios-musical-notes', 'ios-musical-notes', '1'),
(213, 'ios-navigate', 'ios-navigate', '1'),
(214, 'ios-no-smoking', 'ios-no-smoking', '1'),
(215, 'logo-nodejs', 'logo-nodejs', '1'),
(216, 'ios-notifications', 'ios-notifications', '1'),
(217, 'ios-notifications-off', 'ios-notifications-off', '1'),
(218, 'ios-notifications-outline', 'ios-notifications-outline', '1'),
(219, 'ios-nuclear', 'ios-nuclear', '1'),
(220, 'ios-nutrition', 'ios-nutrition', '1'),
(221, 'logo-octocat', 'logo-octocat', '1'),
(222, 'ios-open', 'ios-open', '1'),
(223, 'ios-options', 'ios-options', '1'),
(224, 'ios-outlet', 'ios-outlet', '1'),
(225, 'ios-paper', 'ios-paper', '1'),
(226, 'ios-paper-plane', 'ios-paper-plane', '1'),
(227, 'ios-partly-sunny', 'ios-partly-sunny', '1'),
(228, 'ios-pause', 'ios-pause', '1'),
(229, 'ios-paw', 'ios-paw', '1'),
(230, 'ios-people', 'ios-people', '1'),
(231, 'ios-person', 'ios-person', '1'),
(232, 'ios-person-add', 'ios-person-add', '1'),
(233, 'ios-phone-landscape', 'ios-phone-landscape', '1'),
(234, 'ios-phone-portrait', 'ios-phone-portrait', '1'),
(235, 'ios-photos', 'ios-photos', '1'),
(236, 'ios-pie', 'ios-pie', '1'),
(237, 'ios-pin', 'ios-pin', '1'),
(238, 'ios-pint', 'ios-pint', '1'),
(239, 'logo-pinterest', 'logo-pinterest', '1'),
(240, 'ios-pizza', 'ios-pizza', '1'),
(241, 'ios-plane', 'ios-plane', '1'),
(242, 'ios-planet', 'ios-planet', '1'),
(243, 'ios-play', 'ios-play', '1'),
(244, 'logo-playstation', 'logo-playstation', '1'),
(245, 'ios-podium', 'ios-podium', '1'),
(246, 'ios-power', 'ios-power', '1'),
(247, 'ios-pricetag', 'ios-pricetag', '1'),
(248, 'ios-pricetags', 'ios-pricetags', '1'),
(249, 'ios-print', 'ios-print', '1'),
(250, 'ios-pulse', 'ios-pulse', '1'),
(251, 'logo-python', 'logo-python', '1'),
(252, 'ios-qr-scanner', 'ios-qr-scanner', '1'),
(253, 'ios-quote', 'ios-quote', '1'),
(254, 'ios-radio', 'ios-radio', '1'),
(255, 'ios-radio-button-off', 'ios-radio-button-off', '1'),
(256, 'ios-radio-button-on', 'ios-radio-button-on', '1'),
(257, 'ios-rainy', 'ios-rainy', '1'),
(258, 'ios-recording', 'ios-recording', '1'),
(259, 'logo-reddit', 'logo-reddit', '1'),
(260, 'ios-redo', 'ios-redo', '1'),
(261, 'ios-refresh', 'ios-refresh', '1'),
(262, 'ios-refresh-circle', 'ios-refresh-circle', '1'),
(263, 'ios-remove', 'ios-remove', '1'),
(264, 'ios-remove-circle', 'ios-remove-circle', '1'),
(265, 'ios-reorder', 'ios-reorder', '1'),
(266, 'ios-repeat', 'ios-repeat', '1'),
(267, 'ios-resize', 'ios-resize', '1'),
(268, 'ios-restaurant', 'ios-restaurant', '1'),
(269, 'ios-return-left', 'ios-return-left', '1'),
(270, 'ios-return-right', 'ios-return-right', '1'),
(271, 'ios-reverse-camera', 'ios-reverse-camera', '1'),
(272, 'ios-rewind', 'ios-rewind', '1'),
(273, 'ios-ribbon', 'ios-ribbon', '1'),
(274, 'ios-rose', 'ios-rose', '1'),
(275, 'logo-rss', 'logo-rss', '1'),
(276, 'ios-sad', 'ios-sad', '1'),
(277, 'logo-sass', 'logo-sass', '1'),
(278, 'ios-school', 'ios-school', '1'),
(279, 'ios-search', 'ios-search', '1'),
(280, 'ios-send', 'ios-send', '1'),
(281, 'ios-settings', 'ios-settings', '1'),
(282, 'ios-share', 'ios-share', '1'),
(283, 'ios-share-alt', 'ios-share-alt', '1'),
(284, 'ios-shirt', 'ios-shirt', '1'),
(285, 'ios-shuffle', 'ios-shuffle', '1'),
(286, 'ios-skip-backward', 'ios-skip-backward', '1'),
(287, 'ios-skip-forward', 'ios-skip-forward', '1'),
(288, 'logo-skype', 'logo-skype', '1'),
(289, 'logo-snapchat', 'logo-snapchat', '1'),
(290, 'ios-snow', 'ios-snow', '1'),
(291, 'ios-speedometer', 'ios-speedometer', '1'),
(292, 'ios-square', 'ios-square', '1'),
(293, 'ios-square-outline', 'ios-square-outline', '1'),
(294, 'ios-star', 'ios-star', '1'),
(295, 'ios-star-half', 'ios-star-half', '1'),
(296, 'ios-star-outline', 'ios-star-outline', '1'),
(297, 'ios-stats', 'ios-stats', '1'),
(298, 'logo-steam', 'logo-steam', '1'),
(299, 'ios-stopwatch', 'ios-stopwatch', '1'),
(300, 'ios-subway', 'ios-subway', '1'),
(301, 'ios-sunny', 'ios-sunny', '1'),
(302, 'ios-swap', 'ios-swap', '1'),
(303, 'ios-switch', 'ios-switch', '1'),
(304, 'ios-sync', 'ios-sync', '1'),
(305, 'ios-tablet-landscape', 'ios-tablet-landscape', '1'),
(306, 'ios-tablet-portrait', 'ios-tablet-portrait', '1'),
(307, 'ios-tennisball', 'ios-tennisball', '1'),
(308, 'ios-text', 'ios-text', '1'),
(309, 'ios-thermometer', 'ios-thermometer', '1'),
(310, 'ios-thumbs-down', 'ios-thumbs-down', '1'),
(311, 'ios-thumbs-up', 'ios-thumbs-up', '1'),
(312, 'ios-thunderstorm', 'ios-thunderstorm', '1'),
(313, 'ios-time', 'ios-time', '1'),
(314, 'ios-timer', 'ios-timer', '1'),
(315, 'ios-train', 'ios-train', '1'),
(316, 'ios-transgender', 'ios-transgender', '1'),
(317, 'ios-trash', 'ios-trash', '1'),
(318, 'ios-trending-down', 'ios-trending-down', '1'),
(319, 'ios-trending-up', 'ios-trending-up', '1'),
(320, 'ios-trophy', 'ios-trophy', '1'),
(321, 'logo-tumblr', 'logo-tumblr', '1'),
(322, 'logo-tux', 'logo-tux', '1'),
(323, 'logo-twitch', 'logo-twitch', '1'),
(324, 'logo-twitter', 'logo-twitter', '1'),
(325, 'ios-umbrella', 'ios-umbrella', '1'),
(326, 'ios-undo', 'ios-undo', '1'),
(327, 'ios-unlock', 'ios-unlock', '1'),
(328, 'logo-usd', 'logo-usd', '1'),
(329, 'ios-videocam', 'ios-videocam', '1'),
(330, 'logo-vimeo', 'logo-vimeo', '1'),
(331, 'ios-volume-down', 'ios-volume-down', '1'),
(332, 'ios-volume-mute', 'ios-volume-mute', '1'),
(333, 'ios-volume-off', 'ios-volume-off', '1'),
(334, 'ios-volume-up', 'ios-volume-up', '1'),
(335, 'ios-walk', 'ios-walk', '1'),
(336, 'ios-warning', 'ios-warning', '1'),
(337, 'ios-watch', 'ios-watch', '1'),
(338, 'ios-water', 'ios-water', '1'),
(339, 'logo-whatsapp', 'logo-whatsapp', '1'),
(340, 'ios-wifi', 'ios-wifi', '1'),
(341, 'logo-windows', 'logo-windows', '1'),
(342, 'ios-wine', 'ios-wine', '1'),
(343, 'ios-woman', 'ios-woman', '1'),
(344, 'logo-wordpress', 'logo-wordpress', '1'),
(345, 'logo-xbox', 'logo-xbox', '1'),
(346, 'logo-yahoo', 'logo-yahoo', '1'),
(347, 'logo-yen', 'logo-yen', '1'),
(348, 'logo-youtube', 'logo-youtube', '1');

-- --------------------------------------------------------

--
-- Table structure for table `menu_type`
--

CREATE TABLE `menu_type` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_type_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_type`
--

INSERT INTO `menu_type` (`id`, `name`, `slug`, `menu_type_icon`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Animated Panels', 'animated_panels', 'fa fa-bars', NULL, NULL, '1'),
(2, 'Video', 'video', 'fa fa-film', NULL, NULL, '1'),
(3, 'YouTube Playlist', 'youtube_playlist', 'fa fa-youtube-play', NULL, NULL, '1'),
(4, 'List Menu', 'list_menu', 'fa fa-list', NULL, NULL, '1'),
(5, 'RSS Feed', 'rss_feed', 'fa fa-rss', NULL, NULL, '1'),
(6, 'Notifications', 'notifications', 'fa fa-bell-o', NULL, NULL, '1'),
(7, 'Google/Picasa Album', 'picasa_album', 'fa fa-product-hunt', NULL, NULL, '1'),
(8, 'PDF', 'pdf', 'fa fa-file-powerpoint-o', NULL, NULL, '1'),
(9, 'Website', 'website', 'icmn-sphere', NULL, NULL, '1'),
(10, 'App Tutorial', 'tutorial', 'fa fa-file-text', NULL, NULL, '1'),
(11, 'Contact Builder', 'contact', 'fa fa-drivers-license', NULL, NULL, '1'),
(12, 'Content Editor', 'content_editor', 'fa fa-edit', NULL, NULL, '1');

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
(1, '2017_06_02_121711_role_table', 1),
(2, '2017_06_14_045657_create_new_users_table', 1),
(3, '2017_07_21_091626_create_email_template_table', 1),
(4, '2017_07_25_084220_app_section_table', 1),
(5, '2017_07_25_085151_app_basic_table', 1),
(6, '2017_07_25_093008_app_basic_detail_table', 1),
(7, '2017_08_21_075935_create_app_assign_user', 1),
(8, '2017_08_25_130623_create_menu_type_table', 1),
(9, '2017_08_25_133241_create_app_menu_table', 1),
(10, '2017_08_30_063415_create_fitness_challenge_table', 1),
(11, '2017_09_04_081556_create_fitness_challenge_day_table', 1),
(12, '2017_09_05_081826_create_fitness_challenge_loop_table', 1),
(13, '2017_09_13_081004_create_app_css', 1),
(14, '2017_09_13_092308_add_app_css_json_data_to_app_basic_table', 1),
(15, '2017_09_15_121132_add_app_side_menu_css_json_data_to_app_basic_table', 1),
(16, '2017_09_18_110140_add_is_publish_column_in_app_basic_table', 1),
(17, '2017_09_26_083314_create_industry_type_table', 1),
(18, '2017_09_26_100852_create_category_type_table', 1),
(19, '2017_09_26_101207_create_price_type_table', 1),
(20, '2017_09_26_104025_add_menu_location_type_column_in_app_basic_table', 1),
(21, '2017_09_26_120026_add_menu_level_in_app_basic_table', 1),
(22, '2017_09_29_074921_add_app_code_to_app_basic_table', 1),
(23, '2017_09_29_104700_create_mainmenu_css_table', 1),
(24, '2017_09_29_104737_create_submenu_css_table', 1),
(25, '2017_09_29_104751_create_arrow_css_table', 1),
(26, '2017_10_09_115143_create_fontfamily_table', 1),
(27, '2017_10_09_115217_create_language_table', 1),
(28, '2017_10_17_065015_strip_pacakages', 1),
(29, '2017_10_24_103238_stripTransaction', 1),
(30, '2017_10_25_072209_create_stripe_subscriptions_table', 1),
(31, '2017_10_27_154250_create_settings_table', 1),
(32, '2017_10_27_154250_create_super_admin_settings_table', 1),
(33, '2017_11_08_095656_create_app_general_dicussions_table', 1),
(34, '2017_11_09_070345_create_menu_icon_table', 1),
(35, '2017_11_17_065815_addPublishCount', 1),
(36, '2017_11_29_063316_app_inquiry', 1),
(37, '2018_02_09_134237_create_staff_table', 1),
(38, '2018_02_13_124357_create_members_table', 1),
(39, '2018_02_14_010101_add_app_id_to_staff_table', 1),
(40, '2018_02_14_022901_add_app_id_to_member_table', 1),
(41, '2018_02_15_172009_create_bonus_table', 1),
(42, '2018_02_15_174711_add_app_id_to_bonus', 1),
(43, '2018_02_18_160623_add_active_to_bonus_table', 1),
(44, '2018_02_20_115441_create_redemption_table', 1),
(45, '2018_02_20_214245_create_checkin_table', 1),
(46, '2018_02_20_220433_create_modified_transaction_table', 1),
(47, '2018_02_22_012554_reviewsetting', 1),
(48, '2018_02_23_081731_firebase', 1),
(49, '2018_02_28_081010_modify_menu_type_table', 1),
(57, '2018_03_10_052617_create_contact_us_test', 1),
(59, '2018_03_10_053510_create_contact_us_table', 1),
(60, '2018_03_14_060356_push_notification', 1),
(64, '2018_02_28_173313_add_fields_to_users_table', 2),
(65, '2018_02_28_211451_create_user_types_table', 2),
(66, '2018_03_03_061739_create_password_resets_table', 2),
(67, '2018_03_04_172202_add_status_to_checkin_table', 2),
(68, '2018_03_04_230442_add_status_to_redemption_table', 2),
(69, '2018_03_07_115915_create_content_theme_table', 2),
(70, '2018_03_10_050221_create_contact_us_ticket', 2),
(71, '2018_03_10_052643_create_contact_us_msg', 2),
(75, '2018_03_16_012601_push_notification', 3),
(76, '2018_03_16_015042_push_notification_table', 3),
(77, '2018_03_16_020210_new_push_notification', 3);

-- --------------------------------------------------------

--
-- Table structure for table `modified_transaction`
--

CREATE TABLE `modified_transaction` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `app_id` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `price_type`
--

CREATE TABLE `price_type` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_type`
--

INSERT INTO `price_type` (`id`, `name`, `status`) VALUES
(1, 'USD 0 (Free)', '1'),
(2, 'USD 0.99 (Tier 1)', '1'),
(3, 'USD 1.99 (Tier 2)', '1'),
(4, 'USD 2.99 (Tier 3)', '1'),
(5, 'USD 3.99 (Tier 4)', '1'),
(6, 'USD 4.99 (Tier 5)', '1'),
(7, 'USD 5.99 (Tier 6)', '1'),
(8, 'USD 6.99 (Tier 7)', '1'),
(9, 'USD 7.99 (Tier 8)', '1'),
(10, 'USD 8.99 (Tier 9)', '1'),
(11, 'USD 9.99 (Tier 10)', '1'),
(12, 'USD 10.99 (Tier 11)', '1'),
(13, 'USD 11.99 (Tier 12)', '1'),
(14, 'USD 12.99 (Tier 13)', '1'),
(15, 'USD 13.99 (Tier 14)', '1'),
(16, 'USD 14.99 (Tier 15)', '1'),
(17, 'USD 15.99 (Tier 16)', '1'),
(18, 'USD 16.99 (Tier 17)', '1'),
(19, 'USD 17.99 (Tier 18)', '1'),
(20, 'USD 18.99 (Tier 19)', '1'),
(21, 'USD 19.99 (Tier 20)', '1'),
(22, 'USD 20.99 (Tier 21)', '1'),
(23, 'USD 21.99 (Tier 22)', '1'),
(24, 'USD 22.99 (Tier 23)', '1'),
(25, 'USD 23.99 (Tier 24)', '1'),
(26, 'USD 24.99 (Tier 25)', '1'),
(27, 'USD 25.99 (Tier 26)', '1'),
(28, 'USD 26.99 (Tier 27)', '1'),
(29, 'USD 27.99 (Tier 28)', '1'),
(30, 'USD 28.99 (Tier 29)', '1'),
(31, 'USD 29.99 (Tier 30)', '1'),
(32, 'USD 30.99 (Tier 31)', '1'),
(33, 'USD 31.99 (Tier 32)', '1'),
(34, 'USD 32.99 (Tier 33)', '1'),
(35, 'USD 33.99 (Tier 34)', '1'),
(36, 'USD 34.99 (Tier 35)', '1'),
(37, 'USD 35.99 (Tier 36)', '1'),
(38, 'USD 36.99 (Tier 37)', '1'),
(39, 'USD 37.99 (Tier 38)', '1'),
(40, 'USD 38.99 (Tier 39)', '1'),
(41, 'USD 39.99 (Tier 40)', '1'),
(42, 'USD 40.99 (Tier 41)', '1'),
(43, 'USD 41.99 (Tier 42)', '1'),
(44, 'USD 42.99 (Tier 43)', '1'),
(45, 'USD 43.99 (Tier 44)', '1'),
(46, 'USD 44.99 (Tier 45)', '1'),
(47, 'USD 45.99 (Tier 46)', '1'),
(48, 'USD 46.99 (Tier 47)', '1'),
(49, 'USD 47.99 (Tier 48)', '1'),
(50, 'USD 48.99 (Tier 49)', '1'),
(51, 'USD 49.99 (Tier 50)', '1'),
(52, 'USD 54.99 (Tier 51)', '1'),
(53, 'USD 59.99 (Tier 52)', '1'),
(54, 'USD 64.99 (Tier 53)', '1'),
(55, 'USD 74.99 (Tier 54)', '1'),
(56, 'USD 79.99 (Tier 55)', '1'),
(57, 'USD 84.99 (Tier 56)', '1'),
(58, 'USD 89.99 (Tier 57)', '1'),
(59, 'USD 94.99 (Tier 58)', '1'),
(60, 'USD 99.99 (Tier 59)', '1'),
(61, 'USD 109.99 (Tier 60)', '1'),
(62, 'USD 119.99 (Tier 61)', '1'),
(63, 'USD 124.99 (Tier 62)', '1'),
(64, 'USD 129.99 (Tier 63)', '1'),
(65, 'USD 139.99 (Tier 64)', '1'),
(66, 'USD 149.99 (Tier 65)', '1'),
(67, 'USD 159.99 (Tier 66)', '1'),
(68, 'USD 169.99 (Tier 67)', '1'),
(69, 'USD 174.99 (Tier 68)', '1'),
(70, 'USD 179.99 (Tier 69)', '1'),
(71, 'USD 189.99 (Tier 70)', '1'),
(72, 'USD 199.99 (Tier 71)', '1'),
(73, 'USD 209.99 (Tier 72)', '1'),
(74, 'USD 219.99 (Tier 73)', '1'),
(75, 'USD 229.99 (Tier 74)', '1'),
(76, 'USD 239.99 (Tier 75)', '1'),
(77, 'USD 249.99 (Tier 76)', '1'),
(78, 'USD 299.99 (Tier 77)', '1'),
(79, 'USD 349.99 (Tier 78)', '1'),
(80, 'USD 399.99 (Tier 79)', '1'),
(81, 'USD 449.99 (Tier 80)', '1'),
(82, 'USD 499.99 (Tier 81)', '1'),
(83, 'USD 599.99 (Tier 82)', '1'),
(84, 'USD 699.99 (Tier 83)', '1'),
(85, 'USD 799.99 (Tier 84)', '1'),
(86, 'USD 899.99 (Tier 85)', '1'),
(87, 'USD 999.99 (Tier 86)', '1');

-- --------------------------------------------------------

--
-- Table structure for table `push_notification`
--

CREATE TABLE `push_notification` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `app_id` int(11) NOT NULL,
  `ios` int(11) NOT NULL,
  `android` int(11) NOT NULL,
  `web` int(11) NOT NULL,
  `all_type` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `server_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_notification_table`
--

CREATE TABLE `push_notification_table` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `app_id` int(11) NOT NULL,
  `ios` int(11) NOT NULL,
  `android` int(11) NOT NULL,
  `web` int(11) NOT NULL,
  `all_type` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `server_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `redemption`
--

CREATE TABLE `redemption` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `bonus_id` int(11) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `app_id` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviewsetting`
--

CREATE TABLE `reviewsetting` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` int(11) NOT NULL,
  `json` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviewsetting`
--

INSERT INTO `reviewsetting` (`id`, `app_id`, `json`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"Punch_Card_System\":{\"User_Punch_Card_System\":{\"Type\":\"1\"},\"Style\":{\"Type\":\"1\",\"Fill_Color\":\"#2998d2\",\"Outline_Color\":\"#2998d2\"}},\"Points_Per_Check_In\":{\"Minimum\":1,\"Maximum\":10,\"Increment\":1},\"Rewards_Card\":{\"Background_Color\":\"#ffffff\",\"Background_Image\":\"\",\"Header_Image\":\"\",\"Icon_Image\":\"\",\"Points_Punch_Text\":{\"Font_Size\":30,\"Color\":\"#eb0323\",\"Font\":\"Holtwood One SC\"},\"Points_Card_Check_In_Name\":{\"Singular\":\"Point\",\"Plural\":\"Points\"},\"Punch_Card_Check_In_Name\":{\"Singular\":\"Stamp\",\"Plural\":\"Stamps\"},\"Punch_Card_Message\":{\"Text\":\"UNTIL YOUR NEXT REWARD\",\"Font_Size\":15,\"Color\":\"#000000\",\"Font\":\"Open Sans\"},\"Point_Card_Message\":{\"Text\":\"Earned and not yet used\",\"Font_Size\":13,\"Color\":\"#1e73be\",\"Font\":\"Raleway\"},\"Rewards_Earned_Message\":{\"Singular\":\"REWARD EARNED\",\"Plural\":\"REWARDS EARNED\",\"Font_Size\":16,\"Color\":\"#1e73be\",\"Font\":\"Open Sans\"}},\"Rewards_List\":{\"Background_Color\":\"#ffffff\",\"Total_Points\":{\"Font_Size\":10,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\",\"Punch_Message_Singular\":\"Unused Punch\",\"Punch_Message_Plural\":\"Unused Punches\",\"Point_Message_Singular\":\"Unused Point\",\"Point_Message_Plural\":\"Unused Points\"},\"Total_Remaining_Balance\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Title\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Description\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Cost\":{\"Font_size\":15,\"Color\":\"#999999\",\"Font\":\"Open Sans\"},\"Line_Separator\":{\"Color\":\"#e8e6e9\",\"Thickness\":1},\"Arrow\":{\"Color\":\"#5b5e5e\"}},\"Redemption_History\":{\"Background_Color\":\"#ffffff\",\"Header_Text\":{\"Text\":\"Redemption History\",\"Font_Size\":25,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"Reward_Title\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Description\":{\"Font_size\":12,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Cost\":{\"Font_size\":11,\"Color\":\"#999999\",\"Font\":\"Open Sans\"},\"Redeem_Date\":{\"Font_size\":13,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Line_Separator\":{\"Color\":\"#e8e6e9\",\"Thickness\":\"1\"}},\"Login_Register\":{\"Icon_Image\":\"\",\"Background_Color\":\"#f5f6f7\",\"Title_Login\":{\"Text\":\"LOGIN\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Title_Register\":{\"Text\":\"REGISTER\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Title_Reset_Password\":{\"Text\":\"FORGOT PASSWORD\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Login_Button\":{\"Background_Color\":\"#eb0323\"},\"Register_Button\":{\"Background_Color\":\"#eb0323\"},\"Reset_Password_Button\":{\"Background_Color\":\"#eb0323\"},\"New_Account_Button\":{\"Background_Color\":\"#ffffff\"},\"Back_To_Login_Button\":{\"Background_Color\":\"#ffffff\"},\"New_Member_Email_Subject\":{\"Text\":\"Welcome to the Rewards Program!\"},\"New_Member_Email_Message\":{\"Text\":\"\"}},\"Settings\":{\"Gear_Icon\":{\"Color\":\"#000000\"},\"Background_Color\":\"#ffffff\",\"Redemption_History_Button\":{\"Text\":\"Redemption History\",\"Font_Size\":17,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"Logout_Button\":{\"Text\":\"Logout\",\"Font_Size\":17,\"Color\":\"#fffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"}},\"Messages\":{\"CASHIER\":{\"Text\":\"PLEASE HAND YOUR DEVICE TO THE CASHIER\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"CHECKIN_SUCCESSFUL\":{\"Singular\":\"STAMP SUCCESSFUL\",\"Plural\":\"STAMPS  SUCCESSFUL\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"CHECKIN_FAILED\":{\"Text\":\"STAMP FAILED\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"REDEEM_SUCCESSFUL\":{\"Text\":\"REDEEM SUCCESSFUL\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"REDEEM_FAILED\":{\"Text\":\"REDEEM FAILED\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"}},\"Buttons\":{\"CHECK_IN\":{\"Text\":\"STAMP ME\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"REDEEM\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"REDEEM_UNSELECTABLE\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#c0c0c0\",\"Font\":\"Open Sans\"},\"REDEEM_REWARDS_EARNED\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"CONTINUE\":{\"Text\":\"CONTINUE\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"BACK\":{\"Text\":\"BACK\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"TRY_AGAIN\":{\"Text\":\"TRY AGAIN\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"}}}', '2018-03-15 13:00:39', '2018-03-15 13:00:39'),
(2, 2, '{\"Punch_Card_System\":{\"User_Punch_Card_System\":{\"Type\":\"1\"},\"Style\":{\"Type\":\"1\",\"Fill_Color\":\"#2998d2\",\"Outline_Color\":\"#2998d2\"}},\"Points_Per_Check_In\":{\"Minimum\":1,\"Maximum\":10,\"Increment\":1},\"Rewards_Card\":{\"Background_Color\":\"#ffffff\",\"Background_Image\":\"\",\"Header_Image\":\"\",\"Icon_Image\":\"\",\"Points_Punch_Text\":{\"Font_Size\":30,\"Color\":\"#eb0323\",\"Font\":\"Holtwood One SC\"},\"Points_Card_Check_In_Name\":{\"Singular\":\"Point\",\"Plural\":\"Points\"},\"Punch_Card_Check_In_Name\":{\"Singular\":\"Stamp\",\"Plural\":\"Stamps\"},\"Punch_Card_Message\":{\"Text\":\"UNTIL YOUR NEXT REWARD\",\"Font_Size\":15,\"Color\":\"#000000\",\"Font\":\"Open Sans\"},\"Point_Card_Message\":{\"Text\":\"Earned and not yet used\",\"Font_Size\":13,\"Color\":\"#1e73be\",\"Font\":\"Raleway\"},\"Rewards_Earned_Message\":{\"Singular\":\"REWARD EARNED\",\"Plural\":\"REWARDS EARNED\",\"Font_Size\":16,\"Color\":\"#1e73be\",\"Font\":\"Open Sans\"}},\"Rewards_List\":{\"Background_Color\":\"#ffffff\",\"Total_Points\":{\"Font_Size\":10,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\",\"Punch_Message_Singular\":\"Unused Punch\",\"Punch_Message_Plural\":\"Unused Punches\",\"Point_Message_Singular\":\"Unused Point\",\"Point_Message_Plural\":\"Unused Points\"},\"Total_Remaining_Balance\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Title\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Description\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Cost\":{\"Font_size\":15,\"Color\":\"#999999\",\"Font\":\"Open Sans\"},\"Line_Separator\":{\"Color\":\"#e8e6e9\",\"Thickness\":1},\"Arrow\":{\"Color\":\"#5b5e5e\"}},\"Redemption_History\":{\"Background_Color\":\"#ffffff\",\"Header_Text\":{\"Text\":\"Redemption History\",\"Font_Size\":25,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"Reward_Title\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Description\":{\"Font_size\":12,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Cost\":{\"Font_size\":11,\"Color\":\"#999999\",\"Font\":\"Open Sans\"},\"Redeem_Date\":{\"Font_size\":13,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Line_Separator\":{\"Color\":\"#e8e6e9\",\"Thickness\":\"1\"}},\"Login_Register\":{\"Icon_Image\":\"\",\"Background_Color\":\"#f5f6f7\",\"Title_Login\":{\"Text\":\"LOGIN\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Title_Register\":{\"Text\":\"REGISTER\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Title_Reset_Password\":{\"Text\":\"FORGOT PASSWORD\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Login_Button\":{\"Background_Color\":\"#eb0323\"},\"Register_Button\":{\"Background_Color\":\"#eb0323\"},\"Reset_Password_Button\":{\"Background_Color\":\"#eb0323\"},\"New_Account_Button\":{\"Background_Color\":\"#ffffff\"},\"Back_To_Login_Button\":{\"Background_Color\":\"#ffffff\"},\"New_Member_Email_Subject\":{\"Text\":\"Welcome to the Rewards Program!\"},\"New_Member_Email_Message\":{\"Text\":\"\"}},\"Settings\":{\"Gear_Icon\":{\"Color\":\"#000000\"},\"Background_Color\":\"#ffffff\",\"Redemption_History_Button\":{\"Text\":\"Redemption History\",\"Font_Size\":17,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"Logout_Button\":{\"Text\":\"Logout\",\"Font_Size\":17,\"Color\":\"#fffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"}},\"Messages\":{\"CASHIER\":{\"Text\":\"PLEASE HAND YOUR DEVICE TO THE CASHIER\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"CHECKIN_SUCCESSFUL\":{\"Singular\":\"STAMP SUCCESSFUL\",\"Plural\":\"STAMPS  SUCCESSFUL\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"CHECKIN_FAILED\":{\"Text\":\"STAMP FAILED\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"REDEEM_SUCCESSFUL\":{\"Text\":\"REDEEM SUCCESSFUL\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"REDEEM_FAILED\":{\"Text\":\"REDEEM FAILED\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"}},\"Buttons\":{\"CHECK_IN\":{\"Text\":\"STAMP ME\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"REDEEM\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"REDEEM_UNSELECTABLE\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#c0c0c0\",\"Font\":\"Open Sans\"},\"REDEEM_REWARDS_EARNED\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"CONTINUE\":{\"Text\":\"CONTINUE\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"BACK\":{\"Text\":\"BACK\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"TRY_AGAIN\":{\"Text\":\"TRY AGAIN\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"}}}', '2018-03-15 14:37:51', '2018-03-15 14:37:51'),
(3, 3, '{\"Punch_Card_System\":{\"User_Punch_Card_System\":{\"Type\":\"1\"},\"Style\":{\"Type\":\"1\",\"Fill_Color\":\"#2998d2\",\"Outline_Color\":\"#2998d2\"}},\"Points_Per_Check_In\":{\"Minimum\":1,\"Maximum\":10,\"Increment\":1},\"Rewards_Card\":{\"Background_Color\":\"#ffffff\",\"Background_Image\":\"\",\"Header_Image\":\"\",\"Icon_Image\":\"\",\"Points_Punch_Text\":{\"Font_Size\":30,\"Color\":\"#eb0323\",\"Font\":\"Holtwood One SC\"},\"Points_Card_Check_In_Name\":{\"Singular\":\"Point\",\"Plural\":\"Points\"},\"Punch_Card_Check_In_Name\":{\"Singular\":\"Stamp\",\"Plural\":\"Stamps\"},\"Punch_Card_Message\":{\"Text\":\"UNTIL YOUR NEXT REWARD\",\"Font_Size\":15,\"Color\":\"#000000\",\"Font\":\"Open Sans\"},\"Point_Card_Message\":{\"Text\":\"Earned and not yet used\",\"Font_Size\":13,\"Color\":\"#1e73be\",\"Font\":\"Raleway\"},\"Rewards_Earned_Message\":{\"Singular\":\"REWARD EARNED\",\"Plural\":\"REWARDS EARNED\",\"Font_Size\":16,\"Color\":\"#1e73be\",\"Font\":\"Open Sans\"}},\"Rewards_List\":{\"Background_Color\":\"#ffffff\",\"Total_Points\":{\"Font_Size\":10,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\",\"Punch_Message_Singular\":\"Unused Punch\",\"Punch_Message_Plural\":\"Unused Punches\",\"Point_Message_Singular\":\"Unused Point\",\"Point_Message_Plural\":\"Unused Points\"},\"Total_Remaining_Balance\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Title\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Description\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Cost\":{\"Font_size\":15,\"Color\":\"#999999\",\"Font\":\"Open Sans\"},\"Line_Separator\":{\"Color\":\"#e8e6e9\",\"Thickness\":1},\"Arrow\":{\"Color\":\"#5b5e5e\"}},\"Redemption_History\":{\"Background_Color\":\"#ffffff\",\"Header_Text\":{\"Text\":\"Redemption History\",\"Font_Size\":25,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"Reward_Title\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Description\":{\"Font_size\":12,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Cost\":{\"Font_size\":11,\"Color\":\"#999999\",\"Font\":\"Open Sans\"},\"Redeem_Date\":{\"Font_size\":13,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Line_Separator\":{\"Color\":\"#e8e6e9\",\"Thickness\":\"1\"}},\"Login_Register\":{\"Icon_Image\":\"\",\"Background_Color\":\"#f5f6f7\",\"Title_Login\":{\"Text\":\"LOGIN\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Title_Register\":{\"Text\":\"REGISTER\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Title_Reset_Password\":{\"Text\":\"FORGOT PASSWORD\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Login_Button\":{\"Background_Color\":\"#eb0323\"},\"Register_Button\":{\"Background_Color\":\"#eb0323\"},\"Reset_Password_Button\":{\"Background_Color\":\"#eb0323\"},\"New_Account_Button\":{\"Background_Color\":\"#ffffff\"},\"Back_To_Login_Button\":{\"Background_Color\":\"#ffffff\"},\"New_Member_Email_Subject\":{\"Text\":\"Welcome to the Rewards Program!\"},\"New_Member_Email_Message\":{\"Text\":\"\"}},\"Settings\":{\"Gear_Icon\":{\"Color\":\"#000000\"},\"Background_Color\":\"#ffffff\",\"Redemption_History_Button\":{\"Text\":\"Redemption History\",\"Font_Size\":17,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"Logout_Button\":{\"Text\":\"Logout\",\"Font_Size\":17,\"Color\":\"#fffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"}},\"Messages\":{\"CASHIER\":{\"Text\":\"PLEASE HAND YOUR DEVICE TO THE CASHIER\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"CHECKIN_SUCCESSFUL\":{\"Singular\":\"STAMP SUCCESSFUL\",\"Plural\":\"STAMPS  SUCCESSFUL\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"CHECKIN_FAILED\":{\"Text\":\"STAMP FAILED\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"REDEEM_SUCCESSFUL\":{\"Text\":\"REDEEM SUCCESSFUL\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"REDEEM_FAILED\":{\"Text\":\"REDEEM FAILED\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"}},\"Buttons\":{\"CHECK_IN\":{\"Text\":\"STAMP ME\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"REDEEM\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"REDEEM_UNSELECTABLE\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#c0c0c0\",\"Font\":\"Open Sans\"},\"REDEEM_REWARDS_EARNED\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"CONTINUE\":{\"Text\":\"CONTINUE\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"BACK\":{\"Text\":\"BACK\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"TRY_AGAIN\":{\"Text\":\"TRY AGAIN\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"}}}', '2018-03-16 03:25:10', '2018-03-16 03:25:10'),
(4, 4, '{\"Punch_Card_System\":{\"User_Punch_Card_System\":{\"Type\":\"1\"},\"Style\":{\"Type\":\"1\",\"Fill_Color\":\"#2998d2\",\"Outline_Color\":\"#2998d2\"}},\"Points_Per_Check_In\":{\"Minimum\":1,\"Maximum\":10,\"Increment\":1},\"Rewards_Card\":{\"Background_Color\":\"#ffffff\",\"Background_Image\":\"\",\"Header_Image\":\"\",\"Icon_Image\":\"\",\"Points_Punch_Text\":{\"Font_Size\":30,\"Color\":\"#eb0323\",\"Font\":\"Holtwood One SC\"},\"Points_Card_Check_In_Name\":{\"Singular\":\"Point\",\"Plural\":\"Points\"},\"Punch_Card_Check_In_Name\":{\"Singular\":\"Stamp\",\"Plural\":\"Stamps\"},\"Punch_Card_Message\":{\"Text\":\"UNTIL YOUR NEXT REWARD\",\"Font_Size\":15,\"Color\":\"#000000\",\"Font\":\"Open Sans\"},\"Point_Card_Message\":{\"Text\":\"Earned and not yet used\",\"Font_Size\":13,\"Color\":\"#1e73be\",\"Font\":\"Raleway\"},\"Rewards_Earned_Message\":{\"Singular\":\"REWARD EARNED\",\"Plural\":\"REWARDS EARNED\",\"Font_Size\":16,\"Color\":\"#1e73be\",\"Font\":\"Open Sans\"}},\"Rewards_List\":{\"Background_Color\":\"#ffffff\",\"Total_Points\":{\"Font_Size\":10,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\",\"Punch_Message_Singular\":\"Unused Punch\",\"Punch_Message_Plural\":\"Unused Punches\",\"Point_Message_Singular\":\"Unused Point\",\"Point_Message_Plural\":\"Unused Points\"},\"Total_Remaining_Balance\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Title\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Description\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Cost\":{\"Font_size\":15,\"Color\":\"#999999\",\"Font\":\"Open Sans\"},\"Line_Separator\":{\"Color\":\"#e8e6e9\",\"Thickness\":1},\"Arrow\":{\"Color\":\"#5b5e5e\"}},\"Redemption_History\":{\"Background_Color\":\"#ffffff\",\"Header_Text\":{\"Text\":\"Redemption History\",\"Font_Size\":25,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"Reward_Title\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Description\":{\"Font_size\":12,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Cost\":{\"Font_size\":11,\"Color\":\"#999999\",\"Font\":\"Open Sans\"},\"Redeem_Date\":{\"Font_size\":13,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Line_Separator\":{\"Color\":\"#e8e6e9\",\"Thickness\":\"1\"}},\"Login_Register\":{\"Icon_Image\":\"\",\"Background_Color\":\"#f5f6f7\",\"Title_Login\":{\"Text\":\"LOGIN\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Title_Register\":{\"Text\":\"REGISTER\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Title_Reset_Password\":{\"Text\":\"FORGOT PASSWORD\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Login_Button\":{\"Background_Color\":\"#eb0323\"},\"Register_Button\":{\"Background_Color\":\"#eb0323\"},\"Reset_Password_Button\":{\"Background_Color\":\"#eb0323\"},\"New_Account_Button\":{\"Background_Color\":\"#ffffff\"},\"Back_To_Login_Button\":{\"Background_Color\":\"#ffffff\"},\"New_Member_Email_Subject\":{\"Text\":\"Welcome to the Rewards Program!\"},\"New_Member_Email_Message\":{\"Text\":\"\"}},\"Settings\":{\"Gear_Icon\":{\"Color\":\"#000000\"},\"Background_Color\":\"#ffffff\",\"Redemption_History_Button\":{\"Text\":\"Redemption History\",\"Font_Size\":17,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"Logout_Button\":{\"Text\":\"Logout\",\"Font_Size\":17,\"Color\":\"#fffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"}},\"Messages\":{\"CASHIER\":{\"Text\":\"PLEASE HAND YOUR DEVICE TO THE CASHIER\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"CHECKIN_SUCCESSFUL\":{\"Singular\":\"STAMP SUCCESSFUL\",\"Plural\":\"STAMPS  SUCCESSFUL\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"CHECKIN_FAILED\":{\"Text\":\"STAMP FAILED\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"REDEEM_SUCCESSFUL\":{\"Text\":\"REDEEM SUCCESSFUL\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"REDEEM_FAILED\":{\"Text\":\"REDEEM FAILED\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"}},\"Buttons\":{\"CHECK_IN\":{\"Text\":\"STAMP ME\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"REDEEM\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"REDEEM_UNSELECTABLE\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#c0c0c0\",\"Font\":\"Open Sans\"},\"REDEEM_REWARDS_EARNED\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"CONTINUE\":{\"Text\":\"CONTINUE\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"BACK\":{\"Text\":\"BACK\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"TRY_AGAIN\":{\"Text\":\"TRY AGAIN\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"}}}', '2018-03-16 04:50:11', '2018-03-16 04:50:11'),
(5, 5, '{\"Punch_Card_System\":{\"User_Punch_Card_System\":{\"Type\":\"1\"},\"Style\":{\"Type\":\"1\",\"Fill_Color\":\"#2998d2\",\"Outline_Color\":\"#2998d2\"}},\"Points_Per_Check_In\":{\"Minimum\":1,\"Maximum\":10,\"Increment\":1},\"Rewards_Card\":{\"Background_Color\":\"#ffffff\",\"Background_Image\":\"\",\"Header_Image\":\"\",\"Icon_Image\":\"\",\"Points_Punch_Text\":{\"Font_Size\":30,\"Color\":\"#eb0323\",\"Font\":\"Holtwood One SC\"},\"Points_Card_Check_In_Name\":{\"Singular\":\"Point\",\"Plural\":\"Points\"},\"Punch_Card_Check_In_Name\":{\"Singular\":\"Stamp\",\"Plural\":\"Stamps\"},\"Punch_Card_Message\":{\"Text\":\"UNTIL YOUR NEXT REWARD\",\"Font_Size\":15,\"Color\":\"#000000\",\"Font\":\"Open Sans\"},\"Point_Card_Message\":{\"Text\":\"Earned and not yet used\",\"Font_Size\":13,\"Color\":\"#1e73be\",\"Font\":\"Raleway\"},\"Rewards_Earned_Message\":{\"Singular\":\"REWARD EARNED\",\"Plural\":\"REWARDS EARNED\",\"Font_Size\":16,\"Color\":\"#1e73be\",\"Font\":\"Open Sans\"}},\"Rewards_List\":{\"Background_Color\":\"#ffffff\",\"Total_Points\":{\"Font_Size\":10,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\",\"Punch_Message_Singular\":\"Unused Punch\",\"Punch_Message_Plural\":\"Unused Punches\",\"Point_Message_Singular\":\"Unused Point\",\"Point_Message_Plural\":\"Unused Points\"},\"Total_Remaining_Balance\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Title\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Description\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Cost\":{\"Font_size\":15,\"Color\":\"#999999\",\"Font\":\"Open Sans\"},\"Line_Separator\":{\"Color\":\"#e8e6e9\",\"Thickness\":1},\"Arrow\":{\"Color\":\"#5b5e5e\"}},\"Redemption_History\":{\"Background_Color\":\"#ffffff\",\"Header_Text\":{\"Text\":\"Redemption History\",\"Font_Size\":25,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"Reward_Title\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Description\":{\"Font_size\":12,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Cost\":{\"Font_size\":11,\"Color\":\"#999999\",\"Font\":\"Open Sans\"},\"Redeem_Date\":{\"Font_size\":13,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Line_Separator\":{\"Color\":\"#e8e6e9\",\"Thickness\":\"1\"}},\"Login_Register\":{\"Icon_Image\":\"\",\"Background_Color\":\"#f5f6f7\",\"Title_Login\":{\"Text\":\"LOGIN\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Title_Register\":{\"Text\":\"REGISTER\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Title_Reset_Password\":{\"Text\":\"FORGOT PASSWORD\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Login_Button\":{\"Background_Color\":\"#eb0323\"},\"Register_Button\":{\"Background_Color\":\"#eb0323\"},\"Reset_Password_Button\":{\"Background_Color\":\"#eb0323\"},\"New_Account_Button\":{\"Background_Color\":\"#ffffff\"},\"Back_To_Login_Button\":{\"Background_Color\":\"#ffffff\"},\"New_Member_Email_Subject\":{\"Text\":\"Welcome to the Rewards Program!\"},\"New_Member_Email_Message\":{\"Text\":\"\"}},\"Settings\":{\"Gear_Icon\":{\"Color\":\"#000000\"},\"Background_Color\":\"#ffffff\",\"Redemption_History_Button\":{\"Text\":\"Redemption History\",\"Font_Size\":17,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"Logout_Button\":{\"Text\":\"Logout\",\"Font_Size\":17,\"Color\":\"#fffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"}},\"Messages\":{\"CASHIER\":{\"Text\":\"PLEASE HAND YOUR DEVICE TO THE CASHIER\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"CHECKIN_SUCCESSFUL\":{\"Singular\":\"STAMP SUCCESSFUL\",\"Plural\":\"STAMPS  SUCCESSFUL\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"CHECKIN_FAILED\":{\"Text\":\"STAMP FAILED\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"REDEEM_SUCCESSFUL\":{\"Text\":\"REDEEM SUCCESSFUL\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"REDEEM_FAILED\":{\"Text\":\"REDEEM FAILED\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"}},\"Buttons\":{\"CHECK_IN\":{\"Text\":\"STAMP ME\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"REDEEM\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"REDEEM_UNSELECTABLE\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#c0c0c0\",\"Font\":\"Open Sans\"},\"REDEEM_REWARDS_EARNED\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"CONTINUE\":{\"Text\":\"CONTINUE\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"BACK\":{\"Text\":\"BACK\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"TRY_AGAIN\":{\"Text\":\"TRY AGAIN\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"}}}', '2018-03-19 09:22:26', '2018-03-19 09:22:26'),
(6, 6, '{\"Punch_Card_System\":{\"User_Punch_Card_System\":{\"Type\":\"1\"},\"Style\":{\"Type\":\"1\",\"Fill_Color\":\"#2998d2\",\"Outline_Color\":\"#2998d2\"}},\"Points_Per_Check_In\":{\"Minimum\":1,\"Maximum\":10,\"Increment\":1},\"Rewards_Card\":{\"Background_Color\":\"#ffffff\",\"Background_Image\":\"\",\"Header_Image\":\"\",\"Icon_Image\":\"\",\"Points_Punch_Text\":{\"Font_Size\":30,\"Color\":\"#eb0323\",\"Font\":\"Holtwood One SC\"},\"Points_Card_Check_In_Name\":{\"Singular\":\"Point\",\"Plural\":\"Points\"},\"Punch_Card_Check_In_Name\":{\"Singular\":\"Stamp\",\"Plural\":\"Stamps\"},\"Punch_Card_Message\":{\"Text\":\"UNTIL YOUR NEXT REWARD\",\"Font_Size\":15,\"Color\":\"#000000\",\"Font\":\"Open Sans\"},\"Point_Card_Message\":{\"Text\":\"Earned and not yet used\",\"Font_Size\":13,\"Color\":\"#1e73be\",\"Font\":\"Raleway\"},\"Rewards_Earned_Message\":{\"Singular\":\"REWARD EARNED\",\"Plural\":\"REWARDS EARNED\",\"Font_Size\":16,\"Color\":\"#1e73be\",\"Font\":\"Open Sans\"}},\"Rewards_List\":{\"Background_Color\":\"#ffffff\",\"Total_Points\":{\"Font_Size\":10,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\",\"Punch_Message_Singular\":\"Unused Punch\",\"Punch_Message_Plural\":\"Unused Punches\",\"Point_Message_Singular\":\"Unused Point\",\"Point_Message_Plural\":\"Unused Points\"},\"Total_Remaining_Balance\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Title\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Description\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Cost\":{\"Font_size\":15,\"Color\":\"#999999\",\"Font\":\"Open Sans\"},\"Line_Separator\":{\"Color\":\"#e8e6e9\",\"Thickness\":1},\"Arrow\":{\"Color\":\"#5b5e5e\"}},\"Redemption_History\":{\"Background_Color\":\"#ffffff\",\"Header_Text\":{\"Text\":\"Redemption History\",\"Font_Size\":25,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"Reward_Title\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Description\":{\"Font_size\":12,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Cost\":{\"Font_size\":11,\"Color\":\"#999999\",\"Font\":\"Open Sans\"},\"Redeem_Date\":{\"Font_size\":13,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Line_Separator\":{\"Color\":\"#e8e6e9\",\"Thickness\":\"1\"}},\"Login_Register\":{\"Icon_Image\":\"\",\"Background_Color\":\"#f5f6f7\",\"Title_Login\":{\"Text\":\"LOGIN\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Title_Register\":{\"Text\":\"REGISTER\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Title_Reset_Password\":{\"Text\":\"FORGOT PASSWORD\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Login_Button\":{\"Background_Color\":\"#eb0323\"},\"Register_Button\":{\"Background_Color\":\"#eb0323\"},\"Reset_Password_Button\":{\"Background_Color\":\"#eb0323\"},\"New_Account_Button\":{\"Background_Color\":\"#ffffff\"},\"Back_To_Login_Button\":{\"Background_Color\":\"#ffffff\"},\"New_Member_Email_Subject\":{\"Text\":\"Welcome to the Rewards Program!\"},\"New_Member_Email_Message\":{\"Text\":\"\"}},\"Settings\":{\"Gear_Icon\":{\"Color\":\"#000000\"},\"Background_Color\":\"#ffffff\",\"Redemption_History_Button\":{\"Text\":\"Redemption History\",\"Font_Size\":17,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"Logout_Button\":{\"Text\":\"Logout\",\"Font_Size\":17,\"Color\":\"#fffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"}},\"Messages\":{\"CASHIER\":{\"Text\":\"PLEASE HAND YOUR DEVICE TO THE CASHIER\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"CHECKIN_SUCCESSFUL\":{\"Singular\":\"STAMP SUCCESSFUL\",\"Plural\":\"STAMPS  SUCCESSFUL\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"CHECKIN_FAILED\":{\"Text\":\"STAMP FAILED\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"REDEEM_SUCCESSFUL\":{\"Text\":\"REDEEM SUCCESSFUL\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"REDEEM_FAILED\":{\"Text\":\"REDEEM FAILED\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"}},\"Buttons\":{\"CHECK_IN\":{\"Text\":\"STAMP ME\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"REDEEM\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"REDEEM_UNSELECTABLE\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#c0c0c0\",\"Font\":\"Open Sans\"},\"REDEEM_REWARDS_EARNED\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"CONTINUE\":{\"Text\":\"CONTINUE\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"BACK\":{\"Text\":\"BACK\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"TRY_AGAIN\":{\"Text\":\"TRY AGAIN\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"}}}', '2018-03-19 16:56:19', '2018-03-19 16:56:19'),
(7, 7, '{\"Punch_Card_System\":{\"User_Punch_Card_System\":{\"Type\":\"1\"},\"Style\":{\"Type\":\"1\",\"Fill_Color\":\"#2998d2\",\"Outline_Color\":\"#2998d2\"}},\"Points_Per_Check_In\":{\"Minimum\":1,\"Maximum\":10,\"Increment\":1},\"Rewards_Card\":{\"Background_Color\":\"#ffffff\",\"Background_Image\":\"\",\"Header_Image\":\"\",\"Icon_Image\":\"\",\"Points_Punch_Text\":{\"Font_Size\":30,\"Color\":\"#eb0323\",\"Font\":\"Holtwood One SC\"},\"Points_Card_Check_In_Name\":{\"Singular\":\"Point\",\"Plural\":\"Points\"},\"Punch_Card_Check_In_Name\":{\"Singular\":\"Stamp\",\"Plural\":\"Stamps\"},\"Punch_Card_Message\":{\"Text\":\"UNTIL YOUR NEXT REWARD\",\"Font_Size\":15,\"Color\":\"#000000\",\"Font\":\"Open Sans\"},\"Point_Card_Message\":{\"Text\":\"Earned and not yet used\",\"Font_Size\":13,\"Color\":\"#1e73be\",\"Font\":\"Raleway\"},\"Rewards_Earned_Message\":{\"Singular\":\"REWARD EARNED\",\"Plural\":\"REWARDS EARNED\",\"Font_Size\":16,\"Color\":\"#1e73be\",\"Font\":\"Open Sans\"}},\"Rewards_List\":{\"Background_Color\":\"#ffffff\",\"Total_Points\":{\"Font_Size\":10,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\",\"Punch_Message_Singular\":\"Unused Punch\",\"Punch_Message_Plural\":\"Unused Punches\",\"Point_Message_Singular\":\"Unused Point\",\"Point_Message_Plural\":\"Unused Points\"},\"Total_Remaining_Balance\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Title\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Description\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Cost\":{\"Font_size\":15,\"Color\":\"#999999\",\"Font\":\"Open Sans\"},\"Line_Separator\":{\"Color\":\"#e8e6e9\",\"Thickness\":1},\"Arrow\":{\"Color\":\"#5b5e5e\"}},\"Redemption_History\":{\"Background_Color\":\"#ffffff\",\"Header_Text\":{\"Text\":\"Redemption History\",\"Font_Size\":25,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"Reward_Title\":{\"Font_size\":15,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Description\":{\"Font_size\":12,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Reward_Cost\":{\"Font_size\":11,\"Color\":\"#999999\",\"Font\":\"Open Sans\"},\"Redeem_Date\":{\"Font_size\":13,\"Color\":\"#565656\",\"Font\":\"Open Sans\"},\"Line_Separator\":{\"Color\":\"#e8e6e9\",\"Thickness\":\"1\"}},\"Login_Register\":{\"Icon_Image\":\"\",\"Background_Color\":\"#f5f6f7\",\"Title_Login\":{\"Text\":\"LOGIN\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Title_Register\":{\"Text\":\"REGISTER\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Title_Reset_Password\":{\"Text\":\"FORGOT PASSWORD\",\"Font_size\":24,\"Color\":\"#5b5a5a\",\"Font\":\"Roboto\"},\"Login_Button\":{\"Background_Color\":\"#eb0323\"},\"Register_Button\":{\"Background_Color\":\"#eb0323\"},\"Reset_Password_Button\":{\"Background_Color\":\"#eb0323\"},\"New_Account_Button\":{\"Background_Color\":\"#ffffff\"},\"Back_To_Login_Button\":{\"Background_Color\":\"#ffffff\"},\"New_Member_Email_Subject\":{\"Text\":\"Welcome to the Rewards Program!\"},\"New_Member_Email_Message\":{\"Text\":\"\"}},\"Settings\":{\"Gear_Icon\":{\"Color\":\"#000000\"},\"Background_Color\":\"#ffffff\",\"Redemption_History_Button\":{\"Text\":\"Redemption History\",\"Font_Size\":17,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"Logout_Button\":{\"Text\":\"Logout\",\"Font_Size\":17,\"Color\":\"#fffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"}},\"Messages\":{\"CASHIER\":{\"Text\":\"PLEASE HAND YOUR DEVICE TO THE CASHIER\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"CHECKIN_SUCCESSFUL\":{\"Singular\":\"STAMP SUCCESSFUL\",\"Plural\":\"STAMPS  SUCCESSFUL\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"CHECKIN_FAILED\":{\"Text\":\"STAMP FAILED\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"REDEEM_SUCCESSFUL\":{\"Text\":\"REDEEM SUCCESSFUL\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"},\"REDEEM_FAILED\":{\"Text\":\"REDEEM FAILED\",\"Font_Size\":40,\"Color\":\"#26c17b\",\"Font\":\"Open Sans\"}},\"Buttons\":{\"CHECK_IN\":{\"Text\":\"STAMP ME\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"REDEEM\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"REDEEM_UNSELECTABLE\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#c0c0c0\",\"Font\":\"Open Sans\"},\"REDEEM_REWARDS_EARNED\":{\"Text\":\"REDEEM\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"CONTINUE\":{\"Text\":\"CONTINUE\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"BACK\":{\"Text\":\"BACK\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"},\"TRY_AGAIN\":{\"Text\":\"TRY AGAIN\",\"Font_Size\":20,\"Color\":\"#ffffff\",\"Background_Color\":\"#eb0323\",\"Font\":\"Open Sans\"}}}', '2018-03-26 12:35:33', '2018-03-26 12:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', NULL, NULL),
(2, 'General User', NULL, NULL),
(3, 'Member', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `app_unique_id` longtext COLLATE utf8mb4_unicode_ci,
  `ios_app_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `andr_app_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firebase_id_iOS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_key_iOS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firebase_ios_plist` longtext COLLATE utf8mb4_unicode_ci,
  `firebase_id_android` longtext COLLATE utf8mb4_unicode_ci,
  `server_key_android` longtext COLLATE utf8mb4_unicode_ci,
  `firebase_android_json` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `app_unique_id`, `ios_app_id`, `andr_app_id`, `firebase_id_iOS`, `server_key_iOS`, `firebase_ios_plist`, `firebase_id_android`, `server_key_android`, `firebase_android_json`, `status`) VALUES
(1, '1', 'asdf1', 'asdf2', 'asdf2', 'asdf4', 'https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/joes_italian_ice1/adminsetting/asdf.plist', 'asdf5', 'asdf6', 'https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/joes_italian_ice1/adminsetting/setting.json', '1');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `role` int(11) NOT NULL,
  `passcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `notification` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stripe_subscriptions`
--

CREATE TABLE `stripe_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'foreign key',
  `pkg_id` int(10) UNSIGNED NOT NULL COMMENT 'foreign key',
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'stripe customer id',
  `subscription_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'stripe subscription id',
  `stripe_active` tinyint(4) NOT NULL COMMENT 'customer active status',
  `stripe_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'customer card token',
  `stripe_payment_failure` tinyint(4) NOT NULL COMMENT 'flag status if payment fails',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strip_packages`
--

CREATE TABLE `strip_packages` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `unique_id` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Unique Id',
  `pa_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Package name',
  `pa_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Package description',
  `pa_price` int(11) NOT NULL COMMENT 'Package price',
  `sub_charge` int(11) NOT NULL COMMENT 'Subscription charge for package',
  `sub_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Subscription unique identifier',
  `sub_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Subscription name',
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `strip_packages`
--

INSERT INTO `strip_packages` (`id`, `unique_id`, `pa_name`, `pa_desc`, `pa_price`, `sub_charge`, `sub_id`, `sub_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tm5nZb', 'Bronze', '<li><strong>iOS (iPhone and iPad) and Android (Phone and Tablet) App</strong></li>\r\n                <li><strong>24/7 Access to App Platform (Manual Setup)</strong></li>\r\n                <li><strong>Managed Submission into Apple App Store and Google Play Store</strong></li>\r\n                <li><strong>24/7 Support and Maintenance</strong></li>', 999, 149, 'app_basic', 'Basic', '1', NULL, NULL),
(2, 'V1Qiad', 'Silver', '<li><strong>iOS (iPhone and iPad) and Android (Phone and Tablet) App</strong></li>\r\n                <li><strong>24/7 Access to App Platform</strong></li>\r\n                <li><strong>Managed Submission into Apple App Store and Google Play Store</strong></li>\r\n                <li><strong>24/7 Support and Maintenance</strong></li>\r\n                <li><strong>Complete Design Package</strong></li>\r\n                <li><strong>Fully Configured Setup up to 5 Pages</strong></li>', 1999, 149, 'app_basic', 'Basic', '1', NULL, NULL),
(3, 'Ayq1fI', 'Gold', '<li><strong>iOS (iPhone and iPad) and Android (Phone and Tablet) App</strong></li>\r\n                <li><strong>24/7 Access to App Platform</strong></li>\r\n                <li><strong>Managed Submission into Apple App Store and Google Play Store</strong></li>\r\n                <li><strong>24/7 Support and Maintenance</strong></li>\r\n                <li><strong>Complete Design Package</strong></li>\r\n                <li><strong>Fully Configured Setup up to 15 Pages</strong></li>', 2999, 149, 'app_basic', 'Basic', '1', NULL, NULL),
(4, 'H_OrDu', 'Custom', '<h2>Contact Us</h2><p>Contact Us if you are a large business and/or if you need custom software development.</p>', 0, 149, '', '', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strip_transaction`
--

CREATE TABLE `strip_transaction` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `pkg_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_refer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'name of referer businesses',
  `st_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'transaction id',
  `st_object` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'transaction object',
  `st_amount` int(11) NOT NULL COMMENT 'transaction charge amount',
  `st_balance_transaction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'balance transaction token',
  `st_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'transaction creation date',
  `st_currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'transaction charge currency',
  `st_source_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'transaction source id',
  `st_source_object` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'transaction source object',
  `st_source_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'transaction source name',
  `st_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'transaction status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `submenu_css`
--

CREATE TABLE `submenu_css` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `css_properties` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `super_admin_setting`
--

CREATE TABLE `super_admin_setting` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `app_super_admin_json_data` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `role_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Foreign key',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` int(11) NOT NULL DEFAULT '0',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>inactive, 3=>deleted',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point` int(11) DEFAULT '0',
  `notification` tinyint(1) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `first_name`, `last_name`, `email`, `password`, `otp`, `photo`, `remember_token`, `created_at`, `updated_at`, `status`, `username`, `point`, `notification`, `type`) VALUES
(1, 1, 'Super', 'Admin', 'admin@theappcompany.com', '$2y$10$oa2udymr3sH4DHx6L/Q7OeHvmTqhCA8kE/8/0S0fIPtEN4GpRsObu', 0, NULL, NULL, NULL, NULL, '1', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_assign_user`
--
ALTER TABLE `app_assign_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_assign_user_app_basic_id_index` (`app_basic_id`),
  ADD KEY `app_assign_user_user_id_index` (`user_id`);

--
-- Indexes for table `app_basic`
--
ALTER TABLE `app_basic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_basic_app_created_by_index` (`app_created_by`),
  ADD KEY `app_basic_app_updated_by_index` (`app_updated_by`);

--
-- Indexes for table `app_basic_detail`
--
ALTER TABLE `app_basic_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_basic_detail_app_basic_id_index` (`app_basic_id`),
  ADD KEY `app_basic_detail_app_section_id_index` (`app_section_id`);

--
-- Indexes for table `app_css`
--
ALTER TABLE `app_css`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_general_dicussions`
--
ALTER TABLE `app_general_dicussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_general_dicussions_app_id_foreign` (`app_id`),
  ADD KEY `app_general_dicussions_sender_id_foreign` (`sender_id`),
  ADD KEY `app_general_dicussions_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `app_inquiry`
--
ALTER TABLE `app_inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_menu`
--
ALTER TABLE `app_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_menu_app_basic_id_index` (`app_basic_id`),
  ADD KEY `app_menu_menu_type_index` (`menu_type`);

--
-- Indexes for table `app_section`
--
ALTER TABLE `app_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrow_css`
--
ALTER TABLE `arrow_css`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bonus`
--
ALTER TABLE `bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_type`
--
ALTER TABLE `category_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkin`
--
ALTER TABLE `checkin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us_msg`
--
ALTER TABLE `contact_us_msg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_us_msg_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `contact_us_ticket`
--
ALTER TABLE `contact_us_ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `content_themes`
--
ALTER TABLE `content_themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firebase`
--
ALTER TABLE `firebase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fitness_challenge`
--
ALTER TABLE `fitness_challenge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fitness_challenge_day`
--
ALTER TABLE `fitness_challenge_day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fitness_challenge_loop`
--
ALTER TABLE `fitness_challenge_loop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fontfamily_type`
--
ALTER TABLE `fontfamily_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industry_type`
--
ALTER TABLE `industry_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_type`
--
ALTER TABLE `language_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_css`
--
ALTER TABLE `menu_css`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_icon`
--
ALTER TABLE `menu_icon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modified_transaction`
--
ALTER TABLE `modified_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `price_type`
--
ALTER TABLE `price_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_notification`
--
ALTER TABLE `push_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_notification_table`
--
ALTER TABLE `push_notification_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redemption`
--
ALTER TABLE `redemption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviewsetting`
--
ALTER TABLE `reviewsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_subscriptions`
--
ALTER TABLE `stripe_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stripe_subscriptions_user_id_foreign` (`user_id`),
  ADD KEY `stripe_subscriptions_pkg_id_foreign` (`pkg_id`);

--
-- Indexes for table `strip_packages`
--
ALTER TABLE `strip_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strip_transaction`
--
ALTER TABLE `strip_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strip_transaction_pkg_id_foreign` (`pkg_id`),
  ADD KEY `strip_transaction_user_id_foreign` (`user_id`);

--
-- Indexes for table `submenu_css`
--
ALTER TABLE `submenu_css`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `super_admin_setting`
--
ALTER TABLE `super_admin_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_assign_user`
--
ALTER TABLE `app_assign_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `app_basic`
--
ALTER TABLE `app_basic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `app_basic_detail`
--
ALTER TABLE `app_basic_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `app_css`
--
ALTER TABLE `app_css`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `app_general_dicussions`
--
ALTER TABLE `app_general_dicussions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `app_inquiry`
--
ALTER TABLE `app_inquiry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'primary key';

--
-- AUTO_INCREMENT for table `app_menu`
--
ALTER TABLE `app_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `app_section`
--
ALTER TABLE `app_section`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `arrow_css`
--
ALTER TABLE `arrow_css`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `bonus`
--
ALTER TABLE `bonus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_type`
--
ALTER TABLE `category_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us_msg`
--
ALTER TABLE `contact_us_msg`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us_ticket`
--
ALTER TABLE `contact_us_ticket`
  MODIFY `ticket_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_themes`
--
ALTER TABLE `content_themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `firebase`
--
ALTER TABLE `firebase`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fitness_challenge`
--
ALTER TABLE `fitness_challenge`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `fitness_challenge_day`
--
ALTER TABLE `fitness_challenge_day`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `fitness_challenge_loop`
--
ALTER TABLE `fitness_challenge_loop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `fontfamily_type`
--
ALTER TABLE `fontfamily_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=646;

--
-- AUTO_INCREMENT for table `industry_type`
--
ALTER TABLE `industry_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `language_type`
--
ALTER TABLE `language_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_css`
--
ALTER TABLE `menu_css`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `menu_icon`
--
ALTER TABLE `menu_icon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT for table `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `modified_transaction`
--
ALTER TABLE `modified_transaction`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `price_type`
--
ALTER TABLE `price_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `push_notification`
--
ALTER TABLE `push_notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `push_notification_table`
--
ALTER TABLE `push_notification_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `redemption`
--
ALTER TABLE `redemption`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviewsetting`
--
ALTER TABLE `reviewsetting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_subscriptions`
--
ALTER TABLE `stripe_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `strip_packages`
--
ALTER TABLE `strip_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `strip_transaction`
--
ALTER TABLE `strip_transaction`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `submenu_css`
--
ALTER TABLE `submenu_css`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `super_admin_setting`
--
ALTER TABLE `super_admin_setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_assign_user`
--
ALTER TABLE `app_assign_user`
  ADD CONSTRAINT `app_assign_user_app_basic_id_foreign` FOREIGN KEY (`app_basic_id`) REFERENCES `app_basic` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `app_assign_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `app_basic`
--
ALTER TABLE `app_basic`
  ADD CONSTRAINT `app_basic_app_created_by_foreign` FOREIGN KEY (`app_created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `app_basic_app_updated_by_foreign` FOREIGN KEY (`app_updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `app_basic_detail`
--
ALTER TABLE `app_basic_detail`
  ADD CONSTRAINT `app_basic_detail_app_basic_id_foreign` FOREIGN KEY (`app_basic_id`) REFERENCES `app_basic` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `app_basic_detail_app_section_id_foreign` FOREIGN KEY (`app_section_id`) REFERENCES `app_section` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `app_general_dicussions`
--
ALTER TABLE `app_general_dicussions`
  ADD CONSTRAINT `app_general_dicussions_app_id_foreign` FOREIGN KEY (`app_id`) REFERENCES `app_basic` (`id`),
  ADD CONSTRAINT `app_general_dicussions_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `app_general_dicussions_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `app_menu`
--
ALTER TABLE `app_menu`
  ADD CONSTRAINT `app_menu_app_basic_id_foreign` FOREIGN KEY (`app_basic_id`) REFERENCES `app_basic` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `app_menu_menu_type_foreign` FOREIGN KEY (`menu_type`) REFERENCES `menu_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contact_us_msg`
--
ALTER TABLE `contact_us_msg`
  ADD CONSTRAINT `contact_us_msg_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `contact_us_ticket` (`ticket_id`);

--
-- Constraints for table `stripe_subscriptions`
--
ALTER TABLE `stripe_subscriptions`
  ADD CONSTRAINT `stripe_subscriptions_pkg_id_foreign` FOREIGN KEY (`pkg_id`) REFERENCES `strip_packages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stripe_subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strip_transaction`
--
ALTER TABLE `strip_transaction`
  ADD CONSTRAINT `strip_transaction_pkg_id_foreign` FOREIGN KEY (`pkg_id`) REFERENCES `strip_packages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strip_transaction_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
