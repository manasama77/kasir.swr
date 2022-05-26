-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2022 at 08:10 AM
-- Server version: 10.5.13-MariaDB-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u2774448_kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblbank`
--

CREATE TABLE `tblbank` (
  `bank_id` int(11) NOT NULL,
  `bank_code` varchar(10) NOT NULL,
  `bank_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblbank`
--

INSERT INTO `tblbank` (`bank_id`, `bank_code`, `bank_name`) VALUES
(1, 'BRI', 'Bank Rakyat Indonesia'),
(2, 'BMI', 'Bank Mandiri'),
(3, 'BCA', 'Bank Central Asia'),
(4, 'BNI', 'Bank Negara Indonesia'),
(5, 'BTN', 'Bank Tabungan Negara'),
(6, 'BCN', 'Bank CIMB Niaga'),
(7, 'BPN', 'Bank Panin'),
(8, 'BPT', 'Bank Permata'),
(9, 'BMG', 'Bank Mega'),
(10, 'BDN', 'Bank Danamon');

-- --------------------------------------------------------

--
-- Table structure for table `tblbranch`
--

CREATE TABLE `tblbranch` (
  `branch_id` int(11) NOT NULL,
  `office_type` int(11) NOT NULL,
  `branch_code` varchar(10) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `branch_address` varchar(4000) NOT NULL,
  `branch_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblbranch`
--

INSERT INTO `tblbranch` (`branch_id`, `office_type`, `branch_code`, `branch_name`, `branch_address`, `branch_status`) VALUES
(11, 1, 'BR19090011', 'SWR Frozen Food', '<p style=\"text-align:center\">Jl. Raya Pendidikan No.87 F RT. 03 / RW. 03</p>\r\n\r\n<p style=\"text-align:center\">Kel. Pengasinan, Kec. Gunung Sindur, Bogor 16340</p>\r\n\r\n<p style=\"text-align:center\">081298175687 - 081510810631</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbuffer`
--

CREATE TABLE `tblbuffer` (
  `kategori_barang` varchar(255) DEFAULT NULL,
  `satuan_barang` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `modal` decimal(18,0) DEFAULT NULL,
  `grosir` decimal(18,0) DEFAULT NULL,
  `harga_terendah` decimal(18,0) DEFAULT NULL,
  `harga_tertinggi` decimal(18,0) DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany_setting`
--

CREATE TABLE `tblcompany_setting` (
  `company_name` varchar(500) NOT NULL,
  `address` varchar(2000) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sales_notes` varchar(4000) DEFAULT NULL,
  `logo_filename` varchar(100) DEFAULT NULL,
  `logo_preview` varchar(2000) DEFAULT NULL,
  `sales_exchange_limit` int(11) NOT NULL,
  `wholesale_limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblcompany_setting`
--

INSERT INTO `tblcompany_setting` (`company_name`, `address`, `city`, `phone`, `mobile`, `email`, `sales_notes`, `logo_filename`, `logo_preview`, `sales_exchange_limit`, `wholesale_limit`) VALUES
('SWR Frozen Food', 'Jl. Raya Pendidikan No.87 F\r\n<br />RT. 03 / RW. 03 Kel. Pengasinan,\r\n<br />Kec.Gunung Sindur,\r\n<br />Bogor 16340', 'Bogor', '0812981175687', '081510810631', 'swrfrozenfood@gmail.com', '<div class=\"h8 text-center\"><em>Barang yang sudah di beli </em></div>\r\n\r\n<div class=\"h8 text-center\"><em>&nbsp;&nbsp;tidak bisa ditukar</em></div>\r\n\r\n<div class=\"h8 text-center\"><em>&nbsp; &nbsp;Terima Kasih</em></div>\r\n', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblitem`
--

CREATE TABLE `tblitem` (
  `item_id` int(11) NOT NULL,
  `stock_category_id` int(11) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `item_code` varchar(20) NOT NULL,
  `item_name` varchar(500) NOT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `minimum_stock` int(10) UNSIGNED NOT NULL,
  `maximum_stock` int(11) NOT NULL,
  `foto_filename` varchar(100) DEFAULT NULL,
  `foto_preview` varchar(2000) DEFAULT NULL,
  `merk_id` int(10) UNSIGNED DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblitem`
--

INSERT INTO `tblitem` (`item_id`, `stock_category_id`, `unit_id`, `item_code`, `item_name`, `barcode`, `minimum_stock`, `maximum_stock`, `foto_filename`, `foto_preview`, `merk_id`, `keterangan`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(123, 1, 1, '8997207137313', 'Vitalia Burger Sapi 250gr', '8997207137313', 1, 0, '', '', 8, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 17:54:48'),
(124, 1, 1, '8997207136323', 'Vitalia Burger Sapi 280gr', '8997207136323', 1, 0, '', '', 8, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-05 08:10:06'),
(125, 1, 1, '8997207137948', 'Vitalia Bakso Sapi Bsr 640gr', '8997207137948', 1, 0, '', '', 8, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 18:01:04'),
(127, 1, 1, '8997023078364', 'Rious Gold Cake Original 200gr', '8997023078364', 1, 0, '', '', 11, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 16:54:15'),
(128, 1, 1, '8997023078678', 'Rious Gold Cake Choco Cheese 200gr', '8997023078678', 1, 0, '', '', 11, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 17:12:34'),
(129, 1, 1, '8997023078685', 'Rious Gold Cake Lemon Cheese 200gr', '8997023078685', 1, 0, '', '', 11, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 17:14:42'),
(130, 1, 1, '8997023078692', 'Rious Gold Cake Light Cheese 200gr', '8997023078692', 1, 0, '', '', 11, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 17:17:22'),
(132, 1, 1, '8997207137351', 'Rious Pizza Original 180gr', '8997207137351', 1, 0, '', '', 11, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 16:39:39'),
(135, 1, 1, '8995229801823', 'Belfoods Uenak Stik 500gr', '8995229801823', 1, 0, '', '', 12, 'F1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 19:27:09'),
(160, 1, 1, '8995229800109', 'Belfoods Spicy Wing 500gr', '8995229800109', 1, 0, '', '', 12, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-03 17:37:48'),
(163, 1, 1, '8994130899622', 'Belfoods Favorite Kentang 500gr', '8994130899622', 1, 0, '', '', 12, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 19:19:57'),
(175, 1, 1, '8995229801588', 'Belfoods Royal Cheesy Bites 500gr', '8995229801588', 1, 0, '', '', 12, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-03 15:53:11'),
(177, 1, 1, '8997014356013	', 'Cedea Baso Ikan Besar 500gr', '8997014356013	', 1, 0, '', '', 13, 'F2', 1, '2022-03-08 01:49:01', 1, '2022-04-08 19:57:35'),
(186, 1, 1, '8997014357386', 'Cedea Chikuwa Mini 500gr ', '8997014357386', 1, 0, '', '', 13, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 15:58:11'),
(187, 1, 1, '8997014356723', 'Cedea Chikuwa MINI 1KG', '8997014356723', 1, 0, '', '', 13, 'R1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:33:31'),
(188, 1, 1, '8997014352626', 'Cedea Chikuwa Mini Tray 250gr', '8997014352626', 1, 0, '', '', 13, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 16:17:24'),
(192, 1, 1, '8997014352657', 'Cedea Crab Stik 250gr', '8997014352657', 1, 0, '', '', 13, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 16:13:43'),
(193, 1, 1, '8997014356730', 'Cedea Crab Stik 1KG', '8997014356730', 0, 0, 'MY_TASTE_SAUCE_BULGOGI_500_gr.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/MY_TASTE_SAUCE_BULGOGI_500_gr.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 13, '', 1, '2022-03-08 01:49:01', 1, '2022-04-04 09:28:12'),
(194, 1, 1, '8997014357065', 'Cedea Duo Twister 500gr', '8997014357065', 2, 0, '', '', 13, 'R1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:03:08'),
(195, 1, 1, '8997014357096', 'Cedea Flower Twister 500gr', '8997014357096', 2, 0, '', '', 13, 'F1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:19:14'),
(197, 1, 1, '8997014352169', 'Cedea Shrimp Ball 200gr', '8997014352169', 1, 0, '', '', 13, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 13:42:08'),
(198, 1, 1, '8997014356228', 'Cedea Shrimp Ball (Bola Udang) 500gr', '8997014356228', 2, 0, 'CEDEA_BOLA_UDANG_500_gr.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/CEDEA_BOLA_UDANG_500_gr.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 13, 'F1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:24:26'),
(203, 1, 1, '8997014356570', 'Cedea Fish Dumpling Cheese 500gr', '8997014356570', 1, 0, '', '', 13, 'F1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:30:24'),
(204, 1, 1, '8997014352589', 'Cedea Fish Dumpling Cheese 200gr (Kecil)', '8997014352589', 1, 0, '', '', 13, 'F1', 1, '2022-03-08 01:49:01', 1, '2022-04-04 09:39:21'),
(205, 1, 1, '8997014356563', 'Cedea Fish Dumpling Chicken 500gr', '8997014356563', 1, 0, '', '', 13, 'R1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 11:34:56'),
(206, 1, 1, '8997014352572', 'Cedea Fish Dumpling Chicken 200gr (Kecil)', '8997014352572', 1, 0, '', '', 13, 'F1', 1, '2022-03-08 01:49:01', 1, '2022-04-04 09:40:09'),
(211, 1, 1, '8997014356143', 'Cedea Crab Flavoured Nugget 500gr', '8997014356143', 1, 0, '', '', 13, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-10 09:33:14'),
(213, 1, 1, '8997014356587', 'Cedea Otak Otak Singapur 1kg', '8997014356587', 1, 0, '', '', 13, 'R1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:28:24'),
(215, 1, 1, '8997014356518', 'Cedea Salmon Ball 500gr', '8997014356518', 2, 0, 'CEDEA_BOLA_UDANG_500_gr.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/CEDEA_BOLA_UDANG_500_gr.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 13, '1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:24:54'),
(216, 1, 1, '8997014352558', 'Cedea Salmon Ball 200gr (Kecil)', '8997014352558', 1, 0, '', '', 13, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 13:40:42'),
(218, 1, 3, '8997014356136', 'Cedea Tahu Baso Seafood 500 gr', '8997014356136', 2, 0, '', '', 13, 'F1', 1, '2022-03-08 01:49:01', 1, '2022-04-06 12:57:26'),
(220, 1, 1, '8997014352152', 'Cedea Fish Roll 250gr (Kecil)', '8997014352152', 1, 0, '', '', 13, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 14:07:01'),
(221, 1, 1, '8997014356594', 'Cedea Fish Roll 1kg (Besar)', '8997014356594', 0, 0, '', '', 13, '', 1, '2022-03-08 01:49:01', 1, '2022-04-04 09:40:59'),
(225, 1, 1, '8997014353135', 'Cedea Steamboat 300gr (Kecil)', '8997014353135', 0, 0, '', '', 13, '', 1, '2022-03-08 01:49:01', 1, '2022-04-03 12:26:44'),
(226, 1, 1, '8997014353142', 'Cedea Steamboat 500gr ', '8997014353142', 1, 0, '', '', 13, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-03 12:26:08'),
(227, 1, 1, '8997014357485', 'Cedea Tomyam Steamboat 300gr', '8997014357485', 1, 0, '', '', 13, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 13:18:54'),
(228, 1, 1, '8997014356747', 'Cedea Farm Animals 500gr', '8997014356747', 1, 0, '', '', 13, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 18:55:28'),
(229, 1, 1, '8997014356754', 'Cedea Oriental Cartoon 500gr', '8997014356754', 1, 0, '', '', 13, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 17:57:15'),
(232, 1, 1, '8997014350035', 'Teman Laut Baso Ikan & Udang 200 gr', '8997014350035', 1, 0, '', '', 14, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 13:29:25'),
(236, 1, 1, '8997014350127', 'Teman Laut Scallop 200gr (Kecil)', '8997014350127', 1, 0, '', '', 14, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 17:49:08'),
(237, 1, 1, '8997014350134', 'Teman Laut Scallop 500gr', '8997014350134', 1, 0, '', '', 14, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 17:51:01'),
(240, 1, 1, '9000000000239', 'Teman Laut Coin Star 200gr (Kecil)', '1000000000239', 0, 0, '', '', 14, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(241, 1, 1, '9000000000240', 'Teman Laut Coin Star 500gr', '1000000000240', 0, 0, '', '', 14, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(242, 1, 1, '9000000000241', 'So Good Nugget Original 400gr', '1000000000241', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(243, 1, 1, '9000000000242', 'So Good Nugget Hot n Spicy 400gr', '1000000000242', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(244, 1, 1, '8993110010743', 'So Good Dino Bites 400gr', '8993110010743', 1, 0, '', '', 15, 'F3', 1, '2022-03-08 01:49:01', 1, '2022-04-01 12:04:45'),
(245, 1, 1, '9000000000244', 'So Good Alphabet 400gr', '1000000000244', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(246, 1, 1, '9000000000245', 'So Good Nugget JETZ 400gr', '1000000000245', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(250, 1, 1, '8993110050923', 'So Good Spicy Wing 400gr', '8993110050923', 1, 0, '', '', 15, 'F3', 1, '2022-03-08 01:49:01', 1, '2022-04-01 12:16:27'),
(251, 1, 1, '9000000000250', 'So Good Animal 400gr', '1000000000250', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(252, 1, 1, '8993110000249', 'So Good Spicy Chicken Strip 250gr', '8993110000249', 1, 0, '', '', 15, 'F3', 1, '2022-03-08 01:49:01', 1, '2022-04-02 08:42:14'),
(253, 1, 1, '9000000000252', 'So Good Ayam Utuh Potong 1kg', '1000000000252', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(254, 1, 1, '9000000000253', 'So Good Paha Dada 1kg (Tanpa Bumbu)', '1000000000253', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(255, 1, 1, '8993110193293', 'So Good Paha Dada 450gr (Tanpa Bumbu)', '8993110193293', 0, 0, '', '', 15, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 18:42:06'),
(258, 1, 1, '8993110000430', 'So Good Baso Sapi Kuah 8s', '8993110000430', 1, 0, '', '', 15, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 17:46:02'),
(259, 1, 1, '9000000000258', 'So Nice Nugget 250gr', '1000000000258', 0, 0, '', '', 16, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(261, 1, 1, '9000000000260', 'So Nice Nugget 1kg', '1000000000260', 0, 0, '', '', 16, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(263, 1, 3, '8993110001581', 'So Nice Stik 500gr', '8993110001581', 1, 0, '', '', 16, 'F3', 1, '2022-03-08 01:49:01', 1, '2022-04-01 12:12:01'),
(264, 1, 1, '9000000000263', 'So Nice Stik 1kg', '1000000000263', 0, 0, '', '', 16, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(265, 1, 1, '9000000000264', 'So Nice Sosis 375gr', '1000000000264', 0, 0, '', '', 16, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(292, 1, 1, '8995179906883', 'Minaku Scallop 200gr (Kecil)', '8995179906883', 1, 0, '', '', 21, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 13:33:06'),
(293, 1, 1, '8995179906630', 'Minaku Scallop 500gr ', '8995179906630', 1, 0, '', '', 21, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 15:46:26'),
(295, 1, 1, '8995179907330', 'Minaku Kaki Naga 500gr ', '8995179907330', 1, 0, '', '', 21, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 16:22:34'),
(308, 1, 1, '8995179907088', 'Minaku Bola Lobster 500gr', '8995179907088', 1, 0, '', '', 21, 'F3', 1, '2022-03-08 01:49:01', 1, '2022-04-01 12:27:26'),
(315, 1, 1, '8994208000141', 'Minaku Edamame 500gr ', '8994208000141', 1, 0, '', '', 21, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 18:38:16'),
(320, 1, 1, '8997035790230', 'Sunfish Fish Roll 250gr (Kecil)', '8997035790230', 1, 0, '', '', 22, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 14:35:12'),
(321, 1, 1, '8997035790827', 'Sunfish Fish Roll 500gr', '8997035790827', 1, 0, 'FISH_ROLL_500gr.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/FISH_ROLL_500gr.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 22, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 14:27:48'),
(322, 1, 1, '8997035790339', 'Sunfish Fish Roll 1kg', '8997035790339', 1, 0, '', '', 22, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 15:26:24'),
(328, 1, 1, '8997035790858', 'Sunfish Otak Lancip 20S 500gr', '8997035790858', 1, 0, '', '', 22, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-05 14:27:46'),
(331, 1, 1, '8997035790780', 'Sunfish Dumpling Cheese 500gr', '8997035790780', 1, 0, '', '', 22, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 14:20:09'),
(332, 1, 1, '8997035791398', 'Sunfish Chikuwa MINI 1KG', '8997035791398', 0, 0, 'MY_TASTE_SAUCE_BULGOGI_500_gr.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/MY_TASTE_SAUCE_BULGOGI_500_gr.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 22, '', 1, '2022-03-08 01:49:01', 1, '2022-04-04 09:27:01'),
(364, 1, 1, '8998888712295', 'Delmonte BBQ 250gr (Kecil)', '8998888712295', 2, 0, '', '', 23, '10', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:53:08'),
(366, 1, 1, '8998888712196', 'Delmonte Spaghetti 250gr', '8998888712196', 2, 0, '', '', 23, '10', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:45:13'),
(368, 1, 1, '8998888461117', 'Maestro Mayonaise Scht 100gr', '8998888461117', 2, 0, '', '', 24, '7', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:28:12'),
(375, 1, 1, '8992845857265', 'Primaagung Mayonaise ORI 900gr', '8992845857265', 2, 0, '', '', 25, '5', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:15:46'),
(379, 1, 1, '8992845858569', 'Primaagung Saus Keju 500GR', '8992845858569', 2, 0, '', '', 25, '6', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:27:05'),
(380, 1, 1, '8992845858552', 'Primaagung Saus Keju 250GR  (Kecil)', '8992845858552', 1, 0, '', '', 25, '9', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:43:37'),
(390, 1, 1, '9556706000932', 'KK Shoestring 1kg', '9556706000932', 1, 0, '', '', 26, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 18:13:52'),
(396, 1, 1, '9000000000395', 'KK MIX Vegetable 1kg 4Ways', '9000000000395', 1, 0, '', '', 26, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 18:17:28'),
(397, 1, 1, '9000000000396', 'KK Sweet Corn 1kg', '9000000000396', 1, 0, '', '', 26, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 18:25:22'),
(399, 1, 3, '8997225710697', 'Muantap Sosbak Jumbo Ori 6s + 1', '8997225710697', 1, 0, '', '', 27, 'F2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 10:40:46'),
(410, 1, 1, '8992704341102', 'Mitraku Dumpling Keju 250gr (Kecil)', '8992704341102', 1, 0, '', '', 29, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 13:14:34'),
(415, 1, 1, '8992704528107', 'Mitraku Fish Roll 250gr (Kecil)', '8992704528107', 1, 0, '', '', 29, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 15:13:09'),
(416, 1, 1, '8992704003710', 'Mitraku Fish Roll 500gr', '8992704003710', 0, 0, '', '', 29, '', 1, '2022-03-08 01:49:01', 1, '2022-04-04 09:37:45'),
(417, 1, 1, '8992704004076', 'Mitraku Fish Roll 1KG', '8992704004076', 1, 0, '', '', 29, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 15:23:10'),
(450, 1, 1, '8997002710254', 'King F Rolade Ayam 225gr', '8997002710254', 1, 0, '', '', 34, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 17:36:12'),
(465, 1, 3, '8997002710551', 'King F Sosbak original 12 s 500 gr', '8997002710551', 1, 0, '', '', 34, 'F3', 1, '2022-03-08 01:49:01', 1, '2022-04-06 18:59:30'),
(533, 1, 1, '6973131170185', 'AVIKO SHOESTRING 2,5KG', '6973131170185', 1, 0, 'AVIKO_SHOESTRING_2,5KG.jpg', '<img src=\"http://localhost/pos_muezza/upload/item/AVIKO_SHOESTRING_2,5KG.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 45, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 18:36:07'),
(534, 1, 3, '8710679132217', 'FARM FRITES SHOESTRING 2 KG', '8710679132217', 2, 0, 'FARM_FRITES_2_KG.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/FARM_FRITES_2_KG.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 46, 'F5', 1, '2022-03-08 01:49:01', 1, '2022-04-01 18:32:35'),
(537, 1, 1, '8993492101800', 'PERFETTO MOZARELLA 250GR', '8993492101800', 1, 0, '', '', 47, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 17:27:23'),
(538, 1, 1, '8993374323801', 'SHIFUDO Chikuwa Mini 500gr', '8993374323801', 1, 0, '', '', 48, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 15:00:58'),
(542, 1, 3, '8993374323603', 'SHIFUDO Cumi Flower 500gr', '8993374323603', 1, 0, '', '', 48, 'F4', 1, '2022-03-08 01:49:01', 1, '2022-04-01 14:53:50'),
(554, 1, 1, '8997011790018', 'MY TASTE BBQ 100GR (Kecil)', '8997011790018', 2, 0, '', '', 50, '6', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:23:10'),
(555, 1, 1, '8997011790155', 'MY TASTE BBQ 500GR', '8997011790155', 1, 0, '', '', 50, '2', 1, '2022-03-08 01:49:01', 1, '2022-03-31 17:57:11'),
(558, 1, 1, '8997011790162', 'MY TASTE Mushroom sauce 500gr', '8997011790162', 1, 0, 'MY_TASTE_Mushroom_500_gr.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/MY_TASTE_Mushroom_500_gr.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 50, 'Rak 6', 1, '2022-03-08 01:49:01', 1, '2022-04-06 13:05:13'),
(563, 1, 1, '8997011791213', 'MY TASTE Saus Mayo sauce 500gr', '8997011791213', 3, 0, 'MY_TASTE_SAUCE_BULGOGI_500_gr.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/MY_TASTE_SAUCE_BULGOGI_500_gr.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 50, '8', 1, '2022-03-08 01:49:01', 1, '2022-04-04 09:10:20'),
(564, 1, 1, '8997011790957', 'MY TASTE Chilli Sauce 500GR', '8997011790957', 1, 0, 'MY_TASTE_SAUCE_BULGOGI_500_gr2.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/MY_TASTE_SAUCE_BULGOGI_500_gr2.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 50, 'Rak 2', 1, '2022-03-08 01:49:01', 1, '2022-04-04 09:01:13'),
(574, 1, 1, '8992984910173', 'Belibis Sauce Cabe Pouch 1kg', '8992984910173', 2, 0, 'BELIBIS_SAUCE_1_KG_CABE.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/BELIBIS_SAUCE_1_KG_CABE.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 51, '1', 1, '2022-03-08 01:49:01', 1, '2022-03-31 17:36:03'),
(575, 1, 1, '8992984910500', 'Belibis Value Sauce Cabe 1kg Bantal', '8992984910500', 2, 0, 'BELIBIS_VALUE_BANTAL_SAUCE_CABE_1_KG.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/BELIBIS_VALUE_BANTAL_SAUCE_CABE_1_KG.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 51, '1', 1, '2022-03-08 01:49:01', 1, '2022-03-31 17:36:44'),
(581, 1, 1, '8997024460236', 'Mc Lewis Sambal Value 1kg', '8997024460236', 2, 0, '', '', 52, '3', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:06:00'),
(582, 1, 1, '8997024460281', 'Mc Lewis Tomat Value 1kg ', '8997024460281', 2, 0, '', '', 52, '3', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:09:09'),
(584, 1, 1, '8997024460359', 'Mc Lewis ORIGINAL Mayo 1kg', '8997024460359', 1, 0, '', '', 52, '5', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:13:26'),
(593, 1, 1, '8995555118251', 'Kimbo Mini Keju 10s 500gr', '8995555118251', 1, 0, '', '', 53, 'R2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:42:18'),
(594, 1, 1, '8995555168287', 'Kimbo JUMBO Keju 6s 500gr', '8995555168287', 1, 0, '', '', 53, 'R2', 1, '2022-03-08 01:49:01', 1, '2022-04-03 16:42:40'),
(595, 1, 1, '8995555119845', 'Kimbo Mini Lada Hitam 10s 500gr', '8995555119845', 1, 0, 'MY_TASTE_SAUCE_BULGOGI_500_gr.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/MY_TASTE_SAUCE_BULGOGI_500_gr.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 53, 'R2', 1, '2022-03-08 01:49:01', 1, '2022-04-04 09:24:40'),
(596, 1, 1, '8995555168270', 'Kimbo JUMBO Lada Hitam 6s 500gr', '8995555168270', 1, 0, '', '', 53, 'F2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:39:28'),
(597, 1, 1, '8995555118503', 'Kimbo Sosis Cocktail 450gr', '8995555118503', 1, 0, '', '', 53, 'R2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:50:27'),
(598, 1, 1, '8995555218210', 'Vigo Sosis Bakar  Sapi 12 500 gr', '8995555218210', 1, 0, '', '', 54, 'F3', 1, '2022-03-08 01:49:01', 1, '2022-04-03 14:21:25'),
(599, 1, 1, '8995555815211', 'Vigo Sosis Sapi & Ayam 330 gr isi 15 ', '8995555815211', 1, 0, '', '', 54, 'R2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 10:01:10'),
(605, 1, 1, '8993200344215', 'Kanzler Blackpaper FrankFurter 6S 300gr', '8993200344215', 1, 0, '', '', 55, 'F2', 1, '2022-03-08 01:49:01', 1, '2022-04-04 17:34:48'),
(606, 1, 1, '8993200664368', 'Kanzler Cheese Cocktail 500gr', '8993200664368', 1, 0, '', '', 55, 'F2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 11:18:45'),
(608, 1, 1, '8993200667772', 'Kanzler Beef Cocktail sausage 21S 250gr', '8993200667772', 1, 0, '', '', 55, 'R2', 1, '2022-03-08 01:49:01', 1, '2022-04-04 17:36:17'),
(614, 1, 1, '8993200661442', 'Kanzler Cheese Bratwurst 5S 360gr', '8993200661442', 1, 0, '', '', 55, 'F2', 1, '2022-03-08 01:49:01', 1, '2022-04-04 17:33:11'),
(650, 1, 1, '8997219181816', 'Yomas Rolade Daging Sapi 500gr ', '8997219181816', 1, 0, '', '', 61, 'F2', 1, '2022-03-08 01:49:01', 1, '2022-04-04 09:51:49'),
(652, 1, 1, '8997219183049', 'Yomas Sosbak Sapi Mini Ori 12s 500gr', '8997219183049', 0, 0, '', '', 61, '', 1, '2022-03-08 01:49:01', 1, '2022-04-05 08:23:46'),
(680, 1, 1, '8997011791244', 'MY TASTE SAUS BULGOGI 500 gr', '8997011791244', 1, 0, 'MY_TASTE_SAUCE_BULGOGI_500_gr.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/MY_TASTE_SAUCE_BULGOGI_500_gr.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 50, 'Rak', 1, '2022-03-31 17:39:18', 1, '2022-04-06 13:04:43'),
(681, 1, 1, '8993200664542', 'MAMAYO MAYONAIS ORIGINAL 1Kg', '8993200664542', 1, 0, '', '', 67, 'R8', 1, '2022-03-31 18:34:58', 1, '2022-04-02 18:45:35'),
(683, 1, 3, '8993207130057', 'Akumo Naget Ayam 250 gr', '8993207130057', 1, 0, 'AKUMO_NAGET_AYAM_250_gr2.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/AKUMO_NAGET_AYAM_250_gr2.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 68, '4', 1, '2022-03-31 23:55:10', 1, '2022-04-01 14:24:18'),
(686, 1, 3, '8993207800240', 'Champ Chicken Sausage 1 Kg', '8993207800240', 1, 0, '', '', 70, 'F3', 1, '2022-04-01 12:23:07', NULL, NULL),
(687, 1, 3, '8993207569147', 'Fiesta Naget Stikie 500 gr', '8993207569147', 1, 0, '', '', 49, 'F3', 1, '2022-04-01 12:36:38', 1, '2022-04-01 12:37:19'),
(688, 1, 3, '8993207730035', 'Champ chicken sosis  375 Gr', '8993207730035', 1, 0, '', '', 70, 'F3', 1, '2022-04-01 12:45:03', 1, '2022-04-03 14:38:20'),
(689, 1, 3, '8993207571485', 'Fiesta chicken Nugget 250 gr', '8993207571485', 1, 0, '', '', 49, 'F3', 1, '2022-04-01 12:49:23', NULL, NULL),
(690, 1, 3, '8993207568263', 'Champ chicken Nugget 1 Kg', '8993207568263', 1, 0, '', '', 70, 'F3', 1, '2022-04-01 12:53:25', NULL, NULL),
(691, 1, 3, '8993207569567', 'Champ Nugget 250  gr', '8993207569567', 1, 0, '', '', 70, 'F3', 1, '2022-04-01 12:55:54', NULL, NULL),
(692, 1, 3, '8993207568966', 'Fiesta Karage 500 gr', '8993207568966', 1, 0, '', '', 49, 'F3', 1, '2022-04-01 13:00:23', NULL, NULL),
(693, 1, 3, '8993207105000', 'Fiesta spicy wing 500 gr', '8993207105000', 1, 0, '', '', 49, 'F3', 1, '2022-04-01 13:05:49', NULL, NULL),
(694, 1, 3, '112233', 'tidak ada barang', '112233', 0, 0, '', '', 34, '', 1, '2022-04-01 15:11:46', 1, '2022-04-06 18:55:56'),
(695, 1, 3, '8997014357300', 'Cedea Fish Roll 500 gr ', '8997014357300', 1, 0, '', '', 13, 'F4', 1, '2022-04-01 16:08:30', NULL, NULL),
(696, 1, 3, '8997207134084', 'Rious Gold Cake Double Coklat ', '8997207134084', 1, 0, '', '', 11, 'F4', 1, '2022-04-01 17:08:15', NULL, NULL),
(697, 1, 3, '8993207571683', 'Fiesta Shoestring 500 gr', '8993207571683', 1, 0, '', '', 49, 'F5', 1, '2022-04-01 18:21:15', 1, '2022-04-01 18:22:17'),
(698, 1, 3, '5413081100074', 'Mydible Shoestrin 1 Kg', '5413081100074', 1, 0, '', '', 71, 'F5', 1, '2022-04-01 18:29:20', NULL, NULL),
(699, 1, 3, '8995229800192', 'Belfoods Fav. Ceria 500 gr', '8995229800192', 1, 0, '', '', 12, 'F5', 1, '2022-04-01 19:07:11', NULL, NULL),
(700, 1, 3, '8995229800321', 'Belfoods Chicken Naget 500 gr', '8995229800321', 1, 0, '', '', 12, 'F5', 1, '2022-04-01 19:10:33', NULL, NULL),
(701, 1, 3, '8995229801809', 'Belfoods Uenak Naget Coin 500 gr', '8995229801809', 1, 0, '', '', 12, 'F1', 1, '2022-04-01 19:24:27', NULL, NULL),
(702, 1, 3, '8993071010516', 'Belfoods Royal chicken naget 500 gr', '8993071010516', 1, 0, '', '', 12, 'F5', 1, '2022-04-01 19:32:24', NULL, NULL),
(705, 1, 3, '8995229800130', 'Belfoods Crispy Chicken 500 gr', '8995229800130', 1, 0, '', '', 12, 'F2', 1, '2022-04-03 16:51:43', 1, '2022-04-03 16:54:40'),
(708, 1, 3, '8993207140384', 'Champ Burger 6s 315 gr', '8993207140384', 1, 0, '', '', 70, 'F3', 1, '2022-04-07 16:06:47', 1, '2022-04-07 16:07:31'),
(709, 1, 3, '8995229801816', 'Belfoods Uenak Nugget Stick 250 gr', '8995229801816', 2, 0, '', '', 12, 'F1', 1, '2022-04-07 16:09:21', 1, '2022-04-07 16:15:55'),
(711, 1, 3, '8995229801793', 'Belfood Uenak Nugget Coin 250 gr', '8995229801793', 2, 0, '', '', 12, 'F4', 1, '2022-04-07 16:16:51', NULL, NULL),
(712, 1, 3, '8993207130064', 'Akumo Chicken Nugget 500 gr', '8993207130064', 2, 0, '', '', 68, 'F4', 1, '2022-04-07 16:18:55', NULL, NULL),
(713, 1, 3, '8994130899677', 'Belfoods Crispy chicken pedas 500 gr', '8994130899677', 2, 0, '', '', 12, '', 1, '2022-04-07 16:26:02', NULL, NULL),
(714, 1, 3, '8997023079521', 'Bernardi Yongtofu instant 300 gr', '8997023079521', 1, 0, '', '', 7, '', 1, '2022-04-07 16:29:32', NULL, NULL),
(715, 1, 3, '8997207136279', 'Bernardi Bakso Sapi Curah 500 gr', '8997207136279', 1, 0, '', '', 7, '', 1, '2022-04-07 16:35:31', NULL, NULL),
(716, 1, 3, '1234567', 'Warisan Bakso Sapi 700 gr/50s', '1234567', 1, 0, '', '', 73, '', 1, '2022-04-07 16:38:04', 1, '2022-04-09 08:44:39'),
(717, 1, 3, '12345678', 'ETERNAL Bakso Sapi 25s 250 gr', '12345678', 1, 0, '', '', 74, '', 1, '2022-04-07 16:40:10', 1, '2022-04-09 07:34:15'),
(718, 1, 3, '1234', 'AUSIE Daging Sapi Slice 500 gr', '1234', 1, 0, '', '', 75, '', 1, '2022-04-07 16:44:01', 1, '2022-04-08 15:31:13'),
(719, 1, 3, '123', 'KK Daging Sapi Slice 500 gr', '123', 1, 0, '', '', 76, '', 1, '2022-04-07 16:46:17', 1, '2022-04-08 15:31:34'),
(720, 1, 3, '8998080260747', 'YONA Beef Patties 500 gr', '8998080260747', 1, 0, '', '', 4, '', 1, '2022-04-07 16:48:05', NULL, NULL),
(721, 1, 3, '9986260001005', 'UMIAMI Somay Ayam  15s 260 gr', '9986260001005', 1, 0, '', '', 10, '', 1, '2022-04-07 16:50:15', 1, '2022-04-07 23:21:41'),
(722, 1, 3, '8993207200163', 'FIESTA Somay ayam 180 gr', '8993207200163', 1, 0, '', '', 49, '', 1, '2022-04-07 16:51:18', 1, '2022-04-15 08:59:53'),
(723, 1, 3, '8997032111687', 'WEI WANG Somay 30s 400 gr', '8997032111687', 1, 0, '', '', 9, '', 1, '2022-04-07 16:53:29', NULL, NULL),
(724, 1, 3, '123456', 'SAIKORO Meltique 250 gr', '123456', 1, 0, '', '', 77, '', 1, '2022-04-07 16:55:51', 1, '2022-04-08 15:31:52'),
(725, 1, 3, '8994130899417', 'Belfoods Crispy Chicken Burger 315 gr', '8994130899417', 1, 0, '', '', 12, '', 1, '2022-04-07 16:56:49', NULL, NULL),
(727, 1, 3, '8995555168263', 'KIMBO Sosis Ori Bratwurst 6s + 1 500 gr', '8995555168263', 1, 0, '', '', 53, '', 1, '2022-04-07 17:01:51', 1, '2022-04-07 17:10:06'),
(728, 1, 3, '8997023077916', 'Bernardi Steamboat 300 gr', '8997023077916', 1, 0, '', '', 7, '', 1, '2022-04-07 19:21:06', NULL, NULL),
(729, 1, 3, '123456789', 'ETERNAL Bakso Sapi 50s 500gr', '123456789', 1, 0, '', '', 74, '', 1, '2022-04-07 19:25:41', 1, '2022-04-09 07:33:37'),
(731, 1, 3, '8997023078708', 'Bernardi BND Roti Burger Polos 6s', '8997023078708', 1, 0, '', '', 7, '', 1, '2022-04-08 10:38:07', NULL, NULL),
(732, 1, 3, '8997023078715', 'Bernardi BND Roti Burger Wijen 6s', '8997023078715', 1, 0, '', '', 7, '', 1, '2022-04-08 10:39:43', NULL, NULL),
(734, 1, 3, '9930101101003', 'Bernardi BND Roti Burger Mini 20s', '9930101101003', 1, 0, '', '', 7, '', 1, '2022-04-08 10:50:46', NULL, NULL),
(735, 1, 3, '8997207136552', 'Bernardi BND Plain Roll (Hotdog) 6s', '8997207136552', 1, 0, '', '', 7, '', 1, '2022-04-08 10:51:38', NULL, NULL),
(736, 1, 3, '8997207134015', 'Bernardi BHP Horeca Smoke Beef Bulat VP 500gr', '8997207134015', 1, 0, '', '', 7, '', 1, '2022-04-08 11:00:19', NULL, NULL),
(738, 1, 3, '8997032113308', 'UMIAMI mini pao rasa coklat 30 biji 480gr', '8997032113308', 1, 0, '', '', 10, '5', 1, '2022-04-08 17:46:40', 1, '2022-04-08 17:53:13'),
(739, 1, 3, '8997032113384', 'UMIAMI mini pao daging sapi 30biji 480gr', '8997032113384', 1, 0, '', '', 10, 'f5', 1, '2022-04-08 17:48:33', 1, '2022-04-08 17:53:34'),
(740, 1, 3, '8997207137467', 'VITALIA Roti Burger Wijen 6s', '8997207137467', 1, 0, '', '', 8, '', 1, '2022-04-08 18:23:10', NULL, NULL),
(741, 1, 3, '8997023079286', 'BERNARDI BHP Horeca Sosis VP 1kg', '8997023079286', 1, 0, '', '', 7, '', 1, '2022-04-08 18:34:24', NULL, NULL),
(742, 1, 3, ' 8997207138273', 'BERNARDI BHP Horeca Sosis VP 500gr', ' 8997207138273', 1, 0, '', '', 7, '', 1, '2022-04-08 19:21:59', NULL, NULL),
(743, 1, 3, '9912490101000', 'UMIAMI Sosis Sapi Ulir 20s 500 gr', '9912490101000', 1, 0, '', '', 10, '', 1, '2022-04-08 19:38:11', NULL, NULL),
(744, 1, 3, '9912500306005', 'UMIAMI Sosis Ayam Ulir 20s 500 gr', '9912500306005', 1, 0, '', '', 10, '', 1, '2022-04-08 19:43:41', NULL, NULL),
(745, 1, 3, '8998127613178', 'CHOP Long Sosis 20 s 700 gr', '8998127613178', 1, 0, '', '', 72, '', 1, '2022-04-08 20:17:03', NULL, NULL),
(746, 1, 3, '8994130899578', 'BELFOODS Uenak Sosis Ayam 40s + 1 1 kg', '8994130899578', 1, 0, '', '', 12, '', 1, '2022-04-09 08:23:25', NULL, NULL),
(747, 1, 3, '8997023079538', 'BERNARDI Tomyum Instant 300 gr', '8997023079538', 1, 0, '', '', 7, '', 1, '2022-04-09 08:30:45', NULL, NULL),
(749, 1, 3, '8998080260716', 'YONA smoke Beef 500 gr', '8998080260716', 1, 0, '', '', 4, '', 1, '2022-04-14 14:49:52', NULL, NULL),
(750, 1, 1, '8997009742180', 'SS BAKSO serba guna 50S 500 gr', '8997009742180', 1, 0, '', '', 78, '', 1, '2022-04-14 14:58:14', 1, '2022-04-14 16:59:04'),
(751, 1, 3, '8997009748700', 'SS Bakso Premium 25 s 325 gr', '8997009748700', 1, 0, '', '', 78, '', 1, '2022-04-14 15:05:06', NULL, NULL),
(752, 1, 3, '8997009744443', 'HANZEL Smoked Beef 200 gr', '8997009744443', 1, 0, '', '', 79, '', 1, '2022-04-14 15:08:38', NULL, NULL),
(753, 1, 3, '8888900420119', 'LA FONTE Spagheti 1 kg', '8888900420119', 1, 0, '', '', 80, '', 1, '2022-04-14 15:12:10', NULL, NULL),
(754, 1, 3, '8888900400111', 'LA FONTE spagheti 11 450 gr ', '8888900400111', 1, 0, '', '', 80, '', 1, '2022-04-14 15:15:26', NULL, NULL),
(755, 1, 3, '8888900415030', 'LA FONTE Fettuccine 30 225 gr', '8888900415030', 1, 0, '', '', 80, '', 1, '2022-04-14 15:18:06', NULL, NULL),
(756, 1, 3, '8888900415009', 'LA FONTE Spaghetti 10 225 gr', '8888900415009', 1, 0, '', '', 80, '', 1, '2022-04-14 15:22:15', NULL, NULL),
(757, 1, 3, '8888900400319', 'LA FONTE Fettuccine 31 450 gr', '8888900400319', 1, 0, '', '', 80, '', 1, '2022-04-14 15:25:23', NULL, NULL),
(758, 1, 3, '8888900700006', 'LA FONTE Sauce Bolognese 315 gr', '8888900700006', 1, 0, '', '', 80, '', 1, '2022-04-14 15:28:08', NULL, NULL),
(759, 1, 3, '8997028630031', 'ANTAKA Sambal Balado 100 gr', '8997028630031', 1, 0, '', '', 81, '', 1, '2022-04-14 15:31:58', NULL, NULL),
(760, 1, 3, '8997028630147', 'ANTAKA Jagung Bakar 100 gr', '8997028630147', 1, 0, '', '', 81, '', 1, '2022-04-14 15:33:36', NULL, NULL),
(761, 1, 3, '8997028630024', 'ANTAKA Barbekiu 100 gr', '8997028630024', 1, 0, '', '', 81, '', 1, '2022-04-14 15:34:10', 1, '2022-04-14 15:39:56'),
(762, 1, 3, '8997028630116', 'ANTAKA Keju Manis 100 gr', '8997028630116', 1, 0, '', '', 81, '', 1, '2022-04-14 15:34:37', 1, '2022-04-14 15:40:13'),
(763, 1, 3, '8997028630017', 'ANTAKA balado 100 gr', '8997028630017', 1, 0, '', '', 81, '', 1, '2022-04-14 15:35:14', NULL, NULL),
(764, 1, 3, '8993207160474', 'FIESTA Ready Meal Chicken Rendang 320', '8993207160474', 1, 0, '', '', 49, '', 1, '2022-04-14 15:41:55', 1, '2022-04-14 15:44:35'),
(765, 1, 3, '8993207160511', 'FIESTA Ready Meal Beef Yakiniku 320 gr', '8993207160511', 1, 0, '', '', 49, '', 1, '2022-04-14 15:43:15', 1, '2022-04-14 15:45:12'),
(766, 1, 3, '8993207160504', 'FIESTA Ready Meal chicken Teriyaki 320 gr', '8993207160504', 1, 0, '', '', 49, '', 1, '2022-04-14 15:44:01', NULL, NULL),
(767, 1, 3, '8997237710036', 'FROZEN BENTO  egg chicken shrimp roll 500 gr', '8997237710036', 1, 0, '', '', 82, '', 1, '2022-04-14 15:51:20', NULL, NULL),
(768, 1, 3, '8997237710029', 'FROZEN BENTO Egg chicken roll 350 gr', '8997237710029', 1, 0, '', '', 82, '', 1, '2022-04-14 15:53:39', NULL, NULL),
(769, 1, 3, '8997237710067', 'FROZEN BENTO Crab roll 230 gr', '8997237710067', 1, 0, '', '', 82, '', 1, '2022-04-14 15:54:31', NULL, NULL),
(770, 1, 3, '2123', 'FIRA DONUT KENTANG 10 s', '2123', 1, 0, '', '', 83, '', 1, '2022-04-14 15:59:00', NULL, NULL),
(771, 1, 3, '21234', 'DONUT SUSU 11 s', '21234', 1, 0, '', '', 84, '', 1, '2022-04-14 16:00:36', NULL, NULL),
(772, 1, 3, '8992510092137', 'PELANGI DONUTS 24 s 480 gr isi coklat', '8992510092137', 1, 0, '', '', 85, '', 1, '2022-04-14 16:02:06', 1, '2022-04-14 16:03:13'),
(773, 1, 3, '8990201379628', 'PELANGI DONUTS  KENTANG mini 21 S 520 gr', '8990201379628', 1, 0, '', '', 85, '', 1, '2022-04-14 16:04:01', 1, '2022-04-14 16:15:15'),
(774, 1, 3, '8992510090706', 'PELANGI DONUTS KENTANG  Besar 10 pcs 520 gr', '8992510090706', 1, 0, '', '', 85, '', 1, '2022-04-14 16:05:54', 1, '2022-04-14 16:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblitem_bundling`
--

CREATE TABLE `tblitem_bundling` (
  `item_bundling_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `bundling_code` varchar(12) NOT NULL,
  `bundling_name` varchar(1000) NOT NULL,
  `start_period` date NOT NULL,
  `end_period` date NOT NULL,
  `information` varchar(2000) NOT NULL,
  `status` int(11) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tblitem_bundling_prize`
--

CREATE TABLE `tblitem_bundling_prize` (
  `item_bundling_prize_id` int(11) NOT NULL,
  `item_bundling_id` int(11) NOT NULL,
  `remark` varchar(5) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `disc_percentage` decimal(5,2) NOT NULL,
  `disc_amount` decimal(18,2) NOT NULL,
  `fix_price` decimal(18,2) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tblitem_bundling_promo`
--

CREATE TABLE `tblitem_bundling_promo` (
  `item_bundling_promo_id` int(11) NOT NULL,
  `item_bundling_id` int(11) NOT NULL,
  `remark` varchar(5) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tblitem_price`
--

CREATE TABLE `tblitem_price` (
  `item_price_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `start_period` date DEFAULT NULL,
  `buying_price` decimal(18,0) NOT NULL,
  `selling_price` decimal(18,0) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblitem_price`
--

INSERT INTO `tblitem_price` (`item_price_id`, `branch_id`, `item_id`, `start_period`, `buying_price`, `selling_price`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(123, 11, 123, '2022-04-02', 7400, 8900, 1, '2020-05-15 23:09:39', 1, '2022-04-02 17:27:45'),
(124, 11, 124, '2022-04-02', 9300, 11100, 1, '2020-05-15 23:09:39', 1, '2022-04-13 21:39:01'),
(125, 11, 125, '2022-04-02', 14200, 16900, 1, '2020-05-15 23:09:39', 1, '2022-04-13 21:43:28'),
(127, 11, 127, '2022-02-21', 22000, 26400, 1, '2020-05-15 23:09:39', 1, '2022-04-09 15:39:22'),
(128, 11, 128, '2022-04-02', 25300, 30400, 1, '2020-05-15 23:09:39', 1, '2022-04-09 15:36:18'),
(129, 11, 129, '2022-02-21', 25300, 30400, 1, '2020-05-15 23:09:39', 1, '2022-04-09 15:32:04'),
(130, 11, 130, '2022-04-02', 28700, 34500, 1, '2020-05-15 23:09:39', 1, '2022-04-09 15:12:04'),
(132, 11, 132, '2022-04-02', 17500, 21000, 1, '2020-05-15 23:09:39', 1, '2022-04-02 17:14:03'),
(135, 11, 135, '2022-04-01', 16900, 20300, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:56:17'),
(160, 11, 160, '2022-04-02', 48000, 57700, 1, '2020-05-15 23:09:39', 1, '2022-04-02 19:01:24'),
(175, 11, 175, '2022-04-02', 49400, 57800, 1, '2020-05-15 23:09:39', 1, '2022-04-06 14:20:52'),
(177, 11, 177, '2022-02-21', 19260, 21400, 1, '2020-05-15 23:09:39', NULL, NULL),
(186, 11, 186, '2022-02-21', 24600, 28500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 16:01:41'),
(187, 11, 187, '2022-02-21', 47400, 55000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 16:28:42'),
(188, 11, 188, '2022-02-21', 12330, 13700, 1, '2020-05-15 23:09:39', NULL, NULL),
(192, 11, 192, '2022-04-02', 13100, 15800, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:05:27'),
(193, 11, 193, '2022-04-02', 46000, 55200, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:04:41'),
(194, 11, 194, '2022-02-21', 21800, 26300, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:09:03'),
(195, 11, 195, '2022-02-21', 21400, 26000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:21:54'),
(197, 11, 197, '2022-04-02', 9000, 10800, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:08:16'),
(198, 11, 198, '2022-02-21', 21600, 26000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:23:38'),
(203, 11, 203, '2022-04-02', 24800, 29800, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:11:48'),
(204, 11, 204, '2022-02-21', 10400, 12500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:01:27'),
(205, 11, 205, '2022-04-02', 24800, 29800, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:12:40'),
(206, 11, 206, '2022-02-21', 10400, 12500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:01:09'),
(211, 11, 211, '2022-04-02', 24400, 29200, 1, '2020-05-15 23:09:39', 1, '2022-04-10 09:37:40'),
(213, 11, 213, '2022-02-21', 46900, 56000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:27:51'),
(215, 11, 215, '2022-02-21', 24600, 28500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 13:39:39'),
(216, 11, 216, '2022-02-21', 10400, 12000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 13:40:07'),
(218, 11, 218, '2022-02-21', 21400, 25600, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:17:42'),
(220, 11, 220, '2022-04-02', 11400, 13700, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:27:34'),
(221, 11, 221, '2022-04-02', 41500, 49800, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:18:23'),
(225, 11, 225, '2022-04-02', 20300, 24400, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:31:15'),
(226, 11, 226, '2022-02-21', 28710, 31900, 1, '2020-05-15 23:09:39', NULL, NULL),
(227, 11, 227, '2022-04-02', 20300, 24400, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:30:53'),
(228, 11, 228, '2022-04-02', 43800, 52900, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:31:53'),
(229, 11, 229, '2022-04-02', 43800, 52900, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:32:36'),
(232, 11, 232, '2022-02-21', 7600, 9000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 13:30:07'),
(236, 11, 236, '2022-02-21', 7800, 9000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 17:49:44'),
(237, 11, 237, '2022-02-21', 18400, 21500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 17:51:35'),
(240, 11, 240, '2022-02-21', 7020, 7800, 1, '2020-05-15 23:09:39', NULL, NULL),
(241, 11, 241, '2022-02-21', 15570, 17300, 1, '2020-05-15 23:09:39', NULL, NULL),
(242, 11, 242, '2022-02-21', 29700, 33000, 1, '2020-05-15 23:09:39', NULL, NULL),
(243, 11, 243, '2022-02-21', 29700, 33000, 1, '2020-05-15 23:09:39', NULL, NULL),
(244, 11, 244, '2022-02-21', 34700, 40000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 12:03:32'),
(245, 11, 245, '2022-02-21', 30330, 33700, 1, '2020-05-15 23:09:39', NULL, NULL),
(246, 11, 246, '2022-02-21', 30330, 33700, 1, '2020-05-15 23:09:39', NULL, NULL),
(250, 11, 250, '2022-02-21', 42000, 48500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 12:17:19'),
(251, 11, 251, '2022-02-21', 30330, 33700, 1, '2020-05-15 23:09:39', NULL, NULL),
(252, 11, 252, '2022-02-21', 28300, 33000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 19:40:32'),
(253, 11, 253, '2022-02-21', 26550, 29500, 1, '2020-05-15 23:09:39', NULL, NULL),
(254, 11, 254, '2022-02-21', 29790, 33100, 1, '2020-05-15 23:09:39', NULL, NULL),
(255, 11, 255, '2022-02-21', 15570, 17300, 1, '2020-05-15 23:09:39', NULL, NULL),
(258, 11, 258, '2022-02-21', 13400, 15500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 17:46:42'),
(259, 11, 259, '2022-02-21', 9540, 10600, 1, '2020-05-15 23:09:39', NULL, NULL),
(261, 11, 261, '2022-02-21', 35190, 39100, 1, '2020-05-15 23:09:39', NULL, NULL),
(263, 11, 263, '2022-02-21', 20600, 24000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 12:14:20'),
(264, 11, 264, '2022-02-21', 35190, 39100, 1, '2020-05-15 23:09:39', NULL, NULL),
(265, 11, 265, '2022-02-21', 10710, 11900, 1, '2020-05-15 23:09:39', NULL, NULL),
(292, 11, 292, '2022-02-21', 7900, 9000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 13:33:42'),
(293, 11, 293, '2022-02-21', 18800, 21500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 15:47:04'),
(295, 11, 295, '2022-02-21', 13500, 15500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 16:23:06'),
(308, 11, 308, '2022-04-02', 22400, 26800, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:49:04'),
(315, 11, 315, '2022-02-21', 13700, 16000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 18:39:08'),
(320, 11, 320, '2022-02-21', 10500, 12000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 14:36:47'),
(321, 11, 321, '2022-02-21', 20500, 24000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 14:30:30'),
(322, 11, 322, '2022-02-21', 36000, 40000, 1, '2020-05-15 23:09:39', NULL, NULL),
(328, 11, 328, '2022-02-21', 17300, 20000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 15:50:21'),
(331, 11, 331, '2022-02-21', 22800, 26500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 14:21:03'),
(332, 11, 332, '2022-02-21', 40950, 45500, 1, '2020-05-15 23:09:39', NULL, NULL),
(364, 11, 364, '2022-02-21', 7020, 7800, 1, '2020-05-15 23:09:39', NULL, NULL),
(366, 11, 366, '2022-02-21', 7020, 7800, 1, '2020-05-15 23:09:39', NULL, NULL),
(368, 11, 368, '2022-04-02', 4100, 4800, 1, '2020-05-15 23:09:39', 1, '2022-04-11 15:46:02'),
(375, 11, 375, '2022-04-02', 29100, 34500, 1, '2020-05-15 23:09:39', 1, '2022-04-02 16:53:18'),
(379, 11, 379, '2022-04-02', 14200, 16400, 1, '2020-05-15 23:09:39', 1, '2022-04-11 16:10:51'),
(380, 11, 380, '2022-04-02', 8200, 9700, 1, '2020-05-15 23:09:39', 1, '2022-04-02 16:55:57'),
(390, 11, 390, '2022-04-02', 24500, 29400, 1, '2020-05-15 23:09:39', 1, '2022-04-11 13:08:16'),
(396, 11, 396, '2022-02-21', 21200, 25000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 18:18:27'),
(397, 11, 397, '2022-04-02', 21300, 25500, 1, '2020-05-15 23:09:39', 1, '2022-04-11 13:11:44'),
(399, 11, 399, '2022-02-21', 23100, 27000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 10:42:30'),
(410, 11, 410, '2022-02-21', 12700, 14500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 13:17:37'),
(415, 11, 415, '2022-02-21', 10100, 11500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 15:17:20'),
(416, 11, 416, '2022-04-02', 19900, 23800, 1, '2020-05-15 23:09:39', 1, '2022-04-03 10:33:55'),
(417, 11, 417, '2022-04-02', 45000, 53900, 1, '2020-05-15 23:09:39', 1, '2022-04-03 10:36:31'),
(450, 11, 450, '2022-02-21', 6900, 8000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 17:37:45'),
(465, 11, 465, '2022-02-21', 18270, 20300, 1, '2020-05-15 23:09:39', NULL, NULL),
(533, 11, 533, '2022-02-21', 58750, 68000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 18:36:49'),
(534, 11, 534, '2022-02-21', 52000, 62700, 1, '2020-05-15 23:09:39', 1, '2022-04-11 13:14:25'),
(537, 11, 537, '2022-04-02', 29000, 34800, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:34:32'),
(538, 11, 538, '2022-04-02', 23600, 28400, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:38:18'),
(542, 11, 542, '2022-04-02', 24900, 29800, 1, '2020-05-15 23:09:39', 1, '2022-04-02 18:39:09'),
(554, 11, 554, '2022-02-21', 6500, 7700, 1, '2020-05-15 23:09:39', 1, '2022-04-14 12:12:08'),
(555, 11, 555, '2022-02-21', 13500, 15000, 1, '2020-05-15 23:09:39', NULL, NULL),
(558, 11, 558, '2022-02-21', 15900, 18900, 1, '2020-05-15 23:09:39', 1, '2022-04-09 12:46:20'),
(563, 11, 563, '2022-04-02', 19400, 23200, 1, '2020-05-15 23:09:39', 1, '2022-04-14 12:18:29'),
(564, 11, 564, '2022-02-21', 17100, 20500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 07:30:53'),
(574, 11, 574, '2022-02-21', 25380, 28200, 1, '2020-05-15 23:09:39', NULL, NULL),
(575, 11, 575, '2022-04-02', 19000, 22600, 1, '2020-05-15 23:09:39', 1, '2022-04-02 16:46:42'),
(581, 11, 581, '2022-04-02', 10600, 12600, 1, '2020-05-15 23:09:39', 1, '2022-04-02 16:49:39'),
(582, 11, 582, '2022-04-02', 10500, 12400, 1, '2020-05-15 23:09:39', 1, '2022-04-11 16:01:23'),
(584, 11, 584, '2022-04-02', 22200, 26400, 1, '2020-05-15 23:09:39', 1, '2022-04-02 16:52:08'),
(593, 11, 593, '2022-04-02', 25800, 31500, 1, '2020-05-15 23:09:39', 1, '2022-04-02 17:38:06'),
(594, 11, 594, '2022-02-21', 25700, 31000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:43:33'),
(595, 11, 595, '2022-04-02', 25800, 31300, 1, '2020-05-15 23:09:39', 1, '2022-04-13 22:00:34'),
(596, 11, 596, '2022-04-02', 25700, 31100, 1, '2020-05-15 23:09:39', 1, '2022-04-13 22:03:25'),
(597, 11, 597, '2022-04-03', 28000, 33700, 1, '2020-05-15 23:09:39', 1, '2022-04-03 08:42:31'),
(598, 11, 598, '2022-04-02', 20600, 24600, 1, '2020-05-15 23:09:39', 1, '2022-04-09 22:45:58'),
(599, 11, 599, '2022-02-21', 9850, 11500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 10:16:02'),
(605, 11, 605, '2022-02-21', 35800, 41500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 11:57:00'),
(606, 11, 606, '2022-02-21', 44300, 51000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 11:19:27'),
(608, 11, 608, '2022-02-21', 23200, 27000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 10:27:56'),
(614, 11, 614, '2022-02-21', 41000, 48000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 11:48:07'),
(650, 11, 650, '2022-02-21', 17500, 20500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 17:42:22'),
(652, 11, 652, '2022-02-21', 22600, 26000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 15:37:58'),
(677, 11, 683, '2022-03-31', 10100, 12000, 1, '2022-03-31 23:57:03', 1, '2022-04-01 19:43:04'),
(678, 11, 680, '2022-04-01', 22400, 26800, 1, '2022-04-01 07:21:07', 1, '2022-04-14 12:16:15'),
(680, 11, 203, '2022-04-01', 24800, 29500, 1, '2022-04-01 09:32:16', NULL, NULL),
(681, 11, 686, '2022-04-01', 37040, 43000, 1, '2022-04-01 12:26:14', NULL, NULL),
(682, 11, 687, '2022-04-01', 39100, 45000, 1, '2022-04-01 12:38:24', NULL, NULL),
(683, 11, 688, '2022-04-01', 14595, 17000, 1, '2022-04-01 12:46:25', NULL, NULL),
(684, 11, 689, '2022-04-01', 21300, 24500, 1, '2022-04-01 12:50:18', NULL, NULL),
(685, 11, 691, '2022-04-01', 16600, 19000, 1, '2022-04-01 12:58:06', NULL, NULL),
(686, 11, 692, '2022-04-01', 42240, 49000, 1, '2022-04-01 13:02:52', NULL, NULL),
(687, 11, 693, '2022-04-01', 52180, 60000, 1, '2022-04-01 13:11:12', NULL, NULL),
(688, 11, 226, '2022-04-01', 20300, 23500, 1, '2022-04-01 13:20:57', NULL, NULL),
(689, 11, 99, '2022-04-01', 48300, 55500, 1, '2022-04-01 14:04:10', 1, '2022-04-01 15:35:57'),
(690, 11, 695, '2022-04-02', 21600, 25900, 1, '2022-04-01 16:09:46', 1, '2022-04-02 18:20:01'),
(691, 11, 696, '2022-04-01', 28700, 34500, 1, '2022-04-01 17:09:01', 1, '2022-04-09 15:27:43'),
(692, 11, 697, '2022-04-01', 14050, 16500, 1, '2022-04-01 18:23:02', NULL, NULL),
(693, 11, 698, '2022-04-01', 25000, 29000, 1, '2022-04-01 18:29:49', NULL, NULL),
(694, 11, 699, '2022-04-01', 37300, 43000, 1, '2022-04-01 19:07:48', NULL, NULL),
(695, 11, 700, '2022-04-01', 28800, 33500, 1, '2022-04-01 19:11:51', NULL, NULL),
(696, 11, 701, '2022-04-02', 16700, 20200, 1, '2022-04-01 19:25:36', 1, '2022-04-02 18:54:29'),
(697, 11, 702, '2022-04-01', 39500, 47800, 1, '2022-04-01 19:34:51', 1, '2022-04-02 18:58:11'),
(698, 11, 175, '2022-04-01', 49400, 57000, 1, '2022-04-01 19:37:50', NULL, NULL),
(699, 11, 255, '2022-04-02', 18100, 21500, 1, '2022-04-02 15:35:31', 1, '2022-04-02 15:39:59'),
(700, 11, 698, '2022-04-02', 25000, 29800, 1, '2022-04-02 17:02:46', NULL, NULL),
(701, 11, 598, '2022-04-02', 20600, 24600, 1, '2022-04-02 17:37:35', 1, '2022-04-09 22:46:38'),
(702, 11, 681, '2022-04-02', 22300, 26800, 1, '2022-04-02 18:46:16', NULL, NULL),
(703, 11, 78, '2022-04-03', 19400, 23300, 1, '2022-04-03 07:32:17', NULL, NULL),
(704, 11, 93, '2022-04-03', 9400, 11300, 1, '2022-04-03 07:34:21', NULL, NULL),
(705, 11, 79, '2022-04-03', 9700, 11700, 1, '2022-04-03 07:36:09', NULL, NULL),
(706, 11, 95, '2022-04-03', 59700, 71800, 1, '2022-04-03 07:39:03', NULL, NULL),
(707, 11, 96, '2022-04-03', 28200, 33900, 1, '2022-04-03 07:41:19', 1, '2022-04-03 07:43:42'),
(708, 11, 99, '2022-04-03', 48300, 58000, 1, '2022-04-03 07:42:45', NULL, NULL),
(709, 11, 128, '2022-04-03', 25300, 30400, 1, '2022-04-03 07:45:43', 1, '2022-04-09 15:36:51'),
(710, 11, 76, '2022-04-03', 10700, 12900, 1, '2022-04-03 07:57:49', NULL, NULL),
(711, 11, 129, '2022-04-03', 25300, 30400, 1, '2022-04-03 08:06:42', 1, '2022-04-09 15:32:31'),
(712, 11, 130, '2022-04-03', 28700, 34500, 1, '2022-04-03 08:09:08', 1, '2022-04-09 15:12:55'),
(713, 11, 696, '2022-04-03', 28700, 34500, 1, '2022-04-03 08:12:36', 1, '2022-04-09 15:28:34'),
(714, 11, 132, '2022-04-03', 17500, 20900, 1, '2022-04-03 08:15:46', NULL, NULL),
(715, 11, 598, '2022-04-03', 20600, 24600, 1, '2022-04-03 08:21:03', 1, '2022-04-09 22:46:53'),
(716, 11, 593, '2022-04-03', 25800, 31100, 1, '2022-04-03 08:22:56', NULL, NULL),
(717, 11, 594, '2022-04-03', 25700, 30900, 1, '2022-04-03 08:28:18', NULL, NULL),
(718, 11, 595, '2022-04-03', 25800, 31100, 1, '2022-04-03 08:33:06', NULL, NULL),
(719, 11, 596, '2022-04-03', 25700, 30900, 1, '2022-04-03 08:36:03', 1, '2022-04-03 08:38:45'),
(721, 11, 292, '2022-04-03', 7900, 9500, 1, '2022-04-03 09:11:50', NULL, NULL),
(722, 11, 293, '2022-04-03', 18800, 22700, 1, '2022-04-03 09:16:37', NULL, NULL),
(723, 11, 295, '2022-04-03', 13500, 16300, 1, '2022-04-03 10:02:17', NULL, NULL),
(724, 11, 315, '2022-04-03', 13700, 16500, 1, '2022-04-03 10:03:55', NULL, NULL),
(725, 11, 320, '2022-04-03', 10500, 12500, 1, '2022-04-03 10:06:57', NULL, NULL),
(726, 11, 321, '2022-04-03', 20500, 24500, 1, '2022-04-03 10:09:55', NULL, NULL),
(727, 11, 322, '2022-04-03', 40000, 47900, 1, '2022-04-03 10:11:16', NULL, NULL),
(728, 11, 328, '2022-04-03', 17300, 20900, 1, '2022-04-03 10:13:18', NULL, NULL),
(729, 11, 331, '2022-04-03', 22800, 27400, 1, '2022-04-03 10:14:55', NULL, NULL),
(730, 11, 332, '2022-04-03', 45500, 54400, 1, '2022-04-03 10:16:44', NULL, NULL),
(731, 11, 399, '2022-04-03', 23100, 27700, 1, '2022-04-03 10:18:54', NULL, NULL),
(732, 11, 650, '2022-04-03', 17500, 20900, 1, '2022-04-03 10:22:10', NULL, NULL),
(733, 11, 652, '2022-04-03', 22600, 27100, 1, '2022-04-03 10:23:39', NULL, NULL),
(734, 11, 450, '2022-04-03', 6900, 8300, 1, '2022-04-03 10:25:03', NULL, NULL),
(735, 11, 465, '2022-04-03', 20500, 24500, 1, '2022-04-03 10:27:17', NULL, NULL),
(736, 11, 410, '2022-04-03', 12700, 15200, 1, '2022-04-03 10:28:40', NULL, NULL),
(737, 11, 415, '2022-04-03', 10100, 12100, 1, '2022-04-03 10:29:43', NULL, NULL),
(738, 11, 416, '2022-04-03', 19900, 23800, 1, '2022-04-03 10:31:46', NULL, NULL),
(739, 11, 417, '2022-04-03', 45000, 53900, 1, '2022-04-03 10:35:10', NULL, NULL),
(741, 11, 232, '2022-04-03', 7600, 9100, 1, '2022-04-03 10:58:44', NULL, NULL),
(742, 11, 236, '2022-04-03', 7800, 9300, 1, '2022-04-03 11:00:36', NULL, NULL),
(743, 11, 237, '2022-04-03', 18400, 22100, 1, '2022-04-03 11:01:51', NULL, NULL),
(744, 11, 187, '2022-04-03', 47400, 56900, 1, '2022-04-03 11:05:33', NULL, NULL),
(745, 11, 186, '2022-04-03', 24600, 29500, 1, '2022-04-03 11:06:58', NULL, NULL),
(746, 11, 188, '2022-04-03', 13800, 16500, 1, '2022-04-03 11:08:23', NULL, NULL),
(747, 11, 195, '2022-04-03', 21400, 25600, 1, '2022-04-03 11:15:50', NULL, NULL),
(748, 11, 198, '2022-04-03', 21600, 25900, 1, '2022-04-03 11:24:18', NULL, NULL),
(749, 11, 211, '2022-04-03', 24400, 29200, 1, '2022-04-03 11:32:01', 1, '2022-04-10 09:38:17'),
(750, 11, 213, '2022-04-03', 46900, 55900, 1, '2022-04-03 11:34:58', NULL, NULL),
(751, 11, 216, '2022-04-03', 10400, 12400, 1, '2022-04-03 11:36:56', NULL, NULL),
(752, 11, 215, '2022-04-03', 24600, 29300, 1, '2022-04-03 11:37:24', NULL, NULL),
(753, 11, 220, '2022-04-03', 11400, 13600, 1, '2022-04-03 11:39:18', NULL, NULL),
(754, 11, 695, '2022-04-03', 21600, 25800, 1, '2022-04-03 11:43:53', NULL, NULL),
(755, 11, 226, '2022-04-03', 32200, 38400, 1, '2022-04-03 11:57:47', NULL, NULL),
(756, 11, 228, '2022-04-03', 43800, 52500, 1, '2022-04-03 12:27:03', NULL, NULL),
(757, 11, 229, '2022-04-03', 43800, 52500, 1, '2022-04-03 12:28:16', NULL, NULL),
(758, 11, 555, '2022-04-03', 15900, 18900, 1, '2022-04-03 12:33:34', 1, '2022-04-14 12:14:08'),
(759, 11, 396, '2022-04-03', 21200, 25400, 1, '2022-04-03 12:36:08', NULL, NULL),
(760, 11, 396, '2022-04-03', 21200, 25400, 1, '2022-04-03 12:46:33', NULL, NULL),
(761, 11, 397, '2022-04-03', 21300, 25500, 1, '2022-04-03 12:48:18', 1, '2022-04-11 13:11:23'),
(762, 11, 538, '2022-04-03', 23600, 28300, 1, '2022-04-03 13:02:22', NULL, NULL),
(763, 11, 364, '2022-04-03', 7500, 8900, 1, '2022-04-03 13:16:52', NULL, NULL),
(764, 11, 366, '2022-04-03', 7500, 8900, 1, '2022-04-03 13:17:53', NULL, NULL),
(765, 11, 574, '2022-04-03', 28200, 33700, 1, '2022-04-03 13:19:37', 1, '2022-04-11 15:48:02'),
(766, 11, 575, '2022-04-03', 19000, 22700, 1, '2022-04-03 13:23:39', NULL, NULL),
(767, 11, 581, '2022-04-03', 10600, 12600, 1, '2022-04-03 13:26:33', 1, '2022-04-11 15:53:30'),
(768, 11, 258, '2022-04-03', 13400, 16100, 1, '2022-04-03 13:41:08', NULL, NULL),
(769, 11, 244, '2022-04-03', 34700, 41700, 1, '2022-04-03 13:42:34', NULL, NULL),
(770, 11, 250, '2022-04-03', 42000, 50400, 1, '2022-04-03 13:46:57', NULL, NULL),
(771, 11, 252, '2022-04-03', 28300, 34500, 1, '2022-04-03 13:48:56', NULL, NULL),
(772, 11, 263, '2022-04-03', 20600, 24900, 1, '2022-04-03 13:50:30', NULL, NULL),
(773, 11, 533, '2022-04-03', 58750, 70900, 1, '2022-04-03 13:56:54', NULL, NULL),
(774, 11, 534, '2022-04-03', 52000, 62500, 1, '2022-04-03 14:00:49', NULL, NULL),
(775, 11, 390, '2022-04-03', 24500, 29300, 1, '2022-04-03 14:05:24', NULL, NULL),
(776, 11, 692, '2022-04-03', 42270, 50700, 1, '2022-04-03 14:18:59', NULL, NULL),
(777, 11, 598, '2022-04-03', 20600, 24600, 1, '2022-04-03 14:23:17', 1, '2022-04-09 22:47:22'),
(778, 11, 689, '2022-04-03', 21300, 25500, 1, '2022-04-03 14:25:41', NULL, NULL),
(779, 11, 687, '2022-04-03', 39100, 46800, 1, '2022-04-03 14:27:16', NULL, NULL),
(780, 11, 693, '2022-04-03', 52180, 62500, 1, '2022-04-03 14:29:05', NULL, NULL),
(781, 11, 697, '2022-04-03', 14050, 16800, 1, '2022-04-03 14:32:19', NULL, NULL),
(782, 11, 691, '2022-04-03', 16600, 19800, 1, '2022-04-03 14:33:45', NULL, NULL),
(783, 11, 690, '2022-04-03', 57640, 69100, 1, '2022-04-03 14:35:54', NULL, NULL),
(784, 11, 688, '2022-04-03', 14593, 17500, 1, '2022-04-03 14:39:27', NULL, NULL),
(785, 11, 686, '2022-04-03', 37040, 44400, 1, '2022-04-03 15:00:47', NULL, NULL),
(787, 11, 399, '1970-01-01', 23100, 27900, 1, '2022-04-03 16:49:51', NULL, NULL),
(788, 11, 705, '2022-04-03', 34200, 41500, 1, '2022-04-03 16:53:00', NULL, NULL),
(789, 11, 699, '2022-04-03', 37300, 44900, 1, '2022-04-03 17:10:28', NULL, NULL),
(790, 11, 605, '2022-04-03', 35800, 43200, 1, '2022-04-03 17:17:41', 1, '2022-04-11 12:57:50'),
(791, 11, 700, '2022-04-03', 28800, 35100, 1, '2022-04-03 17:28:26', NULL, NULL),
(792, 11, 537, '2022-04-03', 29000, 36000, 1, '2022-04-03 20:21:58', NULL, NULL),
(793, 11, 608, '2022-04-03', 23200, 28000, 1, '2022-04-03 20:40:34', 1, '2022-04-11 12:52:47'),
(794, 11, 605, '2022-04-03', 35800, 43200, 1, '2022-04-03 20:46:18', 1, '2022-04-11 12:57:00'),
(795, 11, 681, '2022-04-03', 22300, 27100, 1, '2022-04-03 20:48:50', 1, '2022-04-14 10:50:10'),
(796, 11, 368, '2022-04-03', 4100, 4800, 1, '2022-04-03 21:14:19', 1, '2022-04-11 15:45:37'),
(797, 11, 308, '1970-01-01', 22400, 27400, 1, '2022-04-03 21:17:06', 1, '2022-04-13 23:22:20'),
(798, 11, 558, '2022-04-03', 15900, 18900, 1, '2022-04-03 21:20:18', 1, '2022-04-09 12:42:53'),
(799, 11, 564, '2022-04-03', 17100, 20500, 1, '2022-04-03 21:21:54', 1, '2022-04-09 14:58:39'),
(800, 11, 680, '2022-04-03', 22400, 26800, 1, '2022-04-03 21:25:57', 1, '2022-04-14 12:15:58'),
(801, 11, 563, '2022-04-03', 19400, 23200, 1, '2022-04-03 21:28:10', 1, '2022-04-14 12:19:03'),
(802, 11, 77, '2022-04-03', 9500, 11400, 1, '2022-04-03 21:39:27', NULL, NULL),
(803, 11, 78, '2022-04-03', 19400, 23400, 1, '2022-04-03 21:43:38', NULL, NULL),
(804, 11, 127, '2022-04-03', 22000, 26400, 1, '2022-04-03 22:10:10', 1, '2022-04-09 15:40:07'),
(805, 11, 109, '2022-04-03', 15100, 18800, 1, '2022-04-03 22:22:39', NULL, NULL),
(806, 11, 110, '2022-04-03', 15100, 18800, 1, '2022-04-03 22:25:26', NULL, NULL),
(807, 11, 124, '2022-04-03', 9300, 11100, 1, '2022-04-03 22:28:39', 1, '2022-04-13 21:37:37'),
(808, 11, 123, '2022-04-03', 7400, 8900, 1, '2022-04-03 22:33:43', 1, '2022-04-13 21:40:45'),
(809, 11, 105, '2022-04-03', 10700, 13300, 1, '2022-04-03 22:40:20', NULL, NULL),
(810, 11, 106, '2022-04-03', 10700, 13300, 1, '2022-04-03 22:43:25', NULL, NULL),
(811, 11, 593, '2022-04-03', 25800, 31600, 1, '2022-04-03 22:52:01', 1, '2022-04-09 23:00:56'),
(812, 11, 293, '2022-04-03', 18800, 22700, 1, '2022-04-03 23:13:46', 1, '2022-04-13 23:17:04'),
(813, 11, 650, '2022-04-04', 17500, 21400, 1, '2022-04-04 06:51:09', 1, '2022-04-14 07:39:43'),
(814, 11, 652, '2022-04-04', 22600, 27700, 1, '2022-04-04 06:51:49', 1, '2022-04-14 07:41:41'),
(815, 11, 399, '2022-04-04', 23100, 28100, 1, '2022-04-04 06:53:02', 1, '2022-04-14 07:38:15'),
(816, 11, 320, '2022-04-04', 10500, 12800, 1, '2022-04-04 06:55:51', 1, '2022-04-13 23:24:24'),
(817, 11, 321, '2022-04-04', 20500, 25100, 1, '2022-04-04 06:56:48', 1, '2022-04-13 23:26:11'),
(818, 11, 322, '2022-04-04', 40000, 49100, 1, '2022-04-04 06:57:56', 1, '2022-04-13 23:27:56'),
(819, 11, 328, '2022-04-04', 17300, 21200, 1, '2022-04-04 06:59:01', 1, '2022-04-13 23:32:07'),
(820, 11, 331, '2022-04-04', 22800, 27800, 1, '2022-04-04 07:00:59', 1, '2022-04-14 07:32:37'),
(821, 11, 332, '2022-04-04', 45500, 55400, 1, '2022-04-04 07:02:03', 1, '2022-04-14 07:34:56'),
(822, 11, 95, '2022-04-04', 59700, 74100, 1, '2022-04-04 07:04:32', NULL, NULL),
(823, 11, 96, '2022-04-04', 28200, 34900, 1, '2022-04-04 07:05:34', NULL, NULL),
(824, 11, 99, '2022-04-04', 48300, 59900, 1, '2022-04-04 07:06:13', NULL, NULL),
(825, 11, 127, '2022-04-04', 22000, 26400, 1, '2022-04-04 07:07:28', 1, '2022-04-09 15:41:01'),
(826, 11, 128, '2022-04-04', 25300, 30400, 1, '2022-04-04 07:08:15', 1, '2022-04-09 15:35:27'),
(827, 11, 129, '2022-04-04', 25300, 30400, 1, '2022-04-04 07:09:02', 1, '2022-04-09 15:31:23'),
(828, 11, 130, '2022-04-04', 28700, 34500, 1, '2022-04-04 07:09:53', 1, '2022-04-09 15:10:34'),
(829, 11, 696, '2022-04-04', 28700, 34500, 1, '2022-04-04 07:10:42', 1, '2022-04-09 15:08:44'),
(830, 11, 132, '2022-04-04', 17500, 21100, 1, '2022-04-04 07:11:22', 1, '2022-04-09 15:42:26'),
(831, 11, 125, '2022-04-04', 14200, 16900, 1, '2022-04-04 07:12:27', 1, '2022-04-13 21:43:14'),
(832, 11, 105, '2022-04-04', 10700, 13200, 1, '2022-04-04 07:13:17', NULL, NULL),
(833, 11, 106, '2022-04-04', 10700, 13200, 1, '2022-04-04 07:15:43', NULL, NULL),
(834, 11, 599, '2022-04-04', 9850, 11800, 1, '2022-04-04 07:19:41', 1, '2022-04-13 21:49:21'),
(835, 11, 598, '2022-04-04', 20600, 24600, 1, '2022-04-04 07:20:48', 1, '2022-04-09 22:45:02'),
(836, 11, 594, '2022-04-04', 25700, 31100, 1, '2022-04-04 07:21:56', 1, '2022-04-13 21:54:21'),
(838, 11, 595, '2022-04-04', 25800, 31300, 1, '2022-04-04 07:28:47', 1, '2022-04-13 21:58:17'),
(839, 11, 596, '2022-04-04', 25700, 31100, 1, '2022-04-04 07:29:29', 1, '2022-04-13 22:02:52'),
(840, 11, 597, '2022-04-13', 7600, 9100, 1, '2022-04-04 07:31:33', 1, '2022-04-13 22:10:08'),
(841, 11, 593, '2022-04-04', 25800, 31600, 1, '2022-04-04 07:32:42', 1, '2022-04-09 22:59:21'),
(842, 11, 450, '2022-04-04', 6900, 8500, 1, '2022-04-04 07:37:14', NULL, NULL),
(843, 11, 465, '2022-04-04', 20500, 25000, 1, '2022-04-04 07:41:27', 1, '2022-04-14 08:13:21'),
(844, 11, 410, '2022-04-04', 12700, 15400, 1, '2022-04-04 07:45:45', 1, '2022-04-14 08:15:42'),
(845, 11, 415, '2022-04-04', 10100, 12300, 1, '2022-04-04 07:48:11', 1, '2022-04-14 08:17:42'),
(846, 11, 416, '2022-04-04', 19900, 24300, 1, '2022-04-04 07:50:21', 1, '2022-04-14 08:19:49'),
(847, 11, 417, '2022-04-04', 45000, 54800, 1, '2022-04-04 07:52:27', 1, '2022-04-14 08:21:52'),
(848, 11, 232, '2022-04-04', 7600, 9100, 1, '2022-04-04 07:57:36', 1, '2022-04-13 22:10:38'),
(849, 11, 236, '2022-04-04', 7800, 9300, 1, '2022-04-04 08:00:11', 1, '2022-04-13 22:13:52'),
(850, 11, 237, '2022-04-04', 18400, 22800, 1, '2022-04-04 08:01:41', NULL, NULL),
(852, 11, 187, '2022-04-04', 47400, 57700, 1, '2022-04-04 08:06:49', 1, '2022-04-13 22:20:26'),
(853, 11, 186, '2022-04-04', 24600, 29800, 1, '2022-04-04 08:08:55', 1, '2022-04-13 22:18:47'),
(854, 11, 188, '2022-04-04', 13800, 16800, 1, '2022-04-04 08:10:18', 1, '2022-04-13 22:22:34'),
(855, 11, 193, '2022-04-04', 46000, 56000, 1, '2022-04-04 08:11:58', 1, '2022-04-13 22:25:12'),
(856, 11, 192, '2022-04-04', 13100, 16000, 1, '2022-04-04 08:14:31', 1, '2022-04-14 12:06:25'),
(857, 11, 194, '2022-04-04', 21800, 26400, 1, '2022-04-04 08:16:03', 1, '2022-04-13 22:28:11'),
(858, 11, 195, '2022-04-04', 21400, 26000, 1, '2022-04-04 08:17:31', 1, '2022-04-13 22:29:58'),
(859, 11, 197, '2022-04-03', 9000, 11000, 1, '2022-04-04 08:19:34', 1, '2022-04-14 12:09:13'),
(860, 11, 198, '2022-04-04', 21600, 26300, 1, '2022-04-04 08:22:37', 1, '2022-04-13 22:33:03'),
(862, 11, 203, '2022-04-04', 24800, 30100, 1, '2022-04-04 08:26:57', 1, '2022-04-13 22:36:55'),
(863, 11, 204, '2022-04-04', 10400, 12500, 1, '2022-04-04 08:31:32', 1, '2022-04-13 22:39:12'),
(864, 11, 205, '2022-04-04', 24800, 30100, 1, '2022-04-04 08:42:00', 1, '2022-04-13 22:43:30'),
(865, 11, 206, '2022-04-04', 10400, 12500, 1, '2022-04-04 08:43:20', 1, '2022-04-13 22:41:00'),
(866, 11, 211, '2022-04-04', 24400, 29200, 1, '2022-04-04 08:45:40', 1, '2022-04-10 09:38:32'),
(867, 11, 213, '2022-04-04', 46900, 57100, 1, '2022-04-04 08:47:41', 1, '2022-04-13 22:46:11'),
(868, 11, 216, '2022-04-04', 10400, 12600, 1, '2022-04-04 08:49:27', 1, '2022-04-13 22:48:52'),
(869, 11, 215, '2022-04-04', 24600, 29600, 1, '2022-04-04 08:51:10', 1, '2022-04-13 22:52:05'),
(870, 11, 220, '2022-04-04', 11400, 13900, 1, '2022-04-04 08:53:38', 1, '2022-04-13 22:56:15'),
(871, 11, 221, '2022-04-04', 41500, 50600, 1, '2022-04-04 08:54:51', 1, '2022-04-13 22:58:49'),
(872, 11, 695, '2022-04-04', 21600, 26300, 1, '2022-04-04 08:57:19', 1, '2022-04-13 23:01:54'),
(873, 11, 225, '2022-04-04', 20300, 24900, 1, '2022-04-04 08:59:05', 1, '2022-04-13 23:04:25'),
(874, 11, 226, '2022-04-04', 32200, 39500, 1, '2022-04-04 09:00:45', 1, '2022-04-13 23:08:57'),
(875, 11, 227, '2022-04-04', 20300, 24900, 1, '2022-04-04 09:02:37', 1, '2022-04-13 23:06:52'),
(876, 11, 228, '2022-04-04', 43800, 53800, 1, '2022-04-04 09:06:27', 1, '2022-04-13 23:11:35'),
(877, 11, 229, '2022-04-04', 43800, 53800, 1, '2022-04-04 09:07:30', 1, '2022-04-13 23:13:04'),
(878, 11, 554, '2022-04-04', 6500, 7700, 1, '2022-04-04 09:10:38', 1, '2022-04-14 12:11:23'),
(879, 11, 555, '2022-04-04', 15900, 18900, 1, '2022-04-04 09:12:18', 1, '2022-04-14 12:13:35'),
(880, 11, 396, '1970-01-01', 21200, 25400, 1, '2022-04-04 09:13:23', 1, '2022-04-11 13:09:32'),
(881, 11, 397, '2022-04-04', 21300, 25500, 1, '2022-04-04 09:15:37', 1, '2022-04-11 13:10:53'),
(882, 11, 584, '2022-04-04', 22200, 26400, 1, '2022-04-04 09:23:41', 1, '2022-04-11 16:02:51'),
(883, 11, 538, '2022-04-04', 23600, 28800, 1, '2022-04-04 09:28:02', 1, '2022-04-14 08:44:35'),
(884, 11, 542, '2022-04-04', 24900, 30300, 1, '2022-04-04 09:29:51', 1, '2022-04-14 08:41:46'),
(885, 11, 364, '2022-04-04', 7500, 8900, 1, '2022-04-04 09:32:28', 1, '2022-04-11 15:39:41'),
(886, 11, 366, '2022-04-04', 7500, 8900, 1, '2022-04-04 09:35:15', 1, '2022-04-11 15:43:28'),
(887, 11, 368, '2022-04-04', 4100, 4800, 1, '2022-04-04 09:42:52', 1, '2022-04-11 15:45:23'),
(889, 11, 575, '2022-04-04', 19000, 22700, 1, '2022-04-04 09:55:25', 1, '2022-04-11 15:50:13'),
(890, 11, 581, '2022-04-04', 10600, 12600, 1, '2022-04-04 09:57:25', 1, '2022-04-11 15:52:47'),
(891, 11, 582, '2022-04-04', 10500, 12400, 1, '2022-04-04 09:58:51', 1, '2022-04-11 16:00:48'),
(892, 11, 375, '2022-04-04', 29100, 34600, 1, '2022-04-04 10:02:01', 1, '2022-04-11 16:07:05'),
(893, 11, 379, '2022-04-04', 14200, 16400, 1, '2022-04-04 10:04:12', 1, '2022-04-11 16:09:43'),
(894, 11, 380, '2022-04-04', 8200, 9700, 1, '2022-04-04 11:00:23', 1, '2022-04-11 16:12:44'),
(895, 11, 255, '2022-04-04', 18100, 22100, 1, '2022-04-04 11:03:02', 1, '2022-04-14 08:32:10'),
(896, 11, 244, '2022-04-04', 34700, 42300, 1, '2022-04-04 16:34:52', 1, '2022-04-14 08:23:48'),
(897, 11, 263, '2022-04-04', 20600, 25100, 1, '2022-04-04 16:36:52', 1, '2022-04-14 08:27:05'),
(898, 11, 698, '2022-04-04', 25000, 30400, 1, '2022-04-04 16:39:42', 1, '2022-04-14 08:46:05'),
(899, 11, 534, '2022-04-04', 52000, 62700, 1, '2022-04-04 16:42:25', 1, '2022-04-11 13:14:46'),
(900, 11, 533, '2022-04-04', 58750, 70900, 1, '2022-04-04 16:45:12', 1, '2022-04-11 13:12:44'),
(901, 11, 692, '2022-04-04', 42270, 50900, 1, '2022-04-04 16:48:51', 1, '2022-04-11 12:09:48'),
(902, 11, 689, '2022-04-04', 21300, 25600, 1, '2022-04-04 16:52:47', 1, '2022-04-11 12:12:50'),
(903, 11, 687, '2022-04-04', 39100, 46900, 1, '2022-04-04 16:57:26', 1, '2022-04-11 12:15:11'),
(904, 11, 693, '2022-04-04', 52180, 62800, 1, '2022-04-04 16:59:55', 1, '2022-04-11 12:18:24'),
(905, 11, 691, '2022-04-04', 16600, 19900, 1, '2022-04-04 17:04:59', 1, '2022-04-11 09:49:42'),
(906, 11, 690, '2022-04-04', 57640, 69200, 1, '2022-04-04 17:07:54', 1, '2022-04-11 12:01:06'),
(907, 11, 686, '2022-04-04', 37040, 44500, 1, '2022-04-04 17:13:02', 1, '2022-04-11 12:06:07'),
(908, 11, 688, '2022-04-04', 14593, 18200, 1, '2022-04-04 17:13:51', NULL, NULL),
(909, 11, 605, '2022-04-04', 35800, 43200, 1, '2022-04-04 17:20:06', 1, '2022-04-11 12:56:19'),
(911, 11, 608, '2022-04-04', 23200, 28000, 1, '2022-04-04 17:45:31', 1, '2022-04-11 12:52:20'),
(912, 11, 606, '2022-04-04', 44300, 53500, 1, '2022-04-04 17:46:07', 1, '2022-04-11 12:59:59'),
(913, 11, 614, '2022-04-04', 41000, 51300, 1, '2022-04-04 17:47:27', NULL, NULL),
(914, 11, 252, '2022-04-04', 28300, 34600, 1, '2022-04-04 20:36:16', 1, '2022-04-14 08:25:20'),
(915, 11, 250, '2022-04-04', 42000, 51400, 1, '2022-04-04 20:40:30', 1, '2022-04-14 08:28:56'),
(916, 11, 258, '2022-04-04', 13400, 16400, 1, '2022-04-04 20:41:54', 1, '2022-04-14 08:30:48'),
(917, 11, 701, '2022-04-04', 16700, 20500, 1, '2022-04-04 20:58:19', 1, '2022-04-14 10:36:59'),
(918, 11, 135, '2022-04-04', 16900, 20700, 1, '2022-04-04 21:01:19', 1, '2022-04-14 10:39:49'),
(919, 11, 699, '2022-04-04', 37300, 45700, 1, '2022-04-04 21:05:00', 1, '2022-04-14 08:48:03'),
(921, 11, 93, '2022-04-04', 9400, 11700, 1, '2022-04-04 21:30:07', NULL, NULL),
(922, 11, 78, '2022-04-04', 19400, 24200, 1, '2022-04-04 21:31:48', NULL, NULL),
(923, 11, 76, '2022-04-04', 10700, 13300, 1, '2022-04-04 21:33:09', NULL, NULL),
(924, 11, 77, '2022-04-04', 9500, 11900, 1, '2022-04-04 21:34:24', NULL, NULL),
(925, 11, 79, '2022-04-04', 9700, 12100, 1, '2022-04-04 21:36:17', NULL, NULL),
(926, 11, 390, '2022-04-04', 24500, 29400, 1, '2022-04-04 23:07:13', 1, '2022-04-11 13:07:42'),
(927, 11, 700, '2022-04-05', 28800, 36900, 1, '2022-04-05 07:26:42', NULL, NULL),
(928, 11, 160, '2022-04-05', 48000, 58600, 1, '2022-04-05 07:29:13', 1, '2022-04-14 10:32:11'),
(929, 11, 700, '2022-04-05', 28800, 35900, 1, '2022-04-05 07:31:54', 1, '2022-04-05 07:35:49'),
(930, 11, 700, '2022-04-05', 28800, 35900, 1, '2022-04-05 07:34:39', NULL, NULL),
(931, 11, 702, '2022-04-05', 39500, 48500, 1, '2022-04-05 07:37:00', 1, '2022-04-14 10:44:59'),
(932, 11, 175, '2022-04-05', 49400, 57800, 1, '2022-04-05 07:38:21', 1, '2022-04-06 14:19:30'),
(933, 11, 71, '2022-04-05', 21200, 26400, 1, '2022-04-05 07:39:42', NULL, NULL),
(934, 11, 697, '2022-04-05', 14050, 16900, 1, '2022-04-05 07:56:30', 1, '2022-04-11 12:20:47'),
(935, 11, 177, '2022-04-06', 21600, 25900, 1, '2022-04-06 13:50:09', 1, '2022-04-09 08:51:36'),
(936, 11, 702, '2022-04-06', 39500, 45900, 1, '2022-04-06 14:05:59', NULL, NULL),
(937, 11, 175, '2022-04-06', 49400, 57800, 1, '2022-04-06 14:09:48', NULL, NULL),
(938, 11, 727, '2022-04-07', 25700, 31100, 1, '2022-04-07 17:11:34', 1, '2022-04-13 21:55:42'),
(939, 11, 702, '2022-04-07', 39800, 48500, 1, '2022-04-07 17:14:13', 1, '2022-04-14 10:44:40'),
(940, 11, 537, '2022-04-07', 33500, 41400, 1, '2022-04-07 17:23:46', NULL, NULL),
(941, 11, 699, '2022-04-07', 37700, 45700, 1, '2022-04-07 17:26:35', 1, '2022-04-14 08:47:48'),
(942, 11, 720, '2022-04-07', 33200, 39800, 1, '2022-04-07 18:47:11', 1, '2022-04-09 10:50:51'),
(943, 11, 714, '2022-04-07', 35000, 41900, 1, '2022-04-07 19:05:31', 1, '2022-04-09 22:33:49'),
(944, 11, 715, '2022-04-07', 28800, 34600, 1, '2022-04-07 19:09:01', 1, '2022-04-09 22:36:58'),
(945, 11, 716, '2022-04-07', 24000, 28700, 1, '2022-04-07 19:11:29', 1, '2022-04-09 08:00:03'),
(946, 11, 728, '2022-04-07', 36900, 44100, 1, '2022-04-07 19:23:30', 1, '2022-04-09 22:28:43'),
(947, 11, 729, '2022-04-07', 30000, 36600, 1, '2022-04-07 19:27:19', 1, '2022-04-14 12:25:25'),
(948, 11, 717, '2022-04-07', 15500, 19000, 1, '2022-04-07 19:28:13', 1, '2022-04-14 12:24:09'),
(950, 11, 718, '2022-04-07', 59000, 67900, 1, '2022-04-07 19:34:44', 1, '2022-04-14 12:28:56'),
(951, 11, 719, '2022-04-07', 59000, 67900, 1, '2022-04-07 19:35:04', 1, '2022-04-14 12:35:57'),
(952, 11, 712, '2022-04-07', 21000, 25000, 1, '2022-04-07 19:41:22', 1, '2022-04-11 12:28:30'),
(953, 11, 709, '2022-04-07', 10500, 12900, 1, '2022-04-07 22:58:55', 1, '2022-04-14 10:55:36'),
(954, 11, 711, '2022-04-07', 10500, 12900, 1, '2022-04-07 23:03:23', 1, '2022-04-14 10:54:27'),
(955, 11, 723, '2022-04-07', 26800, 31900, 1, '2022-04-07 23:15:53', 1, '2022-04-09 12:16:31'),
(956, 11, 722, '2022-04-07', 20500, 24500, 1, '2022-04-07 23:18:32', 1, '2022-04-11 12:22:26'),
(957, 11, 708, '2022-04-07', 16300, 19600, 1, '2022-04-07 23:20:53', 1, '2022-04-11 16:35:44'),
(958, 11, 725, '1970-01-01', 14900, 18600, 1, '2022-04-07 23:26:34', NULL, NULL),
(959, 11, 713, '2022-04-07', 37500, 46900, 1, '2022-04-07 23:30:47', NULL, NULL),
(960, 11, 721, '2022-04-08', 16600, 19800, 1, '2022-04-08 16:56:15', NULL, NULL),
(961, 11, 724, '2022-04-08', 37000, 43700, 1, '2022-04-08 17:04:14', NULL, NULL),
(962, 11, 725, '2022-04-08', 14900, 17900, 1, '2022-04-08 17:08:02', NULL, NULL),
(963, 11, 732, '2022-04-08', 9500, 11900, 1, '2022-04-08 17:29:43', NULL, NULL),
(964, 11, 732, '2022-04-08', 10700, 12600, 1, '2022-04-08 17:31:32', 1, '2022-04-13 21:27:36'),
(965, 11, 731, '2022-04-08', 9500, 11200, 1, '2022-04-08 17:33:04', 1, '2022-04-13 21:25:23'),
(966, 11, 738, '2022-04-01', 10700, 13000, 1, '2022-04-08 17:56:35', 1, '2022-04-14 08:36:22'),
(967, 11, 739, '2022-04-01', 10700, 13000, 1, '2022-04-08 17:57:19', 1, '2022-04-14 08:37:13'),
(968, 11, 734, '2022-04-08', 19400, 22900, 1, '2022-04-08 18:20:06', 1, '2022-04-09 22:14:50'),
(969, 11, 734, '2022-04-08', 19400, 22900, 1, '2022-04-08 18:20:35', NULL, NULL),
(970, 11, 740, '2022-03-31', 9400, 11100, 1, '2022-04-08 18:24:16', 1, '2022-04-13 21:30:24'),
(971, 11, 735, '2022-03-31', 9700, 11500, 1, '2022-04-08 18:29:43', 1, '2022-04-13 21:32:38'),
(972, 11, 741, '2022-03-31', 59700, 70900, 1, '2022-04-08 18:35:22', 1, '2022-04-09 22:24:05'),
(973, 11, 741, '2022-04-08', 59700, 70900, 1, '2022-04-08 18:36:20', NULL, NULL),
(974, 11, 736, '2022-03-31', 48300, 55500, 1, '2022-04-08 19:17:22', NULL, NULL),
(975, 11, 736, '2022-04-08', 48300, 57900, 1, '2022-04-08 19:18:12', NULL, NULL),
(976, 11, 742, '2022-03-31', 28200, 33700, 1, '2022-04-08 19:23:13', 1, '2022-04-09 22:26:33'),
(977, 11, 742, '2022-04-08', 28200, 33700, 1, '2022-04-08 19:23:43', NULL, NULL),
(978, 11, 728, '2022-04-08', 36800, 44100, 1, '2022-04-08 19:31:47', NULL, NULL),
(979, 11, 714, '2022-04-08', 35000, 41900, 1, '2022-04-08 19:33:28', NULL, NULL),
(980, 11, 715, '2022-04-08', 28800, 34600, 1, '2022-04-08 19:36:22', NULL, NULL),
(981, 11, 743, '2022-04-08', 15100, 18100, 1, '2022-04-08 19:39:24', NULL, NULL),
(982, 11, 744, '2022-03-31', 15100, 18400, 1, '2022-04-08 19:44:47', 1, '2022-04-14 08:38:47'),
(983, 11, 744, '2022-04-08', 15100, 18100, 1, '2022-04-08 19:45:11', NULL, NULL),
(984, 11, 177, '2022-04-08', 21600, 25900, 1, '2022-04-08 19:53:59', NULL, NULL),
(985, 11, 745, '2022-03-31', 21200, 25400, 1, '2022-04-08 20:17:43', 1, '2022-04-08 20:21:37'),
(986, 11, 745, '2022-04-08', 21200, 25400, 1, '2022-04-08 20:18:13', NULL, NULL),
(987, 11, 717, '2022-04-09', 15500, 18500, 1, '2022-04-09 07:56:18', NULL, NULL),
(988, 11, 729, '2022-04-09', 30000, 35900, 1, '2022-04-09 07:56:55', NULL, NULL),
(989, 11, 716, '2022-04-09', 24000, 28700, 1, '2022-04-09 07:59:00', NULL, NULL),
(990, 11, 746, '2022-04-08', 30200, 36200, 1, '2022-04-09 08:27:19', NULL, NULL),
(991, 11, 747, '2022-04-08', 36900, 44100, 1, '2022-04-09 08:32:08', 1, '2022-04-09 22:32:33'),
(992, 11, 748, '2022-04-09', 21600, 25900, 1, '2022-04-09 09:05:03', NULL, NULL),
(993, 11, 720, '2022-04-09', 33200, 39800, 1, '2022-04-09 10:49:21', NULL, NULL),
(994, 11, 723, '2022-04-09', 26800, 31900, 1, '2022-04-09 12:15:32', NULL, NULL),
(995, 11, 558, '2022-04-09', 15900, 18900, 1, '2022-04-09 12:18:37', NULL, NULL),
(996, 11, 564, '2022-04-09', 17100, 20500, 1, '2022-04-09 14:53:39', NULL, NULL),
(997, 11, 563, '2022-04-09', 19400, 23200, 1, '2022-04-09 15:01:14', 1, '2022-04-14 12:18:11'),
(998, 11, 130, '2022-04-09', 28700, 34500, 1, '2022-04-09 15:06:55', NULL, NULL),
(999, 11, 696, '2022-04-09', 28700, 34500, 1, '2022-04-09 15:27:14', NULL, NULL),
(1000, 11, 129, '2022-04-09', 25300, 30400, 1, '2022-04-09 15:30:38', NULL, NULL),
(1001, 11, 123, '2022-04-09', 7400, 8900, 1, '2022-04-09 15:46:07', NULL, NULL),
(1002, 11, 731, '2022-04-09', 9500, 11200, 1, '2022-04-09 22:16:40', 1, '2022-04-13 21:25:57'),
(1003, 11, 741, '2022-04-09', 59700, 70900, 1, '2022-04-09 22:23:23', NULL, NULL),
(1004, 11, 742, '2022-04-09', 28200, 33700, 1, '2022-04-09 22:25:55', NULL, NULL),
(1005, 11, 747, '2022-04-09', 36900, 44100, 1, '2022-04-09 22:29:57', 1, '2022-04-09 22:32:10'),
(1006, 11, 598, '2022-04-09', 20600, 24600, 1, '2022-04-09 22:43:52', NULL, NULL),
(1007, 11, 211, '2022-04-09', 24400, 29200, 1, '2022-04-10 09:36:23', NULL, NULL),
(1008, 11, 691, '2022-04-09', 16600, 19900, 1, '2022-04-11 09:40:50', NULL, NULL),
(1009, 11, 688, '2022-04-11', 14593, 17500, 1, '2022-04-11 09:56:51', NULL, NULL),
(1010, 11, 690, '2022-04-11', 57640, 69200, 1, '2022-04-11 12:00:40', NULL, NULL),
(1011, 11, 686, '2022-04-11', 37040, 44500, 1, '2022-04-11 12:05:00', NULL, NULL),
(1012, 11, 688, '2022-04-11', 14593, 17400, 1, '2022-04-11 12:07:07', 1, '2022-04-16 13:16:28'),
(1013, 11, 692, '2022-04-11', 42270, 50900, 1, '2022-04-11 12:09:13', NULL, NULL),
(1014, 11, 689, '2022-04-11', 21300, 25600, 1, '2022-04-11 12:10:58', NULL, NULL),
(1015, 11, 687, '2022-04-11', 39100, 46900, 1, '2022-04-11 12:14:31', NULL, NULL),
(1016, 11, 693, '2022-04-11', 52180, 62800, 1, '2022-04-11 12:16:53', 1, '2022-04-11 12:19:12'),
(1017, 11, 697, '2022-04-11', 14050, 16900, 1, '2022-04-11 12:20:09', NULL, NULL),
(1018, 11, 722, '2022-04-11', 20500, 24500, 1, '2022-04-11 12:22:00', NULL, NULL),
(1019, 11, 712, '2022-04-11', 21000, 25000, 1, '2022-04-11 12:27:56', NULL, NULL),
(1020, 11, 608, '2022-04-11', 23200, 28000, 1, '2022-04-11 12:51:54', NULL, NULL),
(1021, 11, 605, '2022-04-11', 35800, 43200, 1, '2022-04-11 12:55:39', NULL, NULL),
(1022, 11, 606, '2022-04-11', 44300, 53500, 1, '2022-04-11 12:59:33', NULL, NULL),
(1023, 11, 614, '2022-04-11', 41000, 49500, 1, '2022-04-11 13:01:42', NULL, NULL),
(1024, 11, 390, '2022-04-11', 24500, 29400, 1, '2022-04-11 13:07:19', NULL, NULL),
(1025, 11, 396, '2022-04-11', 21200, 25400, 1, '2022-04-11 13:09:04', NULL, NULL),
(1026, 11, 397, '2022-04-11', 21300, 25500, 1, '2022-04-11 13:10:27', NULL, NULL),
(1027, 11, 533, '2022-04-11', 58750, 70900, 1, '2022-04-11 13:12:24', NULL, NULL),
(1028, 11, 534, '2022-04-11', 52000, 62700, 1, '2022-04-11 13:13:42', NULL, NULL),
(1029, 11, 537, '2022-04-11', 33500, 40700, 1, '2022-04-11 13:16:46', NULL, NULL),
(1030, 11, 364, '2022-04-11', 7500, 8900, 1, '2022-04-11 15:38:52', NULL, NULL),
(1031, 11, 366, '2022-04-11', 7500, 8900, 1, '2022-04-11 15:42:54', NULL, NULL),
(1032, 11, 368, '2022-04-11', 4100, 4800, 1, '2022-04-11 15:44:44', NULL, NULL),
(1033, 11, 574, '2022-04-11', 28200, 33700, 1, '2022-04-11 15:47:31', NULL, NULL),
(1034, 11, 575, '2022-04-11', 19000, 22700, 1, '2022-04-11 15:49:39', NULL, NULL),
(1035, 11, 581, '2022-04-11', 10600, 12600, 1, '2022-04-11 15:52:11', NULL, NULL),
(1036, 11, 582, '2022-04-11', 10500, 12400, 1, '2022-04-11 16:00:18', NULL, NULL),
(1037, 11, 584, '2022-04-11', 22200, 26400, 1, '2022-04-11 16:02:10', NULL, NULL),
(1038, 11, 375, '2022-04-11', 29100, 34600, 1, '2022-04-11 16:06:42', NULL, NULL),
(1039, 11, 379, '2022-04-11', 14200, 16400, 1, '2022-04-11 16:09:15', NULL, NULL),
(1040, 11, 380, '2022-04-11', 8200, 9700, 1, '2022-04-11 16:12:11', NULL, NULL),
(1041, 11, 731, '2022-04-13', 9500, 11200, 1, '2022-04-13 21:23:48', NULL, NULL),
(1042, 11, 732, '2022-04-13', 10700, 12600, 1, '2022-04-13 21:26:58', NULL, NULL),
(1043, 11, 740, '2022-04-13', 9400, 11100, 1, '2022-04-13 21:29:26', NULL, NULL),
(1044, 11, 735, '2022-04-20', 9700, 11500, 1, '2022-04-13 21:31:45', NULL, NULL),
(1045, 11, 124, '2022-04-13', 9300, 11100, 1, '2022-04-13 21:36:59', NULL, NULL),
(1046, 11, 123, '2022-04-13', 7400, 8900, 1, '2022-04-13 21:40:13', NULL, NULL),
(1047, 11, 125, '2022-04-13', 14200, 16900, 1, '2022-04-13 21:42:41', NULL, NULL),
(1048, 11, 599, '2022-04-13', 9850, 11800, 1, '2022-04-13 21:45:17', NULL, NULL),
(1049, 11, 594, '2022-04-13', 25700, 31100, 1, '2022-04-13 21:51:59', NULL, NULL),
(1050, 11, 727, '2022-04-13', 25700, 31100, 1, '2022-04-13 21:55:07', NULL, NULL),
(1051, 11, 595, '2022-04-13', 25800, 31300, 1, '2022-04-13 21:57:02', NULL, NULL),
(1052, 11, 596, '2022-04-13', 25700, 31100, 1, '2022-04-13 22:02:15', NULL, NULL),
(1053, 11, 597, '2022-04-13', 28000, 34100, 1, '2022-04-13 22:04:50', NULL, NULL),
(1054, 11, 232, '2022-04-13', 7600, 9100, 1, '2022-04-13 22:10:06', NULL, NULL),
(1055, 11, 236, '2022-04-13', 7800, 9300, 1, '2022-04-13 22:12:14', NULL, NULL),
(1056, 11, 237, '2022-04-13', 18400, 22000, 1, '2022-04-13 22:14:56', NULL, NULL),
(1057, 11, 186, '2022-04-13', 24600, 29800, 1, '2022-04-13 22:17:34', NULL, NULL),
(1058, 11, 187, '2022-04-13', 47400, 57700, 1, '2022-04-13 22:19:56', NULL, NULL),
(1059, 11, 188, '2022-04-13', 13800, 16800, 1, '2022-04-13 22:21:52', NULL, NULL),
(1060, 11, 193, '2022-04-13', 46000, 56000, 1, '2022-04-13 22:24:19', NULL, NULL),
(1061, 11, 194, '2022-04-13', 21800, 26400, 1, '2022-04-13 22:27:29', NULL, NULL),
(1062, 11, 195, '2022-04-13', 21400, 26000, 1, '2022-04-13 22:29:23', NULL, NULL),
(1063, 11, 198, '2022-04-13', 21600, 26300, 1, '2022-04-13 22:32:14', NULL, NULL),
(1064, 11, 203, '2022-04-13', 24800, 30100, 1, '2022-04-13 22:35:59', NULL, NULL),
(1065, 11, 204, '2022-04-13', 10400, 12500, 1, '2022-04-13 22:37:59', NULL, NULL),
(1066, 11, 206, '2022-04-13', 10400, 12500, 1, '2022-04-13 22:40:29', NULL, NULL),
(1067, 11, 205, '2022-04-13', 24800, 30100, 1, '2022-04-13 22:42:52', NULL, NULL),
(1068, 11, 213, '2022-04-13', 46900, 57100, 1, '2022-04-13 22:45:02', NULL, NULL),
(1069, 11, 216, '2022-04-13', 10400, 12600, 1, '2022-04-13 22:48:09', NULL, NULL),
(1070, 11, 215, '2022-04-13', 24600, 29600, 1, '2022-04-13 22:51:34', NULL, NULL),
(1071, 11, 218, '2022-04-13', 21400, 25600, 1, '2022-04-13 22:53:55', 1, '2022-04-16 13:44:29'),
(1072, 11, 220, '2022-04-13', 11400, 13900, 1, '2022-04-13 22:55:23', NULL, NULL),
(1073, 11, 221, '2022-04-13', 41500, 50600, 1, '2022-04-13 22:57:54', NULL, NULL),
(1074, 11, 695, '2022-04-13', 21600, 26300, 1, '2022-04-13 23:01:21', NULL, NULL),
(1075, 11, 225, '2022-04-13', 20300, 24900, 1, '2022-04-13 23:03:39', NULL, NULL),
(1076, 11, 227, '2022-04-13', 20300, 24900, 1, '2022-04-13 23:06:08', NULL, NULL),
(1077, 11, 226, '2022-04-13', 32200, 39500, 1, '2022-04-13 23:08:26', NULL, NULL),
(1078, 11, 228, '2022-04-13', 43800, 53800, 1, '2022-04-13 23:11:06', NULL, NULL),
(1079, 11, 229, '2022-04-13', 43800, 53800, 1, '2022-04-13 23:12:22', NULL, NULL),
(1080, 11, 293, '2022-04-13', 18800, 22700, 1, '2022-04-13 23:15:10', NULL, NULL),
(1081, 11, 295, '2022-04-13', 13500, 16500, 1, '2022-04-13 23:19:25', NULL, NULL),
(1082, 11, 308, '2022-04-13', 22400, 27400, 1, '2022-04-13 23:22:03', NULL, NULL),
(1083, 11, 320, '2022-04-13', 10500, 12800, 1, '2022-04-13 23:24:04', NULL, NULL),
(1084, 11, 321, '2022-04-13', 20500, 25100, 1, '2022-04-13 23:25:45', NULL, NULL),
(1085, 11, 322, '2022-04-13', 40000, 49100, 1, '2022-04-13 23:27:37', NULL, NULL),
(1086, 11, 328, '2022-04-13', 17300, 21200, 1, '2022-04-13 23:31:40', NULL, NULL),
(1087, 11, 331, '2022-04-14', 22800, 27800, 1, '2022-04-14 07:31:59', NULL, NULL),
(1088, 11, 332, '2022-04-14', 45500, 55400, 1, '2022-04-14 07:34:38', NULL, NULL),
(1089, 11, 399, '2022-04-14', 23100, 28100, 1, '2022-04-14 07:37:03', NULL, NULL),
(1090, 11, 650, '2022-04-14', 17500, 21400, 1, '2022-04-14 07:39:30', NULL, NULL),
(1091, 11, 652, '2022-04-14', 22600, 27700, 1, '2022-04-14 07:41:31', NULL, NULL),
(1092, 11, 465, '2022-04-14', 20500, 25000, 1, '2022-04-14 08:13:07', NULL, NULL),
(1093, 11, 410, '1970-01-01', 12700, 15400, 1, '2022-04-14 08:15:27', NULL, NULL),
(1094, 11, 415, '2022-04-14', 10100, 12300, 1, '2022-04-14 08:17:25', NULL, NULL),
(1095, 11, 416, '2022-04-14', 19900, 24300, 1, '2022-04-14 08:19:14', NULL, NULL),
(1096, 11, 417, '2022-04-14', 45000, 54800, 1, '2022-04-14 08:21:27', NULL, NULL),
(1097, 11, 244, '2022-04-14', 34700, 42300, 1, '2022-04-14 08:23:27', NULL, NULL),
(1098, 11, 252, '2022-04-14', 28300, 34600, 1, '2022-04-14 08:24:59', NULL, NULL),
(1099, 11, 263, '2022-04-14', 20600, 25100, 1, '2022-04-14 08:26:44', NULL, NULL),
(1100, 11, 250, '2022-04-14', 42000, 51400, 1, '2022-04-14 08:28:40', NULL, NULL),
(1101, 11, 258, '2022-04-14', 13400, 16400, 1, '2022-04-14 08:30:34', NULL, NULL),
(1102, 11, 255, '2022-04-14', 18100, 22100, 1, '2022-04-14 08:31:58', NULL, NULL),
(1103, 11, 743, '2022-04-14', 15100, 18400, 1, '2022-04-14 08:34:11', NULL, NULL),
(1104, 11, 738, '2022-04-14', 10700, 13000, 1, '2022-04-14 08:35:29', NULL, NULL),
(1105, 11, 739, '2022-04-14', 10700, 13000, 1, '2022-04-14 08:36:58', NULL, NULL),
(1106, 11, 744, '2022-04-14', 15100, 18400, 1, '2022-04-14 08:38:28', NULL, NULL),
(1107, 11, 542, '2022-04-14', 24900, 30300, 1, '2022-04-14 08:41:10', NULL, NULL),
(1108, 11, 538, '2022-04-14', 23600, 28800, 1, '2022-04-14 08:44:19', NULL, NULL),
(1109, 11, 698, '2022-04-14', 25000, 30400, 1, '2022-04-14 08:45:51', NULL, NULL),
(1110, 11, 699, '2022-04-21', 37300, 45700, 1, '2022-04-14 08:47:36', NULL, NULL),
(1111, 11, 700, '2022-04-14', 28800, 35300, 1, '2022-04-14 08:50:07', NULL, NULL),
(1112, 11, 160, '2022-04-14', 48000, 58600, 1, '2022-04-14 10:30:50', NULL, NULL),
(1113, 11, 701, '2022-04-14', 16700, 20500, 1, '2022-04-14 10:36:41', NULL, NULL),
(1114, 11, 135, '2022-04-14', 16900, 20700, 1, '2022-04-14 10:39:27', NULL, NULL),
(1115, 11, 163, '2022-04-14', 18050, 22000, 1, '2022-04-14 10:42:55', NULL, NULL),
(1116, 11, 702, '2022-04-14', 39500, 48500, 1, '2022-04-14 10:44:26', NULL, NULL),
(1117, 11, 175, '2022-04-14', 49400, 60300, 1, '2022-04-14 10:47:08', NULL, NULL),
(1118, 11, 705, '2022-04-14', 34200, 41800, 1, '2022-04-14 10:48:41', NULL, NULL),
(1119, 11, 681, '2022-04-14', 22300, 27100, 1, '2022-04-14 10:50:00', NULL, NULL),
(1120, 11, 711, '2022-04-14', 10500, 12900, 1, '2022-04-14 10:54:13', NULL, NULL),
(1121, 11, 709, '2022-04-14', 10500, 12900, 1, '2022-04-14 10:55:18', NULL, NULL),
(1122, 11, 192, '2022-04-14', 13100, 16000, 1, '2022-04-14 12:05:49', NULL, NULL),
(1123, 11, 197, '2022-04-14', 9000, 11000, 1, '2022-04-14 12:08:56', NULL, NULL),
(1124, 11, 554, '2022-04-14', 6500, 7700, 1, '2022-04-14 12:11:04', NULL, NULL),
(1125, 11, 555, '2022-04-14', 15900, 18900, 1, '2022-04-14 12:13:21', NULL, NULL),
(1126, 11, 680, '2022-04-14', 22400, 26800, 1, '2022-04-14 12:15:32', NULL, NULL),
(1127, 11, 563, '2022-04-14', 19400, 23200, 1, '2022-04-14 12:17:55', NULL, NULL),
(1128, 11, 717, '2022-04-14', 15500, 19000, 1, '2022-04-14 12:23:55', NULL, NULL),
(1129, 11, 729, '2022-04-14', 30000, 36600, 1, '2022-04-14 12:25:12', NULL, NULL),
(1130, 11, 718, '2022-04-14', 59000, 67900, 1, '2022-04-14 12:28:36', NULL, NULL),
(1131, 11, 719, '2022-04-14', 59000, 67900, 1, '2022-04-14 12:29:41', NULL, NULL),
(1132, 11, 749, '2022-04-14', 49200, 58500, 1, '2022-04-14 14:53:18', NULL, NULL),
(1133, 11, 750, '2022-04-14', 41900, 49900, 1, '2022-04-14 15:02:09', NULL, NULL),
(1134, 11, 751, '2022-04-14', 34700, 41600, 1, '2022-04-14 15:06:40', NULL, NULL),
(1135, 11, 752, '2022-04-14', 23200, 27800, 1, '2022-04-14 15:10:32', NULL, NULL),
(1136, 11, 753, '2022-04-14', 27900, 33400, 1, '2022-04-14 15:13:50', NULL, NULL),
(1137, 11, 754, '2022-04-14', 15100, 18100, 1, '2022-04-14 15:16:12', NULL, NULL),
(1138, 11, 755, '2022-04-14', 7700, 9200, 1, '2022-04-14 15:21:09', NULL, NULL),
(1139, 11, 756, '2022-04-14', 7700, 9200, 1, '2022-04-14 15:23:48', NULL, NULL),
(1140, 11, 757, '2022-04-14', 15100, 18100, 1, '2022-04-14 15:26:45', NULL, NULL),
(1141, 11, 758, '2022-04-14', 15800, 18900, 1, '2022-04-14 15:29:40', NULL, NULL),
(1142, 11, 763, '2022-04-14', 4700, 5600, 1, '2022-04-14 15:37:11', NULL, NULL),
(1143, 11, 761, '2022-04-14', 4700, 5600, 1, '2022-04-14 15:37:49', NULL, NULL),
(1144, 11, 760, '2022-04-14', 4700, 5600, 1, '2022-04-14 15:38:13', NULL, NULL),
(1145, 11, 762, '2022-04-14', 4700, 5600, 1, '2022-04-14 15:38:33', NULL, NULL),
(1146, 11, 759, '2022-04-14', 4700, 5600, 1, '2022-04-14 15:39:07', NULL, NULL),
(1147, 11, 765, '2022-04-14', 17100, 20700, 1, '2022-04-14 15:46:24', NULL, NULL),
(1148, 11, 764, '2022-04-14', 17100, 20700, 1, '2022-04-14 15:47:20', NULL, NULL),
(1149, 11, 766, '2022-04-14', 17100, 20700, 1, '2022-04-14 15:47:43', NULL, NULL);
INSERT INTO `tblitem_price` (`item_price_id`, `branch_id`, `item_id`, `start_period`, `buying_price`, `selling_price`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(1150, 11, 770, '2022-04-14', 14000, 16700, 1, '2022-04-14 16:10:08', NULL, NULL),
(1151, 11, 771, '2022-04-14', 16000, 19100, 1, '2022-04-14 16:10:48', NULL, NULL),
(1152, 11, 772, '2022-04-14', 12000, 14300, 1, '2022-04-14 16:11:50', NULL, NULL),
(1153, 11, 773, '2022-04-14', 15400, 18400, 1, '2022-04-14 16:13:11', NULL, NULL),
(1154, 11, 774, '2022-04-14', 13900, 16600, 1, '2022-04-14 16:14:23', NULL, NULL),
(1155, 11, 537, '2022-04-14', 33500, 40500, 1, '2022-04-14 19:41:17', NULL, NULL),
(1156, 11, 717, '2022-04-14', 15500, 18900, 1, '2022-04-14 22:41:56', NULL, NULL),
(1157, 11, 537, '2022-04-15', 33500, 40100, 1, '2022-04-15 08:21:34', NULL, NULL),
(1158, 11, 721, '2022-04-15', 16600, 19800, 1, '2022-04-15 09:25:07', 1, '2022-04-15 09:27:49'),
(1159, 11, 744, '2022-04-15', 15100, 18100, 1, '2022-04-15 09:28:40', NULL, NULL),
(1160, 11, 743, '2022-04-15', 15100, 18100, 1, '2022-04-15 09:29:02', NULL, NULL),
(1161, 11, 739, '2022-04-15', 10700, 12800, 1, '2022-04-15 09:30:11', NULL, NULL),
(1162, 11, 738, '2022-04-15', 10700, 12800, 1, '2022-04-15 09:30:50', NULL, NULL),
(1163, 11, 765, '2022-04-15', 17100, 20500, 1, '2022-04-15 10:04:01', NULL, NULL),
(1164, 11, 764, '2022-04-15', 17100, 20500, 1, '2022-04-15 10:04:28', NULL, NULL),
(1165, 11, 766, '2022-04-15', 17100, 20500, 1, '2022-04-15 10:04:44', NULL, NULL),
(1166, 11, 767, '2022-04-15', 23000, 27300, 1, '2022-04-15 10:28:03', NULL, NULL),
(1167, 11, 769, '2022-04-15', 22000, 26100, 1, '2022-04-15 10:28:56', NULL, NULL),
(1168, 11, 768, '2022-04-15', 22000, 26100, 1, '2022-04-15 10:29:57', NULL, NULL),
(1169, 11, 717, '2022-04-15', 15500, 18700, 1, '2022-04-15 10:58:48', NULL, NULL),
(1170, 11, 729, '2022-04-15', 30000, 36200, 1, '2022-04-15 10:59:11', NULL, NULL),
(1171, 11, 713, '2022-04-15', 37500, 45100, 1, '2022-04-15 11:02:25', NULL, NULL),
(1172, 11, 705, '2022-04-15', 34100, 41100, 1, '2022-04-15 11:04:04', NULL, NULL),
(1173, 11, 711, '2022-04-15', 10500, 12600, 1, '2022-04-15 11:05:07', NULL, NULL),
(1174, 11, 709, '2022-04-15', 10500, 12600, 1, '2022-04-15 11:05:40', NULL, NULL),
(1175, 11, 725, '2022-04-15', 14900, 17900, 1, '2022-04-15 11:06:12', NULL, NULL),
(1176, 11, 746, '2022-04-15', 30200, 36100, 1, '2022-04-15 11:06:57', NULL, NULL),
(1177, 11, 175, '2022-04-15', 49400, 59500, 1, '2022-04-15 11:08:34', NULL, NULL),
(1178, 11, 702, '2022-04-15', 39500, 47400, 1, '2022-04-15 11:09:08', NULL, NULL),
(1179, 11, 135, '2022-04-15', 16900, 20300, 1, '2022-04-15 11:09:56', NULL, NULL),
(1180, 11, 701, '2022-04-15', 16700, 20100, 1, '2022-04-15 11:11:18', NULL, NULL),
(1181, 11, 163, '2022-04-15', 18050, 21600, 1, '2022-04-15 11:11:58', NULL, NULL),
(1182, 11, 160, '2022-04-15', 48000, 57800, 1, '2022-04-15 11:14:09', NULL, NULL),
(1183, 11, 700, '2022-04-15', 28800, 34600, 1, '2022-04-15 11:14:51', NULL, NULL),
(1184, 11, 699, '2022-04-15', 37300, 44800, 1, '2022-04-15 11:15:25', NULL, NULL),
(1185, 11, 538, '2022-04-15', 23600, 28200, 1, '2022-04-15 11:16:59', NULL, NULL),
(1186, 11, 542, '2022-04-15', 24900, 29700, 1, '2022-04-15 11:17:35', NULL, NULL),
(1187, 11, 250, '2022-04-15', 42000, 50300, 1, '2022-04-15 11:19:17', NULL, NULL),
(1188, 11, 258, '2022-04-15', 13400, 16000, 1, '2022-04-15 11:20:15', NULL, NULL),
(1189, 11, 263, '2022-04-15', 20600, 24700, 1, '2022-04-15 11:23:58', NULL, NULL),
(1190, 11, 252, '2022-04-08', 28300, 33900, 1, '2022-04-15 11:24:36', NULL, NULL),
(1191, 11, 244, '2022-04-15', 34700, 41600, 1, '2022-04-15 11:25:56', NULL, NULL),
(1192, 11, 410, '2022-04-15', 12700, 15300, 1, '2022-04-15 11:27:07', NULL, NULL),
(1193, 11, 415, '2022-04-15', 10100, 12100, 1, '2022-04-15 11:27:42', NULL, NULL),
(1194, 11, 416, '2022-04-15', 19900, 23800, 1, '2022-04-15 11:28:18', NULL, NULL),
(1195, 11, 465, '2022-04-15', 20500, 24500, 1, '2022-04-15 11:30:17', NULL, NULL),
(1196, 11, 450, '2022-04-15', 6900, 8300, 1, '2022-04-15 11:30:50', NULL, NULL),
(1197, 11, 650, '2022-04-15', 17500, 21000, 1, '2022-04-15 11:32:25', NULL, NULL),
(1198, 11, 652, '2022-04-15', 22600, 26900, 1, '2022-04-15 11:33:22', NULL, NULL),
(1199, 11, 399, '2022-04-15', 23100, 27600, 1, '2022-04-15 11:34:07', NULL, NULL),
(1200, 11, 320, '2022-04-15', 10500, 12500, 1, '2022-04-15 11:37:07', NULL, NULL),
(1201, 11, 321, '2022-04-15', 20500, 24500, 1, '2022-04-15 11:37:31', NULL, NULL),
(1202, 11, 322, '2022-04-15', 40000, 47900, 1, '2022-04-15 11:38:19', NULL, NULL),
(1203, 11, 328, '2022-04-15', 17300, 20700, 1, '2022-04-15 11:38:48', NULL, NULL),
(1204, 11, 331, '2022-04-15', 22800, 27300, 1, '2022-04-15 11:39:32', NULL, NULL),
(1205, 11, 332, '2022-04-15', 45500, 54500, 1, '2022-04-15 11:40:09', NULL, NULL),
(1206, 11, 293, '2022-04-15', 18800, 22500, 1, '2022-04-15 11:42:40', NULL, NULL),
(1207, 11, 295, '2022-04-15', 13500, 16200, 1, '2022-04-15 11:43:42', NULL, NULL),
(1208, 11, 315, '2022-04-15', 13700, 16400, 1, '2022-04-15 11:44:29', NULL, NULL),
(1209, 11, 308, '2022-04-15', 22400, 26800, 1, '2022-04-15 11:45:16', NULL, NULL),
(1210, 11, 228, '2022-04-15', 43800, 52900, 1, '2022-04-15 11:45:56', NULL, NULL),
(1211, 11, 228, '2022-04-15', 43800, 52500, 1, '2022-04-15 11:46:44', NULL, NULL),
(1212, 11, 229, '2022-04-15', 43800, 52500, 1, '2022-04-15 11:47:10', NULL, NULL),
(1213, 11, 220, '2022-04-15', 11400, 13600, 1, '2022-04-15 11:50:27', NULL, NULL),
(1214, 11, 221, '2022-04-15', 41500, 49700, 1, '2022-04-15 11:51:02', NULL, NULL),
(1215, 11, 695, '2022-04-15', 21600, 25900, 1, '2022-04-15 11:52:49', NULL, NULL),
(1216, 11, 225, '2022-04-15', 20300, 24300, 1, '2022-04-15 11:53:16', NULL, NULL),
(1217, 11, 226, '2022-04-15', 32200, 38500, 1, '2022-04-15 11:53:53', NULL, NULL),
(1218, 11, 227, '2022-04-15', 20300, 24300, 1, '2022-04-15 11:54:16', NULL, NULL),
(1219, 11, 197, '2022-04-15', 9000, 10800, 1, '2022-04-15 11:55:55', NULL, NULL),
(1220, 11, 198, '2022-04-15', 21600, 25900, 1, '2022-04-15 11:56:40', NULL, NULL),
(1221, 11, 194, '2022-04-15', 21800, 26100, 1, '2022-04-15 11:57:20', NULL, NULL),
(1222, 11, 195, '2022-04-15', 21400, 25600, 1, '2022-04-15 11:58:10', NULL, NULL),
(1223, 11, 192, '2022-04-15', 13100, 15700, 1, '2022-04-15 11:59:05', NULL, NULL),
(1224, 11, 193, '2022-04-15', 46000, 54900, 1, '2022-04-15 11:59:46', NULL, NULL),
(1225, 11, 188, '2022-04-15', 13800, 16500, 1, '2022-04-15 12:00:38', NULL, NULL),
(1226, 11, 187, '2022-04-15', 47400, 56500, 1, '2022-04-15 12:02:36', NULL, NULL),
(1227, 11, 186, '2022-04-15', 24600, 29300, 1, '2022-04-15 12:03:36', NULL, NULL),
(1228, 11, 748, '2022-04-15', 21600, 25700, 1, '2022-04-15 12:05:10', NULL, NULL),
(1229, 11, 593, '2022-04-15', 25800, 31000, 1, '2022-04-15 12:06:14', NULL, NULL),
(1230, 11, 597, '2022-04-15', 28000, 33600, 1, '2022-04-15 12:07:02', NULL, NULL),
(1231, 11, 595, '2022-04-15', 25800, 31000, 1, '2022-04-15 12:08:41', NULL, NULL),
(1232, 11, 727, '2022-04-15', 25700, 30800, 1, '2022-04-15 12:09:27', NULL, NULL),
(1233, 11, 594, '2022-04-15', 25700, 30800, 1, '2022-04-15 12:10:33', NULL, NULL),
(1234, 11, 132, '2022-04-15', 17500, 20700, 1, '2022-04-15 12:11:36', NULL, NULL),
(1235, 11, 127, '2022-04-15', 22000, 26100, 1, '2022-04-15 12:13:44', NULL, NULL),
(1236, 11, 128, '2022-04-15', 25300, 29900, 1, '2022-04-15 12:14:11', NULL, NULL),
(1237, 11, 129, '2022-04-15', 25300, 29900, 1, '2022-04-15 12:14:52', NULL, NULL),
(1238, 11, 130, '2022-04-15', 28700, 34100, 1, '2022-04-15 12:15:30', NULL, NULL),
(1239, 11, 696, '2022-04-15', 28700, 34100, 1, '2022-04-15 12:16:06', NULL, NULL),
(1240, 11, 697, '2022-04-15', 14050, 16800, 1, '2022-04-15 12:17:25', NULL, NULL),
(1241, 11, 693, '2022-04-15', 52180, 62600, 1, '2022-04-15 12:17:49', NULL, NULL),
(1242, 11, 692, '2022-04-15', 42270, 50700, 1, '2022-04-15 12:18:24', NULL, NULL),
(1243, 11, 681, '2022-04-16', 22300, 26300, 1, '2022-04-16 09:55:29', NULL, NULL),
(1244, 11, 533, '2022-04-16', 58750, 69700, 1, '2022-04-16 09:58:51', NULL, NULL),
(1245, 11, 534, '2022-04-16', 52000, 61800, 1, '2022-04-16 10:00:21', NULL, NULL),
(1246, 11, 537, '2022-04-16', 33500, 39800, 1, '2022-04-16 10:07:54', NULL, NULL),
(1247, 11, 396, '2022-04-16', 21200, 25200, 1, '2022-04-16 10:10:53', NULL, NULL),
(1248, 11, 397, '2022-04-16', 21300, 25300, 1, '2022-04-16 10:11:27', NULL, NULL),
(1249, 11, 390, '2022-04-16', 24500, 29100, 1, '2022-04-16 10:12:02', NULL, NULL),
(1250, 11, 720, '2022-04-16', 33200, 39200, 1, '2022-04-16 10:18:35', NULL, NULL),
(1251, 11, 749, '2022-04-16', 49200, 58200, 1, '2022-04-16 10:18:56', NULL, NULL),
(1252, 11, 723, '2022-04-16', 26800, 31500, 1, '2022-04-16 10:25:09', NULL, NULL),
(1253, 11, 555, '2022-04-16', 15900, 18800, 1, '2022-04-16 10:43:17', NULL, NULL),
(1254, 11, 564, '2022-04-16', 17100, 20200, 1, '2022-04-16 10:43:44', NULL, NULL),
(1255, 11, 558, '2022-04-16', 15900, 18800, 1, '2022-04-16 10:46:18', NULL, NULL),
(1256, 11, 680, '2022-04-16', 22400, 26500, 1, '2022-04-16 10:46:42', NULL, NULL),
(1257, 11, 563, '2022-04-16', 19400, 22900, 1, '2022-04-16 10:47:50', NULL, NULL),
(1258, 11, 747, '2022-04-16', 36900, 43800, 1, '2022-04-16 10:55:17', NULL, NULL),
(1259, 11, 714, '2022-04-16', 35000, 41500, 1, '2022-04-16 10:55:44', NULL, NULL),
(1260, 11, 728, '2022-04-16', 36900, 43800, 1, '2022-04-16 10:56:46', NULL, NULL),
(1261, 11, 177, '2022-04-16', 21600, 25700, 1, '2022-04-16 13:39:45', NULL, NULL),
(1262, 11, 213, '2022-04-16', 46900, 56100, 1, '2022-04-16 13:47:29', NULL, NULL),
(1263, 11, 215, '2022-04-16', 24600, 29400, 1, '2022-04-16 13:48:28', NULL, NULL),
(1264, 11, 216, '2022-04-16', 10400, 12400, 1, '2022-04-16 13:48:51', NULL, NULL),
(1265, 11, 204, '2022-04-16', 10400, 12400, 1, '2022-04-16 13:53:19', 1, '2022-04-16 13:54:01'),
(1266, 11, 203, '2022-04-16', 24800, 29600, 1, '2022-04-16 13:54:37', NULL, NULL),
(1267, 11, 206, '2022-04-16', 10400, 12400, 1, '2022-04-16 13:55:16', NULL, NULL),
(1268, 11, 205, '2022-04-16', 24800, 29600, 1, '2022-04-16 13:55:40', NULL, NULL),
(1269, 11, 417, '2022-04-16', 45000, 53900, 1, '2022-04-16 14:01:42', NULL, NULL),
(1270, 11, 410, '2022-04-16', 12700, 15200, 1, '2022-04-16 14:02:22', NULL, NULL),
(1271, 11, 252, '2022-04-16', 28300, 33900, 1, '2022-04-16 14:04:02', NULL, NULL),
(1272, 11, 255, '2022-04-16', 18100, 21700, 1, '2022-04-16 14:05:41', NULL, NULL),
(1273, 11, 698, '2022-04-16', 25000, 29900, 1, '2022-04-16 14:07:37', NULL, NULL),
(1274, 11, 614, '2022-04-16', 41000, 49000, 1, '2022-04-16 14:18:30', NULL, NULL),
(1275, 11, 606, '2022-04-16', 44300, 53100, 1, '2022-04-16 14:19:21', NULL, NULL),
(1276, 11, 605, '2022-04-16', 35800, 42900, 1, '2022-04-16 14:20:16', NULL, NULL),
(1277, 11, 608, '2022-04-16', 23200, 27800, 1, '2022-04-16 14:21:21', NULL, NULL),
(1278, 11, 745, '2022-04-16', 21200, 25100, 1, '2022-04-16 14:26:29', NULL, NULL),
(1279, 11, 763, '2022-04-16', 4700, 5500, 1, '2022-04-16 14:29:15', NULL, NULL),
(1280, 11, 761, '2022-04-16', 4700, 5500, 1, '2022-04-16 14:29:46', NULL, NULL),
(1281, 11, 760, '2022-04-16', 4700, 5500, 1, '2022-04-16 14:30:02', NULL, NULL),
(1282, 11, 762, '2022-04-16', 4700, 5500, 1, '2022-04-16 14:30:24', NULL, NULL),
(1283, 11, 759, '2022-04-16', 4700, 5500, 1, '2022-04-16 14:30:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblitem_promo`
--

CREATE TABLE `tblitem_promo` (
  `item_promo_id` int(11) NOT NULL,
  `promo_code` varchar(10) NOT NULL,
  `promo_name` varchar(100) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `stock_category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `start_period` date DEFAULT NULL,
  `end_period` date DEFAULT NULL,
  `disc_percentage` decimal(4,2) DEFAULT NULL,
  `disc_amount` decimal(18,2) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tblitem_stock`
--

CREATE TABLE `tblitem_stock` (
  `item_stock_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblitem_stock`
--

INSERT INTO `tblitem_stock` (`item_stock_id`, `branch_id`, `item_id`, `qty`) VALUES
(71, 11, 71, 6),
(76, 11, 76, 4),
(77, 11, 77, 4),
(78, 11, 78, 6),
(79, 11, 79, 6),
(93, 11, 93, 6),
(95, 11, 95, 6),
(96, 11, 96, 6),
(99, 11, 99, 5),
(105, 11, 105, 6),
(106, 11, 106, 6),
(109, 11, 109, 5),
(110, 11, 110, 6),
(123, 11, 123, 4),
(124, 11, 124, 4),
(125, 11, 125, 4),
(127, 11, 127, 6),
(128, 11, 128, 6),
(129, 11, 129, 6),
(130, 11, 130, 5),
(132, 11, 132, 6),
(135, 11, 135, 0),
(151, 11, 151, 4),
(160, 11, 160, 3),
(163, 11, 163, 3),
(175, 11, 175, 3),
(177, 11, 177, 4),
(186, 11, 186, 6),
(187, 11, 187, 6),
(188, 11, 188, 6),
(192, 11, 192, 4),
(193, 11, 193, 6),
(194, 11, 194, 6),
(195, 11, 195, 6),
(197, 11, 197, 4),
(198, 11, 198, 5),
(203, 11, 203, 6),
(204, 11, 204, 6),
(205, 11, 205, 6),
(206, 11, 206, 6),
(211, 11, 211, 5),
(213, 11, 213, 6),
(215, 11, 215, 6),
(216, 11, 216, 6),
(218, 11, 218, 6),
(220, 11, 220, 5),
(221, 11, 221, 6),
(225, 11, 225, 5),
(226, 11, 226, 6),
(227, 11, 227, 5),
(228, 11, 228, 4),
(229, 11, 229, 4),
(232, 11, 232, 5),
(236, 11, 236, 5),
(237, 11, 237, 6),
(240, 11, 240, 0),
(241, 11, 241, 0),
(242, 11, 242, 0),
(243, 11, 243, 0),
(244, 11, 244, 5),
(245, 11, 245, 0),
(246, 11, 246, 0),
(250, 11, 250, 5),
(251, 11, 251, 0),
(252, 11, 252, 5),
(253, 11, 253, 0),
(254, 11, 254, 0),
(255, 11, 255, 2),
(258, 11, 258, 5),
(259, 11, 259, 0),
(261, 11, 261, 0),
(263, 11, 263, 2),
(264, 11, 264, 0),
(265, 11, 265, 0),
(292, 11, 292, 5),
(293, 11, 293, 6),
(295, 11, 295, 5),
(308, 11, 308, 4),
(315, 11, 315, 4),
(320, 11, 320, 2),
(321, 11, 321, 4),
(322, 11, 322, 6),
(328, 11, 328, 3),
(331, 11, 331, 6),
(332, 11, 332, 6),
(364, 11, 364, 5),
(366, 11, 366, 3),
(368, 11, 368, 3),
(375, 11, 375, 5),
(379, 11, 379, 5),
(380, 11, 380, 4),
(390, 11, 390, 8),
(396, 11, 396, 4),
(397, 11, 397, 5),
(399, 11, 399, 5),
(410, 11, 410, 6),
(415, 11, 415, 5),
(416, 11, 416, 4),
(417, 11, 417, 6),
(450, 11, 450, 6),
(465, 11, 465, 5),
(533, 11, 533, 4),
(534, 11, 534, 8),
(537, 11, 537, 14),
(538, 11, 538, 6),
(542, 11, 542, 6),
(554, 11, 554, 3),
(555, 11, 555, 5),
(558, 11, 558, 3),
(563, 11, 563, 2),
(564, 11, 564, 3),
(574, 11, 574, 5),
(575, 11, 575, 3),
(581, 11, 581, 3),
(582, 11, 582, 2),
(584, 11, 584, 4),
(593, 11, 593, 8),
(594, 11, 594, 10),
(595, 11, 595, 5),
(596, 11, 596, 8),
(597, 11, 597, 7),
(598, 11, 598, 9),
(599, 11, 599, 29),
(605, 11, 605, 1),
(606, 11, 606, 6),
(608, 11, 608, 3),
(614, 11, 614, 1),
(650, 11, 650, 4),
(652, 11, 652, 5),
(678, 11, 681, 2),
(682, 11, 680, 3),
(683, 11, 683, 1),
(684, 11, 696, 6),
(685, 11, 695, 6),
(686, 11, 698, 6),
(687, 11, 692, 9),
(688, 11, 689, 10),
(689, 11, 687, 7),
(690, 11, 693, 8),
(691, 11, 697, 2),
(692, 11, 691, 2),
(693, 11, 690, 4),
(694, 11, 688, 7),
(695, 11, 686, 9),
(696, 11, 701, 0),
(697, 11, 702, 6),
(698, 11, 699, 7),
(699, 11, 705, 4),
(700, 11, 700, 4),
(702, 11, 694, 6),
(703, 11, 727, 9),
(704, 11, 720, 0),
(705, 11, 714, 3),
(706, 11, 715, 2),
(707, 11, 716, 2),
(708, 11, 728, 3),
(709, 11, 729, 5),
(711, 11, 718, 3),
(712, 11, 719, 4),
(713, 11, 712, 4),
(714, 11, 711, 4),
(715, 11, 723, 2),
(716, 11, 722, 2),
(717, 11, 708, 9),
(718, 11, 721, 0),
(719, 11, 724, 3),
(720, 11, 725, 2),
(721, 11, 713, 4),
(722, 11, 709, 5),
(723, 11, 732, 4),
(724, 11, 731, 3),
(725, 11, 739, 5),
(726, 11, 738, 6),
(727, 11, 734, 6),
(728, 11, 740, 4),
(729, 11, 735, 4),
(730, 11, 736, 4),
(731, 11, 742, 6),
(732, 11, 743, 6),
(733, 11, 745, 6),
(734, 11, 717, 6),
(735, 11, 746, 2),
(736, 11, 747, 2),
(737, 11, 748, 4),
(738, 11, 741, 6),
(739, 11, 744, 3),
(740, 11, 749, 6),
(741, 11, 750, 5),
(742, 11, 751, 5),
(743, 11, 752, 1),
(744, 11, 753, 6),
(745, 11, 754, 6),
(746, 11, 755, 5),
(747, 11, 756, 5),
(748, 11, 757, 6),
(749, 11, 758, 6),
(750, 11, 763, 5),
(751, 11, 761, 6),
(752, 11, 760, 6),
(753, 11, 762, 6),
(754, 11, 759, 6),
(755, 11, 765, 6),
(756, 11, 764, 6),
(757, 11, 766, 6),
(758, 11, 767, 5),
(759, 11, 769, 5),
(760, 11, 768, 5),
(761, 11, 770, 1),
(762, 11, 771, 3),
(763, 11, 772, 5),
(764, 11, 773, 5),
(765, 11, 774, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblmember`
--

CREATE TABLE `tblmember` (
  `member_id` int(11) NOT NULL,
  `member_code` varchar(20) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `identity_type` int(11) DEFAULT NULL,
  `identity_id` varchar(20) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tblmenu`
--

CREATE TABLE `tblmenu` (
  `menu_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `menu_url` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `data_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblmenu`
--

INSERT INTO `tblmenu` (`menu_id`, `module_id`, `menu_name`, `menu_url`, `status`, `data_order`) VALUES
(1, 1, 'Cabang', 'user_management/branch', 0, 1),
(2, 1, 'Kategori Pengguna', 'user_management/user_group', 0, 2),
(3, 1, 'Pengguna', 'user_management/user', 1, 3),
(4, 1, 'Hak Akses', 'user_management/user_access', 0, 4),
(5, 1, 'Setting Perusahaan', 'user_management/settings', 1, 5),
(6, 2, 'Anggota', 'master/member', 0, 1),
(7, 2, 'Supplier', 'master/supplier', 1, 2),
(8, 2, 'Kategori Barang', 'master/stock_category', 1, 3),
(9, 2, 'Satuan Barang', 'master/stock_unit', 1, 4),
(10, 2, 'Barang', 'master/stock_item', 1, 5),
(11, 2, 'Harga', 'master/price', 1, 6),
(12, 2, 'Promo', 'master/promo', 0, 7),
(13, 3, 'Stok Barang', 'inventory/item_stock', 1, 1),
(14, 3, 'Stok Masuk', 'inventory/stock_in', 1, 2),
(15, 3, 'Stok Keluar', 'inventory/stock_out', 1, 3),
(16, 3, 'Penyesuaian Stok', 'inventory/stock_adj', 1, 4),
(17, 4, 'POS', 'sales/sales', 1, 1),
(18, 4, 'Riwayat Penjualan', 'sales/sales_hist', 1, 2),
(19, 4, 'Pengembalian Barang', 'sales/retur', 0, 3),
(20, 4, 'Penukaran Barang', 'sales/sales_exchange', 0, 4),
(21, 5, 'Rekap Penjualan', 'report/summary_sales_report', 1, 1),
(22, 5, 'Detail Penjualan', 'report/detail_sales_report', 1, 2),
(23, 5, 'Rekap Barang', 'report/summary_recap_stock_report', 1, 3),
(24, 5, 'Detail Rekap Barang', 'report/detail_recap_stock_report', 1, 4),
(25, 0, 'Dashboard', 'dashboard/dashboard', 1, 1),
(26, 2, 'Bundling', 'master/bundling', 0, 8),
(27, 3, 'Pindah Stok', 'inventory/stock_switch', 0, 5),
(28, 5, 'Keuntungan Penjualan', 'report/profit_report', 1, 5),
(29, 4, 'Cek Harga', 'sales/check_price', 1, 5),
(30, 2, 'Merk', 'master/merk', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tblmerk`
--

CREATE TABLE `tblmerk` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblmerk`
--

INSERT INTO `tblmerk` (`id`, `name`) VALUES
(1, 'GOLDSTAR'),
(2, 'NGETOP'),
(3, 'HEMATO'),
(4, 'YONA'),
(5, 'JOFRANS'),
(6, 'CHOP-CHOP'),
(7, 'BERNADI'),
(8, 'VITALIA'),
(9, 'WEI WANG'),
(10, 'UMIAMI'),
(11, 'RIOUS'),
(12, 'BELFOODS'),
(13, 'CEDEA'),
(14, 'TEMAN LAUT'),
(15, 'SO GOOD'),
(16, 'SO NICE'),
(17, 'SO ECO'),
(18, 'QUEEN FOOD'),
(19, 'MAXCHOICE'),
(20, 'DELIMAX'),
(21, 'MINAKU'),
(22, 'SUNFISH'),
(23, 'DELMONTE'),
(24, 'MAESTRO'),
(25, 'PRIMAAGUNG'),
(26, 'KK'),
(27, 'MUANTAP'),
(28, 'BARTOZ'),
(29, 'MITRAKU'),
(30, 'BUMIFOOD'),
(31, 'MANTUL'),
(32, 'SEDANI'),
(33, 'LAFONTE'),
(34, 'KING FOOD'),
(35, 'KIPAO'),
(36, 'BOSS'),
(37, 'KIBIF'),
(38, 'PELANGI'),
(39, 'JOLIN'),
(40, 'CIRENG'),
(41, 'BEN\'S'),
(42, 'BAWANG'),
(43, 'WARISAN'),
(44, 'FROZENLAND'),
(45, 'AVIKO'),
(46, 'FARM FRITES'),
(47, 'PERFECTO'),
(48, 'SHIFUDO'),
(49, 'FIESTA'),
(50, 'MY TASTE'),
(51, 'BELIBIS'),
(52, 'MC LEWIS'),
(53, 'KIMBO'),
(54, 'VIGO'),
(55, 'KANZLER'),
(56, 'JURAGAN'),
(57, 'EURO'),
(58, 'BEST'),
(59, 'DOSUKA'),
(60, 'BON BON'),
(61, 'YOMAS'),
(62, 'ESSEM'),
(63, 'SUNNYGOLD'),
(64, 'CIKIWIKI'),
(65, 'GEBOOOY'),
(66, 'EDO'),
(67, 'MAMAYO '),
(68, 'AKUMO '),
(69, 'FARM FRITES'),
(70, 'CHAMP'),
(71, 'MYDIBLE'),
(72, 'CHOP CHOP'),
(73, 'WARISAN BAKSO'),
(74, 'ETERNAL BAKSO'),
(75, 'AUSIE DAGING SLICE '),
(76, 'KK Daging Slice'),
(77, 'SAIKORO MELTIQUE'),
(78, 'SUMBER SELERA'),
(79, 'HANZEL'),
(80, 'LA FONTE'),
(81, 'ANTAKA'),
(82, 'FROZEN BENTO'),
(83, 'FIRA DONUT '),
(84, 'DONAT SUSU'),
(85, 'PELANGI DONUTS');

-- --------------------------------------------------------

--
-- Table structure for table `tblmodule`
--

CREATE TABLE `tblmodule` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_icon` varchar(50) NOT NULL,
  `data_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblmodule`
--

INSERT INTO `tblmodule` (`module_id`, `module_name`, `module_icon`, `data_order`) VALUES
(1, 'Manajemen Pengguna', '<i class=\"fa fa-users\"></i>', 1),
(2, 'Data Utama', '<i class=\"fa fa-tags\"></i>', 2),
(3, 'Inventory', '<i class=\"fa fa-cubes\"></i>', 3),
(4, 'Transaksi', '<i class=\"fa fa-usd\"></i>', 4),
(5, 'Laporan', '<i class=\"fa fa-file-o\"></i>', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblsales`
--

CREATE TABLE `tblsales` (
  `sales_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `sales_number` varchar(50) NOT NULL,
  `total_price` decimal(18,2) DEFAULT NULL,
  `total_disc` decimal(18,2) DEFAULT NULL,
  `total_transaction` decimal(18,2) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `card_holder` varchar(50) NOT NULL,
  `card_number` varchar(20) NOT NULL,
  `payment` decimal(18,2) DEFAULT NULL,
  `exchange` decimal(18,2) DEFAULT NULL,
  `notes` varchar(2000) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblsales`
--

INSERT INTO `tblsales` (`sales_id`, `branch_id`, `sales_number`, `total_price`, `total_disc`, `total_transaction`, `payment_type`, `bank_id`, `card_holder`, `card_number`, `payment`, `exchange`, `notes`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(1, 11, 'POS2022040001', 98000.00, 0.00, 98000.00, 1, 0, '', '', 98000.00, 0.00, '', 45, '2022-04-01 18:48:50', NULL, NULL),
(2, 11, 'POS2022040002', 55500.00, 0.00, 55500.00, 1, 0, '', '', 55500.00, 0.00, '', 45, '2022-04-01 19:00:42', NULL, NULL),
(3, 11, 'POS2022040003', 9000.00, 0.00, 9000.00, 1, 0, '', '', 9000.00, 0.00, '', 45, '2022-04-01 19:53:23', NULL, NULL),
(5, 11, 'POS2022040005', 11500.00, 0.00, 11500.00, 1, 0, '', '', 11500.00, 0.00, '', 45, '2022-04-02 09:07:19', NULL, NULL),
(6, 11, 'POS2022040006', 140800.00, 0.00, 140800.00, 1, 0, '', '', 150000.00, 9200.00, '', 46, '2022-04-02 11:21:22', NULL, NULL),
(7, 11, 'POS2022040007', 50200.00, 0.00, 50200.00, 1, 0, '', '', 50200.00, 0.00, '', 46, '2022-04-02 11:55:29', NULL, NULL),
(8, 11, 'POS2022040008', 89000.00, 0.00, 89000.00, 1, 0, '', '', 89000.00, 0.00, '', 46, '2022-04-02 12:00:32', NULL, NULL),
(9, 11, 'POS2022040009', 19000.00, 0.00, 19000.00, 1, 0, '', '', 100000.00, 81000.00, '', 46, '2022-04-02 13:37:50', NULL, NULL),
(10, 11, 'POS2022040010', 49000.00, 0.00, 49000.00, 1, 0, '', '', 50000.00, 1000.00, '', 46, '2022-04-02 14:30:54', NULL, NULL),
(11, 11, 'POS2022040011', 17000.00, 0.00, 17000.00, 1, 0, '', '', 50000.00, 33000.00, '', 46, '2022-04-02 15:12:54', NULL, NULL),
(12, 11, 'POS2022040012', 32500.00, 0.00, 32500.00, 1, 0, '', '', 50000.00, 17500.00, '', 46, '2022-04-02 16:37:12', NULL, NULL),
(13, 11, 'POS2022040013', 93000.00, 0.00, 93000.00, 1, 0, '', '', 93000.00, 0.00, '', 46, '2022-04-02 18:01:17', NULL, NULL),
(14, 11, 'POS2022040014', 45000.00, 0.00, 45000.00, 1, 0, '', '', 45000.00, 0.00, '', 46, '2022-04-03 08:19:11', NULL, NULL),
(15, 11, 'POS2022040015', 334800.00, 0.00, 334800.00, 1, 0, '', '', 350000.00, 15200.00, '', 46, '2022-04-03 08:44:11', NULL, NULL),
(16, 11, 'POS2022040016', 50500.00, 0.00, 50500.00, 1, 0, '', '', 50500.00, 0.00, '', 46, '2022-04-03 09:16:24', NULL, NULL),
(17, 11, 'POS2022040017', 23000.00, 0.00, 23000.00, 1, 0, '', '', 23000.00, 0.00, '', 46, '2022-04-03 09:20:25', NULL, NULL),
(18, 11, 'POS2022040018', 28500.00, 0.00, 28500.00, 1, 0, '', '', 53500.00, 25000.00, '', 46, '2022-04-03 15:00:43', NULL, NULL),
(19, 11, 'POS2022040019', 43000.00, 0.00, 43000.00, 1, 0, '', '', 50000.00, 7000.00, '', 46, '2022-04-03 15:35:11', NULL, NULL),
(20, 11, 'POS2022040020', 51000.00, 0.00, 51000.00, 1, 0, '', '', 100000.00, 49000.00, '', 46, '2022-04-03 16:08:13', NULL, NULL),
(22, 11, 'POS2022040022', 30900.00, 0.00, 30900.00, 1, 0, '', '', 100000.00, 69100.00, '', 46, '2022-04-03 16:13:21', NULL, NULL),
(23, 11, 'POS2022040023', 20300.00, 0.00, 20300.00, 1, 0, '', '', 50000.00, 29700.00, '', 46, '2022-04-03 16:21:03', NULL, NULL),
(24, 11, 'POS2022040024', 8300.00, 0.00, 8300.00, 1, 0, '', '', 10000.00, 1700.00, '', 46, '2022-04-03 18:18:50', NULL, NULL),
(25, 11, 'POS2022040025', 150800.00, 0.00, 150800.00, 4, 3, 'Windy Salela', '5230082105', 150800.00, 0.00, '', 45, '2022-04-04 13:39:32', NULL, NULL),
(26, 11, 'POS2022040026', 33600.00, 0.00, 33600.00, 1, 0, '', '', 33600.00, 0.00, '', 46, '2022-04-04 17:29:08', NULL, NULL),
(27, 11, 'POS2022040027', 18200.00, 0.00, 18200.00, 1, 0, '', '', 20200.00, 2000.00, '', 46, '2022-04-05 08:21:50', NULL, NULL),
(28, 11, 'POS2022040028', 73100.00, 0.00, 73100.00, 1, 0, '', '', 100000.00, 26900.00, '', 46, '2022-04-05 08:42:21', NULL, NULL),
(29, 11, 'POS2022040029', 78300.00, 0.00, 78300.00, 1, 0, '', '', 78300.00, 0.00, '', 46, '2022-04-05 11:23:43', NULL, NULL),
(30, 11, 'POS2022040030', 21600.00, 0.00, 21600.00, 1, 0, '', '', 21600.00, 0.00, '', 46, '2022-04-05 13:59:15', NULL, NULL),
(31, 11, 'POS2022040031', 64900.00, 0.00, 64900.00, 4, 3, 'Windy Salela ', '5230082105', 64900.00, 0.00, '', 46, '2022-04-05 17:25:26', NULL, NULL),
(32, 11, 'POS2022040032', 24000.00, 0.00, 24000.00, 1, 0, '', '', 24000.00, 0.00, '', 46, '2022-04-05 18:27:32', NULL, NULL),
(33, 11, 'POS2022040033', 12000.00, 0.00, 12000.00, 1, 0, '', '', 15000.00, 3000.00, '', 46, '2022-04-05 18:28:45', NULL, NULL),
(34, 11, 'POS2022040034', 21100.00, 0.00, 21100.00, 1, 0, '', '', 21100.00, 0.00, '', 46, '2022-04-05 18:43:15', NULL, NULL),
(35, 11, 'POS2022040035', 27500.00, 0.00, 27500.00, 1, 0, '', '', 30000.00, 2500.00, '', 46, '2022-04-06 09:40:50', NULL, NULL),
(36, 11, 'POS2022040036', 20800.00, 0.00, 20800.00, 1, 0, '', '', 22000.00, 1200.00, '', 46, '2022-04-06 09:54:22', NULL, NULL),
(37, 11, 'POS2022040037', 39800.00, 0.00, 39800.00, 1, 0, '', '', 40000.00, 200.00, '', 46, '2022-04-06 13:57:03', NULL, NULL),
(38, 11, 'POS2022040038', 12100.00, 0.00, 12100.00, 4, 2, 'wINDY', '103006219162', 12100.00, 0.00, '', 46, '2022-04-06 13:59:50', NULL, NULL),
(39, 11, 'POS2022040039', 84400.00, 0.00, 84400.00, 1, 0, '', '', 100000.00, 15600.00, '', 46, '2022-04-06 15:10:15', NULL, NULL),
(40, 11, 'POS2022040040', 113000.00, 0.00, 113000.00, 1, 0, '', '', 120000.00, 7000.00, '', 46, '2022-04-06 15:30:03', NULL, NULL),
(41, 11, 'POS2022040041', 11600.00, 0.00, 11600.00, 1, 0, '', '', 12000.00, 400.00, '', 46, '2022-04-06 16:11:53', NULL, NULL),
(42, 11, 'POS2022040042', 116000.00, 0.00, 116000.00, 1, 0, '', '', 150000.00, 34000.00, '', 46, '2022-04-06 17:11:49', NULL, NULL),
(43, 11, 'POS2022040043', 40200.00, 0.00, 40200.00, 1, 0, '', '', 500200.00, 460000.00, '', 46, '2022-04-06 19:03:53', NULL, NULL),
(44, 11, 'POS2022040044', 25400.00, 0.00, 25400.00, 1, 0, '', '', 25400.00, 0.00, '', 46, '2022-04-06 19:06:27', NULL, NULL),
(45, 11, 'POS2022040045', 131500.00, 0.00, 131500.00, 4, 3, 'windy salela', '5230082105', 131500.00, 0.00, '', 46, '2022-04-06 19:30:35', NULL, NULL),
(46, 11, 'POS2022040046', 64300.00, 0.00, 64300.00, 1, 0, '', '', 100000.00, 35700.00, '', 46, '2022-04-07 10:49:29', NULL, NULL),
(47, 11, 'POS2022040047', 18200.00, 0.00, 18200.00, 1, 0, '', '', 50000.00, 31800.00, '', 46, '2022-04-07 10:55:29', NULL, NULL),
(48, 11, 'POS2022040048', 49300.00, 0.00, 49300.00, 1, 0, '', '', 50000.00, 700.00, '', 46, '2022-04-07 12:46:58', NULL, NULL),
(49, 11, 'POS2022040049', 53200.00, 0.00, 53200.00, 4, 3, 'windy', '5230082105', 53200.00, 0.00, '', 46, '2022-04-07 18:57:36', NULL, NULL),
(51, 11, 'POS2022040051', 109400.00, 0.00, 109400.00, 1, 0, '', '', 110000.00, 600.00, '', 46, '2022-04-08 07:42:45', NULL, NULL),
(52, 11, 'POS2022040052', 23500.00, 0.00, 23500.00, 1, 0, '', '', 25000.00, 1500.00, '', 46, '2022-04-08 07:44:50', NULL, NULL),
(53, 11, 'POS2022040053', 9300.00, 0.00, 9300.00, 1, 0, '', '', 10300.00, 1000.00, '', 46, '2022-04-08 17:16:52', NULL, NULL),
(54, 11, 'POS2022040054', 31900.00, 0.00, 31900.00, 1, 0, '', '', 31900.00, 0.00, '', 46, '2022-04-08 17:33:23', NULL, NULL),
(55, 11, 'POS2022040055', 13200.00, 0.00, 13200.00, 1, 0, '', '', 50000.00, 36800.00, '', 46, '2022-04-08 18:02:16', NULL, NULL),
(56, 11, 'POS2022040056', 66100.00, 0.00, 66100.00, 1, 0, '', '', 66100.00, 0.00, '', 46, '2022-04-09 08:54:38', NULL, NULL),
(57, 11, 'POS2022040057', 28700.00, 0.00, 28700.00, 1, 0, '', '', 30000.00, 1300.00, '', 46, '2022-04-09 09:34:38', NULL, NULL),
(58, 11, 'POS2022040058', 63100.00, 0.00, 63100.00, 4, 3, 'windy salela', '5230082105', 63100.00, 0.00, '', 46, '2022-04-09 09:57:26', NULL, NULL),
(59, 11, 'POS2022040059', 18200.00, 0.00, 18200.00, 1, 0, '', '', 50200.00, 32000.00, '', 46, '2022-04-09 11:04:16', NULL, NULL),
(60, 11, 'POS2022040060', 46400.00, 0.00, 46400.00, 4, 3, 'ws', '5230082105', 46400.00, 0.00, '', 46, '2022-04-09 14:04:14', NULL, NULL),
(61, 11, 'POS2022040061', 63500.00, 0.00, 63500.00, 1, 0, '', '', 100000.00, 36500.00, '', 46, '2022-04-09 17:37:30', NULL, NULL),
(62, 11, 'POS2022040062', 47500.00, 0.00, 47500.00, 1, 0, '', '', 100000.00, 52500.00, '', 46, '2022-04-10 07:44:56', NULL, NULL),
(63, 11, 'POS2022040063', 17500.00, 0.00, 17500.00, 1, 0, '', '', 50000.00, 32500.00, '', 46, '2022-04-10 07:46:54', NULL, NULL),
(64, 11, 'POS2022040064', 34500.00, 0.00, 34500.00, 1, 0, '', '', 50000.00, 15500.00, '', 46, '2022-04-10 07:49:42', NULL, NULL),
(65, 11, 'POS2022040065', 39000.00, 0.00, 39000.00, 1, 0, '', '', 100000.00, 61000.00, '', 46, '2022-04-10 07:53:53', NULL, NULL),
(66, 11, 'POS2022040066', 36600.00, 0.00, 36600.00, 1, 0, '', '', 36600.00, 0.00, '', 46, '2022-04-10 09:48:32', NULL, NULL),
(67, 11, 'POS2022040067', 34700.00, 0.00, 34700.00, 1, 0, '', '', 100000.00, 65300.00, '', 46, '2022-04-10 11:36:50', NULL, NULL),
(68, 11, 'POS2022040068', 79600.00, 0.00, 79600.00, 1, 0, '', '', 100000.00, 20400.00, '', 46, '2022-04-10 11:49:16', NULL, NULL),
(69, 11, 'POS2022040069', 125100.00, 0.00, 125100.00, 4, 3, 'windy', '5230082105', 125100.00, 0.00, '', 46, '2022-04-10 11:57:23', NULL, NULL),
(70, 11, 'POS2022040070', 103800.00, 0.00, 103800.00, 1, 0, '', '', 105000.00, 1200.00, '', 46, '2022-04-10 14:41:17', NULL, NULL),
(71, 11, 'POS2022040071', 134100.00, 0.00, 134100.00, 1, 0, '', '', 200000.00, 65900.00, '', 46, '2022-04-10 14:45:22', NULL, NULL),
(72, 11, 'POS2022040072', 20800.00, 0.00, 20800.00, 1, 0, '', '', 20800.00, 0.00, '', 46, '2022-04-10 16:52:35', NULL, NULL),
(73, 11, 'POS2022040073', 11600.00, 0.00, 11600.00, 1, 0, '', '', 50000.00, 38400.00, '', 46, '2022-04-11 11:20:45', NULL, NULL),
(74, 11, 'POS2022040074', 32200.00, 0.00, 32200.00, 1, 0, '', '', 32200.00, 0.00, '', 46, '2022-04-11 15:35:11', NULL, NULL),
(75, 11, 'POS2022040075', 47900.00, 0.00, 47900.00, 1, 0, '', '', 50000.00, 2100.00, '', 46, '2022-04-11 16:15:57', NULL, NULL),
(76, 11, 'POS2022040076', 149500.00, 0.00, 149500.00, 1, 0, '', '', 149500.00, 0.00, '', 46, '2022-04-11 17:18:45', NULL, NULL),
(77, 11, 'POS2022040077', 149500.00, 0.00, 149500.00, 1, 0, '', '', 149500.00, 0.00, '', 46, '2022-04-11 17:20:25', NULL, NULL),
(78, 11, 'POS2022040078', 29400.00, 0.00, 29400.00, 1, 0, '', '', 50000.00, 20600.00, '', 46, '2022-04-12 10:00:16', NULL, NULL),
(79, 11, 'POS2022040079', 37400.00, 0.00, 37400.00, 1, 0, '', '', 50000.00, 12600.00, '', 46, '2022-04-12 10:33:57', NULL, NULL),
(80, 11, 'POS2022040080', 66100.00, 0.00, 66100.00, 4, 3, 'Windy Salela', '5230082105', 66100.00, 0.00, '', 46, '2022-04-12 10:37:26', NULL, NULL),
(81, 11, 'POS2022040081', 30900.00, 0.00, 30900.00, 1, 0, '', '', 35000.00, 4100.00, '', 46, '2022-04-12 13:29:11', NULL, NULL),
(82, 11, 'POS2022040082', 27800.00, 0.00, 27800.00, 1, 0, '', '', 40000.00, 12200.00, '', 46, '2022-04-13 08:41:55', NULL, NULL),
(83, 11, 'POS2022040083', 206500.00, 0.00, 206500.00, 4, 3, 'ws', '5230082105', 206500.00, 0.00, '', 46, '2022-04-13 08:56:37', NULL, NULL),
(84, 11, 'POS2022040084', 101500.00, 0.00, 101500.00, 1, 0, '', '', 102000.00, 500.00, '', 46, '2022-04-13 14:47:40', NULL, NULL),
(85, 11, 'POS2022040085', 85800.00, 0.00, 85800.00, 1, 0, '', '', 100000.00, 14200.00, '', 46, '2022-04-13 16:13:04', NULL, NULL),
(86, 11, 'POS2022040086', 25600.00, 0.00, 25600.00, 4, 3, 'WS', '5230082105', 25600.00, 0.00, '', 46, '2022-04-13 18:42:22', NULL, NULL),
(87, 11, 'POS2022040087', 36500.00, 0.00, 36500.00, 1, 0, '', '', 100000.00, 63500.00, '', 46, '2022-04-14 08:48:33', NULL, NULL),
(88, 11, 'POS2022040088', 19900.00, 0.00, 19900.00, 1, 0, '', '', 20000.00, 100.00, '', 46, '2022-04-14 09:18:20', NULL, NULL),
(89, 11, 'POS2022040089', 23800.00, 0.00, 23800.00, 4, 3, 'ws', '5230082105', 23800.00, 0.00, '', 46, '2022-04-14 14:06:04', NULL, NULL),
(90, 11, 'POS2022040090', 54200.00, 0.00, 54200.00, 1, 0, '', '', 54500.00, 300.00, '', 46, '2022-04-15 07:50:16', NULL, NULL),
(91, 11, 'POS2022040091', 27800.00, 0.00, 27800.00, 1, 0, '', '', 30000.00, 2200.00, '', 46, '2022-04-15 10:36:34', NULL, NULL),
(92, 11, 'POS2022040092', 105600.00, 0.00, 105600.00, 4, 3, 'windy salela', '5230082105', 105600.00, 0.00, 'beli roti burger vitalia roti burger bernardi sosis kanzler yona beef', 46, '2022-04-15 12:45:29', NULL, NULL),
(93, 11, 'POS2022040093', 76200.00, 0.00, 76200.00, 1, 0, '', '', 100000.00, 23800.00, '', 46, '2022-04-15 13:22:12', NULL, NULL),
(94, 11, 'POS2022040094', 64100.00, 0.00, 64100.00, 1, 0, '', '', 100000.00, 35900.00, '', 46, '2022-04-15 16:55:10', NULL, NULL),
(95, 11, 'POS2022040095', 9200.00, 0.00, 9200.00, 1, 0, '', '', 10200.00, 1000.00, '', 46, '2022-04-15 18:14:58', NULL, NULL),
(96, 11, 'POS2022040096', 12400.00, 0.00, 12400.00, 1, 0, '', '', 15000.00, 2600.00, '', 46, '2022-04-16 08:09:14', NULL, NULL),
(97, 11, 'POS2022040097', 75100.00, 0.00, 75100.00, 1, 0, '', '', 76000.00, 900.00, '', 46, '2022-04-16 08:18:19', NULL, NULL),
(98, 11, 'POS2022040098', 19900.00, 0.00, 19900.00, 1, 0, '', '', 50000.00, 30100.00, '', 46, '2022-04-16 09:16:24', NULL, NULL),
(99, 11, 'POS2022040099', 20700.00, 0.00, 20700.00, 1, 0, '', '', 20700.00, 0.00, '', 46, '2022-04-16 10:24:06', NULL, NULL),
(100, 11, 'POS2022040100', 28700.00, 0.00, 28700.00, 1, 0, '', '', 30000.00, 1300.00, '', 46, '2022-04-16 11:52:36', NULL, NULL),
(101, 11, 'POS2022040101', 114800.00, 0.00, 114800.00, 1, 0, '', '', 115000.00, 200.00, '', 46, '2022-04-16 11:54:12', NULL, NULL),
(102, 11, 'POS2022040102', 33400.00, 0.00, 33400.00, 1, 0, '', '', 33400.00, 0.00, '', 46, '2022-04-16 12:41:58', NULL, NULL),
(103, 11, 'POS2022040103', 19600.00, 0.00, 19600.00, 1, 0, '', '', 100000.00, 80400.00, '', 46, '2022-04-16 13:06:46', NULL, NULL),
(104, 11, 'POS2022040104', 67900.00, 0.00, 67900.00, 1, 0, '', '', 67900.00, 0.00, '', 45, '2022-04-16 14:07:30', NULL, NULL),
(105, 11, 'POS2022040105', 69500.00, 0.00, 69500.00, 1, 0, '', '', 70000.00, 500.00, '', 46, '2022-04-17 08:26:53', NULL, NULL),
(106, 11, 'POS2022040106', 31000.00, 0.00, 31000.00, 1, 0, '', '', 100000.00, 69000.00, '', 46, '2022-04-17 10:09:49', NULL, NULL),
(107, 11, 'POS2022040107', 41600.00, 0.00, 41600.00, 1, 0, '', '', 50000.00, 8400.00, '', 46, '2022-04-17 11:11:13', NULL, NULL),
(108, 11, 'POS2022040108', 75600.00, 0.00, 75600.00, 1, 0, '', '', 80000.00, 4400.00, '', 46, '2022-04-17 11:44:31', NULL, NULL),
(109, 11, 'POS2022040109', 41800.00, 0.00, 41800.00, 1, 0, '', '', 50000.00, 8200.00, '', 46, '2022-04-17 11:58:33', NULL, NULL),
(110, 11, 'POS2022040110', 16200.00, 0.00, 16200.00, 1, 0, '', '', 100000.00, 83800.00, '', 46, '2022-04-17 16:14:28', NULL, NULL),
(111, 11, 'POS2022040111', 18100.00, 0.00, 18100.00, 1, 0, '', '', 50000.00, 31900.00, '', 46, '2022-04-18 08:07:04', NULL, NULL),
(112, 11, 'POS2022040112', 16800.00, 0.00, 16800.00, 1, 0, '', '', 17000.00, 200.00, '', 45, '2022-04-18 09:31:04', NULL, NULL),
(113, 11, 'POS2022040113', 57900.00, 0.00, 57900.00, 1, 0, '', '', 60000.00, 2100.00, '', 45, '2022-04-18 09:50:33', NULL, NULL),
(114, 11, 'POS2022040114', 44600.00, 0.00, 44600.00, 1, 0, '', '', 50000.00, 5400.00, '', 45, '2022-04-18 16:09:52', NULL, NULL),
(115, 11, 'POS2022040115', 75000.00, 0.00, 75000.00, 1, 0, '', '', 100000.00, 25000.00, '', 45, '2022-04-19 07:42:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsales_det`
--

CREATE TABLE `tblsales_det` (
  `sales_det_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` decimal(18,0) DEFAULT NULL,
  `disc` decimal(18,0) DEFAULT NULL,
  `extra_disc` decimal(18,0) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` decimal(18,0) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblsales_det`
--

INSERT INTO `tblsales_det` (`sales_det_id`, `sales_id`, `item_id`, `price`, `disc`, `extra_disc`, `qty`, `subtotal`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(1, 1, 252, 32500, 0, 0, 2, 65000, 45, '2022-04-01 18:48:50', NULL, NULL),
(2, 1, 130, 33000, 0, 0, 1, 33000, 45, '2022-04-01 18:48:50', NULL, NULL),
(3, 2, 99, 55500, 0, 0, 1, 55500, 45, '2022-04-01 19:00:42', NULL, NULL),
(4, 3, 292, 9000, 0, 0, 1, 9000, 45, '2022-04-01 19:53:23', NULL, NULL),
(10, 5, 415, 11500, 0, 0, 1, 11500, 45, '2022-04-02 09:07:19', NULL, NULL),
(11, 6, 255, 17300, 0, 0, 1, 17300, 46, '2022-04-02 11:21:22', NULL, NULL),
(12, 6, 702, 45500, 0, 0, 1, 45500, 46, '2022-04-02 11:21:22', NULL, NULL),
(13, 6, 597, 32500, 0, 0, 1, 32500, 46, '2022-04-02 11:21:22', NULL, NULL),
(14, 6, 396, 25000, 0, 0, 1, 25000, 46, '2022-04-02 11:21:22', NULL, NULL),
(15, 6, 650, 20500, 0, 0, 1, 20500, 46, '2022-04-02 11:21:22', NULL, NULL),
(16, 7, 364, 7800, 0, 0, 1, 7800, 46, '2022-04-02 11:55:29', NULL, NULL),
(17, 7, 366, 7800, 0, 0, 1, 7800, 46, '2022-04-02 11:55:29', NULL, NULL),
(18, 7, 123, 8500, 0, 0, 1, 8500, 46, '2022-04-02 11:55:29', NULL, NULL),
(19, 7, 77, 9600, 0, 0, 1, 9600, 46, '2022-04-02 11:55:29', NULL, NULL),
(20, 7, 125, 16500, 0, 0, 1, 16500, 46, '2022-04-02 11:55:29', NULL, NULL),
(21, 8, 683, 12000, 0, 0, 2, 24000, 46, '2022-04-02 12:00:32', NULL, NULL),
(22, 8, 534, 65000, 0, 0, 1, 65000, 46, '2022-04-02 12:00:32', NULL, NULL),
(23, 9, 691, 19000, 0, 0, 1, 19000, 46, '2022-04-02 13:37:50', NULL, NULL),
(24, 10, 692, 49000, 0, 0, 1, 49000, 46, '2022-04-02 14:30:54', NULL, NULL),
(25, 11, 688, 17000, 0, 0, 1, 17000, 46, '2022-04-02 15:12:54', NULL, NULL),
(26, 12, 597, 32500, 0, 0, 1, 32500, 46, '2022-04-02 16:37:12', NULL, NULL),
(27, 13, 252, 33000, 0, 0, 2, 66000, 46, '2022-04-02 18:01:17', NULL, NULL),
(28, 13, 608, 27000, 0, 0, 1, 27000, 46, '2022-04-02 18:01:17', NULL, NULL),
(29, 14, 163, 21000, 0, 0, 1, 21000, 46, '2022-04-03 08:19:11', NULL, NULL),
(30, 14, 320, 12000, 0, 0, 1, 12000, 46, '2022-04-03 08:19:11', NULL, NULL),
(31, 14, 683, 12000, 0, 0, 1, 12000, 46, '2022-04-03 08:19:11', NULL, NULL),
(32, 15, 537, 34800, 0, 0, 6, 208800, 46, '2022-04-03 08:44:11', NULL, NULL),
(33, 15, 596, 31500, 0, 0, 4, 126000, 46, '2022-04-03 08:44:11', NULL, NULL),
(34, 16, 691, 19000, 0, 0, 1, 19000, 46, '2022-04-03 09:16:24', NULL, NULL),
(35, 16, 596, 31500, 0, 0, 1, 31500, 46, '2022-04-03 09:16:24', NULL, NULL),
(36, 17, 554, 6500, 0, 0, 1, 6500, 46, '2022-04-03 09:20:25', NULL, NULL),
(37, 17, 697, 16500, 0, 0, 1, 16500, 46, '2022-04-03 09:20:25', NULL, NULL),
(38, 18, 701, 20200, 0, 0, 1, 20200, 46, '2022-04-03 15:00:43', NULL, NULL),
(39, 18, 450, 8300, 0, 0, 1, 8300, 46, '2022-04-03 15:00:43', NULL, NULL),
(40, 19, 699, 43000, 0, 0, 1, 43000, 46, '2022-04-03 15:35:11', NULL, NULL),
(41, 20, 606, 51000, 0, 0, 1, 51000, 46, '2022-04-03 16:08:13', NULL, NULL),
(44, 22, 125, 17200, 0, 0, 1, 17200, 46, '2022-04-03 16:13:21', NULL, NULL),
(45, 22, 220, 13700, 0, 0, 1, 13700, 46, '2022-04-03 16:13:21', NULL, NULL),
(46, 23, 135, 20300, 0, 0, 1, 20300, 46, '2022-04-03 16:21:03', NULL, NULL),
(47, 24, 450, 8300, 0, 0, 1, 8300, 46, '2022-04-03 18:18:50', NULL, NULL),
(48, 25, 701, 20200, 0, 0, 1, 20200, 45, '2022-04-04 13:39:32', NULL, NULL),
(49, 25, 263, 24900, 0, 0, 1, 24900, 45, '2022-04-04 13:39:32', NULL, NULL),
(50, 25, 160, 57700, 0, 0, 1, 57700, 45, '2022-04-04 13:39:32', NULL, NULL),
(51, 25, 614, 48000, 0, 0, 1, 48000, 45, '2022-04-04 13:39:32', NULL, NULL),
(52, 26, 697, 16800, 0, 0, 2, 33600, 46, '2022-04-04 17:29:08', NULL, NULL),
(53, 27, 688, 18200, 0, 0, 1, 18200, 46, '2022-04-05 08:21:50', NULL, NULL),
(54, 28, 177, 21400, 0, 0, 1, 21400, 46, '2022-04-05 08:42:21', NULL, NULL),
(55, 28, 699, 46600, 0, 0, 1, 46600, 46, '2022-04-05 08:42:21', NULL, NULL),
(56, 28, 368, 5100, 0, 0, 1, 5100, 46, '2022-04-05 08:42:21', NULL, NULL),
(57, 29, 295, 16300, 0, 0, 2, 32600, 46, '2022-04-05 11:23:43', NULL, NULL),
(58, 29, 416, 24600, 0, 0, 1, 24600, 46, '2022-04-05 11:23:43', NULL, NULL),
(59, 29, 135, 21100, 0, 0, 1, 21100, 46, '2022-04-05 11:23:43', NULL, NULL),
(60, 30, 328, 21600, 0, 0, 1, 21600, 46, '2022-04-05 13:59:15', NULL, NULL),
(61, 31, 687, 48600, 0, 0, 1, 48600, 46, '2022-04-05 17:25:26', NULL, NULL),
(62, 31, 295, 16300, 0, 0, 1, 16300, 46, '2022-04-05 17:25:26', NULL, NULL),
(63, 32, 683, 12000, 0, 0, 2, 24000, 46, '2022-04-05 18:27:32', NULL, NULL),
(64, 33, 683, 12000, 0, 0, 1, 12000, 46, '2022-04-05 18:28:45', NULL, NULL),
(65, 34, 135, 21100, 0, 0, 1, 21100, 46, '2022-04-05 18:43:15', NULL, NULL),
(66, 35, 584, 27500, 0, 0, 1, 27500, 46, '2022-04-06 09:40:50', NULL, NULL),
(67, 36, 701, 20800, 0, 0, 1, 20800, 46, '2022-04-06 09:54:22', NULL, NULL),
(68, 37, 177, 26700, 0, 0, 1, 26700, 46, '2022-04-06 13:57:03', NULL, NULL),
(69, 37, 320, 13100, 0, 0, 1, 13100, 46, '2022-04-06 13:57:03', NULL, NULL),
(70, 38, 599, 12100, 0, 0, 1, 12100, 46, '2022-04-06 13:59:50', NULL, NULL),
(71, 39, 534, 65000, 0, 0, 1, 65000, 46, '2022-04-06 15:10:15', NULL, NULL),
(72, 39, 380, 10100, 0, 0, 1, 10100, 46, '2022-04-06 15:10:15', NULL, NULL),
(73, 39, 366, 9300, 0, 0, 1, 9300, 46, '2022-04-06 15:10:15', NULL, NULL),
(74, 40, 192, 16300, 0, 0, 1, 16300, 46, '2022-04-06 15:30:03', NULL, NULL),
(75, 40, 416, 24600, 0, 0, 1, 24600, 46, '2022-04-06 15:30:03', NULL, NULL),
(76, 40, 683, 12000, 0, 0, 1, 12000, 46, '2022-04-06 15:30:03', NULL, NULL),
(77, 40, 581, 13100, 0, 0, 1, 13100, 46, '2022-04-06 15:30:03', NULL, NULL),
(78, 40, 109, 18800, 0, 0, 1, 18800, 46, '2022-04-06 15:30:03', NULL, NULL),
(79, 40, 652, 28200, 0, 0, 1, 28200, 46, '2022-04-06 15:30:03', NULL, NULL),
(80, 41, 124, 11600, 0, 0, 1, 11600, 46, '2022-04-06 16:11:53', NULL, NULL),
(81, 42, 227, 25200, 0, 0, 1, 25200, 46, '2022-04-06 17:11:49', NULL, NULL),
(82, 42, 606, 55400, 0, 0, 1, 55400, 46, '2022-04-06 17:11:49', NULL, NULL),
(83, 42, 252, 35400, 0, 0, 1, 35400, 46, '2022-04-06 17:11:49', NULL, NULL),
(84, 43, 575, 23500, 0, 0, 1, 23500, 46, '2022-04-06 19:03:53', NULL, NULL),
(85, 43, 258, 16700, 0, 0, 1, 16700, 46, '2022-04-06 19:03:53', NULL, NULL),
(86, 44, 465, 25400, 0, 0, 1, 25400, 46, '2022-04-06 19:06:27', NULL, NULL),
(87, 45, 698, 30900, 0, 0, 1, 30900, 46, '2022-04-06 19:30:35', NULL, NULL),
(88, 45, 702, 49300, 0, 0, 1, 49300, 46, '2022-04-06 19:30:35', NULL, NULL),
(89, 45, 614, 51300, 0, 0, 1, 51300, 46, '2022-04-06 19:30:35', NULL, NULL),
(90, 46, 681, 27800, 0, 0, 1, 27800, 46, '2022-04-07 10:49:29', NULL, NULL),
(91, 46, 575, 23500, 0, 0, 1, 23500, 46, '2022-04-07 10:49:29', NULL, NULL),
(92, 46, 582, 13000, 0, 0, 1, 13000, 46, '2022-04-07 10:49:29', NULL, NULL),
(93, 47, 688, 18200, 0, 0, 1, 18200, 46, '2022-04-07 10:55:29', NULL, NULL),
(94, 48, 702, 49300, 0, 0, 1, 49300, 46, '2022-04-07 12:46:58', NULL, NULL),
(95, 49, 77, 11900, 0, 0, 1, 11900, 46, '2022-04-07 18:57:36', NULL, NULL),
(96, 49, 720, 41300, 0, 0, 1, 41300, 46, '2022-04-07 18:57:36', NULL, NULL),
(99, 51, 614, 51300, 0, 0, 1, 51300, 46, '2022-04-08 07:42:45', NULL, NULL),
(100, 51, 76, 13300, 0, 0, 1, 13300, 46, '2022-04-08 07:42:45', NULL, NULL),
(101, 51, 605, 44800, 0, 0, 1, 44800, 46, '2022-04-08 07:42:45', NULL, NULL),
(102, 52, 575, 23500, 0, 0, 1, 23500, 46, '2022-04-08 07:44:50', NULL, NULL),
(103, 53, 123, 9300, 0, 0, 1, 9300, 46, '2022-04-08 17:16:52', NULL, NULL),
(104, 54, 732, 13300, 0, 0, 1, 13300, 46, '2022-04-08 17:33:23', NULL, NULL),
(105, 54, 725, 18600, 0, 0, 1, 18600, 46, '2022-04-08 17:33:23', NULL, NULL),
(106, 55, 739, 13200, 0, 0, 1, 13200, 46, '2022-04-08 18:02:16', NULL, NULL),
(107, 56, 716, 28700, 0, 0, 1, 28700, 46, '2022-04-09 08:54:38', NULL, NULL),
(108, 56, 729, 37400, 0, 0, 1, 37400, 46, '2022-04-09 08:54:38', NULL, NULL),
(109, 57, 716, 28700, 0, 0, 1, 28700, 46, '2022-04-09 09:34:38', NULL, NULL),
(110, 58, 295, 16300, 0, 0, 1, 16300, 46, '2022-04-09 09:57:26', NULL, NULL),
(111, 58, 582, 13000, 0, 0, 1, 13000, 46, '2022-04-09 09:57:26', NULL, NULL),
(112, 58, 574, 33800, 0, 0, 1, 33800, 46, '2022-04-09 09:57:26', NULL, NULL),
(113, 59, 688, 18200, 0, 0, 1, 18200, 46, '2022-04-09 11:04:16', NULL, NULL),
(114, 60, 686, 46400, 0, 0, 1, 46400, 46, '2022-04-09 14:04:14', NULL, NULL),
(115, 61, 295, 16300, 0, 0, 2, 32600, 46, '2022-04-09 17:37:30', NULL, NULL),
(116, 61, 698, 30900, 0, 0, 1, 30900, 46, '2022-04-09 17:37:30', NULL, NULL),
(117, 62, 691, 20800, 0, 0, 1, 20800, 46, '2022-04-10 07:44:56', NULL, NULL),
(118, 62, 450, 8500, 0, 0, 1, 8500, 46, '2022-04-10 07:44:56', NULL, NULL),
(119, 62, 688, 18200, 0, 0, 1, 18200, 46, '2022-04-10 07:44:56', NULL, NULL),
(120, 63, 697, 17500, 0, 0, 1, 17500, 46, '2022-04-10 07:46:54', NULL, NULL),
(121, 64, 697, 17500, 0, 0, 1, 17500, 46, '2022-04-10 07:49:42', NULL, NULL),
(122, 64, 450, 8500, 0, 0, 2, 17000, 46, '2022-04-10 07:49:42', NULL, NULL),
(123, 65, 688, 18200, 0, 0, 1, 18200, 46, '2022-04-10 07:53:53', NULL, NULL),
(124, 65, 691, 20800, 0, 0, 1, 20800, 46, '2022-04-10 07:53:53', NULL, NULL),
(125, 66, 598, 24600, 0, 0, 1, 24600, 46, '2022-04-10 09:48:32', NULL, NULL),
(126, 66, 683, 12000, 0, 0, 1, 12000, 46, '2022-04-10 09:48:32', NULL, NULL),
(127, 67, 711, 13100, 0, 0, 1, 13100, 46, '2022-04-10 11:36:50', NULL, NULL),
(128, 67, 328, 21600, 0, 0, 1, 21600, 46, '2022-04-10 11:36:50', NULL, NULL),
(129, 68, 720, 39800, 0, 0, 2, 79600, 46, '2022-04-10 11:49:16', NULL, NULL),
(130, 69, 315, 16500, 0, 0, 1, 16500, 46, '2022-04-10 11:57:23', NULL, NULL),
(131, 69, 229, 54300, 0, 0, 1, 54300, 46, '2022-04-10 11:57:23', NULL, NULL),
(132, 69, 228, 54300, 0, 0, 1, 54300, 46, '2022-04-10 11:57:23', NULL, NULL),
(133, 70, 690, 71900, 0, 0, 1, 71900, 46, '2022-04-10 14:41:17', NULL, NULL),
(134, 70, 596, 31900, 0, 0, 1, 31900, 46, '2022-04-10 14:41:17', NULL, NULL),
(135, 71, 690, 71900, 0, 0, 1, 71900, 46, '2022-04-10 14:45:22', NULL, NULL),
(136, 71, 595, 31600, 0, 0, 1, 31600, 46, '2022-04-10 14:45:22', NULL, NULL),
(137, 71, 390, 30600, 0, 0, 1, 30600, 46, '2022-04-10 14:45:22', NULL, NULL),
(138, 72, 691, 20800, 0, 0, 1, 20800, 46, '2022-04-10 16:52:35', NULL, NULL),
(139, 73, 124, 11600, 0, 0, 1, 11600, 46, '2022-04-11 11:20:45', NULL, NULL),
(140, 74, 731, 11900, 0, 0, 1, 11900, 46, '2022-04-11 15:35:11', NULL, NULL),
(141, 74, 708, 20300, 0, 0, 1, 20300, 46, '2022-04-11 15:35:11', NULL, NULL),
(142, 75, 727, 31500, 0, 0, 1, 31500, 46, '2022-04-11 16:15:57', NULL, NULL),
(143, 75, 735, 11600, 0, 0, 1, 11600, 46, '2022-04-11 16:15:57', NULL, NULL),
(144, 75, 368, 4800, 0, 0, 1, 4800, 46, '2022-04-11 16:15:57', NULL, NULL),
(145, 76, 720, 39800, 0, 0, 1, 39800, 46, '2022-04-11 17:18:45', NULL, NULL),
(146, 76, 693, 62800, 0, 0, 1, 62800, 46, '2022-04-11 17:18:45', NULL, NULL),
(147, 76, 687, 46900, 0, 0, 1, 46900, 46, '2022-04-11 17:18:45', NULL, NULL),
(148, 77, 720, 39800, 0, 0, 1, 39800, 46, '2022-04-11 17:20:25', NULL, NULL),
(149, 77, 687, 46900, 0, 0, 1, 46900, 46, '2022-04-11 17:20:25', NULL, NULL),
(150, 77, 693, 62800, 0, 0, 1, 62800, 46, '2022-04-11 17:20:25', NULL, NULL),
(151, 78, 390, 29400, 0, 0, 1, 29400, 46, '2022-04-12 10:00:16', NULL, NULL),
(152, 79, 729, 37400, 0, 0, 1, 37400, 46, '2022-04-12 10:33:57', NULL, NULL),
(153, 80, 716, 28700, 0, 0, 1, 28700, 46, '2022-04-12 10:37:26', NULL, NULL),
(154, 80, 729, 37400, 0, 0, 1, 37400, 46, '2022-04-12 10:37:26', NULL, NULL),
(155, 81, 698, 30900, 0, 0, 1, 30900, 46, '2022-04-12 13:29:11', NULL, NULL),
(156, 82, 450, 8500, 0, 0, 1, 8500, 46, '2022-04-13 08:41:55', NULL, NULL),
(157, 82, 717, 19300, 0, 0, 1, 19300, 46, '2022-04-13 08:41:55', NULL, NULL),
(158, 83, 715, 34600, 0, 0, 1, 34600, 46, '2022-04-13 08:56:37', NULL, NULL),
(159, 83, 747, 44100, 0, 0, 1, 44100, 46, '2022-04-13 08:56:37', NULL, NULL),
(160, 83, 315, 16500, 0, 0, 1, 16500, 46, '2022-04-13 08:56:37', NULL, NULL),
(161, 83, 606, 53500, 0, 0, 1, 53500, 46, '2022-04-13 08:56:37', NULL, NULL),
(162, 83, 175, 57800, 0, 0, 1, 57800, 46, '2022-04-13 08:56:37', NULL, NULL),
(163, 84, 593, 31600, 0, 0, 1, 31600, 46, '2022-04-13 14:47:40', NULL, NULL),
(164, 84, 192, 16300, 0, 0, 1, 16300, 46, '2022-04-13 14:47:40', NULL, NULL),
(165, 84, 691, 19900, 0, 0, 1, 19900, 46, '2022-04-13 14:47:40', NULL, NULL),
(166, 84, 232, 9400, 0, 0, 1, 9400, 46, '2022-04-13 14:47:40', NULL, NULL),
(167, 84, 320, 13100, 0, 0, 1, 13100, 46, '2022-04-13 14:47:40', NULL, NULL),
(168, 84, 197, 11200, 0, 0, 1, 11200, 46, '2022-04-13 14:47:40', NULL, NULL),
(169, 85, 718, 68900, 0, 0, 1, 68900, 46, '2022-04-13 16:13:04', NULL, NULL),
(170, 85, 697, 16900, 0, 0, 1, 16900, 46, '2022-04-13 16:13:04', NULL, NULL),
(171, 86, 263, 25600, 0, 0, 1, 25600, 46, '2022-04-13 18:42:22', NULL, NULL),
(172, 87, 697, 16900, 0, 0, 1, 16900, 46, '2022-04-14 08:48:33', NULL, NULL),
(173, 87, 688, 19600, 0, 0, 1, 19600, 46, '2022-04-14 08:48:33', NULL, NULL),
(174, 88, 691, 19900, 0, 0, 1, 19900, 46, '2022-04-14 09:18:20', NULL, NULL),
(175, 89, 197, 11000, 0, 0, 1, 11000, 46, '2022-04-14 14:06:04', NULL, NULL),
(176, 89, 320, 12800, 0, 0, 1, 12800, 46, '2022-04-14 14:06:04', NULL, NULL),
(177, 90, 211, 29200, 0, 0, 1, 29200, 46, '2022-04-15 07:50:16', NULL, NULL),
(178, 90, 712, 25000, 0, 0, 1, 25000, 46, '2022-04-15 07:50:16', NULL, NULL),
(179, 91, 752, 27800, 0, 0, 1, 27800, 46, '2022-04-15 10:36:34', NULL, NULL),
(180, 92, 720, 39800, 0, 0, 1, 39800, 46, '2022-04-15 12:45:29', NULL, NULL),
(181, 92, 605, 43200, 0, 0, 1, 43200, 46, '2022-04-15 12:45:29', NULL, NULL),
(182, 92, 740, 11100, 0, 0, 1, 11100, 46, '2022-04-15 12:45:29', NULL, NULL),
(183, 92, 735, 11500, 0, 0, 1, 11500, 46, '2022-04-15 12:45:29', NULL, NULL),
(184, 93, 597, 33600, 0, 0, 1, 33600, 46, '2022-04-15 13:22:12', NULL, NULL),
(185, 93, 321, 24500, 0, 0, 1, 24500, 46, '2022-04-15 13:22:12', NULL, NULL),
(186, 93, 366, 8900, 0, 0, 1, 8900, 46, '2022-04-15 13:22:12', NULL, NULL),
(187, 93, 756, 9200, 0, 0, 1, 9200, 46, '2022-04-15 13:22:12', NULL, NULL),
(188, 94, 721, 19800, 0, 0, 2, 39600, 46, '2022-04-15 16:55:10', NULL, NULL),
(189, 94, 722, 24500, 0, 0, 1, 24500, 46, '2022-04-15 16:55:10', NULL, NULL),
(190, 95, 755, 9200, 0, 0, 1, 9200, 46, '2022-04-15 18:14:58', NULL, NULL),
(191, 96, 582, 12400, 0, 0, 1, 12400, 46, '2022-04-16 08:09:14', NULL, NULL),
(192, 97, 740, 11100, 0, 0, 1, 11100, 46, '2022-04-16 08:18:19', NULL, NULL),
(193, 97, 725, 17900, 0, 0, 1, 17900, 46, '2022-04-16 08:18:19', NULL, NULL),
(194, 97, 368, 4800, 0, 0, 1, 4800, 46, '2022-04-16 08:18:19', NULL, NULL),
(195, 97, 321, 24500, 0, 0, 1, 24500, 46, '2022-04-16 08:18:19', NULL, NULL),
(196, 97, 697, 16800, 0, 0, 1, 16800, 46, '2022-04-16 08:18:19', NULL, NULL),
(197, 98, 691, 19900, 0, 0, 1, 19900, 46, '2022-04-16 09:16:24', NULL, NULL),
(198, 99, 328, 20700, 0, 0, 1, 20700, 46, '2022-04-16 10:24:06', NULL, NULL),
(199, 100, 716, 28700, 0, 0, 1, 28700, 46, '2022-04-16 11:52:36', NULL, NULL),
(200, 101, 225, 24300, 0, 0, 1, 24300, 46, '2022-04-16 11:54:12', NULL, NULL),
(201, 101, 752, 27800, 0, 0, 1, 27800, 46, '2022-04-16 11:54:12', NULL, NULL),
(202, 101, 563, 22900, 0, 0, 1, 22900, 46, '2022-04-16 11:54:12', NULL, NULL),
(203, 101, 537, 39800, 0, 0, 1, 39800, 46, '2022-04-16 11:54:12', NULL, NULL),
(204, 102, 770, 16700, 0, 0, 2, 33400, 46, '2022-04-16 12:41:58', NULL, NULL),
(205, 103, 688, 19600, 0, 0, 1, 19600, 46, '2022-04-16 13:06:46', NULL, NULL),
(206, 104, 718, 67900, 0, 0, 1, 67900, 45, '2022-04-16 14:07:30', NULL, NULL),
(207, 105, 698, 29900, 0, 0, 1, 29900, 46, '2022-04-17 08:26:53', NULL, NULL),
(208, 105, 683, 12000, 0, 0, 1, 12000, 46, '2022-04-17 08:26:53', NULL, NULL),
(209, 105, 399, 27600, 0, 0, 1, 27600, 46, '2022-04-17 08:26:53', NULL, NULL),
(210, 106, 593, 31000, 0, 0, 1, 31000, 46, '2022-04-17 10:09:49', NULL, NULL),
(211, 107, 244, 41600, 0, 0, 1, 41600, 46, '2022-04-17 11:11:13', NULL, NULL),
(212, 108, 719, 67900, 0, 0, 1, 67900, 46, '2022-04-17 11:44:31', NULL, NULL),
(213, 108, 554, 7700, 0, 0, 1, 7700, 46, '2022-04-17 11:44:31', NULL, NULL),
(214, 109, 712, 25000, 0, 0, 1, 25000, 46, '2022-04-17 11:58:33', NULL, NULL),
(215, 109, 697, 16800, 0, 0, 1, 16800, 46, '2022-04-17 11:58:33', NULL, NULL),
(216, 110, 295, 16200, 0, 0, 1, 16200, 46, '2022-04-17 16:14:28', NULL, NULL),
(217, 111, 744, 18100, 0, 0, 1, 18100, 46, '2022-04-18 08:07:04', NULL, NULL),
(218, 112, 697, 16800, 0, 0, 1, 16800, 45, '2022-04-18 09:31:04', NULL, NULL),
(219, 113, 736, 57900, 0, 0, 1, 57900, 45, '2022-04-18 09:50:33', NULL, NULL),
(220, 114, 744, 18100, 0, 0, 1, 18100, 45, '2022-04-18 16:09:52', NULL, NULL),
(221, 114, 650, 21000, 0, 0, 1, 21000, 45, '2022-04-18 16:09:52', NULL, NULL),
(222, 114, 763, 5500, 0, 0, 1, 5500, 45, '2022-04-18 16:09:52', NULL, NULL),
(223, 115, 746, 36100, 0, 0, 1, 36100, 45, '2022-04-19 07:42:40', NULL, NULL),
(224, 115, 681, 26300, 0, 0, 1, 26300, 45, '2022-04-19 07:42:40', NULL, NULL),
(225, 115, 581, 12600, 0, 0, 1, 12600, 45, '2022-04-19 07:42:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsales_exchange`
--

CREATE TABLE `tblsales_exchange` (
  `sales_exchange_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `sales_exchange_number` varchar(50) NOT NULL,
  `sales_number` varchar(50) NOT NULL,
  `total_transaction` decimal(18,0) NOT NULL,
  `payment` decimal(18,0) NOT NULL,
  `exchange` decimal(18,0) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tblsales_exchange_det`
--

CREATE TABLE `tblsales_exchange_det` (
  `sales_exchange_det_id` int(11) NOT NULL,
  `sales_exchange_id` int(11) NOT NULL,
  `sales_det_id` int(11) NOT NULL,
  `item_origin` int(11) NOT NULL,
  `buying_price` decimal(18,0) NOT NULL,
  `qty_origin` int(11) NOT NULL,
  `buying_disc` decimal(18,0) NOT NULL,
  `item_exchange` int(11) NOT NULL,
  `qty_stock` int(11) NOT NULL,
  `qty_exchange` int(11) NOT NULL,
  `extra_payment` decimal(18,0) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_adj`
--

CREATE TABLE `tblstock_adj` (
  `stock_adj_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `adj_number` int(11) NOT NULL,
  `adj_type` int(11) NOT NULL,
  `buying_price` decimal(18,0) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblstock_adj`
--

INSERT INTO `tblstock_adj` (`stock_adj_id`, `branch_id`, `item_id`, `adj_number`, `adj_type`, `buying_price`, `description`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(1, 11, 683, 2, 1, 10100, 'karena ter input penjualan dobel', 1, '2022-04-01 07:53:12', NULL, NULL),
(2, 11, 534, 1, 1, 52000, 'dobel penjualan', 1, '2022-04-01 08:03:25', NULL, NULL),
(3, 11, 683, 1, 1, 10100, 'trial ', 1, '2022-04-01 08:23:15', NULL, NULL),
(4, 11, 368, 1, 1, 3600, 'salah input jumlah pembelian awal harusnya 6 pcs', 1, '2022-04-01 22:07:52', NULL, NULL),
(5, 11, 534, 3, 2, 52000, 'kelebihan input stok pembelian awal', 1, '2022-04-01 22:39:04', NULL, NULL),
(6, 11, 364, 2, 1, 7020, 'koreksi struk di kasir, dibuat 2 x transaksi', 1, '2022-04-02 14:40:11', NULL, NULL),
(7, 11, 123, 1, 1, 7400, 'transaksi dobel di kasir', 1, '2022-04-02 14:42:01', NULL, NULL),
(8, 11, 315, 1, 1, 13700, 'transaksi dobel di kasir', 1, '2022-04-02 14:42:35', NULL, NULL),
(9, 11, 77, 1, 1, 8640, 'transaksi dobel di kasir', 1, '2022-04-02 14:43:26', NULL, NULL),
(10, 11, 125, 1, 1, 14200, 'transaksi dobel di kasir, POS2022040004', 1, '2022-04-02 14:44:16', NULL, NULL),
(11, 11, 156, 4, 2, 37300, 'salah input  harusnya ke barcode....192', 1, '2022-04-03 15:30:30', NULL, NULL),
(12, 11, 592, 10, 2, 25700, 'ternyata barangnya belum diterima tapi sudah bayar', 1, '2022-04-04 16:31:10', NULL, NULL),
(13, 11, 603, 4, 2, 44300, 'tidak ada dibeli', 1, '2022-04-04 17:43:12', NULL, NULL),
(14, 11, 684, 6, 2, 21600, 'dobel input  barang sudah pakai yang cedea baso barcode 0000176', 1, '2022-04-06 13:42:20', NULL, NULL),
(15, 11, 125, 1, 1, 14200, 'karena input dobel di kasir POS2022040022 dan POS2022040021 tanggal 3 April 2022', 1, '2022-04-06 17:27:59', NULL, NULL),
(16, 11, 220, 1, 1, 11400, 'dobel input di kasir  POS2022040022 & POS2022040021, tgl 3 April 2022\r\n', 1, '2022-04-06 17:28:52', NULL, NULL),
(17, 11, 364, 1, 1, 7500, 'dobel penjualan ...POS2022040004 dan POS2022040007, yang benar yang POS2022040007...delmonte BBQ 1 delmonte Spaghety 1', 1, '2022-04-06 19:58:43', NULL, NULL),
(18, 11, 123, 1, 1, 7400, 'dobel kasir, POS2022040004 dan POS2022040007, tanggal 2 April 2022, yang benar POS2022040007', 1, '2022-04-06 20:00:10', NULL, NULL),
(19, 11, 364, 1, 2, 7500, 'kelebihan penyesuaian stok', 1, '2022-04-06 20:51:11', NULL, NULL),
(20, 11, 125, 2, 2, 14200, 'kelebihan masuk awal stok harusnya 6, terinput 8', 1, '2022-04-06 21:14:55', NULL, NULL),
(21, 11, 125, 2, 2, 14200, 'kelebihan iput stok awal, harusnya 6 diiput 8', 1, '2022-04-06 21:19:25', NULL, NULL),
(22, 11, 125, 4, 2, 14200, 'kelebihan stok awal dan kelibahan penyesuain juga', 1, '2022-04-06 21:23:06', NULL, NULL),
(23, 11, 125, 12, 1, 14200, 'penyesuaian stok lagi', 1, '2022-04-06 21:24:27', NULL, NULL),
(24, 11, 125, 4, 2, 14200, 'masih penyesuaian', 1, '2022-04-06 21:26:04', NULL, NULL),
(25, 11, 252, 12, 2, 28300, 'salah input awal harusnya 4 + 6 = 10 terinput 20', 1, '2022-04-06 21:49:38', NULL, NULL),
(26, 11, 252, 2, 1, 28300, 'kesalahan input awal', 1, '2022-04-06 21:52:08', NULL, NULL),
(27, 11, 534, 2, 2, 52000, 'salah input stok awal harusnya 6 diinput 10', 1, '2022-04-06 22:32:27', NULL, NULL),
(28, 11, 556, 11, 2, 27000, 'salah input stok awal ', 1, '2022-04-06 22:35:53', NULL, NULL),
(29, 11, 554, 10, 2, 6500, 'salah input stok awal', 1, '2022-04-06 22:37:15', NULL, NULL),
(30, 11, 683, 3, 2, 10100, 'salah input pembelian ke dua', 1, '2022-04-06 23:04:33', NULL, NULL),
(31, 11, 726, 1, 2, 47500, 'tidak masuk toko', 1, '2022-04-08 11:59:07', NULL, NULL),
(32, 11, 206, 6, 2, 10400, 'salah inout stok awal, harusnya 6 terinput 12', 1, '2022-04-08 14:33:59', NULL, NULL),
(33, 11, 205, 6, 2, 24800, 'salah input stok awal harusnya 6 terinput 12', 1, '2022-04-08 14:38:16', NULL, NULL),
(34, 11, 206, 6, 1, 10400, 'salah bikin penyesuaian, harusnya yang 500 gr', 1, '2022-04-08 14:38:55', NULL, NULL),
(35, 11, 555, 5, 2, 15900, 'salah input stok awal', 1, '2022-04-08 15:12:25', NULL, NULL),
(36, 11, 650, 6, 2, 17500, 'salah input stok awal, harusnya 6 terinput 12', 1, '2022-04-08 15:24:36', NULL, NULL),
(37, 11, 683, 5, 1, 10100, 'salah input stok', 1, '2022-04-08 15:44:37', NULL, NULL),
(38, 11, 688, 15, 2, 14593, 'salah input stok awal', 1, '2022-04-08 15:52:35', NULL, NULL),
(39, 11, 744, 1, 2, 15100, 'karena terdelete sistem, diinput stok jg ikut hilang, jadi masuk stok baru, sudah terjual 6 april 1 pcs, jadi bikin penyesuaian stok', 1, '2022-04-10 09:00:34', NULL, NULL),
(40, 11, 538, 1, 1, 23600, 'stok awal kurang 1 harusnya 6 terinput 5', 1, '2022-04-10 10:24:44', NULL, NULL),
(41, 11, 605, 1, 1, 35800, 'terinput kasir penjualan dobel, pos ...50 dan 51, yang ..50 di cancel', 1, '2022-04-10 10:53:36', NULL, NULL),
(42, 11, 686, 6, 2, 37040, 'salah input stok awal, harusnya 10 terinput 15 ', 1, '2022-04-10 10:57:25', NULL, NULL),
(43, 11, 686, 1, 1, 37040, 'baru terjual 1, salah input di penyesuaian stok sebelumnya.', 1, '2022-04-10 10:58:18', NULL, NULL),
(44, 11, 731, 1, 2, 9500, 'terjual tapi terdelet sistem ', 1, '2022-04-10 11:08:35', NULL, NULL),
(45, 11, 731, 1, 2, 9500, 'stok awal 2 harusnya terjual 2, ', 1, '2022-04-10 11:09:30', NULL, NULL),
(46, 11, 732, 1, 2, 9500, 'stok awal 6 terjual 1 ', 1, '2022-04-10 11:09:52', NULL, NULL),
(47, 11, 379, 1, 2, 14200, 'kelebihan input stok awal beli hanya 5 terinput 6', 1, '2022-04-10 11:22:59', NULL, NULL),
(48, 11, 596, 4, 1, 25700, 'keliru posting di kasir penjualan tgl. 3 April 22, harusnya terjual mini isi 4, 1 jumbo, terinput 4 jumbo + 1 jumbo', 1, '2022-04-10 12:29:49', NULL, NULL),
(49, 11, 595, 4, 2, 25800, 'sudah laku tgl 3 april 22, salah input di kasir, yang terinput yang jumbo 4, ', 1, '2022-04-10 12:30:47', NULL, NULL),
(50, 11, 699, 1, 1, 37700, 'pembelian kedua harusnya diinput 5 tapi terimput 4 ', 1, '2022-04-10 13:26:02', NULL, NULL),
(51, 11, 736, 1, 2, 48300, 'sudah terjual 1 tgl. 1 April 22, tapi terdelete sistem jadi terbaca null', 1, '2022-04-10 13:38:01', NULL, NULL),
(52, 11, 123, 1, 2, 7400, 'penyesuaian stok lagi karena penyesuaian stok pertama kelebihan 1 pcs', 1, '2022-04-10 15:40:08', NULL, NULL),
(53, 11, 198, 1, 2, 21600, 'kelebihan masukin stok pembelian awal, harusnya 5 terinput 6', 1, '2022-04-10 15:52:41', NULL, NULL),
(54, 11, 690, 1, 1, 57640, 'terinput kasi 2 x , tgl. 10/04/2022, pos 40070 di cancel yang benar pos...71 ', 1, '2022-04-10 16:44:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_category`
--

CREATE TABLE `tblstock_category` (
  `stock_category_id` int(11) NOT NULL,
  `stock_category_code` varchar(50) DEFAULT NULL,
  `stock_category_name` varchar(500) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblstock_category`
--

INSERT INTO `tblstock_category` (`stock_category_id`, `stock_category_code`, `stock_category_name`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(1, 'CG2022020001', 'MAKANAN', 1, '2020-05-15 23:09:39', NULL, NULL),
(2, 'CG2022020002', 'MINUMAN', 1, '2020-05-15 23:09:39', NULL, NULL),
(3, 'CG2022030003', 'PIZZA', 1, '2022-03-08 20:27:33', 1, '2022-03-08 20:40:51'),
(4, 'CG2022030004', 'NUGGET', 1, '2022-03-08 20:40:07', 1, '2022-03-08 20:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_flow`
--

CREATE TABLE `tblstock_flow` (
  `stock_flow_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `flow_type` int(11) DEFAULT NULL,
  `flow_date` datetime DEFAULT NULL,
  `qty_trx` int(11) DEFAULT NULL,
  `qty_now` int(11) DEFAULT NULL,
  `price` decimal(18,2) DEFAULT NULL,
  `information` varchar(2000) DEFAULT NULL,
  `reff_id` int(11) DEFAULT NULL,
  `reff_trx` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblstock_flow`
--

INSERT INTO `tblstock_flow` (`stock_flow_id`, `branch_id`, `item_id`, `flow_type`, `flow_date`, `qty_trx`, `qty_now`, `price`, `information`, `reff_id`, `reff_trx`) VALUES
(1, 11, 575, 1, '2022-03-31 17:45:57', 6, 3, 17100.00, 'stock_in', NULL, '1'),
(2, 11, 574, 1, '2022-03-31 17:47:07', 6, 5, 25380.00, 'stock_in', NULL, '1'),
(3, 11, 680, 1, '2022-03-31 17:48:30', 3, 6, 0.00, 'stock_in', NULL, '1'),
(4, 11, 555, 1, '2022-03-31 18:00:25', 5, 0, 13500.00, 'stock_in', NULL, '1'),
(5, 11, 564, 1, '2022-03-31 18:02:47', 3, 3, 13500.00, 'stock_in', NULL, '1'),
(6, 11, 581, 1, '2022-03-31 18:07:27', 5, 3, 9540.00, 'stock_in', NULL, '1'),
(7, 11, 582, 1, '2022-03-31 18:10:26', 5, 2, 9450.00, 'stock_in', NULL, '1'),
(8, 11, 584, 1, '2022-03-31 18:17:28', 5, 4, 19800.00, 'stock_in', NULL, '1'),
(9, 11, 375, 1, '2022-03-31 18:18:42', 5, 5, 25920.00, 'stock_in', NULL, '1'),
(10, 11, 558, 1, '2022-03-31 18:25:09', 3, 3, 13500.00, 'stock_in', NULL, '1'),
(11, 11, 554, 1, '2022-03-31 18:25:55', 5, 0, 5850.00, 'stock_in', NULL, '1'),
(467, 11, 712, 2, '2022-04-15 07:50:16', 1, 1, 25000.00, 'stock_out', 294, 'POS2022040090'),
(13, 11, 368, 1, '2022-03-31 18:30:27', 5, 2, 3600.00, 'stock_in', NULL, '1'),
(14, 11, 563, 1, '2022-03-31 18:41:23', 3, 2, 13050.00, 'stock_in', NULL, '1'),
(15, 11, 681, 1, '2022-03-31 18:42:23', 4, 2, 0.00, 'stock_in', NULL, '1'),
(16, 11, 380, 1, '2022-03-31 18:46:24', 5, 4, 6840.00, 'stock_in', NULL, '1'),
(17, 11, 366, 1, '2022-03-31 18:48:28', 6, 3, 7020.00, 'stock_in', NULL, '1'),
(18, 11, 364, 1, '2022-03-31 18:54:21', 6, 2, 7020.00, 'stock_in', NULL, '1'),
(19, 11, 76, 1, '2022-03-31 19:00:21', 5, 3, 9630.00, 'stock_in', NULL, '1'),
(20, 11, 76, 1, '2022-03-31 19:04:10', 1, 6, 9630.00, 'stock_in', NULL, '1'),
(21, 11, 78, 1, '2022-03-31 19:07:16', 6, 6, 17550.00, 'stock_in', NULL, '1'),
(22, 11, 79, 1, '2022-03-31 19:11:13', 6, 6, 8640.00, 'stock_in', NULL, '1'),
(23, 11, 77, 1, '2022-03-31 19:35:51', 6, 3, 8640.00, 'stock_in', NULL, '1'),
(24, 11, 93, 1, '2022-03-31 19:39:25', 6, 6, 8370.00, 'stock_in', NULL, '1'),
(25, 11, 683, 1, '2022-03-31 23:55:51', 4, 0, 0.00, 'stock_in', NULL, '1'),
(26, 11, 534, 1, '2022-04-01 00:03:21', 10, 1, 50400.00, 'stock_in', NULL, '1'),
(39, 11, 99, 1, '2022-04-01 18:59:40', 6, 5, 48300.00, 'stock_in', NULL, '1'),
(38, 11, 130, 2, '2022-04-01 18:48:50', 1, 1, 33000.00, 'stock_out', 36, 'POS2022040001'),
(37, 11, 252, 2, '2022-04-01 18:48:50', 2, 2, 32500.00, 'stock_out', 35, 'POS2022040001'),
(36, 11, 130, 1, '2022-04-01 18:47:51', 6, 5, 28700.00, 'stock_in', NULL, '1'),
(31, 11, 683, 1, '2022-04-01 07:53:12', 2, 0, 10100.00, 'stock_adjustment', NULL, NULL),
(32, 11, 534, 1, '2022-04-01 08:03:25', 1, 1, 52000.00, 'stock_adjustment', NULL, NULL),
(35, 11, 252, 1, '2022-04-01 18:47:51', 4, 0, 28300.00, 'stock_in', NULL, '1'),
(34, 11, 683, 1, '2022-04-01 08:23:15', 1, 0, 10100.00, 'stock_adjustment', NULL, NULL),
(40, 11, 99, 2, '2022-04-01 19:00:42', 1, 1, 55500.00, 'stock_out', 39, 'POS2022040002'),
(41, 11, 292, 1, '2022-04-01 19:52:36', 6, 5, 7900.00, 'stock_in', NULL, '1'),
(42, 11, 292, 2, '2022-04-01 19:53:23', 1, 1, 9000.00, 'stock_out', 41, 'POS2022040003'),
(43, 11, 368, 1, '2022-04-01 22:07:52', 1, 1, 3600.00, 'stock_adjustment', NULL, NULL),
(44, 11, 534, 2, '2022-04-01 22:39:04', 3, 3, 50400.00, 'stock_adjustment', 26, NULL),
(45, 11, 95, 1, '2022-04-01 23:00:38', 6, 6, 59700.00, 'stock_in', NULL, '1'),
(46, 11, 96, 1, '2022-04-01 23:00:38', 6, 6, 28200.00, 'stock_in', NULL, '1'),
(47, 11, 127, 1, '2022-04-01 23:00:38', 6, 6, 22000.00, 'stock_in', NULL, '1'),
(48, 11, 128, 1, '2022-04-01 23:00:38', 6, 6, 25300.00, 'stock_in', NULL, '1'),
(49, 11, 129, 1, '2022-04-01 23:00:38', 6, 6, 25300.00, 'stock_in', NULL, '1'),
(50, 11, 696, 1, '2022-04-01 23:00:38', 6, 12, 28700.00, 'stock_in', NULL, '1'),
(51, 11, 132, 1, '2022-04-01 23:00:38', 6, 6, 17500.00, 'stock_in', NULL, '1'),
(52, 11, 110, 1, '2022-04-01 23:00:38', 6, 6, 13230.00, 'stock_in', NULL, '1'),
(53, 11, 109, 1, '2022-04-01 23:00:38', 6, 5, 15100.00, 'stock_in', NULL, '1'),
(54, 11, 124, 1, '2022-04-01 23:00:38', 6, 4, 7020.00, 'stock_in', NULL, '1'),
(55, 11, 123, 1, '2022-04-01 23:00:38', 6, 2, 7400.00, 'stock_in', NULL, '1'),
(56, 11, 105, 1, '2022-04-01 23:00:38', 6, 6, 10700.00, 'stock_in', NULL, '1'),
(57, 11, 125, 1, '2022-04-01 23:00:38', 6, 0, 14200.00, 'stock_in', NULL, '1'),
(58, 11, 598, 1, '2022-04-01 23:00:38', 10, 9, 20600.00, 'stock_in', NULL, '1'),
(59, 11, 593, 1, '2022-04-01 23:00:38', 10, 8, 25800.00, 'stock_in', NULL, '1'),
(60, 11, 594, 1, '2022-04-01 23:00:38', 10, 10, 25700.00, 'stock_in', NULL, '1'),
(61, 11, 595, 1, '2022-04-01 23:00:38', 10, 5, 25800.00, 'stock_in', NULL, '1'),
(62, 11, 596, 1, '2022-04-01 23:00:39', 10, 4, 25700.00, 'stock_in', NULL, '1'),
(64, 11, 597, 1, '2022-04-01 23:00:39', 10, 7, 28000.00, 'stock_in', NULL, '1'),
(65, 11, 293, 1, '2022-04-01 23:00:39', 6, 6, 18800.00, 'stock_in', NULL, '1'),
(66, 11, 295, 1, '2022-04-01 23:00:39', 6, 0, 13500.00, 'stock_in', NULL, '1'),
(67, 11, 315, 1, '2022-04-01 23:00:39', 6, 3, 13700.00, 'stock_in', NULL, '1'),
(68, 11, 320, 1, '2022-04-01 23:00:39', 6, 2, 10500.00, 'stock_in', NULL, '1'),
(69, 11, 321, 1, '2022-04-01 23:00:39', 6, 4, 20500.00, 'stock_in', NULL, '1'),
(70, 11, 322, 1, '2022-04-01 23:00:39', 6, 6, 36000.00, 'stock_in', NULL, '1'),
(71, 11, 328, 1, '2022-04-01 23:00:39', 6, 3, 17300.00, 'stock_in', NULL, '1'),
(72, 11, 331, 1, '2022-04-01 23:00:39', 6, 6, 22800.00, 'stock_in', NULL, '1'),
(73, 11, 332, 1, '2022-04-01 23:00:39', 6, 6, 40950.00, 'stock_in', NULL, '1'),
(74, 11, 650, 1, '2022-04-01 23:07:58', 6, 0, 17500.00, 'stock_in', NULL, '1'),
(75, 11, 652, 1, '2022-04-01 23:07:58', 6, 5, 22600.00, 'stock_in', NULL, '1'),
(76, 11, 450, 1, '2022-04-01 23:07:58', 6, 0, 6900.00, 'stock_in', NULL, '1'),
(77, 11, 465, 1, '2022-04-01 23:07:58', 6, 5, 18270.00, 'stock_in', NULL, '1'),
(78, 11, 410, 1, '2022-04-01 23:07:58', 6, 6, 12700.00, 'stock_in', NULL, '1'),
(79, 11, 415, 1, '2022-04-01 23:07:58', 6, 5, 10100.00, 'stock_in', NULL, '1'),
(80, 11, 416, 1, '2022-04-01 23:07:58', 6, 4, 17730.00, 'stock_in', NULL, '1'),
(81, 11, 417, 1, '2022-04-01 23:07:58', 6, 6, 45000.00, 'stock_in', NULL, '1'),
(82, 11, 232, 1, '2022-04-01 23:18:06', 6, 5, 7600.00, 'stock_in', NULL, '1'),
(83, 11, 236, 1, '2022-04-01 23:18:06', 5, 5, 7800.00, 'stock_in', NULL, '1'),
(84, 11, 237, 1, '2022-04-01 23:18:06', 6, 6, 18400.00, 'stock_in', NULL, '1'),
(85, 11, 177, 1, '2022-04-01 23:18:06', 6, 4, 19260.00, 'stock_in', NULL, '1'),
(86, 11, 187, 1, '2022-04-01 23:18:06', 6, 6, 47400.00, 'stock_in', NULL, '1'),
(87, 11, 186, 1, '2022-04-01 23:18:06', 6, 6, 24600.00, 'stock_in', NULL, '1'),
(88, 11, 188, 1, '2022-04-01 23:18:06', 6, 6, 12330.00, 'stock_in', NULL, '1'),
(89, 11, 193, 1, '2022-04-01 23:18:06', 6, 6, 38790.00, 'stock_in', NULL, '1'),
(90, 11, 192, 1, '2022-04-01 23:18:06', 6, 4, 13100.00, 'stock_in', NULL, '1'),
(91, 11, 195, 1, '2022-04-01 23:18:06', 6, 6, 21400.00, 'stock_in', NULL, '1'),
(92, 11, 194, 1, '2022-04-01 23:18:06', 6, 6, 21800.00, 'stock_in', NULL, '1'),
(93, 11, 198, 1, '2022-04-01 23:29:33', 6, 5, 21600.00, 'stock_in', NULL, '1'),
(94, 11, 213, 1, '2022-04-01 23:29:33', 6, 6, 46900.00, 'stock_in', NULL, '1'),
(95, 11, 215, 1, '2022-04-01 23:29:33', 6, 6, 24600.00, 'stock_in', NULL, '1'),
(96, 11, 216, 1, '2022-04-01 23:29:33', 6, 6, 10400.00, 'stock_in', NULL, '1'),
(97, 11, 220, 1, '2022-04-01 23:29:33', 6, 4, 11400.00, 'stock_in', NULL, '1'),
(98, 11, 221, 1, '2022-04-01 23:29:33', 6, 6, 37080.00, 'stock_in', NULL, '1'),
(99, 11, 695, 1, '2022-04-01 23:29:33', 6, 12, 21600.00, 'stock_in', NULL, '1'),
(100, 11, 225, 1, '2022-04-01 23:29:33', 6, 5, 18090.00, 'stock_in', NULL, '1'),
(101, 11, 227, 1, '2022-04-01 23:29:33', 6, 5, 18090.00, 'stock_in', NULL, '1'),
(102, 11, 226, 1, '2022-04-01 23:29:33', 6, 6, 20300.00, 'stock_in', NULL, '1'),
(103, 11, 229, 1, '2022-04-01 23:29:33', 5, 4, 43800.00, 'stock_in', NULL, '1'),
(104, 11, 554, 1, '2022-04-01 23:29:33', 5, 3, 5850.00, 'stock_in', NULL, '1'),
(105, 11, 555, 1, '2022-04-01 23:32:24', 5, 10, 13500.00, 'stock_in', NULL, '1'),
(106, 11, 396, 1, '2022-04-01 23:50:55', 5, 4, 21200.00, 'stock_in', NULL, '1'),
(107, 11, 397, 1, '2022-04-01 23:50:55', 5, 5, 21300.00, 'stock_in', NULL, '1'),
(108, 11, 537, 1, '2022-04-01 23:50:55', 6, 0, 29000.00, 'stock_in', NULL, '1'),
(109, 11, 542, 1, '2022-04-01 23:50:55', 6, 6, 24900.00, 'stock_in', NULL, '1'),
(110, 11, 255, 1, '2022-04-01 23:50:55', 3, 2, 15570.00, 'stock_in', NULL, '1'),
(111, 11, 258, 1, '2022-04-01 23:50:55', 6, 5, 13400.00, 'stock_in', NULL, '1'),
(112, 11, 244, 1, '2022-04-01 23:50:55', 6, 5, 34700.00, 'stock_in', NULL, '1'),
(113, 11, 252, 1, '2022-04-01 23:50:55', 4, 0, 28300.00, 'stock_in', NULL, '1'),
(114, 11, 250, 1, '2022-04-01 23:50:55', 2, 2, 42000.00, 'stock_in', NULL, '1'),
(115, 11, 263, 1, '2022-04-01 23:50:55', 4, 2, 20600.00, 'stock_in', NULL, '1'),
(116, 11, 698, 1, '2022-04-01 23:50:55', 10, 16, 25000.00, 'stock_in', NULL, '1'),
(117, 11, 533, 1, '2022-04-01 23:50:55', 4, 4, 58750.00, 'stock_in', NULL, '1'),
(118, 11, 390, 1, '2022-04-01 23:50:55', 10, 8, 24500.00, 'stock_in', NULL, '1'),
(119, 11, 692, 1, '2022-04-01 23:59:37', 10, 19, 42240.00, 'stock_in', NULL, '1'),
(120, 11, 689, 1, '2022-04-01 23:59:37', 10, 20, 21300.00, 'stock_in', NULL, '1'),
(121, 11, 687, 1, '2022-04-01 23:59:37', 10, 17, 39100.00, 'stock_in', NULL, '1'),
(122, 11, 693, 1, '2022-04-01 23:59:37', 10, 18, 52180.00, 'stock_in', NULL, '1'),
(123, 11, 697, 1, '2022-04-01 23:59:37', 12, 14, 14050.00, 'stock_in', NULL, '1'),
(124, 11, 691, 1, '2022-04-01 23:59:37', 10, 12, 16600.00, 'stock_in', NULL, '1'),
(125, 11, 690, 1, '2022-04-01 23:59:37', 5, 8, 0.00, 'stock_in', NULL, '1'),
(126, 11, 688, 1, '2022-04-01 23:59:37', 15, 7, 14595.00, 'stock_in', NULL, '1'),
(127, 11, 686, 1, '2022-04-02 00:06:23', 15, 23, 37040.00, 'stock_in', NULL, '1'),
(128, 11, 688, 1, '2022-04-02 00:06:23', 15, 30, 14595.00, 'stock_in', NULL, '1'),
(129, 11, 605, 1, '2022-04-02 00:06:23', 3, 0, 35800.00, 'stock_in', NULL, '1'),
(131, 11, 606, 1, '2022-04-02 00:06:23', 3, 0, 44300.00, 'stock_in', NULL, '1'),
(132, 11, 608, 1, '2022-04-02 00:06:23', 4, 3, 23200.00, 'stock_in', NULL, '1'),
(133, 11, 197, 1, '2022-04-02 00:22:37', 6, 4, 9000.00, 'stock_in', NULL, '1'),
(134, 11, 203, 1, '2022-04-02 00:22:37', 6, 6, 24800.00, 'stock_in', NULL, '1'),
(135, 11, 204, 1, '2022-04-02 00:22:37', 6, 6, 10400.00, 'stock_in', NULL, '1'),
(136, 11, 205, 1, '2022-04-02 00:22:37', 6, 0, 24800.00, 'stock_in', NULL, '1'),
(137, 11, 205, 1, '2022-04-02 00:22:37', 6, 12, 24800.00, 'stock_in', NULL, '1'),
(138, 11, 206, 1, '2022-04-02 00:22:37', 6, 0, 10400.00, 'stock_in', NULL, '1'),
(139, 11, 379, 1, '2022-04-02 00:25:39', 6, 5, 11700.00, 'stock_in', NULL, '1'),
(488, 11, 716, 2, '2022-04-16 11:52:36', 1, 1, 28700.00, 'stock_out', 287, 'POS2022040100'),
(487, 11, 328, 2, '2022-04-16 10:24:06', 1, 1, 20700.00, 'stock_out', 71, 'POS2022040099'),
(486, 11, 691, 2, '2022-04-16 09:16:25', 1, 1, 19900.00, 'stock_out', 124, 'POS2022040098'),
(485, 11, 697, 2, '2022-04-16 08:18:19', 1, 1, 16800.00, 'stock_out', 123, 'POS2022040097'),
(484, 11, 321, 2, '2022-04-16 08:18:19', 1, 1, 24500.00, 'stock_out', 69, 'POS2022040097'),
(145, 11, 701, 1, '2022-04-02 08:41:23', 3, 3, 16700.00, 'stock_in', NULL, '2'),
(146, 11, 135, 1, '2022-04-02 08:41:23', 3, 0, 16900.00, 'stock_in', NULL, '2'),
(147, 11, 163, 1, '2022-04-02 08:41:23', 4, 3, 18050.00, 'stock_in', NULL, '2'),
(148, 11, 175, 1, '2022-04-02 08:41:23', 4, 3, 49400.00, 'stock_in', NULL, '2'),
(149, 11, 702, 1, '2022-04-02 08:41:23', 4, 5, 39500.00, 'stock_in', NULL, '2'),
(150, 11, 71, 1, '2022-04-02 08:41:23', 6, 6, 21200.00, 'stock_in', NULL, '2'),
(151, 11, 683, 1, '2022-04-02 08:41:23', 6, 2, 10100.00, 'stock_in', NULL, '2'),
(152, 11, 252, 1, '2022-04-02 08:58:29', 6, 5, 28300.00, 'stock_in', NULL, '2'),
(153, 11, 252, 1, '2022-04-02 08:58:29', 6, 18, 28300.00, 'stock_in', NULL, '2'),
(154, 11, 160, 1, '2022-04-02 08:58:29', 4, 3, 0.00, 'stock_in', NULL, '2'),
(155, 11, 151, 1, '2022-04-02 08:58:29', 4, 4, 23940.00, 'stock_in', NULL, '2'),
(157, 11, 415, 2, '2022-04-02 09:07:19', 1, 1, 11500.00, 'stock_out', 79, 'POS2022040005'),
(158, 11, 650, 1, '2022-04-02 11:21:12', 6, 10, 17500.00, 'stock_in', NULL, '1'),
(159, 11, 255, 2, '2022-04-02 11:21:22', 1, 1, 17300.00, 'stock_out', 110, 'POS2022040006'),
(160, 11, 702, 2, '2022-04-02 11:21:22', 1, 1, 45500.00, 'stock_out', 149, 'POS2022040006'),
(161, 11, 597, 2, '2022-04-02 11:21:22', 1, 1, 32500.00, 'stock_out', 64, 'POS2022040006'),
(162, 11, 396, 2, '2022-04-02 11:21:22', 1, 1, 25000.00, 'stock_out', 106, 'POS2022040006'),
(163, 11, 650, 2, '2022-04-02 11:21:22', 1, 1, 20500.00, 'stock_out', 74, 'POS2022040006'),
(164, 11, 364, 2, '2022-04-02 11:55:29', 1, 1, 7800.00, 'stock_out', 18, 'POS2022040007'),
(165, 11, 366, 2, '2022-04-02 11:55:29', 1, 1, 7800.00, 'stock_out', 17, 'POS2022040007'),
(166, 11, 123, 2, '2022-04-02 11:55:29', 1, 1, 8500.00, 'stock_out', 55, 'POS2022040007'),
(167, 11, 77, 2, '2022-04-02 11:55:29', 1, 1, 9600.00, 'stock_out', 23, 'POS2022040007'),
(168, 11, 125, 2, '2022-04-02 11:55:29', 1, 1, 16500.00, 'stock_out', 57, 'POS2022040007'),
(169, 11, 683, 2, '2022-04-02 12:00:32', 2, 2, 12000.00, 'stock_out', 25, 'POS2022040008'),
(170, 11, 534, 2, '2022-04-02 12:00:32', 1, 1, 65000.00, 'stock_out', 26, 'POS2022040008'),
(171, 11, 691, 2, '2022-04-02 13:37:50', 1, 1, 19000.00, 'stock_out', 124, 'POS2022040009'),
(172, 11, 692, 2, '2022-04-02 14:30:54', 1, 1, 49000.00, 'stock_out', 119, 'POS2022040010'),
(173, 11, 364, 1, '2022-04-02 14:40:11', 2, 2, 7020.00, 'stock_adjustment', NULL, NULL),
(174, 11, 123, 1, '2022-04-02 14:42:01', 1, 1, 7400.00, 'stock_adjustment', NULL, NULL),
(175, 11, 315, 1, '2022-04-02 14:42:35', 1, 1, 13700.00, 'stock_adjustment', NULL, NULL),
(176, 11, 77, 1, '2022-04-02 14:43:26', 1, 1, 8640.00, 'stock_adjustment', NULL, NULL),
(177, 11, 125, 1, '2022-04-02 14:44:16', 1, 0, 14200.00, 'stock_adjustment', NULL, NULL),
(178, 11, 688, 2, '2022-04-02 15:12:54', 1, 1, 17000.00, 'stock_out', 126, 'POS2022040011'),
(179, 11, 597, 2, '2022-04-02 16:37:12', 1, 1, 32500.00, 'stock_out', 64, 'POS2022040012'),
(180, 11, 252, 2, '2022-04-02 18:01:17', 2, 2, 33000.00, 'stock_out', 35, 'POS2022040013'),
(181, 11, 608, 2, '2022-04-02 18:01:17', 1, 1, 27000.00, 'stock_out', 132, 'POS2022040013'),
(182, 11, 163, 2, '2022-04-03 08:19:11', 1, 1, 21000.00, 'stock_out', 147, 'POS2022040014'),
(183, 11, 320, 2, '2022-04-03 08:19:11', 1, 1, 12000.00, 'stock_out', 68, 'POS2022040014'),
(184, 11, 683, 2, '2022-04-03 08:19:11', 1, 1, 12000.00, 'stock_out', 25, 'POS2022040014'),
(185, 11, 537, 2, '2022-04-03 08:44:11', 6, 6, 34800.00, 'stock_out', 108, 'POS2022040015'),
(186, 11, 596, 2, '2022-04-03 08:44:11', 4, 4, 31500.00, 'stock_out', 62, 'POS2022040015'),
(187, 11, 308, 1, '2022-04-03 08:56:39', 4, 4, 22400.00, 'stock_in', NULL, '1'),
(188, 11, 691, 2, '2022-04-03 09:16:24', 1, 1, 19000.00, 'stock_out', 124, 'POS2022040016'),
(189, 11, 596, 2, '2022-04-03 09:16:24', 1, 1, 31500.00, 'stock_out', 62, 'POS2022040016'),
(190, 11, 554, 1, '2022-04-03 09:19:30', 5, 15, 5850.00, 'stock_in', NULL, '1'),
(191, 11, 554, 2, '2022-04-03 09:20:25', 1, 1, 6500.00, 'stock_out', 11, 'POS2022040017'),
(192, 11, 697, 2, '2022-04-03 09:20:25', 1, 1, 16500.00, 'stock_out', 123, 'POS2022040017'),
(193, 11, 701, 2, '2022-04-03 15:00:43', 1, 1, 20200.00, 'stock_out', 145, 'POS2022040018'),
(194, 11, 450, 2, '2022-04-03 15:00:43', 1, 1, 8300.00, 'stock_out', 76, 'POS2022040018'),
(466, 11, 211, 2, '2022-04-15 07:50:16', 1, 1, 29200.00, 'stock_out', 363, 'POS2022040090'),
(196, 11, 699, 1, '2022-04-03 15:32:33', 4, 6, 37300.00, 'stock_in', NULL, '2'),
(197, 11, 699, 2, '2022-04-03 15:35:11', 1, 1, 43000.00, 'stock_out', 196, 'POS2022040019'),
(198, 11, 606, 2, '2022-04-03 16:08:13', 1, 1, 51000.00, 'stock_out', 131, 'POS2022040020'),
(483, 11, 368, 2, '2022-04-16 08:18:19', 1, 1, 4800.00, 'stock_out', 13, 'POS2022040097'),
(482, 11, 725, 2, '2022-04-16 08:18:19', 1, 1, 17900.00, 'stock_out', 302, 'POS2022040097'),
(201, 11, 125, 2, '2022-04-03 16:13:21', 1, 1, 17200.00, 'stock_out', 57, 'POS2022040022'),
(202, 11, 220, 2, '2022-04-03 16:13:21', 1, 1, 13700.00, 'stock_out', 97, 'POS2022040022'),
(203, 11, 135, 2, '2022-04-03 16:21:03', 1, 1, 20300.00, 'stock_out', 146, 'POS2022040023'),
(204, 11, 399, 1, '2022-04-03 16:47:05', 6, 5, 23100.00, 'stock_in', NULL, '1'),
(205, 11, 705, 1, '2022-04-03 16:53:52', 4, 8, 34200.00, 'stock_in', NULL, '3'),
(206, 11, 700, 1, '2022-04-03 17:27:18', 4, 8, 28800.00, 'stock_in', NULL, '2'),
(207, 11, 450, 2, '2022-04-03 18:18:50', 1, 1, 8300.00, 'stock_out', 76, 'POS2022040024'),
(208, 11, 614, 1, '2022-04-03 20:28:23', 4, 1, 41000.00, 'stock_in', NULL, '1'),
(209, 11, 106, 1, '2022-04-03 22:42:14', 6, 6, 10700.00, 'stock_in', NULL, '1'),
(210, 11, 701, 2, '2022-04-04 13:39:32', 1, 1, 20200.00, 'stock_out', 145, 'POS2022040025'),
(211, 11, 263, 2, '2022-04-04 13:39:32', 1, 1, 24900.00, 'stock_out', 115, 'POS2022040025'),
(212, 11, 160, 2, '2022-04-04 13:39:32', 1, 1, 57700.00, 'stock_out', 154, 'POS2022040025'),
(213, 11, 614, 2, '2022-04-04 13:39:32', 1, 1, 48000.00, 'stock_out', 208, 'POS2022040025'),
(492, 11, 537, 2, '2022-04-16 11:54:12', 1, 1, 39800.00, 'stock_out', 304, 'POS2022040101'),
(215, 11, 697, 2, '2022-04-04 17:29:08', 2, 2, 16800.00, 'stock_out', 123, 'POS2022040026'),
(491, 11, 563, 2, '2022-04-16 11:54:12', 1, 1, 22900.00, 'stock_out', 14, 'POS2022040101'),
(217, 11, 538, 1, '2022-04-04 22:41:11', 5, 5, 23600.00, 'stock_in', NULL, '1'),
(218, 11, 688, 2, '2022-04-05 08:21:50', 1, 1, 18200.00, 'stock_out', 126, 'POS2022040027'),
(219, 11, 177, 2, '2022-04-05 08:42:21', 1, 1, 21400.00, 'stock_out', 85, 'POS2022040028'),
(220, 11, 699, 2, '2022-04-05 08:42:21', 1, 1, 46600.00, 'stock_out', 196, 'POS2022040028'),
(221, 11, 368, 2, '2022-04-05 08:42:21', 1, 1, 5100.00, 'stock_out', 13, 'POS2022040028'),
(222, 11, 295, 2, '2022-04-05 11:23:43', 2, 2, 16300.00, 'stock_out', 66, 'POS2022040029'),
(223, 11, 416, 2, '2022-04-05 11:23:43', 1, 1, 24600.00, 'stock_out', 80, 'POS2022040029'),
(224, 11, 135, 2, '2022-04-05 11:23:43', 1, 1, 21100.00, 'stock_out', 146, 'POS2022040029'),
(225, 11, 328, 2, '2022-04-05 13:59:15', 1, 1, 21600.00, 'stock_out', 71, 'POS2022040030'),
(226, 11, 687, 2, '2022-04-05 17:25:26', 1, 1, 48600.00, 'stock_out', 121, 'POS2022040031'),
(227, 11, 295, 2, '2022-04-05 17:25:26', 1, 1, 16300.00, 'stock_out', 66, 'POS2022040031'),
(228, 11, 683, 2, '2022-04-05 18:27:32', 2, 2, 12000.00, 'stock_out', 31, 'POS2022040032'),
(229, 11, 683, 2, '2022-04-05 18:28:45', 1, 1, 12000.00, 'stock_out', 34, 'POS2022040033'),
(230, 11, 135, 2, '2022-04-05 18:43:15', 1, 1, 21100.00, 'stock_out', 146, 'POS2022040034'),
(231, 11, 584, 2, '2022-04-06 09:40:50', 1, 1, 27500.00, 'stock_out', 8, 'POS2022040035'),
(232, 11, 701, 2, '2022-04-06 09:54:22', 1, 1, 20800.00, 'stock_out', 145, 'POS2022040036'),
(233, 11, 599, 1, '2022-04-06 13:29:49', 30, 29, 9850.00, 'stock_in', NULL, '1'),
(490, 11, 752, 2, '2022-04-16 11:54:12', 1, 1, 27800.00, 'stock_out', 442, 'POS2022040101'),
(236, 11, 177, 2, '2022-04-06 13:57:03', 1, 1, 26700.00, 'stock_out', 85, 'POS2022040037'),
(237, 11, 320, 2, '2022-04-06 13:57:03', 1, 1, 13100.00, 'stock_out', 68, 'POS2022040037'),
(238, 11, 599, 2, '2022-04-06 13:59:50', 1, 1, 12100.00, 'stock_out', 233, 'POS2022040038'),
(239, 11, 534, 2, '2022-04-06 15:10:15', 1, 1, 65000.00, 'stock_out', 26, 'POS2022040039'),
(240, 11, 380, 2, '2022-04-06 15:10:15', 1, 1, 10100.00, 'stock_out', 16, 'POS2022040039'),
(241, 11, 366, 2, '2022-04-06 15:10:15', 1, 1, 9300.00, 'stock_out', 17, 'POS2022040039'),
(242, 11, 192, 2, '2022-04-06 15:30:03', 1, 1, 16300.00, 'stock_out', 90, 'POS2022040040'),
(243, 11, 416, 2, '2022-04-06 15:30:03', 1, 1, 24600.00, 'stock_out', 80, 'POS2022040040'),
(244, 11, 683, 2, '2022-04-06 15:30:03', 1, 1, 12000.00, 'stock_out', 151, 'POS2022040040'),
(245, 11, 581, 2, '2022-04-06 15:30:03', 1, 1, 13100.00, 'stock_out', 6, 'POS2022040040'),
(246, 11, 109, 2, '2022-04-06 15:30:03', 1, 1, 18800.00, 'stock_out', 53, 'POS2022040040'),
(247, 11, 652, 2, '2022-04-06 15:30:03', 1, 1, 28200.00, 'stock_out', 75, 'POS2022040040'),
(248, 11, 124, 2, '2022-04-06 16:11:53', 1, 1, 11600.00, 'stock_out', 54, 'POS2022040041'),
(249, 11, 227, 2, '2022-04-06 17:11:49', 1, 1, 25200.00, 'stock_out', 101, 'POS2022040042'),
(250, 11, 606, 2, '2022-04-06 17:11:49', 1, 1, 55400.00, 'stock_out', 131, 'POS2022040042'),
(251, 11, 252, 2, '2022-04-06 17:11:49', 1, 1, 35400.00, 'stock_out', 113, 'POS2022040042'),
(252, 11, 125, 1, '2022-04-06 17:27:59', 1, 0, 14200.00, 'stock_adjustment', NULL, NULL),
(253, 11, 220, 1, '2022-04-06 17:28:52', 1, 1, 11400.00, 'stock_adjustment', NULL, NULL),
(254, 11, 694, 1, '2022-04-06 18:50:15', 6, 12, 0.00, 'stock_in', NULL, '1'),
(255, 11, 575, 2, '2022-04-06 19:03:53', 1, 1, 23500.00, 'stock_out', 1, 'POS2022040043'),
(256, 11, 258, 2, '2022-04-06 19:03:53', 1, 1, 16700.00, 'stock_out', 111, 'POS2022040043'),
(257, 11, 465, 2, '2022-04-06 19:06:27', 1, 1, 25400.00, 'stock_out', 77, 'POS2022040044'),
(258, 11, 698, 2, '2022-04-06 19:30:35', 1, 1, 30900.00, 'stock_out', 116, 'POS2022040045'),
(259, 11, 702, 2, '2022-04-06 19:30:35', 1, 1, 49300.00, 'stock_out', 149, 'POS2022040045'),
(260, 11, 614, 2, '2022-04-06 19:30:35', 1, 1, 51300.00, 'stock_out', 208, 'POS2022040045'),
(261, 11, 364, 1, '2022-04-06 19:58:43', 1, 1, 7500.00, 'stock_adjustment', NULL, NULL),
(262, 11, 123, 1, '2022-04-06 20:00:10', 1, 1, 7400.00, 'stock_adjustment', NULL, NULL),
(263, 11, 364, 2, '2022-04-06 20:51:11', 1, 1, 7020.00, 'stock_adjustment', 18, NULL),
(264, 11, 125, 2, '2022-04-06 21:14:55', 2, 2, 14200.00, 'stock_adjustment', 57, NULL),
(265, 11, 125, 2, '2022-04-06 21:19:25', 1, 1, 14200.00, 'stock_adjustment', 177, NULL),
(266, 11, 125, 2, '2022-04-06 21:19:25', 1, 1, 14200.00, 'stock_adjustment', 252, NULL),
(267, 11, 125, 1, '2022-04-06 21:24:27', 12, 8, 14200.00, 'stock_adjustment', NULL, NULL),
(268, 11, 125, 2, '2022-04-06 21:26:04', 4, 4, 14200.00, 'stock_adjustment', 267, NULL),
(269, 11, 252, 2, '2022-04-06 21:49:38', 5, 5, 28300.00, 'stock_adjustment', 113, NULL),
(270, 11, 252, 2, '2022-04-06 21:49:38', 7, 7, 28300.00, 'stock_adjustment', 152, NULL),
(271, 11, 252, 1, '2022-04-06 21:52:08', 2, 2, 28300.00, 'stock_adjustment', NULL, NULL),
(272, 11, 534, 2, '2022-04-06 22:32:27', 2, 2, 50400.00, 'stock_adjustment', 26, NULL),
(273, 11, 554, 2, '2022-04-06 22:37:15', 4, 4, 5850.00, 'stock_adjustment', 11, NULL),
(274, 11, 554, 2, '2022-04-06 22:37:15', 6, 6, 5850.00, 'stock_adjustment', 104, NULL),
(275, 11, 683, 2, '2022-04-06 23:04:33', 3, 3, 10100.00, 'stock_adjustment', 151, NULL),
(276, 11, 681, 2, '2022-04-07 10:49:29', 1, 1, 27800.00, 'stock_out', 15, 'POS2022040046'),
(277, 11, 575, 2, '2022-04-07 10:49:29', 1, 1, 23500.00, 'stock_out', 1, 'POS2022040046'),
(278, 11, 582, 2, '2022-04-07 10:49:29', 1, 1, 13000.00, 'stock_out', 7, 'POS2022040046'),
(279, 11, 688, 2, '2022-04-07 10:55:29', 1, 1, 18200.00, 'stock_out', 126, 'POS2022040047'),
(280, 11, 702, 2, '2022-04-07 12:46:58', 1, 1, 49300.00, 'stock_out', 149, 'POS2022040048'),
(281, 11, 727, 1, '2022-04-07 17:11:00', 10, 19, 0.00, 'stock_in', NULL, '1'),
(282, 11, 720, 1, '2022-04-07 18:53:09', 6, 6, 33200.00, 'stock_in', NULL, '3'),
(283, 11, 714, 1, '2022-04-07 18:56:54', 3, 6, 0.00, 'stock_in', NULL, '3'),
(284, 11, 77, 2, '2022-04-07 18:57:36', 1, 1, 11900.00, 'stock_out', 23, 'POS2022040049'),
(285, 11, 720, 2, '2022-04-07 18:57:36', 1, 1, 41300.00, 'stock_out', 282, 'POS2022040049'),
(286, 11, 715, 1, '2022-04-07 19:07:53', 3, 5, 0.00, 'stock_in', NULL, '3'),
(287, 11, 716, 1, '2022-04-07 19:12:53', 3, 2, 24000.00, 'stock_in', NULL, '3'),
(288, 11, 728, 1, '2022-04-07 19:22:30', 3, 6, 0.00, 'stock_in', NULL, '1'),
(289, 11, 729, 1, '2022-04-07 19:26:41', 3, 3, 0.00, 'stock_in', NULL, '3'),
(291, 11, 718, 1, '2022-04-07 19:35:46', 5, 8, 59000.00, 'stock_in', NULL, '3'),
(292, 11, 719, 1, '2022-04-07 19:35:46', 5, 9, 59000.00, 'stock_in', NULL, '3'),
(293, 11, 702, 1, '2022-04-07 19:37:18', 5, 6, 39800.00, 'stock_in', NULL, '3'),
(294, 11, 712, 1, '2022-04-07 19:39:07', 6, 10, 0.00, 'stock_in', NULL, '3'),
(295, 11, 711, 1, '2022-04-07 23:02:36', 4, 7, 0.00, 'stock_in', NULL, '3'),
(296, 11, 250, 1, '2022-04-07 23:11:34', 3, 5, 42000.00, 'stock_in', NULL, '3'),
(297, 11, 723, 1, '2022-04-07 23:14:34', 2, 4, 0.00, 'stock_in', NULL, '3'),
(298, 11, 722, 1, '2022-04-07 23:17:19', 3, 5, 0.00, 'stock_in', NULL, '3'),
(299, 11, 708, 1, '2022-04-07 23:19:48', 10, 19, 0.00, 'stock_in', NULL, '3'),
(300, 11, 721, 1, '2022-04-07 23:22:40', 2, 2, 0.00, 'stock_in', NULL, '3'),
(301, 11, 724, 1, '2022-04-07 23:23:13', 3, 6, 0.00, 'stock_in', NULL, '3'),
(302, 11, 725, 1, '2022-04-07 23:25:06', 4, 6, 0.00, 'stock_in', NULL, '3'),
(303, 11, 713, 1, '2022-04-07 23:29:35', 4, 8, 0.00, 'stock_in', NULL, '3'),
(304, 11, 537, 1, '2022-04-07 23:31:50', 15, 14, 33500.00, 'stock_in', NULL, '3'),
(481, 11, 740, 2, '2022-04-16 08:18:19', 1, 1, 11100.00, 'stock_out', 332, 'POS2022040097'),
(480, 11, 582, 2, '2022-04-16 08:09:14', 1, 1, 12400.00, 'stock_out', 7, 'POS2022040096'),
(307, 11, 614, 2, '2022-04-08 07:42:45', 1, 1, 51300.00, 'stock_out', 208, 'POS2022040051'),
(308, 11, 76, 2, '2022-04-08 07:42:45', 1, 1, 13300.00, 'stock_out', 19, 'POS2022040051'),
(309, 11, 605, 2, '2022-04-08 07:42:45', 1, 1, 44800.00, 'stock_out', 129, 'POS2022040051'),
(310, 11, 575, 2, '2022-04-08 07:44:50', 1, 1, 23500.00, 'stock_out', 1, 'POS2022040052'),
(311, 11, 228, 1, '2022-04-08 08:35:15', 5, 4, 43800.00, 'stock_in', NULL, '1'),
(489, 11, 225, 2, '2022-04-16 11:54:12', 1, 1, 24300.00, 'stock_out', 100, 'POS2022040101'),
(313, 11, 206, 2, '2022-04-08 14:33:59', 6, 6, 10400.00, 'stock_adjustment', 138, NULL),
(314, 11, 205, 2, '2022-04-08 14:38:16', 6, 6, 24800.00, 'stock_adjustment', 136, NULL),
(315, 11, 206, 1, '2022-04-08 14:38:55', 6, 6, 10400.00, 'stock_adjustment', NULL, NULL),
(316, 11, 555, 2, '2022-04-08 15:12:25', 5, 5, 13500.00, 'stock_adjustment', 4, NULL),
(317, 11, 650, 2, '2022-04-08 15:24:36', 5, 5, 17500.00, 'stock_adjustment', 74, NULL),
(318, 11, 650, 2, '2022-04-08 15:24:36', 1, 1, 17500.00, 'stock_adjustment', 158, NULL),
(319, 11, 218, 1, '2022-04-08 15:39:07', 6, 6, 21400.00, 'stock_in', NULL, '1'),
(320, 11, 683, 1, '2022-04-08 15:44:37', 5, 5, 10100.00, 'stock_adjustment', NULL, NULL),
(321, 11, 688, 2, '2022-04-08 15:52:35', 15, 15, 14595.00, 'stock_adjustment', 126, NULL),
(322, 11, 709, 1, '2022-04-08 16:17:01', 5, 10, 10500.00, 'stock_in', NULL, '3'),
(323, 11, 123, 2, '2022-04-08 17:16:52', 1, 1, 9300.00, 'stock_out', 55, 'POS2022040053'),
(324, 11, 732, 1, '2022-04-08 17:28:29', 6, 10, 0.00, 'stock_in', NULL, '1'),
(325, 11, 732, 2, '2022-04-08 17:33:23', 1, 1, 13300.00, 'stock_out', 324, 'POS2022040054'),
(326, 11, 725, 2, '2022-04-08 17:33:23', 1, 1, 18600.00, 'stock_out', 302, 'POS2022040054'),
(327, 11, 731, 1, '2022-04-08 17:34:59', 6, 9, 9500.00, 'stock_in', NULL, '1'),
(328, 11, 739, 1, '2022-04-08 17:51:33', 6, 11, 0.00, 'stock_in', NULL, '1'),
(329, 11, 738, 1, '2022-04-08 17:54:18', 6, 12, 0.00, 'stock_in', NULL, '1'),
(330, 11, 739, 2, '2022-04-08 18:02:16', 1, 1, 13200.00, 'stock_out', 328, 'POS2022040055'),
(331, 11, 734, 1, '2022-04-08 18:25:30', 6, 12, 19400.00, 'stock_in', NULL, '1'),
(332, 11, 740, 1, '2022-04-08 18:26:07', 6, 10, 9400.00, 'stock_in', NULL, '1'),
(333, 11, 735, 1, '2022-04-08 18:31:16', 6, 10, 9700.00, 'stock_in', NULL, '1'),
(334, 11, 736, 1, '2022-04-08 19:15:52', 6, 10, 0.00, 'stock_in', NULL, '1'),
(335, 11, 742, 1, '2022-04-08 19:25:28', 6, 12, 28200.00, 'stock_in', NULL, '1'),
(336, 11, 743, 1, '2022-04-08 19:41:58', 6, 12, 15100.00, 'stock_in', NULL, '1'),
(337, 11, 745, 1, '2022-04-08 20:19:03', 6, 12, 21200.00, 'stock_in', NULL, '1'),
(338, 11, 717, 1, '2022-04-09 07:49:10', 2, 3, 15500.00, 'stock_in', NULL, '3'),
(339, 11, 746, 1, '2022-04-09 08:24:04', 3, 5, 0.00, 'stock_in', NULL, '4'),
(340, 11, 747, 1, '2022-04-09 08:31:16', 3, 5, 0.00, 'stock_in', NULL, '4'),
(341, 11, 716, 2, '2022-04-09 08:54:38', 1, 1, 28700.00, 'stock_out', 287, 'POS2022040056'),
(342, 11, 729, 2, '2022-04-09 08:54:38', 1, 1, 37400.00, 'stock_out', 289, 'POS2022040056'),
(343, 11, 748, 1, '2022-04-09 09:03:04', 4, 8, 0.00, 'stock_in', NULL, '4'),
(344, 11, 716, 2, '2022-04-09 09:34:38', 1, 1, 28700.00, 'stock_out', 287, 'POS2022040057'),
(345, 11, 295, 2, '2022-04-09 09:57:26', 1, 1, 16300.00, 'stock_out', 66, 'POS2022040058'),
(346, 11, 582, 2, '2022-04-09 09:57:26', 1, 1, 13000.00, 'stock_out', 7, 'POS2022040058'),
(347, 11, 574, 2, '2022-04-09 09:57:26', 1, 1, 33800.00, 'stock_out', 2, 'POS2022040058'),
(348, 11, 688, 2, '2022-04-09 11:04:16', 1, 1, 18200.00, 'stock_out', 126, 'POS2022040059'),
(349, 11, 686, 2, '2022-04-09 14:04:14', 1, 1, 46400.00, 'stock_out', 127, 'POS2022040060'),
(350, 11, 295, 2, '2022-04-09 17:37:31', 2, 2, 16300.00, 'stock_out', 66, 'POS2022040061'),
(351, 11, 698, 2, '2022-04-09 17:37:31', 1, 1, 30900.00, 'stock_out', 116, 'POS2022040061'),
(352, 11, 741, 1, '2022-04-09 22:21:58', 6, 12, 59700.00, 'stock_in', NULL, '1'),
(353, 11, 691, 2, '2022-04-10 07:44:56', 1, 1, 20800.00, 'stock_out', 124, 'POS2022040062'),
(354, 11, 450, 2, '2022-04-10 07:44:56', 1, 1, 8500.00, 'stock_out', 76, 'POS2022040062'),
(355, 11, 688, 2, '2022-04-10 07:44:56', 1, 1, 18200.00, 'stock_out', 126, 'POS2022040062'),
(356, 11, 697, 2, '2022-04-10 07:46:54', 1, 1, 17500.00, 'stock_out', 123, 'POS2022040063'),
(357, 11, 697, 2, '2022-04-10 07:49:42', 1, 1, 17500.00, 'stock_out', 123, 'POS2022040064'),
(358, 11, 450, 2, '2022-04-10 07:49:42', 2, 2, 8500.00, 'stock_out', 76, 'POS2022040064'),
(359, 11, 688, 2, '2022-04-10 07:53:53', 1, 1, 18200.00, 'stock_out', 126, 'POS2022040065'),
(360, 11, 691, 2, '2022-04-10 07:53:53', 1, 1, 20800.00, 'stock_out', 124, 'POS2022040065'),
(361, 11, 744, 1, '2022-04-10 08:58:18', 6, 9, 15100.00, 'stock_in', NULL, '1'),
(362, 11, 744, 2, '2022-04-10 09:00:34', 1, 1, 15100.00, 'stock_adjustment', 361, NULL),
(363, 11, 211, 1, '2022-04-10 09:34:36', 6, 5, 24400.00, 'stock_in', NULL, '1'),
(364, 11, 598, 2, '2022-04-10 09:48:32', 1, 1, 24600.00, 'stock_out', 58, 'POS2022040066'),
(365, 11, 683, 2, '2022-04-10 09:48:32', 1, 1, 12000.00, 'stock_out', 151, 'POS2022040066'),
(366, 11, 538, 1, '2022-04-10 10:24:44', 1, 1, 23600.00, 'stock_adjustment', NULL, NULL),
(367, 11, 605, 1, '2022-04-10 10:53:36', 1, 1, 35800.00, 'stock_adjustment', NULL, NULL),
(368, 11, 686, 2, '2022-04-10 10:57:25', 6, 6, 37040.00, 'stock_adjustment', 127, NULL),
(369, 11, 686, 1, '2022-04-10 10:58:18', 1, 1, 37040.00, 'stock_adjustment', NULL, NULL),
(370, 11, 699, 1, '2022-04-10 11:00:51', 4, 6, 37700.00, 'stock_in', NULL, '3'),
(371, 11, 711, 1, '2022-04-10 11:06:15', 1, 5, 10500.00, 'stock_in', NULL, '3'),
(372, 11, 731, 2, '2022-04-10 11:08:35', 1, 1, 9500.00, 'stock_adjustment', 327, NULL),
(373, 11, 731, 2, '2022-04-10 11:09:30', 1, 1, 9500.00, 'stock_adjustment', 327, NULL),
(374, 11, 732, 2, '2022-04-10 11:09:52', 1, 1, 0.00, 'stock_adjustment', 324, NULL),
(375, 11, 379, 2, '2022-04-10 11:22:59', 1, 1, 11700.00, 'stock_adjustment', 139, NULL),
(376, 11, 711, 2, '2022-04-10 11:36:50', 1, 1, 13100.00, 'stock_out', 295, 'POS2022040067'),
(377, 11, 328, 2, '2022-04-10 11:36:50', 1, 1, 21600.00, 'stock_out', 71, 'POS2022040067'),
(378, 11, 720, 2, '2022-04-10 11:49:16', 2, 2, 39800.00, 'stock_out', 282, 'POS2022040068'),
(379, 11, 315, 2, '2022-04-10 11:57:23', 1, 1, 16500.00, 'stock_out', 67, 'POS2022040069'),
(380, 11, 229, 2, '2022-04-10 11:57:23', 1, 1, 54300.00, 'stock_out', 103, 'POS2022040069'),
(381, 11, 228, 2, '2022-04-10 11:57:23', 1, 1, 54300.00, 'stock_out', 311, 'POS2022040069'),
(382, 11, 596, 1, '2022-04-10 12:29:49', 4, 4, 25700.00, 'stock_adjustment', NULL, NULL),
(383, 11, 595, 2, '2022-04-10 12:30:47', 4, 4, 25800.00, 'stock_adjustment', 61, NULL),
(384, 11, 699, 1, '2022-04-10 13:26:02', 1, 1, 37700.00, 'stock_adjustment', NULL, NULL),
(385, 11, 736, 2, '2022-04-10 13:38:01', 1, 1, 0.00, 'stock_adjustment', 334, NULL),
(386, 11, 690, 2, '2022-04-10 14:41:17', 1, 1, 71900.00, 'stock_out', 125, 'POS2022040070'),
(387, 11, 596, 2, '2022-04-10 14:41:17', 1, 1, 31900.00, 'stock_out', 62, 'POS2022040070'),
(388, 11, 690, 2, '2022-04-10 14:45:22', 1, 1, 71900.00, 'stock_out', 125, 'POS2022040071'),
(389, 11, 595, 2, '2022-04-10 14:45:22', 1, 1, 31600.00, 'stock_out', 61, 'POS2022040071'),
(390, 11, 390, 2, '2022-04-10 14:45:22', 1, 1, 30600.00, 'stock_out', 118, 'POS2022040071'),
(391, 11, 123, 2, '2022-04-10 15:40:08', 1, 1, 7400.00, 'stock_adjustment', 55, NULL),
(392, 11, 198, 2, '2022-04-10 15:52:41', 1, 1, 21600.00, 'stock_adjustment', 93, NULL),
(393, 11, 690, 1, '2022-04-10 16:44:51', 1, 1, 57640.00, 'stock_adjustment', NULL, NULL),
(394, 11, 691, 2, '2022-04-10 16:52:35', 1, 1, 20800.00, 'stock_out', 124, 'POS2022040072'),
(395, 11, 124, 2, '2022-04-11 11:20:45', 1, 1, 11600.00, 'stock_out', 54, 'POS2022040073'),
(396, 11, 731, 2, '2022-04-11 15:35:11', 1, 1, 11900.00, 'stock_out', 327, 'POS2022040074'),
(397, 11, 708, 2, '2022-04-11 15:35:11', 1, 1, 20300.00, 'stock_out', 299, 'POS2022040074'),
(398, 11, 727, 2, '2022-04-11 16:15:57', 1, 1, 31500.00, 'stock_out', 281, 'POS2022040075'),
(399, 11, 735, 2, '2022-04-11 16:15:57', 1, 1, 11600.00, 'stock_out', 333, 'POS2022040075'),
(400, 11, 368, 2, '2022-04-11 16:15:57', 1, 1, 4800.00, 'stock_out', 13, 'POS2022040075'),
(401, 11, 720, 2, '2022-04-11 17:18:45', 1, 1, 39800.00, 'stock_out', 282, 'POS2022040076'),
(402, 11, 693, 2, '2022-04-11 17:18:45', 1, 1, 62800.00, 'stock_out', 122, 'POS2022040076'),
(403, 11, 687, 2, '2022-04-11 17:18:45', 1, 1, 46900.00, 'stock_out', 121, 'POS2022040076'),
(404, 11, 720, 2, '2022-04-11 17:20:25', 1, 1, 39800.00, 'stock_out', 282, 'POS2022040077'),
(405, 11, 687, 2, '2022-04-11 17:20:25', 1, 1, 46900.00, 'stock_out', 121, 'POS2022040077'),
(406, 11, 693, 2, '2022-04-11 17:20:25', 1, 1, 62800.00, 'stock_out', 122, 'POS2022040077'),
(407, 11, 390, 2, '2022-04-12 10:00:16', 1, 1, 29400.00, 'stock_out', 118, 'POS2022040078'),
(408, 11, 729, 2, '2022-04-12 10:33:57', 1, 1, 37400.00, 'stock_out', 289, 'POS2022040079'),
(409, 11, 716, 2, '2022-04-12 10:37:26', 1, 1, 28700.00, 'stock_out', 287, 'POS2022040080'),
(410, 11, 729, 2, '2022-04-12 10:37:26', 1, 1, 37400.00, 'stock_out', 289, 'POS2022040080'),
(411, 11, 698, 2, '2022-04-12 13:29:11', 1, 1, 30900.00, 'stock_out', 116, 'POS2022040081'),
(412, 11, 450, 2, '2022-04-13 08:41:55', 1, 1, 8500.00, 'stock_out', 76, 'POS2022040082'),
(413, 11, 717, 2, '2022-04-13 08:41:55', 1, 1, 19300.00, 'stock_out', 338, 'POS2022040082'),
(414, 11, 715, 2, '2022-04-13 08:56:37', 1, 1, 34600.00, 'stock_out', 286, 'POS2022040083'),
(415, 11, 747, 2, '2022-04-13 08:56:37', 1, 1, 44100.00, 'stock_out', 340, 'POS2022040083'),
(416, 11, 315, 2, '2022-04-13 08:56:37', 1, 1, 16500.00, 'stock_out', 67, 'POS2022040083'),
(417, 11, 606, 2, '2022-04-13 08:56:37', 1, 1, 53500.00, 'stock_out', 131, 'POS2022040083'),
(418, 11, 175, 2, '2022-04-13 08:56:37', 1, 1, 57800.00, 'stock_out', 148, 'POS2022040083'),
(419, 11, 593, 2, '2022-04-13 14:47:40', 1, 1, 31600.00, 'stock_out', 59, 'POS2022040084'),
(420, 11, 192, 2, '2022-04-13 14:47:40', 1, 1, 16300.00, 'stock_out', 90, 'POS2022040084'),
(421, 11, 691, 2, '2022-04-13 14:47:40', 1, 1, 19900.00, 'stock_out', 124, 'POS2022040084'),
(422, 11, 232, 2, '2022-04-13 14:47:40', 1, 1, 9400.00, 'stock_out', 82, 'POS2022040084'),
(423, 11, 320, 2, '2022-04-13 14:47:40', 1, 1, 13100.00, 'stock_out', 68, 'POS2022040084'),
(424, 11, 197, 2, '2022-04-13 14:47:40', 1, 1, 11200.00, 'stock_out', 133, 'POS2022040084'),
(425, 11, 718, 2, '2022-04-13 16:13:04', 1, 1, 68900.00, 'stock_out', 291, 'POS2022040085'),
(426, 11, 697, 2, '2022-04-13 16:13:04', 1, 1, 16900.00, 'stock_out', 123, 'POS2022040085'),
(427, 11, 263, 2, '2022-04-13 18:42:22', 1, 1, 25600.00, 'stock_out', 115, 'POS2022040086'),
(428, 11, 697, 2, '2022-04-14 08:48:33', 1, 1, 16900.00, 'stock_out', 123, 'POS2022040087'),
(429, 11, 688, 2, '2022-04-14 08:48:33', 1, 1, 19600.00, 'stock_out', 126, 'POS2022040087'),
(430, 11, 691, 2, '2022-04-14 09:18:20', 1, 1, 19900.00, 'stock_out', 124, 'POS2022040088'),
(431, 11, 197, 2, '2022-04-14 14:06:04', 1, 1, 11000.00, 'stock_out', 133, 'POS2022040089'),
(432, 11, 320, 2, '2022-04-14 14:06:04', 1, 1, 12800.00, 'stock_out', 68, 'POS2022040089'),
(433, 11, 716, 1, '2022-04-14 14:41:16', 3, 3, 24000.00, 'stock_in', NULL, '4'),
(434, 11, 295, 1, '2022-04-14 14:42:29', 6, 5, 13500.00, 'stock_in', NULL, '4'),
(435, 11, 450, 1, '2022-04-14 14:43:23', 6, 6, 6900.00, 'stock_in', NULL, '4'),
(436, 11, 606, 1, '2022-04-14 14:45:22', 6, 6, 44300.00, 'stock_in', NULL, '4'),
(437, 11, 717, 1, '2022-04-14 14:47:20', 5, 6, 15500.00, 'stock_in', NULL, '4'),
(438, 11, 729, 1, '2022-04-14 14:47:42', 5, 5, 30000.00, 'stock_in', NULL, '4'),
(439, 11, 749, 1, '2022-04-14 14:50:27', 6, 12, 0.00, 'stock_in', NULL, '4'),
(440, 11, 750, 1, '2022-04-14 15:00:56', 5, 10, 0.00, 'stock_in', NULL, '4'),
(441, 11, 751, 1, '2022-04-14 15:05:45', 5, 10, 0.00, 'stock_in', NULL, '4'),
(442, 11, 752, 1, '2022-04-14 15:09:40', 3, 4, 0.00, 'stock_in', NULL, '4'),
(443, 11, 753, 1, '2022-04-14 15:12:57', 6, 12, 0.00, 'stock_in', NULL, '4'),
(444, 11, 754, 1, '2022-04-14 15:16:54', 6, 12, 15100.00, 'stock_in', NULL, '4'),
(445, 11, 755, 1, '2022-04-14 15:18:49', 6, 11, 0.00, 'stock_in', NULL, '4'),
(446, 11, 756, 1, '2022-04-14 15:22:50', 6, 11, 0.00, 'stock_in', NULL, '4'),
(447, 11, 757, 1, '2022-04-14 15:25:59', 6, 12, 0.00, 'stock_in', NULL, '4'),
(448, 11, 758, 1, '2022-04-14 15:28:55', 6, 12, 0.00, 'stock_in', NULL, '4'),
(449, 11, 763, 1, '2022-04-14 15:36:21', 6, 11, 0.00, 'stock_in', NULL, '4'),
(450, 11, 761, 1, '2022-04-14 15:36:21', 6, 12, 0.00, 'stock_in', NULL, '4'),
(451, 11, 760, 1, '2022-04-14 15:36:21', 6, 12, 0.00, 'stock_in', NULL, '4'),
(452, 11, 762, 1, '2022-04-14 15:36:21', 6, 12, 0.00, 'stock_in', NULL, '4'),
(453, 11, 759, 1, '2022-04-14 15:36:21', 6, 12, 0.00, 'stock_in', NULL, '4'),
(454, 11, 534, 1, '2022-04-14 15:40:43', 6, 8, 52000.00, 'stock_in', NULL, '4'),
(455, 11, 765, 1, '2022-04-14 15:49:37', 6, 12, 17100.00, 'stock_in', NULL, '4'),
(456, 11, 764, 1, '2022-04-14 15:49:37', 6, 12, 17100.00, 'stock_in', NULL, '4'),
(457, 11, 766, 1, '2022-04-14 15:49:37', 6, 12, 17100.00, 'stock_in', NULL, '4'),
(458, 11, 767, 1, '2022-04-14 15:55:25', 5, 10, 0.00, 'stock_in', NULL, '4'),
(459, 11, 769, 1, '2022-04-14 15:56:01', 5, 10, 0.00, 'stock_in', NULL, '4'),
(460, 11, 768, 1, '2022-04-14 15:56:38', 5, 10, 0.00, 'stock_in', NULL, '4'),
(461, 11, 770, 1, '2022-04-14 16:08:40', 3, 4, 0.00, 'stock_in', NULL, '4'),
(462, 11, 771, 1, '2022-04-14 16:08:40', 3, 6, 0.00, 'stock_in', NULL, '4'),
(463, 11, 772, 1, '2022-04-14 16:08:40', 5, 10, 0.00, 'stock_in', NULL, '4'),
(464, 11, 773, 1, '2022-04-14 16:08:40', 5, 10, 0.00, 'stock_in', NULL, '4'),
(465, 11, 774, 1, '2022-04-14 16:08:40', 5, 10, 0.00, 'stock_in', NULL, '4'),
(468, 11, 752, 2, '2022-04-15 10:36:34', 1, 1, 27800.00, 'stock_out', 442, 'POS2022040091'),
(469, 11, 720, 2, '2022-04-15 12:45:29', 1, 1, 39800.00, 'stock_out', 282, 'POS2022040092'),
(470, 11, 605, 2, '2022-04-15 12:45:29', 1, 1, 43200.00, 'stock_out', 129, 'POS2022040092'),
(471, 11, 740, 2, '2022-04-15 12:45:29', 1, 1, 11100.00, 'stock_out', 332, 'POS2022040092'),
(472, 11, 735, 2, '2022-04-15 12:45:29', 1, 1, 11500.00, 'stock_out', 333, 'POS2022040092'),
(473, 11, 597, 2, '2022-04-15 13:22:12', 1, 1, 33600.00, 'stock_out', 64, 'POS2022040093'),
(474, 11, 321, 2, '2022-04-15 13:22:12', 1, 1, 24500.00, 'stock_out', 69, 'POS2022040093'),
(475, 11, 366, 2, '2022-04-15 13:22:12', 1, 1, 8900.00, 'stock_out', 17, 'POS2022040093'),
(476, 11, 756, 2, '2022-04-15 13:22:12', 1, 1, 9200.00, 'stock_out', 446, 'POS2022040093'),
(477, 11, 721, 2, '2022-04-15 16:55:10', 2, 2, 19800.00, 'stock_out', 300, 'POS2022040094'),
(478, 11, 722, 2, '2022-04-15 16:55:10', 1, 1, 24500.00, 'stock_out', 298, 'POS2022040094'),
(479, 11, 755, 2, '2022-04-15 18:14:58', 1, 1, 9200.00, 'stock_out', 445, 'POS2022040095'),
(493, 11, 770, 2, '2022-04-16 12:41:58', 2, 2, 16700.00, 'stock_out', 461, 'POS2022040102'),
(494, 11, 688, 2, '2022-04-16 13:06:46', 1, 1, 19600.00, 'stock_out', 126, 'POS2022040103'),
(495, 11, 718, 2, '2022-04-16 14:07:30', 1, 1, 67900.00, 'stock_out', 291, 'POS2022040104'),
(496, 11, 698, 2, '2022-04-17 08:26:53', 1, 1, 29900.00, 'stock_out', 116, 'POS2022040105'),
(497, 11, 683, 2, '2022-04-17 08:26:53', 1, 1, 12000.00, 'stock_out', 151, 'POS2022040105'),
(498, 11, 399, 2, '2022-04-17 08:26:53', 1, 1, 27600.00, 'stock_out', 204, 'POS2022040105'),
(499, 11, 593, 2, '2022-04-17 10:09:49', 1, 1, 31000.00, 'stock_out', 59, 'POS2022040106'),
(500, 11, 244, 2, '2022-04-17 11:11:13', 1, 1, 41600.00, 'stock_out', 112, 'POS2022040107'),
(501, 11, 719, 2, '2022-04-17 11:44:31', 1, 1, 67900.00, 'stock_out', 292, 'POS2022040108'),
(502, 11, 554, 2, '2022-04-17 11:44:31', 1, 1, 7700.00, 'stock_out', 104, 'POS2022040108'),
(503, 11, 712, 2, '2022-04-17 11:58:33', 1, 1, 25000.00, 'stock_out', 294, 'POS2022040109'),
(504, 11, 697, 2, '2022-04-17 11:58:33', 1, 1, 16800.00, 'stock_out', 123, 'POS2022040109'),
(505, 11, 295, 2, '2022-04-17 16:14:28', 1, 1, 16200.00, 'stock_out', 434, 'POS2022040110'),
(506, 11, 744, 2, '2022-04-18 08:07:04', 1, 1, 18100.00, 'stock_out', 361, 'POS2022040111'),
(507, 11, 697, 2, '2022-04-18 09:31:04', 1, 1, 16800.00, 'stock_out', 123, 'POS2022040112'),
(508, 11, 736, 2, '2022-04-18 09:50:33', 1, 1, 57900.00, 'stock_out', 334, 'POS2022040113'),
(509, 11, 744, 2, '2022-04-18 16:09:52', 1, 1, 18100.00, 'stock_out', 361, 'POS2022040114'),
(510, 11, 650, 2, '2022-04-18 16:09:52', 1, 1, 21000.00, 'stock_out', 158, 'POS2022040114'),
(511, 11, 763, 2, '2022-04-18 16:09:52', 1, 1, 5500.00, 'stock_out', 449, 'POS2022040114'),
(512, 11, 746, 2, '2022-04-19 07:42:40', 1, 1, 36100.00, 'stock_out', 339, 'POS2022040115'),
(513, 11, 681, 2, '2022-04-19 07:42:40', 1, 1, 26300.00, 'stock_out', 15, 'POS2022040115'),
(514, 11, 581, 2, '2022-04-19 07:42:40', 1, 1, 12600.00, 'stock_out', 6, 'POS2022040115');

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_in`
--

CREATE TABLE `tblstock_in` (
  `stock_in_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `doc_number` varchar(50) NOT NULL,
  `stock_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblstock_in`
--

INSERT INTO `tblstock_in` (`stock_in_id`, `branch_id`, `supplier_id`, `doc_number`, `stock_date`, `status`, `description`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(1, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-03-31 17:45:57', NULL, NULL),
(2, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-03-31 17:47:07', NULL, NULL),
(3, 11, 1, '1', '2022-03-31', 1, 'exp 31/10/2022', 1, '2022-03-31 17:48:30', NULL, NULL),
(4, 11, 1, '1', '2022-03-31', 1, 'exp 24/11/2022', 1, '2022-03-31 18:00:25', NULL, NULL),
(5, 11, 1, '1', '2022-03-31', 1, ' exp 15/10/2022', 1, '2022-03-31 18:02:47', NULL, NULL),
(6, 11, 1, '1', '2022-03-31', 1, 'EXP 28/12/2022', 1, '2022-03-31 18:07:27', NULL, NULL),
(7, 11, 1, '1', '2022-03-31', 1, 'EXP. 22/12/2022', 1, '2022-03-31 18:10:26', NULL, NULL),
(8, 11, 1, '1', '2022-03-31', 1, 'EXP. 02/03/2023', 1, '2022-03-31 18:17:27', NULL, NULL),
(9, 11, 1, '1', '2022-03-31', 1, 'EXP. 02/03/2023', 1, '2022-03-31 18:18:42', NULL, NULL),
(10, 11, 1, '1', '2022-03-31', 1, 'EXP. 07/10/2022', 1, '2022-03-31 18:25:09', NULL, NULL),
(11, 11, 1, '1', '2022-03-31', 1, 'EXP.  24/11/2022', 1, '2022-03-31 18:25:55', NULL, NULL),
(12, 11, 1, '1', '2022-03-31', 1, 'exp 07/07/2022', 1, '2022-03-31 18:29:38', NULL, NULL),
(13, 11, 1, '1', '2022-03-31', 1, 'exp 04/07/2023', 1, '2022-03-31 18:30:27', NULL, NULL),
(14, 11, 1, '1', '2022-03-31', 1, 'EXP 11/09/2022', 1, '2022-03-31 18:41:23', NULL, NULL),
(15, 11, 1, '1', '2022-03-31', 1, 'EXP  18/11/2022', 1, '2022-03-31 18:42:23', NULL, NULL),
(16, 11, 1, '1', '2022-03-31', 1, 'exp 21/08/2022', 1, '2022-03-31 18:46:24', NULL, NULL),
(17, 11, 1, '1', '2022-03-31', 1, 'exp 03/09/2023', 1, '2022-03-31 18:48:28', NULL, NULL),
(18, 11, 1, '1', '2022-03-31', 1, 'exp 17/09/2023', 1, '2022-03-31 18:54:21', NULL, NULL),
(19, 11, 1, '1', '2022-03-31', 1, 'exp 09/09/2022 = 4 pcs\r\nexp 18/09/2022 = 1 pcs', 1, '2022-03-31 19:00:21', NULL, NULL),
(20, 11, 1, '1', '2022-03-31', 1, 'exp 09/09/2022', 1, '2022-03-31 19:04:10', NULL, NULL),
(21, 11, 1, '1', '2022-03-31', 1, 'exp 18/08/2022= 4 \r\nexp 17/09/2022 = 1\r\nexp19/09/2022 = 1', 1, '2022-03-31 19:07:16', NULL, NULL),
(22, 11, 1, '1', '2022-03-31', 1, 'exp 30/07/2022 = 5\r\nexp 17/09/2022', 1, '2022-03-31 19:11:13', NULL, NULL),
(23, 11, 1, '1', '2022-03-31', 1, 'Exp. 03/09/2022', 1, '2022-03-31 19:35:51', NULL, NULL),
(24, 11, 1, '1', '2022-03-31', 1, 'exp. 18/09/2022 = 5 pcs\r\n          13/09/2022 = 1 pcs', 1, '2022-03-31 19:39:25', NULL, NULL),
(25, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-03-31 23:55:51', NULL, NULL),
(26, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-01 00:03:21', NULL, NULL),
(27, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-01 18:47:51', NULL, NULL),
(28, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-01 18:59:40', NULL, NULL),
(29, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-01 19:52:36', NULL, NULL),
(30, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-01 23:00:38', NULL, NULL),
(31, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-01 23:07:58', NULL, NULL),
(32, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-01 23:18:06', NULL, NULL),
(33, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-01 23:29:33', NULL, NULL),
(34, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-01 23:32:24', NULL, NULL),
(35, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-01 23:50:55', NULL, NULL),
(36, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-01 23:59:37', NULL, NULL),
(37, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-02 00:06:23', NULL, NULL),
(38, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-02 00:22:37', NULL, NULL),
(39, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-02 00:25:39', NULL, NULL),
(40, 11, 1, '2', '2022-04-01', 1, '', 1, '2022-04-02 08:41:23', NULL, NULL),
(41, 11, 1, '2', '2022-04-01', 1, '', 1, '2022-04-02 08:58:29', NULL, NULL),
(42, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-02 11:21:12', NULL, NULL),
(43, 11, 1, '1', '2022-04-03', 1, '', 1, '2022-04-03 08:56:39', NULL, NULL),
(44, 11, 1, '1', '2022-04-03', 1, '', 1, '2022-04-03 09:19:30', NULL, NULL),
(45, 11, 1, '2', '2022-04-03', 1, '', 1, '2022-04-03 15:32:33', NULL, NULL),
(46, 11, 1, '1', '2022-04-03', 1, '', 1, '2022-04-03 16:47:05', NULL, NULL),
(47, 11, 1, '3', '2022-04-03', 1, '', 1, '2022-04-03 16:53:52', NULL, NULL),
(48, 11, 1, '2', '2022-04-03', 1, '', 1, '2022-04-03 17:27:18', NULL, NULL),
(49, 11, 1, '1', '2022-04-03', 1, '', 1, '2022-04-03 20:28:23', NULL, NULL),
(50, 11, 1, '1', '2022-04-03', 1, '', 1, '2022-04-03 22:42:14', NULL, NULL),
(51, 11, 1, '1', '2022-04-04', 1, '', 1, '2022-04-04 22:41:11', NULL, NULL),
(52, 11, 1, '1', '2022-04-06', 1, '', 1, '2022-04-06 13:29:49', NULL, NULL),
(53, 11, 1, '1', '2022-04-06', 1, '', 1, '2022-04-06 13:36:32', NULL, NULL),
(54, 11, 1, '1', '2022-04-06', 1, '', 1, '2022-04-06 18:50:15', NULL, NULL),
(55, 11, 1, '1', '2022-04-07', 1, '', 1, '2022-04-07 17:11:00', NULL, NULL),
(56, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 18:53:09', NULL, NULL),
(57, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 18:56:54', NULL, NULL),
(58, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 19:07:53', NULL, NULL),
(59, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 19:12:53', NULL, NULL),
(60, 11, 1, '1', '2022-04-07', 1, '', 1, '2022-04-07 19:22:30', NULL, NULL),
(61, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 19:26:41', NULL, NULL),
(62, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 19:32:25', NULL, NULL),
(63, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 19:35:46', NULL, NULL),
(64, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 19:37:18', NULL, NULL),
(65, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 19:39:07', NULL, NULL),
(66, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 23:02:36', NULL, NULL),
(67, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 23:11:34', NULL, NULL),
(68, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 23:14:34', NULL, NULL),
(69, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 23:17:19', NULL, NULL),
(70, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 23:19:48', NULL, NULL),
(71, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 23:22:40', NULL, NULL),
(72, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 23:23:13', NULL, NULL),
(73, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 23:25:06', NULL, NULL),
(74, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 23:29:35', NULL, NULL),
(75, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-07 23:31:50', NULL, NULL),
(76, 11, 1, '1', '2022-04-08', 1, '', 1, '2022-04-08 08:35:15', NULL, NULL),
(77, 11, 1, '1', '2022-04-08', 1, 'dibeli tgl 31 mar 2022', 1, '2022-04-08 15:39:07', NULL, NULL),
(78, 11, 1, '3', '2022-04-07', 1, '', 1, '2022-04-08 16:17:01', NULL, NULL),
(79, 11, 1, '1', '2022-04-08', 1, '', 1, '2022-04-08 17:28:29', NULL, NULL),
(80, 11, 1, '1', '2022-04-08', 1, '', 1, '2022-04-08 17:34:59', NULL, NULL),
(81, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-08 17:51:33', NULL, NULL),
(82, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-08 17:54:18', NULL, NULL),
(83, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-08 18:25:30', NULL, NULL),
(84, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-08 18:26:07', NULL, NULL),
(85, 11, 1, '1', '2022-03-31', 1, 'ulang input data hilang', 1, '2022-04-08 18:31:16', NULL, NULL),
(86, 11, 1, '1', '2022-03-31', 1, 'terhapus di sistem', 1, '2022-04-08 19:15:52', NULL, NULL),
(87, 11, 1, '1', '2022-03-31', 1, 'terdelete sistem', 1, '2022-04-08 19:25:28', NULL, NULL),
(88, 11, 1, '1', '2022-03-31', 1, 'terdelete di sistem', 1, '2022-04-08 19:41:58', NULL, NULL),
(89, 11, 1, '1', '2022-03-31', 1, 'terhapus sistem', 1, '2022-04-08 20:19:03', NULL, NULL),
(90, 11, 1, '3', '2022-07-04', 1, '', 1, '2022-04-09 07:49:10', NULL, NULL),
(91, 11, 1, '4', '2022-04-08', 1, '', 1, '2022-04-09 08:24:04', NULL, NULL),
(92, 11, 1, '4', '2022-04-08', 1, '', 1, '2022-04-09 08:31:16', NULL, NULL),
(93, 11, 1, '4', '2022-04-09', 1, 'barang lama tidak terbaca di kasir, jadi dicoba input ulang', 1, '2022-04-09 09:03:04', NULL, NULL),
(94, 11, 1, '1', '2022-04-09', 1, 'terdelete', 1, '2022-04-09 22:21:58', NULL, NULL),
(95, 11, 1, '1', '2022-03-31', 1, 'terdelete sistem, jadi masuk 6 terbeli 1 tgl. 6 April ', 1, '2022-04-10 08:58:18', NULL, NULL),
(96, 11, 1, '1', '2022-03-31', 1, 'terdelete data..jadi input ulang', 1, '2022-04-10 09:34:36', NULL, NULL),
(97, 11, 1, '3', '2022-04-07', 1, 'belum terinput', 1, '2022-04-10 11:00:51', NULL, NULL),
(98, 11, 1, '3', '2022-04-10', 1, 'tgl. 7 belinya tapi hanya terinput 4', 1, '2022-04-10 11:06:15', NULL, NULL),
(99, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 14:41:16', NULL, NULL),
(100, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 14:42:29', NULL, NULL),
(101, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 14:43:23', NULL, NULL),
(102, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 14:45:22', NULL, NULL),
(103, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 14:47:20', NULL, NULL),
(104, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 14:47:42', NULL, NULL),
(105, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 14:50:27', NULL, NULL),
(106, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 15:00:56', NULL, NULL),
(107, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 15:05:45', NULL, NULL),
(108, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 15:09:40', NULL, NULL),
(109, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 15:12:57', NULL, NULL),
(110, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 15:16:54', NULL, NULL),
(111, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 15:18:49', NULL, NULL),
(112, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 15:22:50', NULL, NULL),
(113, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 15:25:59', NULL, NULL),
(114, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 15:28:55', NULL, NULL),
(115, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 15:36:21', NULL, NULL),
(116, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 15:40:43', NULL, NULL),
(117, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 15:49:37', NULL, NULL),
(118, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 15:55:25', NULL, NULL),
(119, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 15:56:01', NULL, NULL),
(120, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 15:56:38', NULL, NULL),
(121, 11, 1, '4', '2022-04-14', 1, '', 1, '2022-04-14 16:08:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_in_det`
--

CREATE TABLE `tblstock_in_det` (
  `stock_in_det_id` int(11) NOT NULL,
  `stock_in_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblstock_in_det`
--

INSERT INTO `tblstock_in_det` (`stock_in_det_id`, `stock_in_id`, `item_id`, `qty`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(1, 1, 575, 6, 1, '2022-03-31 17:45:57', NULL, NULL),
(2, 2, 574, 6, 1, '2022-03-31 17:47:07', NULL, NULL),
(3, 3, 680, 3, 1, '2022-03-31 17:48:30', NULL, NULL),
(4, 4, 555, 5, 1, '2022-03-31 18:00:25', NULL, NULL),
(5, 5, 564, 3, 1, '2022-03-31 18:02:47', NULL, NULL),
(6, 6, 581, 5, 1, '2022-03-31 18:07:27', NULL, NULL),
(7, 7, 582, 5, 1, '2022-03-31 18:10:26', NULL, NULL),
(8, 8, 584, 5, 1, '2022-03-31 18:17:27', NULL, NULL),
(9, 9, 375, 5, 1, '2022-03-31 18:18:42', NULL, NULL),
(10, 10, 558, 3, 1, '2022-03-31 18:25:09', NULL, NULL),
(11, 11, 554, 5, 1, '2022-03-31 18:25:55', NULL, NULL),
(13, 13, 368, 5, 1, '2022-03-31 18:30:27', NULL, NULL),
(14, 14, 563, 3, 1, '2022-03-31 18:41:23', NULL, NULL),
(15, 15, 681, 4, 1, '2022-03-31 18:42:23', NULL, NULL),
(16, 16, 380, 5, 1, '2022-03-31 18:46:24', NULL, NULL),
(17, 17, 366, 6, 1, '2022-03-31 18:48:28', NULL, NULL),
(18, 18, 364, 6, 1, '2022-03-31 18:54:21', NULL, NULL),
(19, 19, 76, 5, 1, '2022-03-31 19:00:21', NULL, NULL),
(20, 20, 76, 1, 1, '2022-03-31 19:04:10', NULL, NULL),
(21, 21, 78, 6, 1, '2022-03-31 19:07:16', NULL, NULL),
(22, 22, 79, 6, 1, '2022-03-31 19:11:13', NULL, NULL),
(23, 23, 77, 6, 1, '2022-03-31 19:35:51', NULL, NULL),
(24, 24, 93, 6, 1, '2022-03-31 19:39:25', NULL, NULL),
(25, 25, 683, 4, 1, '2022-03-31 23:55:51', NULL, NULL),
(26, 26, 534, 10, 1, '2022-04-01 00:03:21', NULL, NULL),
(27, 27, 252, 4, 1, '2022-04-01 18:47:51', NULL, NULL),
(28, 27, 130, 6, 1, '2022-04-01 18:47:51', NULL, NULL),
(29, 28, 99, 6, 1, '2022-04-01 18:59:40', NULL, NULL),
(30, 29, 292, 6, 1, '2022-04-01 19:52:36', NULL, NULL),
(31, 30, 95, 6, 1, '2022-04-01 23:00:38', NULL, NULL),
(32, 30, 96, 6, 1, '2022-04-01 23:00:38', NULL, NULL),
(33, 30, 127, 6, 1, '2022-04-01 23:00:38', NULL, NULL),
(34, 30, 128, 6, 1, '2022-04-01 23:00:38', NULL, NULL),
(35, 30, 129, 6, 1, '2022-04-01 23:00:38', NULL, NULL),
(36, 30, 696, 6, 1, '2022-04-01 23:00:38', NULL, NULL),
(37, 30, 132, 6, 1, '2022-04-01 23:00:38', NULL, NULL),
(38, 30, 110, 6, 1, '2022-04-01 23:00:38', NULL, NULL),
(39, 30, 109, 6, 1, '2022-04-01 23:00:38', NULL, NULL),
(40, 30, 124, 6, 1, '2022-04-01 23:00:38', NULL, NULL),
(41, 30, 123, 6, 1, '2022-04-01 23:00:38', NULL, NULL),
(42, 30, 105, 6, 1, '2022-04-01 23:00:38', NULL, NULL),
(43, 30, 125, 6, 1, '2022-04-01 23:00:38', NULL, NULL),
(44, 30, 598, 10, 1, '2022-04-01 23:00:38', NULL, NULL),
(45, 30, 593, 10, 1, '2022-04-01 23:00:38', NULL, NULL),
(46, 30, 594, 10, 1, '2022-04-01 23:00:38', NULL, NULL),
(47, 30, 595, 10, 1, '2022-04-01 23:00:38', NULL, NULL),
(48, 30, 596, 10, 1, '2022-04-01 23:00:38', NULL, NULL),
(50, 30, 597, 10, 1, '2022-04-01 23:00:39', NULL, NULL),
(51, 30, 293, 6, 1, '2022-04-01 23:00:39', NULL, NULL),
(52, 30, 295, 6, 1, '2022-04-01 23:00:39', NULL, NULL),
(53, 30, 315, 6, 1, '2022-04-01 23:00:39', NULL, NULL),
(54, 30, 320, 6, 1, '2022-04-01 23:00:39', NULL, NULL),
(55, 30, 321, 6, 1, '2022-04-01 23:00:39', NULL, NULL),
(56, 30, 322, 6, 1, '2022-04-01 23:00:39', NULL, NULL),
(57, 30, 328, 6, 1, '2022-04-01 23:00:39', NULL, NULL),
(58, 30, 331, 6, 1, '2022-04-01 23:00:39', NULL, NULL),
(59, 30, 332, 6, 1, '2022-04-01 23:00:39', NULL, NULL),
(60, 31, 650, 6, 1, '2022-04-01 23:07:58', NULL, NULL),
(61, 31, 652, 6, 1, '2022-04-01 23:07:58', NULL, NULL),
(62, 31, 450, 6, 1, '2022-04-01 23:07:58', NULL, NULL),
(63, 31, 465, 6, 1, '2022-04-01 23:07:58', NULL, NULL),
(64, 31, 410, 6, 1, '2022-04-01 23:07:58', NULL, NULL),
(65, 31, 415, 6, 1, '2022-04-01 23:07:58', NULL, NULL),
(66, 31, 416, 6, 1, '2022-04-01 23:07:58', NULL, NULL),
(67, 31, 417, 6, 1, '2022-04-01 23:07:58', NULL, NULL),
(68, 32, 232, 6, 1, '2022-04-01 23:18:06', NULL, NULL),
(69, 32, 236, 5, 1, '2022-04-01 23:18:06', NULL, NULL),
(70, 32, 237, 6, 1, '2022-04-01 23:18:06', NULL, NULL),
(71, 32, 177, 6, 1, '2022-04-01 23:18:06', NULL, NULL),
(72, 32, 187, 6, 1, '2022-04-01 23:18:06', NULL, NULL),
(73, 32, 186, 6, 1, '2022-04-01 23:18:06', NULL, NULL),
(74, 32, 188, 6, 1, '2022-04-01 23:18:06', NULL, NULL),
(75, 32, 193, 6, 1, '2022-04-01 23:18:06', NULL, NULL),
(76, 32, 192, 6, 1, '2022-04-01 23:18:06', NULL, NULL),
(77, 32, 195, 6, 1, '2022-04-01 23:18:06', NULL, NULL),
(78, 32, 194, 6, 1, '2022-04-01 23:18:06', NULL, NULL),
(79, 33, 198, 6, 1, '2022-04-01 23:29:33', NULL, NULL),
(80, 33, 213, 6, 1, '2022-04-01 23:29:33', NULL, NULL),
(81, 33, 215, 6, 1, '2022-04-01 23:29:33', NULL, NULL),
(82, 33, 216, 6, 1, '2022-04-01 23:29:33', NULL, NULL),
(83, 33, 220, 6, 1, '2022-04-01 23:29:33', NULL, NULL),
(84, 33, 221, 6, 1, '2022-04-01 23:29:33', NULL, NULL),
(85, 33, 695, 6, 1, '2022-04-01 23:29:33', NULL, NULL),
(86, 33, 225, 6, 1, '2022-04-01 23:29:33', NULL, NULL),
(87, 33, 227, 6, 1, '2022-04-01 23:29:33', NULL, NULL),
(88, 33, 226, 6, 1, '2022-04-01 23:29:33', NULL, NULL),
(89, 33, 229, 5, 1, '2022-04-01 23:29:33', NULL, NULL),
(90, 33, 554, 5, 1, '2022-04-01 23:29:33', NULL, NULL),
(91, 34, 555, 5, 1, '2022-04-01 23:32:24', NULL, NULL),
(92, 35, 396, 5, 1, '2022-04-01 23:50:55', NULL, NULL),
(93, 35, 397, 5, 1, '2022-04-01 23:50:55', NULL, NULL),
(94, 35, 537, 6, 1, '2022-04-01 23:50:55', NULL, NULL),
(95, 35, 542, 6, 1, '2022-04-01 23:50:55', NULL, NULL),
(96, 35, 255, 3, 1, '2022-04-01 23:50:55', NULL, NULL),
(97, 35, 258, 6, 1, '2022-04-01 23:50:55', NULL, NULL),
(98, 35, 244, 6, 1, '2022-04-01 23:50:55', NULL, NULL),
(99, 35, 252, 4, 1, '2022-04-01 23:50:55', NULL, NULL),
(100, 35, 250, 2, 1, '2022-04-01 23:50:55', NULL, NULL),
(101, 35, 263, 4, 1, '2022-04-01 23:50:55', NULL, NULL),
(102, 35, 698, 10, 1, '2022-04-01 23:50:55', NULL, NULL),
(103, 35, 533, 4, 1, '2022-04-01 23:50:55', NULL, NULL),
(104, 35, 390, 10, 1, '2022-04-01 23:50:55', NULL, NULL),
(105, 36, 692, 10, 1, '2022-04-01 23:59:37', NULL, NULL),
(106, 36, 689, 10, 1, '2022-04-01 23:59:37', NULL, NULL),
(107, 36, 687, 10, 1, '2022-04-01 23:59:37', NULL, NULL),
(108, 36, 693, 10, 1, '2022-04-01 23:59:37', NULL, NULL),
(109, 36, 697, 12, 1, '2022-04-01 23:59:37', NULL, NULL),
(110, 36, 691, 10, 1, '2022-04-01 23:59:37', NULL, NULL),
(111, 36, 690, 5, 1, '2022-04-01 23:59:37', NULL, NULL),
(112, 36, 688, 15, 1, '2022-04-01 23:59:37', NULL, NULL),
(113, 37, 686, 15, 1, '2022-04-02 00:06:23', NULL, NULL),
(114, 37, 688, 15, 1, '2022-04-02 00:06:23', NULL, NULL),
(115, 37, 605, 3, 1, '2022-04-02 00:06:23', NULL, NULL),
(117, 37, 606, 3, 1, '2022-04-02 00:06:23', NULL, NULL),
(118, 37, 608, 4, 1, '2022-04-02 00:06:23', NULL, NULL),
(119, 38, 197, 6, 1, '2022-04-02 00:22:37', NULL, NULL),
(120, 38, 203, 6, 1, '2022-04-02 00:22:37', NULL, NULL),
(121, 38, 204, 6, 1, '2022-04-02 00:22:37', NULL, NULL),
(122, 38, 205, 6, 1, '2022-04-02 00:22:37', NULL, NULL),
(123, 38, 205, 6, 1, '2022-04-02 00:22:37', NULL, NULL),
(124, 38, 206, 6, 1, '2022-04-02 00:22:37', NULL, NULL),
(125, 39, 379, 6, 1, '2022-04-02 00:25:39', NULL, NULL),
(126, 40, 701, 3, 1, '2022-04-02 08:41:23', NULL, NULL),
(127, 40, 135, 3, 1, '2022-04-02 08:41:23', NULL, NULL),
(128, 40, 163, 4, 1, '2022-04-02 08:41:23', NULL, NULL),
(129, 40, 175, 4, 1, '2022-04-02 08:41:23', NULL, NULL),
(130, 40, 702, 4, 1, '2022-04-02 08:41:23', NULL, NULL),
(131, 40, 71, 6, 1, '2022-04-02 08:41:23', NULL, NULL),
(132, 40, 683, 6, 1, '2022-04-02 08:41:23', NULL, NULL),
(133, 41, 252, 6, 1, '2022-04-02 08:58:29', NULL, NULL),
(134, 41, 252, 6, 1, '2022-04-02 08:58:29', NULL, NULL),
(135, 41, 160, 4, 1, '2022-04-02 08:58:29', NULL, NULL),
(136, 41, 151, 4, 1, '2022-04-02 08:58:29', NULL, NULL),
(138, 42, 650, 6, 1, '2022-04-02 11:21:12', NULL, NULL),
(139, 43, 308, 4, 1, '2022-04-03 08:56:39', NULL, NULL),
(140, 44, 554, 5, 1, '2022-04-03 09:19:30', NULL, NULL),
(141, 45, 699, 4, 1, '2022-04-03 15:32:33', NULL, NULL),
(142, 46, 399, 6, 1, '2022-04-03 16:47:05', NULL, NULL),
(143, 47, 705, 4, 1, '2022-04-03 16:53:52', NULL, NULL),
(144, 48, 700, 4, 1, '2022-04-03 17:27:18', NULL, NULL),
(145, 49, 614, 4, 1, '2022-04-03 20:28:23', NULL, NULL),
(146, 50, 106, 6, 1, '2022-04-03 22:42:14', NULL, NULL),
(147, 51, 538, 5, 1, '2022-04-04 22:41:11', NULL, NULL),
(148, 52, 599, 30, 1, '2022-04-06 13:29:49', NULL, NULL),
(150, 54, 694, 6, 1, '2022-04-06 18:50:15', NULL, NULL),
(151, 55, 727, 10, 1, '2022-04-07 17:11:00', NULL, NULL),
(152, 56, 720, 6, 1, '2022-04-07 18:53:09', NULL, NULL),
(153, 57, 714, 3, 1, '2022-04-07 18:56:54', NULL, NULL),
(154, 58, 715, 3, 1, '2022-04-07 19:07:53', NULL, NULL),
(155, 59, 716, 3, 1, '2022-04-07 19:12:53', NULL, NULL),
(156, 60, 728, 3, 1, '2022-04-07 19:22:30', NULL, NULL),
(157, 61, 729, 3, 1, '2022-04-07 19:26:41', NULL, NULL),
(159, 63, 718, 5, 1, '2022-04-07 19:35:46', NULL, NULL),
(160, 63, 719, 5, 1, '2022-04-07 19:35:46', NULL, NULL),
(161, 64, 702, 5, 1, '2022-04-07 19:37:18', NULL, NULL),
(162, 65, 712, 6, 1, '2022-04-07 19:39:07', NULL, NULL),
(163, 66, 711, 4, 1, '2022-04-07 23:02:36', NULL, NULL),
(164, 67, 250, 3, 1, '2022-04-07 23:11:34', NULL, NULL),
(165, 68, 723, 2, 1, '2022-04-07 23:14:34', NULL, NULL),
(166, 69, 722, 3, 1, '2022-04-07 23:17:19', NULL, NULL),
(167, 70, 708, 10, 1, '2022-04-07 23:19:48', NULL, NULL),
(168, 71, 721, 2, 1, '2022-04-07 23:22:40', NULL, NULL),
(169, 72, 724, 3, 1, '2022-04-07 23:23:13', NULL, NULL),
(170, 73, 725, 4, 1, '2022-04-07 23:25:06', NULL, NULL),
(171, 74, 713, 4, 1, '2022-04-07 23:29:35', NULL, NULL),
(172, 75, 537, 15, 1, '2022-04-07 23:31:50', NULL, NULL),
(173, 76, 228, 5, 1, '2022-04-08 08:35:15', NULL, NULL),
(174, 77, 218, 6, 1, '2022-04-08 15:39:07', NULL, NULL),
(175, 78, 709, 5, 1, '2022-04-08 16:17:01', NULL, NULL),
(176, 79, 732, 6, 1, '2022-04-08 17:28:29', NULL, NULL),
(177, 80, 731, 6, 1, '2022-04-08 17:34:59', NULL, NULL),
(178, 81, 739, 6, 1, '2022-04-08 17:51:33', NULL, NULL),
(179, 82, 738, 6, 1, '2022-04-08 17:54:18', NULL, NULL),
(180, 83, 734, 6, 1, '2022-04-08 18:25:30', NULL, NULL),
(181, 84, 740, 6, 1, '2022-04-08 18:26:07', NULL, NULL),
(182, 85, 735, 6, 1, '2022-04-08 18:31:16', NULL, NULL),
(183, 86, 736, 6, 1, '2022-04-08 19:15:52', NULL, NULL),
(184, 87, 742, 6, 1, '2022-04-08 19:25:28', NULL, NULL),
(185, 88, 743, 6, 1, '2022-04-08 19:41:58', NULL, NULL),
(186, 89, 745, 6, 1, '2022-04-08 20:19:03', NULL, NULL),
(187, 90, 717, 2, 1, '2022-04-09 07:49:10', NULL, NULL),
(188, 91, 746, 3, 1, '2022-04-09 08:24:04', NULL, NULL),
(189, 92, 747, 3, 1, '2022-04-09 08:31:16', NULL, NULL),
(190, 93, 748, 4, 1, '2022-04-09 09:03:04', NULL, NULL),
(191, 94, 741, 6, 1, '2022-04-09 22:21:58', NULL, NULL),
(192, 95, 744, 6, 1, '2022-04-10 08:58:18', NULL, NULL),
(193, 96, 211, 6, 1, '2022-04-10 09:34:36', NULL, NULL),
(194, 97, 699, 4, 1, '2022-04-10 11:00:51', NULL, NULL),
(195, 98, 711, 1, 1, '2022-04-10 11:06:15', NULL, NULL),
(196, 99, 716, 3, 1, '2022-04-14 14:41:16', NULL, NULL),
(197, 100, 295, 6, 1, '2022-04-14 14:42:29', NULL, NULL),
(198, 101, 450, 6, 1, '2022-04-14 14:43:23', NULL, NULL),
(199, 102, 606, 6, 1, '2022-04-14 14:45:22', NULL, NULL),
(200, 103, 717, 5, 1, '2022-04-14 14:47:20', NULL, NULL),
(201, 104, 729, 5, 1, '2022-04-14 14:47:42', NULL, NULL),
(202, 105, 749, 6, 1, '2022-04-14 14:50:27', NULL, NULL),
(203, 106, 750, 5, 1, '2022-04-14 15:00:56', NULL, NULL),
(204, 107, 751, 5, 1, '2022-04-14 15:05:45', NULL, NULL),
(205, 108, 752, 3, 1, '2022-04-14 15:09:40', NULL, NULL),
(206, 109, 753, 6, 1, '2022-04-14 15:12:57', NULL, NULL),
(207, 110, 754, 6, 1, '2022-04-14 15:16:54', NULL, NULL),
(208, 111, 755, 6, 1, '2022-04-14 15:18:49', NULL, NULL),
(209, 112, 756, 6, 1, '2022-04-14 15:22:50', NULL, NULL),
(210, 113, 757, 6, 1, '2022-04-14 15:25:59', NULL, NULL),
(211, 114, 758, 6, 1, '2022-04-14 15:28:55', NULL, NULL),
(212, 115, 763, 6, 1, '2022-04-14 15:36:21', NULL, NULL),
(213, 115, 761, 6, 1, '2022-04-14 15:36:21', NULL, NULL),
(214, 115, 760, 6, 1, '2022-04-14 15:36:21', NULL, NULL),
(215, 115, 762, 6, 1, '2022-04-14 15:36:21', NULL, NULL),
(216, 115, 759, 6, 1, '2022-04-14 15:36:21', NULL, NULL),
(217, 116, 534, 6, 1, '2022-04-14 15:40:43', NULL, NULL),
(218, 117, 765, 6, 1, '2022-04-14 15:49:37', NULL, NULL),
(219, 117, 764, 6, 1, '2022-04-14 15:49:37', NULL, NULL),
(220, 117, 766, 6, 1, '2022-04-14 15:49:37', NULL, NULL),
(221, 118, 767, 5, 1, '2022-04-14 15:55:25', NULL, NULL),
(222, 119, 769, 5, 1, '2022-04-14 15:56:01', NULL, NULL),
(223, 120, 768, 5, 1, '2022-04-14 15:56:38', NULL, NULL),
(224, 121, 770, 3, 1, '2022-04-14 16:08:40', NULL, NULL),
(225, 121, 771, 3, 1, '2022-04-14 16:08:40', NULL, NULL),
(226, 121, 772, 5, 1, '2022-04-14 16:08:40', NULL, NULL),
(227, 121, 773, 5, 1, '2022-04-14 16:08:40', NULL, NULL),
(228, 121, 774, 5, 1, '2022-04-14 16:08:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_out`
--

CREATE TABLE `tblstock_out` (
  `stock_out_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `doc_number` varchar(50) DEFAULT NULL,
  `stock_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblstock_out`
--

INSERT INTO `tblstock_out` (`stock_out_id`, `branch_id`, `doc_number`, `stock_date`, `status`, `description`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(1, 11, 'POS2022040001', '2022-04-01 18:48:50', 1, NULL, 45, '2022-04-01 18:48:50', NULL, NULL),
(2, 11, 'POS2022040002', '2022-04-01 19:00:42', 1, NULL, 45, '2022-04-01 19:00:42', NULL, NULL),
(3, 11, 'POS2022040003', '2022-04-01 19:53:23', 1, NULL, 45, '2022-04-01 19:53:23', NULL, NULL),
(5, 11, 'POS2022040005', '2022-04-02 09:07:19', 1, NULL, 45, '2022-04-02 09:07:19', NULL, NULL),
(6, 11, 'POS2022040006', '2022-04-02 11:21:22', 1, NULL, 46, '2022-04-02 11:21:22', NULL, NULL),
(7, 11, 'POS2022040007', '2022-04-02 11:55:29', 1, NULL, 46, '2022-04-02 11:55:29', NULL, NULL),
(8, 11, 'POS2022040008', '2022-04-02 12:00:32', 1, NULL, 46, '2022-04-02 12:00:32', NULL, NULL),
(9, 11, 'POS2022040009', '2022-04-02 13:37:50', 1, NULL, 46, '2022-04-02 13:37:50', NULL, NULL),
(10, 11, 'POS2022040010', '2022-04-02 14:30:54', 1, NULL, 46, '2022-04-02 14:30:54', NULL, NULL),
(11, 11, 'POS2022040011', '2022-04-02 15:12:54', 1, NULL, 46, '2022-04-02 15:12:54', NULL, NULL),
(12, 11, 'POS2022040012', '2022-04-02 16:37:12', 1, NULL, 46, '2022-04-02 16:37:12', NULL, NULL),
(13, 11, 'POS2022040013', '2022-04-02 18:01:17', 1, NULL, 46, '2022-04-02 18:01:17', NULL, NULL),
(14, 11, 'POS2022040014', '2022-04-03 08:19:11', 1, NULL, 46, '2022-04-03 08:19:11', NULL, NULL),
(15, 11, 'POS2022040015', '2022-04-03 08:44:11', 1, NULL, 46, '2022-04-03 08:44:11', NULL, NULL),
(16, 11, 'POS2022040016', '2022-04-03 09:16:24', 1, NULL, 46, '2022-04-03 09:16:24', NULL, NULL),
(17, 11, 'POS2022040017', '2022-04-03 09:20:25', 1, NULL, 46, '2022-04-03 09:20:25', NULL, NULL),
(18, 11, 'POS2022040018', '2022-04-03 15:00:43', 1, NULL, 46, '2022-04-03 15:00:43', NULL, NULL),
(19, 11, 'POS2022040019', '2022-04-03 15:35:11', 1, NULL, 46, '2022-04-03 15:35:11', NULL, NULL),
(20, 11, 'POS2022040020', '2022-04-03 16:08:13', 1, NULL, 46, '2022-04-03 16:08:13', NULL, NULL),
(22, 11, 'POS2022040022', '2022-04-03 16:13:21', 1, NULL, 46, '2022-04-03 16:13:21', NULL, NULL),
(23, 11, 'POS2022040023', '2022-04-03 16:21:03', 1, NULL, 46, '2022-04-03 16:21:03', NULL, NULL),
(24, 11, 'POS2022040024', '2022-04-03 18:18:50', 1, NULL, 46, '2022-04-03 18:18:50', NULL, NULL),
(25, 11, 'POS2022040025', '2022-04-04 13:39:32', 1, NULL, 45, '2022-04-04 13:39:32', NULL, NULL),
(26, 11, 'POS2022040026', '2022-04-04 17:29:08', 1, NULL, 46, '2022-04-04 17:29:08', NULL, NULL),
(27, 11, 'POS2022040027', '2022-04-05 08:21:50', 1, NULL, 46, '2022-04-05 08:21:50', NULL, NULL),
(28, 11, 'POS2022040028', '2022-04-05 08:42:21', 1, NULL, 46, '2022-04-05 08:42:21', NULL, NULL),
(29, 11, 'POS2022040029', '2022-04-05 11:23:43', 1, NULL, 46, '2022-04-05 11:23:43', NULL, NULL),
(30, 11, 'POS2022040030', '2022-04-05 13:59:15', 1, NULL, 46, '2022-04-05 13:59:15', NULL, NULL),
(31, 11, 'POS2022040031', '2022-04-05 17:25:26', 1, NULL, 46, '2022-04-05 17:25:26', NULL, NULL),
(32, 11, 'POS2022040032', '2022-04-05 18:27:32', 1, NULL, 46, '2022-04-05 18:27:32', NULL, NULL),
(33, 11, 'POS2022040033', '2022-04-05 18:28:45', 1, NULL, 46, '2022-04-05 18:28:45', NULL, NULL),
(34, 11, 'POS2022040034', '2022-04-05 18:43:15', 1, NULL, 46, '2022-04-05 18:43:15', NULL, NULL),
(35, 11, 'POS2022040035', '2022-04-06 09:40:50', 1, NULL, 46, '2022-04-06 09:40:50', NULL, NULL),
(36, 11, 'POS2022040036', '2022-04-06 09:54:22', 1, NULL, 46, '2022-04-06 09:54:22', NULL, NULL),
(37, 11, 'POS2022040037', '2022-04-06 13:57:03', 1, NULL, 46, '2022-04-06 13:57:03', NULL, NULL),
(38, 11, 'POS2022040038', '2022-04-06 13:59:50', 1, NULL, 46, '2022-04-06 13:59:50', NULL, NULL),
(39, 11, 'POS2022040039', '2022-04-06 15:10:15', 1, NULL, 46, '2022-04-06 15:10:15', NULL, NULL),
(40, 11, 'POS2022040040', '2022-04-06 15:30:03', 1, NULL, 46, '2022-04-06 15:30:03', NULL, NULL),
(41, 11, 'POS2022040041', '2022-04-06 16:11:53', 1, NULL, 46, '2022-04-06 16:11:53', NULL, NULL),
(42, 11, 'POS2022040042', '2022-04-06 17:11:49', 1, NULL, 46, '2022-04-06 17:11:49', NULL, NULL),
(43, 11, 'POS2022040043', '2022-04-06 19:03:53', 1, NULL, 46, '2022-04-06 19:03:53', NULL, NULL),
(44, 11, 'POS2022040044', '2022-04-06 19:06:27', 1, NULL, 46, '2022-04-06 19:06:27', NULL, NULL),
(45, 11, 'POS2022040045', '2022-04-06 19:30:35', 1, NULL, 46, '2022-04-06 19:30:35', NULL, NULL),
(46, 11, 'POS2022040046', '2022-04-07 10:49:29', 1, NULL, 46, '2022-04-07 10:49:29', NULL, NULL),
(47, 11, 'POS2022040047', '2022-04-07 10:55:29', 1, NULL, 46, '2022-04-07 10:55:29', NULL, NULL),
(48, 11, 'POS2022040048', '2022-04-07 12:46:58', 1, NULL, 46, '2022-04-07 12:46:58', NULL, NULL),
(49, 11, 'POS2022040049', '2022-04-07 18:57:36', 1, NULL, 46, '2022-04-07 18:57:36', NULL, NULL),
(51, 11, 'POS2022040051', '2022-04-08 07:42:45', 1, NULL, 46, '2022-04-08 07:42:45', NULL, NULL),
(52, 11, 'POS2022040052', '2022-04-08 07:44:50', 1, NULL, 46, '2022-04-08 07:44:50', NULL, NULL),
(53, 11, 'POS2022040053', '2022-04-08 17:16:52', 1, NULL, 46, '2022-04-08 17:16:52', NULL, NULL),
(54, 11, 'POS2022040054', '2022-04-08 17:33:23', 1, NULL, 46, '2022-04-08 17:33:23', NULL, NULL),
(55, 11, 'POS2022040055', '2022-04-08 18:02:16', 1, NULL, 46, '2022-04-08 18:02:16', NULL, NULL),
(56, 11, 'POS2022040056', '2022-04-09 08:54:38', 1, NULL, 46, '2022-04-09 08:54:38', NULL, NULL),
(57, 11, 'POS2022040057', '2022-04-09 09:34:38', 1, NULL, 46, '2022-04-09 09:34:38', NULL, NULL),
(58, 11, 'POS2022040058', '2022-04-09 09:57:26', 1, NULL, 46, '2022-04-09 09:57:26', NULL, NULL),
(59, 11, 'POS2022040059', '2022-04-09 11:04:16', 1, NULL, 46, '2022-04-09 11:04:16', NULL, NULL),
(60, 11, 'POS2022040060', '2022-04-09 14:04:14', 1, NULL, 46, '2022-04-09 14:04:14', NULL, NULL),
(61, 11, 'POS2022040061', '2022-04-09 17:37:30', 1, NULL, 46, '2022-04-09 17:37:30', NULL, NULL),
(62, 11, 'POS2022040062', '2022-04-10 07:44:56', 1, NULL, 46, '2022-04-10 07:44:56', NULL, NULL),
(63, 11, 'POS2022040063', '2022-04-10 07:46:54', 1, NULL, 46, '2022-04-10 07:46:54', NULL, NULL),
(64, 11, 'POS2022040064', '2022-04-10 07:49:42', 1, NULL, 46, '2022-04-10 07:49:42', NULL, NULL),
(65, 11, 'POS2022040065', '2022-04-10 07:53:53', 1, NULL, 46, '2022-04-10 07:53:53', NULL, NULL),
(66, 11, 'POS2022040066', '2022-04-10 09:48:32', 1, NULL, 46, '2022-04-10 09:48:32', NULL, NULL),
(67, 11, 'POS2022040067', '2022-04-10 11:36:50', 1, NULL, 46, '2022-04-10 11:36:50', NULL, NULL),
(68, 11, 'POS2022040068', '2022-04-10 11:49:16', 1, NULL, 46, '2022-04-10 11:49:16', NULL, NULL),
(69, 11, 'POS2022040069', '2022-04-10 11:57:23', 1, NULL, 46, '2022-04-10 11:57:23', NULL, NULL),
(70, 11, 'POS2022040070', '2022-04-10 14:41:17', 1, NULL, 46, '2022-04-10 14:41:17', NULL, NULL),
(71, 11, 'POS2022040071', '2022-04-10 14:45:22', 1, NULL, 46, '2022-04-10 14:45:22', NULL, NULL),
(72, 11, 'POS2022040072', '2022-04-10 16:52:35', 1, NULL, 46, '2022-04-10 16:52:35', NULL, NULL),
(73, 11, 'POS2022040073', '2022-04-11 11:20:45', 1, NULL, 46, '2022-04-11 11:20:45', NULL, NULL),
(74, 11, 'POS2022040074', '2022-04-11 15:35:11', 1, NULL, 46, '2022-04-11 15:35:11', NULL, NULL),
(75, 11, 'POS2022040075', '2022-04-11 16:15:57', 1, NULL, 46, '2022-04-11 16:15:57', NULL, NULL),
(76, 11, 'POS2022040076', '2022-04-11 17:18:45', 1, NULL, 46, '2022-04-11 17:18:45', NULL, NULL),
(77, 11, 'POS2022040077', '2022-04-11 17:20:25', 1, NULL, 46, '2022-04-11 17:20:25', NULL, NULL),
(78, 11, 'POS2022040078', '2022-04-12 10:00:16', 1, NULL, 46, '2022-04-12 10:00:16', NULL, NULL),
(79, 11, 'POS2022040079', '2022-04-12 10:33:57', 1, NULL, 46, '2022-04-12 10:33:57', NULL, NULL),
(80, 11, 'POS2022040080', '2022-04-12 10:37:26', 1, NULL, 46, '2022-04-12 10:37:26', NULL, NULL),
(81, 11, 'POS2022040081', '2022-04-12 13:29:11', 1, NULL, 46, '2022-04-12 13:29:11', NULL, NULL),
(82, 11, 'POS2022040082', '2022-04-13 08:41:55', 1, NULL, 46, '2022-04-13 08:41:55', NULL, NULL),
(83, 11, 'POS2022040083', '2022-04-13 08:56:37', 1, NULL, 46, '2022-04-13 08:56:37', NULL, NULL),
(84, 11, 'POS2022040084', '2022-04-13 14:47:40', 1, NULL, 46, '2022-04-13 14:47:40', NULL, NULL),
(85, 11, 'POS2022040085', '2022-04-13 16:13:04', 1, NULL, 46, '2022-04-13 16:13:04', NULL, NULL),
(86, 11, 'POS2022040086', '2022-04-13 18:42:22', 1, NULL, 46, '2022-04-13 18:42:22', NULL, NULL),
(87, 11, 'POS2022040087', '2022-04-14 08:48:33', 1, NULL, 46, '2022-04-14 08:48:33', NULL, NULL),
(88, 11, 'POS2022040088', '2022-04-14 09:18:20', 1, NULL, 46, '2022-04-14 09:18:20', NULL, NULL),
(89, 11, 'POS2022040089', '2022-04-14 14:06:04', 1, NULL, 46, '2022-04-14 14:06:04', NULL, NULL),
(90, 11, 'POS2022040090', '2022-04-15 07:50:16', 1, NULL, 46, '2022-04-15 07:50:16', NULL, NULL),
(91, 11, 'POS2022040091', '2022-04-15 10:36:34', 1, NULL, 46, '2022-04-15 10:36:34', NULL, NULL),
(92, 11, 'POS2022040092', '2022-04-15 12:45:29', 1, NULL, 46, '2022-04-15 12:45:29', NULL, NULL),
(93, 11, 'POS2022040093', '2022-04-15 13:22:12', 1, NULL, 46, '2022-04-15 13:22:12', NULL, NULL),
(94, 11, 'POS2022040094', '2022-04-15 16:55:10', 1, NULL, 46, '2022-04-15 16:55:10', NULL, NULL),
(95, 11, 'POS2022040095', '2022-04-15 18:14:58', 1, NULL, 46, '2022-04-15 18:14:58', NULL, NULL),
(96, 11, 'POS2022040096', '2022-04-16 08:09:14', 1, NULL, 46, '2022-04-16 08:09:14', NULL, NULL),
(97, 11, 'POS2022040097', '2022-04-16 08:18:19', 1, NULL, 46, '2022-04-16 08:18:19', NULL, NULL),
(98, 11, 'POS2022040098', '2022-04-16 09:16:24', 1, NULL, 46, '2022-04-16 09:16:24', NULL, NULL),
(99, 11, 'POS2022040099', '2022-04-16 10:24:06', 1, NULL, 46, '2022-04-16 10:24:06', NULL, NULL),
(100, 11, 'POS2022040100', '2022-04-16 11:52:36', 1, NULL, 46, '2022-04-16 11:52:36', NULL, NULL),
(101, 11, 'POS2022040101', '2022-04-16 11:54:12', 1, NULL, 46, '2022-04-16 11:54:12', NULL, NULL),
(102, 11, 'POS2022040102', '2022-04-16 12:41:58', 1, NULL, 46, '2022-04-16 12:41:58', NULL, NULL),
(103, 11, 'POS2022040103', '2022-04-16 13:06:46', 1, NULL, 46, '2022-04-16 13:06:46', NULL, NULL),
(104, 11, 'POS2022040104', '2022-04-16 14:07:30', 1, NULL, 45, '2022-04-16 14:07:30', NULL, NULL),
(105, 11, 'POS2022040105', '2022-04-17 08:26:53', 1, NULL, 46, '2022-04-17 08:26:53', NULL, NULL),
(106, 11, 'POS2022040106', '2022-04-17 10:09:49', 1, NULL, 46, '2022-04-17 10:09:49', NULL, NULL),
(107, 11, 'POS2022040107', '2022-04-17 11:11:13', 1, NULL, 46, '2022-04-17 11:11:13', NULL, NULL),
(108, 11, 'POS2022040108', '2022-04-17 11:44:31', 1, NULL, 46, '2022-04-17 11:44:31', NULL, NULL),
(109, 11, 'POS2022040109', '2022-04-17 11:58:33', 1, NULL, 46, '2022-04-17 11:58:33', NULL, NULL),
(110, 11, 'POS2022040110', '2022-04-17 16:14:28', 1, NULL, 46, '2022-04-17 16:14:28', NULL, NULL),
(111, 11, 'POS2022040111', '2022-04-18 08:07:04', 1, NULL, 46, '2022-04-18 08:07:04', NULL, NULL),
(112, 11, 'POS2022040112', '2022-04-18 09:31:04', 1, NULL, 45, '2022-04-18 09:31:04', NULL, NULL),
(113, 11, 'POS2022040113', '2022-04-18 09:50:33', 1, NULL, 45, '2022-04-18 09:50:33', NULL, NULL),
(114, 11, 'POS2022040114', '2022-04-18 16:09:52', 1, NULL, 45, '2022-04-18 16:09:52', NULL, NULL),
(115, 11, 'POS2022040115', '2022-04-19 07:42:40', 1, NULL, 45, '2022-04-19 07:42:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_out_det`
--

CREATE TABLE `tblstock_out_det` (
  `stock_out_det_id` int(11) NOT NULL,
  `stock_out_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `information` varchar(2000) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblstock_out_det`
--

INSERT INTO `tblstock_out_det` (`stock_out_det_id`, `stock_out_id`, `item_id`, `qty`, `information`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(1, 1, 252, 2, NULL, 45, '2022-04-01 18:48:50', NULL, NULL),
(2, 1, 130, 1, NULL, 45, '2022-04-01 18:48:50', NULL, NULL),
(3, 2, 99, 1, NULL, 45, '2022-04-01 19:00:42', NULL, NULL),
(4, 3, 292, 1, NULL, 45, '2022-04-01 19:53:23', NULL, NULL),
(5, 4, 364, 2, NULL, 45, '2022-04-02 08:21:11', NULL, NULL),
(6, 4, 123, 1, NULL, 45, '2022-04-02 08:21:11', NULL, NULL),
(7, 4, 315, 1, NULL, 45, '2022-04-02 08:21:11', NULL, NULL),
(8, 4, 77, 1, NULL, 45, '2022-04-02 08:21:11', NULL, NULL),
(9, 4, 125, 1, NULL, 45, '2022-04-02 08:21:11', NULL, NULL),
(10, 5, 415, 1, NULL, 45, '2022-04-02 09:07:19', NULL, NULL),
(11, 6, 255, 1, NULL, 46, '2022-04-02 11:21:22', NULL, NULL),
(12, 6, 702, 1, NULL, 46, '2022-04-02 11:21:22', NULL, NULL),
(13, 6, 597, 1, NULL, 46, '2022-04-02 11:21:22', NULL, NULL),
(14, 6, 396, 1, NULL, 46, '2022-04-02 11:21:22', NULL, NULL),
(15, 6, 650, 1, NULL, 46, '2022-04-02 11:21:22', NULL, NULL),
(16, 7, 364, 1, NULL, 46, '2022-04-02 11:55:29', NULL, NULL),
(17, 7, 366, 1, NULL, 46, '2022-04-02 11:55:29', NULL, NULL),
(18, 7, 123, 1, NULL, 46, '2022-04-02 11:55:29', NULL, NULL),
(19, 7, 77, 1, NULL, 46, '2022-04-02 11:55:29', NULL, NULL),
(20, 7, 125, 1, NULL, 46, '2022-04-02 11:55:29', NULL, NULL),
(21, 8, 683, 2, NULL, 46, '2022-04-02 12:00:32', NULL, NULL),
(22, 8, 534, 1, NULL, 46, '2022-04-02 12:00:32', NULL, NULL),
(23, 9, 691, 1, NULL, 46, '2022-04-02 13:37:50', NULL, NULL),
(24, 10, 692, 1, NULL, 46, '2022-04-02 14:30:54', NULL, NULL),
(25, 11, 688, 1, NULL, 46, '2022-04-02 15:12:54', NULL, NULL),
(26, 12, 597, 1, NULL, 46, '2022-04-02 16:37:12', NULL, NULL),
(27, 13, 252, 2, NULL, 46, '2022-04-02 18:01:17', NULL, NULL),
(28, 13, 608, 1, NULL, 46, '2022-04-02 18:01:17', NULL, NULL),
(29, 14, 163, 1, NULL, 46, '2022-04-03 08:19:11', NULL, NULL),
(30, 14, 320, 1, NULL, 46, '2022-04-03 08:19:11', NULL, NULL),
(31, 14, 683, 1, NULL, 46, '2022-04-03 08:19:11', NULL, NULL),
(32, 15, 537, 6, NULL, 46, '2022-04-03 08:44:11', NULL, NULL),
(33, 15, 596, 4, NULL, 46, '2022-04-03 08:44:11', NULL, NULL),
(34, 16, 691, 1, NULL, 46, '2022-04-03 09:16:24', NULL, NULL),
(35, 16, 596, 1, NULL, 46, '2022-04-03 09:16:24', NULL, NULL),
(36, 17, 554, 1, NULL, 46, '2022-04-03 09:20:25', NULL, NULL),
(37, 17, 697, 1, NULL, 46, '2022-04-03 09:20:25', NULL, NULL),
(38, 18, 701, 1, NULL, 46, '2022-04-03 15:00:43', NULL, NULL),
(39, 18, 450, 1, NULL, 46, '2022-04-03 15:00:43', NULL, NULL),
(40, 19, 699, 1, NULL, 46, '2022-04-03 15:35:11', NULL, NULL),
(41, 20, 606, 1, NULL, 46, '2022-04-03 16:08:13', NULL, NULL),
(42, 21, 125, 1, NULL, 46, '2022-04-03 16:10:51', NULL, NULL),
(43, 21, 220, 1, NULL, 46, '2022-04-03 16:10:51', NULL, NULL),
(44, 22, 125, 1, NULL, 46, '2022-04-03 16:13:21', NULL, NULL),
(45, 22, 220, 1, NULL, 46, '2022-04-03 16:13:21', NULL, NULL),
(46, 23, 135, 1, NULL, 46, '2022-04-03 16:21:03', NULL, NULL),
(47, 24, 450, 1, NULL, 46, '2022-04-03 18:18:50', NULL, NULL),
(48, 25, 701, 1, NULL, 45, '2022-04-04 13:39:32', NULL, NULL),
(49, 25, 263, 1, NULL, 45, '2022-04-04 13:39:32', NULL, NULL),
(50, 25, 160, 1, NULL, 45, '2022-04-04 13:39:32', NULL, NULL),
(51, 25, 614, 1, NULL, 45, '2022-04-04 13:39:32', NULL, NULL),
(52, 26, 697, 2, NULL, 46, '2022-04-04 17:29:08', NULL, NULL),
(53, 27, 688, 1, NULL, 46, '2022-04-05 08:21:50', NULL, NULL),
(54, 28, 177, 1, NULL, 46, '2022-04-05 08:42:21', NULL, NULL),
(55, 28, 699, 1, NULL, 46, '2022-04-05 08:42:21', NULL, NULL),
(56, 28, 368, 1, NULL, 46, '2022-04-05 08:42:21', NULL, NULL),
(57, 29, 295, 2, NULL, 46, '2022-04-05 11:23:43', NULL, NULL),
(58, 29, 416, 1, NULL, 46, '2022-04-05 11:23:43', NULL, NULL),
(59, 29, 135, 1, NULL, 46, '2022-04-05 11:23:43', NULL, NULL),
(60, 30, 328, 1, NULL, 46, '2022-04-05 13:59:15', NULL, NULL),
(61, 31, 687, 1, NULL, 46, '2022-04-05 17:25:26', NULL, NULL),
(62, 31, 295, 1, NULL, 46, '2022-04-05 17:25:26', NULL, NULL),
(63, 32, 683, 2, NULL, 46, '2022-04-05 18:27:32', NULL, NULL),
(64, 33, 683, 1, NULL, 46, '2022-04-05 18:28:45', NULL, NULL),
(65, 34, 135, 1, NULL, 46, '2022-04-05 18:43:15', NULL, NULL),
(66, 35, 584, 1, NULL, 46, '2022-04-06 09:40:50', NULL, NULL),
(67, 36, 701, 1, NULL, 46, '2022-04-06 09:54:22', NULL, NULL),
(68, 37, 177, 1, NULL, 46, '2022-04-06 13:57:03', NULL, NULL),
(69, 37, 320, 1, NULL, 46, '2022-04-06 13:57:03', NULL, NULL),
(70, 38, 599, 1, NULL, 46, '2022-04-06 13:59:50', NULL, NULL),
(71, 39, 534, 1, NULL, 46, '2022-04-06 15:10:15', NULL, NULL),
(72, 39, 380, 1, NULL, 46, '2022-04-06 15:10:15', NULL, NULL),
(73, 39, 366, 1, NULL, 46, '2022-04-06 15:10:15', NULL, NULL),
(74, 40, 192, 1, NULL, 46, '2022-04-06 15:30:03', NULL, NULL),
(75, 40, 416, 1, NULL, 46, '2022-04-06 15:30:03', NULL, NULL),
(76, 40, 683, 1, NULL, 46, '2022-04-06 15:30:03', NULL, NULL),
(77, 40, 581, 1, NULL, 46, '2022-04-06 15:30:03', NULL, NULL),
(78, 40, 109, 1, NULL, 46, '2022-04-06 15:30:03', NULL, NULL),
(79, 40, 652, 1, NULL, 46, '2022-04-06 15:30:03', NULL, NULL),
(80, 41, 124, 1, NULL, 46, '2022-04-06 16:11:53', NULL, NULL),
(81, 42, 227, 1, NULL, 46, '2022-04-06 17:11:49', NULL, NULL),
(82, 42, 606, 1, NULL, 46, '2022-04-06 17:11:49', NULL, NULL),
(83, 42, 252, 1, NULL, 46, '2022-04-06 17:11:49', NULL, NULL),
(84, 43, 575, 1, NULL, 46, '2022-04-06 19:03:53', NULL, NULL),
(85, 43, 258, 1, NULL, 46, '2022-04-06 19:03:53', NULL, NULL),
(86, 44, 465, 1, NULL, 46, '2022-04-06 19:06:27', NULL, NULL),
(87, 45, 698, 1, NULL, 46, '2022-04-06 19:30:35', NULL, NULL),
(88, 45, 702, 1, NULL, 46, '2022-04-06 19:30:35', NULL, NULL),
(89, 45, 614, 1, NULL, 46, '2022-04-06 19:30:35', NULL, NULL),
(90, 46, 681, 1, NULL, 46, '2022-04-07 10:49:29', NULL, NULL),
(91, 46, 575, 1, NULL, 46, '2022-04-07 10:49:29', NULL, NULL),
(92, 46, 582, 1, NULL, 46, '2022-04-07 10:49:29', NULL, NULL),
(93, 47, 688, 1, NULL, 46, '2022-04-07 10:55:29', NULL, NULL),
(94, 48, 702, 1, NULL, 46, '2022-04-07 12:46:58', NULL, NULL),
(95, 49, 77, 1, NULL, 46, '2022-04-07 18:57:36', NULL, NULL),
(96, 49, 720, 1, NULL, 46, '2022-04-07 18:57:36', NULL, NULL),
(97, 50, 76, 1, NULL, 46, '2022-04-08 07:41:27', NULL, NULL),
(98, 50, 605, 1, NULL, 46, '2022-04-08 07:41:27', NULL, NULL),
(99, 51, 614, 1, NULL, 46, '2022-04-08 07:42:45', NULL, NULL),
(100, 51, 76, 1, NULL, 46, '2022-04-08 07:42:45', NULL, NULL),
(101, 51, 605, 1, NULL, 46, '2022-04-08 07:42:45', NULL, NULL),
(102, 52, 575, 1, NULL, 46, '2022-04-08 07:44:50', NULL, NULL),
(103, 53, 123, 1, NULL, 46, '2022-04-08 17:16:52', NULL, NULL),
(104, 54, 732, 1, NULL, 46, '2022-04-08 17:33:23', NULL, NULL),
(105, 54, 725, 1, NULL, 46, '2022-04-08 17:33:23', NULL, NULL),
(106, 55, 739, 1, NULL, 46, '2022-04-08 18:02:16', NULL, NULL),
(107, 56, 716, 1, NULL, 46, '2022-04-09 08:54:38', NULL, NULL),
(108, 56, 729, 1, NULL, 46, '2022-04-09 08:54:38', NULL, NULL),
(109, 57, 716, 1, NULL, 46, '2022-04-09 09:34:38', NULL, NULL),
(110, 58, 295, 1, NULL, 46, '2022-04-09 09:57:26', NULL, NULL),
(111, 58, 582, 1, NULL, 46, '2022-04-09 09:57:26', NULL, NULL),
(112, 58, 574, 1, NULL, 46, '2022-04-09 09:57:26', NULL, NULL),
(113, 59, 688, 1, NULL, 46, '2022-04-09 11:04:16', NULL, NULL),
(114, 60, 686, 1, NULL, 46, '2022-04-09 14:04:14', NULL, NULL),
(115, 61, 295, 2, NULL, 46, '2022-04-09 17:37:31', NULL, NULL),
(116, 61, 698, 1, NULL, 46, '2022-04-09 17:37:31', NULL, NULL),
(117, 62, 691, 1, NULL, 46, '2022-04-10 07:44:56', NULL, NULL),
(118, 62, 450, 1, NULL, 46, '2022-04-10 07:44:56', NULL, NULL),
(119, 62, 688, 1, NULL, 46, '2022-04-10 07:44:56', NULL, NULL),
(120, 63, 697, 1, NULL, 46, '2022-04-10 07:46:54', NULL, NULL),
(121, 64, 697, 1, NULL, 46, '2022-04-10 07:49:42', NULL, NULL),
(122, 64, 450, 2, NULL, 46, '2022-04-10 07:49:42', NULL, NULL),
(123, 65, 688, 1, NULL, 46, '2022-04-10 07:53:53', NULL, NULL),
(124, 65, 691, 1, NULL, 46, '2022-04-10 07:53:53', NULL, NULL),
(125, 66, 598, 1, NULL, 46, '2022-04-10 09:48:32', NULL, NULL),
(126, 66, 683, 1, NULL, 46, '2022-04-10 09:48:32', NULL, NULL),
(127, 67, 711, 1, NULL, 46, '2022-04-10 11:36:50', NULL, NULL),
(128, 67, 328, 1, NULL, 46, '2022-04-10 11:36:50', NULL, NULL),
(129, 68, 720, 2, NULL, 46, '2022-04-10 11:49:16', NULL, NULL),
(130, 69, 315, 1, NULL, 46, '2022-04-10 11:57:23', NULL, NULL),
(131, 69, 229, 1, NULL, 46, '2022-04-10 11:57:23', NULL, NULL),
(132, 69, 228, 1, NULL, 46, '2022-04-10 11:57:23', NULL, NULL),
(133, 70, 690, 1, NULL, 46, '2022-04-10 14:41:17', NULL, NULL),
(134, 70, 596, 1, NULL, 46, '2022-04-10 14:41:17', NULL, NULL),
(135, 71, 690, 1, NULL, 46, '2022-04-10 14:45:22', NULL, NULL),
(136, 71, 595, 1, NULL, 46, '2022-04-10 14:45:22', NULL, NULL),
(137, 71, 390, 1, NULL, 46, '2022-04-10 14:45:22', NULL, NULL),
(138, 72, 691, 1, NULL, 46, '2022-04-10 16:52:35', NULL, NULL),
(139, 73, 124, 1, NULL, 46, '2022-04-11 11:20:45', NULL, NULL),
(140, 74, 731, 1, NULL, 46, '2022-04-11 15:35:11', NULL, NULL),
(141, 74, 708, 1, NULL, 46, '2022-04-11 15:35:11', NULL, NULL),
(142, 75, 727, 1, NULL, 46, '2022-04-11 16:15:57', NULL, NULL),
(143, 75, 735, 1, NULL, 46, '2022-04-11 16:15:57', NULL, NULL),
(144, 75, 368, 1, NULL, 46, '2022-04-11 16:15:57', NULL, NULL),
(145, 76, 720, 1, NULL, 46, '2022-04-11 17:18:45', NULL, NULL),
(146, 76, 693, 1, NULL, 46, '2022-04-11 17:18:45', NULL, NULL),
(147, 76, 687, 1, NULL, 46, '2022-04-11 17:18:45', NULL, NULL),
(148, 77, 720, 1, NULL, 46, '2022-04-11 17:20:25', NULL, NULL),
(149, 77, 687, 1, NULL, 46, '2022-04-11 17:20:25', NULL, NULL),
(150, 77, 693, 1, NULL, 46, '2022-04-11 17:20:25', NULL, NULL),
(151, 78, 390, 1, NULL, 46, '2022-04-12 10:00:16', NULL, NULL),
(152, 79, 729, 1, NULL, 46, '2022-04-12 10:33:57', NULL, NULL),
(153, 80, 716, 1, NULL, 46, '2022-04-12 10:37:26', NULL, NULL),
(154, 80, 729, 1, NULL, 46, '2022-04-12 10:37:26', NULL, NULL),
(155, 81, 698, 1, NULL, 46, '2022-04-12 13:29:11', NULL, NULL),
(156, 82, 450, 1, NULL, 46, '2022-04-13 08:41:55', NULL, NULL),
(157, 82, 717, 1, NULL, 46, '2022-04-13 08:41:55', NULL, NULL),
(158, 83, 715, 1, NULL, 46, '2022-04-13 08:56:37', NULL, NULL),
(159, 83, 747, 1, NULL, 46, '2022-04-13 08:56:37', NULL, NULL),
(160, 83, 315, 1, NULL, 46, '2022-04-13 08:56:37', NULL, NULL),
(161, 83, 606, 1, NULL, 46, '2022-04-13 08:56:37', NULL, NULL),
(162, 83, 175, 1, NULL, 46, '2022-04-13 08:56:37', NULL, NULL),
(163, 84, 593, 1, NULL, 46, '2022-04-13 14:47:40', NULL, NULL),
(164, 84, 192, 1, NULL, 46, '2022-04-13 14:47:40', NULL, NULL),
(165, 84, 691, 1, NULL, 46, '2022-04-13 14:47:40', NULL, NULL),
(166, 84, 232, 1, NULL, 46, '2022-04-13 14:47:40', NULL, NULL),
(167, 84, 320, 1, NULL, 46, '2022-04-13 14:47:40', NULL, NULL),
(168, 84, 197, 1, NULL, 46, '2022-04-13 14:47:40', NULL, NULL),
(169, 85, 718, 1, NULL, 46, '2022-04-13 16:13:04', NULL, NULL),
(170, 85, 697, 1, NULL, 46, '2022-04-13 16:13:04', NULL, NULL),
(171, 86, 263, 1, NULL, 46, '2022-04-13 18:42:22', NULL, NULL),
(172, 87, 697, 1, NULL, 46, '2022-04-14 08:48:33', NULL, NULL),
(173, 87, 688, 1, NULL, 46, '2022-04-14 08:48:33', NULL, NULL),
(174, 88, 691, 1, NULL, 46, '2022-04-14 09:18:20', NULL, NULL),
(175, 89, 197, 1, NULL, 46, '2022-04-14 14:06:04', NULL, NULL),
(176, 89, 320, 1, NULL, 46, '2022-04-14 14:06:04', NULL, NULL),
(177, 90, 211, 1, NULL, 46, '2022-04-15 07:50:16', NULL, NULL),
(178, 90, 712, 1, NULL, 46, '2022-04-15 07:50:16', NULL, NULL),
(179, 91, 752, 1, NULL, 46, '2022-04-15 10:36:34', NULL, NULL),
(180, 92, 720, 1, NULL, 46, '2022-04-15 12:45:29', NULL, NULL),
(181, 92, 605, 1, NULL, 46, '2022-04-15 12:45:29', NULL, NULL),
(182, 92, 740, 1, NULL, 46, '2022-04-15 12:45:29', NULL, NULL),
(183, 92, 735, 1, NULL, 46, '2022-04-15 12:45:29', NULL, NULL),
(184, 93, 597, 1, NULL, 46, '2022-04-15 13:22:12', NULL, NULL),
(185, 93, 321, 1, NULL, 46, '2022-04-15 13:22:12', NULL, NULL),
(186, 93, 366, 1, NULL, 46, '2022-04-15 13:22:12', NULL, NULL),
(187, 93, 756, 1, NULL, 46, '2022-04-15 13:22:12', NULL, NULL),
(188, 94, 721, 2, NULL, 46, '2022-04-15 16:55:10', NULL, NULL),
(189, 94, 722, 1, NULL, 46, '2022-04-15 16:55:10', NULL, NULL),
(190, 95, 755, 1, NULL, 46, '2022-04-15 18:14:58', NULL, NULL),
(191, 96, 582, 1, NULL, 46, '2022-04-16 08:09:14', NULL, NULL),
(192, 97, 740, 1, NULL, 46, '2022-04-16 08:18:19', NULL, NULL),
(193, 97, 725, 1, NULL, 46, '2022-04-16 08:18:19', NULL, NULL),
(194, 97, 368, 1, NULL, 46, '2022-04-16 08:18:19', NULL, NULL),
(195, 97, 321, 1, NULL, 46, '2022-04-16 08:18:19', NULL, NULL),
(196, 97, 697, 1, NULL, 46, '2022-04-16 08:18:19', NULL, NULL),
(197, 98, 691, 1, NULL, 46, '2022-04-16 09:16:25', NULL, NULL),
(198, 99, 328, 1, NULL, 46, '2022-04-16 10:24:06', NULL, NULL),
(199, 100, 716, 1, NULL, 46, '2022-04-16 11:52:36', NULL, NULL),
(200, 101, 225, 1, NULL, 46, '2022-04-16 11:54:12', NULL, NULL),
(201, 101, 752, 1, NULL, 46, '2022-04-16 11:54:12', NULL, NULL),
(202, 101, 563, 1, NULL, 46, '2022-04-16 11:54:12', NULL, NULL),
(203, 101, 537, 1, NULL, 46, '2022-04-16 11:54:12', NULL, NULL),
(204, 102, 770, 2, NULL, 46, '2022-04-16 12:41:58', NULL, NULL),
(205, 103, 688, 1, NULL, 46, '2022-04-16 13:06:46', NULL, NULL),
(206, 104, 718, 1, NULL, 45, '2022-04-16 14:07:30', NULL, NULL),
(207, 105, 698, 1, NULL, 46, '2022-04-17 08:26:53', NULL, NULL),
(208, 105, 683, 1, NULL, 46, '2022-04-17 08:26:53', NULL, NULL),
(209, 105, 399, 1, NULL, 46, '2022-04-17 08:26:53', NULL, NULL),
(210, 106, 593, 1, NULL, 46, '2022-04-17 10:09:49', NULL, NULL),
(211, 107, 244, 1, NULL, 46, '2022-04-17 11:11:13', NULL, NULL),
(212, 108, 719, 1, NULL, 46, '2022-04-17 11:44:31', NULL, NULL),
(213, 108, 554, 1, NULL, 46, '2022-04-17 11:44:31', NULL, NULL),
(214, 109, 712, 1, NULL, 46, '2022-04-17 11:58:33', NULL, NULL),
(215, 109, 697, 1, NULL, 46, '2022-04-17 11:58:33', NULL, NULL),
(216, 110, 295, 1, NULL, 46, '2022-04-17 16:14:28', NULL, NULL),
(217, 111, 744, 1, NULL, 46, '2022-04-18 08:07:04', NULL, NULL),
(218, 112, 697, 1, NULL, 45, '2022-04-18 09:31:04', NULL, NULL),
(219, 113, 736, 1, NULL, 45, '2022-04-18 09:50:33', NULL, NULL),
(220, 114, 744, 1, NULL, 45, '2022-04-18 16:09:52', NULL, NULL),
(221, 114, 650, 1, NULL, 45, '2022-04-18 16:09:52', NULL, NULL),
(222, 114, 763, 1, NULL, 45, '2022-04-18 16:09:52', NULL, NULL),
(223, 115, 746, 1, NULL, 45, '2022-04-19 07:42:40', NULL, NULL),
(224, 115, 681, 1, NULL, 45, '2022-04-19 07:42:40', NULL, NULL),
(225, 115, 581, 1, NULL, 45, '2022-04-19 07:42:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_switch`
--

CREATE TABLE `tblstock_switch` (
  `stock_switch_id` int(11) NOT NULL,
  `branch_origin` int(11) NOT NULL,
  `branch_destination` int(11) NOT NULL,
  `switch_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_switch_det`
--

CREATE TABLE `tblstock_switch_det` (
  `stock_switch_det_id` int(11) NOT NULL,
  `stock_switch_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty_available` int(11) NOT NULL,
  `qty_switch` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplier`
--

CREATE TABLE `tblsupplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_code` varchar(20) DEFAULT NULL,
  `supplier_name` varchar(500) DEFAULT NULL,
  `contact_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `handphone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblsupplier`
--

INSERT INTO `tblsupplier` (`supplier_id`, `supplier_code`, `supplier_name`, `contact_name`, `phone`, `handphone`, `email`, `city`, `address`, `description`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(1, 'SP2022030001', 'PT. CENTRAL FROZEN INDOSEMESTA', 'UJANG INDRA', '085772319906', '085788254731', 'frozen_home@yahoo.com', 'Tangerang Selatan', '                          Jl. Pamulng Permai No. 4, Pamulang Barat, Kec. Pamulang, Kota Tangerang Selatan, Banten 15417', '                            ', 1, '2022-03-31 17:29:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblunit`
--

CREATE TABLE `tblunit` (
  `unit_id` int(11) NOT NULL,
  `unit_code` varchar(10) DEFAULT NULL,
  `unit_name` varchar(50) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblunit`
--

INSERT INTO `tblunit` (`unit_id`, `unit_code`, `unit_name`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(1, 'SU22020001', 'pcs', 1, '0000-00-00 00:00:00', 2020, NULL),
(2, 'SU22020002', 'box', 1, '0000-00-00 00:00:00', 2020, NULL),
(3, 'SU22030003', 'PACK', 1, '2022-03-08 09:14:53', NULL, NULL),
(4, 'SU22030004', 'btl', 1, '2022-03-08 15:37:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `login_code` varchar(50) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`user_id`, `user_group_id`, `branch_id`, `fullname`, `phone`, `email`, `address`, `username`, `password`, `login_code`, `status`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(1, 1, 11, 'Windy', '081510810631', 'swr.frozenfood@gmail.com', '                                                                                                                                                                                                                                ', 'admin', 'admin', '12345', 1, NULL, NULL, 1, '2022-03-28 22:33:57'),
(44, 9, 11, 'OPPIE', '08151623409', 'swr.frozenfood@gmail.com', '', 'supervisor', 'supervisor', '12345', 1, 1, '2020-05-15 23:09:39', 1, '2022-03-28 22:31:37'),
(45, 10, 11, 'Lia ', '085774793541', 'swr.frozenfood@gmail.com', '                                                                          \r\n                                                                                                   ', 'kasir1', 'kasir1', '12345', 1, 1, '2020-05-15 23:24:28', 1, '2022-03-28 22:27:37'),
(46, 10, 11, 'Eko', '08158091112', 'swr.frozenfood@gmail.com', '                                ', 'kasir2', 'kasir2', '', 1, 1, '2020-05-20 14:30:13', 1, '2022-03-28 22:34:10'),
(47, 10, 11, 'kasir3', '', '', '                                ', 'kasir3', 'kasir3', '', 1, 1, '2022-03-29 17:33:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_access`
--

CREATE TABLE `tbluser_access` (
  `user_access_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `is_access` tinyint(4) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbluser_access`
--

INSERT INTO `tbluser_access` (`user_access_id`, `user_group_id`, `menu_id`, `is_access`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(1, 1, 1, 1, 1, '2019-09-11 23:57:42', 1, '2019-10-07 09:41:35'),
(2, 1, 2, 1, 1, '2019-09-11 23:57:42', 1, '2019-10-07 09:41:35'),
(3, 1, 3, 1, 1, '2019-09-11 23:57:42', 1, '2019-10-07 09:41:35'),
(4, 1, 4, 1, 1, '2019-09-11 23:57:42', 1, '2019-10-07 09:41:35'),
(5, 1, 5, 1, 1, '2019-09-11 23:57:42', 1, '2019-10-07 09:41:35'),
(6, 1, 6, 0, 1, '2019-09-11 23:57:42', 1, '2019-10-07 09:41:35'),
(7, 1, 7, 1, 1, '2019-09-11 23:57:42', 1, '2019-10-07 09:41:35'),
(8, 1, 8, 1, 1, '2019-09-11 23:57:42', 1, '2019-10-07 09:41:35'),
(9, 1, 9, 1, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(10, 1, 10, 1, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(11, 1, 11, 1, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(12, 1, 12, 1, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(13, 1, 13, 1, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(14, 1, 14, 1, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(15, 1, 15, 1, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(16, 1, 16, 1, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(17, 1, 17, 0, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(18, 1, 18, 1, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(19, 1, 19, 0, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(20, 1, 20, 0, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(21, 1, 21, 1, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(22, 1, 22, 1, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(23, 1, 23, 1, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(24, 1, 24, 1, 1, '2019-09-11 23:57:43', 1, '2019-10-07 09:41:35'),
(97, 9, 1, 0, 1, '2019-09-17 01:09:30', 1, '2019-10-17 13:32:08'),
(98, 9, 2, 0, 1, '2019-09-17 01:09:30', 1, '2019-10-17 13:32:08'),
(99, 9, 3, 0, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(100, 9, 4, 0, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(101, 9, 5, 0, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(102, 9, 6, 0, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(103, 9, 7, 0, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(104, 9, 8, 0, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(105, 9, 9, 0, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(106, 9, 10, 0, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(107, 9, 11, 0, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(108, 9, 12, 0, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(109, 9, 13, 1, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(110, 9, 14, 1, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(111, 9, 15, 1, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(112, 9, 16, 1, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(113, 9, 17, 0, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(114, 9, 18, 1, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(115, 9, 19, 0, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(116, 9, 20, 0, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(117, 9, 21, 1, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(118, 9, 22, 1, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(119, 9, 23, 1, 1, '2019-09-17 01:09:31', 1, '2019-10-17 13:32:08'),
(120, 9, 24, 1, 1, '2019-09-17 01:09:32', 1, '2019-10-17 13:32:08'),
(121, 10, 1, 0, 1, '2019-09-17 01:10:32', 1, '2019-10-07 10:03:51'),
(122, 10, 2, 0, 1, '2019-09-17 01:10:32', 1, '2019-10-07 10:03:51'),
(123, 10, 3, 0, 1, '2019-09-17 01:10:32', 1, '2019-10-07 10:03:51'),
(124, 10, 4, 0, 1, '2019-09-17 01:10:32', 1, '2019-10-07 10:03:51'),
(125, 10, 5, 0, 1, '2019-09-17 01:10:32', 1, '2019-10-07 10:03:51'),
(126, 10, 6, 0, 1, '2019-09-17 01:10:32', 1, '2019-10-07 10:03:51'),
(127, 10, 7, 0, 1, '2019-09-17 01:10:32', 1, '2019-10-07 10:03:51'),
(128, 10, 8, 0, 1, '2019-09-17 01:10:32', 1, '2019-10-07 10:03:51'),
(129, 10, 9, 0, 1, '2019-09-17 01:10:32', 1, '2019-10-07 10:03:51'),
(130, 10, 10, 0, 1, '2019-09-17 01:10:32', 1, '2019-10-07 10:03:51'),
(131, 10, 11, 0, 1, '2019-09-17 01:10:32', 1, '2019-10-07 10:03:51'),
(132, 10, 12, 0, 1, '2019-09-17 01:10:33', 1, '2019-10-07 10:03:51'),
(133, 10, 13, 0, 1, '2019-09-17 01:10:33', 1, '2019-10-07 10:03:51'),
(134, 10, 14, 0, 1, '2019-09-17 01:10:33', 1, '2019-10-07 10:03:51'),
(135, 10, 15, 0, 1, '2019-09-17 01:10:33', 1, '2019-10-07 10:03:51'),
(136, 10, 16, 0, 1, '2019-09-17 01:10:33', 1, '2019-10-07 10:03:51'),
(137, 10, 17, 1, 1, '2019-09-17 01:10:33', 1, '2019-10-07 10:03:51'),
(138, 10, 18, 0, 1, '2019-09-17 01:10:33', 1, '2019-10-07 10:03:51'),
(139, 10, 19, 0, 1, '2019-09-17 01:10:33', 1, '2019-10-07 10:03:51'),
(140, 10, 20, 1, 1, '2019-09-17 01:10:33', 1, '2019-10-07 10:03:51'),
(141, 10, 21, 0, 1, '2019-09-17 01:10:33', 1, '2019-10-07 10:03:51'),
(142, 10, 22, 0, 1, '2019-09-17 01:10:33', 1, '2019-10-07 10:03:51'),
(143, 10, 23, 0, 1, '2019-09-17 01:10:33', 1, '2019-10-07 10:03:51'),
(144, 10, 24, 0, 1, '2019-09-17 01:10:33', 1, '2019-10-07 10:03:51'),
(145, 9, 25, 1, 1, '2019-09-17 10:37:11', 1, '2019-10-17 13:32:08'),
(146, 10, 25, 0, 1, '2019-09-17 10:37:25', 1, '2019-10-07 10:03:51'),
(147, 1, 25, 1, 1, '2019-09-17 11:09:46', 1, '2019-10-07 09:41:35'),
(148, 1, 26, 0, 1, '2019-09-19 22:55:10', 1, '2019-10-07 09:41:35'),
(149, 9, 26, 0, 1, '2019-09-19 22:55:23', 1, '2019-10-17 13:32:08'),
(150, 10, 26, 0, 1, '2019-09-19 22:55:33', 1, '2019-10-07 10:03:51'),
(151, 1, 27, 1, 1, '2019-09-23 16:46:31', 1, '2019-10-07 09:41:35'),
(152, 9, 27, 1, 1, '2019-09-23 16:46:31', 1, '2019-10-17 13:32:08'),
(153, 10, 27, 0, 1, '2019-09-23 16:46:31', 1, '2019-10-07 10:03:51'),
(154, 1, 28, 1, 1, '2019-09-29 00:51:58', 1, '2019-10-07 09:41:35'),
(155, 9, 28, 1, 1, '2019-09-29 00:51:58', 1, '2019-10-17 13:32:08'),
(156, 10, 28, 0, 1, '2019-09-29 00:51:58', 1, '2019-10-07 10:03:51'),
(157, 1, 29, 1, 1, '2019-10-07 09:38:46', 1, '2019-10-07 09:41:35'),
(158, 9, 29, 1, 1, '2019-10-07 09:38:46', 1, '2019-10-17 13:32:08'),
(159, 10, 29, 0, 1, '2019-10-07 09:38:46', 1, '2019-10-07 10:03:51'),
(189, 1, 30, 1, 1, '2022-02-28 16:46:26', 1, '2022-02-28 16:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_group`
--

CREATE TABLE `tbluser_group` (
  `user_group_id` int(11) NOT NULL,
  `user_group_code` varchar(10) DEFAULT NULL,
  `user_group_name` varchar(100) DEFAULT NULL,
  `is_cashier` int(11) NOT NULL,
  `user_group_status` int(11) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modificator_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbluser_group`
--

INSERT INTO `tbluser_group` (`user_group_id`, `user_group_code`, `user_group_name`, `is_cashier`, `user_group_status`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(1, 'UG19090001', 'Administrator', 0, 1, NULL, NULL, 1, '2019-09-29 15:40:09'),
(9, 'UG19090002', 'Supervisor Toko', 0, 1, 1, '2019-09-17 01:09:30', NULL, NULL),
(10, 'UG19090003', 'Kasir', 1, 1, 1, '2019-09-17 01:10:32', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbank`
--
ALTER TABLE `tblbank`
  ADD PRIMARY KEY (`bank_id`) USING BTREE;

--
-- Indexes for table `tblbranch`
--
ALTER TABLE `tblbranch`
  ADD PRIMARY KEY (`branch_id`) USING BTREE;

--
-- Indexes for table `tblitem`
--
ALTER TABLE `tblitem`
  ADD PRIMARY KEY (`item_id`) USING BTREE,
  ADD UNIQUE KEY `item_code` (`item_code`) USING BTREE,
  ADD UNIQUE KEY `barcode` (`barcode`) USING BTREE;

--
-- Indexes for table `tblitem_bundling`
--
ALTER TABLE `tblitem_bundling`
  ADD PRIMARY KEY (`item_bundling_id`) USING BTREE;

--
-- Indexes for table `tblitem_bundling_prize`
--
ALTER TABLE `tblitem_bundling_prize`
  ADD PRIMARY KEY (`item_bundling_prize_id`) USING BTREE;

--
-- Indexes for table `tblitem_bundling_promo`
--
ALTER TABLE `tblitem_bundling_promo`
  ADD PRIMARY KEY (`item_bundling_promo_id`) USING BTREE;

--
-- Indexes for table `tblitem_price`
--
ALTER TABLE `tblitem_price`
  ADD PRIMARY KEY (`item_price_id`) USING BTREE;

--
-- Indexes for table `tblitem_promo`
--
ALTER TABLE `tblitem_promo`
  ADD PRIMARY KEY (`item_promo_id`) USING BTREE;

--
-- Indexes for table `tblitem_stock`
--
ALTER TABLE `tblitem_stock`
  ADD PRIMARY KEY (`item_stock_id`) USING BTREE;

--
-- Indexes for table `tblmember`
--
ALTER TABLE `tblmember`
  ADD PRIMARY KEY (`member_id`) USING BTREE;

--
-- Indexes for table `tblmenu`
--
ALTER TABLE `tblmenu`
  ADD PRIMARY KEY (`menu_id`) USING BTREE;

--
-- Indexes for table `tblmerk`
--
ALTER TABLE `tblmerk`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tblmodule`
--
ALTER TABLE `tblmodule`
  ADD PRIMARY KEY (`module_id`) USING BTREE;

--
-- Indexes for table `tblsales`
--
ALTER TABLE `tblsales`
  ADD PRIMARY KEY (`sales_id`) USING BTREE;

--
-- Indexes for table `tblsales_det`
--
ALTER TABLE `tblsales_det`
  ADD PRIMARY KEY (`sales_det_id`) USING BTREE;

--
-- Indexes for table `tblsales_exchange`
--
ALTER TABLE `tblsales_exchange`
  ADD PRIMARY KEY (`sales_exchange_id`) USING BTREE;

--
-- Indexes for table `tblsales_exchange_det`
--
ALTER TABLE `tblsales_exchange_det`
  ADD PRIMARY KEY (`sales_exchange_det_id`) USING BTREE;

--
-- Indexes for table `tblstock_adj`
--
ALTER TABLE `tblstock_adj`
  ADD PRIMARY KEY (`stock_adj_id`) USING BTREE;

--
-- Indexes for table `tblstock_category`
--
ALTER TABLE `tblstock_category`
  ADD PRIMARY KEY (`stock_category_id`) USING BTREE;

--
-- Indexes for table `tblstock_flow`
--
ALTER TABLE `tblstock_flow`
  ADD PRIMARY KEY (`stock_flow_id`) USING BTREE;

--
-- Indexes for table `tblstock_in`
--
ALTER TABLE `tblstock_in`
  ADD PRIMARY KEY (`stock_in_id`) USING BTREE;

--
-- Indexes for table `tblstock_in_det`
--
ALTER TABLE `tblstock_in_det`
  ADD PRIMARY KEY (`stock_in_det_id`) USING BTREE;

--
-- Indexes for table `tblstock_out`
--
ALTER TABLE `tblstock_out`
  ADD PRIMARY KEY (`stock_out_id`) USING BTREE;

--
-- Indexes for table `tblstock_out_det`
--
ALTER TABLE `tblstock_out_det`
  ADD PRIMARY KEY (`stock_out_det_id`) USING BTREE;

--
-- Indexes for table `tblstock_switch`
--
ALTER TABLE `tblstock_switch`
  ADD PRIMARY KEY (`stock_switch_id`) USING BTREE;

--
-- Indexes for table `tblstock_switch_det`
--
ALTER TABLE `tblstock_switch_det`
  ADD PRIMARY KEY (`stock_switch_det_id`) USING BTREE;

--
-- Indexes for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  ADD PRIMARY KEY (`supplier_id`) USING BTREE;

--
-- Indexes for table `tblunit`
--
ALTER TABLE `tblunit`
  ADD PRIMARY KEY (`unit_id`) USING BTREE;

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- Indexes for table `tbluser_access`
--
ALTER TABLE `tbluser_access`
  ADD PRIMARY KEY (`user_access_id`) USING BTREE;

--
-- Indexes for table `tbluser_group`
--
ALTER TABLE `tbluser_group`
  ADD PRIMARY KEY (`user_group_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbank`
--
ALTER TABLE `tblbank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblbranch`
--
ALTER TABLE `tblbranch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblitem`
--
ALTER TABLE `tblitem`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=775;

--
-- AUTO_INCREMENT for table `tblitem_bundling`
--
ALTER TABLE `tblitem_bundling`
  MODIFY `item_bundling_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblitem_bundling_prize`
--
ALTER TABLE `tblitem_bundling_prize`
  MODIFY `item_bundling_prize_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblitem_bundling_promo`
--
ALTER TABLE `tblitem_bundling_promo`
  MODIFY `item_bundling_promo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblitem_price`
--
ALTER TABLE `tblitem_price`
  MODIFY `item_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1284;

--
-- AUTO_INCREMENT for table `tblitem_promo`
--
ALTER TABLE `tblitem_promo`
  MODIFY `item_promo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblitem_stock`
--
ALTER TABLE `tblitem_stock`
  MODIFY `item_stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=766;

--
-- AUTO_INCREMENT for table `tblmember`
--
ALTER TABLE `tblmember`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmenu`
--
ALTER TABLE `tblmenu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblmerk`
--
ALTER TABLE `tblmerk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tblmodule`
--
ALTER TABLE `tblmodule`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblsales`
--
ALTER TABLE `tblsales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `tblsales_det`
--
ALTER TABLE `tblsales_det`
  MODIFY `sales_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `tblsales_exchange`
--
ALTER TABLE `tblsales_exchange`
  MODIFY `sales_exchange_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblsales_exchange_det`
--
ALTER TABLE `tblsales_exchange_det`
  MODIFY `sales_exchange_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblstock_adj`
--
ALTER TABLE `tblstock_adj`
  MODIFY `stock_adj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tblstock_category`
--
ALTER TABLE `tblstock_category`
  MODIFY `stock_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblstock_flow`
--
ALTER TABLE `tblstock_flow`
  MODIFY `stock_flow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;

--
-- AUTO_INCREMENT for table `tblstock_in`
--
ALTER TABLE `tblstock_in`
  MODIFY `stock_in_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `tblstock_in_det`
--
ALTER TABLE `tblstock_in_det`
  MODIFY `stock_in_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `tblstock_out`
--
ALTER TABLE `tblstock_out`
  MODIFY `stock_out_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `tblstock_out_det`
--
ALTER TABLE `tblstock_out_det`
  MODIFY `stock_out_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `tblstock_switch`
--
ALTER TABLE `tblstock_switch`
  MODIFY `stock_switch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblstock_switch_det`
--
ALTER TABLE `tblstock_switch_det`
  MODIFY `stock_switch_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblunit`
--
ALTER TABLE `tblunit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbluser_access`
--
ALTER TABLE `tbluser_access`
  MODIFY `user_access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `tbluser_group`
--
ALTER TABLE `tbluser_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
