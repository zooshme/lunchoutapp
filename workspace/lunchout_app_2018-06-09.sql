# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.38)
# Database: lunchout_app
# Generation Time: 2018-06-09 12:00:33 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table sym_authors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_authors`;

CREATE TABLE `sym_authors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_seen` datetime DEFAULT '1000-01-01 00:00:00',
  `user_type` enum('author','manager','developer') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'author',
  `primary` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_token_active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `language` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_authors` WRITE;
/*!40000 ALTER TABLE `sym_authors` DISABLE KEYS */;

INSERT INTO `sym_authors` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `last_seen`, `user_type`, `primary`, `default_area`, `auth_token_active`, `language`)
VALUES
	(1,'zooshme','PBKDF2v1|10000|e92a2118cd80f46a97e5|ekMBQCUMuaU027NNRqX4XC61TGwlzfjTJ1IyMwfWwI/gMA0kHiApHQ==','Ovidiu','Spatacian-Tarnu','contact@zoosh.me','2018-06-08 18:27:41','developer','yes','/blueprints/sections/','no',NULL);

/*!40000 ALTER TABLE `sym_authors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_cache`;

CREATE TABLE `sym_cache` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creation` int(14) NOT NULL DEFAULT '0',
  `expiry` int(14) unsigned DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries`;

CREATE TABLE `sym_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  `modification_author_id` int(11) unsigned NOT NULL DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `creation_date_gmt` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `modification_date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `modification_date_gmt` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `section_id` (`section_id`),
  KEY `author_id` (`author_id`),
  KEY `creation_date` (`creation_date`),
  KEY `creation_date_gmt` (`creation_date_gmt`),
  KEY `modification_date` (`modification_date`),
  KEY `modification_date_gmt` (`modification_date_gmt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries` WRITE;
/*!40000 ALTER TABLE `sym_entries` DISABLE KEYS */;

INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`)
VALUES
	(10,9,1,1,'2018-06-02 13:44:41','2018-06-02 12:44:41','2018-06-02 13:46:33','2018-06-02 12:46:33'),
	(9,9,1,1,'2018-06-02 13:43:29','2018-06-02 12:43:29','2018-06-02 13:48:30','2018-06-02 12:48:30'),
	(12,7,1,1,'2018-06-02 14:42:14','2018-06-02 13:42:14','2018-06-02 14:42:14','2018-06-02 13:42:14'),
	(11,7,1,1,'2018-06-02 14:41:19','2018-06-02 13:41:19','2018-06-02 14:41:19','2018-06-02 13:41:19'),
	(8,9,1,1,'2018-06-02 13:42:06','2018-06-02 12:42:06','2018-06-02 13:48:30','2018-06-02 12:48:30'),
	(7,8,1,1,'2018-06-02 13:34:25','2018-06-02 12:34:25','2018-06-02 13:34:25','2018-06-02 12:34:25'),
	(13,10,1,1,'2018-06-02 14:43:03','2018-06-02 13:43:03','2018-06-02 14:43:03','2018-06-02 13:43:03'),
	(14,8,1,1,'2018-06-02 16:05:19','2018-06-02 15:05:19','2018-06-02 16:05:19','2018-06-02 15:05:19'),
	(15,9,1,1,'2018-06-02 16:06:48','2018-06-02 15:06:48','2018-06-02 16:07:12','2018-06-02 15:07:12'),
	(16,10,1,1,'2018-06-02 16:12:05','2018-06-02 15:12:05','2018-06-02 16:12:05','2018-06-02 15:12:05'),
	(17,10,1,1,'2018-06-02 16:12:32','2018-06-02 15:12:32','2018-06-02 16:12:32','2018-06-02 15:12:32'),
	(18,10,1,1,'2018-06-02 16:22:43','2018-06-02 15:22:43','2018-06-02 16:22:43','2018-06-02 15:22:43'),
	(19,8,1,1,'2018-06-02 18:54:50','2018-06-02 17:54:50','2018-06-02 18:54:50','2018-06-02 17:54:50'),
	(20,9,1,1,'2018-06-02 19:04:17','2018-06-02 18:04:17','2018-06-02 19:04:17','2018-06-02 18:04:17'),
	(21,11,1,1,'2018-06-03 12:30:11','2018-06-03 11:30:11','2018-06-03 12:30:11','2018-06-03 11:30:11'),
	(22,11,1,1,'2018-06-03 12:30:32','2018-06-03 11:30:32','2018-06-03 12:30:32','2018-06-03 11:30:32'),
	(23,11,1,1,'2018-06-03 12:30:46','2018-06-03 11:30:46','2018-06-03 12:30:46','2018-06-03 11:30:46'),
	(24,11,1,1,'2018-06-03 12:30:58','2018-06-03 11:30:58','2018-06-03 12:30:58','2018-06-03 11:30:58'),
	(25,11,1,1,'2018-06-03 12:31:08','2018-06-03 11:31:08','2018-06-03 12:31:08','2018-06-03 11:31:08'),
	(26,11,1,1,'2018-06-03 12:31:14','2018-06-03 11:31:14','2018-06-03 12:31:14','2018-06-03 11:31:14'),
	(27,11,1,1,'2018-06-03 12:31:38','2018-06-03 11:31:38','2018-06-03 12:31:38','2018-06-03 11:31:38'),
	(28,11,1,1,'2018-06-03 12:31:49','2018-06-03 11:31:49','2018-06-03 12:31:49','2018-06-03 11:31:49'),
	(29,11,1,1,'2018-06-03 12:32:15','2018-06-03 11:32:15','2018-06-03 12:32:15','2018-06-03 11:32:15'),
	(30,11,1,1,'2018-06-03 12:32:21','2018-06-03 11:32:21','2018-06-03 12:32:21','2018-06-03 11:32:21'),
	(31,11,1,1,'2018-06-03 12:32:26','2018-06-03 11:32:26','2018-06-03 12:32:26','2018-06-03 11:32:26'),
	(32,11,1,1,'2018-06-03 12:32:30','2018-06-03 11:32:30','2018-06-03 12:32:30','2018-06-03 11:32:30'),
	(33,11,1,1,'2018-06-03 12:32:52','2018-06-03 11:32:52','2018-06-03 12:32:52','2018-06-03 11:32:52'),
	(34,11,1,1,'2018-06-03 12:32:57','2018-06-03 11:32:57','2018-06-03 12:32:57','2018-06-03 11:32:57'),
	(35,11,1,1,'2018-06-03 12:33:03','2018-06-03 11:33:03','2018-06-03 12:33:03','2018-06-03 11:33:03'),
	(36,11,1,1,'2018-06-03 12:33:11','2018-06-03 11:33:11','2018-06-03 12:33:11','2018-06-03 11:33:11'),
	(37,11,1,1,'2018-06-03 12:33:17','2018-06-03 11:33:17','2018-06-03 12:33:17','2018-06-03 11:33:17'),
	(38,11,1,1,'2018-06-03 12:33:23','2018-06-03 11:33:23','2018-06-03 12:33:23','2018-06-03 11:33:23'),
	(39,11,1,1,'2018-06-03 12:33:38','2018-06-03 11:33:38','2018-06-03 12:33:38','2018-06-03 11:33:38'),
	(40,11,1,1,'2018-06-03 12:33:45','2018-06-03 11:33:45','2018-06-03 12:33:45','2018-06-03 11:33:45'),
	(41,11,1,1,'2018-06-03 12:33:52','2018-06-03 11:33:52','2018-06-03 12:33:52','2018-06-03 11:33:52'),
	(42,11,1,1,'2018-06-03 12:34:00','2018-06-03 11:34:00','2018-06-03 12:34:00','2018-06-03 11:34:00'),
	(43,11,1,1,'2018-06-03 12:34:06','2018-06-03 11:34:06','2018-06-03 12:34:06','2018-06-03 11:34:06'),
	(44,11,1,1,'2018-06-03 12:34:11','2018-06-03 11:34:11','2018-06-03 12:34:11','2018-06-03 11:34:11'),
	(45,11,1,1,'2018-06-03 12:35:42','2018-06-03 11:35:42','2018-06-03 12:35:42','2018-06-03 11:35:42'),
	(46,11,1,1,'2018-06-03 12:35:47','2018-06-03 11:35:47','2018-06-03 12:35:47','2018-06-03 11:35:47'),
	(47,11,1,1,'2018-06-03 12:35:53','2018-06-03 11:35:53','2018-06-03 12:35:53','2018-06-03 11:35:53'),
	(48,11,1,1,'2018-06-03 12:35:58','2018-06-03 11:35:58','2018-06-03 12:35:58','2018-06-03 11:35:58'),
	(49,11,1,1,'2018-06-03 12:36:07','2018-06-03 11:36:07','2018-06-03 12:36:07','2018-06-03 11:36:07'),
	(50,11,1,1,'2018-06-03 12:36:13','2018-06-03 11:36:13','2018-06-03 12:36:13','2018-06-03 11:36:13'),
	(51,11,1,1,'2018-06-03 12:36:17','2018-06-03 11:36:17','2018-06-03 12:36:17','2018-06-03 11:36:17'),
	(52,11,1,1,'2018-06-03 12:36:22','2018-06-03 11:36:22','2018-06-03 12:36:22','2018-06-03 11:36:22'),
	(53,11,1,1,'2018-06-03 12:36:30','2018-06-03 11:36:30','2018-06-03 12:36:30','2018-06-03 11:36:30'),
	(54,11,1,1,'2018-06-03 12:36:36','2018-06-03 11:36:36','2018-06-03 12:36:36','2018-06-03 11:36:36'),
	(55,11,1,1,'2018-06-03 12:37:02','2018-06-03 11:37:02','2018-06-03 12:37:02','2018-06-03 11:37:02'),
	(56,11,1,1,'2018-06-03 12:37:06','2018-06-03 11:37:06','2018-06-03 12:37:06','2018-06-03 11:37:06'),
	(57,11,1,1,'2018-06-03 12:37:29','2018-06-03 11:37:29','2018-06-03 12:37:29','2018-06-03 11:37:29'),
	(58,11,1,1,'2018-06-03 12:37:33','2018-06-03 11:37:33','2018-06-03 12:37:33','2018-06-03 11:37:33'),
	(59,11,1,1,'2018-06-03 12:37:37','2018-06-03 11:37:37','2018-06-03 12:37:37','2018-06-03 11:37:37'),
	(60,11,1,1,'2018-06-03 12:37:44','2018-06-03 11:37:44','2018-06-03 12:37:44','2018-06-03 11:37:44'),
	(61,11,1,1,'2018-06-03 12:37:51','2018-06-03 11:37:51','2018-06-03 12:37:51','2018-06-03 11:37:51'),
	(62,11,1,1,'2018-06-03 12:37:58','2018-06-03 11:37:58','2018-06-03 12:37:58','2018-06-03 11:37:58'),
	(63,11,1,1,'2018-06-03 12:38:04','2018-06-03 11:38:04','2018-06-03 12:38:04','2018-06-03 11:38:04'),
	(64,11,1,1,'2018-06-03 12:38:13','2018-06-03 11:38:13','2018-06-03 12:38:13','2018-06-03 11:38:13'),
	(65,11,1,1,'2018-06-03 12:38:18','2018-06-03 11:38:18','2018-06-03 12:38:18','2018-06-03 11:38:18'),
	(66,11,1,1,'2018-06-03 12:38:26','2018-06-03 11:38:26','2018-06-03 12:38:30','2018-06-03 11:38:30'),
	(67,11,1,1,'2018-06-03 12:38:38','2018-06-03 11:38:38','2018-06-03 12:38:38','2018-06-03 11:38:38'),
	(68,11,1,1,'2018-06-03 12:38:43','2018-06-03 11:38:43','2018-06-03 12:38:43','2018-06-03 11:38:43'),
	(69,11,1,1,'2018-06-03 12:47:16','2018-06-03 11:47:16','2018-06-03 12:47:16','2018-06-03 11:47:16'),
	(70,11,1,1,'2018-06-03 12:47:24','2018-06-03 11:47:24','2018-06-03 12:47:27','2018-06-03 11:47:27'),
	(71,11,1,1,'2018-06-03 12:47:33','2018-06-03 11:47:33','2018-06-03 12:47:33','2018-06-03 11:47:33'),
	(72,11,1,1,'2018-06-03 12:47:39','2018-06-03 11:47:39','2018-06-03 12:47:39','2018-06-03 11:47:39'),
	(73,11,1,1,'2018-06-03 12:47:45','2018-06-03 11:47:45','2018-06-03 12:47:45','2018-06-03 11:47:45'),
	(74,11,1,1,'2018-06-03 12:47:51','2018-06-03 11:47:51','2018-06-03 12:47:51','2018-06-03 11:47:51'),
	(75,11,1,1,'2018-06-03 12:47:58','2018-06-03 11:47:58','2018-06-03 12:47:58','2018-06-03 11:47:58'),
	(76,11,1,1,'2018-06-03 12:48:04','2018-06-03 11:48:04','2018-06-03 12:48:04','2018-06-03 11:48:04'),
	(77,11,1,1,'2018-06-03 12:48:10','2018-06-03 11:48:10','2018-06-03 12:48:10','2018-06-03 11:48:10'),
	(78,11,1,1,'2018-06-03 12:48:16','2018-06-03 11:48:16','2018-06-03 12:48:16','2018-06-03 11:48:16'),
	(79,11,1,1,'2018-06-03 12:48:21','2018-06-03 11:48:21','2018-06-03 12:48:21','2018-06-03 11:48:21'),
	(80,11,1,1,'2018-06-03 12:48:25','2018-06-03 11:48:25','2018-06-03 12:48:25','2018-06-03 11:48:25'),
	(81,12,1,1,'2018-06-03 17:57:00','2018-06-03 16:57:00','2018-06-04 16:23:53','2018-06-04 15:23:53'),
	(82,12,1,1,'2018-06-03 17:57:39','2018-06-03 16:57:39','2018-06-03 17:57:48','2018-06-03 16:57:48'),
	(83,12,1,1,'2018-06-03 18:22:44','2018-06-03 17:22:44','2018-06-03 18:22:44','2018-06-03 17:22:44'),
	(84,12,1,1,'2018-06-03 18:23:19','2018-06-03 17:23:19','2018-06-03 18:23:19','2018-06-03 17:23:19'),
	(85,12,1,1,'2018-06-03 18:25:30','2018-06-03 17:25:30','2018-06-03 18:25:30','2018-06-03 17:25:30'),
	(86,12,1,1,'2018-06-03 18:25:57','2018-06-03 17:25:57','2018-06-03 18:25:57','2018-06-03 17:25:57'),
	(87,12,1,1,'2018-06-03 18:26:40','2018-06-03 17:26:40','2018-06-03 18:26:40','2018-06-03 17:26:40'),
	(88,12,1,1,'2018-06-03 18:27:27','2018-06-03 17:27:27','2018-06-03 18:27:27','2018-06-03 17:27:27'),
	(89,12,1,1,'2018-06-03 18:27:51','2018-06-03 17:27:51','2018-06-03 18:27:51','2018-06-03 17:27:51'),
	(92,13,1,1,'2018-06-03 19:03:45','2018-06-03 18:03:45','2018-06-04 16:18:30','2018-06-04 15:18:30'),
	(91,12,1,1,'2018-06-03 18:28:27','2018-06-03 17:28:27','2018-06-03 18:28:50','2018-06-03 17:28:50'),
	(93,13,1,1,'2018-06-03 19:04:36','2018-06-03 18:04:36','2018-06-04 16:19:02','2018-06-04 15:19:02'),
	(94,13,1,1,'2018-06-03 19:05:08','2018-06-03 18:05:08','2018-06-04 16:19:31','2018-06-04 15:19:31'),
	(95,13,1,1,'2018-06-03 19:05:28','2018-06-03 18:05:28','2018-06-04 16:19:48','2018-06-04 15:19:48'),
	(96,13,1,1,'2018-06-03 19:05:49','2018-06-03 18:05:49','2018-06-04 16:20:16','2018-06-04 15:20:16');

/*!40000 ALTER TABLE `sym_entries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_23
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_23`;

CREATE TABLE `sym_entries_data_23` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`handle`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_23` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_23` DISABLE KEYS */;

INSERT INTO `sym_entries_data_23` (`id`, `entry_id`, `value`, `handle`)
VALUES
	(1,11,'ovidiust','ovidiust'),
	(2,12,'tom.sawyer','tom-sawyer');

/*!40000 ALTER TABLE `sym_entries_data_23` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_24
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_24`;

CREATE TABLE `sym_entries_data_24` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery-code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `length` tinyint(2) NOT NULL,
  `strength` enum('weak','good','strong') COLLATE utf8_unicode_ci NOT NULL,
  `reset` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recovery-code` (`recovery-code`),
  KEY `entry_id` (`entry_id`),
  KEY `length` (`length`),
  KEY `password` (`password`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_24` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_24` DISABLE KEYS */;

INSERT INTO `sym_entries_data_24` (`id`, `entry_id`, `password`, `recovery-code`, `length`, `strength`, `reset`, `expires`)
VALUES
	(1,11,'PBKDF2v1|10000|647f49f4307f5356af46|MAYhtr53tM0/CDzQbIdhUrSF/4/GwwLd/UqsM6dXpLwYWK1Gnv9ySg==',NULL,10,'good','no',NULL),
	(2,12,'PBKDF2v1|10000|086b5b2361abe8050146|mEZ3olDGKl8VEL/VIm1ZX9rsyDdSX5818ZmjXsCeNRbpsc1qgOZguA==',NULL,9,'good','no',NULL);

/*!40000 ALTER TABLE `sym_entries_data_24` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_25
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_25`;

CREATE TABLE `sym_entries_data_25` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_25` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_25` DISABLE KEYS */;

INSERT INTO `sym_entries_data_25` (`id`, `entry_id`, `value`)
VALUES
	(1,11,'me@ovidiust.com'),
	(2,12,'tom@zoosh.me');

/*!40000 ALTER TABLE `sym_entries_data_25` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_26
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_26`;

CREATE TABLE `sym_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_26` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_26` DISABLE KEYS */;

INSERT INTO `sym_entries_data_26` (`id`, `entry_id`, `role_id`)
VALUES
	(1,11,1),
	(2,12,1);

/*!40000 ALTER TABLE `sym_entries_data_26` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_27
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_27`;

CREATE TABLE `sym_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_27` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_27` DISABLE KEYS */;

INSERT INTO `sym_entries_data_27` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(1,7,'mozza','MOZZA'),
	(2,14,'cubatas','Cubatas'),
	(3,19,'cafe-andaluz','Café Andaluz');

/*!40000 ALTER TABLE `sym_entries_data_27` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_29
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_29`;

CREATE TABLE `sym_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_29` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_29` DISABLE KEYS */;

INSERT INTO `sym_entries_data_29` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(7,8,'glasgow','Glasgow'),
	(8,9,'st-andrews','St Andrews'),
	(6,10,'dundee','Dundee'),
	(10,15,'glasgow','Glasgow'),
	(11,20,'edinburgh-nr-grassmarket','Edinburgh Nr Grassmarket');

/*!40000 ALTER TABLE `sym_entries_data_29` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_30
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_30`;

CREATE TABLE `sym_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_30` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_30` DISABLE KEYS */;

INSERT INTO `sym_entries_data_30` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(7,8,'39-renfield-street','39 Renfield Street'),
	(8,9,'39-bell-street','39 Bell Street'),
	(6,10,'13-whitehall-st','13 Whitehall St'),
	(10,15,'108-elderslie-street','108 Elderslie Street'),
	(11,20,'10-11-george-iv-bridge','10-11 George IV Bridge');

/*!40000 ALTER TABLE `sym_entries_data_30` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_31
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_31`;

CREATE TABLE `sym_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_31` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_31` DISABLE KEYS */;

INSERT INTO `sym_entries_data_31` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(7,8,'glasgow','Glasgow'),
	(8,9,'st-andrews','St Andrews'),
	(6,10,'dundee','Dundee'),
	(10,15,'glasgow','Glasgow'),
	(11,20,'edinburgh','Edinburgh');

/*!40000 ALTER TABLE `sym_entries_data_31` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_32
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_32`;

CREATE TABLE `sym_entries_data_32` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_32` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_32` DISABLE KEYS */;

INSERT INTO `sym_entries_data_32` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(7,8,'united-kingdom','United Kingdom '),
	(8,9,'united-kingdom','United Kingdom'),
	(6,10,'united-kingdom','United Kingdom'),
	(10,15,'united-kingdom','United Kingdom'),
	(11,20,'united-kingdom','United Kingdom');

/*!40000 ALTER TABLE `sym_entries_data_32` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_33
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_33`;

CREATE TABLE `sym_entries_data_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_33` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_33` DISABLE KEYS */;

INSERT INTO `sym_entries_data_33` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(7,8,'g2-1js','G2 1JS'),
	(8,9,'ky16-9ur','KY16 9UR'),
	(6,10,'dd1-4aa','DD1 4AA'),
	(10,15,'g37ar','G37AR'),
	(11,20,'eh1-1ee','EH1 1EE');

/*!40000 ALTER TABLE `sym_entries_data_33` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_36
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_36`;

CREATE TABLE `sym_entries_data_36` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_36` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_36` DISABLE KEYS */;

INSERT INTO `sym_entries_data_36` (`id`, `entry_id`, `relation_id`)
VALUES
	(1,10,7),
	(2,8,7),
	(3,9,7),
	(5,15,14),
	(6,20,19);

/*!40000 ALTER TABLE `sym_entries_data_36` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_38
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_38`;

CREATE TABLE `sym_entries_data_38` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_38` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_38` DISABLE KEYS */;

INSERT INTO `sym_entries_data_38` (`id`, `entry_id`, `relation_id`)
VALUES
	(1,13,7),
	(2,16,14),
	(3,17,7),
	(4,18,7);

/*!40000 ALTER TABLE `sym_entries_data_38` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_39
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_39`;

CREATE TABLE `sym_entries_data_39` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_39` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_39` DISABLE KEYS */;

INSERT INTO `sym_entries_data_39` (`id`, `entry_id`, `relation_id`)
VALUES
	(1,13,10),
	(2,16,8),
	(3,17,8),
	(4,18,10);

/*!40000 ALTER TABLE `sym_entries_data_39` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_40
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_40`;

CREATE TABLE `sym_entries_data_40` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_40` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_40` DISABLE KEYS */;

INSERT INTO `sym_entries_data_40` (`id`, `entry_id`, `relation_id`)
VALUES
	(1,13,11),
	(2,16,11),
	(3,17,11),
	(4,18,11);

/*!40000 ALTER TABLE `sym_entries_data_40` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_41
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_41`;

CREATE TABLE `sym_entries_data_41` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_41` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_41` DISABLE KEYS */;

INSERT INTO `sym_entries_data_41` (`id`, `entry_id`, `start`, `end`)
VALUES
	(1,16,'2018-02-27 12:25:00','2018-02-27 12:25:00'),
	(2,17,'2018-05-07 12:00:00','2018-05-07 12:00:00'),
	(3,18,'2018-06-01 15:00:00','2018-06-01 15:00:00');

/*!40000 ALTER TABLE `sym_entries_data_41` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_42
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_42`;

CREATE TABLE `sym_entries_data_42` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_42` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_42` DISABLE KEYS */;

INSERT INTO `sym_entries_data_42` (`id`, `entry_id`, `value`)
VALUES
	(1,16,'mMWbE'),
	(2,17,'Q5lAE'),
	(3,18,'DyV4E');

/*!40000 ALTER TABLE `sym_entries_data_42` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_43
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_43`;

CREATE TABLE `sym_entries_data_43` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_43` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_43` DISABLE KEYS */;

INSERT INTO `sym_entries_data_43` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(1,20,'old-town','Old Town');

/*!40000 ALTER TABLE `sym_entries_data_43` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_49
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_49`;

CREATE TABLE `sym_entries_data_49` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_49` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_49` DISABLE KEYS */;

INSERT INTO `sym_entries_data_49` (`id`, `entry_id`, `value`)
VALUES
	(1,21,1),
	(2,22,2),
	(3,23,3),
	(4,24,4),
	(5,25,5),
	(6,26,6),
	(7,27,7),
	(8,28,8),
	(9,29,9),
	(10,30,10),
	(11,31,11),
	(12,32,12),
	(13,33,1),
	(14,34,2),
	(15,35,3),
	(16,36,4),
	(17,37,5),
	(18,38,6),
	(19,39,7),
	(20,40,8),
	(21,41,9),
	(22,42,10),
	(23,43,11),
	(24,44,12),
	(25,45,1),
	(26,46,2),
	(27,47,3),
	(28,48,4),
	(29,49,5),
	(30,50,6),
	(31,51,7),
	(32,52,8),
	(33,53,9),
	(34,54,10),
	(35,55,11),
	(36,56,12),
	(37,57,1),
	(38,58,2),
	(39,59,3),
	(40,60,4),
	(41,61,5),
	(42,62,6),
	(43,63,7),
	(44,64,8),
	(45,65,9),
	(47,66,10),
	(48,67,11),
	(49,68,12),
	(50,69,1),
	(52,70,2),
	(53,71,3),
	(54,72,4),
	(55,73,5),
	(56,74,6),
	(57,75,7),
	(58,76,8),
	(59,77,9),
	(60,78,10),
	(61,79,11),
	(62,80,12);

/*!40000 ALTER TABLE `sym_entries_data_49` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_50
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_50`;

CREATE TABLE `sym_entries_data_50` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_50` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_50` DISABLE KEYS */;

INSERT INTO `sym_entries_data_50` (`id`, `entry_id`, `value`)
VALUES
	(1,21,4),
	(2,22,2),
	(3,23,4),
	(4,24,2),
	(5,25,4),
	(6,26,4),
	(7,27,8),
	(8,28,6),
	(9,29,4),
	(10,30,2),
	(11,31,4),
	(12,32,8),
	(13,33,4),
	(14,34,4),
	(15,35,6),
	(16,36,2),
	(17,37,8),
	(18,38,2),
	(19,39,4),
	(20,40,4),
	(21,41,2),
	(22,42,4),
	(23,43,2),
	(24,44,2),
	(25,45,2),
	(26,46,4),
	(27,47,4),
	(28,48,2),
	(29,49,2),
	(30,50,4),
	(31,51,4),
	(32,52,2),
	(33,53,6),
	(34,54,8),
	(35,55,2),
	(36,56,4),
	(37,57,2),
	(38,58,4),
	(39,59,4),
	(40,60,8),
	(41,61,4),
	(42,62,4),
	(43,63,2),
	(44,64,2),
	(45,65,2),
	(47,66,4),
	(48,67,4),
	(49,68,2),
	(50,69,2),
	(52,70,4),
	(53,71,4),
	(54,72,6),
	(55,73,2),
	(56,74,4),
	(57,75,4),
	(58,76,2),
	(59,77,4),
	(60,78,2),
	(61,79,4),
	(62,80,4);

/*!40000 ALTER TABLE `sym_entries_data_50` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_51
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_51`;

CREATE TABLE `sym_entries_data_51` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_51` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_51` DISABLE KEYS */;

INSERT INTO `sym_entries_data_51` (`id`, `entry_id`, `relation_id`)
VALUES
	(1,21,10),
	(2,22,10),
	(3,23,10),
	(4,24,10),
	(5,25,10),
	(6,26,10),
	(7,27,10),
	(8,28,10),
	(9,29,10),
	(10,30,10),
	(11,31,10),
	(12,32,10),
	(13,33,20),
	(14,34,20),
	(15,35,20),
	(16,36,20),
	(17,37,20),
	(18,38,20),
	(19,39,20),
	(20,40,20),
	(21,41,20),
	(22,42,20),
	(23,43,20),
	(24,44,20),
	(25,45,8),
	(26,46,8),
	(27,47,8),
	(28,48,8),
	(29,49,8),
	(30,50,8),
	(31,51,8),
	(32,52,8),
	(33,53,8),
	(34,54,8),
	(35,55,8),
	(36,56,8),
	(37,57,15),
	(38,58,15),
	(39,59,15),
	(40,60,15),
	(41,61,15),
	(42,62,15),
	(43,63,15),
	(44,64,15),
	(45,65,15),
	(47,66,15),
	(48,67,15),
	(49,68,15),
	(50,69,9),
	(52,70,9),
	(53,71,9),
	(54,72,9),
	(55,73,9),
	(56,74,9),
	(57,75,9),
	(58,76,9),
	(59,77,9),
	(60,78,9),
	(61,79,9),
	(62,80,9);

/*!40000 ALTER TABLE `sym_entries_data_51` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_54
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_54`;

CREATE TABLE `sym_entries_data_54` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_54` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_54` DISABLE KEYS */;

INSERT INTO `sym_entries_data_54` (`id`, `entry_id`, `relation_id`)
VALUES
	(16,81,10),
	(3,82,10),
	(5,83,20),
	(6,84,20),
	(8,85,8),
	(9,86,8),
	(10,87,15),
	(11,88,15),
	(12,89,9),
	(15,91,9);

/*!40000 ALTER TABLE `sym_entries_data_54` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_55
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_55`;

CREATE TABLE `sym_entries_data_55` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_55` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_55` DISABLE KEYS */;

INSERT INTO `sym_entries_data_55` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(57,81,'thursday','Thursday'),
	(56,81,'wednesday','Wednesday'),
	(55,81,'tuesday','Tuesday'),
	(10,82,'sunday','Sunday'),
	(9,82,'saturday','Saturday'),
	(8,82,'friday','Friday'),
	(54,81,'monday','Monday'),
	(15,83,'monday','Monday'),
	(16,83,'tuesday','Tuesday'),
	(17,83,'wednesday','Wednesday'),
	(18,83,'thursday','Thursday'),
	(19,84,'friday','Friday'),
	(20,84,'saturday','Saturday'),
	(21,84,'sunday','Sunday'),
	(26,85,'monday','Monday'),
	(27,85,'tuesday','Tuesday'),
	(28,85,'wednesday','Wednesday'),
	(29,85,'thursday','Thursday'),
	(30,86,'friday','Friday'),
	(31,86,'saturday','Saturday'),
	(32,86,'sunday','Sunday'),
	(33,87,'monday','Monday'),
	(34,87,'tuesday','Tuesday'),
	(35,87,'wednesday','Wednesday'),
	(36,87,'thursday','Thursday'),
	(37,88,'friday','Friday'),
	(38,88,'saturday','Saturday'),
	(39,88,'sunday','Sunday'),
	(40,89,'monday','Monday'),
	(41,89,'tuesday','Tuesday'),
	(42,89,'wednesday','Wednesday'),
	(43,89,'thursday','Thursday'),
	(53,91,'sunday','Sunday'),
	(52,91,'saturday','Saturday'),
	(51,91,'friday','Friday');

/*!40000 ALTER TABLE `sym_entries_data_55` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_56
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_56`;

CREATE TABLE `sym_entries_data_56` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_56` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_56` DISABLE KEYS */;

INSERT INTO `sym_entries_data_56` (`id`, `entry_id`, `value`)
VALUES
	(16,81,NULL),
	(3,82,NULL),
	(5,83,NULL),
	(6,84,NULL),
	(8,85,NULL),
	(9,86,NULL),
	(10,87,NULL),
	(11,88,NULL),
	(12,89,NULL),
	(15,91,NULL);

/*!40000 ALTER TABLE `sym_entries_data_56` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_61
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_61`;

CREATE TABLE `sym_entries_data_61` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_61` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_61` DISABLE KEYS */;

INSERT INTO `sym_entries_data_61` (`id`, `entry_id`, `value`)
VALUES
	(16,81,NULL),
	(3,82,NULL),
	(5,83,NULL),
	(6,84,NULL),
	(8,85,NULL),
	(9,86,NULL),
	(10,87,NULL),
	(11,88,NULL),
	(12,89,NULL),
	(15,91,NULL);

/*!40000 ALTER TABLE `sym_entries_data_61` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_62
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_62`;

CREATE TABLE `sym_entries_data_62` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_62` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_62` DISABLE KEYS */;

INSERT INTO `sym_entries_data_62` (`id`, `entry_id`, `value`)
VALUES
	(16,81,NULL),
	(3,82,NULL),
	(5,83,NULL),
	(6,84,NULL),
	(8,85,NULL),
	(9,86,NULL),
	(10,87,NULL),
	(11,88,NULL),
	(12,89,NULL),
	(15,91,NULL);

/*!40000 ALTER TABLE `sym_entries_data_62` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_63
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_63`;

CREATE TABLE `sym_entries_data_63` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_63` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_63` DISABLE KEYS */;

INSERT INTO `sym_entries_data_63` (`id`, `entry_id`, `value`)
VALUES
	(16,81,NULL),
	(3,82,NULL),
	(5,83,NULL),
	(6,84,NULL),
	(8,85,NULL),
	(9,86,NULL),
	(10,87,NULL),
	(11,88,NULL),
	(12,89,NULL),
	(15,91,NULL);

/*!40000 ALTER TABLE `sym_entries_data_63` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_64
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_64`;

CREATE TABLE `sym_entries_data_64` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_64` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_64` DISABLE KEYS */;

INSERT INTO `sym_entries_data_64` (`id`, `entry_id`, `relation_id`)
VALUES
	(7,92,10),
	(8,93,20),
	(9,94,8),
	(10,95,15),
	(11,96,9);

/*!40000 ALTER TABLE `sym_entries_data_64` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_65
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_65`;

CREATE TABLE `sym_entries_data_65` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_65` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_65` DISABLE KEYS */;

INSERT INTO `sym_entries_data_65` (`id`, `entry_id`, `value`)
VALUES
	(7,92,NULL),
	(8,93,NULL),
	(9,94,NULL),
	(10,95,NULL),
	(11,96,NULL);

/*!40000 ALTER TABLE `sym_entries_data_65` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_68
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_68`;

CREATE TABLE `sym_entries_data_68` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_68` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_68` DISABLE KEYS */;

INSERT INTO `sym_entries_data_68` (`id`, `entry_id`, `value`)
VALUES
	(7,92,NULL),
	(8,93,NULL),
	(9,94,NULL),
	(10,95,NULL),
	(11,96,NULL);

/*!40000 ALTER TABLE `sym_entries_data_68` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_70
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_70`;

CREATE TABLE `sym_entries_data_70` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_70` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_70` DISABLE KEYS */;

INSERT INTO `sym_entries_data_70` (`id`, `entry_id`, `value`)
VALUES
	(7,92,NULL),
	(8,93,NULL),
	(9,94,NULL),
	(10,95,NULL),
	(11,96,NULL);

/*!40000 ALTER TABLE `sym_entries_data_70` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_71
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_71`;

CREATE TABLE `sym_entries_data_71` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_71` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_71` DISABLE KEYS */;

INSERT INTO `sym_entries_data_71` (`id`, `entry_id`, `value`)
VALUES
	(7,92,NULL),
	(8,93,NULL),
	(9,94,NULL),
	(10,95,NULL),
	(11,96,NULL);

/*!40000 ALTER TABLE `sym_entries_data_71` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_74
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_74`;

CREATE TABLE `sym_entries_data_74` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_74` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_74` DISABLE KEYS */;

INSERT INTO `sym_entries_data_74` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(49,92,'sunday','Sunday'),
	(48,92,'saturday','Saturday'),
	(47,92,'friday','Friday'),
	(46,92,'thursday','Thursday'),
	(45,92,'wednesday','Wednesday'),
	(44,92,'tuesday','Tuesday'),
	(43,92,'monday','Monday'),
	(55,93,'saturday','Saturday'),
	(54,93,'friday','Friday'),
	(53,93,'thursday','Thursday'),
	(52,93,'wednesday','Wednesday'),
	(51,93,'tuesday','Tuesday'),
	(50,93,'monday','Monday'),
	(62,94,'saturday','Saturday'),
	(61,94,'friday','Friday'),
	(60,94,'thursday','Thursday'),
	(59,94,'wednesday','Wednesday'),
	(58,94,'tuesday','Tuesday'),
	(57,94,'monday','Monday'),
	(69,95,'saturday','Saturday'),
	(68,95,'friday','Friday'),
	(67,95,'thursday','Thursday'),
	(66,95,'wednesday','Wednesday'),
	(65,95,'tuesday','Tuesday'),
	(64,95,'monday','Monday'),
	(76,96,'saturday','Saturday'),
	(75,96,'friday','Friday'),
	(74,96,'thursday','Thursday'),
	(73,96,'wednesday','Wednesday'),
	(72,96,'tuesday','Tuesday'),
	(71,96,'monday','Monday'),
	(56,93,'sunday','Sunday'),
	(63,94,'sunday','Sunday'),
	(70,95,'sunday','Sunday'),
	(77,96,'sunday','Sunday');

/*!40000 ALTER TABLE `sym_entries_data_74` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_75
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_75`;

CREATE TABLE `sym_entries_data_75` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_75` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_75` DISABLE KEYS */;

INSERT INTO `sym_entries_data_75` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(1,92,'12','12'),
	(2,93,'13','13'),
	(3,94,'12','12'),
	(4,95,'12','12'),
	(5,96,'13','13');

/*!40000 ALTER TABLE `sym_entries_data_75` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_76
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_76`;

CREATE TABLE `sym_entries_data_76` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_76` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_76` DISABLE KEYS */;

INSERT INTO `sym_entries_data_76` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(1,92,'0','0'),
	(2,93,'0','0'),
	(3,94,'0','0'),
	(4,95,'0','0'),
	(5,96,'0','0');

/*!40000 ALTER TABLE `sym_entries_data_76` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_77
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_77`;

CREATE TABLE `sym_entries_data_77` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_77` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_77` DISABLE KEYS */;

INSERT INTO `sym_entries_data_77` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(1,92,'17','17'),
	(2,93,'15','15'),
	(3,94,'17','17'),
	(4,95,'15','15'),
	(5,96,'16','16');

/*!40000 ALTER TABLE `sym_entries_data_77` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_78
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_78`;

CREATE TABLE `sym_entries_data_78` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_78` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_78` DISABLE KEYS */;

INSERT INTO `sym_entries_data_78` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(1,92,'0','0'),
	(2,93,'0','0'),
	(3,94,'0','0'),
	(4,95,'0','0'),
	(5,96,'0','0');

/*!40000 ALTER TABLE `sym_entries_data_78` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_79
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_79`;

CREATE TABLE `sym_entries_data_79` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_79` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_79` DISABLE KEYS */;

INSERT INTO `sym_entries_data_79` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(1,81,'9','9');

/*!40000 ALTER TABLE `sym_entries_data_79` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_80
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_80`;

CREATE TABLE `sym_entries_data_80` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_80` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_80` DISABLE KEYS */;

INSERT INTO `sym_entries_data_80` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(1,81,'0','0');

/*!40000 ALTER TABLE `sym_entries_data_80` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_81
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_81`;

CREATE TABLE `sym_entries_data_81` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_81` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_81` DISABLE KEYS */;

INSERT INTO `sym_entries_data_81` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(1,81,'23','23');

/*!40000 ALTER TABLE `sym_entries_data_81` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_entries_data_82
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_82`;

CREATE TABLE `sym_entries_data_82` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_entries_data_82` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_82` DISABLE KEYS */;

INSERT INTO `sym_entries_data_82` (`id`, `entry_id`, `handle`, `value`)
VALUES
	(1,81,'0','0');

/*!40000 ALTER TABLE `sym_entries_data_82` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_extensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_extensions`;

CREATE TABLE `sym_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('enabled','disabled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'enabled',
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_extensions` WRITE;
/*!40000 ALTER TABLE `sym_extensions` DISABLE KEYS */;

INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`)
VALUES
	(1,'debugdevkit','enabled','1.3.4'),
	(2,'export_ensemble','enabled','2.2.1'),
	(3,'jit_image_manipulation','enabled','1.47'),
	(4,'maintenance_mode','enabled','1.9.4'),
	(5,'markdown','enabled','1.21'),
	(6,'profiledevkit','enabled','1.5.2'),
	(7,'selectbox_link_field','enabled','2.0.2'),
	(8,'xssfilter','enabled','1.5.0'),
	(9,'extension_downloader','enabled','1.1.2'),
	(10,'maplocationfield','enabled','3.4.5'),
	(11,'members','enabled','1.10.1'),
	(12,'assets','enabled','1.0'),
	(13,'association_field','enabled','2.0.2'),
	(14,'datetime','enabled','3.9.0'),
	(15,'hashid_field','enabled','2.0.1'),
	(16,'cache_management','enabled','1.3.4'),
	(17,'numberfield','enabled','1.7.2'),
	(18,'field_group','enabled','1.1'),
	(19,'globalparamloader','enabled','1.5.2'),
	(20,'storage','enabled','1.6.5'),
	(21,'email_template_manager','enabled','7.5.1');

/*!40000 ALTER TABLE `sym_extensions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_extensions_delegates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_extensions_delegates`;

CREATE TABLE `sym_extensions_delegates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` int(11) NOT NULL,
  `page` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `delegate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `callback` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `extension_id` (`extension_id`),
  KEY `page` (`page`),
  KEY `delegate` (`delegate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_extensions_delegates` WRITE;
/*!40000 ALTER TABLE `sym_extensions_delegates` DISABLE KEYS */;

INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`)
VALUES
	(74,1,'/frontend/','ManipulateDevKitNavigation','manipulateDevKitNavigation'),
	(73,1,'/frontend/','FrontendDevKitResolve','frontendDevKitResolve'),
	(78,2,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(56,3,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(104,4,'/blueprints/pages/','AppendPageContent','__appendType'),
	(103,4,'/backend/','AppendPageAlert','__appendAlert'),
	(102,4,'/system/preferences/','CustomActions','__toggleMaintenanceMode'),
	(101,4,'/system/preferences/','Save','__SavePreferences'),
	(100,4,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(93,6,'/frontend/','ManipulateDevKitNavigation','manipulateDevKitNavigation'),
	(92,6,'/frontend/','FrontendDevKitResolve','frontendDevKitResolve'),
	(71,8,'/frontend/','EventPreSaveFilter','eventPreSaveFilter'),
	(70,8,'/blueprints/events/edit/','AppendEventFilter','appendEventFilter'),
	(69,8,'/blueprints/events/new/','AppendEventFilter','appendEventFilter'),
	(68,8,'/blueprints/events/','AppendEventFilterDocumentation','appendEventFilterDocumentation'),
	(80,9,'/backend/','InitaliseAdminPageHead','appendAssets'),
	(89,11,'/system/preferences/','Save','savePreferences'),
	(88,11,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(87,11,'/backend/','AdminPagePreGenerate','appendAssets'),
	(86,11,'/frontend/','CacheliteBypass','processCacheliteBypass'),
	(85,11,'/frontend/','EventPostSaveFilter','processPostSaveFilter'),
	(84,11,'/frontend/','EventPreSaveFilter','checkEventPermissions'),
	(83,11,'/frontend/','FrontendProcessEvents','appendLoginStatusToEventXML'),
	(82,11,'/frontend/','FrontendParamsResolve','addMemberDetailsToPageParams'),
	(81,11,'/frontend/','FrontendPageResolved','checkFrontendPagePermissions'),
	(99,12,'/backend/','InitialiseAdminPageHead','dInitialiseAdminPageHead'),
	(55,13,'/backend/','InitaliseAdminPageHead','appendAssets'),
	(59,14,'/system/preferences/','AddCustomPreferenceFieldsets','__addPreferences'),
	(65,15,'/system/preferences/','AddCustomPreferenceFieldsets','addPreferences'),
	(64,15,'/xmlimporter/importers/run/','XMLImporterEntryPostEdit','compileBackendFields'),
	(63,15,'/xmlimporter/importers/run/','XMLImporterEntryPostCreate','compileBackendFields'),
	(62,15,'/publish/new/','EntryPostCreate','compileBackendFields'),
	(61,15,'/publish/edit/','EntryPostEdit','compileBackendFields'),
	(79,16,'/backend/','NavigationPreRender','navigationPreRender'),
	(58,18,'/backend/','InitaliseAdminPageHead','initializeAdmin'),
	(108,19,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(107,19,'/frontend/','FrontendParamsResolve','addParam'),
	(76,20,'/blueprints/events/edit/','AppendEventFilter','appendEventFilter'),
	(75,20,'/blueprints/events/new/','AppendEventFilter','appendEventFilter'),
	(97,21,'/blueprints/events/edit/','AppendEventFilterDocumentation','appendEventFilterDocumentation'),
	(96,21,'/frontend/','EventFinalSaveFilter','eventFinalSaveFilter'),
	(95,21,'/blueprints/events/new/','AppendEventFilter','appendEventFilter'),
	(94,21,'/blueprints/events/edit/','AppendEventFilter','appendEventFilter'),
	(57,3,'/system/preferences/','Save','__SavePreferences'),
	(60,14,'/system/preferences/','Save','__savePreferences'),
	(66,15,'/backend/','InitaliseAdminPageHead','initaliseAdminPageHead'),
	(67,15,'/frontend/','EventPostSaveFilter','compileFrontendFields'),
	(72,8,'/frontend/','FrontendParamsResolve','frontendParamsResolve'),
	(77,20,'/frontend/','EventFinalSaveFilter','eventFinalSaveFilter'),
	(90,11,'/blueprints/events/new/','AppendEventFilter','appendFilter'),
	(91,11,'/blueprints/events/edit/','AppendEventFilter','appendFilter'),
	(98,21,'/blueprints/datasources/','DatasourcePostEdit','datasourcePostEdit'),
	(105,4,'/frontend/','FrontendPrePageResolve','__checkForMaintenanceMode'),
	(106,4,'/frontend/','FrontendParamsResolve','__addParam');

/*!40000 ALTER TABLE `sym_extensions_delegates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields`;

CREATE TABLE `sym_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `element_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `parent_section` int(11) NOT NULL DEFAULT '0',
  `required` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sortorder` int(11) NOT NULL DEFAULT '1',
  `location` enum('main','sidebar') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'main',
  `show_column` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `index` (`element_name`,`type`,`parent_section`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields` WRITE;
/*!40000 ALTER TABLE `sym_fields` DISABLE KEYS */;

INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`)
VALUES
	(49,'Table Number','table-number','number',11,'yes',0,'main','yes'),
	(36,'Restaurant','restaurant','selectbox_link',9,'yes',1,'main','yes'),
	(33,'Postcode','postcode','input',9,'no',6,'sidebar','yes'),
	(32,'Country','country','input',9,'no',5,'sidebar','yes'),
	(31,'Town/City','town-city','input',9,'no',4,'sidebar','yes'),
	(30,'Street Address','street-address','input',9,'no',2,'sidebar','yes'),
	(29,'Name','name','input',9,'yes',0,'main','yes'),
	(41,'Date and Time','date-and-time','datetime',10,'yes',2,'sidebar','yes'),
	(38,'Restaurant','restaurant','selectbox_link',10,'yes',3,'main','yes'),
	(27,'Name','name','input',8,'yes',0,'main','yes'),
	(26,'Role','role','memberrole',7,'yes',3,'sidebar','yes'),
	(25,'Email','email','memberemail',7,'yes',2,'main','yes'),
	(24,'Password','password','memberpassword',7,'yes',1,'main','yes'),
	(23,'Username','username','memberusername',7,'yes',0,'main','yes'),
	(39,'Location','location','selectbox_link',10,'yes',4,'main','yes'),
	(40,'User','user','selectbox_link',10,'yes',1,'main','no'),
	(42,'Hash ID','hash-id','hashid_field',10,'no',0,'sidebar','yes'),
	(43,'Street Address 2','street-address-2','input',9,'no',3,'sidebar','yes'),
	(50,'Seats','seats','number',11,'yes',1,'main','yes'),
	(51,'Location','location','selectbox_link',11,'yes',2,'main','yes'),
	(54,'Location','location','selectbox_link',12,'yes',0,'main','yes'),
	(55,'Days of Week','days-of-week','select',12,'yes',9,'main','yes'),
	(56,'Opens at','opens-at-start','field_group_start',12,'no',1,'main','no'),
	(81,'Hours','hours-closes-at','select',12,'yes',6,'sidebar','yes'),
	(80,'Minutes','minutes-opens-at','select',12,'yes',3,'sidebar','yes'),
	(79,'Hours','hours-opens-at','select',12,'yes',2,'main','yes'),
	(61,'Opens at','opens-at-end','field_group_end',12,'no',4,'main','no'),
	(62,'Closes at','closes-at-start','field_group_start',12,'no',5,'main','no'),
	(63,'Closes at','closes-at-end','field_group_end',12,'no',8,'main','no'),
	(64,'Location','location','selectbox_link',13,'yes',8,'main','yes'),
	(65,'Opens at','opens-at-start','field_group_start',13,'no',0,'main','no'),
	(77,'Hours','hours-closes-at','select',13,'yes',5,'main','yes'),
	(71,'Opens at','opens-at-end','field_group_end',13,'no',3,'main','no'),
	(68,'Closes at','closes-at-start','field_group_start',13,'no',4,'main','no'),
	(70,'Closes at','closes-at-end','field_group_end',13,'no',7,'main','no'),
	(76,'Minutes','minutes-opens-at','select',13,'yes',2,'main','yes'),
	(75,'Hours','hours-opens-at','select',13,'yes',1,'main','yes'),
	(74,'Days of Week','days-of-week','select',13,'yes',9,'sidebar','yes'),
	(78,'Minutes','minutes-closes-at','select',13,'yes',6,'main','yes'),
	(82,'Minutes','minutes-closes-at','select',12,'yes',7,'sidebar','yes');

/*!40000 ALTER TABLE `sym_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_association
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_association`;

CREATE TABLE `sym_fields_association` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_author
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_author`;

CREATE TABLE `sym_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_checkbox
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_checkbox`;

CREATE TABLE `sym_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_date
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_date`;

CREATE TABLE `sym_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calendar` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `time` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_datetime
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_datetime`;

CREATE TABLE `sym_fields_datetime` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `prepopulate` tinyint(1) DEFAULT '1',
  `time` tinyint(1) DEFAULT '1',
  `multiple` tinyint(1) DEFAULT '1',
  `range` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_datetime` WRITE;
/*!40000 ALTER TABLE `sym_fields_datetime` DISABLE KEYS */;

INSERT INTO `sym_fields_datetime` (`id`, `field_id`, `prepopulate`, `time`, `multiple`, `range`)
VALUES
	(9,41,0,1,0,0);

/*!40000 ALTER TABLE `sym_fields_datetime` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_field_group_end
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_field_group_end`;

CREATE TABLE `sym_fields_field_group_end` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_field_group_end` WRITE;
/*!40000 ALTER TABLE `sym_fields_field_group_end` DISABLE KEYS */;

INSERT INTO `sym_fields_field_group_end` (`id`, `field_id`)
VALUES
	(29,61),
	(30,63),
	(24,70),
	(23,71);

/*!40000 ALTER TABLE `sym_fields_field_group_end` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_field_group_start
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_field_group_start`;

CREATE TABLE `sym_fields_field_group_start` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_field_group_start` WRITE;
/*!40000 ALTER TABLE `sym_fields_field_group_start` DISABLE KEYS */;

INSERT INTO `sym_fields_field_group_start` (`id`, `field_id`)
VALUES
	(33,56),
	(34,62),
	(27,65),
	(28,68);

/*!40000 ALTER TABLE `sym_fields_field_group_start` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_hashid_field
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_hashid_field`;

CREATE TABLE `sym_fields_hashid_field` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `length` int(2) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_hashid_field` WRITE;
/*!40000 ALTER TABLE `sym_fields_hashid_field` DISABLE KEYS */;

INSERT INTO `sym_fields_hashid_field` (`id`, `field_id`, `salt`, `length`)
VALUES
	(8,42,'Lunch Out',5);

/*!40000 ALTER TABLE `sym_fields_hashid_field` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_input
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_input`;

CREATE TABLE `sym_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_input` WRITE;
/*!40000 ALTER TABLE `sym_fields_input` DISABLE KEYS */;

INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`)
VALUES
	(142,32,NULL),
	(143,33,NULL),
	(140,43,NULL),
	(141,31,NULL),
	(138,29,NULL),
	(139,30,NULL),
	(26,27,NULL);

/*!40000 ALTER TABLE `sym_fields_input` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_maplocation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_maplocation`;

CREATE TABLE `sym_fields_maplocation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_location` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `default_location_coords` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `default_zoom` int(11) unsigned NOT NULL,
  `api_key` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_memberemail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_memberemail`;

CREATE TABLE `sym_fields_memberemail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_memberemail` WRITE;
/*!40000 ALTER TABLE `sym_fields_memberemail` DISABLE KEYS */;

INSERT INTO `sym_fields_memberemail` (`id`, `field_id`)
VALUES
	(1,25);

/*!40000 ALTER TABLE `sym_fields_memberemail` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_memberpassword
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_memberpassword`;

CREATE TABLE `sym_fields_memberpassword` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `length` tinyint(2) NOT NULL,
  `strength` enum('weak','good','strong') COLLATE utf8_unicode_ci NOT NULL,
  `code_expiry` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_memberpassword` WRITE;
/*!40000 ALTER TABLE `sym_fields_memberpassword` DISABLE KEYS */;

INSERT INTO `sym_fields_memberpassword` (`id`, `field_id`, `length`, `strength`, `code_expiry`)
VALUES
	(1,24,6,'good','4 hour');

/*!40000 ALTER TABLE `sym_fields_memberpassword` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_memberrole
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_memberrole`;

CREATE TABLE `sym_fields_memberrole` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_role` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_memberrole` WRITE;
/*!40000 ALTER TABLE `sym_fields_memberrole` DISABLE KEYS */;

INSERT INTO `sym_fields_memberrole` (`id`, `field_id`, `default_role`)
VALUES
	(1,26,1);

/*!40000 ALTER TABLE `sym_fields_memberrole` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_memberusername
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_memberusername`;

CREATE TABLE `sym_fields_memberusername` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_memberusername` WRITE;
/*!40000 ALTER TABLE `sym_fields_memberusername` DISABLE KEYS */;

INSERT INTO `sym_fields_memberusername` (`id`, `field_id`, `validator`)
VALUES
	(1,23,NULL);

/*!40000 ALTER TABLE `sym_fields_memberusername` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_number
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_number`;

CREATE TABLE `sym_fields_number` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_number` WRITE;
/*!40000 ALTER TABLE `sym_fields_number` DISABLE KEYS */;

INSERT INTO `sym_fields_number` (`id`, `field_id`)
VALUES
	(5,49),
	(6,50);

/*!40000 ALTER TABLE `sym_fields_number` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_select
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_select`;

CREATE TABLE `sym_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_select` WRITE;
/*!40000 ALTER TABLE `sym_fields_select` DISABLE KEYS */;

INSERT INTO `sym_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`)
VALUES
	(53,55,'yes','no','Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday',NULL),
	(49,79,'no','no','00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23',NULL),
	(36,75,'no','no','00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23',NULL),
	(40,74,'yes','no','Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday',NULL),
	(37,76,'no','no','00,15,30,45',NULL),
	(38,77,'no','no','00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23',NULL),
	(39,78,'no','no','00,15,30,45',NULL),
	(50,80,'no','no','00,15,30,45',NULL),
	(51,81,'no','no','00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23',NULL),
	(52,82,'no','no','00,15,30,45',NULL);

/*!40000 ALTER TABLE `sym_fields_select` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_selectbox_link
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_selectbox_link`;

CREATE TABLE `sym_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_selectbox_link` WRITE;
/*!40000 ALTER TABLE `sym_fields_selectbox_link` DISABLE KEYS */;

INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`)
VALUES
	(44,36,'no','yes','27',20),
	(59,38,'no','yes','27',20),
	(60,39,'no','yes','29',20),
	(58,40,'no','no','23',20),
	(57,51,'no','yes','29',20),
	(82,54,'no','yes','29',20),
	(79,64,'no','yes','29',20);

/*!40000 ALTER TABLE `sym_fields_selectbox_link` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_taglist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_taglist`;

CREATE TABLE `sym_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_textarea
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_textarea`;

CREATE TABLE `sym_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_upload
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_upload`;

CREATE TABLE `sym_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_forgotpass
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_forgotpass`;

CREATE TABLE `sym_forgotpass` (
  `author_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_gpl_params
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_gpl_params`;

CREATE TABLE `sym_gpl_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `set_id` int(11) NOT NULL,
  `param` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `param` (`param`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_gpl_params` WRITE;
/*!40000 ALTER TABLE `sym_gpl_params` DISABLE KEYS */;

INSERT INTO `sym_gpl_params` (`id`, `set_id`, `param`, `value`, `type`, `sortorder`)
VALUES
	(1,1,'this-weekday','return date(\"l\", time());','definition',0);

/*!40000 ALTER TABLE `sym_gpl_params` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_gpl_sets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_gpl_sets`;

CREATE TABLE `sym_gpl_sets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `params` int(11) unsigned DEFAULT NULL,
  `exclude_page` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_gpl_sets` WRITE;
/*!40000 ALTER TABLE `sym_gpl_sets` DISABLE KEYS */;

INSERT INTO `sym_gpl_sets` (`id`, `name`, `params`, `exclude_page`)
VALUES
	(1,'Global Settings',1,NULL);

/*!40000 ALTER TABLE `sym_gpl_sets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_members_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_members_roles`;

CREATE TABLE `sym_members_roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_members_roles` WRITE;
/*!40000 ALTER TABLE `sym_members_roles` DISABLE KEYS */;

INSERT INTO `sym_members_roles` (`id`, `name`, `handle`)
VALUES
	(1,'Public','public'),
	(2,'Restaurant Owner','restaurant-owner');

/*!40000 ALTER TABLE `sym_members_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_members_roles_event_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_members_roles_event_permissions`;

CREATE TABLE `sym_members_roles_event_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) unsigned NOT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `level` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`,`event`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_members_roles_event_permissions` WRITE;
/*!40000 ALTER TABLE `sym_members_roles_event_permissions` DISABLE KEYS */;

INSERT INTO `sym_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`)
VALUES
	(1,2,'register_user','edit',0);

/*!40000 ALTER TABLE `sym_members_roles_event_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_members_roles_forbidden_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_members_roles_forbidden_pages`;

CREATE TABLE `sym_members_roles_forbidden_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) unsigned NOT NULL,
  `page_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`,`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_pages`;

CREATE TABLE `sym_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_sources` text COLLATE utf8_unicode_ci,
  `events` text COLLATE utf8_unicode_ci,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_pages` WRITE;
/*!40000 ALTER TABLE `sym_pages` DISABLE KEYS */;

INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`)
VALUES
	(83,NULL,'Style Guide','style-guide',NULL,NULL,NULL,NULL,7),
	(82,NULL,'Your Peers','your-peers',NULL,NULL,'jit_image_manipulation_recipes,navigation',NULL,6),
	(78,NULL,'Register','register',NULL,NULL,'navigation','register_user',2),
	(79,NULL,'Booking','booking',NULL,NULL,'jit_image_manipulation_recipes,restaurants,locations,peers,tables_for_location,lunch_hours_for_location,navigation',NULL,3),
	(80,NULL,'Restaurants','restaurants',NULL,'restaurant-id','navigation',NULL,4),
	(81,NULL,'Admin','admin',NULL,NULL,NULL,NULL,5),
	(77,NULL,'Home','home',NULL,NULL,'jit_image_manipulation_recipes,previous_bookings,restaurants_for_previous_bookings,locations_for_previous_bookings,navigation',NULL,1);

/*!40000 ALTER TABLE `sym_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_pages_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_pages_types`;

CREATE TABLE `sym_pages_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_pages_types` WRITE;
/*!40000 ALTER TABLE `sym_pages_types` DISABLE KEYS */;

INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`)
VALUES
	(681,77,'index'),
	(685,82,'navigation'),
	(686,83,'admin'),
	(683,80,'navigation');

/*!40000 ALTER TABLE `sym_pages_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_sections`;

CREATE TABLE `sym_sections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `hidden` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `filter` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `navigation_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Content',
  `author_id` int(11) unsigned NOT NULL DEFAULT '1',
  `modification_author_id` int(11) unsigned NOT NULL DEFAULT '1',
  `creation_date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `creation_date_gmt` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `modification_date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `modification_date_gmt` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`),
  KEY `creation_date` (`creation_date`),
  KEY `creation_date_gmt` (`creation_date_gmt`),
  KEY `modification_date` (`modification_date`),
  KEY `modification_date_gmt` (`modification_date_gmt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_sections` WRITE;
/*!40000 ALTER TABLE `sym_sections` DISABLE KEYS */;

INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`)
VALUES
	(10,'Bookings','bookings',4,'yes','no','Restaurants',1,1,'2018-06-02 14:30:29','2018-06-02 13:30:29','2018-06-03 12:29:21','2018-06-03 11:29:21'),
	(9,'Locations','locations',3,'no','no','Restaurants',1,1,'2018-06-02 13:36:36','2018-06-02 12:36:36','2018-06-03 12:25:43','2018-06-03 11:25:43'),
	(8,'Restaurants','restaurants',2,'no','no','Restaurants',1,1,'2018-06-02 12:56:30','2018-06-02 11:56:30','2018-06-03 12:16:49','2018-06-03 11:16:49'),
	(7,'Users','users',1,'no','no','Community',1,1,'2018-06-02 11:29:35','2018-06-02 10:29:35','2018-06-02 11:29:35','2018-06-02 10:29:35'),
	(11,'Tables','tables',5,'yes','no','Restaurants',1,1,'2018-06-03 12:16:20','2018-06-03 11:16:20','2018-06-03 12:29:07','2018-06-03 11:29:07'),
	(12,'Opening Hours','opening-hours',6,'yes','no','Restaurants',1,1,'2018-06-03 12:54:09','2018-06-03 11:54:09','2018-06-04 16:33:40','2018-06-04 15:33:40'),
	(13,'Lunch Hours','lunch-hours',7,'yes','no','Restaurants',1,1,'2018-06-03 18:08:29','2018-06-03 17:08:29','2018-06-04 16:18:06','2018-06-04 15:18:06');

/*!40000 ALTER TABLE `sym_sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_sections_association
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_sections_association`;

CREATE TABLE `sym_sections_association` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_section_id` int(11) unsigned NOT NULL,
  `parent_section_field_id` int(11) unsigned DEFAULT NULL,
  `child_section_id` int(11) unsigned NOT NULL,
  `child_section_field_id` int(11) unsigned NOT NULL,
  `hide_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `interface` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `editor` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_section_id` (`parent_section_id`,`child_section_id`,`child_section_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_sections_association` WRITE;
/*!40000 ALTER TABLE `sym_sections_association` DISABLE KEYS */;

INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`)
VALUES
	(59,8,27,10,38,'yes',NULL,NULL),
	(44,8,27,9,36,'no',NULL,NULL),
	(60,9,29,10,39,'yes',NULL,NULL),
	(58,7,23,10,40,'no',NULL,NULL),
	(57,9,29,11,51,'no',NULL,NULL),
	(82,9,29,12,54,'no',NULL,NULL),
	(79,9,29,13,64,'no',NULL,NULL);

/*!40000 ALTER TABLE `sym_sections_association` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_sessions`;

CREATE TABLE `sym_sessions` (
  `session` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `session_data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session`),
  KEY `session_expires` (`session_expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_sessions` WRITE;
/*!40000 ALTER TABLE `sym_sessions` DISABLE KEYS */;

INSERT INTO `sym_sessions` (`session`, `session_expires`, `session_data`)
VALUES
	('cab23f56268512063dd6a6d5021f309f',1528478861,'sym-|a:3:{s:10:\"xsrf-token\";s:30:\"ajzHJK1fY9woLa3UnAbg3vvlVV1xHG\";s:8:\"username\";s:7:\"zooshme\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|e92a2118cd80f46a97e5|ekMBQCUMuaU027NNRqX4XC61TGwlzfjTJ1IyMwfWwI/gMA0kHiApHQ==\";}sym-members|a:0:{}');

/*!40000 ALTER TABLE `sym_sessions` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
