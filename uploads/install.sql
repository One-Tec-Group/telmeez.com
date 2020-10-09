-- -------------------------------------------------------------
-- TablePlus 2.12(282)
--
-- https://tableplus.com/
--
-- Database: academy_3.1_fresh
-- Generation Time: 2020-01-15 12:20:54.5860
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unique_identifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT '0',
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `outcomes` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `requirements` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT '0',
  `discounted_price` int(11) DEFAULT NULL,
  `level` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `visibility` int(11) DEFAULT NULL,
  `is_top_course` int(11) DEFAULT '0',
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_overview_provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `meta_description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `is_free_course` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `enrol`;
CREATE TABLE `enrol` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `frontend_settings`;
CREATE TABLE `frontend_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `english` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Bengali` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=594 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  `video_type_for_mobile_application` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url_for_mobile_application` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration_for_mobile_application` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `sender` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `read_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `message_thread`;
CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `sender` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `receiver` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `last_message_timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`message_thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_revenue` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `correct_answers` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_links` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `biography` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `watch_history` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `wishlist` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `paypal_keys` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `stripe_keys` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `verification_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('1', 'Leke', 'ALL', 'Lek', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('2', 'Dollars', 'USD', '$', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('3', 'Afghanis', 'AFN', '؋', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('4', 'Pesos', 'ARS', '$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('5', 'Guilders', 'AWG', 'ƒ', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('6', 'Dollars', 'AUD', '$', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('7', 'New Manats', 'AZN', 'ман', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('8', 'Dollars', 'BSD', '$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('9', 'Dollars', 'BBD', '$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('10', 'Rubles', 'BYR', 'p.', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('11', 'Euro', 'EUR', '€', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('12', 'Dollars', 'BZD', 'BZ$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('13', 'Dollars', 'BMD', '$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('14', 'Bolivianos', 'BOB', '$b', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('15', 'Convertible Marka', 'BAM', 'KM', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('16', 'Pula', 'BWP', 'P', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('17', 'Leva', 'BGN', 'лв', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('18', 'Reais', 'BRL', 'R$', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('19', 'Pounds', 'GBP', '£', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('20', 'Dollars', 'BND', '$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('21', 'Riels', 'KHR', '៛', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('22', 'Dollars', 'CAD', '$', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('23', 'Dollars', 'KYD', '$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('24', 'Pesos', 'CLP', '$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('25', 'Yuan Renminbi', 'CNY', '¥', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('26', 'Pesos', 'COP', '$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('27', 'Colón', 'CRC', '₡', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('28', 'Kuna', 'HRK', 'kn', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('29', 'Pesos', 'CUP', '₱', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('30', 'Koruny', 'CZK', 'Kč', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('31', 'Kroner', 'DKK', 'kr', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('32', 'Pesos', 'DOP ', 'RD$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('33', 'Dollars', 'XCD', '$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('34', 'Pounds', 'EGP', '£', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('35', 'Colones', 'SVC', '$', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('36', 'Pounds', 'FKP', '£', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('37', 'Dollars', 'FJD', '$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('38', 'Cedis', 'GHC', '¢', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('39', 'Pounds', 'GIP', '£', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('40', 'Quetzales', 'GTQ', 'Q', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('41', 'Pounds', 'GGP', '£', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('42', 'Dollars', 'GYD', '$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('43', 'Lempiras', 'HNL', 'L', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('44', 'Dollars', 'HKD', '$', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('45', 'Forint', 'HUF', 'Ft', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('46', 'Kronur', 'ISK', 'kr', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('47', 'Rupees', 'INR', 'Rp', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('48', 'Rupiahs', 'IDR', 'Rp', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('49', 'Rials', 'IRR', '﷼', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('50', 'Pounds', 'IMP', '£', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('51', 'New Shekels', 'ILS', '₪', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('52', 'Dollars', 'JMD', 'J$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('53', 'Yen', 'JPY', '¥', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('54', 'Pounds', 'JEP', '£', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('55', 'Tenge', 'KZT', 'лв', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('56', 'Won', 'KPW', '₩', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('57', 'Won', 'KRW', '₩', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('58', 'Soms', 'KGS', 'лв', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('59', 'Kips', 'LAK', '₭', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('60', 'Lati', 'LVL', 'Ls', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('61', 'Pounds', 'LBP', '£', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('62', 'Dollars', 'LRD', '$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('63', 'Switzerland Francs', 'CHF', 'CHF', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('64', 'Litai', 'LTL', 'Lt', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('65', 'Denars', 'MKD', 'ден', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('66', 'Ringgits', 'MYR', 'RM', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('67', 'Rupees', 'MUR', '₨', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('68', 'Pesos', 'MXN', '$', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('69', 'Tugriks', 'MNT', '₮', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('70', 'Meticais', 'MZN', 'MT', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('71', 'Dollars', 'NAD', '$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('72', 'Rupees', 'NPR', '₨', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('73', 'Guilders', 'ANG', 'ƒ', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('74', 'Dollars', 'NZD', '$', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('75', 'Cordobas', 'NIO', 'C$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('76', 'Nairas', 'NGN', '₦', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('77', 'Krone', 'NOK', 'kr', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('78', 'Rials', 'OMR', '﷼', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('79', 'Rupees', 'PKR', '₨', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('80', 'Balboa', 'PAB', 'B/.', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('81', 'Guarani', 'PYG', 'Gs', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('82', 'Nuevos Soles', 'PEN', 'S/.', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('83', 'Pesos', 'PHP', 'Php', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('84', 'Zlotych', 'PLN', 'zł', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('85', 'Rials', 'QAR', '﷼', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('86', 'New Lei', 'RON', 'lei', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('87', 'Rubles', 'RUB', 'руб', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('88', 'Pounds', 'SHP', '£', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('89', 'Riyals', 'SAR', '﷼', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('90', 'Dinars', 'RSD', 'Дин.', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('91', 'Rupees', 'SCR', '₨', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('92', 'Dollars', 'SGD', '$', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('93', 'Dollars', 'SBD', '$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('94', 'Shillings', 'SOS', 'S', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('95', 'Rand', 'ZAR', 'R', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('96', 'Rupees', 'LKR', '₨', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('97', 'Kronor', 'SEK', 'kr', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('98', 'Dollars', 'SRD', '$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('99', 'Pounds', 'SYP', '£', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('100', 'New Dollars', 'TWD', 'NT$', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('101', 'Baht', 'THB', '฿', '1', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('102', 'Dollars', 'TTD', 'TT$', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('103', 'Lira', 'TRY', 'TL', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('104', 'Liras', 'TRL', '£', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('105', 'Dollars', 'TVD', '$', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('106', 'Hryvnia', 'UAH', '₴', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('107', 'Pesos', 'UYU', '$U', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('108', 'Sums', 'UZS', 'лв', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('109', 'Bolivares Fuertes', 'VEF', 'Bs', '0', '0');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('110', 'Dong', 'VND', '₫', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('111', 'Rials', 'YER', '﷼', '0', '1');
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES ('112', 'Zimbabwe Dollars', 'ZWD', 'Z$', '0', '0');

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES ('1', 'banner_title', 'Learn on your schedule');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES ('2', 'banner_sub_title', 'Study any topic, anytime. Explore thousands of courses for the lowest price ever!');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES ('4', 'about_us', '<p></p><h2><span xss=removed>This is about us</span></h2><p><span xss=\"removed\">Welcome to Academy. It will help you to learn in a new ways</span></p>');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES ('10', 'terms_and_condition', '<h2>Terms and Condition</h2>This is the Terms and condition page for your companys');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES ('11', 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span><br></h2>This is the Privacy Policy page for your companys<p></p><p><b>This is another</b> <u><a href=\"https://youtube.com/watch?v=PHgc8Q6qTjc\" target=\"_blank\">thing you will</a></u> <span xss=\"removed\">not understand</span>.</p>');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES ('13', 'theme', 'default');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES ('14', 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES ('15', 'cookie_status', 'active');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES ('16', 'cookie_policy', '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>');

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('1', 'manage_profile', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('3', 'dashboard', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('4', 'categories', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('5', 'courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('6', 'students', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('7', 'enroll_history', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('8', 'message', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('9', 'settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('10', 'system_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('11', 'frontend_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('12', 'payment_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('13', 'manage_language', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('14', 'edit_profile', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('15', 'log_out', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('16', 'first_name', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('17', 'last_name', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('18', 'email', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('19', 'facebook_link', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('20', 'twitter_link', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('21', 'linkedin_link', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('22', 'a_short_title_about_yourself', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('23', 'biography', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('24', 'photo', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('25', 'select_image', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('26', 'change', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('27', 'remove', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('28', 'update_profile', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('29', 'change_password', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('30', 'current_password', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('31', 'new_password', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('32', 'confirm_new_password', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('33', 'delete', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('34', 'cancel', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('35', 'are_you_sure_to_update_this_information', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('36', 'yes', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('37', 'no', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('38', 'system settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('39', 'system_name', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('40', 'system_title', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('41', 'slogan', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('42', 'system_email', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('43', 'address', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('44', 'phone', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('45', 'youtube_api_key', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('46', 'get_youtube_api_key', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('47', 'vimeo_api_key', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('48', 'purchase_code', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('49', 'language', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('50', 'text-align', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('51', 'update_system_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('52', 'update_product', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('53', 'file', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('54', 'install_update', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('55', 'system_logo', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('56', 'update_logo', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('57', 'get_vimeo_api_key', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('58', 'add_category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('59', 'category_title', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('60', 'sub_categories', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('61', 'actions', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('62', 'action', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('63', 'manage_sub_categories', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('64', 'edit', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('65', 'add_course', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('66', 'select_category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('67', 'title', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('68', 'category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('69', '#_section', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('70', '#_lesson', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('71', '#_enrolled_user', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('72', 'view_course_details', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('73', 'manage_section', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('74', 'manage_lesson', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('75', 'student', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('76', 'add_student', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('77', 'name', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('78', 'date_added', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('79', 'enrolled_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('80', 'view_profile', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('81', 'admin_dashboard', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('82', 'total_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('83', 'number_of_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('84', 'total_lessons', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('85', 'number_of_lessons', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('86', 'total_enrollment', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('87', 'number_of_enrollment', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('88', 'total_student', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('89', 'number_of_student', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('90', 'manage_sections', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('91', 'manage sections', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('92', 'course', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('93', 'add_section', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('94', 'lessons', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('95', 'serialize_sections', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('96', 'add_lesson', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('97', 'edit_section', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('98', 'delete_section', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('99', 'course_details', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('100', 'course details', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('101', 'details', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('102', 'instructor', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('103', 'sub_category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('104', 'enrolled_user', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('105', 'last_modified', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('106', 'manage language', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('107', 'language_list', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('108', 'add_phrase', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('109', 'add_language', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('110', 'option', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('111', 'edit_phrase', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('112', 'delete_language', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('113', 'phrase', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('114', 'value_required', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('115', 'frontend settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('116', 'banner_title', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('117', 'banner_sub_title', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('118', 'about_us', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('119', 'blog', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('120', 'update_frontend_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('121', 'update_banner', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('122', 'banner_image', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('123', 'update_banner_image', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('124', 'payment settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('125', 'paypal_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('126', 'client_id', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('127', 'sandbox', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('128', 'production', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('129', 'active', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('130', 'mode', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('131', 'stripe_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('132', 'testmode', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('133', 'on', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('134', 'off', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('135', 'test_secret_key', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('136', 'test_public_key', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('137', 'live_secret_key', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('138', 'live_public_key', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('139', 'save_changes', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('140', 'category_code', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('141', 'update_phrase', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('142', 'check', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('143', 'settings_updated', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('144', 'checking', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('145', 'phrase_added', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('146', 'language_added', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('147', 'language_deleted', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('148', 'add course', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('149', 'add_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('150', 'add_course_form', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('151', 'basic_info', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('152', 'short_description', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('153', 'description', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('154', 'level', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('155', 'beginner', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('156', 'advanced', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('157', 'intermediate', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('158', 'language_made_in', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('159', 'is_top_course', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('160', 'outcomes', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('161', 'category_and_sub_category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('162', 'select_a_category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('163', 'select_a_category_first', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('164', 'requirements', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('165', 'price_and_discount', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('166', 'price', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('167', 'has_discount', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('168', 'discounted_price', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('169', 'course_thumbnail', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('170', 'note', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('171', 'thumbnail_size_should_be_600_x_600', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('172', 'course_overview_url', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('173', '0%', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('174', 'manage profile', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('175', 'edit_course', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('176', 'edit course', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('177', 'edit_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('178', 'edit_course_form', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('179', 'update_course', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('180', 'course_updated', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('181', 'number_of_sections', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('182', 'number_of_enrolled_users', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('183', 'add section', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('184', 'section', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('185', 'add_section_form', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('186', 'update', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('187', 'serialize_section', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('188', 'serialize section', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('189', 'submit', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('190', 'sections_have_been_serialized', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('191', 'select_course', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('192', 'search', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('193', 'thumbnail', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('194', 'duration', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('195', 'provider', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('196', 'add lesson', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('197', 'add_lesson_form', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('198', 'video_type', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('199', 'select_a_course', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('200', 'select_a_course_first', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('201', 'video_url', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('202', 'invalid_url', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('203', 'your_video_source_has_to_be_either_youtube_or_vimeo', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('204', 'for', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('205', 'of', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('206', 'edit_lesson', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('207', 'edit lesson', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('208', 'edit_lesson_form', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('209', 'login', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('210', 'password', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('211', 'forgot_password', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('212', 'back_to_website', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('213', 'send_mail', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('214', 'back_to_login', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('215', 'student_add', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('216', 'student add', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('217', 'add_students', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('218', 'student_add_form', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('219', 'login_credentials', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('220', 'social_information', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('221', 'facebook', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('222', 'twitter', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('223', 'linkedin', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('224', 'user_image', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('225', 'add_user', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('226', 'user_update_successfully', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('227', 'user_added_successfully', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('228', 'student_edit', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('229', 'student edit', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('230', 'edit_students', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('231', 'student_edit_form', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('232', 'update_user', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('233', 'enroll history', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('234', 'filter', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('235', 'user_name', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('236', 'enrolled_course', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('237', 'enrollment_date', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('238', 'biography2', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('239', 'home', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('240', 'search_for_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('241', 'total', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('242', 'go_to_cart', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('243', 'your_cart_is_empty', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('244', 'log_in', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('245', 'sign_up', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('246', 'what_do_you_want_to_learn', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('247', 'online_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('248', 'explore_a_variety_of_fresh_topics', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('249', 'expert_instruction', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('250', 'find_the_right_course_for_you', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('251', 'lifetime_access', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('252', 'learn_on_your_schedule', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('253', 'top_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('254', 'last_updater', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('255', 'hours', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('256', 'add_to_cart', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('257', 'top', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('258', 'latest_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('259', 'added_to_cart', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('260', 'admin', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('261', 'log_in_to_your_udemy_account', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('262', 'by_signing_up_you_agree_to_our', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('263', 'terms_of_use', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('264', 'and', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('265', 'privacy_policy', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('266', 'do_not_have_an_account', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('267', 'sign_up_and_start_learning', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('268', 'check_here_for_exciting_deals_and_personalized_course_recommendations', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('269', 'already_have_an_account', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('270', 'checkout', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('271', 'paypal', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('272', 'stripe', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('273', 'step', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('274', 'how_would_you_rate_this_course_overall', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('275', 'write_a_public_review', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('276', 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('277', 'what_did_the_instructor_do_well_and_what_could_use_some_improvement', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('278', 'next', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('279', 'previous', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('280', 'publish', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('281', 'search_results', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('282', 'ratings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('283', 'search_results_for', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('284', 'category_page', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('285', 'all', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('286', 'category_list', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('287', 'by', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('288', 'go_to_wishlist', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('289', 'hi', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('290', 'my_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('291', 'my_wishlist', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('292', 'my_messages', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('293', 'purchase_history', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('294', 'user_profile', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('295', 'already_purchased', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('296', 'all_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('297', 'wishlists', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('298', 'search_my_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('299', 'students_enrolled', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('300', 'created_by', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('301', 'last_updated', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('302', 'what_will_i_learn', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('303', 'view_more', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('304', 'other_related_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('305', 'updated', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('306', 'curriculum_for_this_course', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('307', 'about_the_instructor', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('308', 'reviews', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('309', 'student_feedback', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('310', 'average_rating', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('311', 'preview_this_course', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('312', 'includes', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('313', 'on_demand_videos', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('314', 'full_lifetime_access', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('315', 'access_on_mobile_and_tv', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('316', 'course_preview', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('317', 'instructor_page', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('318', 'buy_now', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('319', 'shopping_cart', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('320', 'courses_in_cart', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('321', 'student_name', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('322', 'amount_to_pay', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('323', 'payment_successfully_done', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('324', 'filter_by', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('325', 'instructors', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('326', 'reset', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('327', 'your', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('328', 'rating', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('329', 'course_detail', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('330', 'start_lesson', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('331', 'show_full_biography', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('332', 'terms_and_condition', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('333', 'about', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('334', 'terms_&_condition', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('335', 'sub categories', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('336', 'add_sub_category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('337', 'sub_category_title', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('338', 'add sub category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('339', 'add_sub_category_form', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('340', 'sub_category_code', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('341', 'data_deleted', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('342', 'edit_category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('343', 'edit category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('344', 'edit_category_form', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('345', 'font', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('346', 'awesome class', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('347', 'update_category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('348', 'data_updated_successfully', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('349', 'edit_sub_category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('350', 'edit sub category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('351', 'sub_category_edit', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('352', 'update_sub_category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('353', 'course_added', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('354', 'user_deleted_successfully', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('355', 'private_messaging', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('356', 'private messaging', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('357', 'messages', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('358', 'select_message_to_read', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('359', 'new_message', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('360', 'email_duplication', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('361', 'your_registration_has_been_successfully_done', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('362', 'profile', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('363', 'account', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('364', 'add_information_about_yourself_to_share_on_your_profile', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('365', 'basics', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('366', 'add_your_twitter_link', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('367', 'add_your_facebook_link', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('368', 'add_your_linkedin_link', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('369', 'credentials', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('370', 'edit_your_account_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('371', 'enter_current_password', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('372', 'enter_new_password', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('373', 're-type_your_password', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('374', 'save', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('375', 'update_user_photo', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('376', 'update_your_photo', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('377', 'upload_image', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('378', 'updated_successfully', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('379', 'invalid_login_credentials', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('380', 'blank_page', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('381', 'no_section_found', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('382', 'select_a_message_thread_to_read_it_here', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('383', 'send', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('384', 'type_your_message', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('385', 'date', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('386', 'total_price', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('387', 'payment_type', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('388', 'edit section', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('389', 'edit_section_form', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('390', 'reply_message', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('391', 'reply', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('392', 'log_in_to_your_account', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('393', 'no_result_found', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('394', 'enrollment', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('395', 'enroll_a_student', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('396', 'report', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('397', 'admin_revenue', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('398', 'instructor_revenue', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('399', 'instructor_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('400', 'view_frontend', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('401', 'number_of_active_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('402', 'number_of_pending_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('403', 'all_instructor', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('404', 'active_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('405', 'pending_courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('406', 'no_data_found', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('407', 'view_course_on_frontend', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('408', 'mark_as_pending', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('409', 'add category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('410', 'add_categories', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('411', 'category_add_form', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('412', 'icon_picker', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('413', 'enroll a student', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('414', 'enrollment_form', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('415', 'admin revenue', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('416', 'total_amount', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('417', 'instructor revenue', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('418', 'status', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('419', 'instructor settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('420', 'allow_public_instructor', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('421', 'instructor_revenue_percentage', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('422', 'admin_revenue_percentage', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('423', 'update_instructor_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('424', 'payment_info', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('425', 'required_for_instructors', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('426', 'paypal_client_id', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('427', 'stripe_public_key', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('428', 'stripe_secret_key', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('429', 'mark_as_active', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('430', 'mail_subject', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('431', 'mail_body', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('432', 'paid', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('433', 'pending', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('434', 'this_instructor_has_not_provided_valid_paypal_client_id', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('435', 'pay_with_paypal', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('436', 'this_instructor_has_not_provided_valid_public_key_or_secret_key', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('437', 'pay_with_stripe', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('438', 'create_course', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('439', 'payment_report', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('440', 'instructor_dashboard', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('441', 'draft', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('442', 'view_lessons', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('443', 'course_title', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('444', 'update_your_payment_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('445', 'edit_course_detail', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('446', 'edit_basic_informations', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('447', 'publish_this_course', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('448', 'save_to_draft', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('449', 'update_section', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('450', 'analyzing_given_url', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('451', 'select_a_section', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('452', 'update_lesson', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('453', 'website_name', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('454', 'website_title', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('455', 'website_keywords', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('456', 'website_description', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('457', 'author', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('458', 'footer_text', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('459', 'footer_link', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('460', 'update_backend_logo', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('461', 'update_favicon', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('462', 'favicon', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('463', 'active courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('464', 'product_updated_successfully', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('465', 'course_overview_provider', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('466', 'youtube', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('467', 'vimeo', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('468', 'html5', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('469', 'meta_keywords', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('470', 'meta_description', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('471', 'lesson_type', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('472', 'video', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('473', 'select_type_of_lesson', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('474', 'text_file', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('475', 'pdf_file', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('476', 'document_file', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('477', 'image_file', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('478', 'lesson_provider', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('479', 'select_lesson_provider', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('480', 'analyzing_the_url', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('481', 'attachment', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('482', 'summary', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('483', 'download', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('484', 'system_settings_updated', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('485', 'course_updated_successfully', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('486', 'please_wait_untill_admin_approves_it', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('487', 'pending courses', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('488', 'course_status_updated', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('489', 'smtp_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('490', 'free_course', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('491', 'free', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('492', 'get_enrolled', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('493', 'course_added_successfully', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('494', 'update_frontend_logo', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('495', 'system_currency_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('496', 'select_system_currency', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('497', 'currency_position', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('498', 'left', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('499', 'right', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('500', 'left_with_a_space', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('501', 'right_with_a_space', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('502', 'paypal_currency', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('503', 'select_paypal_currency', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('504', 'stripe_currency', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('505', 'select_stripe_currency', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('506', 'heads_up', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('507', 'please_make_sure_that', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('508', 'system_currency', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('509', 'are_same', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('510', 'smtp settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('511', 'protocol', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('512', 'smtp_host', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('513', 'smtp_port', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('514', 'smtp_user', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('515', 'smtp_pass', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('516', 'update_smtp_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('517', 'phrase_updated', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('518', 'registered_user', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('519', 'provide_your_valid_login_credentials', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('520', 'registration_form', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('521', 'provide_your_email_address_to_get_password', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('522', 'reset_password', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('523', 'want_to_go_back', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('524', 'message_sent!', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('525', 'selected_icon', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('526', 'pick_another_icon_picker', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('527', 'show_more', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('528', 'show_less', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('529', 'all_category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('530', 'price_range', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('531', 'price_range_withing', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('532', 'all_categories', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('533', 'all_sub_category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('534', 'number_of_results', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('535', 'showing_on_this_page', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('536', 'welcome', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('537', 'my_account', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('538', 'logout', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('539', 'visit_website', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('540', 'navigation', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('541', 'add_new_category', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('542', 'enrolment', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('543', 'enrol_history', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('544', 'enrol_a_student', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('545', 'language_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('546', 'congratulations', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('547', 'oh_snap', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('548', 'close', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('549', 'parent', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('550', 'none', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('551', 'category_thumbnail', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('552', 'the_image_size_should_be', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('553', 'choose_thumbnail', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('554', 'data_added_successfully', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('555', '', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('556', 'update_category_form', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('557', 'student_list', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('558', 'choose_user_image', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('559', 'finish', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('560', 'thank_you', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('561', 'you_are_almost_there', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('562', 'you_are_just_one_click_away', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('563', 'country', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('564', 'website_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('565', 'write_down_facebook_url', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('566', 'write_down_twitter_url', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('567', 'write_down_linkedin_url', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('568', 'google_link', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('569', 'write_down_google_url', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('570', 'instagram_link', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('571', 'write_down_instagram_url', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('572', 'pinterest_link', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('573', 'write_down_pinterest_url', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('574', 'update_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('575', 'upload_banner_image', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('576', 'update_light_logo', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('577', 'upload_light_logo', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('578', 'update_dark_logo', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('579', 'upload_dark_logo', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('580', 'update_small_logo', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('581', 'upload_small_logo', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('582', 'upload_favicon', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('583', 'logo_updated', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('584', 'favicon_updated', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('585', 'banner_image_update', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('586', 'frontend_settings_updated', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('587', 'setup_payment_informations', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('588', 'update_system_currency', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('589', 'setup_paypal_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('590', 'update_paypal_keys', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('591', 'setup_stripe_settings', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('592', 'test_mode', NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES ('593', 'update_stripe_keys', NULL, NULL);

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES ('1', 'Admin', '1234567890', '1234567890');
INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES ('2', 'User', '1234567890', '1234567890');

INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('1', 'language', 'english');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('2', 'system_name', 'Academy');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('3', 'system_title', 'Academy Learning Club');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('4', 'system_email', 'academy@example.com');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('5', 'address', 'Sydeny, Australia');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('6', 'phone', '+143-52-9933631');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('7', 'purchase_code', 'your-purchase-code');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('8', 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"sandbox-client-id\",\"sandbox_secret_key\":\"sandbox-secret-key\",\"production_client_id\":\"product-client-id\",\"production_secret_key\":\"production-secret\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('9', 'stripe_keys', '[{\"active\":\"0\",\"testmode\":\"on\",\"public_key\":\"pk_test_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_key\":\"sk_test_xxxxxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('10', 'youtube_api_key', 'youtube-api-key');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('11', 'vimeo_api_key', 'vimeo-api-key');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('12', 'slogan', 'A course based video CMS');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('13', 'text_align', NULL);
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('14', 'allow_instructor', '1');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('15', 'instructor_revenue', '70');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('16', 'system_currency', 'USD');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('17', 'paypal_currency', 'USD');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('18', 'stripe_currency', 'AUD');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('19', 'author', 'Creativeitem');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('20', 'currency_position', 'left');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('21', 'website_description', 'Nice application');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('22', 'website_keywords', 'LMS,Learning Management System,Creativeitem,demo,hello,How are you');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('23', 'footer_text', 'By Creativeitem');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('24', 'footer_link', 'http://creativeitem.com/');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('25', 'protocol', 'smtp');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('26', 'smtp_host', 'ssl://smtp.googlemail.com');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('27', 'smtp_port', '465');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('28', 'smtp_user', 'smtp-username');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('29', 'smtp_pass', 'smtp-password');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('30', 'version', '3.3');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('31', 'student_email_verification', 'disable');




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;