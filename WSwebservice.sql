-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 06, 2023 at 10:21 PM
-- Server version: 10.3.38-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvsvvn_napthe`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_momo`
--

CREATE TABLE `account_momo` (
  `id` int(11) NOT NULL,
  `user_id` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `Name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `imei` text DEFAULT NULL,
  `AAID` text DEFAULT NULL,
  `TOKEN` text DEFAULT NULL,
  `ohash` text DEFAULT NULL,
  `SECUREID` text DEFAULT NULL,
  `rkey` text DEFAULT NULL,
  `rowCardId` text DEFAULT NULL,
  `authorization` longtext DEFAULT NULL,
  `refreshToken` longtext DEFAULT NULL,
  `agent_id` text DEFAULT NULL,
  `setupKeyDecrypt` text DEFAULT NULL,
  `setupKey` text DEFAULT NULL,
  `sessionkey` text DEFAULT NULL,
  `RSA_PUBLIC_KEY` longtext DEFAULT NULL,
  `BALANCE` text DEFAULT NULL,
  `BankVerify` text DEFAULT NULL,
  `partnerCode` text DEFAULT NULL,
  `device` text DEFAULT NULL,
  `hardware` text DEFAULT NULL,
  `facture` text DEFAULT NULL,
  `MODELID` text DEFAULT NULL,
  `TimeLogin` text DEFAULT NULL,
  `errorDesc` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `today` int(11) DEFAULT 0,
  `month` int(11) DEFAULT 0,
  `today_gd` int(11) DEFAULT 0,
  `noidungtra` text DEFAULT NULL,
  `limit_day` int(11) DEFAULT NULL,
  `limit_month` int(11) DEFAULT NULL,
  `try` int(11) NOT NULL DEFAULT 0,
  `callback_url` text DEFAULT NULL,
  `uid` text DEFAULT NULL,
  `timemua` int(20) DEFAULT 0,
  `timehethan` bigint(20) UNSIGNED DEFAULT 0,
  `status_ip_white` int(20) DEFAULT 2,
  `ip_white` text DEFAULT NULL,
  `tinhtrang` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `short_name` text NOT NULL,
  `image` text NOT NULL,
  `accountNumber` text NOT NULL,
  `accountName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `short_name` text DEFAULT NULL,
  `bank_name` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `accountName` text DEFAULT NULL,
  `accountNumber` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_auto`
--

CREATE TABLE `bank_auto` (
  `id` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `tranId` text NOT NULL,
  `payment_method` text NOT NULL,
  `amount` int(11) NOT NULL,
  `comment` text NOT NULL,
  `create_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `id` int(11) NOT NULL,
  `device` text DEFAULT NULL,
  `hardware` text DEFAULT NULL,
  `facture` text DEFAULT NULL,
  `MODELID` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`id`, `device`, `hardware`, `facture`, `MODELID`) VALUES
(1, 'SM-G532F', 'mt6735', 'samsung', 'samsung sm-g532gmt6735r58j8671gsw'),
(2, 'Junoo-gm251', 'mt6735', 'samsung', 'samsung sm-gdsadsa1gsw'),
(3, 'SM-A102U', 'a10e', 'Samsung', 'Samsung SM-A102U'),
(4, 'SM-A305FN', 'a30', 'Samsung', 'Samsung SM-A305FN'),
(5, 'HTC One X9 dual sim', 'htc_e56ml_dtul', 'HTC', 'HTC One X9 dual sim'),
(6, 'HTC 7060', 'cp5dug', 'HTC', 'HTC HTC_7060'),
(7, 'HTC D10w', 'htc_a56dj_pro_dtwl', 'HTC', 'HTC htc_a56dj_pro_dtwl'),
(8, 'Oppo realme X Lite', 'RMX1851CN', 'Oppo', 'Oppo RMX1851'),
(9, 'MI 9', 'equuleus', 'Xiaomi', 'Xiaomi equuleus');

-- --------------------------------------------------------

--
-- Table structure for table `dongtien`
--

CREATE TABLE `dongtien` (
  `id` int(11) NOT NULL,
  `sotientruoc` int(11) DEFAULT NULL,
  `sotienthaydoi` int(11) DEFAULT NULL,
  `sotiensau` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `noidung` text DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `user_id` text DEFAULT NULL,
  `trans_id` text DEFAULT NULL,
  `payment_method` text DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_time` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` text DEFAULT NULL,
  `device` text DEFAULT NULL,
  `create_date` text DEFAULT NULL,
  `action` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_balance`
--

CREATE TABLE `log_balance` (
  `id` int(11) NOT NULL,
  `money_before` text DEFAULT NULL,
  `money_change` text DEFAULT NULL,
  `money_after` text DEFAULT NULL,
  `time` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `user_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `create_date` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `content`, `create_date`, `status`) VALUES
(301, 'Thông báo hệ thống', '<p>Hỗ trợ đấu api cho các website chỉ bằng cốc cà phê</p>', '2022/12/06 15:20:32', 1),
(302, 'Thông báo hệ thống', '<p>Thường xuyên rút tiền momo tránh hậu quả đáng tiếc xảy ra</p>', '2023/03/06 21:46:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `send`
--

CREATE TABLE `send` (
  `id` int(11) NOT NULL,
  `momo_id` varchar(255) DEFAULT NULL,
  `tranId` varchar(11) NOT NULL,
  `partnerId` varchar(11) NOT NULL,
  `partnerName` mediumtext NOT NULL,
  `amount` varchar(10) NOT NULL,
  `comment` mediumtext NOT NULL,
  `time` mediumtext NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` varchar(32) NOT NULL,
  `status` varchar(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `ownerNumber` varchar(255) DEFAULT NULL,
  `ownerName` varchar(255) DEFAULT NULL,
  `data` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `send_bank`
--

CREATE TABLE `send_bank` (
  `id` int(11) NOT NULL,
  `momo_id` varchar(255) DEFAULT NULL,
  `tranId` varchar(11) NOT NULL,
  `partnerId` varchar(11) NOT NULL,
  `partnerName` mediumtext NOT NULL,
  `amount` varchar(10) NOT NULL,
  `comment` mediumtext NOT NULL,
  `time` mediumtext NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` varchar(32) NOT NULL,
  `status` varchar(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `balance` int(11) DEFAULT 0,
  `ownerNumber` varchar(255) DEFAULT NULL,
  `ownerName` varchar(255) DEFAULT NULL,
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'status_send_mail', '0'),
(2, 'title', 'system.cvsv.vn'),
(3, 'description', 'API MOMO MIỄN PHÍ CHO THUÊ API MOMO'),
(4, 'keywords', 'Website Cung Cấp Api Bank Giá Rẻ Tại Việt Nam,Cho thuê api giá rẻ tại Việt Nam'),
(5, 'author', 'ADMIN'),
(6, 'status_noti', '1'),
(7, 'status_update', '0'),
(8, 'hotline', '090.629.4614'),
(9, 'email', 'cvsvvn@gmail.com'),
(10, 'email_smtp', ''),
(11, 'pass_email_smtp', ''),
(12, 'session_login', '6400'),
(13, 'min_recharge', '1000'),
(14, 'time_delete_invoices', '2592000'),
(15, 'notification', '<p style=\"text-align: center;\"><b style=\"\"><font color=\"#ff0000\"><span style=\"font-family: Arial;\">Chào Mừng Bạn Đến Với Website Cho Thuê Api MM Giá Rẻ</span></font></b></p><p style=\"text-align: center;\"><b style=\"\"><font color=\"#ff0000\"><span style=\"font-family: Arial;\">--------------------------------------------------------------</span></font></b></p><p style=\"text-align: center;\"><b><span style=\"font-family: Arial;\">Hệ Thống Api Momo Của </span><a href=\"https://CvSv.Vn\" target=\"_blank\"><span style=\"font-family: Arial;\">CvSv.Vn</span></a></b></p><p style=\"text-align: center;\"><b><span style=\"font-family: Arial;\">Mua Code Website Tại: </span></b><a href=\"https://cvsv.vn/\" target=\"_blank\" style=\"font-weight: bolder; font-family: sans-serif; background-color: rgb(255, 255, 255); font-size: 1rem;\"><span style=\"font-family: Arial;\">CvSv.Vn</span></a></p><p style=\"text-align: center;\"><b><span style=\"font-family: Arial;\">Liên Hệ Hỗ Trợ Nhấn Vào Thanh Phía</span></b></p><p style=\"text-align: center;\"><b><span style=\"font-family: Arial;\">Dưới Bên Phải Nhaaaaa!</span></b></p>'),
(16, 'notications', ''),
(17, 'display_api_momo', '1'),
(18, 'limit_api_momo', '3'),
(19, 'money_api_momo', '15000'),
(20, 'status_tsr', '1'),
(21, 'token_mbbank', ''),
(22, 'status_momo', '1'),
(23, 'token_momo', ''),
(24, 'time_test_api', '86400'),
(25, 'noidungnap_momo', 'napcoin'),
(26, 'link_facebook', ''),
(27, 'favicon', '/assets/img/facition1.png'),
(28, 'link_zalo', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `token` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `device` text DEFAULT NULL,
  `otp` text DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  `total_money` int(11) NOT NULL DEFAULT 0,
  `banned` int(11) NOT NULL DEFAULT 0,
  `create_date` text DEFAULT NULL,
  `update_date` text DEFAULT NULL,
  `time_session` text DEFAULT NULL,
  `time_momo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_momo`
--
ALTER TABLE `account_momo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_auto`
--
ALTER TABLE `bank_auto`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_balance`
--
ALTER TABLE `log_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send`
--
ALTER TABLE `send`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_bank`
--
ALTER TABLE `send_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_momo`
--
ALTER TABLE `account_momo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_auto`
--
ALTER TABLE `bank_auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `log_balance`
--
ALTER TABLE `log_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `send`
--
ALTER TABLE `send`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `send_bank`
--
ALTER TABLE `send_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
