-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 02:36 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `crypto_files`
--

CREATE TABLE `crypto_files` (
  `fileID` int(11) UNSIGNED NOT NULL,
  `fileTitle` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `fileName` varchar(100) NOT NULL DEFAULT '',
  `fileSize` double(15,0) NOT NULL DEFAULT '0',
  `fileText` text,
  `priceUSD` double(10,2) NOT NULL DEFAULT '0.00',
  `priceCoin` double(17,5) NOT NULL DEFAULT '0.00000',
  `priceLabel` varchar(6) NOT NULL DEFAULT '',
  `purchases` mediumint(8) NOT NULL DEFAULT '0',
  `userFormat` enum('MANUAL','COOKIE','SESSION','IPADDRESS') NOT NULL,
  `expiryPeriod` varchar(15) NOT NULL DEFAULT '',
  `lang` varchar(2) NOT NULL DEFAULT '',
  `defCoin` varchar(5) NOT NULL DEFAULT '',
  `defShow` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(100) NOT NULL DEFAULT '',
  `imageWidth` smallint(5) NOT NULL DEFAULT '0',
  `priceShow` tinyint(1) NOT NULL DEFAULT '1',
  `paymentCnt` smallint(5) NOT NULL DEFAULT '0',
  `paymentTime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_membership`
--

CREATE TABLE `crypto_membership` (
  `membID` int(11) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `paymentID` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `recordCreated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_payments`
--

CREATE TABLE `crypto_payments` (
  `paymentID` int(11) UNSIGNED NOT NULL,
  `boxID` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `boxType` enum('paymentbox','captchabox') NOT NULL,
  `orderID` varchar(50) NOT NULL DEFAULT '',
  `userID` varchar(50) NOT NULL DEFAULT '',
  `countryID` varchar(3) NOT NULL DEFAULT '',
  `coinLabel` varchar(6) NOT NULL DEFAULT '',
  `amount` double(20,8) NOT NULL DEFAULT '0.00000000',
  `amountUSD` double(20,8) NOT NULL DEFAULT '0.00000000',
  `unrecognised` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `addr` varchar(34) NOT NULL DEFAULT '',
  `txID` char(64) NOT NULL DEFAULT '',
  `txDate` datetime DEFAULT NULL,
  `txConfirmed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `txCheckDate` datetime DEFAULT NULL,
  `processed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `processedDate` datetime DEFAULT NULL,
  `recordCreated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_products`
--

CREATE TABLE `crypto_products` (
  `productID` int(11) UNSIGNED NOT NULL,
  `productTitle` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priceUSD` double(10,2) NOT NULL DEFAULT '0.00',
  `priceCoin` double(17,5) NOT NULL DEFAULT '0.00000',
  `priceLabel` varchar(6) NOT NULL DEFAULT '',
  `purchases` mediumint(8) NOT NULL DEFAULT '0',
  `expiryPeriod` varchar(15) NOT NULL DEFAULT '',
  `lang` varchar(2) NOT NULL DEFAULT '',
  `defCoin` varchar(5) NOT NULL DEFAULT '',
  `defShow` tinyint(1) NOT NULL DEFAULT '1',
  `productText` text,
  `finalText` text,
  `emailUser` tinyint(1) NOT NULL DEFAULT '1',
  `emailUserFrom` varchar(50) NOT NULL DEFAULT '',
  `emailUserTitle` varchar(100) NOT NULL DEFAULT '',
  `emailUserBody` text,
  `emailAdmin` tinyint(1) NOT NULL DEFAULT '1',
  `emailAdminFrom` varchar(50) NOT NULL DEFAULT '',
  `emailAdminTo` text,
  `emailAdminTitle` varchar(100) NOT NULL DEFAULT '',
  `emailAdminBody` text,
  `paymentCnt` smallint(5) NOT NULL DEFAULT '0',
  `paymentTime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_cf7dbplugin_st`
--

CREATE TABLE `wp_2_cf7dbplugin_st` (
  `submit_time` decimal(16,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_cf7dbplugin_submits`
--

CREATE TABLE `wp_2_cf7dbplugin_submits` (
  `submit_time` decimal(16,4) NOT NULL,
  `form_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_value` longtext CHARACTER SET utf8,
  `field_order` int(11) DEFAULT NULL,
  `file` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_blogmeta`
--

CREATE TABLE `wp_blogmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_blogs`
--

CREATE TABLE `wp_blogs` (
  `blog_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` tinyint(2) NOT NULL DEFAULT '1',
  `archived` tinyint(2) NOT NULL DEFAULT '0',
  `mature` tinyint(2) NOT NULL DEFAULT '0',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_blogs`
--

INSERT INTO `wp_blogs` (`blog_id`, `site_id`, `domain`, `path`, `registered`, `last_updated`, `public`, `archived`, `mature`, `spam`, `deleted`, `lang_id`) VALUES
(1, 1, 'localhost', '/wordpress/', '2016-03-25 19:25:29', '2019-07-04 11:54:35', 1, 0, 0, 0, 0, 0),
(2, 1, 'localhost', '/wordpress/trafficsmack/', '2016-03-26 18:52:49', '2016-03-28 00:14:43', 1, 0, 0, 0, 0, 0),
(3, 1, 'localhost', '/wordpress/strangersoccer/', '2016-04-13 15:43:06', '2016-04-29 14:41:20', 1, 0, 0, 0, 0, 0),
(4, 1, 'localhost', '/wordpress/vinode-maurya/', '2016-04-17 14:14:49', '2017-06-03 08:27:52', 1, 0, 0, 0, 0, 0),
(5, 1, 'localhost', '/wordpress/anpwebsolutions/', '2016-04-29 19:48:38', '2016-04-29 19:48:53', 1, 0, 0, 0, 0, 0),
(6, 1, 'localhost', '/wordpress/popup/', '2016-05-20 03:00:55', '2017-05-11 23:29:17', 1, 0, 0, 0, 0, 0),
(7, 1, 'localhost', '/wordpress/innerheart/', '2016-06-08 12:05:03', '2016-06-22 14:34:27', 1, 0, 0, 0, 0, 0),
(8, 1, 'localhost', '/wordpress/kylescott360/', '2016-06-15 08:23:50', '2018-03-22 12:41:53', 1, 0, 0, 0, 0, 0),
(9, 1, 'localhost', '/wordpress/filmbuzzdk/', '2016-06-22 22:33:10', '2016-08-03 15:56:49', 1, 0, 0, 0, 0, 0),
(10, 1, 'localhost', '/wordpress/theviralzoo/', '2016-06-23 18:17:18', '2016-08-04 11:24:43', 1, 0, 0, 0, 0, 0),
(11, 1, 'localhost', '/wordpress/humgurung/', '2016-07-01 11:53:24', '2016-07-22 03:48:06', 1, 0, 0, 0, 0, 0),
(12, 1, 'localhost', '/wordpress/artkrunch/', '2016-08-13 12:55:12', '2016-12-18 22:22:17', 1, 0, 0, 0, 0, 0),
(13, 1, 'localhost', '/wordpress/om-rail/', '2016-08-15 14:11:26', '2016-08-15 14:11:43', 1, 0, 0, 0, 0, 0),
(14, 1, 'localhost', '/wordpress/bobsausage/', '2016-08-16 11:37:46', '2016-08-16 21:49:22', 1, 0, 0, 0, 0, 0),
(15, 1, 'localhost', '/wordpress/bespaced/', '2016-08-17 08:32:50', '2016-08-17 08:54:06', 1, 0, 0, 0, 0, 0),
(16, 1, 'localhost', '/wordpress/sweat-yoga/', '2016-09-23 21:56:32', '2016-11-18 10:33:24', 1, 0, 0, 0, 0, 0),
(17, 1, 'localhost', '/wordpress/seawave3/', '2016-09-28 18:51:28', '2016-10-01 15:23:11', 1, 0, 0, 0, 0, 0),
(18, 1, 'localhost', '/wordpress/seobuildandrank/', '2016-10-04 08:00:45', '2016-10-21 00:32:47', 1, 0, 0, 0, 0, 0),
(19, 1, 'localhost', '/wordpress/theproagency/', '2016-10-27 21:36:23', '2016-10-28 08:58:32', 1, 0, 0, 0, 0, 0),
(20, 1, 'localhost', '/wordpress/kameir/', '2016-11-18 18:18:29', '2017-03-17 08:54:26', 1, 0, 0, 0, 0, 0),
(21, 1, 'localhost', '/wordpress/adventist/', '2016-11-30 15:39:50', '2016-12-04 14:28:54', 1, 0, 0, 0, 0, 0),
(22, 1, 'localhost', '/wordpress/919law/', '2016-12-06 18:04:23', '2016-12-07 01:36:23', 1, 0, 0, 0, 0, 0),
(23, 1, 'localhost', '/wordpress/robby/', '2017-02-08 22:26:12', '2017-02-09 10:33:32', 1, 0, 0, 0, 0, 0),
(24, 1, 'localhost', '/wordpress/ariboy2/', '2017-02-19 00:11:21', '2017-02-19 00:16:25', 1, 0, 0, 0, 0, 0),
(25, 1, 'localhost', '/wordpress/microjobs/', '2017-03-06 20:40:03', '2017-03-06 22:31:55', 1, 0, 0, 0, 0, 0),
(26, 1, 'localhost', '/wordpress/basibanget/', '2017-03-09 00:32:08', '2017-03-13 04:01:20', 1, 0, 0, 0, 0, 0),
(27, 1, 'localhost', '/wordpress/webkyle/', '2017-03-12 23:12:03', '2017-03-17 09:00:41', 1, 0, 0, 0, 0, 0),
(28, 1, 'localhost', '/wordpress/tailopez/', '2017-03-30 19:28:01', '2017-04-03 00:30:22', 1, 0, 0, 0, 0, 0),
(29, 1, 'localhost', '/wordpress/snetworksclassifieds/', '2017-03-31 10:44:47', '2017-04-01 15:29:52', 1, 0, 0, 0, 0, 0),
(30, 1, 'localhost', '/wordpress/jeromebasilio/', '2017-04-03 21:17:34', '2017-04-03 21:17:53', 1, 0, 0, 0, 0, 0),
(31, 1, 'localhost', '/wordpress/lewis901/', '2017-04-21 07:12:11', '2017-04-22 02:20:19', 1, 0, 0, 0, 0, 0),
(32, 1, 'localhost', '/wordpress/aishavender/', '2017-04-22 22:02:31', '2017-06-04 21:53:09', 1, 0, 0, 0, 0, 0),
(33, 1, 'localhost', '/wordpress/shashank/', '2017-05-11 23:30:22', '2017-05-15 09:54:01', 1, 0, 0, 0, 0, 0),
(34, 1, 'localhost', '/wordpress/webthemes/', '2017-06-17 23:55:36', '2017-07-03 21:45:21', 1, 0, 0, 0, 0, 0),
(35, 1, 'localhost', '/wordpress/leadgen/', '2017-07-06 11:15:14', '2017-07-06 11:37:12', 1, 0, 0, 0, 0, 0),
(37, 1, 'localhost', '/wordpress/commonsenseenergy-two/', '2017-08-24 16:37:17', '2017-08-24 17:01:46', 1, 0, 0, 0, 0, 0),
(38, 1, 'localhost', '/wordpress/arhostclub/', '2017-11-06 19:22:09', '2017-11-06 21:57:21', 1, 0, 0, 0, 0, 0),
(41, 1, 'localhost', '/wordpress/travelnetworkview/', '2017-11-11 10:48:00', '2017-11-30 09:03:02', 1, 0, 0, 0, 0, 0),
(42, 1, 'localhost', '/wordpress/redzwan12/', '2017-11-15 02:49:52', '2017-11-18 01:01:58', 1, 0, 0, 0, 0, 0),
(43, 1, 'localhost', '/wordpress/dubai24-7/', '2017-11-21 11:05:26', '2018-08-09 21:34:04', 1, 0, 0, 0, 0, 0),
(52, 1, 'localhost', '/wordpress/woolast/', '2018-01-16 11:47:57', '2018-01-16 19:54:26', 1, 0, 0, 0, 0, 0),
(53, 1, 'localhost', '/wordpress/news/', '2018-01-16 20:16:39', '2018-01-16 20:16:57', 1, 0, 0, 0, 0, 0),
(54, 1, 'localhost', '/wordpress/breakwatermarina/', '2018-02-01 23:30:35', '2018-02-02 00:45:47', 1, 0, 0, 0, 0, 0),
(55, 1, 'localhost', '/wordpress/johnsonberryfarm/', '2018-02-10 21:52:32', '2018-03-11 22:57:49', 1, 0, 0, 0, 0, 0),
(56, 1, 'localhost', '/wordpress/online-dubai24/', '2018-02-20 07:43:41', '2018-07-05 10:54:53', 1, 0, 0, 0, 0, 0),
(57, 1, 'localhost', '/wordpress/property/', '2018-02-21 19:56:51', '2018-02-28 13:14:35', 1, 0, 0, 0, 0, 0),
(58, 1, 'localhost', '/wordpress/nonprofitwebsites/', '2018-03-06 19:49:33', '2018-04-03 11:58:04', 1, 0, 0, 0, 0, 0),
(59, 1, 'localhost', '/wordpress/danceacademyusa/', '2018-03-18 15:58:25', '2018-03-22 01:49:11', 1, 0, 0, 0, 0, 0),
(60, 1, 'localhost', '/wordpress/leonardolilleen/', '2018-04-08 12:06:04', '2018-04-10 00:23:42', 1, 0, 0, 0, 0, 0),
(61, 1, 'localhost', '/wordpress/animalslovereiki/', '2018-04-14 21:41:59', '2018-04-15 23:50:53', 1, 0, 0, 0, 0, 0),
(62, 1, 'localhost', '/wordpress/billmitchell/', '2018-04-21 23:37:33', '2018-04-22 03:32:44', 1, 0, 0, 0, 0, 0),
(63, 1, 'localhost', '/wordpress/mostafaparvez/', '2018-04-23 07:46:48', '2018-10-30 01:10:59', 1, 0, 0, 0, 0, 0),
(64, 1, 'localhost', '/wordpress/isaacbrakha/', '2018-05-17 00:39:19', '2018-08-19 02:13:45', 1, 0, 0, 0, 0, 0),
(65, 1, 'localhost', '/wordpress/southbaywebs/', '2018-05-22 00:54:27', '2018-07-19 23:51:09', 1, 0, 0, 0, 0, 0),
(66, 1, 'localhost', '/wordpress/om-stripe/', '2018-05-24 23:55:16', '2018-05-30 02:01:34', 1, 0, 0, 0, 0, 0),
(67, 1, 'localhost', '/wordpress/haidertourismllc/', '2018-07-23 21:01:07', '2018-07-23 21:01:25', 1, 0, 0, 0, 0, 0),
(68, 1, 'localhost', '/wordpress/charles-ngansop/', '2019-01-10 22:05:47', '2019-01-10 23:44:58', 1, 0, 0, 0, 0, 0),
(69, 1, 'localhost', '/wordpress/ron-nourani/', '2019-01-12 13:02:39', '2019-01-14 22:19:22', 1, 0, 0, 0, 0, 0),
(70, 1, 'localhost', '/wordpress/liveradio/', '2019-01-18 13:03:44', '2019-06-26 13:46:18', 1, 0, 0, 0, 0, 0),
(71, 1, 'localhost', '/wordpress/myuserismyname/', '2019-02-07 21:12:38', '2019-02-09 00:00:18', 1, 0, 0, 0, 0, 0),
(72, 1, 'localhost', '/wordpress/matchstixx/', '2019-02-09 23:41:51', '2019-07-04 13:30:29', 1, 0, 0, 0, 0, 0),
(73, 1, 'localhost', '/wordpress/utkarsh-dixit/', '2019-03-06 11:45:48', '2019-03-14 11:58:22', 1, 0, 0, 0, 0, 0),
(74, 1, 'localhost', '/wordpress/obs-1980/', '2019-04-07 14:42:08', '2019-04-07 20:42:08', 1, 0, 0, 0, 0, 0),
(75, 1, 'localhost', '/wordpress/gaminoaj/', '2019-04-12 21:27:15', '2019-04-18 12:49:22', 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_blog_versions`
--

CREATE TABLE `wp_blog_versions` (
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `db_version` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_blog_versions`
--

INSERT INTO `wp_blog_versions` (`blog_id`, `db_version`, `last_updated`) VALUES
(1, '44719', '2017-04-04 23:34:31'),
(2, '43764', '2019-01-16 03:46:02'),
(3, '43764', '2019-01-16 03:45:54'),
(4, '43764', '2017-06-03 13:55:33'),
(5, '43764', '2017-04-06 02:20:45'),
(6, '43764', '2017-05-12 04:59:09'),
(7, '43764', '2019-01-16 03:45:27'),
(8, '43764', '2018-03-22 18:03:24'),
(9, '43764', '2019-01-16 03:45:02'),
(10, '43764', '2019-01-16 03:44:56'),
(11, '43764', '2019-01-16 03:44:50'),
(12, '43764', '2017-06-04 20:49:34'),
(13, '43764', '2019-01-16 03:44:41'),
(14, '43764', '2019-01-16 03:44:25'),
(15, '43764', '2017-06-03 13:55:01'),
(16, '43764', '2019-01-16 03:44:17'),
(17, '43764', '2019-01-16 03:44:10'),
(18, '43764', '2019-01-16 03:44:03'),
(19, '43764', '2019-01-16 03:43:49'),
(20, '43764', '2019-01-16 03:43:44'),
(21, '43764', '2017-05-12 04:59:46'),
(22, '43764', '2017-08-24 22:11:39'),
(23, '43764', '2017-08-24 22:11:29'),
(24, '43764', '2017-08-24 22:11:21'),
(25, '43764', '2017-08-24 22:11:12'),
(26, '43764', '2017-08-24 22:10:58'),
(27, '43764', '2017-08-24 22:10:37'),
(28, '43764', '2017-08-24 22:10:32'),
(29, '43764', '2017-08-24 22:10:21'),
(30, '43764', '2017-08-24 22:10:05'),
(31, '43764', '2019-01-16 03:42:18'),
(32, '43764', '2019-01-16 03:42:11'),
(33, '43764', '2019-01-16 03:42:05'),
(34, '43764', '2019-01-16 03:41:38'),
(35, '43764', '2019-01-16 03:41:30'),
(37, '43764', '2019-01-16 03:41:26'),
(38, '43764', '2019-01-16 03:41:22'),
(41, '43764', '2019-01-16 03:41:19'),
(42, '43764', '2019-01-16 03:40:38'),
(43, '43764', '2019-01-16 03:40:26'),
(52, '43764', '2019-01-16 03:40:14'),
(53, '43764', '2019-01-16 03:40:01'),
(54, '43764', '2019-01-16 03:39:57'),
(55, '43764', '2019-01-16 03:39:28'),
(56, '43764', '2019-01-16 03:39:18'),
(57, '43764', '2019-01-16 03:39:14'),
(58, '43764', '2019-01-16 03:39:10'),
(59, '43764', '2019-01-16 03:39:06'),
(60, '43764', '2019-01-16 03:38:39'),
(61, '43764', '2019-01-16 03:38:30'),
(62, '43764', '2019-01-16 03:38:24'),
(63, '43764', '2019-01-16 03:38:19'),
(64, '43764', '2019-01-15 04:54:16'),
(65, '44719', '2019-01-16 03:38:04'),
(66, '43764', '2019-01-16 03:37:59'),
(67, '43764', '2019-01-16 03:37:56'),
(68, '43764', '2019-01-13 22:36:26'),
(70, '44719', '2019-06-04 22:16:01'),
(72, '44719', '2019-04-19 02:58:26'),
(75, '44719', '2019-04-16 15:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `wp_registration_log`
--

CREATE TABLE `wp_registration_log` (
  `ID` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `IP` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_registration_log`
--

INSERT INTO `wp_registration_log` (`ID`, `email`, `IP`, `blog_id`, `date_registered`) VALUES
(1, 'rocky.red91@gmail.com', '1', 2, '2016-03-26 18:53:09'),
(2, 'rocky.red91@gmail.com', '1', 3, '2016-04-13 15:43:28'),
(3, 'rocky.red91@gmail.com', '1', 4, '2016-04-17 14:15:09'),
(4, 'rocky.red91@gmail.com', '1', 5, '2016-04-29 19:48:53'),
(5, 'rocky.red91@gmail.com', '1', 6, '2016-05-20 03:01:16'),
(6, 'rocky.red91@gmail.com', '1', 7, '2016-06-08 12:05:20'),
(7, 'rocky.red91@gmail.com', '1', 8, '2016-06-15 08:24:05'),
(8, 'rocky.red91@gmail.com', '1', 9, '2016-06-22 22:33:26'),
(9, 'rocky.red91@gmail.com', '1', 10, '2016-06-23 18:17:34'),
(10, 'rocky.red91@gmail.com', '1', 11, '2016-07-01 11:53:40'),
(11, 'rocky.red91@gmail.com', '1', 12, '2016-08-13 12:55:29'),
(12, 'rocky.red91@gmail.com', '1', 13, '2016-08-15 14:11:43'),
(13, 'rocky.red91@gmail.com', '1', 14, '2016-08-16 11:38:03'),
(14, 'rocky.red91@gmail.com', '1', 15, '2016-08-17 08:33:06'),
(15, 'rocky.red91@gmail.com', '1', 16, '2016-09-23 21:56:49'),
(16, 'rockysingh91@gmail.com', '1', 17, '2016-09-28 18:51:43'),
(17, 'rocky.red91@gmail.com', '1', 18, '2016-10-04 08:01:01'),
(18, 'rocky.red91@gmail.com', '1', 19, '2016-10-27 21:36:38'),
(19, 'rocky.red91@gmail.com', '1', 20, '2016-11-18 18:18:46'),
(20, 'rocky.red91@gmail.com', '1', 21, '2016-11-30 15:40:09'),
(21, 'rocky.red91@gmail.com', '1', 22, '2016-12-06 18:04:43'),
(22, 'Robby@gmail.com', '1', 23, '2017-02-08 22:26:29'),
(23, 'ariboy2@gmail.com', '1', 24, '2017-02-19 00:11:37'),
(24, 'microJobs@gmail.com', '1', 25, '2017-03-06 20:40:19'),
(25, 'rocky.red91@gmail.com', '1', 26, '2017-03-09 00:32:28'),
(26, 'webkyle@gmail.com', '1', 27, '2017-03-12 23:12:20'),
(27, 'rocky.red91@gmail.com', '1', 28, '2017-03-30 19:28:18'),
(28, 'rocky.red91@gmail.com', '1', 29, '2017-03-31 10:45:05'),
(29, 'jeromebasilio@gmail.com', '1', 30, '2017-04-03 21:17:53'),
(30, 'rocky.red91@gmail.com', '1', 31, '2017-04-21 07:12:30'),
(31, 'rocky.red91@gmail.com', '1', 32, '2017-04-22 22:02:51'),
(32, 'rocky.red91@gmail.com', '1', 33, '2017-05-11 23:30:41'),
(33, 'rocky.red91@gmail.com', '1', 34, '2017-06-17 23:55:53'),
(34, 'rocky.red91@gmail.com', '1', 35, '2017-07-06 11:15:30'),
(35, 'rocky.red91@gmail.com', '1', 36, '2017-08-24 05:31:09'),
(36, 'rocky.red91@gmail.com', '1', 37, '2017-08-24 16:37:50'),
(37, 'rocky.red91@gmail.com', '1', 38, '2017-11-06 19:22:30'),
(38, 'rocky.red91@gmail.com', '1', 39, '2017-11-10 06:01:39'),
(39, 'rocky.red91@gmail.com', '1', 40, '2017-11-10 08:19:33'),
(40, 'rocky.red91@gmail.com', '1', 41, '2017-11-11 10:48:17'),
(41, 'rocky.red91@gmail.com', '1', 42, '2017-11-15 02:50:10'),
(42, 'rocky.red91@gmail.com', '1', 43, '2017-11-21 11:05:41'),
(43, 's@gmail.com', '1', 44, '2018-01-14 19:01:52'),
(44, 'sidd@gmail.com', '1', 45, '2018-01-14 22:34:38'),
(45, 'ss@gmail.com', '1', 46, '2018-01-15 12:36:45'),
(46, 'soo@gmail.com', '1', 47, '2018-01-15 19:47:06'),
(47, 'wooTwo@gmail.com', '1', 48, '2018-01-15 20:31:28'),
(48, 'wooss@gmail.com', '1', 49, '2018-01-15 23:05:47'),
(49, 'woomm@gmail.com', '1', 50, '2018-01-15 23:53:04'),
(50, 'wo@gmail.com', '1', 51, '2018-01-16 10:50:53'),
(51, 'woolast@gmail.com', '1', 52, '2018-01-16 11:48:18'),
(52, 'ss@gmail.com', '1', 53, '2018-01-16 20:16:57'),
(53, 'breakwatermarina@gmail.com', '1', 54, '2018-02-01 23:30:54'),
(54, 'johnsonberryfarm@gmil.com', '1', 55, '2018-02-10 21:52:49'),
(55, 'Online@gmail.com', '1', 56, '2018-02-20 07:43:58'),
(56, 'property@gmail.com', '1', 57, '2018-02-21 19:57:09'),
(57, 'nonprofitwebsites@gmail.com', '1', 58, '2018-03-06 19:49:49'),
(58, 'rocky.red91@gmail.com', '1', 59, '2018-03-18 15:58:43'),
(59, 'rocky.red91@gmail.com', '1', 60, '2018-04-08 12:06:23'),
(60, 'rocky.red91@gmail.com', '1', 61, '2018-04-14 21:42:13'),
(61, 'rocky.red91@gmail.com', '1', 62, '2018-04-21 23:37:49'),
(62, 'rocky.red91@gmail.com', '1', 63, '2018-04-23 07:47:03'),
(63, 'rocky.red91@gmail.com', '1', 64, '2018-05-17 00:39:37'),
(64, 'southbaywebs@southbaywebs.com', '1', 65, '2018-05-22 00:54:54'),
(65, 'om-stripe@om-stripe.com', '1', 66, '2018-05-24 23:55:33'),
(66, 'rocky.red91@gmail.com', '1', 67, '2018-07-23 21:01:26'),
(67, 'rocky.red91@gmail.com', '1', 68, '2019-01-10 22:06:03'),
(68, 'rocky.red91@gmail.com', '1', 69, '2019-01-12 13:02:55'),
(69, 'rocky.red91@gmail.com', '1', 70, '2019-01-18 13:04:01'),
(70, 'rocky.red91@gmail.com', '1', 71, '2019-02-07 21:12:54'),
(71, 'rocky.red91@gmail.com', '1', 72, '2019-02-09 23:42:14'),
(72, 'rocky.red91@gmail.com', '1', 73, '2019-03-06 11:46:03'),
(73, 'rocky.red91@gmail.com', '1', 74, '2019-04-07 14:42:09'),
(74, 'rocky.red91@gmail.com', '1', 75, '2019-04-12 21:27:16');

-- --------------------------------------------------------

--
-- Table structure for table `wp_signups`
--

CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_signups`
--

INSERT INTO `wp_signups` (`signup_id`, `domain`, `path`, `title`, `user_login`, `user_email`, `registered`, `activated`, `active`, `activation_key`, `meta`) VALUES
(1, '', '', '', 'sdeane', 'sdeane@gmail.com', '2018-03-06 23:07:12', '2018-03-06 23:07:14', 1, '82181f2c0d66e065', 'a:2:{s:11:\"add_to_blog\";i:58;s:8:\"new_role\";s:13:\"administrator\";}'),
(2, '', '', '', 'ranu', 'ranu@gmail.com', '2018-05-28 00:17:20', '2018-05-28 00:17:22', 1, 'a6f6c516dace5691', 'a:2:{s:11:\"add_to_blog\";i:66;s:8:\"new_role\";s:13:\"administrator\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_site`
--

CREATE TABLE `wp_site` (
  `id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_site`
--

INSERT INTO `wp_site` (`id`, `domain`, `path`) VALUES
(1, 'localhost', '/wordpress/');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sitemeta`
--

CREATE TABLE `wp_sitemeta` (
  `meta_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_sitemeta`
--

INSERT INTO `wp_sitemeta` (`meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'site_name', 'Localhost Sites'),
(2, 1, 'admin_email', 'rocky.red91@gmail.com'),
(3, 1, 'admin_user_id', '1'),
(4, 1, 'registration', 'all'),
(5, 1, 'upload_filetypes', 'jpg jpeg png gif mov avi mpg 3gp 3g2 midi mid pdf doc ppt odt pptx docx pps ppsx xls xlsx key mp3 ogg wma m4a wav mp4 m4v webm ogv wmv flv'),
(6, 1, 'blog_upload_space', '2000'),
(7, 1, 'fileupload_maxk', '6000000'),
(8, 1, 'site_admins', 'a:1:{i:0;s:5:\"admin\";}'),
(9, 1, 'allowedthemes', 'a:2:{s:13:\"twentysixteen\";b:1;s:8:\"news-pro\";b:1;}'),
(10, 1, 'illegal_names', 'a:21:{i:0;s:3:\"www\";i:1;s:3:\"web\";i:2;s:4:\"root\";i:3;s:5:\"admin\";i:4;s:4:\"main\";i:5;s:6:\"invite\";i:6;s:13:\"administrator\";i:7;s:6:\"groups\";i:8;s:7:\"members\";i:9;s:6:\"forums\";i:10;s:5:\"blogs\";i:11;s:8:\"activity\";i:12;s:7:\"profile\";i:13;s:7:\"friends\";i:14;s:6:\"search\";i:15;s:8:\"settings\";i:16;s:13:\"notifications\";i:17;s:8:\"register\";i:18;s:8:\"activate\";i:19;s:5:\"files\";i:20;s:4:\"blog\";}'),
(11, 1, 'wpmu_upgrade_site', '43764'),
(12, 1, 'welcome_email', 'Howdy USERNAME,\r\n\r\nYour new SITE_NAME site has been successfully set up at:\r\nBLOG_URL\r\n\r\nYou can log in to the administrator account with the following information:\r\n\r\nUsername: USERNAME\r\nPassword: PASSWORD\r\nLog in here: BLOG_URLwp-login.php\r\n\r\nWe hope you enjoy your new site. Thanks!\r\n\r\n--The Team @ SITE_NAME'),
(13, 1, 'first_post', 'Welcome to %s. This is your first post. Edit or delete it, then start blogging!'),
(14, 1, 'siteurl', 'http://localhost/wordpress/'),
(15, 1, 'add_new_users', '1'),
(16, 1, 'upload_space_check_disabled', '0'),
(17, 1, 'subdomain_install', '0'),
(18, 1, 'global_terms_enabled', '0'),
(19, 1, 'ms_files_rewriting', '0'),
(20, 1, 'initial_db_version', '35700'),
(21, 1, 'active_sitewide_plugins', 'a:0:{}'),
(22, 1, 'WPLANG', ''),
(28, 1, 'user_count', '156'),
(29, 1, 'blog_count', '64'),
(30, 1, 'can_compress_scripts', '1'),
(31, 1, 'registrationnotification', 'yes'),
(32, 1, 'welcome_user_email', 'Howdy USERNAME,\r\n\r\nYour new account is set up.\r\n\r\nYou can log in with the following information:\r\nUsername: USERNAME\r\nPassword: PASSWORD\r\nLOGINLINK\r\n\r\nThanks!\r\n\r\n--The Team @ SITE_NAME'),
(44, 1, 'recently_activated', 'a:2:{s:49:\"export-featured-images/export-featured-images.php\";i:1562244139;s:25:\"profile-builder/index.php\";i:1562244139;}'),
(152, 1, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:6:\"manual\";s:5:\"email\";s:21:\"rocky.red91@gmail.com\";s:7:\"version\";s:5:\"4.7.1\";s:9:\"timestamp\";i:1485377586;}'),
(205, 1, 'menu_items', 'a:1:{s:7:\"plugins\";s:1:\"1\";}'),
(206, 1, 'first_page', ''),
(207, 1, 'first_comment', ''),
(208, 1, 'first_comment_url', ''),
(209, 1, 'first_comment_author', ''),
(210, 1, 'limited_email_domains', ''),
(211, 1, 'banned_email_domains', ''),
(915, 1, 'motopress-ce-lite-status', 'started'),
(1433, 1, 'first_comment_email', ''),
(2536, 1, 'new_admin_email', 'rocky.red91@gmail.com'),
(3167, 1, 'duplicate_post_show_notice', '1'),
(3571, 1, 'site_meta_supported', '1'),
(3806, 1, '_site_transient_timeout_php_check_e07d3b5b60161a40c9887e1155defaa1', '1562791493'),
(3807, 1, '_site_transient_php_check_e07d3b5b60161a40c9887e1155defaa1', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:1;}'),
(3823, 1, '_site_transient_timeout_browser_b2effccc0469ee2a2e6db5295d595f4c', '1562846187'),
(3824, 1, '_site_transient_browser_b2effccc0469ee2a2e6db5295d595f4c', 'a:10:{s:4:\"name\";s:5:\"Opera\";s:7:\"version\";s:13:\"60.0.3255.170\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:22:\"https://www.opera.com/\";s:7:\"img_src\";s:42:\"http://s.w.org/images/browsers/opera.png?1\";s:11:\"img_src_ssl\";s:43:\"https://s.w.org/images/browsers/opera.png?1\";s:15:\"current_version\";s:5:\"12.18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}'),
(3825, 1, '_site_transient_timeout_browser_5ac71600cc9c7fa82bbc370cd02eb16b', '1562851628'),
(3826, 1, '_site_transient_browser_5ac71600cc9c7fa82bbc370cd02eb16b', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"67.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}'),
(3832, 1, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1562377519'),
(3833, 1, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4595;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3515;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2628;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2492;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1923;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1741;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1736;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1470;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1443;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1438;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1435;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1369;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1332;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1295;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1147;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1122;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1100;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1069;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1018;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:940;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:855;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:844;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:839;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:801;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:744;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:735;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:730;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:720;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:710;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:699;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:699;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:685;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:674;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:662;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:661;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:653;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:633;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:623;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:621;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:620;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:590;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:590;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:572;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:568;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:561;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:557;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:548;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:544;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:534;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:526;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:525;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:516;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:514;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:510;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:505;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:497;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:492;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:477;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:477;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:475;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:471;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:468;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:459;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:453;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:441;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:431;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:426;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:422;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:416;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:415;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:411;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:402;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:399;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:399;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:393;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:389;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:385;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:384;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:378;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:376;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:368;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:363;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:362;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:361;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:356;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:354;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:353;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:350;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:346;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:346;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:340;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:332;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:325;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:323;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:320;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:320;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:317;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:315;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:310;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:310;}}'),
(3836, 1, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1562410010'),
(3837, 1, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:37:\"WordCamp Bharatpur, Province-3, Nepal\";s:3:\"url\";s:35:\"https://2019.bharatpur.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2019-11-09 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:28:\"Bharatpur, Province-3, Nepal\";s:7:\"country\";s:2:\"NP\";s:8:\"latitude\";d:27.648663599999999;s:9:\"longitude\";d:84.417266600000005;}}}}'),
(3838, 1, '_site_transient_timeout_available_translations', '1562379053');
INSERT INTO `wp_sitemeta` (`meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(3839, 1, '_site_transient_available_translations', 'a:117:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.0.4\";s:7:\"updated\";s:19:\"2019-05-16 12:52:45\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.0.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-15 14:27:16\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.2.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-14 14:59:20\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.9.10/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-10 20:13:25\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-16 03:25:39\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.2.1/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-14 07:58:27\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-14 11:54:05\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.2.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-14 05:36:50\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-11 08:51:16\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.2.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-25 20:13:18\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.1.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-10 16:02:58\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-10 16:03:04\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:72:\"http://downloads.wordpress.org/translation/core/5.2.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:3:\"5.2\";s:7:\"updated\";s:19:\"2019-05-07 21:15:55\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-13 17:30:07\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-13 17:30:49\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/5.2.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-06 05:44:03\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.2.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-18 10:42:19\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-13 17:25:10\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-18 10:42:08\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-06-06 15:48:01\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.1.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-13 17:33:22\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-05-19 17:09:08\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.2.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-06 15:53:48\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-17 03:26:22\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"5.2\";s:7:\"updated\";s:19:\"2019-05-11 15:51:57\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-18 12:06:18\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-06 21:26:01\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.0/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-07 18:38:30\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.0/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-23 02:23:28\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.9.10/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-05-29 05:00:30\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-12 08:08:56\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.2.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-13 17:32:08\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-17 01:38:53\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-15 09:41:31\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-05-28 10:07:08\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-11 14:05:23\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.2.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-14 07:31:31\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-18 06:50:11\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.2.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-02-21 08:17:32\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-08 04:00:57\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.9.10/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 14:27:41\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.0.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.0.4\";s:7:\"updated\";s:19:\"2019-06-17 20:45:59\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.0.4/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.13\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.13/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-10 17:45:28\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-17 06:02:07\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-23 09:40:21\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/5.1.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-13 17:34:52\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-09 16:36:42\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.1.1/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:8:\"5.2-beta\";s:7:\"updated\";s:19:\"2019-04-09 16:46:27\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/translation/core/5.2-beta/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-11 13:56:15\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-17 08:23:12\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:3:\"5.2\";s:7:\"updated\";s:19:\"2019-05-08 11:59:02\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-17 09:24:27\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:68:\"http://downloads.wordpress.org/translation/core/5.2.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-18 13:30:06\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-15 12:19:22\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-17 15:22:52\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-14 13:39:13\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.2.1/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-04-02 15:10:17\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.1.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-05-21 18:58:08\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-13 17:16:16\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-16 03:13:05\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.2.1/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-12 23:35:59\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-17 19:34:53\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.2.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-31 10:39:40\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.1.1/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-05-24 10:49:36\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.2.1/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-17 05:35:37\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.2.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:3:\"5.2\";s:7:\"updated\";s:19:\"2019-05-09 17:07:08\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2018-12-21 00:57:14\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.1.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}'),
(3840, 1, '_site_transient_timeout_theme_roots', '1562370499');
INSERT INTO `wp_sitemeta` (`meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(3841, 1, '_site_transient_theme_roots', 'a:84:{s:9:\"Adnetwork\";s:7:\"/themes\";s:18:\"Aisha-multi-vendor\";s:7:\"/themes\";s:9:\"Artkrunch\";s:7:\"/themes\";s:12:\"Billmitchell\";s:7:\"/themes\";s:15:\"CherryFramework\";s:7:\"/themes\";s:9:\"Dubai24-7\";s:7:\"/themes\";s:18:\"Dubai24-7_01.00.01\";s:7:\"/themes\";s:19:\"MVP-by-Bear-and-Fly\";s:7:\"/themes\";s:10:\"New-Upload\";s:7:\"/themes\";s:10:\"Om-Railway\";s:7:\"/themes\";s:5:\"Robby\";s:7:\"/themes\";s:13:\"adventist.org\";s:7:\"/themes\";s:20:\"animalslovereiki.com\";s:7:\"/themes\";s:11:\"apsolutions\";s:7:\"/themes\";s:14:\"arhostclub.com\";s:7:\"/themes\";s:7:\"ariboy2\";s:7:\"/themes\";s:10:\"basibanget\";s:7:\"/themes\";s:8:\"beautify\";s:7:\"/themes\";s:25:\"breakwater-marina-themeV2\";s:7:\"/themes\";s:15:\"charles-ngansop\";s:7:\"/themes\";s:17:\"commonsenseenergy\";s:7:\"/themes\";s:15:\"danceacademyusa\";s:7:\"/themes\";s:13:\"electro-child\";s:7:\"/themes\";s:7:\"electro\";s:7:\"/themes\";s:10:\"filmbuzzdk\";s:7:\"/themes\";s:17:\"freelanceengine-2\";s:7:\"/themes\";s:8:\"gaminoaj\";s:7:\"/themes\";s:7:\"genesis\";s:7:\"/themes\";s:14:\"giliboatticket\";s:7:\"/themes\";s:9:\"helix-jbf\";s:7:\"/themes\";s:21:\"homesmiles.com/BACKUP\";s:7:\"/themes\";s:18:\"homesmiles.com/css\";s:7:\"/themes\";s:6:\"hooray\";s:7:\"/themes\";s:9:\"humgurung\";s:7:\"/themes\";s:10:\"imranbajwa\";s:7:\"/themes\";s:10:\"innerheart\";s:7:\"/themes\";s:11:\"isaacbrakha\";s:7:\"/themes\";s:13:\"jeromebasilio\";s:7:\"/themes\";s:16:\"johnsonberryfarm\";s:7:\"/themes\";s:13:\"jupiter-child\";s:7:\"/themes\";s:7:\"jupiter\";s:7:\"/themes\";s:12:\"kylescott360\";s:7:\"/themes\";s:15:\"leonardolilleen\";s:7:\"/themes\";s:14:\"liveradio.club\";s:7:\"/themes\";s:10:\"matchstixx\";s:7:\"/themes\";s:13:\"mostafaparvez\";s:7:\"/themes\";s:14:\"myuserismyname\";s:7:\"/themes\";s:8:\"news-pro\";s:7:\"/themes\";s:17:\"nonprofitwebsites\";s:7:\"/themes\";s:8:\"obs_1980\";s:7:\"/themes\";s:7:\"oceanwp\";s:7:\"/themes\";s:11:\"om-harappan\";s:7:\"/themes\";s:9:\"om-stripe\";s:7:\"/themes\";s:16:\"online.dubai24-7\";s:7:\"/themes\";s:25:\"online.dubai24-7_01.00.01\";s:7:\"/themes\";s:8:\"property\";s:7:\"/themes\";s:9:\"redzwan12\";s:7:\"/themes\";s:11:\"ron-nourani\";s:7:\"/themes\";s:6:\"sample\";s:7:\"/themes\";s:8:\"seawave3\";s:7:\"/themes\";s:15:\"shashank_Center\";s:7:\"/themes\";s:20:\"snetworksclassifieds\";s:7:\"/themes\";s:12:\"southbaywebs\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:19:\"strangersoccer_blog\";s:7:\"/themes\";s:10:\"sweat-yoga\";s:7:\"/themes\";s:8:\"tailopez\";s:7:\"/themes\";s:10:\"theme51769\";s:7:\"/themes\";s:12:\"theproagency\";s:7:\"/themes\";s:13:\"travelNetwork\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";s:12:\"twentytwelve\";s:7:\"/themes\";s:13:\"utkarsh-dixit\";s:7:\"/themes\";s:11:\"webkyle.com\";s:7:\"/themes\";s:12:\"webthemes.my\";s:7:\"/themes\";s:20:\"white-top-show-pro-2\";s:7:\"/themes\";s:20:\"white-top-show-pro-4\";s:7:\"/themes\";s:14:\"white-top-show\";s:7:\"/themes\";s:8:\"wp-optin\";s:7:\"/themes\";s:12:\"wpjobster245\";s:7:\"/themes\";}'),
(3846, 1, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1562369283;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}'),
(3847, 1, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1562369304;s:7:\"checked\";a:67:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.1\";s:47:\"fws-ajax-contact-form/fws-ajax-contact-form.php\";s:7:\"1.0.5.1\";s:37:\"ajax-search-lite/ajax-search-lite.php\";s:6:\"4.7.26\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.97\";s:61:\"auto-post-after-image-upload/auto_post_after_image_upload.php\";s:3:\"1.0\";s:30:\"certificate-download/index.php\";s:7:\"01.1.00\";s:37:\"cherry-lazy-load/cherry-lazy-load.php\";s:3:\"1.0\";s:31:\"cherry-plugin/cherry-plugin.php\";s:7:\"1.2.8.1\";s:51:\"collapsible-widget-area/collapsible-widget-area.php\";s:3:\"1.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.3\";s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";s:7:\"2.10.26\";s:49:\"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php\";s:4:\"1.10\";s:53:\"custom-field-bulk-editor/custom-field-bulk-editor.php\";s:5:\"1.9.1\";s:30:\"display-latest-tweets/init.php\";s:5:\"2.1.1\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"3.2.2\";s:35:\"easy-student-results/rps_result.php\";s:5:\"2.2.7\";s:53:\"easy-twitter-feed-widget/easy-twitter-feed-widget.php\";s:3:\"0.9\";s:41:\"electro-extensions/electro-extensions.php\";s:6:\"1.2.11\";s:23:\"elementor/elementor.php\";s:6:\"2.5.16\";s:31:\"envato-market/envato-market.php\";s:9:\"1.0.0-RC2\";s:49:\"export-featured-images/export-featured-images.php\";s:3:\"1.0\";s:17:\"hd-quiz/index.php\";s:5:\"1.6.1\";s:22:\"header-image/index.php\";s:7:\"01.1.00\";s:21:\"hello-dolly/hello.php\";s:5:\"1.7.2\";s:33:\"gallery-images/gallery-images.php\";s:5:\"2.2.6\";s:31:\"Om-image-gallery_Main/index.php\";s:7:\"01.1.00\";s:27:\"LayerSlider/layerslider.php\";s:5:\"6.1.0\";s:53:\"motopress-content-editor/motopress-content-editor.php\";s:5:\"1.5.8\";s:27:\"ocean-extra/ocean-extra.php\";s:5:\"1.5.9\";s:23:\"om-admin-look/index.php\";s:6:\"1.0.02\";s:33:\"om-calendar-woocommerce/index.php\";s:6:\"1.0.05\";s:32:\"Om_change_login_design/index.php\";s:6:\"1.0.03\";s:47:\"wp-client-testimonial/wp-client-testimonial.php\";s:3:\"2.0\";s:25:\"om-contact-form/index.php\";s:6:\"1.0.05\";s:33:\"om-html-js-css-compress/index.php\";s:8:\"01.00.01\";s:26:\"Om-image-gallery/index.php\";s:6:\"1.0.05\";s:36:\"om-image-upload/sitepoint-upload.php\";s:5:\"0.1.0\";s:31:\"om-social-media-count/index.php\";s:6:\"1.0.05\";s:19:\"om-stripe/index.php\";s:6:\"1.0.06\";s:26:\"popup_buddypress/index.php\";s:6:\"1.0.02\";s:24:\"popup-shraddha/index.php\";s:7:\"01.1.00\";s:57:\"woo-product-gallery-slider/woo-product-gallery-slider.php\";s:5:\"2.0.3\";s:25:\"profile-builder/index.php\";s:5:\"3.0.1\";s:27:\"qtranslate-x/qtranslate.php\";s:7:\"3.4.6.8\";s:25:\"roundcloud/roundcloud.php\";s:5:\"1.0.3\";s:41:\"sassy-social-share/sassy-social-share.php\";s:6:\"3.2.26\";s:41:\"nicdark-shortcodes/nicdark-shortcodes.php\";s:3:\"2.6\";s:23:\"revslider/revslider.php\";s:7:\"5.3.1.5\";s:45:\"social-media-feather/social-media-feather.php\";s:5:\"1.8.4\";s:27:\"tag-category-view/index.php\";s:7:\"01.1.00\";s:27:\"theme-check/theme-check.php\";s:10:\"20190208.1\";s:25:\"tourmaster/tourmaster.php\";s:5:\"3.0.7\";s:35:\"ultimate-member/ultimate-member.php\";s:6:\"2.0.50\";s:37:\"user-role-editor/user-role-editor.php\";s:6:\"4.51.1\";s:53:\"widget-importer-exporter/widget-importer-exporter.php\";s:5:\"1.5.5\";s:29:\"widget-logic/widget_logic.php\";s:6:\"5.10.4\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.5\";s:34:\"woo-product-images-slider/wpis.php\";s:5:\"1.3.0\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.4\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:4:\"2.93\";s:24:\"wp-all-import/plugin.php\";s:5:\"3.5.0\";s:27:\"js_composer/js_composer.php\";s:5:\"5.0.1\";s:33:\"js_composer_theme/js_composer.php\";s:5:\"4.9.2\";s:37:\"wp-editor-widget/wp-editor-widget.php\";s:5:\"0.6.0\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.5.3.1\";s:39:\"wp-hide-dashboard/wp-hide-dashboard.php\";s:5:\"2.2.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:42:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"fws-ajax-contact-form/fws-ajax-contact-form.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/fws-ajax-contact-form\";s:4:\"slug\";s:21:\"fws-ajax-contact-form\";s:6:\"plugin\";s:47:\"fws-ajax-contact-form/fws-ajax-contact-form.php\";s:11:\"new_version\";s:7:\"1.0.5.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/fws-ajax-contact-form/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/fws-ajax-contact-form.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/fws-ajax-contact-form/assets/icon-256x256.jpg?rev=978712\";s:2:\"1x\";s:73:\"https://ps.w.org/fws-ajax-contact-form/assets/icon-128x128.jpg?rev=978712\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/fws-ajax-contact-form/assets/banner-1544x500.png?rev=969446\";s:2:\"1x\";s:75:\"https://ps.w.org/fws-ajax-contact-form/assets/banner-772x250.png?rev=969446\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"ajax-search-lite/ajax-search-lite.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/ajax-search-lite\";s:4:\"slug\";s:16:\"ajax-search-lite\";s:6:\"plugin\";s:37:\"ajax-search-lite/ajax-search-lite.php\";s:11:\"new_version\";s:6:\"4.7.26\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/ajax-search-lite/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/ajax-search-lite.4.7.26.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/ajax-search-lite/assets/icon-256x256.png?rev=970684\";s:2:\"1x\";s:68:\"https://ps.w.org/ajax-search-lite/assets/icon-128x128.png?rev=970684\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/ajax-search-lite/assets/banner-772x250.png?rev=963999\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.97\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.97.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2097157\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2097157\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2097157\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2097157\";}s:11:\"banners_rtl\";a:0:{}}s:61:\"auto-post-after-image-upload/auto_post_after_image_upload.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/auto-post-after-image-upload\";s:4:\"slug\";s:28:\"auto-post-after-image-upload\";s:6:\"plugin\";s:61:\"auto-post-after-image-upload/auto_post_after_image_upload.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/auto-post-after-image-upload/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/auto-post-after-image-upload.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:72:\"https://s.w.org/plugins/geopattern-icon/auto-post-after-image-upload.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:51:\"collapsible-widget-area/collapsible-widget-area.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/collapsible-widget-area\";s:4:\"slug\";s:23:\"collapsible-widget-area\";s:6:\"plugin\";s:51:\"collapsible-widget-area/collapsible-widget-area.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/collapsible-widget-area/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/collapsible-widget-area.1.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:74:\"https://s.w.org/plugins/geopattern-icon/collapsible-widget-area_939ba6.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/collapsible-widget-area/assets/banner-772x250.jpg?rev=505420\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:49:\"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/cpt-bootstrap-carousel\";s:4:\"slug\";s:22:\"cpt-bootstrap-carousel\";s:6:\"plugin\";s:49:\"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php\";s:11:\"new_version\";s:4:\"1.10\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/cpt-bootstrap-carousel/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/cpt-bootstrap-carousel.1.10.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:75:\"https://ps.w.org/cpt-bootstrap-carousel/assets/icon-256x256.png?rev=1085411\";s:2:\"1x\";s:66:\"https://ps.w.org/cpt-bootstrap-carousel/assets/icon.svg?rev=979800\";s:3:\"svg\";s:66:\"https://ps.w.org/cpt-bootstrap-carousel/assets/icon.svg?rev=979800\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/cpt-bootstrap-carousel/assets/banner-1544x500.png?rev=979800\";s:2:\"1x\";s:76:\"https://ps.w.org/cpt-bootstrap-carousel/assets/banner-772x250.png?rev=979800\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"custom-field-bulk-editor/custom-field-bulk-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/custom-field-bulk-editor\";s:4:\"slug\";s:24:\"custom-field-bulk-editor\";s:6:\"plugin\";s:53:\"custom-field-bulk-editor/custom-field-bulk-editor.php\";s:11:\"new_version\";s:5:\"1.9.1\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/custom-field-bulk-editor/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/custom-field-bulk-editor.1.9.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/custom-field-bulk-editor/assets/icon-128x128.png?rev=1068222\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/custom-field-bulk-editor/assets/banner-772x250.jpg?rev=478837\";}s:11:\"banners_rtl\";a:0:{}}s:30:\"display-latest-tweets/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/display-latest-tweets\";s:4:\"slug\";s:21:\"display-latest-tweets\";s:6:\"plugin\";s:30:\"display-latest-tweets/init.php\";s:11:\"new_version\";s:5:\"2.1.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/display-latest-tweets/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/display-latest-tweets.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:66:\"https://ps.w.org/display-latest-tweets/assets/icon.svg?rev=1854605\";s:3:\"svg\";s:66:\"https://ps.w.org/display-latest-tweets/assets/icon.svg?rev=1854605\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/display-latest-tweets/assets/banner-772x250.png?rev=1172069\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"easy-student-results/rps_result.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/easy-student-results\";s:4:\"slug\";s:20:\"easy-student-results\";s:6:\"plugin\";s:35:\"easy-student-results/rps_result.php\";s:11:\"new_version\";s:5:\"2.2.7\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/easy-student-results/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/easy-student-results.2.2.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/easy-student-results/assets/icon-256x256.png?rev=1337707\";s:2:\"1x\";s:73:\"https://ps.w.org/easy-student-results/assets/icon-128x128.png?rev=1337707\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/easy-student-results/assets/banner-772x250.png?rev=1721966\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"easy-twitter-feed-widget/easy-twitter-feed-widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/easy-twitter-feed-widget\";s:4:\"slug\";s:24:\"easy-twitter-feed-widget\";s:6:\"plugin\";s:53:\"easy-twitter-feed-widget/easy-twitter-feed-widget.php\";s:11:\"new_version\";s:3:\"0.9\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/easy-twitter-feed-widget/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/easy-twitter-feed-widget.0.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/easy-twitter-feed-widget/assets/icon-256x256.png?rev=1025015\";s:2:\"1x\";s:77:\"https://ps.w.org/easy-twitter-feed-widget/assets/icon-128x128.png?rev=1025015\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/easy-twitter-feed-widget/assets/banner-1544x500.png?rev=1025015\";s:2:\"1x\";s:79:\"https://ps.w.org/easy-twitter-feed-widget/assets/banner-772x250.png?rev=1025015\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"elementor/elementor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/elementor\";s:4:\"slug\";s:9:\"elementor\";s:6:\"plugin\";s:23:\"elementor/elementor.php\";s:11:\"new_version\";s:6:\"2.5.16\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/elementor/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/elementor.2.5.16.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/elementor/assets/icon-256x256.png?rev=1427768\";s:2:\"1x\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";s:3:\"svg\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=1475479\";s:2:\"1x\";s:64:\"https://ps.w.org/elementor/assets/banner-772x250.png?rev=1475479\";}s:11:\"banners_rtl\";a:0:{}}s:49:\"export-featured-images/export-featured-images.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/export-featured-images\";s:4:\"slug\";s:22:\"export-featured-images\";s:6:\"plugin\";s:49:\"export-featured-images/export-featured-images.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/export-featured-images/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/export-featured-images.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:66:\"https://s.w.org/plugins/geopattern-icon/export-featured-images.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:17:\"hd-quiz/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/hd-quiz\";s:4:\"slug\";s:7:\"hd-quiz\";s:6:\"plugin\";s:17:\"hd-quiz/index.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/hd-quiz/\";s:7:\"package\";s:50:\"https://downloads.wordpress.org/plugin/hd-quiz.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:60:\"https://ps.w.org/hd-quiz/assets/icon-128x128.png?rev=1316004\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hd-quiz/assets/banner-1544x500.jpg?rev=1989549\";s:2:\"1x\";s:62:\"https://ps.w.org/hd-quiz/assets/banner-772x250.jpg?rev=1989549\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"hello-dolly/hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:21:\"hello-dolly/hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"ocean-extra/ocean-extra.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/ocean-extra\";s:4:\"slug\";s:11:\"ocean-extra\";s:6:\"plugin\";s:27:\"ocean-extra/ocean-extra.php\";s:11:\"new_version\";s:5:\"1.5.9\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/ocean-extra/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/ocean-extra.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/ocean-extra/assets/icon-256x256.png?rev=1520440\";s:2:\"1x\";s:64:\"https://ps.w.org/ocean-extra/assets/icon-128x128.png?rev=1520440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ocean-extra/assets/banner-1544x500.png?rev=1583113\";s:2:\"1x\";s:66:\"https://ps.w.org/ocean-extra/assets/banner-772x250.png?rev=1583113\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"om-admin-look/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/om-admin-look\";s:4:\"slug\";s:13:\"om-admin-look\";s:6:\"plugin\";s:23:\"om-admin-look/index.php\";s:11:\"new_version\";s:6:\"1.0.02\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/om-admin-look/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/om-admin-look.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/om-admin-look/assets/icon-128x128.png?rev=1475133\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/om-admin-look/assets/banner-1544x500.jpg?rev=1475133\";s:2:\"1x\";s:68:\"https://ps.w.org/om-admin-look/assets/banner-772x250.jpg?rev=1475133\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"wp-client-testimonial/wp-client-testimonial.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/wp-client-testimonial\";s:4:\"slug\";s:21:\"wp-client-testimonial\";s:6:\"plugin\";s:47:\"wp-client-testimonial/wp-client-testimonial.php\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/wp-client-testimonial/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-client-testimonial.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/wp-client-testimonial/assets/icon-128x128.png?rev=1233803\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/wp-client-testimonial/assets/banner-772x250.png?rev=1228033\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"om-contact-form/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/om-contact-form\";s:4:\"slug\";s:15:\"om-contact-form\";s:6:\"plugin\";s:25:\"om-contact-form/index.php\";s:11:\"new_version\";s:6:\"1.0.05\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/om-contact-form/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/om-contact-form.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/om-contact-form/assets/icon-128x128.png?rev=1242817\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/om-contact-form/assets/banner-1544x500.jpg?rev=1242790\";s:2:\"1x\";s:70:\"https://ps.w.org/om-contact-form/assets/banner-772x250.jpg?rev=1242790\";}s:11:\"banners_rtl\";a:0:{}}s:26:\"Om-image-gallery/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/om-image-gallery\";s:4:\"slug\";s:16:\"om-image-gallery\";s:6:\"plugin\";s:26:\"Om-image-gallery/index.php\";s:11:\"new_version\";s:6:\"1.0.05\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/om-image-gallery/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/om-image-gallery.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/om-image-gallery/assets/icon-128x128.png?rev=1471435\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/om-image-gallery/assets/banner-1544x500.jpg?rev=1471435\";s:2:\"1x\";s:71:\"https://ps.w.org/om-image-gallery/assets/banner-772x250.jpg?rev=1471467\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"om-stripe/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/om-stripe\";s:4:\"slug\";s:9:\"om-stripe\";s:6:\"plugin\";s:19:\"om-stripe/index.php\";s:11:\"new_version\";s:6:\"1.0.05\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/om-stripe/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/plugin/om-stripe.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/om-stripe/assets/icon-128x128.png?rev=1259499\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/om-stripe/assets/banner-1544x500.png?rev=1259499\";s:2:\"1x\";s:64:\"https://ps.w.org/om-stripe/assets/banner-772x250.png?rev=1259499\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"popup-shraddha/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/popup-shraddha\";s:4:\"slug\";s:14:\"popup-shraddha\";s:6:\"plugin\";s:24:\"popup-shraddha/index.php\";s:11:\"new_version\";s:6:\"1.0.02\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/popup-shraddha/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/popup-shraddha.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/popup-shraddha/assets/icon-128x128.jpg?rev=1267899\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/popup-shraddha/assets/banner-1544x500.png?rev=1267899\";s:2:\"1x\";s:69:\"https://ps.w.org/popup-shraddha/assets/banner-772x250.png?rev=1267899\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"woo-product-gallery-slider/woo-product-gallery-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/woo-product-gallery-slider\";s:4:\"slug\";s:26:\"woo-product-gallery-slider\";s:6:\"plugin\";s:57:\"woo-product-gallery-slider/woo-product-gallery-slider.php\";s:11:\"new_version\";s:5:\"2.0.3\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/woo-product-gallery-slider/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/woo-product-gallery-slider.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/woo-product-gallery-slider/assets/icon-256x256.jpg?rev=2087766\";s:2:\"1x\";s:79:\"https://ps.w.org/woo-product-gallery-slider/assets/icon-128x128.jpg?rev=2087766\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/woo-product-gallery-slider/assets/banner-772x250.png?rev=1299918\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"profile-builder/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/profile-builder\";s:4:\"slug\";s:15:\"profile-builder\";s:6:\"plugin\";s:25:\"profile-builder/index.php\";s:11:\"new_version\";s:5:\"3.0.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/profile-builder/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/profile-builder.3.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/profile-builder/assets/icon-256x256.png?rev=1470754\";s:2:\"1x\";s:68:\"https://ps.w.org/profile-builder/assets/icon-128x128.png?rev=1470754\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/profile-builder/assets/banner-772x250.png?rev=1471307\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"qtranslate-x/qtranslate.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/qtranslate-x\";s:4:\"slug\";s:12:\"qtranslate-x\";s:6:\"plugin\";s:27:\"qtranslate-x/qtranslate.php\";s:11:\"new_version\";s:7:\"3.4.6.8\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/qtranslate-x/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/qtranslate-x.3.4.6.8.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://s.w.org/plugins/geopattern-icon/qtranslate-x_f9f9f9.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/qtranslate-x/assets/banner-1544x500.png?rev=1286019\";s:2:\"1x\";s:67:\"https://ps.w.org/qtranslate-x/assets/banner-772x250.png?rev=1286019\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"sassy-social-share/sassy-social-share.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/sassy-social-share\";s:4:\"slug\";s:18:\"sassy-social-share\";s:6:\"plugin\";s:41:\"sassy-social-share/sassy-social-share.php\";s:11:\"new_version\";s:6:\"3.2.26\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/sassy-social-share/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/sassy-social-share.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/sassy-social-share/assets/icon-128x128.png?rev=1300723\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/sassy-social-share/assets/banner-772x250.png?rev=1866721\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"social-media-feather/social-media-feather.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/social-media-feather\";s:4:\"slug\";s:20:\"social-media-feather\";s:6:\"plugin\";s:45:\"social-media-feather/social-media-feather.php\";s:11:\"new_version\";s:5:\"1.8.4\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/social-media-feather/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/social-media-feather.1.8.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/social-media-feather/assets/icon-256x256.png?rev=1090652\";s:2:\"1x\";s:73:\"https://ps.w.org/social-media-feather/assets/icon-128x128.png?rev=1090652\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/social-media-feather/assets/banner-772x250.png?rev=643181\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"theme-check/theme-check.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/theme-check\";s:4:\"slug\";s:11:\"theme-check\";s:6:\"plugin\";s:27:\"theme-check/theme-check.php\";s:11:\"new_version\";s:10:\"20190208.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/theme-check/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/theme-check.20190208.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/theme-check/assets/icon-128x128.png?rev=972579\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/theme-check/assets/banner-1544x500.png?rev=904294\";s:2:\"1x\";s:65:\"https://ps.w.org/theme-check/assets/banner-772x250.png?rev=904294\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"ultimate-member/ultimate-member.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/ultimate-member\";s:4:\"slug\";s:15:\"ultimate-member\";s:6:\"plugin\";s:35:\"ultimate-member/ultimate-member.php\";s:11:\"new_version\";s:6:\"2.0.50\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/ultimate-member/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/ultimate-member.2.0.50.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/ultimate-member/assets/icon-256x256.png?rev=1667029\";s:2:\"1x\";s:68:\"https://ps.w.org/ultimate-member/assets/icon-128x128.png?rev=1667029\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/ultimate-member/assets/banner-1544x500.png?rev=1667029\";s:2:\"1x\";s:70:\"https://ps.w.org/ultimate-member/assets/banner-772x250.png?rev=1667029\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"user-role-editor/user-role-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/user-role-editor\";s:4:\"slug\";s:16:\"user-role-editor\";s:6:\"plugin\";s:37:\"user-role-editor/user-role-editor.php\";s:11:\"new_version\";s:6:\"4.51.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/user-role-editor/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/user-role-editor.4.51.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-256x256.jpg?rev=1020390\";s:2:\"1x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-128x128.jpg?rev=1020390\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/user-role-editor/assets/banner-772x250.png?rev=1263116\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"widget-importer-exporter/widget-importer-exporter.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/widget-importer-exporter\";s:4:\"slug\";s:24:\"widget-importer-exporter\";s:6:\"plugin\";s:53:\"widget-importer-exporter/widget-importer-exporter.php\";s:11:\"new_version\";s:5:\"1.5.5\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/widget-importer-exporter/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/widget-importer-exporter.1.5.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/widget-importer-exporter/assets/icon-256x256.jpg?rev=990577\";s:2:\"1x\";s:76:\"https://ps.w.org/widget-importer-exporter/assets/icon-128x128.jpg?rev=990577\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/widget-importer-exporter/assets/banner-1544x500.jpg?rev=775677\";s:2:\"1x\";s:78:\"https://ps.w.org/widget-importer-exporter/assets/banner-772x250.jpg?rev=741218\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"widget-logic/widget_logic.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/widget-logic\";s:4:\"slug\";s:12:\"widget-logic\";s:6:\"plugin\";s:29:\"widget-logic/widget_logic.php\";s:11:\"new_version\";s:6:\"5.10.4\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/widget-logic/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/widget-logic.5.10.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/widget-logic/assets/icon-256x256.png?rev=1619621\";s:2:\"1x\";s:65:\"https://ps.w.org/widget-logic/assets/icon-128x128.png?rev=1619621\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/widget-logic/assets/banner-1544x500.jpg?rev=1619643\";s:2:\"1x\";s:67:\"https://ps.w.org/widget-logic/assets/banner-772x250.jpg?rev=1619643\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/widget-logic/assets/banner-1544x500-rtl.jpg?rev=1619621\";s:2:\"1x\";s:71:\"https://ps.w.org/widget-logic/assets/banner-772x250-rtl.jpg?rev=1619621\";}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"wp-pagenavi/wp-pagenavi.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/wp-pagenavi\";s:4:\"slug\";s:11:\"wp-pagenavi\";s:6:\"plugin\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:11:\"new_version\";s:4:\"2.93\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-pagenavi/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-pagenavi.2.93.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";s:3:\"svg\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-pagenavi/assets/banner-1544x500.jpg?rev=1206758\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-pagenavi/assets/banner-772x250.jpg?rev=1206758\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wp-all-import/plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wp-all-import\";s:4:\"slug\";s:13:\"wp-all-import\";s:6:\"plugin\";s:24:\"wp-all-import/plugin.php\";s:11:\"new_version\";s:5:\"3.5.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-all-import/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wp-all-import.3.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-all-import/assets/icon-256x256.png?rev=1181068\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-all-import/assets/icon-128x128.png?rev=1181068\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/wp-all-import/assets/banner-772x250.png?rev=735306\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"wp-editor-widget/wp-editor-widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/wp-editor-widget\";s:4:\"slug\";s:16:\"wp-editor-widget\";s:6:\"plugin\";s:37:\"wp-editor-widget/wp-editor-widget.php\";s:11:\"new_version\";s:5:\"0.6.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wp-editor-widget/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wp-editor-widget.0.6.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-editor-widget/assets/icon-256x256.png?rev=980470\";s:2:\"1x\";s:68:\"https://ps.w.org/wp-editor-widget/assets/icon-256x256.png?rev=980470\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.5.3.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.5.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"wp-hide-dashboard/wp-hide-dashboard.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/wp-hide-dashboard\";s:4:\"slug\";s:17:\"wp-hide-dashboard\";s:6:\"plugin\";s:39:\"wp-hide-dashboard/wp-hide-dashboard.php\";s:11:\"new_version\";s:5:\"2.2.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/wp-hide-dashboard/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/wp-hide-dashboard.2.2.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:61:\"https://s.w.org/plugins/geopattern-icon/wp-hide-dashboard.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}'),
(3848, 1, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1562369288;s:7:\"checked\";a:82:{s:9:\"Adnetwork\";s:7:\"2.02.15\";s:18:\"Aisha-multi-vendor\";s:7:\"2.02.14\";s:9:\"Artkrunch\";s:7:\"2.01.01\";s:12:\"Billmitchell\";s:7:\"2.02.13\";s:15:\"CherryFramework\";s:7:\"3.1.5.1\";s:9:\"Dubai24-7\";s:8:\"01.00.01\";s:18:\"Dubai24-7_01.00.01\";s:8:\"01.00.01\";s:19:\"MVP-by-Bear-and-Fly\";s:8:\"01.00.01\";s:10:\"New-Upload\";s:7:\"2.02.15\";s:10:\"Om-Railway\";s:7:\"1.01.01\";s:5:\"Robby\";s:7:\"2.02.13\";s:13:\"adventist.org\";s:7:\"2.02.14\";s:20:\"animalslovereiki.com\";s:7:\"2.02.13\";s:11:\"apsolutions\";s:3:\"1.0\";s:14:\"arhostclub.com\";s:5:\"1.0.0\";s:7:\"ariboy2\";s:5:\"3.5.3\";s:10:\"basibanget\";s:7:\"1.00.04\";s:8:\"beautify\";s:5:\"1.0.6\";s:25:\"breakwater-marina-themeV2\";s:5:\"4.0.2\";s:15:\"charles-ngansop\";s:7:\"2.02.13\";s:17:\"commonsenseenergy\";s:7:\"2.02.15\";s:15:\"danceacademyusa\";s:7:\"2.02.15\";s:13:\"electro-child\";s:6:\"1.2.11\";s:7:\"electro\";s:6:\"1.2.11\";s:10:\"filmbuzzdk\";s:7:\"2.01.01\";s:17:\"freelanceengine-2\";s:5:\"1.6.5\";s:8:\"gaminoaj\";s:5:\"1.6.4\";s:7:\"genesis\";s:5:\"2.4.1\";s:14:\"giliboatticket\";s:5:\"2.0.6\";s:9:\"helix-jbf\";s:6:\"9999.9\";s:6:\"hooray\";s:5:\"2.2.3\";s:9:\"humgurung\";s:7:\"2.02.14\";s:10:\"imranbajwa\";s:7:\"2.02.15\";s:10:\"innerheart\";s:7:\"2.01.01\";s:11:\"isaacbrakha\";s:7:\"2.02.14\";s:13:\"jeromebasilio\";s:3:\"4.2\";s:16:\"johnsonberryfarm\";s:7:\"2.02.14\";s:13:\"jupiter-child\";s:5:\"5.0.9\";s:7:\"jupiter\";s:5:\"5.0.9\";s:12:\"kylescott360\";s:7:\"2.02.14\";s:15:\"leonardolilleen\";s:7:\"2.02.15\";s:14:\"liveradio.club\";s:7:\"2.02.13\";s:10:\"matchstixx\";s:8:\"01.02.13\";s:13:\"mostafaparvez\";s:7:\"2.02.13\";s:14:\"myuserismyname\";s:8:\"01.02.13\";s:8:\"news-pro\";s:5:\"3.0.2\";s:17:\"nonprofitwebsites\";s:7:\"2.02.14\";s:8:\"obs_1980\";s:8:\"01.01.01\";s:7:\"oceanwp\";s:5:\"1.6.8\";s:11:\"om-harappan\";s:8:\"01.00.02\";s:9:\"om-stripe\";s:7:\"2.02.14\";s:16:\"online.dubai24-7\";s:8:\"01.00.01\";s:25:\"online.dubai24-7_01.00.01\";s:8:\"01.00.01\";s:8:\"property\";s:7:\"2.02.15\";s:9:\"redzwan12\";s:7:\"2.02.14\";s:11:\"ron-nourani\";s:7:\"2.02.13\";s:6:\"sample\";s:7:\"2.02.15\";s:8:\"seawave3\";s:7:\"2.02.13\";s:15:\"shashank_Center\";s:7:\"2.02.13\";s:20:\"snetworksclassifieds\";s:7:\"2.02.13\";s:12:\"southbaywebs\";s:7:\"1.00.01\";s:10:\"storefront\";s:5:\"2.5.1\";s:19:\"strangersoccer_blog\";s:7:\"2.01.01\";s:10:\"sweat-yoga\";s:7:\"2.02.14\";s:8:\"tailopez\";s:7:\"2.02.15\";s:10:\"theme51769\";s:5:\"3.1.5\";s:12:\"theproagency\";s:7:\"2.02.14\";s:13:\"travelNetwork\";s:8:\"01.00.01\";s:13:\"twentyfifteen\";s:3:\"2.5\";s:14:\"twentyfourteen\";s:3:\"2.7\";s:14:\"twentynineteen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"2.0\";s:14:\"twentythirteen\";s:3:\"2.9\";s:12:\"twentytwelve\";s:3:\"3.0\";s:13:\"utkarsh-dixit\";s:8:\"01.02.01\";s:11:\"webkyle.com\";s:7:\"0.01.01\";s:12:\"webthemes.my\";s:7:\"2.02.15\";s:20:\"white-top-show-pro-2\";s:7:\"2.02.14\";s:20:\"white-top-show-pro-4\";s:7:\"2.02.14\";s:14:\"white-top-show\";s:7:\"2.02.15\";s:8:\"wp-optin\";s:5:\"1.1.3\";s:12:\"wpjobster245\";s:5:\"2.4.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `spam`, `deleted`) VALUES
(1, 'admin', '$P$Bn3iBomnvQJlH/6cE4yiaxxX/SQPKT1', 'admin', 'rocky.red91@gmail.com', 'http://sanditsolution.com', '2016-03-25 19:24:10', '', 0, 'admin', 0, 0),
(2, 'stefan', '$P$Bz29bThUhtLaCrDcXSLNRQ0xnF1xTS.', 'stefan', 'stefanblazevskii3@gmail.com', '', '2016-06-25 10:59:53', '', 0, 'Stefan Blazevski', 0, 0),
(3, 'admindemo', '$P$BcXQDMduaxSQXxzb.ZyqENU0yusyfw.', 'admindemo', 'admindemo@enginethemes.com', '', '2016-08-03 15:53:39', '', 0, 'Enginethemes', 0, 0),
(4, 'matthew', '$P$BuC09Or7Nc.kukl54l5LBSEw4i5f3e/', 'matthew', 'matthew@gmail.com', '', '2016-08-03 15:53:40', '', 0, 'Matthew', 0, 0),
(5, 'alice', '$P$BWhG66r6oaY4nSru8DQOxsz6iyOxJD.', 'alice', 'Alice123@gmail.com', '', '2016-08-03 15:53:41', '', 0, 'Alice', 0, 0),
(6, 'hillary', '$P$B97nxVaYeePw0/js/WlVS4UWob.e9g.', 'hillary', 'Hillary@gmail.com', '', '2016-08-03 15:53:43', '', 0, 'Hillary', 0, 0),
(7, 'lily', '$P$B.4VNUUl8qzszktwgjrjVcgKEk.mSZ1', 'lily', 'Lily@gmail.com', '', '2016-08-03 15:53:44', '', 0, 'LiLy', 0, 0),
(8, 'marc', '$P$BCPXWSv751EOFeZG59hOMNjnB.n7xN1', 'marc', 'Marc@gmail.com', '', '2016-08-03 15:53:45', '', 0, 'Marc', 0, 0),
(9, 'mary', '$P$BG8reF/jLqG7m4wgZdEWbuz5SZcrGG1', 'mary', 'mary@gmail.com', '', '2016-08-03 15:53:46', '', 0, 'Mary', 0, 0),
(10, 'michael', '$P$BL7eTaoeHju8eHS/KO2MkyofZiAgTY0', 'michael', 'Michael@gmail.com', '', '2016-08-03 15:53:47', '', 0, 'Michael', 0, 0),
(11, 'paul', '$P$BUDJz6C8AKoYkCVUn8ddcTkblgyhvy/', 'paul', 'Paul@gmail.com', '', '2016-08-03 15:53:48', '', 0, 'Paul', 0, 0),
(12, 'richard', '$P$BgL2asY28PkbprsvrI8tHx6Urr8kB9.', 'richard', 'Richard@gmail.com', '', '2016-08-03 15:53:49', '', 0, 'Richard', 0, 0),
(13, 'sarah', '$P$BQH6CTFK55492BlbV.58fGXISpqSRz1', 'sarah', 'sarah@gmail.com', '', '2016-08-03 15:53:50', '', 0, 'Sarah', 0, 0),
(14, 'smith', '$P$BfrW6RbOF9RdZ4NpvaibNoE5R.Rnez0', 'smith', 'Smith@gmail.com', '', '2016-08-03 15:53:51', '', 0, 'Smith', 0, 0),
(15, 'susan', '$P$BPilzkkEyJkioB.H6WgeboAg7ftEDw/', 'susan', 'susan@gmail.com', '', '2016-08-03 15:53:52', '', 0, 'Susan', 0, 0),
(16, 'stephan', '$P$B4NvqL.PXss4Dj4Yfw9CZkm407o9Ya.', 'stephan', 'stephan@gmail.com', '', '2016-08-03 15:53:53', '', 0, 'Stephan', 0, 0),
(17, 'thomas', '$P$BRAlo6SIKvTKueBRmAixLE9dKypqKh/', 'thomas', 'Thomas@gmail.com', '', '2016-08-03 15:53:54', '', 0, 'Thomas', 0, 0),
(18, 'kevin', '$P$BGFrL6xGpvdx8LVW51hhdZk/GUX2zd/', 'kevin', 'kevin@gmail.com', '', '2016-08-03 15:53:55', '', 0, 'Kevin', 0, 0),
(19, 'jason', '$P$BOEwIjKhdxACz8.O6jWbYdKA/5g8LD0', 'jason', 'jasom@gmail.com', '', '2016-08-03 15:53:57', '', 0, 'Jason', 0, 0),
(20, 'jesse', '$P$B/OK7JTSdnZNpf7plheA4TFB.o1XNo1', 'jesse', 'Jesse@gmail.com', '', '2016-08-03 15:53:58', '', 0, 'Jesse', 0, 0),
(21, 'daisy', '$P$Buoh1shUumd8sjxHiIBhJdF3OecQFp/', 'daisy', 'daisy@gmail.com', '', '2016-08-03 15:53:59', '', 0, 'Daisy', 0, 0),
(22, 'frank', '$P$BKPTkEaSRNUDkRd7oPZ68wjaeWNRuz.', 'frank', 'Frank@gmail.com', '', '2016-08-03 15:54:00', '', 0, 'Frank', 0, 0),
(23, 'annie', '$P$ByhsTifoNmSeoYjb6G0XxYJg6u/yoE/', 'annie', 'annie123@gmail.com', '', '2016-08-03 15:54:01', '', 0, 'Annie', 0, 0),
(24, 'george', '$P$BzV.ztD0dn4ZdNYuQenRxCzv5WQUfh1', 'george', 'George@gmail.com', '', '2016-08-03 15:54:01', '', 0, 'George', 0, 0),
(25, 'elizabeth', '$P$BZXWZYuVZ5yksrQy8b0sW9oyXTBicD/', 'elizabeth', 'Elizabeth@gmail.com', '', '2016-08-03 15:54:03', '', 0, 'Elizabeth', 0, 0),
(26, 'helen', '$P$BLe3SmW4PYMfgyTmGxHrKeVxmmgbcT0', 'helen', 'helen@gmail.com', '', '2016-08-03 15:54:07', '', 0, 'Helen', 0, 0),
(27, 'james', '$P$BTyCkVEU9wvvw3n.btlgQqgwLoWJfK1', 'james', 'James@gmail.com', '', '2016-08-03 15:54:09', '', 0, 'James', 0, 0),
(28, 'joan', '$P$Bj09GqvyrApqxrXZrCht5zDvenvsOE1', 'joan', 'Joan@gmail.com', '', '2016-08-03 15:54:11', '', 0, 'Joan', 0, 0),
(29, 'victor', '$P$BzemM4IM0iXZ7Cps6rJsZlO40rWFvY.', 'victor', 'victor@gmail.com', '', '2016-08-03 15:54:12', '', 0, 'Victor', 0, 0),
(30, 'mark', '$P$Bzu0oJ9ababInsMV0vPlj4RVBj/fyW1', 'mark', 'Mark@gmail.com', '', '2016-08-03 15:54:13', '', 0, 'Mark', 0, 0),
(31, 'robert', '$P$BiJgC15LaUD5DmiV5QbpCrCLCQLRYX1', 'robert', 'robert@gmail.com', '', '2016-08-03 15:54:14', '', 0, 'Robert', 0, 0),
(32, 'collins', '$P$BDcBrXVMePWcrjIeB/XLQ77Rv8AhpD1', 'collins', 'Collins@gmail.com', '', '2016-08-03 15:54:15', '', 0, 'Collins', 0, 0),
(33, 'howard', '$P$BEprA8SbFj7MKj.lFICbMMEHCXHBsH1', 'howard', 'howard@gmail.com', '', '2016-08-03 15:54:16', '', 0, 'Howard', 0, 0),
(34, 'fibbert', '$P$BvKY6ikpis4GCbtKXAXpy1Ix06kd/y1', 'fibbert', 'fibbert@gmail.com', '', '2016-08-03 15:54:17', '', 0, 'Fibbert', 0, 0),
(35, 'anderson', '$P$BUYeUC8cIBxwvCjAWH9Vy7bsURTlI60', 'anderson', 'anderson@gmail.com', '', '2016-08-03 15:54:18', '', 0, 'Anderson', 0, 0),
(36, 'grace', '$P$BMy6ihjgHdfowSLfJK.bEZZbW9losE0', 'grace', 'grace@gmail.com', '', '2016-08-03 15:54:18', '', 0, 'Grace', 0, 0),
(37, 'amelia', '$P$BCUbdh6ylrpiLT4dqwniYJEd2mC51N.', 'amelia', 'amelia@gmail.com', '', '2016-08-03 15:54:20', '', 0, 'Amelia', 0, 0),
(38, 'sharon', '$P$BezZS.FTcTKT1eYzQfQLG2Ae3xEaNE/', 'sharon', 'sharon@gmail.com', '', '2016-08-03 15:54:21', '', 0, 'Sharon', 0, 0),
(39, 'hannah', '$P$Bopwux42bWEPr3jnMlb2PSVzFNOUgM.', 'hannah', 'hannah@gmail.com', '', '2016-08-03 15:54:22', '', 0, 'Hannah', 0, 0),
(40, 'claire', '$P$BdhOGvv83ZCGfoGgO1WWLZwXbfE/y61', 'claire', 'claire@gmail.com', '', '2016-08-03 15:54:24', '', 0, 'Claire', 0, 0),
(41, 'diana', '$P$BUBWkZTnLManOkKWsaqByH/HkQz885.', 'diana', 'Diana@gmail.com', '', '2016-08-03 15:54:26', '', 0, 'Diana', 0, 0),
(42, 'albert', '$P$BTsEeNrnYBZuOo0RxHJjjSLyYP9Vf/1', 'albert', 'albert@gmail.com', '', '2016-08-03 15:54:27', '', 0, 'Albert', 0, 0),
(43, 'brian', '$P$BUyVHhI./zCHNYvtrakrJIR9pXqvAM.', 'brian', 'brian@gmail.com', '', '2016-08-03 15:54:30', '', 0, 'Brian', 0, 0),
(44, 'cedric', '$P$BRfCbvud.SbxiFt8yqSeuvmkgd6EKr0', 'cedric', 'cedric@gmail.com', '', '2016-08-03 15:54:31', '', 0, 'Cedric', 0, 0),
(45, 'bradley', '$P$BSBpp4LYdsISK2qWTL1If.uNiMNQfC0', 'bradley', 'bradley@gmail.com', '', '2016-08-03 15:54:32', '', 0, 'Bradley', 0, 0),
(46, 'norwood', '$P$Bko4pWX4NivQTaNnJZhoBnQ.sgOZ6B1', 'norwood', 'norwood@gmail.com', '', '2016-08-03 15:54:33', '', 0, 'Norwood', 0, 0),
(47, 'clifford', '$P$BW7ifakolcmWpydTrzouTE/3p41JQS0', 'clifford', 'clifford@gmail.com', '', '2016-08-03 15:54:34', '', 0, 'Clifford', 0, 0),
(48, 'andrey', '$P$BtR3jfC8em42BTQQrLaxNkDPXQr72n1', 'andrey', 'andrey@gmail.com', '', '2016-08-03 15:54:35', '', 0, 'Andrey', 0, 0),
(49, 'bruce', '$P$BPmMEJnyB46bxCM/jPIbNC.JfLZGJg/', 'bruce', 'bruce@gmail.com', '', '2016-08-03 15:54:37', '', 0, 'Bruce', 0, 0),
(50, 'classhos', '$P$B7h5THdJOJTFumtmMiDN7/bTKAwzpd.', 'classhos', 'pondoktutorial@gmail.com', '', '2016-08-17 08:39:28', '', 0, 'classhos', 0, 0),
(51, 'seawave3', '$P$BY2Acy.kiqX4IsDWO7o26biABuA37X1', 'seawave3', 'rockysingh91@gmail.com', '', '2016-09-28 18:51:24', '1475088687:$P$BBCbSDVKsoniD6IsAMarLaQsk/vBAC.', 0, 'seawave3', 0, 0),
(52, 'robby', '$P$B4OxeGMXY4rJIcaP6JCu5vzrv7nn73.', 'robby', 'Robby@gmail.com', '', '2017-02-08 22:26:07', '1486592771:$P$BgH6f8der7dv./O0LGvhkppKB3mJRN0', 0, 'robby', 0, 0),
(53, 'ariboy2', '$P$B4hRTg18jA3BgIUVToCj2VQ5.zqtLn1', 'ariboy2', 'ariboy2@gmail.com', '', '2017-02-19 00:11:17', '1487463080:$P$ByuHjPXy80/COwHc4uSpXb7b1yrjIQ1', 0, 'ariboy2', 0, 0),
(54, 'microjobs', '$P$BsxNL0oILHAhIPu.pla3S1svVRLtBV0', 'microjobs', 'microJobs@gmail.com', '', '2017-03-06 20:39:59', '1488832801:$P$Bjjy1Sg5lULmK3fR2HzZaNDRJIY82t1', 0, 'microjobs', 0, 0),
(55, 'cool', '$P$BSMf//NgT2ZY1Vh8rQSwmOdKoBi3XN/', 'cool', '', '', '2017-03-06 21:23:15', '', 0, 'cool', 0, 0),
(56, 'tom', '$P$BBszqTYVb4y3RI3n7cSFpBQaPwug4g/', 'tom', '', '', '2017-03-06 21:23:16', '', 0, 'tom', 0, 0),
(57, 'mic', '$P$BS1UF9IJf8y0V73wrdnQyHbncn1ri20', 'mic', '', '', '2017-03-06 21:23:16', '', 0, 'mic', 0, 0),
(58, 'om', '$P$Bpdu4sP36Mh1iWK6ZSl23NOC.OjYjs1', 'om', '', '', '2017-03-06 21:23:17', '', 0, 'om', 0, 0),
(59, 'ian', '$P$BlkWGyt3GGXO90PXj2DmQ76mx04Fd1/', 'ian', '', '', '2017-03-06 21:23:18', '', 0, 'ian', 0, 0),
(60, 'riyaz', '$P$BDrEpbfiBJemx0FgCq5aEUR58NMdP01', 'riyaz', '', '', '2017-03-06 21:23:18', '', 0, 'riyaz', 0, 0),
(61, 'morne', '$P$Bn6ukjXwtAW4f.i59UZDFDdxpYXLnK.', 'morne', '', '', '2017-03-06 21:23:19', '', 0, 'morne', 0, 0),
(62, 'collin', '$P$B4fmLUV/5HZMSVRiIs.Fx8rN7YYmOY0', 'collin', '', '', '2017-03-06 21:23:20', '', 0, 'collin', 0, 0),
(63, 'jack', '$P$B1KdQwEneRR7mrrS/7.pa/VMRsC4V.1', 'jack', '', '', '2017-03-06 21:23:21', '', 0, 'jack', 0, 0),
(64, 'caroline', '$P$BCxiEdojki2vKupxMbJr7jt8Jonm3.1', 'caroline', '', '', '2017-03-06 21:23:22', '', 0, 'caroline', 0, 0),
(65, 'soniya', '$P$BnEknqEObVrio8Lv58w822PXDwI9Mm.', 'soniya', '', '', '2017-03-06 21:23:22', '', 0, 'soniya', 0, 0),
(66, 'joy', '$P$B5Pb0x8H8PvQtz2oEECW7ENr7b0APo0', 'joy', '', '', '2017-03-06 21:23:23', '', 0, 'joy', 0, 0),
(67, 'marry', '$P$BfBqaw/LRf0t4sLZL23MHPHNX0D9Y9/', 'marry', '', '', '2017-03-06 21:23:24', '', 0, 'marry', 0, 0),
(68, 'jhon', '$P$BdJl5lNCy5dHdNDcQ6UsB3MqaS71Xx0', 'jhon', '', '', '2017-03-06 21:23:25', '', 0, 'jhon', 0, 0),
(69, 'mona', '$P$BUrSZjeOq2Zs49xDEuJINv2w1vPs6e1', 'mona', '', '', '2017-03-06 21:23:26', '', 0, 'mona', 0, 0),
(70, 'madi', '$P$BxhlOnZP0TzeAR2lCEq83RsSsr3eBS0', 'madi', '', '', '2017-03-06 21:23:27', '', 0, 'madi', 0, 0),
(71, 'sanjh', '$P$Bln5USJASfhEozoXMPy7eytyLst3LO0', 'sanjh', '', '', '2017-03-06 21:23:27', '', 0, 'sanjh', 0, 0),
(72, 'maya', '$P$BBTNg9AewzBWijDMIjOfzrW0kh5Wdt0', 'maya', 'maya@mailinator.com', '', '2017-03-06 21:23:28', '', 0, 'maya', 0, 0),
(73, 'riya', '$P$BWa5LSwl6IIQL.ptP4hAt2NCGs/1fP/', 'riya', '', '', '2017-03-06 21:23:29', '', 0, 'riya', 0, 0),
(74, 'json', '$P$BwjtLz8wPnZpGU6UqdNw5EVPt7YEUm.', 'json', '', '', '2017-03-06 21:23:30', '', 0, 'json', 0, 0),
(75, 's.shakir', '$P$BWIOLEU8ZcGgOFK5yVeZzwUFndc6Oo0', 's-shakir', '', '', '2017-03-06 21:23:30', '', 0, 's.shakir', 0, 0),
(76, 'snsameera', '$P$BkWwRw533i5vUl5VmxKkCtGXcGMPvH/', 'snsameera', '', '', '2017-03-06 21:23:31', '', 0, 'snsameera', 0, 0),
(77, 'mellisa_expert', '$P$BlTtvCfh7H0EI0r6.3lHEs51W26KQ9/', 'mellisa_expert', '', '', '2017-03-06 21:23:32', '', 0, 'mellisa_expert', 0, 0),
(78, 'freelancer', '$P$BQhB78Ol7WnuvH8r6IxbiM3BRwm37D1', 'freelancer', '', '', '2017-03-06 21:23:32', '', 0, 'freelancer', 0, 0),
(79, 'qm_graphics', '$P$BeyCI96GaU0rDlVCrMJ9CtI/5EdBxQ/', 'qm_graphics', '', '', '2017-03-06 21:23:33', '', 0, 'qm_graphics', 0, 0),
(80, 'archana', '$P$BPkTQH0xNg8BNI2mxnjAvrSfyn2qws0', 'archana', '', '', '2017-03-06 21:23:34', '', 0, 'archana', 0, 0),
(81, 'parvej', '$P$B2Cm5dQqhljUN2BGktcDU2Z6BRMQm6/', 'parvej', '', '', '2017-03-06 21:23:34', '', 0, 'parvej', 0, 0),
(82, 'rhrobin', '$P$BmEyNEHp7NrXZI1nNCEkAysr1VUYLj1', 'rhrobin', '', '', '2017-03-06 21:23:35', '', 0, 'rhrobin', 0, 0),
(83, 'shiluka', '$P$BanXB7ZZzVpUetp1J3zAC06kvxG1fP/', 'shiluka', '', '', '2017-03-06 21:23:36', '', 0, 'shiluka', 0, 0),
(84, 'webkyle', '$P$BlgZjfoGw9Xxtt6opMEkiXRtTGEEHI/', 'webkyle', 'webkyle@gmail.com', '', '2017-03-12 23:11:59', '1489360322:$P$BsrNlXeZuWTesJDEIS4HSVx1KGnBd10', 0, 'webkyle', 0, 0),
(85, 'jeromebasilio', '$P$B38TdTL.pqqfzodd.fTchcdgjF3VXt1', 'jeromebasilio', 'jeromebasilio@gmail.com', '', '2017-04-03 21:17:29', '1491254253:$P$BIKrWsz9nKO2Q9IagAtk3mZWRWuh4p.', 0, 'jeromebasilio', 0, 0),
(86, 'raymichael', '$P$BTbweNoDsJ0AW5X81iMYZwqeL9vYDm.', 'raymichael', 'raymichael2014@gmail.com', '', '2017-08-24 10:34:24', '', 0, 'Ray Michael', 0, 0),
(87, 'demo-woo', '$P$BZIVwOCptbNrdEX0qi7n70xb6qE3Vp.', 'demo-woo', 's@gmail.com', '', '2018-01-14 19:01:31', '1515956494:$P$B.dSA/vIq3gSUwLkT5jb7oIv1a8OIs1', 0, 'demo-woo', 0, 0),
(88, 'woo', '$P$BFGFBwCnP8QUGAgjvOPv3g4Sz1gf5R1', 'woo', 'sidd@gmail.com', '', '2018-01-14 22:34:15', '1515969259:$P$Bj2JNMbPJ3pWVPq/MOllwq7gqY30fE0', 0, 'woo', 0, 0),
(89, 'new-woo', '$P$BYRJyq4uBfvbenjRRXSaXEMjS5wbR9/', 'new-woo', 'ss@gmail.com', '', '2018-01-15 12:36:23', '1516019787:$P$BYPinOSnidaFzdxfkOYKLiIrmf82in0', 0, 'new-woo', 0, 0),
(90, 'woos', '$P$BY1A0jjNPf6uzTGdvtkvUBeDbgsgyd1', 'woos', 'soo@gmail.com', '', '2018-01-15 19:46:18', '1516045582:$P$BwwLZbfTtIQfr6n1bd4oSKDk/XOayp0', 0, 'woos', 0, 0),
(91, 'wootwo', '$P$BzC1iDx5zTZelRtisnQXqx1pPA8iT51', 'wootwo', 'wooTwo@gmail.com', '', '2018-01-15 20:31:09', '1516048272:$P$B4ZJqoWJlGNeZcwqhR.ky3jMPoOZPZ/', 0, 'wootwo', 0, 0),
(92, 'wooss', '$P$BwgfnF93Rs3rnlnIYOYXhx3/FjD3s1/', 'wooss', 'wooss@gmail.com', '', '2018-01-15 23:05:23', '1516057527:$P$B/VoU52CKt6cRZrjskshT5vaf8CF/a/', 0, 'wooss', 0, 0),
(93, 'woomm', '$P$BQwHzuRLcV0zXJkVslee8Vav/86Hi7.', 'woomm', 'woomm@gmail.com', '', '2018-01-15 23:52:40', '1516060364:$P$B1uG5kP/uAHIc4zxp7imZjUf2ccZiE/', 0, 'woomm', 0, 0),
(94, 'wo', '$P$BCS.uMuOABEAq0rfSFLl9thzpSm4.u.', 'wo', 'wo@gmail.com', '', '2018-01-16 10:50:24', '1516099828:$P$B7xSXvTh5c139lr5//fTqLhMPSU0dD/', 0, 'wo', 0, 0),
(95, 'woolast', '$P$BV2hf.Fl..OZrLHLy09rXDGGNm6Ar8.', 'woolast', 'woolast@gmail.com', '', '2018-01-16 11:47:53', '1516103276:$P$Bqtu8moI44FYp6EoP6fyNkcrKSdgU80', 0, 'woolast', 0, 0),
(96, 'breakwatermarina', '$P$BnPtNnyA9mjIjhiuQ0eBuUR9X4peIR1', 'breakwatermarina', 'breakwatermarina@gmail.com', '', '2018-02-01 23:30:30', '1517527834:$P$BifnwzMf7QBCEvn5rqPNIQ0dWjpROR/', 0, 'breakwatermarina', 0, 0),
(97, 'johnsonberryfarm', '$P$BQKuei.cMmXjh.JwlFKww8x.ednvr31', 'johnsonberryfarm', 'johnsonberryfarm@gmil.com', '', '2018-02-10 21:52:27', '1518299551:$P$B7/IK/4VS5uUo5zXU/xWcSMS0RmDDN0', 0, 'johnsonberryfarm', 0, 0),
(98, 'online-dubai24', '$P$BpvjhEm20gw8heLF.lHy9u71IgThLS.', 'online-dubai24', 'Online@gmail.com', '', '2018-02-20 07:43:37', '1519112620:$P$BXyq5BtorHXjPnlNWYdtxE9Y8Agvuv.', 0, 'online-dubai24', 0, 0),
(99, 'property', '$P$BjWsDSzRkU3goyfEBWstdADORqZeQg1', 'property', 'property@gmail.com', '', '2018-02-21 19:56:46', '1519243010:$P$BlWdL5bE.H5SuGJz1W2wq4ZvlOmJmE/', 0, 'property', 0, 0),
(100, 'nonprofitwebsites', '$P$BRbRGVfbbymR00kJTxkuBE1JH0uLsq/', 'nonprofitwebsites', 'nonprofitwebsites@gmail.com', '', '2018-03-06 19:49:28', '1520365772:$P$BHPXcQiQRBuLxr6SuVUfibiYETP8e/.', 0, 'nonprofitwebsites', 0, 0),
(101, 'sdeane', '$P$BykpZu.uLatugtglqCFvXQcusOWHvw.', 'sdeane', 'sdeane@gmail.com', '', '2018-03-06 23:07:12', '', 0, 'sdeane', 0, 0),
(102, 'johnsonberry', '$P$Be0rilo8lsQ6/vHVGXLrjaHhwj1//21', 'johnsonberry', 'lisa@johnsonberryfarm.com', '', '2018-03-08 12:33:42', '', 0, 'johnsonberry', 0, 0),
(103, 'arvin', '$P$B109v82Hw47s8MI5aJ1/JwG94gkey70', 'arvin', 'arvin@gmail.com', '', '2018-03-09 04:33:36', '', 0, 'arvin', 0, 0),
(104, 'siddharth singh', '$P$Bd9xaQ4cBHxodwVMvepPz0KJC0hN2L.', 'siddharth-singh', 'rocky.red91@gmail.com', '', '2018-05-11 09:52:14', '', 0, 'Siddharth Singh', 0, 0),
(105, 'southbaywebs', '$P$BuydpQBn5dfcj.DMdhrax6GBY3w4i3/', 'southbaywebs', 'southbaywebs@southbaywebs.com', '', '2018-05-22 00:54:20', '1526950466:$P$BoLyin3LPTafCFpvMYNjzCQq4t5aqI/', 0, 'southbaywebs', 0, 0),
(106, 'om-stripe', '$P$BePS2EzqLwdMvC4TWHd8tqhIDTN7WQ0', 'om-stripe', 'om-stripe@om-stripe.com', '', '2018-05-24 23:55:11', '1527206114:$P$BZvlMstnHBvSemzfEsvDsfTXGEYZaO1', 0, 'om-stripe', 0, 0),
(107, 'ranu', '$P$BfmJJvRO/pNozU8I4pSW.xSG3XLQWz0', 'ranu', 'ranu@gmail.com', 'http://sanditsolution.com', '2018-05-28 00:17:20', '', 0, 'ranu', 0, 0),
(108, 'dubai24-7', '$P$BkaTVhcTsUf8rAQhP3Dsk19uxWxWl6/', 'dubai24-7', '', '', '2018-08-09 21:22:15', '', 0, 'Dubai24-7', 0, 0),
(109, 'siddharth', '$P$BgwriDIjv/tya1GcGTfmPhsvJTUsgm.', 'siddharth', 'siddharthsingh91@gmail.com', '', '2019-04-17 14:43:05', '', 0, 'siddharth', 0, 0),
(110, 'sdfsdf', '$P$BrSae9hhH5Ls2xEzfENsXSXwLECpBj.', 'sdfsdf', 'ssss@gmail.com', '', '2019-04-17 15:04:44', '', 0, 'sdfsdf', 0, 0),
(111, 'sdfg', '$P$BqtH/fvqDkGZxmJkCarUenyUPEa3so0', 'sdfg', 'ssdd@gmail.com', '', '2019-04-17 15:07:09', '', 0, 'sdfg', 0, 0),
(112, 'new', '$P$BB7f6VfzHP7ptpoFP8pRUNexpB4t01.', 'new', 'ssddsf@gmail.com', '', '2019-04-17 15:12:28', '', 0, 'new', 0, 0),
(113, 'sidd_new', '$P$BWu1jAMfI.hQgA5StT7qIOapt9PICJ0', 'sidd_new', 'siddharthsingh99@gmail.com', '', '2019-04-17 15:15:05', '', 0, 'sidd_new', 0, 0),
(114, 'sdff', '$P$BDSCK7.6I9lrmLo8EzkSvG8tuMrFhs0', 'sdff', 'd2ss@dd.com', '', '2019-04-17 23:47:56', '', 0, 'sdff', 0, 0),
(115, 'siddharth91', '$P$Bxs25Ae3dz0ql/3TOf9aL6Hf1m4GDc/', 'siddharth91', 'sidds@gmail.com', '', '2019-04-18 23:14:48', '1555629290:$P$Bs2L5TktinHAtv.9KH0yl.FchNSdxI1', 0, '', 0, 0),
(116, 'sidd44', '$P$B8ZgizGB8MGPLjIz2sNHSCgPbuoOKL0', 'sidd44', 'ssdd44@gmail.com', '', '2019-04-18 23:23:57', '1555629839:$P$B3lUchPT.dCUJkeePmNcqUUY2IEeOj0', 0, '', 0, 0),
(117, 'siddharth88', '$P$BPX9wAVzeJBA6.i3vzhErfJM7NVPh10', 'siddharth88', 'siddharthsingh9988@gmail.com', '', '2019-04-18 23:35:23', '1555630524:$P$B4dwtIsIBR/3pUL.DdGhW1Mt11Xv7P/', 0, 'Siddharth Singh', 0, 0),
(118, 'siddharth99', '$P$BAGUsNIzde32b.uz3MEMYt0kUTGqJT0', 'siddharth99', 'siddharthsingh44@gmail.com', '', '2019-04-18 23:35:49', '1555630551:$P$Bj9CHgBRfeUKsOLRy0gYt8eLVJv/6D0', 0, 'Siddharth Singh', 0, 0),
(119, 'siddharth6644', '$P$B.sNdJjKIWVAzjM4Q6yOrHGbmdn6Bs.', 'siddharth6644', 'rocky.red44@gmail.com', '', '2019-04-18 23:39:55', '1555630797:$P$B1nmIVVg1TwXkEOOMQXUvGu0nz9b3n/', 0, 'Siddharth Singh', 0, 0),
(120, 'rocky92', '$P$BRK/W2lm3uuz.TDaKpFZ8CLsGh194L/', 'rocky92', 'rocky92@gmail.com', '', '2019-05-13 11:43:34', '', 0, 'rocky92', 0, 0),
(121, 'rocky94', '$P$BePGKVrYgt04l6uOr/c1.fJ7yd9.t3.', 'rocky94', 'rocky94@gmail.com', '', '2019-05-13 11:43:52', '', 0, 'rocky94', 0, 0),
(122, 'rocky96', '$P$BgOcQ/S29xMsKL/y88bwdMG.DJq2Si/', 'rocky96', 'rocky96@gmail.com', '', '2019-05-13 11:44:26', '', 0, 'rocky96', 0, 0),
(123, 'sidd4455', '$P$BYcODfJYNoH3eItfS2o0akw2zMHSBE1', 'sidd4455', 'sidd4455@gmail.com', '', '2019-05-14 04:08:16', '', 0, 'sidd4455', 0, 0),
(124, 'siddharth77', '$P$BwBweJviXr8.u0XGDSMAOCHiJyHrJy.', 'siddharth77', 's8844@gmail.com', '', '2019-05-17 01:39:09', '', 0, 'siddharth77', 0, 0),
(125, 'siddharth7788', '$P$Bg3C6HE51Dhb7SdaHTNggJjHAFKHwl.', 'siddharth7788', 'ss8844@gmail.com', '', '2019-05-17 01:39:42', '', 0, 'siddharth7788', 0, 0),
(126, 'siddharth778855', '$P$BF701UkcaBg7u0dbslsRqF8ZoxAcBx/', 'siddharth778855', 'ss884466@gmail.com', '', '2019-05-17 01:40:55', '', 0, 'siddharth778855', 0, 0),
(127, 'siddharth4478', '$P$BQTcnM9Y1G6t5p26mNemZXyzw6gNuo1', 'siddharth4478', 'mm@gmail.com', '', '2019-05-17 01:47:17', '', 0, 'siddharth4478', 0, 0),
(128, 'siddharthdon', '$P$BMmDz00m4jZLpLm52pdJd44avYLHzD0', 'siddharthdon', 'sdverma@gmail.com', '', '2019-05-17 02:03:08', '', 0, 'siddharthdon', 0, 0),
(129, 'siddharthdon44', '$P$BiEc/yrvt7S/4R3EXsfP89fSNKYTXA.', 'siddharthdon44', 'sdverma4@gmail.com', '', '2019-05-17 02:03:32', '', 0, 'siddharthdon44', 0, 0),
(130, 'siddharthdon8844', '$P$Ba4kyVX/8yHhPQdQdd4dBg8sttl1Zh0', 'siddharthdon8844', 'sdvermaee4@gmail.com', '', '2019-05-17 02:04:10', '', 0, 'siddharthdon8844', 0, 0),
(131, 'siddharth8866', '$P$BLCiziknk9gyWHGiHzKP5iBIQJU/dC1', 'siddharth8866', 'ss@gail.com', '', '2019-07-03 04:18:11', '', 0, 'siddharth8866', 0, 0),
(132, 'siddharth884422', '$P$B7lssoxY1POG/kNSdGf9HNTNcKSPtc.', 'siddharth884422', 'rocky927788@gmail.com', '', '2019-07-03 04:23:26', '', 0, 'siddharth884422', 0, 0),
(133, 'sidd44887744', '$P$BiQk5VGQ2sqknZLzsnINq5UbzGD4UX/', 'sidd44887744', 'rocky94dddd@gmail.com', '', '2019-07-03 05:21:23', '', 0, 'sidd44887744', 0, 0),
(134, 'siddharth22446688', '$P$BO7msKXzfqr8uZ.9Mm7kCZdHuCtPkU1', 'siddharth22446688', 'employer44@onjob.com', '', '2019-07-03 10:38:19', '', 0, 'siddharth22446688', 0, 0),
(135, 'sidd77889966', '$P$BOlS..3xtn.T0USRjbB58/bUTyK9tG0', 'sidd77889966', 'user44@onjob.com', '', '2019-07-03 10:42:57', '', 0, 'Siddharth Singh', 0, 0),
(136, 'sdf', '$P$BJhCXlyu652a59nnKwJxdE5f6dVD7O0', 'sdf', 'employer@onjob.com', '', '2019-07-03 10:47:32', '', 0, 'sdf sdf', 0, 0),
(137, 'sidd77889944', '$P$BpQ0kzvpWxJf5xLqsITx/wJvkv.3w50', 'sidd77889944', 'employer455@onjob.com', '', '2019-07-03 11:55:13', '', 0, 'Siddharth Singh`', 0, 0),
(138, 'sidd 77 88 99', '$P$B3tqHxQBiExToHE0ZW6RTXOLlhiqfz1', 'sidd-77-88-99', 'user11223344@onjob.com', '', '2019-07-03 12:00:31', '', 0, 'Siddharth Singh', 0, 0),
(139, 'justvalue88', '$P$BQbI.ejTB9jhsVZ7WJI69RgR1ydnSH1', 'justvalue88', 'employer@securecloud.com', '', '2019-07-03 12:07:20', '', 0, 'Sidd Singh', 0, 0),
(140, 'sdfsdfsd', '$P$BXVjBtZOHMFSERQ6lY1iUmtXucWCEr0', 'sdfsdfsd', 'employer77889965@onjob.com', '', '2019-07-03 12:14:43', '', 0, 'sidd Singh', 0, 0),
(141, 'asdaasd', '$P$BTuu1Tyq1ZPHOOiPG1FtG2Iic07cte/', 'asdaasd', 'employer7889@onjob.com', '', '2019-07-03 12:21:59', '', 0, 'asddasd asd', 0, 0),
(142, 'asdaasd44', '$P$BtHv4vVukMGQJA2v.y1/ZZfY3CG4eH/', 'asdaasd44', 'employer784489@onjob.com', '', '2019-07-03 12:23:09', '', 0, 'asddasd asd', 0, 0),
(143, 'asdaasd44899', '$P$BK7PnHz4CLQonRsXkBktG0x6M2VyM.1', 'asdaasd44899', 'employer78448339@onjob.com', '', '2019-07-03 12:23:33', '', 0, 'asddasd asd', 0, 0),
(144, 'new22334455', '$P$BOowaIkTfD2Qvr2VmrTCdJwezFJrL41', 'new22334455', 'employer77889955442121@onjob.com', '', '2019-07-03 12:38:01', '', 0, 'Siddharth Singh', 0, 0),
(145, 'sidd8877441131154', '$P$BLOfem31G9.syCvhgoEINMhKnMq7SO.', 'sidd8877441131154', 'usersds324234@onjob.com', '', '2019-07-03 13:02:31', '', 0, 'Sidd Singh', 0, 0),
(146, 'sidd8899', '$P$BWyn9pJXCKm5ysaP7dzqlHM/9osJZX/', 'sidd8899', 'employer22446688@onjob.com', '', '2019-07-03 13:14:23', '', 0, 'Siddharth Singh', 0, 0),
(147, 'siddharth7788996654', '$P$BdeBz66xULveV9msAmkXXFIOp9JO7F.', 'siddharth7788996654', 'employer22114455@onjob.com', '', '2019-07-03 13:24:34', '', 0, 'Siddharth Singh', 0, 0),
(148, 'sidd778899554', '$P$B2iR7ExNzLySEykoX6DWbuVnU.bRfN0', 'sidd778899554', 'ss778899652241556@gail.com', '', '2019-07-03 13:33:18', '', 0, 'Sidd Singh', 0, 0),
(149, 'sidd77777777', '$P$Bo7nAnSuHnKjx5Yvwq.qZtgCZyRnn.1', 'sidd77777777', 'user77777777777@onjob.com', '', '2019-07-03 13:52:06', '', 0, 'Siddharth Singh', 0, 0),
(150, 's7777777', '$P$BlKmY1Oj3pzF4xsW6Gtp7l.gms/78C1', 's7777777', 's7777777@onjob.com', '', '2019-07-03 13:55:04', '', 0, '1 2', 0, 0),
(151, 'sidd1122334455667788', '$P$BGniY88/87UUnl3nbEeu0u4dyY4NfB/', 'sidd1122334455667788', 'user112233445566778899@onjob.com', '', '2019-07-03 20:56:33', '', 0, 'Siddharth Singh', 0, 0),
(152, 's887755446522155', '$P$BIMKSTM08llC95S5nd6GFwuAhccoN21', 's887755446522155', 'user123123234234@onjob.com', '', '2019-07-03 21:00:53', '', 0, 'Siddharth Singh', 0, 0),
(153, 's14', '$P$B2dFQiQLCiQHlCYmzm2gi5rNSIKsrR0', 's14', 's14@onjob.com', '', '2019-07-03 21:04:26', '', 0, 'Siddharth Singh', 0, 0),
(154, 's44', '$P$Bs43ljvov/OeoXpv9SynFYuZnon5KK1', 's44', 'rocky92212@gmail.com', '', '2019-07-03 21:06:44', '', 0, 'Sidd Singh', 0, 0),
(155, 'just78', '$P$BQ/J7uKX1pKOAUry7hpdndKevOWJ8M1', 'just78', 'ss2244@gail.com', '', '2019-07-03 21:17:06', '', 0, 'Sidd Singh', 0, 0),
(156, 's1144', '$P$BSIvJEmCGb5PEuLfzP.qa6IUnqDs9Q/', 's1144', 'employer11223344@onjob.com', '', '2019-07-03 21:20:06', '', 0, 's s', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crypto_files`
--
ALTER TABLE `crypto_files`
  ADD PRIMARY KEY (`fileID`),
  ADD KEY `fileTitle` (`fileTitle`),
  ADD KEY `active` (`active`),
  ADD KEY `fileName` (`fileName`),
  ADD KEY `fileSize` (`fileSize`),
  ADD KEY `priceUSD` (`priceUSD`),
  ADD KEY `priceCoin` (`priceCoin`),
  ADD KEY `priceLabel` (`priceLabel`),
  ADD KEY `purchases` (`purchases`),
  ADD KEY `userFormat` (`userFormat`),
  ADD KEY `expiryPeriod` (`expiryPeriod`),
  ADD KEY `lang` (`lang`),
  ADD KEY `defCoin` (`defCoin`),
  ADD KEY `defShow` (`defShow`),
  ADD KEY `image` (`image`),
  ADD KEY `imageWidth` (`imageWidth`),
  ADD KEY `priceShow` (`priceShow`),
  ADD KEY `paymentCnt` (`paymentCnt`),
  ADD KEY `paymentTime` (`paymentTime`),
  ADD KEY `updatetime` (`updatetime`),
  ADD KEY `createtime` (`createtime`);

--
-- Indexes for table `crypto_membership`
--
ALTER TABLE `crypto_membership`
  ADD PRIMARY KEY (`membID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `paymentID` (`paymentID`),
  ADD KEY `startDate` (`startDate`),
  ADD KEY `endDate` (`endDate`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `recordCreated` (`recordCreated`);

--
-- Indexes for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `boxID` (`boxID`),
  ADD KEY `boxType` (`boxType`),
  ADD KEY `userID` (`userID`),
  ADD KEY `countryID` (`countryID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `amount` (`amount`),
  ADD KEY `amountUSD` (`amountUSD`),
  ADD KEY `coinLabel` (`coinLabel`),
  ADD KEY `unrecognised` (`unrecognised`),
  ADD KEY `addr` (`addr`),
  ADD KEY `txID` (`txID`),
  ADD KEY `txDate` (`txDate`),
  ADD KEY `txConfirmed` (`txConfirmed`),
  ADD KEY `txCheckDate` (`txCheckDate`),
  ADD KEY `processed` (`processed`),
  ADD KEY `processedDate` (`processedDate`),
  ADD KEY `recordCreated` (`recordCreated`),
  ADD KEY `key1` (`boxID`,`orderID`),
  ADD KEY `key2` (`boxID`,`orderID`,`userID`),
  ADD KEY `key3` (`boxID`,`orderID`,`userID`,`txID`);

--
-- Indexes for table `crypto_products`
--
ALTER TABLE `crypto_products`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `productTitle` (`productTitle`),
  ADD KEY `active` (`active`),
  ADD KEY `priceUSD` (`priceUSD`),
  ADD KEY `priceCoin` (`priceCoin`),
  ADD KEY `priceLabel` (`priceLabel`),
  ADD KEY `purchases` (`purchases`),
  ADD KEY `expiryPeriod` (`expiryPeriod`),
  ADD KEY `lang` (`lang`),
  ADD KEY `defCoin` (`defCoin`),
  ADD KEY `defShow` (`defShow`),
  ADD KEY `emailUser` (`emailUser`),
  ADD KEY `emailAdmin` (`emailAdmin`),
  ADD KEY `paymentCnt` (`paymentCnt`),
  ADD KEY `paymentTime` (`paymentTime`),
  ADD KEY `updatetime` (`updatetime`),
  ADD KEY `createtime` (`createtime`);

--
-- Indexes for table `wp_2_cf7dbplugin_st`
--
ALTER TABLE `wp_2_cf7dbplugin_st`
  ADD PRIMARY KEY (`submit_time`);

--
-- Indexes for table `wp_2_cf7dbplugin_submits`
--
ALTER TABLE `wp_2_cf7dbplugin_submits`
  ADD KEY `submit_time_idx` (`submit_time`),
  ADD KEY `form_name_idx` (`form_name`),
  ADD KEY `field_name_idx` (`field_name`);

--
-- Indexes for table `wp_blogmeta`
--
ALTER TABLE `wp_blogmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `wp_blogs`
--
ALTER TABLE `wp_blogs`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `domain` (`domain`(50),`path`(5)),
  ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `wp_blog_versions`
--
ALTER TABLE `wp_blog_versions`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `db_version` (`db_version`);

--
-- Indexes for table `wp_registration_log`
--
ALTER TABLE `wp_registration_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IP` (`IP`);

--
-- Indexes for table `wp_signups`
--
ALTER TABLE `wp_signups`
  ADD PRIMARY KEY (`signup_id`),
  ADD KEY `activation_key` (`activation_key`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `user_login_email` (`user_login`,`user_email`),
  ADD KEY `domain_path` (`domain`(140),`path`(51));

--
-- Indexes for table `wp_site`
--
ALTER TABLE `wp_site`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domain` (`domain`(140),`path`(51));

--
-- Indexes for table `wp_sitemeta`
--
ALTER TABLE `wp_sitemeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crypto_files`
--
ALTER TABLE `crypto_files`
  MODIFY `fileID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crypto_membership`
--
ALTER TABLE `crypto_membership`
  MODIFY `membID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  MODIFY `paymentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crypto_products`
--
ALTER TABLE `crypto_products`
  MODIFY `productID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_blogmeta`
--
ALTER TABLE `wp_blogmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_blogs`
--
ALTER TABLE `wp_blogs`
  MODIFY `blog_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `wp_registration_log`
--
ALTER TABLE `wp_registration_log`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `wp_signups`
--
ALTER TABLE `wp_signups`
  MODIFY `signup_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_site`
--
ALTER TABLE `wp_site`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_sitemeta`
--
ALTER TABLE `wp_sitemeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3849;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
