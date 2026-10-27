-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 27, 2026 at 12:35 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisefinai`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrations`
--

DROP TABLE IF EXISTS `administrations`;
CREATE TABLE IF NOT EXISTS `administrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_code` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(299) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int NOT NULL DEFAULT '1' COMMENT '0=Admin,1=OfficeStaff, 2=Hire-Support-Staff,3=ItStaff,4=Accounting, 5=Self-Support-Staff, 7=Assistant-Support-Staff\r\n',
  `isActive` tinyint NOT NULL DEFAULT '1' COMMENT '0 = No, 1 = Yes',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0 = No, 1 = Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrations`
--

INSERT INTO `administrations` (`id`, `rec_date`, `fullname`, `dob`, `mobile`, `emailid`, `password`, `staff_code`, `position`, `role`, `isActive`, `isDelete`) VALUES
(1, '2023-10-12 05:03:22', 'Verloop Web', NULL, '9408881214', 'info@verloopweb.com', '$2y$12$e/6aFA1FMkil8hF0msGqGeO7wc8GbdbElaaT2fgDkZ6wYLdXpEBJ6', NULL, NULL, 6, 1, 0),
(2, '2026-03-25 11:24:52', 'wisefinai', NULL, '9271759598', 'info@wisefinai.com', '$2y$12$9jeMVAZr66kZMMqX7oSMge5FLTEEeDSl5V39FbEQgrxMYHVgMNBYO', '6584', NULL, 0, 1, 0),
(3, '2026-03-25 11:25:54', 'Indiakarobar', NULL, '9998841926', 'admin@indiakarobar.com', '$2y$12$7NTj.kUVNrujm/ZIXFHHOOTJdLiyz8AjQSA1ywZ5I1d1YMHuhLl6O', '8395', NULL, 0, 1, 0),
(4, '2026-04-23 10:49:30', 'Self Apply Staff', NULL, '9271759598', 'staff@wisefinai.com', '$2y$12$FjCd13wufVw4U1FMN8qlkeLq3Ke740Sb1SMaEJc5e3rwJ9KYGvRLq', '5913', NULL, 5, 1, 0),
(5, '2026-04-23 10:51:31', 'Loan Agent Staff', NULL, '9271759598', 'support@wisefinai.com', '$2y$12$FrLznt/6xLlrQBQUaJmQNuSdpR66xl5M/7nh3oObOfQ4YXhwOEoMa', '0996', NULL, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `adscontent`
--

DROP TABLE IF EXISTS `adscontent`;
CREATE TABLE IF NOT EXISTS `adscontent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ad_type` tinyint NOT NULL DEFAULT '1' COMMENT '1=text, 2=image',
  `ad_content` longtext NOT NULL,
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0=no, 1=yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `airpay_entry`
--

DROP TABLE IF EXISTS `airpay_entry`;
CREATE TABLE IF NOT EXISTS `airpay_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entryfor` int NOT NULL DEFAULT '0' COMMENT '1=Customer, 2=Channel, 11=Digital PL, 12=Digital BL',
  `userid` int NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `statuscode` varchar(256) DEFAULT NULL,
  `transactionid` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aisensy_settings`
--

DROP TABLE IF EXISTS `aisensy_settings`;
CREATE TABLE IF NOT EXISTS `aisensy_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'SA, LA, LAT',
  `type` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'remarketing, buy now, pgsuccess, pgfailed',
  `api_key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aisensy_settings`
--

INSERT INTO `aisensy_settings` (`id`, `rec_date`, `product`, `type`, `api_key`, `campaign_name`, `media_url`, `media_filename`) VALUES
(1, '2025-08-19 18:13:52', 'SA', 'remarketing', '#', '#', '#', '#'),
(2, '2025-08-19 18:13:52', 'LA', 'remarketing', '#', '#', '#', '#'),
(3, '2025-08-19 18:15:10', 'LAT', 'remarketing', '#', '#', '#', '#'),
(4, '2025-08-19 19:21:03', 'LA', 'getoffer', '#', '#', '#', '#'),
(5, '2025-08-19 19:34:15', 'LAT', 'getoffer', '#', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `application_remarks`
--

DROP TABLE IF EXISTS `application_remarks`;
CREATE TABLE IF NOT EXISTS `application_remarks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entry_at` datetime DEFAULT NULL,
  `service` tinyint DEFAULT NULL,
  `subject` varchar(256) NOT NULL,
  `notes` longtext,
  `application_id` int NOT NULL,
  `staff_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `loan_application_id` (`application_id`),
  KEY `administration_id` (`staff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `application_remarks`
--

INSERT INTO `application_remarks` (`id`, `rec_date`, `entry_at`, `service`, `subject`, `notes`, `application_id`, `staff_id`) VALUES
(1, '2026-09-07 15:35:54', '2026-09-07 15:35:00', 9, '3', 'sad', 1, 1),
(2, '2026-09-22 17:00:59', '2026-09-22 17:00:59', 5, '9', '', 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `applylink_criteria`
--

DROP TABLE IF EXISTS `applylink_criteria`;
CREATE TABLE IF NOT EXISTS `applylink_criteria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `applylink_id` int NOT NULL,
  `criteria_id` int NOT NULL,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bankapplylink`
--

DROP TABLE IF EXISTS `bankapplylink`;
CREATE TABLE IF NOT EXISTS `bankapplylink` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bankid` int NOT NULL,
  `roi` float(10,2) DEFAULT NULL,
  `tenures` tinyint DEFAULT NULL,
  `status_type` int DEFAULT NULL,
  `option1` varchar(599) DEFAULT NULL,
  `option2` varchar(599) DEFAULT NULL,
  `option3` varchar(599) DEFAULT NULL,
  `option4` varchar(599) DEFAULT NULL,
  `option5` varchar(599) DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `applyurl` varchar(256) NOT NULL,
  `is_recommended` tinyint NOT NULL DEFAULT '0' COMMENT '0=false,1=true',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bankapplylink`
--

INSERT INTO `bankapplylink` (`id`, `rec_date`, `bankid`, `roi`, `tenures`, `status_type`, `option1`, `option2`, `option3`, `option4`, `option5`, `title`, `applyurl`, `is_recommended`, `isDelete`) VALUES
(1, '2025-05-01 20:23:29', 17, 10.50, 60, NULL, '100% Online Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Pre-Approved Loan Offer | Quick Process', 'https://www.cholamandalam.com/get-consumer-small-enterprise-loans', 0, 1),
(2, '2025-05-01 20:37:10', 15, 11.00, 60, NULL, '100% Online Process', 'Convenient EMI Options', 'Min. Documentation', NULL, NULL, 'You\'re Eligible For Pre-Approved Offer | Easy Application', 'https://www.dealsofloan.com/personal-loan', 0, 1),
(3, '2025-05-01 20:41:21', 18, 11.50, 60, NULL, '100% Online Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Profile Matches The Criteria | Easy Digital Process', 'https://www.mymudra.com/loan/personal-loan', 0, 1),
(4, '2025-05-01 21:18:20', 13, 10.50, 60, NULL, '100% Online Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Pre-Approved Loan Offer | Digital Process', 'https://pq.faircent.com/', 0, 1),
(5, '2025-05-03 15:52:03', 20, 11.00, 48, NULL, '100% Online Process', 'Convenient EMI Options', 'Min. Documentation', NULL, NULL, 'Your Criteria Matched For Pre-Approved Loan Offer | Quick Process', 'https://www.herofincorp.com/personal-loans', 0, 1),
(6, '2025-05-03 15:55:27', 36, 11.50, 48, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Criteria Matched For Pre-Approved Loan Offer | Quick Process', 'https://www.piramalfinance.com/loan', 0, 1),
(7, '2025-05-03 15:57:46', 38, 10.50, 60, NULL, 'Simple Online Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://www.incred.com/personal-loan/', 0, 0),
(8, '2025-05-03 16:01:29', 21, 11.50, 36, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://maximus.axisbank.co.in/external/customer/login?product=personal', 0, 1),
(9, '2025-05-03 16:04:55', 22, 11.00, 60, NULL, '100% Online Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'You’re Eligible For Pre-Approved Loan Offer | Simple Process', 'https://www.bajajfinserv.in/personal-loan', 0, 1),
(10, '2025-05-03 16:08:34', 37, 10.50, 48, NULL, 'Simple Online Process', 'Convenient EMI Options', 'Min. Documentation', NULL, NULL, 'Your Pre-Approved Loan Offer | Quick Process', 'https://www.ujjivansfb.in/individual-loans?type=Personal-Individual-Loan', 0, 1),
(11, '2025-05-03 16:10:24', 23, 11.50, 60, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://onlineapply.sbi.co.in/personal-banking/personal-loan', 0, 1),
(12, '2025-05-03 16:15:21', 24, 10.50, 48, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'You’re Eligible For Pre-Approved Loan Offer | Simple Process', 'https://www.idbibank.in/personal-loan.aspx', 0, 1),
(13, '2025-05-03 16:23:55', 13, 11.00, 60, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Criteria Matched For Pre-Approved Loan Offer | Quick Process', 'https://pq.faircent.com/', 0, 1),
(14, '2025-05-03 16:26:05', 14, 10.50, 60, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Documentation', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://apply.finnable.com/login', 0, 1),
(15, '2025-05-03 16:31:00', 27, 10.00, 60, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'You’re Eligible For Pre-Approved Loan Offer | Simple Process', 'https://www.lendingkart.com/business-loan/check-eligibility', 0, 1),
(16, '2025-05-03 17:04:30', 11, 10.50, 60, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://partner.werize.com/MyBusiness/KREDBAZ%20SERVICE%20INDIA%20PRIVATE%20LIMITED/d2266f89-d2b0-4956-ba75-e95eca9cd08a', 1, 0),
(17, '2025-05-03 17:13:29', 28, 11.50, 48, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Criteria Matched For Pre-Approved Loan Offer | Quick Process', 'https://app.upwards.in/login', 0, 1),
(18, '2025-05-03 17:15:19', 29, 11.00, 36, NULL, 'Simple Online Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'You’re Eligible For Pre-Approved Loan Offer | Simple Process', 'https://moneyview.in/personal-loan', 0, 0),
(19, '2025-05-03 17:17:31', 39, 11.50, 48, NULL, 'Simple Online Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://www.smfgindiacredit.com/personal-loan.aspx', 0, 1),
(20, '2025-05-03 17:19:02', 40, 10.50, 60, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://www.fibe.in/personal-loan/', 0, 0),
(21, '2025-05-03 17:23:18', 30, 11.50, 60, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://induseasycredit.indusind.com/customer/personal-loan/new-lead', 0, 1),
(22, '2025-05-03 17:27:31', 31, 10.50, 60, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Pre-Approved Loan Offer | Quick Process', 'https://v.hdfcbank.com/personal-business-loan.html', 0, 1),
(23, '2025-05-03 17:29:46', 32, 11.50, 48, NULL, 'Simple Online Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://www.tatacapital.com/online/loans/personal-loans/apply-now-personal-loan', 0, 1),
(24, '2025-05-03 17:32:08', 33, 10.50, 60, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://finance.adityabirlacapital.com/personal-finance/personal-loan', 0, 1),
(25, '2025-05-03 17:34:11', 41, 11.50, 48, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Documentation', NULL, NULL, 'Your Pre-Approved Loan Offer | Quick Process', 'https://personalloan.federalbank.co.in/', 0, 1),
(26, '2025-05-03 17:42:28', 34, 11.00, 48, NULL, '100% Digital Process', 'Convenient EMI Options', 'Min. Documentation', NULL, NULL, 'You’re Eligible For Pre-Approved Loan Offer | Simple Process', 'https://www.icicibank.com/personal-banking/loans/personal-loan', 0, 1),
(27, '2025-05-03 17:44:15', 42, 10.50, 48, NULL, 'Simple Online Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Criteria Matched For Pre-Approved Loan Offer | Quick Process', 'https://poonawallafincorp.com/personal-loan/apply-for-loan', 0, 1),
(28, '2025-05-03 17:52:25', 35, 10.50, 60, NULL, '100% Online Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://www.yesbank.in/personal-banking/loans/personal-loan', 0, 1),
(29, '2025-06-05 12:49:55', 8, 10.50, 60, NULL, '100% Online Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'You\'re Eligible For Pre-Approved Loan Offer | Quick Process', 'https://www.prefr.com/personal-loan', 1, 0),
(30, '2025-06-07 20:56:34', 45, 10.50, 60, NULL, '100% Digital Process', 'Low EMI Options', 'Min. Paperwork', NULL, NULL, 'You\'re Eligible For Pre-Approved Loan Offer | Simple Process', 'https://web.moneytap.com/', 0, 0),
(31, '2025-06-07 20:58:24', 46, 11.00, 48, NULL, '100% Online Process', 'Low EMI Options', 'Min. Documentation', NULL, NULL, 'Your Eligibility Matches The Criteria | Instant Process', 'https://applyonline.ramfincorp.com/', 0, 0),
(32, '2025-06-28 16:05:55', 13, 10.50, 60, NULL, '100% Online Process', 'Convenient EMI Options', 'Min. Paperwork', NULL, NULL, 'Your Eligibility Matches The Criteria | Easy & Quick Process', 'https://in.faircentpro.com/?utm_source=wl&utm_medium=Mailer&campaign_name=Borrower_Partner&agf=WLA113767', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
CREATE TABLE IF NOT EXISTS `banks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bank_name` varchar(100) NOT NULL,
  `bank_image` varchar(255) NOT NULL,
  `order_no` int NOT NULL DEFAULT '0',
  `isActive` int NOT NULL DEFAULT '1',
  `isDelete` int NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `rec_date`, `bank_name`, `bank_image`, `order_no`, `isActive`, `isDelete`) VALUES
(1, '2025-03-30 16:20:24', 'Moneyview', '1706270037.png', 1, 0, 1),
(2, '2024-01-26 09:47:04', 'Cashe', '1706262434.png', 2, 0, 0),
(4, '2024-06-17 10:30:11', 'prayosha', '1718600399.png', 0, 0, 1),
(5, '2024-06-27 18:13:13', 'sef', '1719492202.jpg', 0, 1, 1),
(6, '2025-01-07 14:33:41', 'InvestKraft', '1736240636.jpg', 3, 1, 1),
(7, '2025-01-07 14:34:23', 'InvestKraft', '1736240673.jpg', 3, 1, 1),
(8, '2025-02-04 13:03:49', 'Prfer', '1738654938.png', 0, 1, 0),
(9, '2025-02-04 13:03:49', 'Prfer', '1738654938.png', 0, 1, 1),
(10, '2025-02-04 13:03:49', 'Prfer', '1738654938.png', 0, 1, 1),
(11, '2025-05-02 12:46:54', 'Werize', '1746170219.png', 0, 1, 0),
(12, '2025-02-04 13:14:07', 'Fibe', '1738655067.png', 0, 0, 0),
(13, '2025-05-02 12:46:14', 'Faircent', '1746170179.png', 0, 1, 0),
(14, '2025-02-04 13:15:16', 'Finnable', '1738655142.png', 0, 1, 0),
(15, '2025-05-02 12:46:01', 'Deals Of Loan', '1746170165.png', 0, 0, 1),
(16, '2025-05-02 12:46:46', 'Urbanmoney', '1746170211.png', 0, 1, 0),
(17, '2025-05-02 12:45:31', 'Cholamandalam', '1746170140.png', 0, 1, 0),
(18, '2025-05-02 12:46:26', 'My Mudra', '1746170191.png', 0, 0, 1),
(19, '2025-05-02 13:50:22', 'IIFL', '1746174044.png', 0, 0, 0),
(20, '2025-05-02 17:15:59', 'Hero Fincorp', '1746186387.png', 0, 0, 0),
(21, '2025-05-02 17:16:48', 'Axis Bank', '1746186577.png', 0, 0, 0),
(22, '2025-05-02 17:19:51', 'Bajaj Finserv', '1746186617.png', 0, 0, 0),
(23, '2025-05-02 17:20:45', 'SBI', '1746186746.png', 0, 0, 0),
(24, '2025-05-02 17:22:43', 'IDBI Bank', '1746186780.png', 0, 0, 0),
(25, '2025-05-02 17:23:20', 'Finnable', '1746186824.png', 0, 0, 0),
(26, '2025-05-02 17:24:03', 'PaySense', '1746186861.png', 0, 0, 1),
(27, '2025-05-02 17:33:31', 'LendingKart', '1746187457.png', 0, 0, 0),
(28, '2025-05-02 17:34:40', 'Upwards', '1746187511.png', 0, 0, 0),
(29, '2025-05-02 17:35:25', 'MoneyView', '1746187540.png', 0, 0, 0),
(30, '2025-05-02 17:35:58', 'IndusInd Bank', '1746187764.png', 0, 0, 0),
(31, '2025-05-02 17:39:40', 'HDFC Bank', '1746187798.png', 0, 0, 0),
(32, '2025-05-02 17:49:42', 'Tata Capital', '1746188400.png', 0, 0, 0),
(33, '2025-05-02 17:50:15', 'Aditya Birla Capital', '1746188435.png', 0, 0, 0),
(34, '2025-05-02 17:50:48', 'ICICI Bank', '1746188529.png', 0, 0, 0),
(35, '2025-05-02 17:52:23', 'Yes Bank', '1746188633.png', 0, 0, 0),
(36, '2025-05-02 17:55:06', 'Piramal Finance', '1746188726.png', 0, 0, 0),
(37, '2025-05-02 17:55:27', 'Ujjivan Small Finance', '1746188745.png', 0, 0, 0),
(38, '2025-05-02 18:30:43', 'InCred Finance', '1746190862.png', 0, 0, 0),
(39, '2025-05-02 18:31:26', 'SMFG India Credit', '1746191024.png', 0, 0, 0),
(40, '2025-05-02 18:34:00', 'Fibe', '1746191054.png', 0, 0, 0),
(41, '2025-05-02 18:34:35', 'Federal Bank', '1746191097.png', 0, 0, 0),
(42, '2025-05-02 18:35:15', 'Poonawalla Fincorp', '1746191145.png', 0, 0, 0),
(43, '2025-06-05 12:07:07', 'MoneyTap', '1749105801.png', 0, 0, 0),
(44, '2025-06-05 12:13:24', 'Ram Fincorp', '1749105817.png', 0, 0, 0),
(45, '2025-06-07 18:22:41', 'Freo (by MoneyTap)', '1749300818.png', 0, 0, 0),
(46, '2025-06-07 18:23:51', 'Ram Fincorp', '1749300844.png', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bulksms`
--

DROP TABLE IF EXISTS `bulksms`;
CREATE TABLE IF NOT EXISTS `bulksms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fullname` varchar(250) NOT NULL,
  `mobile` varchar(80) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `isDnd` tinyint NOT NULL DEFAULT '0' COMMENT '0=no dnd, 1 = dnd',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0=not delete, 1 = delete',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('wisefinai_cache_d189a3df25facd3522214377f5876bcb', 'i:1;', 1790405777),
('wisefinai_cache_d189a3df25facd3522214377f5876bcb:timer', 'i:1790405777;', 1790405777);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cardoffer`
--

DROP TABLE IF EXISTS `cardoffer`;
CREATE TABLE IF NOT EXISTS `cardoffer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int NOT NULL DEFAULT '0',
  `offerpage` int NOT NULL DEFAULT '1' COMMENT '1 - la offer 1,\r\n2 - la offer 2,\r\n3 - la offer 3,\r\n4 - sa offer 1,\r\n5 - sa offer 2,\r\n6 - sa offer 3,\r\n7 - sa offer 4,\r\n8 - la offer 4,\r\n9 - sa offer 5,\r\n10 - la offer 5',
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `mobile` varchar(256) NOT NULL,
  `emailid` varchar(256) NOT NULL,
  `card_number` varchar(256) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `amount` float(11,2) NOT NULL,
  `paymentid` varchar(50) DEFAULT NULL,
  `isCustomer` int NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  `isActive` int NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  `isDelete` int NOT NULL DEFAULT '0' COMMENT '0=No. 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
CREATE TABLE IF NOT EXISTS `careers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `descriptions` longtext NOT NULL,
  `isActive` int NOT NULL DEFAULT '1',
  `isDelete` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `career_enquiries`
--

DROP TABLE IF EXISTS `career_enquiries`;
CREATE TABLE IF NOT EXISTS `career_enquiries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `applyfor` varchar(255) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `qualifications` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `keyskills` longtext NOT NULL,
  `city` varchar(256) DEFAULT NULL,
  `server_ip` varchar(256) DEFAULT NULL,
  `isDelete` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cashfree_entry`
--

DROP TABLE IF EXISTS `cashfree_entry`;
CREATE TABLE IF NOT EXISTS `cashfree_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entryfor` int NOT NULL DEFAULT '0' COMMENT '1=Customer,2=Channel,11=SelfApply,12=Loan Agent, 3=LA_Offer_1,4=LA_Offer_2,5=LA_Offer_3,6=SA_Offer_1,7=SA_Offer_2,8=SA_Offer_3,9=SA_Offer_4,10=LA_Offer_4,21=SA_Offer_5,22=LA_Offer_5,31=SA_OFFER_6,32=LA_OFFER_6,41=SA_OFFER_7,42=LA_OFFER_7	',
  `userid` int NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `referenceid` varchar(256) DEFAULT NULL,
  `txstatus` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `channel_partners`
--

DROP TABLE IF EXISTS `channel_partners`;
CREATE TABLE IF NOT EXISTS `channel_partners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime DEFAULT NULL,
  `first_name` varchar(155) NOT NULL,
  `last_name` varchar(155) NOT NULL,
  `mobile` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL,
  `password` text NOT NULL,
  `company_code` varchar(99) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `vat_gst_no` varchar(99) DEFAULT NULL,
  `phone` varchar(99) NOT NULL,
  `website` varchar(155) NOT NULL,
  `address` longtext,
  `city` varchar(99) DEFAULT NULL,
  `state` varchar(99) DEFAULT NULL,
  `pincode` varchar(99) DEFAULT NULL,
  `country` varchar(99) NOT NULL DEFAULT 'IN',
  `isActive` tinyint NOT NULL DEFAULT '1' COMMENT '1=active,0=deactive',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0=no, 1=yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cipherpayentry`
--

DROP TABLE IF EXISTS `cipherpayentry`;
CREATE TABLE IF NOT EXISTS `cipherpayentry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entryfor` int NOT NULL COMMENT '1=Customer,2=Channel,11=SelfApply,12=Loan Agent, 3=LA_Offer_1,4=LA_Offer_2,5=LA_Offer_3,6=SA_Offer_1,7=SA_Offer_2,8=SA_Offer_3,9=SA_Offer_4,10=LA_Offer_4',
  `userid` int NOT NULL,
  `orderid` varchar(99) COLLATE utf8mb3_unicode_ci NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `referenceid` varchar(256) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `txstatus` varchar(99) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `paymentmode` varchar(99) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `click_counts`
--

DROP TABLE IF EXISTS `click_counts`;
CREATE TABLE IF NOT EXISTS `click_counts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int NOT NULL,
  `applylink_id` int NOT NULL,
  `counts` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_enquiry`
--

DROP TABLE IF EXISTS `contact_enquiry`;
CREATE TABLE IF NOT EXISTS `contact_enquiry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fullname` varchar(225) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `server_ip` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `criteria_list`
--

DROP TABLE IF EXISTS `criteria_list`;
CREATE TABLE IF NOT EXISTS `criteria_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `criteria` varchar(99) NOT NULL,
  `isDelete` tinyint NOT NULL DEFAULT '0',
  `isActive` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enroll_services`
--

DROP TABLE IF EXISTS `enroll_services`;
CREATE TABLE IF NOT EXISTS `enroll_services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `serviceid` int NOT NULL,
  `purchase_date` date NOT NULL,
  `valid_upto` date NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `paymentid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `serviceid` (`serviceid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fb_ads_entry`
--

DROP TABLE IF EXISTS `fb_ads_entry`;
CREATE TABLE IF NOT EXISTS `fb_ads_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int DEFAULT NULL,
  `fbclid` varchar(299) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_data` longtext COLLATE utf8mb4_unicode_ci,
  `received_data` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fb_ads_entry`
--

INSERT INTO `fb_ads_entry` (`id`, `rec_date`, `userid`, `fbclid`, `send_data`, `received_data`) VALUES
(1, '2026-07-16 17:54:41', 1, NULL, NULL, NULL),
(2, '2026-09-22 17:20:27', 3, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `important_update`
--

DROP TABLE IF EXISTS `important_update`;
CREATE TABLE IF NOT EXISTS `important_update` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tags` varchar(256) NOT NULL,
  `descriptions` longtext NOT NULL,
  `isActive` int NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  `isDelete` int NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `important_update`
--

INSERT INTO `important_update` (`id`, `rec_date`, `tags`, `descriptions`, `isActive`, `isDelete`) VALUES
(1, '2025-02-28 15:58:45', 'hello', '<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:22px\"><strong>Hello Worlds</strong></span></span></p>', 0, 1),
(2, '2025-02-28 17:02:52', 'hello', '<p><span style=\"font-size:22px\"><strong>Hello World</strong></span></p>', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `info_pages`
--

DROP TABLE IF EXISTS `info_pages`;
CREATE TABLE IF NOT EXISTS `info_pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `content` longtext,
  `rec_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `info_pages`
--

INSERT INTO `info_pages` (`id`, `slug`, `content`, `rec_date`, `status`) VALUES
(1, 'privacy-policy', '<p dir=\"ltr\">The privacy of every user of AP Loannwala is important for the company. This Privacy Policy mentions the data and information we collect about you, how we treat it, with whom we share it, and how we preserve and protect it.</p>\r\n\r\n<p dir=\"ltr\">In the regular course of our business through this website, we gather your personal information through several sources, including:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Information from you, such as applications or other sources that include your name, address, marital status, employment, assets and income; and</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Information about you, your accounts, and your holdings and transactions that we receive from you or others, such as account custodians, brokers, other financial services firms, banks, etc.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">We&#39;re also dedicated to protecting the users of our website by addressing potential privacy concerns. Our privacy guidelines apply to all users globally. This policy applies to all information, in whatever form, relating to AP Loannwala&rsquo;s business activities across the world and to all information handled by AP Loannwala relating to other companies and organizations with whom it deals. It also covers all IT and information communications facilities operated by AP Loannwala or on its behalf.</p>\r\n\r\n<p dir=\"ltr\">This Privacy Policy covers the security, information, IT equipment, and use of AP Loannwala, a company incorporated under the laws presently in force in India and having its registered office at Maharastra -&nbsp;India, and its affiliates. It also includes the use of email, internet, voice, and mobile IT equipment. This policy applies to all AP Loannwala Users, Clients, and employees (hereafter referred to as &#39;individuals&#39;).</p>\r\n\r\n<p dir=\"ltr\">Subject to arbitration, only the courts and tribunals of Maharastra, India, shall have exclusive jurisdiction with respect to any suit, action, or any other proceeding arising out of or in relation to the Loan Documents. Nothing contained in this clause shall limit any right of the Lender to commence any legal action or proceedings arising in relation to the Loan or the Loan Documents in any other court, tribunal, or another appropriate forum, competent jurisdiction, and the Borrower and/or the Guarantor hereby consent to that jurisdiction.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>How AP Loannwala manages and protects Your Personal Information?</strong></span></h3>\r\n\r\n<p dir=\"ltr\">AP Loannwala doesn&rsquo;t sell or trade information about current or former clients to third parties. We may disclose your personal information as necessary to:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Effect, administer, or enforce a transaction that you request or authorize;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Process or service a financial product or service that you request or authorize; or</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Maintain or service your account with us or with another entity.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">AP Loannwala may also disclose your personal information and data for everyday business purposes to organizations or firms that provide consulting, technology, or other services for us and agree to maintain its confidentiality; others, such as attorneys, trustees, family members, or others who are authorized to represent you, your estate, or a joint or co-owner of your account; regulatory agencies; or as we are otherwise permitted or required by law or process of law.</p>\r\n\r\n<p dir=\"ltr\">AP Loannwala restricts access to your personal information to our employees and to permitted third parties who need to know that information to provide products or services for us or to provide, process, or maintain any security, account, or investment product, service, or program for you or your benefit. To protect your personal information from unauthorized access and use, we have adopted administrative, technical, and physical security procedures that comply with the Laws in India. These measures include computer safeguards and secured files and buildings.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>What AP Loannwala can do with your personal information:</strong></span></h3>\r\n\r\n<p dir=\"ltr\">We may use your personal information that we collect or that is provided to us for the following reasons:</p>\r\n\r\n<ol>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Considering any application for an account or service;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Carrying out our business functions and activities;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Collecting amounts you owe us, including taking enforcement action;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Exercising our rights and fulfilling our obligations under any agreement with you;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Exercising our rights and fulfilling our obligations for the purposes of complying with all applicable laws, including those relating to money laundering, terrorist financing, bribery, corruption, tax evasion, fraud, and similar; and managing all economic and trade sanction risks;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Generally administering and monitoring services provided to you (or any related entity); and</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Providing you with information about our other services, or the services of selected third parties in which we think you may have an interest, including by post, telephone, and electronic message &ndash; you can opt-out of receiving information about our other services and/or the services of selected third parties by informing us in writing.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>Sharing of Personal Information with Third Parties:</strong></span></h3>\r\n\r\n<p dir=\"ltr\">AP Loannwala does not sell, trade, or otherwise transfer to outside parties your personally identifiable information. This does not include trusted third parties who assist us in operating our website, conducting our business, or servicing you, so long as those parties agree to keep this information confidential. We may also release your information when we believe release is appropriate to comply with the law, enforce our site policies, or protect our or others&#39; rights, property, or safety. However, non-personally identifiable visitor information may be provided to other parties for marketing, advertising, or other uses.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>Security and Confidentiality:</strong></span></h3>\r\n\r\n<p dir=\"ltr\">The protection and security of your personal information are important to us. We generally follow industry-standard information security tools and measures, as well as internal procedures and strict guidelines, to prevent information submitted to us, both during transmission and once we receive it, from misuse and data leakage. No method of transmission over the internet or method of electronic storage is 100% secure, however. Therefore, while we strive to use commercially acceptable means to protect your personal information, which considerably reduces the risks of data misuse, we cannot guarantee its absolute security. To notify the company about any security vulnerability or potential data breach, please contact us at info@wisefinai.com, and we will take the appropriate measures to address such an incident, as deemed necessary.</p>\r\n\r\n<p dir=\"ltr\">Our employees can access the information on a &quot;need-to-know&quot; basis and are subject to confidentiality obligations.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>DATA ACCURACY</strong></span></h3>\r\n\r\n<p dir=\"ltr\">Personal data must be accurate and, where necessary, kept up-to-date. It must be corrected or deleted without delay when inaccurate. It is advisable that you ensure that the personal data we use and hold is accurate, complete, kept up-to-date, and relevant to the purpose for which we collected it. You must check the accuracy of any personal data at the point of collection and at regular intervals afterwards. You must take all reasonable steps to destroy or amend inaccurate or out-of-date personal data.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>LIMIT OF LIABILITY</strong></span></h3>\r\n\r\n<p dir=\"ltr\">We shall not be liable for any confusion caused as a result of any of your actions or omissions of any action or anything as a result of your viewing, reading, or listening to any content. Although we will do our best to provide constant, uninterrupted access to our website, we accept no responsibility or liability for any interruption or delay.<br />\r\nIn no event will our total liability to you for all damages arising from your use of the service or information, materials, or products included on or otherwise made available to you through the service exceed the amount you paid for the service related to your claim.</p>\r\n\r\n<p dir=\"ltr\">We have no liability for any loss, damage, or misappropriation of your files under any circumstances or for any consequences related to changes, restrictions, suspension, or termination of your service or the agreement. These liabilities shall apply to you even if their remedies shall fail their essential purpose.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>USAGE OF ADVERTISING ID</strong></span></h3>\r\n\r\n<p dir=\"ltr\">When you are using our application that incorporates our services, we may also automatically record your Google and/or any other Advertising ID (if you are using an Android device) or your Advertising Identifier (IDFA - if you are using an IOS device; together with the Google and/or any other Advertising ID-&quot;Mobile Advertising IDs&quot;), for advertising or analytics purposes. The said Advertising ID is an anonymous identifier, provided by Google. If your device has an Advertising ID, we may collect and use it for advertising and user analytics purposes. If your device does not have an Advertising ID, we may use other persistent identifiers. The information collected may also be stored on your device. You can reset your mobile Advertising ID or opt-out of receiving targeted ads through your mobile Advertising IDs which are provided in our settings.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>COMPLIANCE &amp; COOPERATION WITH REGULATORS</strong></span></h3>\r\n\r\n<p dir=\"ltr\">We regularly review this Privacy Policy and make sure that we process your personal information in ways that comply with regulations currently in force in India. We firmly comply with legal frameworks, including data protection laws relating to the transfer of data.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>CONSENT</strong></span></h3>\r\n\r\n<p dir=\"ltr\">By using our website, you consent to our website&#39;s Privacy Policy. The usage of the website shall be construed as an acceptance of the Privacy Policy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>GRIEVANCES</strong></span></h3>\r\n\r\n<p dir=\"ltr\">For any complaints and/or inquiries, you can send us formal written inquiries or complaints at info@wisefinai.com. All inquiries and/or complaints shall be examined and will be resolved expeditiously. Our team of experts will respond by contacting the person who made such inquiries and/or complaints. We work with the appropriate regulatory authorities, including local data protection authorities, to resolve any complaints regarding the transfer of your data that we cannot resolve with you directly.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>MODIFICATION OF THE POLICY</strong></span></h3>\r\n\r\n<p dir=\"ltr\">We reserve the right to modify this Privacy Policy at our own independent decision at any time. If the changes are significant, the Company shall spare no efforts to apprise its clientele and provide a prominent notice (including, for certain services, email notification of Privacy Policy changes). It is pertinent to remember that it shall be the Clients&#39; responsibility to read the Policy as amended every once in a while.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:20px\"><strong>USAGE OF COOKIES/COOKIES POLICY</strong></span></h3>\r\n\r\n<p dir=\"ltr\">Cookies are small files that a site or its service provider transfers to your computer&#39;s hard drive through your web browser with your permission, which enables the site or service provider&#39;s systems to recognize your browser and capture and remember certain information. We use cookies to help us understand and save your preferences for future visits, keep track of advertisements, and compile aggregate data about site traffic and site interaction so that we can offer better site experiences and tools in the future.</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:1339px; position:absolute; top:252.75px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '2024-01-26 12:27:05', 1);
INSERT INTO `info_pages` (`id`, `slug`, `content`, `rec_date`, `status`) VALUES
(2, 'terms-conditions', '<p dir=\"ltr\">In these Terms &amp; Conditions, the words such as &ldquo;we&rdquo;, &ldquo;our&rdquo;, &ldquo;company&rdquo;, and &ldquo;us&rdquo; refer to AP Loannwala and its undertaken system. And the words such as &ldquo;you&rdquo;, &ldquo;your&rdquo; refer to AP Loannwala users, customers, etc.</p>\r\n\r\n<p dir=\"ltr\">Here are the terms and conditions for Customers, Employees, and every user of our website - wisefinai.com. So, the terms and conditions are applied as per your role. You must read all the below-mentioned Terms &amp; Conditions carefully.</p>\r\n\r\n<p dir=\"ltr\">The Company wishes to offer the services under the terms and conditions set forth and the user/customer wishes to be associated unconditionally with these terms and conditions.<br />\r\nTherefore, in consideration of the agreements contained in this, the parties, intending to be legally bound, agree to the correctness and authenticity of the following details given to the company:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Information from you, such as applications or other forms (which include your name, address, marital status, employment, assets and income); and</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Information about you, your accounts, and your holdings and transactions that we receive from you or others, such as account custodians, brokers, and other financial services firms, banks, etc.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">If the company by any source finds out anyone bad-mouthing or defaming the company&#39;s reputation or company&#39;s members then strict legal action will be taken against the individual or group.<br />\r\nWe&#39;re also serious about protecting our users by addressing potential privacy concerns. Our terms and condition guidelines apply to all users across the world. These terms and conditions apply to all information, in whatever form, relating to AP Loannwala&#39;s business activities worldwide, and to all information handled by AP Loannwala, relating to other organizations with whom it deals. It also covers all IT and information communications facilities operated by AP Loannwala or on its behalf.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:18px\"><strong>SUBSCRIPTION TERMS AND CONDITIONS:</strong></span></h3>\r\n\r\n<ol>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The payment of subscription fees is refundable only in accordance with the company&#39;s Cancellation &amp; Refund Policy.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">AP Loannwala subscription is not transferable and is only valid up to its date of expiry (valid as per subscription) and the subscription may not be used by any person other than the purchaser.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;Renewal terms and conditions are at the discretion of AP Loannwala.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The subscription can only be used on/for our website.</p>\r\n	</li>\r\n</ol>\r\n\r\n<h3 dir=\"ltr\">&nbsp;</h3>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:18px\"><strong>CUSTOMER TERMS AND CONDITIONS:</strong></span></h3>\r\n\r\n<ol>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The payment of Subscription fees is refundable only in accordance with the company&#39;s Cancellation &amp; Refund Policy.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company only takes the cost of the Subscription. No other tip of service is charged.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Customers can use the Subscription only for loan purposes with given benefits. Also, buying a Subscription lets you apply for a loan and it doesn&rsquo;t guarantee loan approval as the final loan approval depends on the banks and the customer profile. If the loan is rejected, you can still avail other benefits of the Subscription.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If a customer is viewing any advertisement/promotional content of the company and then approaching the company thinking that he/she will get the loan approval based on the advertisement, then it must be noted that a loan application will only be submitted once the customer buys AP Loannwala&rsquo;s Subscription. Even after buying the Subscription, the final loan approval depends on the bank(s) and customer profile. If the customer&rsquo;s profile doesn&rsquo;t match loan eligibility criteria, he/she won&rsquo;t be able to get a loan. Still, they can avail other benefits of the Subscription.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Subscription can be used only by the persons who have purchased it and not by any other person(s), source or third party.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If a customer reference does payment through the customer&#39;s own referral link which is provided by the company and if that shows in the customer&#39;s portal then the only company will give the reference payout of that customer.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If the customer loan is approved in our company and he/she denies that loan approval then also Subscription payment would not be refundable.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The documents, cheques, and OTP that the company&#39;s employee asks the customer are for the processing of the loan only and the company never misuses them. Just for security, after completing the loan process, the customer can go to the concerned bank and cancel their cheque. The company is not responsible if any problems/disputes arise in the future.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If you do not give the OTP, documents, or document query for verification to the company&#39;s employee for the loan process, then your file will be rejected. (According to the criteria, if your file matches without OTP, your loan will be processed).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If our company&#39;s executive asks you for any payment transaction OTP, do not provide it. If the customer pays any charges other than the charge of the Subscription, the company won&rsquo;t be responsible for the same.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If a customer has any queries regarding the loan process then he/she would have to contact the department where their files are in process.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">We will verify your documents in multiple banks; so whatever documents are submitted by customers in our company that will match with any bank criteria, in that bank only we will proceed with the loan process. For example, if your file will match in 2 banks then our company&#39;s login department will login your document only in that 2 banks. The verification is done by the company&#39;s employee and there is no proof available for the same.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The document will be verified by the company in multiple banks. If your documents match the criteria of the bank, then the login process will be done in that bank. If your documents do not match the criteria of a bank, the company will give you a solution. You can take the solution and reapply after a certain period (as per Subscription) - and this will be shown on the customer portal.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">It is not fixed that the customer file will be logged in only in the banks listed on the company website. It may be logged in/verified in other banks also, depending on the customer file.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Our company is not taking extra charges other than Subscription charges. If any third-party charges you then our company is not responsible for that.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">There are no processing or file charges for customer loan approval. There is only one charge and that&#39;s only for the Subscription - validity as per Subscription.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Our company will log in customer files as per their requirements. (Example: If customer requirement is INR 1 lakh and if some bank criteria is up to INR 50,000 then we will not log in their file in that bank).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Wherever the customer file is logged in by the company, these details will not be given to any customer in written or digital form.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Loan offers and the pre-approval loans process depend only on the bank&#39;s rules and that type of loan is given only on customer behaviour. So, there is so much difference between that type of process and the company&#39;s process. If that loan is rejected in our company but gets approved by another company/source then the customer can&#39;t blame our company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Loan approval depends on your profile so if your documents are perfect and as per the bank criteria then you will get a loan through our company</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The loan information is only given to the person who has applied for the loan.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">During the loan processing time, if any customer would not be in contact with us for 3 days, then that file will be rejected by our company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If your file is rejected in our company, then the customer has to make sure that they have to re-submit their documents, with the implemented company-suggested solution, in our company after a certain period (as per Subscription).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company is not responsible if the customer loan is rejected by any queries.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If the customer will apply for the first time but his/her loan is rejected in our company then the company will give them a reason and solution for that. So at re-applying time if the customer will not resubmit a file with the solution implemented then the file will be again rejected in our company for the same reason. Still, the final loan approval will depend on the customer profile and the bank&#39;s criteria and rules &amp; regulations.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company will provide only the reason for rejection to the customer and it would not be provided in the form of hard or soft copy - it will only be shown in the customer portal. Some banks only provide general reasons, they don&#39;t give us any specific reason so the customer should not complain about that.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The customer has to give correct information about their CIBIL SCORE and PROFILE. If the customer gives wrong information, then the company will not be responsible for loan rejection.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company will not be providing any CIBIL REPORT in digital or hard copy to any customer in any situation.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Bank charges are applicable as per banks&#39; rules and regulations.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company will take legal action against the customer who submitted fake documents. And the company won&rsquo;t take any responsibility for the loan process in this case.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">After the customer&rsquo;s file is logged in, the customer has to contact only the login department and coordinate with them &ndash; not any telecaller or other department of the company. The further process has to be done according to the login department.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">During the loan process if the rules of any bank change, then we have to follow those new rules.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The customer has to give their registered phone number for being contacted by the login department.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">During the loan processing time, if the company gets any queries and it is not solving that in the given time, then the company has the authority to take more time to address the query. So, the customer must not complain about the same.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If the customer wants to reapply in our company after file rejection or approval, then he/she has to re-submit their documents in the customer portal.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">When you are applying for a loan on our website, we are showing you only your Eligibility for the loan. So whatever details you enter on the website are accepted by software only, and that only shows your pre-approval and not your final loan approval. Approval only depends on your documents and the banks&#39; rules and regulations. We are not giving you any guarantee for the final loan approval.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">All the detailed criteria, terms, and information behind any of the company&rsquo;s concise promotional content (social media ads, banners, SMS, advertisements, emails, etc.) are stated in the Terms &amp; Conditions and Privacy Policy sections of the website. Any concerned person (customer, employee, etc.) must check and accept all the rules and regulations before availing any of the company&rsquo;s services. If any person has confusion, they can call on the company&rsquo;s customer care number to gain clarity before availing company&rsquo;s services.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The customer&#39;s payment is executed by third-party payment sources. So whenever payment would be received by the company then only a Subscription will be activated for the customer. If a customer&#39;s payment would be debited from his/her account but we don&#39;t receive any payment in the company&#39;s account then the company will not be responsible for that.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">For any reference customer&#39;s payout, their account verification is compulsory. After verification, if the payout amount is debited from the company&rsquo;s account and if it does not credit/reflect in the reference customer&rsquo;s account &ndash; the company won&rsquo;t be responsible for this issue.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Our company is a private limited company and we are tied up with banks and corporate DSA. We are providing loans through banks only.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Multiple partnered banks&#39; logos are shown on our website and our promotional content across many mediums &ndash; these are shown only for our company&#39;s marketing purpose. It might be possible that certain banks, whose logos are shown on our website/promotional content, are not partnered with our company. Also, these should not be assumed as any bank&#39;s advertisement.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If anyone takes any legal action against the company then only our legal advisor would be dealing with that and Maharastra, India, will only remain the junction for any legal procedure. No one would be able to contact any employee or director of our company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If any person has a doubt/question regarding any of the company&rsquo;s terms and conditions, they can contact the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The eligibility age for buying a Subscription is 18 - 62 years. The persons in this age bracket can avail benefits of the Subscription.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">For the Reference Customers who have given customer referrals to the company, it would be compulsory for them to submit their Payout Documents to the company within 30 days. If not submitted, all the payouts of the Reference Customer will be automatically cancelled. To get the cancelled payout, you can contact the company and discuss it.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Every reference payout will have a deduction of 5% TDS.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">For the loan process, the company will only coordinate with the person who has purchased the Subscription and has an ongoing loan process &ndash; the company won&rsquo;t coordinate with any third party.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Every bank payout will have tax deductions as per the bank&rsquo;s rules and regulations.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The Company&#39;s authorized person can change any rules and regulations at any time; the concerned person must be regularly updated with the company&rsquo;s terms and conditions and has to accept them unconditionally.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company will provide the appropriate loan services but the responsibility of customer handling will be of the reference customer.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If any bank&#39;s rules or company&#39;s rules are changing during the processing time of the loan then the customer has to follow those new rules.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The office holidays and bank holidays will not be counted as working days/business days. The company&rsquo;s office work will be done on working days only.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Our promotional content may communicate messages like &#39;Get Personal Loan in 30 mins&#39; or &#39;Get Rs.5,00,000 in 5 mins&#39; on our company&rsquo;s social media, blogs/articles, ads, websites, emails, SMS, or any other medium &ndash; it must be carefully noted that these messages are only meant for marketing and promotional purposes. All the numerical values that depict time/number of steps/number of clicks &ndash; are for marketing and promotional purposes only. The final loan approval and process depend on the customer profile and the bank/NBFCs&rsquo; rules, regulations and criteria. If you have any sort of doubt before starting the process, you can call our customer care number (10 am to 5 pm &ndash; Monday to Saturday).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">As per the details/information entered by the user, even if the actual pre-approved amount is lesser than 2 Lakhs, the pre-approved amount shown on the website will be Rs.2 Lakhs (minimum). And, even if the actual pre-approved amount is more than 8.5 Lakhs, the pre-approved amount shown on the website will be Rs.8.5 Lakhs (maximum). The pre-approved amount/pre-approved loan offers are tentative &ndash; the final loan approval, loan sanction, and disbursement depend on the customer profile and the NBFCs&rsquo; rules and regulations.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The first login of the customer&rsquo;s file will be handled and executed by the company. To avail the reapplying option, the customer will have to perform the self-login(s).</p>\r\n	</li>\r\n</ol>\r\n\r\n<h3 dir=\"ltr\">&nbsp;</h3>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:18px\"><strong>REFERENCE TERMS AND CONDITIONS:</strong></span></h3>\r\n\r\n<ol>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Reference payout would be given to reference customers as per rules and regulations of our company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Our company will give payout only on Subscription; it does not depend on the reference customer&#39;s loan approval or rejection.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Whether the customer loan will be approved or not depends on the customer profile and the company does not give any guarantee for that.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If customers are giving a reference in our company for loan purposes, for that we have some criteria. The customer has to give a reference based on that criteria. The company is not giving you any type of guarantee for the loan approval in any situation at any cost so customers who give a reference have to agree with the decision of that file&#39;s login department.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company will take legal action against the reference partner/customer who submitted fake documents. And the company won&rsquo;t take any responsibility for the loan process in this case.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;The Customer&#39;s terms and conditions are also applicable to the reference person&#39;s customers.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Reference customer&#39;s payment is done through third-party payment sources. So whenever payment would be received by the company then only the Subscription will be activated. If the customer&#39;s payment is debited from his/her account but the company doesn&#39;t receive any payment in the company&#39;s account then the company will not be responsible for any queries.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">During loan offers, if any reference person will do the online loan process then the company will give the payout up to 35% per Subscription to the reference person. But before that, invoice generation is most important for any payout process.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If the customer of reference will do an online process then the customer&#39;s payout will be given to the referral partner. But during processing time, if the company would refund that amount to the customer for any reason, then that customer&#39;s payout will be cut out from the reference person&#39;s next payout.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;Whatever documents are submitted by a reference person, they will be secure in our company. If documents will be misused by any other sources in future then our company is not responsible for that.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">For the Reference Customers who have given customer referrals to the company, it would be compulsory for them to submit their Payout Documents to the company within 30 days. If not submitted, all the payouts of the Reference Customer will be automatically cancelled. To get the cancelled payout, you can contact the company and discuss it.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If anyone takes any legal action against the company then only our legal advisor would be dealing with that, and Maharastra, India, remains the only junction for any legal procedure. No one can contact any employee or director of our company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If any person has a doubt/question regarding any of the company&rsquo;s terms and conditions, they can contact the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;Every reference payout will have a deduction of 5% TDS.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The office holidays and bank holidays will not be counted as working days/business days. The company&rsquo;s office work will be done on working days only.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The Company will have no responsibility for the promotions conducted and undertaken by the Customer Reference. The Customer Reference agrees that the promotions done by them are at their own risk, and the Customer Reference cannot hold the Company responsible for any sort of losses faced due to the promotions.</p>\r\n	</li>\r\n</ol>\r\n\r\n<h3 dir=\"ltr\">&nbsp;</h3>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:18px\"><strong>GENERAL TERMS AND CONDITIONS:</strong></span></h3>\r\n\r\n<ol>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If the login department fails to solve the customer queries with accuracy, dedication and responsibility, then the login department agency will be cancelled by the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The Customer&#39;s loan process will take more days due to any festival.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If anyone has GST then they have to add the GST number in their portal so that the company can provide a GST Return to them. If you haven&rsquo;t received your GST Return &ndash; you can raise a request or call on company&rsquo;s customer care number between 10 AM to 5 PM (Monday to Saturday &ndash; only business days).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The Company is using Blogs for their advertising, so that content could be of the third party, so the company doesn&#39;t take guarantee of the information to be correct or incorrect.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If customers, employees, any other person, or any other party has a problem with the company then they have to inform that problem to our company through notice; so, we can try to give you a solution of that but after that, any of them want to take a legal action then they have to inform the company through notice. Only then, the legal process will be started.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If customers, employees, any other person, any other third party has a problem/dispute/misunderstanding with the company, the right to take the final decision over the concerned issue is reserved with the company and the concerned person will have to accept the solution provided by the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The documents, cheques, and OTP that the company&#39;s employee asks the customer are for the processing of the loan, the company is not responsible if any problems/disputes arise in the future.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">During any process on the website, if there is any kind of mistake that happens due to the software or website technical problems, the final decision on such disputes can only be taken by the company and it has to be accepted by anyone concerned.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The Company&#39;s authorized person can change any rules and regulations at any time; the concerned person must be regularly updated with the company&rsquo;s terms and conditions and has to accept them unconditionally.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">All the commitments made by the company&rsquo;s employees (any employee/person from the company), telecallers, or salespersons, etc. should be cross-checked by any concerned person (customer/any other person) from the Terms &amp; Conditions section of wisefinai.com&nbsp;before availing any of the company&rsquo;s services. Only the rules and regulations stated on the company website will be considered official.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">All the detailed criteria, terms, and information behind any of the company&rsquo;s concise promotional content (social media ads, banners, SMS, advertisements, emails, etc.) are stated in the Terms &amp; Conditions and Privacy Policy sections of the website. Any concerned person (customer, employee, etc.) must check and accept all the rules and regulations before availing any of the company&rsquo;s services. If any person has confusion, they can call on the company&rsquo;s customer care number to gain clarity before availing company&rsquo;s services.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If any Customer Referral&rsquo;s customer gets a refund (due to any dispute like payment gateway problem or any other issue) then the referral payout will not be provided (if provided, it would be deducted from the next payout of the customer referral).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">While generating the payout for Customer Referrals, the company uses a third-party payment gateway. So, if the payout is stuck and put on hold due to any payment gateway issue (or any other issue), then the payout would be delayed and all the terms and conditions of the third-party payment gateway would be applied. In such cases, the payout will be released only when the third-party payment gateway releases the stuck payment. In case of a payout dispute with any bank, the bank&rsquo;s criteria will be applied and the payout will be released only when the bank approves the payment.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If there is any dispute that arises between any concerned user (customer, customer referral, etc.) and the company, their account will be disabled immediately by the company. In such a case, the user would be needed to contact the company for any query.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;All of the promotional content put and shared by the company, either on its website or any platform, is only for advertisement purposes. Any person should not assume it as the final loan approval or details of the loan. The final loan approval and specifics of the loan depend on the rules and regulations of various banks (or the concerned bank) and the customer profile. Every customer, or any other user must accept this clause and consider the bank&rsquo;s loan processing time only.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The loan-related figures, rates, and information used in the promotional content of the company are general and for promotional purposes. The final nature and specifics of the loan in terms of the loan amount, interest rate, repayment tenure, loan processing fees, loan insurance, etc., depends solely on the customer profile and the rules and regulations stated by the concerned bank. The final loan details depend on the criteria set by the concerned bank(s).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">AP Loannwala&#39;s company name, logo, content, business concept, software and system, pattern, website structure and design, and business process and offers are copyrighted with the company. If any individual or organization uses/copies any of the above-mentioned by even 1%, legal action may be taken against them.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If any person (customer, employee, etc.) is involved in any of the company&#39;s processes then the company is authorized to record the phone calls with that person.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If any customer applies for a loan in our company and if any other external person/organization commits fraud with that customer in terms of taking money from you or in any other way then, it will not be the company&rsquo;s responsibility for any kind of loss faced by the customer.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Whatever loan offer is given to the customer is according to the customer profile. The customer will have to compulsorily accept the loan offer &ndash; he/she cannot deny the loan offer.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company has full authority to use the customer&rsquo;s information for purposes such as testimonials, advertisements, marketing, SMS, etc. The customer agrees that regulations of Do Not Disturb(DND)/National Do Not Call(NDNC) won&rsquo;t be applied in such practices.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If any person (user, customer, etc.) visits our website and indulges in any activity &ndash; like clicking a button, link, filling forms, or any other activity on the website, it will clearly mean and express that the person agrees to and acknowledges all terms &amp; conditions, rules &amp; regulations, and policies of the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">After the loan approval, the bank charges will be applied as per the bank&rsquo;s rules and regulations.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;No customer can contact the bank&rsquo;s employees to inquire about/get any information on the loan file processes.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The customer, whose loan has been approved, must read and understand the bank agreement and the bank&rsquo;s terms and conditions carefully. After the loan process is done, the company can&rsquo;t be held responsible or liable for anything.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The company will take legal action against the customer, reference customer, or any other person who submitted fake documents. And the company won&#39;t take any responsibility for the loan process in this case.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;Multiple partnered banks&#39; logos are shown on our website and our promotional content across many mediums &ndash; these are shown only for our company&#39;s marketing purpose. It might be possible that certain banks, whose logos are shown on our website/promotional content, are not partnered with our company. Also, these should not be assumed as any bank&#39;s advertisement.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If anyone takes any legal action against the company then only our legal advisor would be dealing with that and&nbsp; Maharastra, India, will only remain the junction for any legal procedure. No one would be able to contact any employee or director of our company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Any wrong/fake commitment or vocal statement given by the company&rsquo;s employees, etc. would be considered invalid. Only the solutions or solution-related vocal statements would be considered valid. All the company&rsquo;s Terms &amp; Conditions, Privacy Policy, Disclaimer, all other rules will be final and have to be followed.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If any person has a doubt/question regarding any of the company&rsquo;s terms and conditions, they can contact the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;The office holidays and bank holidays will not be counted as working days/business days. The company&rsquo;s office work will be done on working days only.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Loan processing time might get delayed because of any public holiday, technical problems, customer issues, etc.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The Company will not be providing any proof for rejection in hard or soft copy.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">It might be possible that the content/figures/information shown on our website are not updated. So, to get the exact information regarding any of our website&rsquo;s content, Terms &amp; Conditions, Privacy Policy, Disclaimer, etc., you can call on our customer care number.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;After the purchase of the Subscription, the Company Executive will call the concerned person within 24-48 hours (it could be delayed due to any reason) for the loan process or partner process. If the concerned person doesn&rsquo;t get a call, they can call on the company&rsquo;s customer care number.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If the login process is going on and there has been no response from the login department, then the customer can call on the company&rsquo;s customer care number.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The content and any process on the website can be changed or modified at any instance. So, the older version of the content and process won&rsquo;t be functional, valid, or a subject of argument for any person &ndash; and the customers, users, etc. have to stay timely updated and accept all the changes unconditionally. Only the current content and process of the website will be considered valid.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;By accessing our website, you affirm your age as 18 years or more. If you&rsquo;re someone below 18 years, we advise you not to access our website or the services</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;Any processes regarding the loan might get delayed due to public holidays, technical problems/software issues, etc.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;In case the update email/message regarding the processes of loan is not received by the customer due to a delay because of technical problems, software issues, or any other issue &ndash; they can call on the company&rsquo;s customer care between 10 AM to 5 PM (Monday to Saturday &ndash; only business days).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;In case the user, customer, any other person, or organization has a query/problem/issue or wants to raise a dispute with the company &ndash; they can either raise a request ticket or call on the company&rsquo;s customer care number between 10 AM to 5 PM (Monday to Saturday &ndash; only business days).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Due to a software/system issue, it might happen that the dates mentioned in the Loan Status are late by 3-4 days.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">To get the TDS Return, the reference customer has to submit all the details/documents asked in their portal. Note: The TDS Return will be given starting from the financial year in which all the details/documents are submitted. The TDS Return won&rsquo;t be provided for the financial year(s) that are prior to the financial year in which the details/documents were submitted.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The general criteria to apply for a personal loan by a salaried individual are &ndash; Min. Age: 21 years; Min. Salary: Rs.15,000/month (credited in the bank account); Salary Slips available; and Job Stability proof available. Final loan approval completely depends on the customer profile and the bank&rsquo;s rules and criteria.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;The general criteria to apply for a personal loan by a self-employed individual are &ndash; Min. Age: 21 years; IT Returns available (min. 1 year); Business Stability proof available; and Current Account in a bank. Final loan approval completely depends on the customer profile and the bank&rsquo;s rules and criteria.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The general criteria to apply for a business loan by a small business person are &ndash; Min. Age: 21 years; IT Returns available (min. 1 year); and Business Stability proof available (min. 1 year). Final loan approval completely depends on the customer profile and the bank&rsquo;s rules and criteria.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The general criteria to apply for a business loan by an audited report business person are &ndash; Min. Age: 21 years; Min. Rs.1 Crore+ Yearly Turnover; and Min. 2 Years Audited Report. Final loan approval completely depends on the customer profile and the bank&rsquo;s rules and criteria.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;The eligible age for buying a Subscription is 18 - 62 years. The persons in this age bracket can avail benefits of the Subscription offered by the company. The company only offers Subscription and provides its benefits to the customers. The final loan approval depends on the customer profile and the bank&rsquo;s rules and criteria.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">For the Reference Customers who have given customer referrals to the company, it would be compulsory for them to submit their Payout Documents to the company within 30 days. If not submitted, all the payouts of the Reference Customers will be automatically cancelled. To get the cancelled payout, you can contact the company and discuss it.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;Any information/flow/system regarding our website shown in the videos posted on social media (or any platform) may be inaccurate, outdated, or different from our actual website. Only the most updated version of the website, terms &amp; conditions, and other policies shall be valid.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The banks&rsquo; logos used in our ads, social media posts, blogs, emails, or any other medium is for promotional purposes only. The process will be done in that bank only under whose criteria the customer profile gets matched. The final loan approval and final loan process completely depend on the customer profile and the bank&rsquo;s criteria and rules and regulations.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The banks&rsquo; logos shown on our website and the pre-approved offer displayed on our website are tentative only. The process will be done in that bank only under whose criteria the customer profile gets matched. The final loan approval and final loan process completely depend on the customer profile and the bank&rsquo;s criteria and rules and regulations.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">By purchasing the company&rsquo;s Subscription, the customer is applying to get the company&rsquo;s services. All the benefits of the Subscription will be given to the customer by the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If any customer data &amp; information, KYC documents, or OTP is misused in future by any third-party, our company and its directors, employees, or any individuals associated with the company cannot be held responsible for the same in any matter whatsoever including any loss, harm, or damage due to the usage of information from the portal. Customers are advised to bring in their own discretion in such matters. The information provided on the website is of financial nature. It is a mutual understanding that customers association with the website will be at the customer&#39;s will, preference and risk.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If any customer&rsquo;s documents are found to be fraud by the bank/financial institution or there&rsquo;s any sort of an issue with any customer&rsquo;s repayment of the loan to the banks/financial institution &ndash; then these matters have to be solely between the customer and the bank/financial institution. Our company and its directors, employees, or any other individual associated with the company cannot be held responsible in such cases. If the customer documents are found to be fake and fraud and are used anywhere for any purpose, the company cannot be held responsible for the same.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If any third-party gets a loan approved on someone else&rsquo;s identity and documents, then our company and its directors, employees, or any other individual associated with the company cannot be held responsible.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">If any of the company&rsquo;s customers or any third-party wants a legal course, action and proceedings with the company, then only the company&rsquo;s legal team can be involved. There will absolutely be no involvement of the company&rsquo;s directors, any other individual associated with the company, or employees in any legal proceeding. For any legal action or proceeding involving our company, Maharastra, India, shall remain the only jurisdiction.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">TDS will be given only to the ones whose referral payout has been generated. If your TDS is deducted, you can contact your CA. If your TDS has been deducted and it&rsquo;s not showing, then you can contact the company&rsquo;s customer care number between 10 AM to 5 PM &ndash; Monday to Saturday (only business days).</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;If any person enters incorrect information and starts the loan process on our website, and if this leads to any sort of fraud in future, the company, its directors, employees, any other individual associated with the company cannot be held responsible for the same.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The pre-approved loan offers shown are from those banks/NBFCs that have eligibility criteria to which the customer&rsquo;s profile matches (profile evaluated as per the information entered by the customer). These pre-approved loan offers are tentative only &ndash; the final loan approval, loan sanction, and disbursement depend on the NBFC(s) and their rules and regulations. The company will only log in the customer&rsquo;s file in those NBFCs with which the company has tie-ups/partnerships/collaborations and where the customer&rsquo;s profile matches the NBFC eligibility criteria.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Our company&rsquo;s services are strictly for the residents of India only &ndash; not for the non-residents. If any non-resident purchases our Subscription, they can request for a refund as per the company&rsquo;s Cancellation &amp; Refund Policy.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">In case a customer has mistakenly made more than a single payment, the customer will be eligible to get a refund. The customer will have to request a refund within 48 hours of the payment through the Raising A Request section of the website or by calling on the company&rsquo;s registered contact number.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">In case a customer has bought Subscriptions from multiple companies that belong to our group of companies, the customer will be eligible to get a refund. The customer will have to request a refund within 48 hours of the payment through the Raising A Request section of the website or by calling on the company&rsquo;s registered contact number.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:18px\"><strong>PRE-APPROVAL LOAN OFFER TERMS AND CONDITIONS:</strong></span></h3>\r\n\r\n<p dir=\"ltr\">The Pre-Approved Loan Offer and the amount mentioned in it are solely shown based on the software calculation done on Monthly Income and Current Monthly EMI entered by the person. This &quot;Pre-Approved Loan Offer&quot; is tentative and not the final loan approval (this is already mentioned on the Pre-Approved loan Offer page) &ndash; as the final loan approval is given by the bank only; based on the bank&rsquo;s rules and regulations and the customer profile. And this is clearly stated in the company&rsquo;s Terms &amp; Conditions which is agreed by the person before registration.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Here&#39;s an example to know how the &lsquo;Pre-Approved Loan Offer&rsquo; is shown:</p>\r\n\r\n<p dir=\"ltr\"><br />\r\nConsider that a person (named &lsquo;Rajesh&rsquo;) enters the following details in our website:</p>\r\n\r\n<p dir=\"ltr\"><br />\r\nMonthly Income: Rs.1,00,000<br />\r\nCurrent Monthly EMI: Rs.30,000</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Based on these details, Rajesh is left with Rs.70,000 in hand (deducting current EMI) every month. So, according to the general rules of the banks, the EMI of 50% of the in-hand amount can be approved. So, the loan amount that allows a maximum of Rs.35,000 (70,000/2) EMI can be approved. And based on the EMI and rate of interest (11% tentatively), the eligible amount is shown in the Pre-Approved Loan Offer. And based on this Rs.1903/lakh EMI is shown.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:18px\"><strong>CANDIDATE TERMS AND CONDITIONS</strong></span></h3>\r\n\r\n<ol>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The interview time is fixed.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The interview can&#39;t be taken any other time than the time decided by the company.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&nbsp;The Company can ask any questions in the interview.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">The candidate will have to appear for the interview as many times as the company asks.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">A resume (Xerox) will be mandatory for the interview. The resume will not be returned. There will be no misuse of the resume.</p>\r\n	</li>\r\n</ol>\r\n\r\n<h3 dir=\"ltr\">&nbsp;</h3>\r\n\r\n<h3 dir=\"ltr\"><span style=\"font-size:18px\"><strong>USAGE OF COOKIES / COOKIES POLICY</strong></span></h3>\r\n\r\n<p dir=\"ltr\">Cookies are small files that a site or its service provider transfers to your computer&#39;s hard drive through your web browser with your permission which enables the site or service provider&#39;s systems to recognize your browser and capture and remember certain information. We use cookies to help us understand and save your preferences for future visits, keep track of advertisements and compile aggregate data about site traffic and site interaction so that we can offer better site experiences and tools in the future.</p>\r\n\r\n<p dir=\"ltr\">The user, customer, or any other person accessing our website clearly expresses and agrees that they have fully read and understood the Terms &amp; Conditions and Privacy Policy of AP Loannwala &ndash; and they accept them unconditionally.</p>', '2024-01-26 12:27:05', 1);
INSERT INTO `info_pages` (`id`, `slug`, `content`, `rec_date`, `status`) VALUES
(3, 'disclaimer', '<p dir=\"ltr\">AP Loannwala and its customers and employees use and present www.wisefinai.com (the &ldquo;Website&rdquo;) for personal and informational purposes only. In addition, we further expressly disclaim any warranties or representations (expressed or implied) in respect of quality, suitability, accuracy, reliability, completeness, timeliness, performance for a particular purpose, or legality of the services listed or displayed or transacted or the content on the website. You must not perceive and construe any such information or other material as legal, tax, investment, financial, or other advice. You completely acknowledge and undertake that you are accessing the services on the AP Loannwala&rsquo;s website and transacting at your own risk only and are using your best and most prudent judgement before entering into and making any transactions through the website. You alone assume the sole responsibility of evaluating the merits and risks associated with the use of any information or other Content contained on the AP Loannwala&rsquo;s Website before making any decisions based on such information or other Content.</p>\r\n\r\n<p dir=\"ltr\">Nothing contained on our Website constitutes a solicitation, recommendation, endorsement, or offer by AP Loannwala to buy or sell any securities or other financial instruments in this or in any other jurisdiction in which such solicitation or offer would be unlawful under the securities laws of such jurisdiction. You further acknowledge that at no time shall any right, title, or interest in the services sold through or displayed on the website vest with AP Loannwala, nor shall AP Loannwala have any obligations or liabilities in respect of any transactions on the website.</p>\r\n\r\n<p dir=\"ltr\">After you enter your details on our website for any purpose, the company takes no responsibility in case you come across instances of data misusage of any form.</p>', '2024-01-26 12:27:54', 1),
(4, 'refund-policy', '<p dir=\"ltr\"><span style=\"font-size:20px\"><strong>We believe in putting customer satisfaction first!</strong></span><br />\r\n&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:20px\"><strong>What circumstances make the AP Loannwala Subscription Plan fee refundable?</strong></span></p>\r\n\r\n<p dir=\"ltr\">&middot; A customer can be eligible for a refund if an e-mail requesting a refund is sent by the customer (with the registered email ID) to info@wisefinai.com within 30 days of purchasing the Subscription Plan. The customer will receive their refund (if eligible) within 24 to 48 hours of receiving the mail.</p>\r\n\r\n<p dir=\"ltr\">&middot; Our company does not provide services in all areas. If you purchased the Subscription Plan and live in one of these areas/locations, you can request a refund within 30 days of purchase. To know the areas where our company does not provide services, please call on +91-9271759598.</p>\r\n\r\n<p dir=\"ltr\">&middot; A customer might get a refund of the Subscription Plan fee if the company hasn&rsquo;t started the &lsquo;Customer Service Initiation&rsquo; (explained below) within 48 hours of the payment and a request for the same has been raised through Raise A Request within 30 days of the payment.</p>\r\n\r\n<p dir=\"ltr\">&middot; If the customer is unable to communicate with the company in English, Hindi, or Gujarati, they can apply for a refund within 30 days of purchasing the Subscription Plan.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:20px\"><strong>What does Customer Service Initiation mean?</strong></span></p>\r\n\r\n<p dir=\"ltr\">It is the first process done by the company that includes calling the customer for verification within 24-48 hours of the Subscription Plan payment. Even if the customer does not respond to the verification call, the Customer Service Initiation is considered started, and the update has been shown in the customer portal.</p>\r\n\r\n<p dir=\"ltr\">If you have any questions about our Cancellation and Refund Policy, please contact us between 10 am and 5 pm (only business days):</p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\"><span style=\"font-family:Arial\">● By email: <a href=\"mailto:info@wisefinai.com?subject=Refund%20Regarding\">info@wisefinai.com</a></span></span></span><br />\r\n<span dir=\"LTR\"><span style=\"font-family:Arial\"><span style=\"font-family:Arial\">● By call: </span><strong><a href=\"tel:+919271759598\">+91 92717 59598</a></strong></span></span></span></span></p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:135px; position:absolute; top:484.125px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '2024-01-26 12:27:54', 1),
(5, 'welcome-message', '<h1 dir=\"ltr\">&nbsp;</h1>\r\n\r\n<h4 dir=\"ltr\" style=\"text-align:center\"><span style=\"font-size:16px\"><strong>Happy Ganesh Visarjan</strong></span></h4>\r\n\r\n<h4 dir=\"ltr\" style=\"text-align:center\"><br />\r\n<span style=\"font-size:14px\">Hello, Our Office will Remain closed on 06/09/2025 due to Ganesh Visarjan&nbsp;Thanks, wisefinai</span></h4>', '2024-02-23 06:00:52', 2),
(6, 'account-message', '<p style=\"text-align:center\"><strong>Happy Holi</strong><strong> </strong><br />\r\nHello, our Office will remain closed on 14/03/2025 due to Holi Thanks,wisefinai</p>', '2024-02-23 06:50:30', 1),
(7, 'sa_facebookdomain', '#', '2024-02-23 07:10:20', 1),
(8, 'sa_facebookpixelkey', '#', '2024-02-23 07:10:20', 1),
(9, 'sa_facebookaccesstoken', '#', '2024-02-23 07:10:45', 1),
(10, 'sa_facebookeventname', '#', '2024-02-23 07:11:04', 1),
(11, 'sa_facebookeventid', '#', '2024-02-23 07:11:19', 1),
(12, 'la_facebookdomain', '#', '2024-11-21 08:37:01', 1),
(13, 'la_facebookpixelkey', '#', '2024-11-21 08:37:01', 1),
(14, 'la_facebookaccesstoken', '#', '2024-11-21 08:37:01', 1),
(15, 'la_facebookeventname', '#', '2024-11-21 08:37:01', 1),
(16, 'la_facebookeventid', '#', '2024-11-21 08:37:01', 1),
(17, 'sa-wp-remarketing', '#', '2025-02-27 20:11:42', 1),
(18, 'sa-wp-getoffer', '#', '2025-02-27 20:11:42', 1),
(19, 'sa-wp-payment-success', '#', '2025-02-27 20:11:42', 1),
(20, 'sa-wp-username-password', '#', '2025-02-27 20:11:42', 1),
(21, 'la-wp-remarketing', '#', '2025-02-27 20:11:42', 1),
(22, 'la-wp-getoffer', '#', '2025-02-27 20:11:42', 1),
(23, 'la-wp-payment-success', '#', '2025-02-27 20:11:42', 1),
(24, 'la-wp-username-password', '#', '2025-02-27 20:11:42', 1),
(25, 'self-apply', NULL, '2025-03-13 22:20:08', 1),
(26, 'loan-agent', NULL, '2025-03-13 22:20:08', 1),
(27, 'sa-senderid', '#', '2025-05-21 20:29:37', 1),
(28, 'la-senderid', '#', '2025-05-21 20:29:37', 1),
(29, 'common-senderid', '#', '2025-05-21 20:31:39', 1),
(30, 'sa-senderid-otp', '#', '2025-05-21 20:29:37', 1),
(31, 'la-senderid-otp', '#', '2025-05-21 20:29:37', 1),
(32, 'lat-senderid', '#', '2025-07-24 09:49:41', 1),
(33, 'lat-senderid-otp', '#', '2025-07-24 09:49:41', 1),
(34, 'lat_facebookdomain', '#', '2025-08-02 10:51:01', 1),
(35, 'lat_facebookpixelkey', '#', '2025-08-02 10:50:51', 1),
(36, 'lat_facebookaccesstoken', '#', '2025-08-02 10:51:50', 1),
(37, 'lat_facebookeventname', '#', '2025-08-02 10:52:00', 1),
(38, 'lat_facebookeventid', '#', '2025-08-02 10:53:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `interakt_settings`
--

DROP TABLE IF EXISTS `interakt_settings`;
CREATE TABLE IF NOT EXISTS `interakt_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'SA, LA',
  `type` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'remarketing, getoffer, pgsuccess,pgfailed',
  `template_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_url` text COLLATE utf8mb4_unicode_ci,
  `api_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interakt_settings`
--

INSERT INTO `interakt_settings` (`id`, `rec_date`, `product`, `type`, `template_name`, `img_url`, `api_key`) VALUES
(1, '2025-06-24 18:09:01', 'SA', 'remarketing', '#', '#', '#'),
(2, '2025-06-24 18:09:01', 'LA', 'remarketing', '#', '#', '#'),
(3, '2025-06-24 18:13:32', 'SA', 'getoffer', '#', '#', '#'),
(4, '2025-06-24 18:14:15', 'LA', 'getoffer', '#', '#', '#'),
(5, '2025-07-18 20:59:04', 'SA', 'blog', '#', '#', '#'),
(6, '2025-07-24 18:24:58', 'LAT', 'getoffer', '#', '#', '#'),
(7, '2025-08-07 18:28:24', 'LAT', 'remarketing', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `userid` int NOT NULL,
  `cardid` int NOT NULL,
  `inv_prefix` varchar(55) DEFAULT NULL,
  `inv_number` int DEFAULT NULL,
  `inv_date` date NOT NULL,
  `inv_price` double NOT NULL DEFAULT '0',
  `inv_cgst` double NOT NULL DEFAULT '0',
  `inv_sgst` double NOT NULL DEFAULT '0',
  `inv_igst` double NOT NULL DEFAULT '0',
  `inv_grandtotal` double NOT NULL DEFAULT '0',
  `remarks` longtext,
  `is_refund` tinyint NOT NULL DEFAULT '0' COMMENT '0=not, 1=refund',
  `isdelete` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `rec_date`, `userid`, `cardid`, `inv_prefix`, `inv_number`, `inv_date`, `inv_price`, `inv_cgst`, `inv_sgst`, `inv_igst`, `inv_grandtotal`, `remarks`, `is_refund`, `isdelete`) VALUES
(1, '2026-08-29 10:48:07', 1, 1, 'LA_', 1, '2026-08-29', 500, 0, 0, 90, 590, NULL, 0, 0),
(2, '2026-09-22 17:00:59', 2, 2, 'LA_', 2, '2026-09-22', 0, 0, 0, 0, 0, NULL, 0, 0),
(3, '2026-09-26 12:25:17', 3, 3, 'LA_', 3, '2026-09-26', 499, 44, 44, 0, 587, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loanstatus`
--

DROP TABLE IF EXISTS `loanstatus`;
CREATE TABLE IF NOT EXISTS `loanstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `statusname` varchar(256) NOT NULL,
  `priorityno` int NOT NULL DEFAULT '1',
  `colorclass` varchar(50) NOT NULL,
  `isDelete` int NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `loanstatus`
--

INSERT INTO `loanstatus` (`id`, `rec_date`, `statusname`, `priorityno`, `colorclass`, `isDelete`) VALUES
(1, '2020-10-13 19:30:40', 'Approved', 2, 'success', 0),
(2, '2020-10-13 19:30:40', 'Rejected', 3, 'danger', 0),
(3, '2020-10-13 19:30:40', 'In Process', 1, 'info', 0),
(4, '2021-08-28 08:03:33', 'Query Process', 4, 'warning', 0),
(5, '2021-10-29 05:37:03', 'File Reopen', 5, 'info', 0),
(6, '2022-06-03 09:50:19', 'Verification', 1, 'success', 0),
(7, '2025-05-19 14:00:40', 'Service Calls', 1, 'info', 0),
(8, '2025-05-19 14:00:40', 'Initiated Calls', 1, 'primary', 0),
(9, '2025-05-19 14:00:51', 'Other Calls', 1, 'warning', 0),
(10, '2025-05-19 14:01:49', 'Closed', 1, 'danger', 0),
(11, '2025-07-18 15:04:21', 'Account Closed', 1, 'danger', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loanstatus_remarks`
--

DROP TABLE IF EXISTS `loanstatus_remarks`;
CREATE TABLE IF NOT EXISTS `loanstatus_remarks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(256) NOT NULL,
  `remarks` longtext NOT NULL,
  `statusid` int NOT NULL DEFAULT '0',
  `isDelete` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `loanstatus_remarks`
--

INSERT INTO `loanstatus_remarks` (`id`, `rec_date`, `title`, `remarks`, `statusid`, `isDelete`) VALUES
(1, '2026-08-29 12:17:38', 'testsdjaskjd', 'test remark', 10, 1),
(2, '2026-08-29 12:20:39', 'asdsjdasdl', 'sdfasdfasdf', 2, 1),
(3, '2026-09-07 15:35:10', 'test', 'sadhjsajhd\r\nasdsdsd', 8, 0),
(4, '2026-09-07 15:35:10', 'test', 'sadhjsajhd\r\nasdsdsd', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_applications`
--

DROP TABLE IF EXISTS `loan_applications`;
CREATE TABLE IF NOT EXISTS `loan_applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `userid` int NOT NULL DEFAULT '0',
  `loan_amount` bigint NOT NULL DEFAULT '0',
  `user_type` tinyint NOT NULL DEFAULT '0' COMMENT '0=none, 1=salaried, 2=selfemployed',
  `loan_type` tinyint NOT NULL DEFAULT '1' COMMENT '1 = personal loan, 2 = business loan',
  `monthly_income` varchar(255) NOT NULL DEFAULT '0',
  `cibilscore` int NOT NULL DEFAULT '0',
  `loan_purpose` varchar(255) NOT NULL DEFAULT 'Personal Use',
  `currentemi` bigint NOT NULL DEFAULT '0',
  `emibounce` tinyint NOT NULL DEFAULT '0' COMMENT '0=no, 1=yes',
  `application_number` varchar(99) DEFAULT NULL,
  `loantenure` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1=New, 2=Approve, 3=Reject',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0=active, 1=delete',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `loan_applications`
--

INSERT INTO `loan_applications` (`id`, `rec_date`, `userid`, `loan_amount`, `user_type`, `loan_type`, `monthly_income`, `cibilscore`, `loan_purpose`, `currentemi`, `emibounce`, `application_number`, `loantenure`, `status`, `isDelete`) VALUES
(1, '2026-07-16 10:48:06', 1, 500000, 1, 1, '50000', 0, 'Personal Use', 500, 0, 'dyP0m06g', 0, 1, 0),
(2, '2026-09-22 17:00:59', 2, 500000, 1, 1, '50000', 0, 'Personal Use', 5000, 0, 'N6Qmy0UV', 0, 1, 0),
(3, '2026-09-26 12:25:08', 3, 500000, 1, 1, '50', 0, 'Personal Use', 5, 0, 'B3QpH1v6', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `loan_application_status`
--

DROP TABLE IF EXISTS `loan_application_status`;
CREATE TABLE IF NOT EXISTS `loan_application_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `applicationid` int NOT NULL,
  `statusid` int NOT NULL,
  `statusdate` date DEFAULT NULL,
  `bankid` int NOT NULL,
  `loanamount` int DEFAULT NULL,
  `loanroi` varchar(256) DEFAULT NULL,
  `loanterms` varchar(256) DEFAULT NULL,
  `processfees` int DEFAULT NULL,
  `insurance` varchar(256) DEFAULT NULL,
  `monthlyemi` int DEFAULT NULL,
  `remarks` longtext NOT NULL,
  `sanction_letter` longtext,
  `staffid` int NOT NULL,
  `isDelete` int NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_applied_history`
--

DROP TABLE IF EXISTS `loan_applied_history`;
CREATE TABLE IF NOT EXISTS `loan_applied_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `userid` int NOT NULL,
  `bankid` int NOT NULL,
  `loan_amount` varchar(299) NOT NULL,
  `loan_tenure` varchar(255) NOT NULL,
  `loan_rate` varchar(255) NOT NULL,
  `loan_emi` varchar(255) NOT NULL,
  `isDelete` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lyra_entry`
--

DROP TABLE IF EXISTS `lyra_entry`;
CREATE TABLE IF NOT EXISTS `lyra_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entryfor` int NOT NULL DEFAULT '0' COMMENT '1=Customer,2=Channel,11=SelfApply,12=Loan Agent, 3=LA_Offer_1,4=LA_Offer_2,5=LA_Offer_3,6=SA_Offer_1,7=SA_Offer_2,8=SA_Offer_3,9=SA_Offer_4,10=LA_Offer_4',
  `userid` int NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `transactionid` varchar(256) DEFAULT NULL,
  `statuscode` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membership_orders`
--

DROP TABLE IF EXISTS `membership_orders`;
CREATE TABLE IF NOT EXISTS `membership_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int NOT NULL,
  `registration_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `card_number` varchar(256) NOT NULL,
  `amount` float(11,2) NOT NULL,
  `paymentid` varchar(256) NOT NULL,
  `isActive` int NOT NULL DEFAULT '1',
  `isDelete` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `membership_orders`
--

INSERT INTO `membership_orders` (`id`, `rec_date`, `userid`, `registration_date`, `expiry_date`, `card_number`, `amount`, `paymentid`, `isActive`, `isDelete`) VALUES
(1, '2026-07-16 10:48:06', 1, '2026-07-16', '2026-08-16', '9620831415043279', 590.00, 'cash_04wvYRlyrAUoJ', 1, 0),
(2, '2026-09-22 17:00:59', 2, '2026-09-22', '2026-10-22', '1705693283872960', 0.00, 'cash_8o4wuUI0HGvXB', 1, 0),
(3, '2026-09-26 12:25:17', 3, '2026-09-26', '2027-03-26', '9376288429516734', 5.88, 'hire_1790405708124', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp_verifications`
--

DROP TABLE IF EXISTS `otp_verifications`;
CREATE TABLE IF NOT EXISTS `otp_verifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` date NOT NULL,
  `mobile` varchar(99) NOT NULL,
  `email` varchar(99) DEFAULT NULL,
  `otp` mediumint NOT NULL,
  `acc_type` tinyint NOT NULL DEFAULT '0' COMMENT '0=none, 1=selfapply, 2=loanagent\r\n',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `otp_verifications`
--

INSERT INTO `otp_verifications` (`id`, `rec_date`, `mobile`, `email`, `otp`, `acc_type`) VALUES
(1, '2026-07-16', '9408881214', '', 2991, 2),
(2, '2026-09-22', '9409665995', '', 8664, 2);

-- --------------------------------------------------------

--
-- Table structure for table `partner_tasks`
--

DROP TABLE IF EXISTS `partner_tasks`;
CREATE TABLE IF NOT EXISTS `partner_tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `assignees` int NOT NULL,
  `assign_to` varchar(199) NOT NULL,
  `task_title` varchar(199) NOT NULL,
  `task_desc` longtext NOT NULL,
  `attachment` varchar(199) DEFAULT NULL,
  `priority` varchar(99) NOT NULL DEFAULT 'Low',
  `task_module` varchar(255) NOT NULL,
  `task_status` varchar(55) NOT NULL DEFAULT 'Open',
  `completion_date` datetime DEFAULT NULL,
  `remarks` text,
  `project_name` varchar(255) NOT NULL,
  `isActive` tinyint NOT NULL DEFAULT '1' COMMENT '1=active,0=deactive',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0=no,1=yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paygic_entry`
--

DROP TABLE IF EXISTS `paygic_entry`;
CREATE TABLE IF NOT EXISTS `paygic_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entryfor` int NOT NULL DEFAULT '0' COMMENT '3 - la offer 1\r\n4 - la offer 2\r\n5 - la offer 3\r\n6 - sa offer 1\r\n7 - sa offer 2\r\n8 - sa offer 3\r\n9 - sa offer 4\r\n10 - la offer 4',
  `userid` int NOT NULL,
  `orderid` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `referenceid` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `txstatus` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `paymentmode` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payu_log_entry`
--

DROP TABLE IF EXISTS `payu_log_entry`;
CREATE TABLE IF NOT EXISTS `payu_log_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entryfor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '1 = self-apply\r\n2 = hire-loan-agent',
  `userid` int NOT NULL,
  `orderid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `orderamount` double(11,2) NOT NULL,
  `ordernote` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `referenceid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `txstatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `paymentmode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payu_log_entry`
--

INSERT INTO `payu_log_entry` (`id`, `rec_date`, `entryfor`, `userid`, `orderid`, `orderamount`, `ordernote`, `referenceid`, `txstatus`, `paymentmode`) VALUES
(1, '2026-09-07 08:49:11', '12', 1, 'asdad9787987', 299.00, 'asda', 'asdas9879879', 'SUCCESS', 'sadasd'),
(2, '2026-09-22 11:51:01', '12', 3, 'hire_1790077850998', 588.00, 'CGST 9% + SGST 9% applied', NULL, NULL, NULL),
(3, '2026-09-26 06:53:03', '12', 3, 'hire_1790405572258', 588.00, 'CGST 9% + SGST 9% applied', NULL, NULL, NULL),
(4, '2026-09-26 06:55:17', '12', 3, 'hire_1790405708124', 588.00, 'CGST 9% + SGST 9% applied', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phonepe_entry`
--

DROP TABLE IF EXISTS `phonepe_entry`;
CREATE TABLE IF NOT EXISTS `phonepe_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entryfor` int NOT NULL DEFAULT '0' COMMENT '3 - la offer 1\r\n4 - la offer 2\r\n5 - la offer 3\r\n6 - sa offer 1\r\n7 - sa offer 2\r\n8 - sa offer 3\r\n9 - sa offer 4\r\n10 - la offer 4',
  `userid` int NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `referenceid` varchar(256) DEFAULT NULL,
  `txstatus` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `productname` varchar(256) NOT NULL,
  `productslug` varchar(256) NOT NULL,
  `amount` float(11,2) NOT NULL,
  `offeramount` float(11,2) NOT NULL,
  `inOffer` tinyint NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `rec_date`, `productname`, `productslug`, `amount`, `offeramount`, `inOffer`) VALUES
(1, '2025-07-05 11:11:29', 'Self Apply', 'self-apply', 999.00, 199.00, 1),
(2, '2025-07-02 11:11:29', 'Hire Loan Agent', 'hire-loan-agent', 1999.00, 499.00, 1),
(3, '2025-07-02 11:11:29', 'LA Offer 1', 'la-offer-1', 1999.00, 499.00, 1),
(4, '2025-07-02 11:11:29', 'LA Offer 2', 'la-offer-2', 1999.00, 499.00, 1),
(5, '2025-07-02 11:11:29', 'LA Offer 3', 'la-offer-3', 1999.00, 499.00, 1),
(6, '2025-07-05 11:11:29', 'SA Offer 3', 'sa-offer-3', 999.00, 199.00, 1),
(7, '2025-07-05 11:11:29', 'SA Offer 2', 'sa-offer-2', 999.00, 199.00, 1),
(8, '2025-07-05 11:11:29', 'SA Offer 1', 'sa-offer-1', 999.00, 199.00, 1),
(9, '2025-07-05 11:11:29', 'SA Offer 4', 'sa-offer-4', 999.00, 199.00, 1),
(10, '2025-07-02 11:11:29', 'LA OFFER 4', 'la-offer-4', 1999.00, 499.00, 1),
(11, '2025-07-05 11:11:29', 'SA OFFER 5', 'sa-offer-5', 999.00, 199.00, 1),
(12, '2025-07-02 11:11:29', 'LA OFFER 5', 'la-offer-5', 1999.00, 499.00, 1),
(13, '2025-07-05 11:11:29', 'SA OFFER 6', 'sa-offer-6', 999.00, 199.00, 1),
(14, '2025-07-02 11:11:29', 'LA OFFER 6', 'la-offer-6', 1999.00, 499.00, 1),
(15, '2025-07-05 11:11:29', 'SA Offer 7', 'sa-offer-7', 999.00, 199.00, 1),
(16, '2025-07-31 14:42:50', 'Loan Assistant', 'loan-assistant', 1299.00, 299.00, 1),
(17, '2025-08-07 13:09:05', 'Top Offer', 'top-offer', 1299.00, 299.00, 1),
(18, '2025-08-07 13:09:44', 'Excel Offer', 'excel-offer', 1299.00, 299.00, 1),
(19, '2025-08-07 13:09:44', 'Special Offer', 'special-offer', 1299.00, 299.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `razorpayentry`
--

DROP TABLE IF EXISTS `razorpayentry`;
CREATE TABLE IF NOT EXISTS `razorpayentry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entryfor` int NOT NULL DEFAULT '0',
  `userid` int NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `referenceid` varchar(256) DEFAULT NULL,
  `txstatus` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `razorpayentry`
--

INSERT INTO `razorpayentry` (`id`, `rec_date`, `entryfor`, `userid`, `orderid`, `orderamount`, `ordernote`, `referenceid`, `txstatus`, `paymentmode`) VALUES
(1, '2026-07-16 17:55:02', 11, 1, 'order_TEAnYYzz0uovDB', 1.00, 'Self Apply', NULL, NULL, NULL),
(2, '2026-07-16 17:56:47', 11, 1, 'order_TEApOjPuZd14tN', 1.00, 'Self Apply', NULL, NULL, NULL),
(3, '2026-07-16 17:58:12', 11, 1, 'order_TEAqtWfaNfkAOi', 1.00, 'Self Apply', NULL, NULL, NULL),
(4, '2026-07-16 17:58:45', 11, 1, 'order_TEArUGX5eSQWDo', 1.00, 'Self Apply', NULL, NULL, NULL),
(5, '2026-07-16 17:59:26', 11, 1, 'order_TEAsCfNNhDgaCr', 1.00, 'Self Apply', NULL, NULL, NULL),
(6, '2026-09-25 18:00:02', 11, 1, 'order_TEAsqU1IjUdXko', 1.00, 'Self Apply', '1234555', '100', 'sadjksd');

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

DROP TABLE IF EXISTS `refunds`;
CREATE TABLE IF NOT EXISTS `refunds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int NOT NULL,
  `invoiceid` int NOT NULL,
  `ref_date` date DEFAULT NULL,
  `ref_number` varchar(256) NOT NULL,
  `ref_price` float(11,2) NOT NULL,
  `ref_cgst` float(11,2) NOT NULL,
  `ref_sgst` float(11,2) NOT NULL,
  `ref_igst` float(11,2) NOT NULL,
  `ref_grandtotal` float(11,2) NOT NULL,
  `paymentid` varchar(256) DEFAULT NULL,
  `remarks` varchar(256) DEFAULT NULL,
  `isDelete` int NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roipackages`
--

DROP TABLE IF EXISTS `roipackages`;
CREATE TABLE IF NOT EXISTS `roipackages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bankid` int NOT NULL,
  `roi` float(11,2) NOT NULL,
  `termsyears` float(11,2) NOT NULL,
  `termsmonths` int NOT NULL,
  `isDelete` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `services_name` varchar(255) NOT NULL,
  `isActive` tinyint NOT NULL DEFAULT '1' COMMENT '1 = active, 0 = no active',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0 = active, 1 = delete',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0Aqpc15M98O6hluZfeMKMDzgoCEmUhJHPN8CkvSe', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFQ0Y0lJQllGQmFRVnljZTVFQklWRFhOQ1djVk5ZaFdXUDhmdk03aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582869),
('0fZDQWgT6cj8YWNEXMbb4eA4gCL67lSenerUtV3s', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEd1UlpYTHpDQmJuVnNsRVgzd1RYR2tpQVpBbEJDQ1Y2TnVBblQ1ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2dyaWV2YW5jZS1yZWRyZXNzYWwtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792495072),
('0IZns0vgcKP8lhGMrFzzv7n1mNYL6Oez30Wq5u0T', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkQyd1IyWDJwVHNFMVNDdU0yWFlqelhvSklRcWpRWlBxVkJaakM5RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792583252),
('0sWzPPIUBjCfELom99yemzdgJBEL2sw2yfw2Gcma', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkthZnAwQWtBUjJaR09WVThHcVZOeUwwU2lXT2daQ2xFM3JuVXZoSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792139731),
('14EKrujKrfQySPYLnOVWSAKDLLzhduMhIJNZtAJ2', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDkwdEJCbkVUMzVBQmt3V3B6UXNkTDZxaU9EODZGUGtoa0NtM3RUdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2dyaWV2YW5jZS1yZWRyZXNzYWwtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792497456),
('18OuOejiE9QI1fR1BGKI6xs6H8kuQhIooVi6N0sJ', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0lkMXI5aVd2Z2VNTng5S3ZUVXJoOWVBd3B3ZTZQbjZtd2VFaWFQRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2dyaWV2YW5jZS1yZWRyZXNzYWwtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792496240),
('2lNvH62aJwjPSxtK0G4xI1EgM5siPJbpHA5zMjDD', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnlFVHQ1akNnUjd2enY0ZExHdmxMZnlrQk92M1BlZXQ5bjlJbm91VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792212748),
('3pk44icbpQI0MXpeALFjf0ma3ZPbw8X3bqJBaeNB', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXlhaFpJUGI0Q1drTzRlQzhlUzhWVzNJSWJtTXVKOThkcXo5WlZzdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584299),
('46s1RXn7yYoOOpFiL9HCX3xq3zZnWekYmv7z6AOI', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXBVeXRSTjQwd1AzSFlEbzYycUhWUmpQZFhsZkRjdWg1azl4ekd6NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792228639),
('5F3nBneINBELBDtb0iksYPqIrwFsjY0Y3jBWYW0x', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEh6QjkzNmdxQVFvaUtIeThsZDFwRVB2bGZGNlZXVmdrekNJSFB1SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582979),
('5kofYrgu7hXBA1Edi3GCudA74qhM3YVO7jI5KWTH', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjAyMUEwckgxVFVDM3NOV2lxYXExU2NZdGd3YkVGYVB4aThkODQ1MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792229091),
('65yOz3lV2MMEqXzoVZUXA1FnZ564pIpj3sLU7UWq', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1drOHNsN1pqZUNCdE1ac2t5OG5mN1RXYUh1ekV6bXZCcUJsYTJyWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792228737),
('67ov2EpKuTp8CJ0Eedf8OXXKWYuOwYow1DhmCKm4', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzN3cDhSNDdQSTRmMnF6TGY1QkttY004NHZaZk1Ud0xzZUNaYWVFMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584353),
('6nqHwMfodtPsoV4GONnoHOphKSMKGF5VHyf7niQ8', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODQ5dGhob0Y2WFl1cVpTSXdySFVaVG02SllTcGM3OVZXc01aWHBObCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2dyaWV2YW5jZS1yZWRyZXNzYWwtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792496915),
('6Xe6iF5Ma7nre6UJbYHU7LHbKcl9EjqMx3HCIMH9', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNm9TMDdRMlE5cFZlb2ZQWE4wRGVlbXN1VVpDVHdnek42ejlCVktXViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582435),
('71Q6nrOQ5Ip74Lf1Qd6EAR4KeI2Y6t4AJ620XjQ0', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWlSR2VTZTJqUG16aDdlVm02SWlQMWI1Q29jZHM4bWRRMDZwV2NBdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2dyaWV2YW5jZS1yZWRyZXNzYWwtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792496389),
('7Nuf799n5aEm6Biq9GkAJ8SqScMklF8FIstssGEm', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickpJckhhcjdyZVBBSDdNWWh3YVZldXp4VE05UFRubTY3ak1CR1c1SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584583),
('7VbPjbIfOfH99billIoCiaSLC48wsctBfORUIRKH', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib25lQkpNOUx1Z0JYcmlraDVwSjVFbWdYdlBTWEVUVXZzMDNBUXF5UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584425),
('8Hfe7CwsKVLUiafG0ir4PYDXyDbaCUYoeNfZWb4d', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlViTFVnblg0TlBDS2ZXRHV2TEtYd2FjTFRCMDNXYWtjV2FtbTI5OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792233325),
('8ubU7e6xjEjzXJrEHKPfZXZUSibejOLZwqcWY2Lz', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUtKb0oxeENsOVE3UnB3eE9vQThtakp4bndqRjFXVjNObnlsWmR0YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582693),
('9MJhYxj9RwygYEdwsJdqs297ZkFLLnkZBZOwLoya', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSE9NeXExSldweVdIcTRNMTNVclBzNnJodlNNY1QzMk9pRWlKeDQ0TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792583333),
('9o86CnbwC3KCWbzPLISSzMVd7DTJRmm4zVXSExFm', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnA4bXIyS0VJSGVEcUJuOU0wNXFVejRQYkluNlBJVTk3bXBXbzFxSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792233122),
('aYoSqhwWGLMDzOJKS8qP2OPRHe2IzXo4i3Pbtghq', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialllSEd0Z3FsQ1pNcFhEVUtOSlQxOHNGanVBOGRsR0NoNXZBN3E3MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792233344),
('BEi8iicsmGytFsNbCx6EyMCknubV715r3FvQ4dLe', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGl2UURyWkY1ZEZwOFB2OElicWVQZDJBQlB1QlczUVNRNU1WUXlFayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792229062),
('BoYF2HMN6yfFd88bCxb2HRjR3Qq2sVLtrFQ9cMeX', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3ZLZmY5WVdSWjVoa3VGZTRtbTZpVmN5MFlzbHRnYm1JZ3ZyZUwwNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2dyaWV2YW5jZS1yZWRyZXNzYWwtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792497084),
('Bw33NZfxeLFAlZL9zwmAxY3dYxypNv6GbQmktyeE', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0Y5ZFdRZzU4Ym04SWxTVDdVdnB6MWI4c0t2aFJXRWh4TkpSeWNBWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792233151),
('ct3aSeftu977gPTdqM0uHMNgb6a4x6MG51jdLzz4', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3duN091T0tHMUdrbzFxVGdsYXJWZkVDb0tJd0dubmN0bVBSUFFZZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2dyaWV2YW5jZS1yZWRyZXNzYWwtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792496251),
('cXSs03DOX2jccTxXYdhwHIH63VDRLQae9AN78F07', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzBwQ0FYdkh2aXJ5VEY1ZnEwZVdIQlJLMFNWRlF0Nldpc1RQOGNxWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792574942),
('Dci16FU0EBCBO89Eski4ZcaLoZXuGwaGVUlwqq2s', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVJiWjUwZEZQeFc5bkhRZVhyT1BQZmJ1ZU1JWnJzS1E1SHpTY29DRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584388),
('DKYOeEXZAkhiiEYznEd18giIHB81wRmoPFMLjCg4', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHBxUVp0MDhtWFdGSWtvVHo0RngwVFZpT0c5WTFicWZwSWdGM2JoMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792212146),
('DTqvHXTUdwIWh6HnMoTf9jXJBEKqmBq4Ga248Cui', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTF4R1lsbmpjQnZuVXFGMnNseDBqR20yeVI0ZFJ0QVdseHB1WWdFNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792583383),
('dWMHihWI2BQzG23E9pXZB4Qmu06slCtJdMMoyGcQ', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTQ1SnhEbkM4Z2ZjY3VlV0ZmSWpqREZqMmZiWnJlc1NiQ1JraGRDcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582476),
('DZgqRRdl7SZDrcHj4jRsOFjNwUdNm8fnnakhnmGA', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjhzUUt4c3o3WGVBSUN2V3BYQXhUbFVYa3puUHZEWmNIVEF0TFkyVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792229101),
('E8xmY8S9rqDVrzQhguV3oHPgeYFAQUYY6pe443SV', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWdaeWhWbWhwWTVna1B6ZnY5VVA4MGFFa1RyZ2k5SW1QcWVGdGQwMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792575487),
('ecc25PYEcscjKK14Rmn9T0tFpff7RYmycO0rcWVV', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjNMS2Z5dEJUeVhsR1d3VUdZRDlEWGhxQmVxMDNvRHJXMDlSdEpIUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584415),
('efVhpTEyzCZKHV22w6kS54byQM4nBzYnZLbJ6o35', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTURodjlxUVZMR3VRMnduQndua0xyN2RqeGNCcW5xd291YTBWcEVQQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792232468),
('eiSmLL6RcU25VkJKdPcZeYzT9UdPfSC8Xsa89NTn', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2tFaFMyMDhVQkNaV0hHUlE4NUpyRlFwVGh1T2lQZ004SlIyTVdCaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582868),
('fBBI8KnSQtf4XCJ53aQ5JMxT6I5XlR2UxWGouWyq', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUt3TTBPSk1MUVVvMTRrT3dLZUtFZ2VvOXd2U1RBME9RamlrWFRLdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792574232),
('ffxZqIqvpPVNHqC3B8O2mwIzZ6lQNj2h5xjlkQkp', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHZSVGFKdFladzgzRXc5cENBeWRiaDRsdktKbmY2eDloaVpMeUhpUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584652),
('fJEg0oPijIUB6syO33KOplE69jGi8bh2t8OGCpAL', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0J1TjR2SThRNlIwaHpmZEJyTTF0N0lBUUNEV3I5Mzd3VTF6cURSTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584427),
('g3DCw50pjsSclF8L8ClcjCkjdgL21f1cav1qyJte', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlVZSTBhZ2hKV2trSnFZczgzNzEwWjd2M0F2ZTlPUWw5YTMxVjhmQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792213172),
('GJcXDOeC5X2qbhiqNNFirYKbcVNL9iRwakcoPWUT', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiek95bjVBNUpxNHY0R0RNakpId296cnAxWWYyTnNEbXllVUdBbGdSQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582742),
('GN9yfoR68Ls651Kwmt7HuCokITKBbbjTo4hw69ng', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTXc2bTAwSUZDY3E4R3RDakdMUEREVEZWRGZKVGJMbWJ1RkxzVmFpdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792139754),
('gOZjoa8C2ZTUqW3zDP4IJCYePc89j3WqeJdELFyZ', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTAza2lFbVZaS3A5SWJQUEs1VkFkR0pFdFNaU0xRdVpkV2xCWUd0UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582625),
('h96pMepIZQH2SgNZAJDPsAIKz4TBBYnqu4IoWxQA', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGcwN2MzZUh1MW9kcGlCRnBYRXB6YXloNG1qbllLdkoyWmdwc0JTWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792148876),
('HbSpVpmMK8AlP3pxnKgpjkdbMe6mgwly4w2Trb4t', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmdaeUoweGZaZGRsMWxjdmsxUmpJdFRQaFB6elFnUXZ3d3o0RVRvcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792232894),
('hEsu6PFQbhn7RNN62OnXK16QUR1qWNE9LIVbENpj', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibzRQNjJVMklvUDdWdWN5ZVN5cE5CNjFybUJnWE1YcVpjb2txTW80NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582824),
('hJu2G3bsQrbvNa5Vprk3zD1IrKKzmyDetGke9aPb', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaG94RzczV1VVOVo4WUFreTBJeENXRWRRNzBsQzd4eTcxYUVrV3JkSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792233336),
('HNCjxdfIVhillHMYdyIMEwnRje0PN75oLdAE6kao', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDFYYVFvak9DTGR6OVpYOWl3ZHVrMU1lc3JyR3RnMHp4NE1ET1V3biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792494837),
('hNdcMTpWoJBO2u4xEyw4izVfUZjYVOJIwGTh8uYl', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3ZQZmYyRU0xTDU4dTN4TmxzdWVzV1pIMjVCUE10UFh0U2FKTlpUQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792581407),
('HpimMVfeiujCJnkqtKoETIVVc3kr68la2ZOBGQHr', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjRkQk9pNW54OFcxZmhUM3lxRGwxbzJLdTg5NmFoa3d6aVhvVHZvRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792134436),
('HycLbJzNqZvb7JpY3vzIieUrRu4qDm00amUXlBmD', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTB1cGUzUHRsMU5wU01sTzN4Smx0ZkZPSHphQm1OeVhSRTNUSWNzYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL3JhaXNlLXJlcXVlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1792494844),
('i6CnYPasD4r8dbjPdk1hq0jq6PR2Zm46r7Kw7QST', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXF2Tkd5bzFTTk1PNWpwTDAwYU9zZjFUMzY5SmlRSk1Yc0lKUHNhUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582747),
('icAxuAxIcOySeRcRWrUYbVUwrMeqwHUAWb6qAThJ', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHlMdUQ2dXFZR2MyblpZNjBNYlNxWjZCZFI2Q2NBS0d0VGJad1VSNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792573921),
('icTzj4ADVGGqOY7EC99JhJnnbtviSryMTqxBFKTh', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlZaZmlWYk1ZYWxONDJJQ1BZaTV3TTlJZDNpWGtvNFBRNG15RFQ2diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792581204),
('ieis930SCTK8HL17PQFjCfHZ87NoUWU04EM0mUia', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVdzV284emxTTzNyakxVWFZwQmRNMlJKOTNGSFQwbTR5NzFFNTVwZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792220850),
('INgpszMbLHWwk7gWa5kOX1BkQ33e9zA5qsK4Wu5d', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamREZWlTajNoZHpjeGtBbzNta05uYW1nNnhzdmdXS3IzSGdaejJmaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2dyaWV2YW5jZS1yZWRyZXNzYWwtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792496354),
('iqYYTsILPePKbtsbHXpUNL9mAP6cAV2y8jmBSHXm', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmpWUkpYaHpHdGswUFlaWjlrTHVyeFZRVHl1OFJkNGNaeHE4Q2JoOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792583018),
('Iy5jF0TyyJwbhM2APYh7ofpb8A3g4r7QAzgAPzDF', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSll4akVLc2c0M2pzdldHU2ZYVUhoYUlIcHZwOU1yUWZKTEJPdlc3RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582590),
('JCTeUvSLG1tEjwfenuLnCm67Mdztqxs1i6tb1WIX', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazhLNzFVYkRLOU1NTE83VVhSbW9aVmR6T1R1WFRGYnhpNjBJcGlYViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792212702),
('JJvc4USGFb61GtAGEnwX5VjIqtymVVFfkDkkaatZ', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmdvZXdoVVB5d0dYVldUbjQ5a25Ta3REcm03ck1BekR0MWMyR2toZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792229068),
('k6XSClOdi21J0G99NnLn3QKCiqg6nXKZoXeJnNI8', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEhSaFBJNzZxY3N1UzhRZ0FRN29WUkVjUk9LcXg0RW5heHRaaExSRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582679),
('K8bFmERzPbbl3qqyomU3jkVDT41blCBdHzlhWkaO', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDIycWg2R0FWdUFucjNzNkE0RmdKU2phQjBXNVF4emZtejR1WTlhVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792148868),
('K8WebdHUUY4LCzh2R6d1Su4QusKxrPa5GGUgYlHP', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkdzUFN2T3BVaHJwbGJSSm1XZmZRNUF5S1NmNjJhd0RTcDJjbkhieCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582610),
('kNhnZGG95f0WuOhfawAYm8G0UwaIvc3YXLme8TFD', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzU0UnJOQ3BHZW5qQTk2SEI0ZTlaWGVnMTFiSHFndmdERUJLRkZvRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792150266),
('l3RAIyjnTuLocI3mdy2JGQYGkxG5WJMX4EFuCcF6', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWm55Y29lUUJ5b2xBNHU4emtVbFJvVWJxTURCcktOUWgzVDVjN1VmQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792229169),
('lGjQPYyS9syzYtfbeWbAiHLjJ7R2Jgsae98QVbYq', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEoxWFk0c25DRDh5MFhBWnpKc3IyeWNiWWg0NnA0RXNPUHd5OURncSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792583143),
('lNkTIPO9HTahVPoP1Hv3xKnxXyE3n2svruIIgyfU', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTZIQzgxWFdXYWFSeEVteDNtN21YdnY3SG5XRXVvOENxYXBvNzFXTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584514),
('M1UgYW1GBAbSBNGxyV890XXFDA0btBt45lLetL6j', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZW0ydjM1OEFzYkpCem10ZThNeVU2eWtobnNoSEwwVVVlcldYdjFHQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792149727),
('MgUuinkYDHdEuNlbNupeoG7rw9FKe7lHi14B1atb', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1VYcWRodUZHVzc3SVJvQVVJanRrUTQyQTFaNmxKZjNOYnNaU3FadSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582817),
('mGxhUiU1NhF0mfkXqk0MLQTDzVKBskA5AL6Bf0zk', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnEyUXlUUkF4Q29ycTY2MEtrUmw4VU53VEhDOGtrelhJejg3NTU4ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792583200),
('MmVtypc0tltSB5n21P4aT6hAw9bC4gInajceOZBs', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTZ5VWtZUFlPdk1ReE9idFBhY1lhVmp0dGxqMVR6MVdDZ3g5MTFzRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2dyaWV2YW5jZS1yZWRyZXNzYWwtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792496310),
('n3lbIkAW4SDHnnoaD0xDOxBUv0vnhJcYON4mc9RS', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlNJWFNFb0lpaWNNYzBLOEpFZ3F2cXhuQTNiMUtFbEQwZGdBS3B1dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792497477),
('NA2RHoi6n3i8AwsbeIExcw39uO2VC9YOwqWRtSD7', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSk40REpKVUdCb3h5TThJVmFIbUNnN1lWZDdwanNmb1RaRWllTmdMdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792233495),
('NAu6ofNPbRYbRJ7omCsdT2iKYES5hKgwrdWZvc6N', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHNIRUNWR1Q5dFUyWFF1Q1JIcnVjQVEyaFROSjJEZ0lMWElmcWVvVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792212780),
('nC3Zs3W85SXDqtcGkGYzOR0xR4WGZg3NjLQjr5aX', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEFIWW94UEZXZkN0ZFNTU2xtQUU5blNyZ0NTajBpeWZONTgxUjQ3ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792233516),
('ne2CacbjJFy6evZH1WrccnYKnJWGnJlVj0OS1DDg', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzVzcXlMbTNLbThYZ2Q3akJHejJrNGNTR0lqaVNvYVJ0Rnl3RFdlcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584549),
('nj5Yq40KYa3Leq1KFOLZJJj2VBMvfQGs2fsSvFGO', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGZ4U3ZHczdUTGRxb1pVVFowd1Z4blRKU1RTZFFGTjNvMkJ1Rmd5RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792124231),
('NNFuMeCXjr7KuM7djdt0bTTiNPnrXyukyE76xS78', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkpiYThueW1tRjlIWG5uQ3NOMWE5Ynl5bnd1R0ZHZFFEeUltTExkSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792575233),
('nQaOJPfQ89WqwGo9XDy2wzRqVKAOtdWdfLgubFJU', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUZDMWRrNE5uMjhJcUtIb2dSWGRJN0JsS0VlY093elRQd1RWRnhqTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2dyaWV2YW5jZS1yZWRyZXNzYWwtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792496354),
('O0SA4LLCLAAg9AJWdlY8utOqh1IRMISEa8pznOy4', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDc2M09RQWxsUnF5cGhhZHpTbFpNQTBlT2FoNExYUjBQalgyTXIxbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792139733),
('oEOgx2uqX0IuL12pTfcIKRwoloMN0vMeGzugXZUv', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUh0ekFNb0VKeEY0azhyMmxWeVMxNzhxaGNkeG5IQXJuT3BzTzFkWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792229184),
('OfwVnCsNzTR1KrwPG20BanKrOrFZeJTctTIJGRRG', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0dyRzdFUWtVZHFsVFdtbTRZVGY2Q01CVnphZEk0N3F0QUJhNnpIMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792497472),
('ONtkbQMhZaM4mctjy4upL2YwWMWXzGb4OnLHp6YY', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieU9ydHZ2NDBUblJ3Nnl2NzJJNzluMGdsOHpET2cwTW1TOU5Fa3lDRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582673),
('PdQZ9vmecYHK3SRsWiINrvMVlvwqgu1WDTP09G0U', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTU5SdWZhN05TZXlWd3g2MkM4Ujg5cVJGRm5WTWR5VmFFRmhrYkRZayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792212699),
('PFBx7NWyRNZOBaCOW0AxbaNNtv2kK5hIm9cqvq4o', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0ljQTRBdmlRN05VYTN2M0pvOWhqMFdkSUVIUUFQZ3ZjWE5BSm1LRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792229005),
('pIar27OpxAsjXrCSESytWEe2apKuVyad73k0D9ZY', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNldRZElLQ1FnTDR5bTFEclhhdnBiQ1FsZ2pQWjRZaVhaVndXRVJJeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582621),
('PylNAM1XoumHQ8bfbW2W1NSBe9QPTQKzlmpG1mwS', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnBNTVFrZ2Q2MVhUeUtxUkpIOWY1djZiTU0wams4QkRVaW1sVmlVMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2dyaWV2YW5jZS1yZWRyZXNzYWwtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792495274),
('QJN7jah5MVPbumRwrlJLgxX3HBBo5HoTQa99HMlj', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidEh3SUdJVUtLRVBCUVI0Ykg5bEl1T29adEtEMjFxRjRhaTBCdTB4diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584594),
('qJQyMm0FuFPHf2CVHG3zp697pFG8BUPwi3homjM2', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTRBNWp4alZ2Q0dtMWhZeFZUdXBQc1Y1WU1aRVQzejV5TklOSTE0QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792149660),
('QJrhpHiitvxSlvepJrgTd32bFMtPw5aWtcA4y2MD', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGs3T0NHNW1IaVJ1Vk01VDVFNWEwY0FsOUZNMTJPdnJsdUVGcnBWSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792233404),
('QLhRp38L7KvFAHipo5cT6GhVXnuEM9VTj9a7JxzJ', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUJqa0JnNXNLWVlIa3l4MGRKVjFPTnlmOW16U3ZyM2t4YW10RW9HNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792125133),
('qyY9s623idghFyISghfSW5X9P9Vq6GrGfTQomvH1', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS042ZmtvSWNGNHNnNzR5Vk81dFBNazZNYjJBV2JtMndTWVowQkJGUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792229211),
('R3sdrYQB2O7OgFOOjZBI4e3nBfqc0Frlr7hKU8f0', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWVvdEhEMVFzNDBsNEJmWW4yZUs3VFA0eTU1T0tsdkJGU1owVzZISCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792150225),
('RdcoMHSPvlMIacTpYwIMuQ1Jp4C2Rij2bzkKYt4n', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ04zV043clJ0STZpa00yVG9jTmQ3Q0JUZ3NaaVVha0Q1ekREZ2diRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL3ByaXZhY3ktcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792495068),
('RJgSAlyS3Eiywn1skQe8s3TjrsbaELKJBz9pG4HW', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjMzUGpRVXdWUlQxS09KUzA4T1kxZEtnS0NyMEpOMVpuUXFtaHlRYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792583123),
('RlsuRHwsweFm15zullrZtCZlW6mZBR8hQq88LDx9', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXBHQTNGY3FFamRuTmdLcTJuSkN4VE96VURjM05raWwxYk5oZ0JIWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792575127),
('rRZBP6vDxt1Z3N6WLwTddrtOL0UeNEFiW8dDuqx6', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRER1U2RBeWFHaG9DS0tYUE5Lb2wxT1lTRE5vZUNKTko1WUtyc3RDbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584359),
('rsgeS8rRYJDyTfYMVU0hioFLtUEBbt2U40caSjto', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0g3ZGlYSVlIVGJwQjU2V3B5a2RwUlRqMDQ5Wkc2WDFPVGtFYmlYQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792229099),
('rV0A253YODA7ThbkG7pCs5sJQ0XcJE81u7dxajGc', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1BXanl5YkZKRFBWTm41MndRM3BxQ3hQYUluUzNBV3NtUnhLSXludCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792237612),
('RvtUF6QWmk5eaETs4yExGekML0K5j7NQuPtJyNQO', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1Qxb3NBQ0NoOVJuZ0VEN1kwQkE4UDBVUURnU1lCYk9pajd3blp1diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792228658),
('rzayZjVyEszlyGrjMHMWOtPMJQ6i9sEyFvWZP5tb', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnExQmF1ZlBMVEIyQ2thVm9tcGdNNmZhVUJIUHptQ2lROFVuM05idiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582494),
('s1fsOqniaePE5JcTt6tQzqyugWcaHmcYQlaQ8zR2', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjNuNlBLVzBDS1BGd3dyaGJ5bmtCdW5hOWt5dWI4cFlGUWdpVzVSTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792574065),
('s2ZlwzsKdLwz0wdCCoDorZ2xpJCsmoWdcCitZ5mg', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1BvMk9OWHJ0Q2l4a1V1bUs0QUl4YjByR3BpaTVOT3JibFNjWnVuYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792233169),
('sB6LK9IqzNfCrCj7wbUsK5Xms0uqxNUhNwHReECf', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3QxQmU5WFdVNVlsTFFXWHk0MUZVT0xIZmNKZUQxUHk0cW5zeFNtbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792232463),
('SjtgGNKX3vpiUg0LwevdyWTClQDKKGaTbe0tqZec', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTB5NDhiaTFKa0VyT0h0ZjNMVzVTZW1zZE93YjJTV2xLRWJpU3NYMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792581201),
('slr4mDPm7WSZKljBgbx8lSkUMM3JFbQ8et5mLhz6', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjRONmVoZFVxeGVwR0RiN0tUUlZYMFNGRmJBalE3ZVMzcTh1T3F1OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792583387),
('SRJPC6Fr1PPRoQe4nlHi3Yh3u2R6UVPhJ7oZ3RQc', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2NIQWY4NnhwTFhGUXVNQTFJTUVLSTBMUjhTTElPbWg0UmxFUDI3YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582680),
('SS3L07Edp2IwvEuR8xjAqrqkIrUawStBGxtkXmCa', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmhFbWZsa2t2QkJFaHRhdEQ0Y0k5Vk5uak12WXBiNkprOVZSdWYyVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792229068),
('Sse3m7nzn7GCqIvF1hkmMY140WGdGg0Yll6kPLb0', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidEYxV05rSUI2elU1MmN5NUFhOFJaRFB6TFlIc2JxNG9MbXNucUdIOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792139749),
('sy4drOMt3KMh4wCxxUHlNMrDfm7yYnPfnuV7eR2u', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid3RSOGVvOTU1dW9rQmM0Sjh2WWpkYzdUNkdXUmc2Z1BSRkxCcEZocyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792139760),
('sZFXxOV40CsX8EiUOiVGj6e1204dYG46GEzpNGLO', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnhjVjh0RWRHQTFVeUlHalNGQnNZY2E2T29jb1VsWWs3MndFVk9WaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792583787);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('T8nWKy3zKqHzKwgrDwGftrBODIh8s98EXCahlH9a', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnZwRXVEUnkxZmd6NTZwTHc5SDBZamdJczhteDVvajNSRUNXWkI5WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582724),
('Ta5vbtO7Ys0Hw0Rtf4vbc9WWMLXIF463Ix1dzanB', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVEyZmNZT0xvNW9GTUMxTGNSYUVLTzI4VU9rM0d5eDE4UGpJTTF2dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584409),
('TaS1MU6LWkbHZQM9yDDlIO7rMwlqOk0DTyAFYnxI', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoick5IaWxKbXBtZUJURTJ5NmZINDdOWlkzMjZWN3lkSUxBa3hWTmJoMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2dyaWV2YW5jZS1yZWRyZXNzYWwtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792556790),
('ticOm1cKLd3JVDgbzmYEs45zjD9VD5k6Cp1v4RXr', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUw1Smg3WVBkanJleTdtejhqMHBMUlFrcWxNNUVhVWZVdXJ6T211SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792139746),
('Tr0ij8qj4M49ozhiOxhrkkYPWfLAysGNWxAYiKmf', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYm1IaDdTY2U4cVVNRktUOVNlZzRNTU8xaFc0bEN2WlZ1bzAybnRoWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792139739),
('UAzx9YFZ34YVRugne2iGszpHNhxzZFY7T2Oh9G88', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZnRDWjZ4amlCYzhSelNOQ2U0VGx0SG1LeEtaaE1uSVJBdDRpZG1qeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792574827),
('uf8oDKdzQfzaiU1ymkIYAuKMIdENNFAjx5BoFdXX', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTG5wQVNWMVVjS045MGt6SnpNQ25aZnVWN3NFV0ZFVm5NSGV6R0NiciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584662),
('uPJNyLSVHiMNavBHuvFKIxqBNgU5IIk65LssYDOy', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmU0a3RuOUtEMm9sMXo2OG8xZzdySkdEN2FlaHlaRU1iYmZsMlBDQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792574026),
('uwNDaYop28LB3lp3xsuxHyIieKB4vOzY1dacbA4x', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazM3T2VaSzF4RGJvYXFNNjVuN1BjeDVNNE4weDlvZjZwQW14NWlPayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584412),
('uyjLth2ijC6QQxLMEmSE9MuOcuhMkI4ZoagS9tT7', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVJpWlRyRjdDVHVieVliTUdtalVFb3NnbGRIbGVkakM3UjlXc050UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584492),
('v8FzroDsoyXtmwQ30iKb9GoOg7Xz8EBKypgw1UqJ', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFJCbk5SYlRmMzJMenZ0UjBWQW9TRldPNnZrVGk5aHV0VTVNejJZQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582606),
('vdyyOnE8x9Ho3Cm1ZGVXPYUZK4J08c7xt8TMO90u', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXVHMWgxSXBlV3BxVWE4dXdBQ2JkN3F5aUlMSkU1M3FVZVE1UExZYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792583161),
('vscue02gSqIPm31qYGJWLmLvNrhioIhU4jXzSuEU', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXVnOVFpNkg2RW8xbXhvRjc0UnhzVmNlS0MyMTVNdkp6TEE5cnBOOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584665),
('vYgYGNBNIEK7HMYjsSupcogaMj1nH9eOp1CyWYIn', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEJXU1RXdmRkcVRwS3Z1am9BQjFoZW4yc1lXOUIwekhkZ2FvQmpGWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792584580),
('WatagwpLjRcA6hSJIGqwBSBWzR16fhQTZhwlF1b4', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXE0WUZSTXRQenNKZ280T2U4YThhaExJeWFyTlFnbzJLNnJ2U04yTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582879),
('WMg8QpBF8i9uymhFHrgVEOxCs891AcfoUdzEJUCC', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEMybUFqTWFGcWhFMEJLR21vUFdwOXpCREY4T01UeVhTbk9zM3pyOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792149422),
('WWkS34o7euLiM7Tos2jm5PBgWBIWfntKC9setWLT', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXRKWXA2OXhyZEo3cGhTNzh3MjVlWWFDNGFiU1kxUnFESGNHVGJOOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL3ByaXZhY3ktcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792494851),
('WyJCt2V0fInOAL5lSclhiLJ7QBxIhrpbg1Up2yoX', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkFBR0hZN3RKVzBjeTBTSldDWDBmN2RnMlNnTU9TU2FCaHljNVJ0WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2dyaWV2YW5jZS1yZWRyZXNzYWwtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792583799),
('X5iLQpPKBhm8QAHnZmMLwxmSSGFEfpzPgySao2ru', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGdtdW9vcENvOTRrQ2o0bklQdkI4d0luTDVQU3JhSlBrbHNUdzdyRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792139730),
('x6gB4CdLLFuvtDElUBmku1LIwxGQhWZY8uBbR5MH', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiak5acDB1cjdBeWZzRUdqa1FUbFl5c1RWSGNoRldvWnZ2TE1NVXE3SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2dyaWV2YW5jZS1yZWRyZXNzYWwtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792497522),
('xAWqdcUCkPAydhpE9fO3q13WIVXysA3H2Ugo9j7p', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFk1NXFLRTV6N0JaSU5VYk5RdWdRYnNpN1EyMFIyc09Gb2pvVHIyeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2dyaWV2YW5jZS1yZWRyZXNzYWwtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792496165),
('XTEcVPRwhB2Hy81R7wzE7VvLpraj8bJtIFnD4qbz', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUpZWUY4cnp1a3h4ckF6RlI0ZmJmTk5tTEdYVWZEMDhGejBQOUJZMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792124231),
('xWkKcMdPuWBzc7RRXHID1GFdjJRZaEHbwc40U8ob', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaENaRnlNTTVndGxacEJDM2FMU1dXVVpoSko2R0FNMWg3U1A5NUE1TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792233112),
('YdmRTMwPjTKOz1HlT168GKT57cwqAkt4JFK2JR7b', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNG11R2hIRnJlUkFSVVFTVmlNZDMzN2ZRblVydUhRTTZaNWFLMFl1SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582653),
('YJptBg8Eu2NOQvf5GoSZXJgAOxwaV8l80qF1lj3O', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaE9ubm1xemdsZU9jcHVhYWxQN3RmR2xvSGdtYnlnelBWOHV2bFRDNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792214175),
('YpufaPd5flrZeW0dGVWwIhAXmjjfIcyl1D9NLZLa', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0VweEFrTmlKa3NPUElhTkZPdGptZEpjY3VyVFFxYU9ROE1XdEpBTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792229044),
('YStELsMKNwkFlvXkIniKRgzS244puwNX1eluYboT', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTldFZ2Y3TnN6cGFpSExKS1RFYWxVMDRoQTZSOWNPSnBBM3FOZkFsbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Qvd2lzZWZpbmFpL2FnZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1792582296);

-- --------------------------------------------------------

--
-- Table structure for table `site_options`
--

DROP TABLE IF EXISTS `site_options`;
CREATE TABLE IF NOT EXISTS `site_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `option_key` varchar(255) NOT NULL,
  `option_value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `site_options`
--

INSERT INTO `site_options` (`id`, `rec_date`, `option_key`, `option_value`) VALUES
(1, '2026-09-26 12:25:18', 'newinvoiceno', '4'),
(2, '2024-04-18 11:05:19', 'account-msg-customer', 'For the Customers who have given other customer referrals to the company, it would be compulsory for them to submit their kyc Documents to the company within 30 days. If not submitted, all the payouts of the Customer will be automatically cancelled To  get the cancelled payout, you can contact the company and discuss it.'),
(3, '2025-02-27 20:11:42', 'sa-wp-remarketing', '#'),
(4, '2025-02-27 20:11:42', 'sa-wp-getoffer', '#'),
(5, '2025-02-27 20:11:42', 'sa-wp-payment-success', '#'),
(6, '2025-02-27 20:11:42', 'sa-wp-username-password', '#'),
(7, '2025-02-27 20:11:42', 'la-wp-remarketing', '#'),
(8, '2025-02-27 20:11:42', 'la-wp-getoffer', '#'),
(9, '2025-02-27 20:11:42', 'la-wp-payment-success', '#'),
(10, '2025-02-27 20:11:42', 'la-wp-username-password', '#'),
(11, '2025-06-03 14:46:05', 'last_agent_id', '5'),
(12, '2025-07-07 13:16:51', 'last_self_agent_id', '#'),
(13, '2025-07-31 09:03:19', 'last_assistant_id', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sms_list`
--

DROP TABLE IF EXISTS `sms_list`;
CREATE TABLE IF NOT EXISTS `sms_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` tinyint NOT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `message` mediumtext NOT NULL,
  `isActive` tinyint NOT NULL COMMENT '1=active, 0=not active',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sms_list`
--

INSERT INTO `sms_list` (`id`, `rec_date`, `type`, `slug`, `title`, `message`, `isActive`) VALUES
(1, '2025-08-21 17:46:01', 1, 'get_offer', 'Get Offer', 'Congrats! Your Rs.{#varamount#}/- Loan has been Pre-Approved! Get Money Directly in Your Bank A/C. Get Offer Now https://kbzp.in/KRDTBZ/xgejd wisefinai', 1),
(2, '2025-08-22 17:04:21', 1, 'remarketing_sms', 'Remarketing SMS', 'Congrats! Your Rs.{#varamount#}/- Loan has been Pre-Approved! Get Money Directly in Your Bank A/C. Get Offer Now https://kbzp.in/KRDTBZ/xgejd wisefinai', 1),
(3, '2025-08-12 14:43:13', 1, 'payment_unsuccessful', 'Payment Unsuccessful', 'Dear Customer, Your payment for wisefinai\'s Self-Apply Plan was unsuccessful. Please use alternate payment method. Pay Now https://kbzp.in/KRDTBZ/xgejd', 1),
(4, '2025-05-21 00:41:41', 1, 'payment_successful', 'Payment Successful', 'Dear Customer, Your Payment for Self-Apply Plan has been successful! Check your reg. email and login to customer portal to proceed ahead. Thanks, wisefinai', 1),
(6, '2025-08-26 14:41:01', 2, 'get_offer', 'Get Offer', 'Congrats! Your Rs.{#varamount#}/- Loan has been Pre-Approved! Get Money Directly in Your Bank A/C. Get Offer Now https://kbzp.in/KREDBA/idftd wisefinai', 1),
(5, '2025-06-07 15:36:01', 1, 'forgot_password', 'Forgot Password', 'Dear Customer, your new password for wisefinai Customer portal is successfully generated. New password is {#varpassword#}. Thanks, wisefinai', 1),
(7, '2025-08-26 14:39:28', 2, 'remarketing_sms', 'Remarketing SMS', 'Congrats! Your Rs.{#varamount#}/- Loan has been Pre-Approved! Get Money Directly in Your Bank A/C. Get Offer Now https://kbzp.in/KREDBA/idftd wisefinai', 1),
(8, '2025-08-27 12:14:50', 2, 'payment_unsuccessful', 'Payment Unsuccessful', 'Dear Customer, Your payment for wisefinai\'s Hire Agent Plan was unsuccessful. Please use alternate payment method. Pay Now https://kbzp.in/KREDBA/idftd', 1),
(9, '2025-05-21 00:45:47', 2, 'payment_successful', 'Payment Successful', 'Dear Customer, Your Payment for Hire Agent Plan has been successful! Check your reg. email and login to customer portal to proceed ahead. Thanks, wisefinai', 1),
(10, '2025-06-07 15:36:30', 2, 'forgot_password', 'Forgot Password', 'Dear Customer, your new password for wisefinai Customer portal is successfully generated. New password is {#varpassword#}. Thanks, wisefinai', 1),
(11, '2025-05-22 14:50:38', 3, 'ticket_raised', 'Support Request  – Ticket Raised', 'Hello, your request ticket is raised in our system & Ticket Id is {#varticket#}. We will contact you within 24-48 hours to discuss further. Regards, wisefinai', 1),
(12, '2025-05-22 14:50:38', 3, 'ticket_underprocess', 'Support Request – Under Process', 'Hello, Your request with Ticket ID: {#varticket#} is under process. The query will be solved soon and it will be informed to you shortly. Thanks, wisefinai', 1),
(13, '2025-05-22 14:56:52', 3, 'ticket_noresponse', 'Support Request – No-response Closed', 'Hello, Your request with Ticket Id: {#varticket#} is closed as the company tried calling you for the last 3 days but got no response. Thanks, wisefinai', 1),
(14, '2025-05-22 14:56:52', 3, 'ticket_solved', 'Support Request – Solved', 'Hello, Your request with Ticket Id: {#varticket#} is Solved. We thank you for the opportunity to serve you. Thanks, wisefinai', 1),
(15, '2025-05-22 14:57:18', 3, 'ticket_closed', 'Support Request – Closed', 'Hello, Your request with Ticket Id: {#varticket#} is Closed. We thank you for the opportunity to serve you. Thanks, wisefinai', 1),
(16, '2025-06-09 17:58:15', 1, 'sales_cycle_days', 'After Sales Cycle - 1,2,3,5 days', 'Dear Customer, We Hope You\'ve Utilised Loan Self Login links. If not, click https://wisefinai.com/customer/login and check Pre-Approved Loan section. Thanks! wisefinai', 1),
(17, '2025-09-10 10:04:47', 1, 'sales_cycle_closed', 'After Sales Cycle - Closed', 'Dear Customer, We hope our services have benefited you. If you\'re still confused how to apply for loan, call our customer care on 9724206519 wisefinai', 1),
(18, '2025-05-22 15:02:47', 2, 'sales_cycle_closed', 'After Sales Cycle - Closed', 'Dear Customer, We hope our services guided you well. If you\'ve any queries, kindly call on 9724206519 Mon-Sat 10am-5pm on business days. Thanks, wisefinai', 1),
(19, '2025-05-27 12:27:50', 2, 'app_remarks_add', 'Application Remarks Add', 'Dear Customer, a new update on your service is displayed on your customer portal. Check here https://wisefinai.com/customer/login wisefinai', 1),
(20, '2025-07-19 12:30:41', 1, 'verified_customer', 'Verified Customer', 'Dear Customer, We hope you will make the most of the guidance provided by our Company Executive. For any further assistance, please call on (9724206519) from Monday-Saturday between (10:00 AM to 5:00 PM) only business days. Thanks, wisefinai', 1),
(21, '2025-08-21 17:38:35', 4, 'get_offer_', 'Get Offer', 'Congrats! Your Rs.{#varamount#}/- Loan has been Pre-Approved! Get Money Directly in Your Bank A/C. Get Offer Now https://kbzp.in/KDBAZR/rgvfa wisefinai', 1),
(23, '2025-08-21 17:37:44', 4, 'get_offer', 'Get Offer', 'Congrats! Your Rs.{#varamount#}/- Loan has been Pre-Approved! Get Money Directly in Your Bank A/C. Get Offer Now https://kbzp.in/KDBAZR/rgvfa wisefinai', 1),
(24, '2025-09-10 10:14:25', 4, 'payment_unsuccessful', 'Payment Unsucessful', 'Dear Customer, Your payment for wisefinai\'s Loan Assistant Plan was unsuccessful. Please use alternate payment method. Pay Now https://kbzp.in/KDBAZR/rgvfa', 1),
(25, '2025-08-07 19:37:35', 4, 'payment_successful', 'Payment Successful', 'Dear Customer, Your Payment for Loan Assistant Plan has been successful! Check your reg. email and login to customer portal to proceed ahead. Thanks,wisefinai', 1),
(26, '2025-08-07 19:37:35', 4, 'forgot_password', 'Forget Password', 'Dear Customer, your new password for wisefinai Customer portal is successfully generated. New password is {#varpassword#}. Thanks, wisefinai', 1),
(27, '2025-08-11 15:41:32', 4, 'pre_approved', 'Pre Approved', 'Dear Applicant! You`re Eligible for Rs.{#varamount#}/- Pre-Approved Loan Offer! Get Money Direct in Your Bank A/c. Apply Now https://kbzp.in/KDBAZR/rgvfa wisefinai', 1),
(28, '2025-08-21 17:31:17', 4, 'remarketing_sms', 'Remarketing SMS', 'Congrats! Your Rs.{#varamount#}/- Loan has been Pre-Approved! Get Money Directly in Your Bank A/C. Get Offer Now https://kbzp.in/KDBAZR/rgvfa wisefinai', 1),
(29, '2025-08-13 15:24:16', 4, 'sales_cycle_closed', 'After Sales Cycle - Closed', 'Dear Customer, We hope our services have benefited you. If you\'re still confused how to apply for loan, call our customer care on 9724206519 wisefinai', 1),
(30, '2025-06-09 17:58:15', 2, 'sales_cycle_days', 'After Sales Cycle - 1,2,3,5 days', 'Dear Customer, We Hope You\'ve Utilised Loan Self Login links. If not, click https://wisefinai.com/customer/login and check Pre-Approved Loan section. Thanks! wisefinai', 1),
(31, '2025-06-09 17:58:15', 4, 'sales_cycle_days', 'After Sales Cycle - 1,2,3,5 days', 'Dear Customer, We Hope You\'ve Utilised Loan Self Login links. If not, click https://wisefinai.com/customer/login and check Pre-Approved Loan section. Thanks! wisefinai', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_log`
--

DROP TABLE IF EXISTS `sms_log`;
CREATE TABLE IF NOT EXISTS `sms_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `crontype` varchar(50) NOT NULL,
  `parentid` int NOT NULL,
  `cronname` varchar(255) NOT NULL,
  `msgcount` int NOT NULL,
  `msgresponse` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `source_entry`
--

DROP TABLE IF EXISTS `source_entry`;
CREATE TABLE IF NOT EXISTS `source_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  `utm_source` varchar(125) DEFAULT NULL,
  `utm_campaign` varchar(255) DEFAULT NULL,
  `utm_medium` varchar(125) DEFAULT NULL,
  `source_id` varchar(299) DEFAULT NULL,
  `utm_referral` varchar(99) DEFAULT NULL,
  `client_ip` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `source_entry`
--

INSERT INTO `source_entry` (`id`, `rec_date`, `user_id`, `utm_source`, `utm_campaign`, `utm_medium`, `source_id`, `utm_referral`, `client_ip`) VALUES
(1, '2025-12-28 15:11:28', 1, 'web', '', 'direct', NULL, NULL, '127.0.0.1'),
(2, '2026-02-09 11:21:02', 1, 'web', '', 'direct', NULL, NULL, '127.0.0.1'),
(3, '2026-02-09 12:06:41', 2, 'web', '', 'direct', '', '', '127.0.0.1'),
(4, '2026-02-09 12:20:59', 2, 'web', '', 'direct', '', '', '127.0.0.1'),
(5, '2026-02-09 12:23:15', 3, 'web', '', 'direct', NULL, NULL, '127.0.0.1'),
(6, '2026-02-13 10:36:52', 4, 'web', '', 'direct', NULL, NULL, '127.0.0.1'),
(7, '2026-04-08 10:16:37', 1, 'web', '', 'direct', NULL, NULL, '125.99.174.37'),
(8, '2026-07-16 17:54:41', 1, 'web', '', 'direct', NULL, NULL, '::1'),
(9, '2026-07-17 12:18:29', 1, 'web', '', 'direct', '', '', '::1'),
(10, '2026-07-20 12:47:41', 1, 'web', '', 'direct', '', '', '::1'),
(11, '2026-09-22 17:20:27', 3, 'web', '', 'direct', '', '', '::1'),
(12, '2026-09-26 12:22:43', 3, 'web', '', 'direct', '', '', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `staff_tasks`
--

DROP TABLE IF EXISTS `staff_tasks`;
CREATE TABLE IF NOT EXISTS `staff_tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `assignee_id` int NOT NULL,
  `follower_id` int NOT NULL,
  `task_title` varchar(299) NOT NULL,
  `task_desc` longtext NOT NULL,
  `attachment` varchar(299) DEFAULT NULL,
  `priority` varchar(55) NOT NULL,
  `task_module` varchar(199) NOT NULL,
  `task_status` varchar(55) NOT NULL,
  `completion_date` datetime DEFAULT NULL,
  `remarks` text,
  `projects` varchar(299) NOT NULL,
  `task_goal` varchar(55) NOT NULL,
  `isActive` tinyint NOT NULL DEFAULT '1' COMMENT '1 = active, 0= deactive',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0= no, 1= yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subpaisa_entry`
--

DROP TABLE IF EXISTS `subpaisa_entry`;
CREATE TABLE IF NOT EXISTS `subpaisa_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entryfor` int NOT NULL DEFAULT '0' COMMENT '1=Customer,2=Channel,11=SelfApply,12=Loan Agent, 3=LA_Offer_1,4=LA_Offer_2,5=LA_Offer_3,6=SA_Offer_1,7=SA_Offer_2,8=SA_Offer_3,9=SA_Offer_4,10=LA_Offer_4',
  `userid` int NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `referenceid` varchar(256) DEFAULT NULL,
  `txstatus` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_requests`
--

DROP TABLE IF EXISTS `support_requests`;
CREATE TABLE IF NOT EXISTS `support_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `ticketno` varchar(50) NOT NULL,
  `usertype` int NOT NULL DEFAULT '1' COMMENT '1 = selfapply, 2 = guest user, 3 = loan agent',
  `firstname` varchar(125) NOT NULL,
  `lastname` varchar(125) NOT NULL,
  `mobile` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL,
  `issuetype` varchar(255) NOT NULL,
  `cardnumber` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '0=No,1=Yes',
  `serverip` varchar(99) DEFAULT NULL,
  `isDelete` int NOT NULL DEFAULT '0' COMMENT '0=No,1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_request_chat`
--

DROP TABLE IF EXISTS `support_request_chat`;
CREATE TABLE IF NOT EXISTS `support_request_chat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `requestid` int NOT NULL,
  `remarks` longtext NOT NULL,
  `staffid` int NOT NULL,
  `isDelete` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_documents`
--

DROP TABLE IF EXISTS `user_documents`;
CREATE TABLE IF NOT EXISTS `user_documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int NOT NULL,
  `profilephoto` varchar(256) DEFAULT NULL,
  `aadharcard` varchar(256) DEFAULT NULL,
  `aadharcard_number` varchar(256) DEFAULT NULL,
  `pancard` varchar(256) DEFAULT NULL,
  `pancard_number` varchar(256) DEFAULT NULL,
  `cancelcheque` varchar(256) DEFAULT NULL,
  `lightbill` varchar(256) DEFAULT NULL,
  `bankstatement` varchar(256) DEFAULT NULL,
  `formsixteen` varchar(256) DEFAULT NULL,
  `salaryslip` varchar(256) DEFAULT NULL,
  `businessproof` varchar(256) DEFAULT NULL,
  `itreturn` varchar(256) DEFAULT NULL,
  `remarks` varchar(256) DEFAULT NULL,
  `isVerified` tinyint NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_offers`
--

DROP TABLE IF EXISTS `user_offers`;
CREATE TABLE IF NOT EXISTS `user_offers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int NOT NULL,
  `offerdata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_offers`
--

INSERT INTO `user_offers` (`id`, `rec_date`, `userid`, `offerdata`) VALUES
(1, '2026-07-16 17:54:56', 1, '[{\"apply_id\":29,\"rec_date\":\"2025-06-05 12:49:55\",\"bankid\":8,\"roi\":10.5,\"bank_name\":\"Prfer\",\"bank_image\":\"1738654938.png\",\"tenures\":60,\"option1\":\"100% Online Process\",\"option2\":\"Convenient EMI Options\",\"option3\":\"Min. Paperwork\",\"option4\":null,\"option5\":null,\"title\":\"You\'re Eligible For Pre-Approved Loan Offer | Quick Process\",\"applyurl\":\"https:\\/\\/www.prefr.com\\/personal-loan\",\"loanAmount\":802337,\"is_recommended\":1}]'),
(2, '2026-09-22 17:01:59', 2, '[{\"apply_id\":32,\"rec_date\":\"2025-06-28 16:05:55\",\"bankid\":13,\"roi\":10.5,\"bank_name\":\"Faircent\",\"bank_image\":\"1746170179.png\",\"tenures\":60,\"option1\":\"100% Online Process\",\"option2\":\"Convenient EMI Options\",\"option3\":\"Min. Paperwork\",\"option4\":null,\"option5\":null,\"title\":\"Your Eligibility Matches The Criteria | Easy & Quick Process\",\"applyurl\":\"https:\\/\\/in.faircentpro.com\\/?utm_source=wl&utm_medium=Mailer&campaign_name=Borrower_Partner&agf=WLA113767\",\"loanAmount\":617182,\"is_recommended\":1}]'),
(3, '2026-09-22 17:20:42', 3, '[{\"apply_id\":29,\"rec_date\":\"2025-06-05 12:49:55\",\"bankid\":8,\"roi\":10.5,\"bank_name\":\"Prfer\",\"bank_image\":\"1738654938.png\",\"tenures\":60,\"option1\":\"100% Online Process\",\"option2\":\"Convenient EMI Options\",\"option3\":\"Min. Paperwork\",\"option4\":null,\"option5\":null,\"title\":\"You\'re Eligible For Pre-Approved Loan Offer | Quick Process\",\"applyurl\":\"https:\\/\\/www.prefr.com\\/personal-loan\",\"loanAmount\":195000,\"is_recommended\":1}]');

-- --------------------------------------------------------

--
-- Table structure for table `user_payout_documents`
--

DROP TABLE IF EXISTS `user_payout_documents`;
CREATE TABLE IF NOT EXISTS `user_payout_documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int NOT NULL,
  `gstdoc` varchar(256) DEFAULT NULL,
  `gstdoc_number` varchar(256) DEFAULT NULL,
  `aadharcard` varchar(256) DEFAULT NULL,
  `aadharcard_number` varchar(256) DEFAULT NULL,
  `pancard` varchar(256) DEFAULT NULL,
  `pancard_number` varchar(256) DEFAULT NULL,
  `cancelcheque` varchar(256) DEFAULT NULL,
  `remarks` varchar(256) NOT NULL,
  `isVerified` tinyint NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_registrations`
--

DROP TABLE IF EXISTS `user_registrations`;
CREATE TABLE IF NOT EXISTS `user_registrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int DEFAULT NULL,
  `offerpage` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = none, 1 = la offer 1, 2 = la offer 2, 3 = la offer 3, 4 = sa offer 1, 5 = sa offer 2, 6 = sa offer 3, 7 = sa offer 4, 8 = la offer 4, 9 = sa offer 5, 10 = la offer 5',
  `rec_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(55) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pancard` varchar(55) DEFAULT NULL,
  `pincode` varchar(55) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(115) DEFAULT NULL,
  `process_step` tinyint NOT NULL DEFAULT '0',
  `refcode` varchar(55) DEFAULT NULL,
  `acc_type` tinyint NOT NULL DEFAULT '0' COMMENT '0=none, 1=selfapply, 2=loan-agent, 3=loan assistant',
  `company_name` varchar(99) DEFAULT NULL,
  `company_gst` varchar(99) DEFAULT NULL,
  `isUser` tinyint NOT NULL DEFAULT '1' COMMENT '\r\n1=steps,2=register',
  `iAgree` tinyint NOT NULL DEFAULT '1' COMMENT '0=checked,1=unchecked',
  `isDnd` tinyint NOT NULL DEFAULT '0' COMMENT '0=no, 1=yes',
  `isVerified` tinyint NOT NULL DEFAULT '0' COMMENT '0=no, 1=yes',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0=active, 1=delete',
  `isActive` tinyint NOT NULL DEFAULT '1' COMMENT '1= active, 0=noactive',
  PRIMARY KEY (`id`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_registrations`
--

INSERT INTO `user_registrations` (`id`, `staff_id`, `offerpage`, `rec_date`, `update_date`, `first_name`, `last_name`, `mobile`, `email`, `password`, `dob`, `pancard`, `pincode`, `city`, `state`, `process_step`, `refcode`, `acc_type`, `company_name`, `company_gst`, `isUser`, `iAgree`, `isDnd`, `isVerified`, `isDelete`, `isActive`) VALUES
(1, NULL, 0, '2026-07-16 10:48:06', '2026-09-07 15:35:54', 'Verloop', 'Web', '9408881214', 'verloop.dev4@gmail.com', '$2y$12$axLISfYSZV8nbmwg22EvjOzgQxCDpDaBJg8WvoJ3DWW3uZQTE.VIu', NULL, NULL, '395001', 'Surat', 'Gujarat', 9, 'ver1214', 2, NULL, NULL, 2, 1, 0, 0, 0, 1),
(2, 5, 0, '2026-09-22 17:00:59', '2026-09-22 17:00:59', 'Verloop', 'Web', '9898989898', 'verloop.dev4@gmail.com', '$2y$12$DP8H0vJfYZPw8RN/MmN5LuPgBPagqNDww.CYKYf19GllIALFPTWzu', NULL, NULL, '395001', 'surat', 'Gujarat', 5, 'ver9898', 2, NULL, NULL, 2, 0, 0, 0, 0, 1),
(3, 5, 0, '2026-09-26 12:25:18', '2026-09-26 12:25:18', 'Verloop', 'Web', '9409665995', 'verloop.dev4@gmail.com', '$2y$12$RgIXTW/hFfuFD0pdrDgMeuBRVjD/UXydWR8j9FdJyhbPqci3d4HOu', NULL, NULL, '395001', 'Surat', 'Gujarat', 5, 'ver5995', 2, NULL, NULL, 2, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_tree`
--

DROP TABLE IF EXISTS `user_tree`;
CREATE TABLE IF NOT EXISTS `user_tree` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refferaltype` int NOT NULL DEFAULT '1' COMMENT '1=Customer, 2=Channel',
  `refferaluserid` int NOT NULL,
  `subuserid` int NOT NULL,
  `payout` int NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  `payout_date` date DEFAULT NULL,
  `payout_amount` float(11,2) NOT NULL DEFAULT '0.00',
  `order_amount` float(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_tree`
--

INSERT INTO `user_tree` (`id`, `rec_date`, `refferaltype`, `refferaluserid`, `subuserid`, `payout`, `payout_date`, `payout_amount`, `order_amount`) VALUES
(1, '2026-09-22 17:20:27', 1, 3, 3, 0, NULL, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `vegaah_entry`
--

DROP TABLE IF EXISTS `vegaah_entry`;
CREATE TABLE IF NOT EXISTS `vegaah_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entryfor` int NOT NULL DEFAULT '0' COMMENT '11=SelfApply,12=Loan Agent,3=LA_Offer_1,4=LA_Offer_2,5=LA_Offer_3,6=SA_Offer_1,7=SA_Offer_2,8=SA_Offer_3,9=SA_Offer_4,10=LA_Offer_4	',
  `userid` int NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `referenceid` varchar(256) DEFAULT NULL,
  `txstatus` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zaakpay_entry`
--

DROP TABLE IF EXISTS `zaakpay_entry`;
CREATE TABLE IF NOT EXISTS `zaakpay_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entryfor` int NOT NULL DEFAULT '0' COMMENT '11=SelfApply,12=Loan Agent,3=LA_Offer_1,4=LA_Offer_2,5=LA_Offer_3,6=SA_Offer_1,7=SA_Offer_2,8=SA_Offer_3,9=SA_Offer_4,10=LA_Offer_4',
  `userid` int NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `statuscode` varchar(256) DEFAULT NULL,
  `transactionid` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zwitch_entry`
--

DROP TABLE IF EXISTS `zwitch_entry`;
CREATE TABLE IF NOT EXISTS `zwitch_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `entryfor` int NOT NULL DEFAULT '0',
  `userid` int NOT NULL,
  `orderid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referenceid` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txstatus` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentmode` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
