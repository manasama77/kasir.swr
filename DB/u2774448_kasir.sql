-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 01, 2022 at 12:49 PM
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
(1, 1, 1, '8997219181816', 'Goldstar Spicy Wing 500gr ', '8997219181816', 3, 0, '', '', 1, 'Rak 1', 1, '2022-03-08 01:49:01', 1, '2022-03-31 20:19:11'),
(2, 1, 1, '9000000000001', 'Goldstar Karage 500gr', '1000000000001', 0, 0, '', '', 1, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(3, 1, 1, '9000000000002', 'Goldstar Pok Pok 500gr', '1000000000002', 0, 0, '', '', 1, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(4, 1, 1, '9000000000003', 'Goldstar Katsu 500gr', '1000000000003', 0, 0, '', '', 1, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(5, 1, 1, '9000000000004', 'Goldstar Nugget 500gr', '9000000000004', 0, 0, '', '', 1, '', 1, '2022-03-08 01:49:01', 1, '2022-03-08 20:41:26'),
(6, 1, 1, '9000000000005', 'Goldstar Nugget Angka 500gr', '9000000000005', 0, 0, '', '', 1, '', 1, '2022-03-08 01:49:01', 1, '2022-03-08 20:41:42'),
(7, 1, 1, '9000000000006', 'Goldstar Nugget Stikie 500gr', '1000000000006', 0, 0, '', '', 1, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(8, 1, 1, '9000000000007', 'Goldstar Stikie Cheese 500gr', '1000000000007', 0, 0, '', '', 1, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(9, 1, 1, '9000000000008', 'Ngetop Kornet 450gr', '1000000000008', 0, 0, '', '', 2, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(10, 1, 1, '9000000000009', 'Hemato Nugget Reguler 250gr', '1000000000009', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(11, 1, 1, '9000000000010', 'Hemato Nugget Reguler 500gr', '1000000000010', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(12, 1, 1, '9000000000011', 'Hemato Nugget Reguler 1kg', '1000000000011', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(13, 1, 1, '9000000000012', 'Hemato Sosis Sapi 375gr 15s', '1000000000012', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(14, 1, 1, '9000000000013', 'Hemato Sosis Sapi 1kg 40s Short', '1000000000013', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(15, 1, 1, '9000000000014', 'Hemato Sosis Sapi 1kg 30s Long', '1000000000014', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(16, 1, 1, '9000000000015', 'Hemato Sosis Ayam 375gr 15s', '1000000000015', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(17, 1, 1, '9000000000016', 'Hemato Sosis Ayam 1kg 30s Long', '1000000000016', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(18, 1, 1, '9000000000017', 'Hemato Sosis Ayam 1kg 40s Short', '1000000000017', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(19, 1, 1, '9000000000018', 'Hemato Beef Burger 250gr', '1000000000018', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(20, 1, 1, '9000000000019', 'Hemato Beef Burger Mini 280gr', '1000000000019', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(21, 1, 1, '9000000000020', 'Hemato Kornet Ayam Koin 450gr', '1000000000020', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(22, 1, 1, '9000000000021', 'Hemato Kornet Ayam Kotak 450gr', '1000000000021', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(23, 1, 1, '9000000000022', 'Hemato Naget Love 1kg', '1000000000022', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(24, 1, 1, '9000000000023', 'Hemato Naget Love 500gr', '1000000000023', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(25, 1, 1, '9000000000024', 'Hemato Sosis Sapi Long 500gr', '1000000000024', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(26, 1, 1, '9000000000025', 'Hemato Sosis Ayam Long 500gr', '1000000000025', 0, 0, '', '', 3, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(27, 1, 1, '9000000000026', 'Yona Sosbak Sapi Mini Ori 12s 500gr', '1000000000026', 0, 0, '', '', 4, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(28, 1, 1, '9000000000027', 'Yona Sosbak Sapi Jumbo Ori 6s 500gr', '1000000000027', 0, 0, '', '', 4, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(29, 1, 1, '9000000000028', 'Yona Smoke Beef 250gr', '1000000000028', 0, 0, '', '', 4, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(30, 1, 1, '9000000000029', 'Yona Smoke Beef 500gr', '1000000000029', 0, 0, '', '', 4, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(31, 1, 1, '9000000000030', 'Yona Beef Patties 500gr', '1000000000030', 0, 0, '', '', 4, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(32, 1, 1, '9000000000031', 'Yona Beef Patties 1kg ', '1000000000031', 0, 0, '', '', 4, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(33, 1, 1, '9000000000032', 'Yona Chicken Burger 600gr', '1000000000032', 0, 0, '', '', 4, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(34, 1, 1, '9000000000033', 'Yona Beef Papperoni 500gr', '1000000000033', 0, 0, '', '', 4, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(35, 1, 1, '9000000000034', 'Yona Sosis Sapi Merah 15s 450gr', '1000000000034', 0, 0, '', '', 4, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(36, 1, 1, '9000000000035', 'Yona Nugget Reg 500gr', '1000000000035', 0, 0, '', '', 4, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(37, 1, 1, '9000000000036', 'Yona Sosis 3s ', '1000000000036', 0, 0, '', '', 4, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(38, 1, 1, '9000000000037', 'Jofrans Nugget Reguler 225gr', '1000000000037', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(39, 1, 1, '9000000000038', 'Jofrans Nugget Reguler 500gr', '1000000000038', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(40, 1, 1, '9000000000039', 'Jofrans Nugget Reguler 1kg', '1000000000039', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(41, 1, 1, '9000000000040', 'Jofrans Nugget Love 500gr', '1000000000040', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(42, 1, 1, '9000000000041', 'Jofrans Nugget Love 1kg', '1000000000041', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(43, 1, 1, '9000000000042', 'Jofrans Nugget Stik 500gr', '1000000000042', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(44, 1, 1, '9000000000043', 'Jofrans Nugget Stik 1kg ', '1000000000043', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(45, 1, 1, '9000000000044', 'Jofrans Sosis Ayam 300gr 10s', '1000000000044', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(46, 1, 1, '9000000000045', 'Jofrans Sosis Ayam 360gr 15s', '1000000000045', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(47, 1, 1, '9000000000046', 'Jofrans Sosis Sapi 300gr 10s', '1000000000046', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(48, 1, 1, '9000000000047', 'Jofrans Baso Ayam Kecil 200gr ', '1000000000047', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(49, 1, 1, '9000000000048', 'Jofrans Baso Ayam Kerikil 400gr (Curah)', '1000000000048', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(50, 1, 1, '9000000000049', 'Jofrans Baso Ayam Bsr 500gr ', '1000000000049', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(51, 1, 1, '9000000000050', 'Jofrans Baso Sapi Kecil 200gr ', '1000000000050', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(52, 1, 1, '9000000000051', 'Jofrans Baso Sapi Bsr 500gr ', '1000000000051', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(53, 1, 1, '9000000000052', 'Jofrans Beef Patties 900gr', '1000000000052', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(54, 1, 1, '9000000000053', 'Jofrans Chicken Patties 900gr', '1000000000053', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(55, 1, 1, '9000000000054', 'Jofrans Spicy Wings 500gr', '1000000000054', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(56, 1, 1, '9000000000055', 'Jofrans Sosbak Chicken Ori 7s 500gr', '1000000000055', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(57, 1, 1, '9000000000056', 'Jofrans Sosbak Chicken MINI Ori 12s 500gr', '1000000000056', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(58, 1, 1, '9000000000057', 'Jofrans Sosbak Chicken ORI 1kg 14s', '1000000000057', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(59, 1, 1, '9000000000058', 'Jofrans Sosbak Beef Ori 7s 500gr', '1000000000058', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(60, 1, 1, '9000000000059', 'Jofrans Sosbak Beef MINI Ori 12s 500gr', '1000000000059', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(61, 1, 1, '9000000000060', 'Jofrans Sosbak Beef ORI 1kg 14s', '1000000000060', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(62, 1, 1, '9000000000061', 'Jofrans Sosbak Beef KEJU 500gr 7s', '1000000000061', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(63, 1, 1, '9000000000062', 'Jofrans Sosbak Chicken KEJU 500gr 7s', '1000000000062', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(64, 1, 1, '9000000000063', 'Jofrans Sosbak Chicken Lada Hitam 500gr 7s', '1000000000063', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(65, 1, 1, '9000000000064', 'Jofrans Sosbak Beef Lada HItam 500gr 7s', '1000000000064', 0, 0, '', '', 5, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(66, 1, 1, '9000000000065', 'Chop Chop Sosbak Ayam Jumbo 6s', '1000000000065', 0, 0, '', '', 6, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(67, 1, 1, '9000000000066', 'Chop Chop Sosbak Ayam Mini 10s', '1000000000066', 0, 0, '', '', 6, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(68, 1, 1, '9000000000067', 'Chop Chop Sosbak Sapi Jumbo 6s', '1000000000067', 0, 0, '', '', 6, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(69, 1, 1, '9000000000068', 'Chop Chop Sosbak Sapi Mini 10s', '1000000000068', 0, 0, '', '', 6, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(70, 1, 1, '9000000000069', 'Chop Chop Short 700gr', '1000000000069', 0, 0, '', '', 6, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(71, 1, 1, '9000000000070', 'Chop Chop Long 700gr', '1000000000070', 0, 0, '', '', 6, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(72, 1, 1, '9000000000071', 'Chop Chop Burger Sapi 250gr', '1000000000071', 0, 0, '', '', 6, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(73, 1, 1, '9000000000072', 'Chop Chop Burger Sapi MINI 280gr', '1000000000072', 0, 0, '', '', 6, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(74, 1, 1, '9000000000073', 'Chop Chop Kornet Koin 450gr (Luncheon)', '1000000000073', 0, 0, '', '', 6, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(75, 1, 1, '9000000000074', 'Chop Chop Kornet Kotak 450gr (Luncheon)', '1000000000074', 0, 0, '', '', 6, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(76, 1, 1, '8997023078715', 'Bernardi BND Roti Burger Wijen 6s', '8997023078715', 2, 0, 'ROTI_BURGER_POLOS_isi_6_300_gr.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/ROTI_BURGER_POLOS_isi_6_300_gr.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 7, '', 1, '2022-03-08 01:49:01', 1, '2022-03-31 19:37:39'),
(77, 1, 1, '8997023078708', 'Bernardi BND Roti Burger Polos 6s', '8997023078708', 2, 0, 'VITALIA_ROTI_BURGER_POLOS_isi_6.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/VITALIA_ROTI_BURGER_POLOS_isi_6.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 7, '', 1, '2022-03-08 01:49:01', 1, '2022-03-31 19:34:52'),
(78, 1, 1, '9930101101003', 'Bernardi BND Roti Burger Mini 20s', '9930101101003', 2, 0, '', '', 7, '', 1, '2022-03-08 01:49:01', 1, '2022-03-31 19:05:53'),
(79, 1, 1, '8997207136552', 'Bernardi BND Plain Roll (Hotdog) 6s', '8997207136552', 2, 0, '', '', 7, '', 1, '2022-03-08 01:49:01', 1, '2022-03-31 19:09:07'),
(80, 1, 1, '9000000000079', 'Bernardi BND Plain Roll Mini (Hotdog) 20s', '1000000000079', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(81, 1, 1, '9000000000080', 'Bernardi BND Bakso Sapi Curah 500gr', '1000000000080', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(82, 1, 1, '9000000000081', 'Bernardi BND Bakso Sapi Kecil 500gr 50s', '1000000000081', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(83, 1, 1, '9000000000082', 'Bernardi BND Bakso Sapi Besar 25s ', '1000000000082', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(84, 1, 1, '9000000000083', 'Bernardi BND Bakso Sapi Urat 25s', '1000000000083', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(85, 1, 1, '9000000000084', 'Bernardi BND Bakso Sapi Kecil 100s', '1000000000084', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(86, 1, 1, '9000000000085', 'Bernardi BND Bakso Sapi Jumbo 10s 340gr', '1000000000085', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(87, 1, 1, '9000000000086', 'Bernardi BND Bakso Sapi 1kg ', '1000000000086', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(88, 1, 1, '9000000000087', 'Bernardi BND Beef Patties Classic 6s', '1000000000087', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(89, 1, 1, '9000000000088', 'Bernardi BND Beef Patties Premium 6s 250gr', '1000000000088', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(90, 1, 1, '9000000000089', 'Bernardi Steamboat Instan 300gr', '1000000000089', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(91, 1, 1, '9000000000090', 'Bernardi Yong Tofu Instan 300gr', '1000000000090', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(92, 1, 1, '9000000000091', 'Bernardi Tom Yum 300gr', '1000000000091', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(93, 1, 1, '8997207137467', 'Vitalia Roti Burger Wijen 6s', '8997207137467', 2, 0, 'VITALIA_ROTI_BURGER_WIJEN_isi_6.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/VITALIA_ROTI_BURGER_WIJEN_isi_6.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 8, '', 1, '2022-03-08 01:49:01', 1, '2022-03-31 19:37:00'),
(94, 1, 1, '9000000000093', 'Vitalia Roti Burger Polos 6s', '1000000000093', 0, 0, '', '', 8, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(95, 1, 1, '9000000000094', 'Bernardi BHP Horeca Sosis VP 1kg', '1000000000094', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(96, 1, 1, '9000000000095', 'Bernardi BHP Horeca Sosis VP 500gr', '1000000000095', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(97, 1, 1, '9000000000096', 'Bernardi BHP Horeca Sosis Premium 1kg', '1000000000096', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(98, 1, 1, '9000000000097', 'Bernardi BHP Horeca Smoke Beef Blok 500gr', '1000000000097', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(99, 1, 1, '9000000000098', 'Bernardi BHP Horeca Smoke Beef Bulat VP 500gr', '1000000000098', 0, 0, '', '', 7, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(100, 1, 1, '9000000000099', 'Weiwang WHP Siomay Ayam 30s', '1000000000099', 0, 0, '', '', 9, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(101, 1, 1, '9000000000100', 'Weiwang WHP Siomay Sayur 30s', '1000000000100', 0, 0, '', '', 9, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(102, 1, 1, '9000000000101', 'Weiwang WHP Siomay Jamur 30s', '1000000000101', 0, 0, '', '', 9, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(103, 1, 1, '9000000000102', 'Weiwang WHP Siomay Seafood 30s', '1000000000102', 0, 0, '', '', 9, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(104, 1, 1, '9000000000103', 'Umiami Minipao Ayam 30s', '1000000000103', 0, 0, '', '', 10, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(105, 1, 1, '9000000000104', 'Umiami Minipao Coklat 30s', '1000000000104', 0, 0, '', '', 10, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(106, 1, 1, '9000000000105', 'Umiami Minipao Sapi 30s', '1000000000105', 0, 0, '', '', 10, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(107, 1, 1, '9000000000106', 'Umiami Kornet Ayam 450gr', '1000000000106', 0, 0, '', '', 10, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(108, 1, 1, '9000000000107', 'Umiami Kornet Sapi 450gr', '1000000000107', 0, 0, '', '', 10, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(109, 1, 1, '9000000000108', 'Umiami Sosis Sapi Ulir 20s 500gr', '1000000000108', 0, 0, '', '', 10, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(110, 1, 1, '9000000000109', 'Umiami Sosis Ayam Ulir 20s 500gr', '1000000000109', 0, 0, '', '', 10, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(111, 1, 1, '9000000000110', 'Umiami Si Batagor 180gr', '1000000000110', 0, 0, '', '', 10, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(112, 1, 1, '9000000000111', 'Umiami Tempura Ikan 500gr', '1000000000111', 0, 0, '', '', 10, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(113, 1, 1, '9000000000112', 'Umiami Siomay Ayam Kecil 15s', '1000000000112', 0, 0, '', '', 10, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(114, 1, 1, '9000000000113', 'Umiami Siomay Ayam Besar 60s', '1000000000113', 0, 0, '', '', 10, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(115, 1, 1, '9000000000114', 'Umiami Siomay Vegie (Sayuran) 15s', '1000000000114', 0, 0, '', '', 10, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(116, 1, 1, '9000000000115', 'Weiwang Minipau Ayam 25s', '1000000000115', 0, 0, '', '', 9, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(117, 1, 1, '9000000000116', 'Weiwang Minipau Coklat 25s', '1000000000116', 0, 0, '', '', 9, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(118, 1, 1, '9000000000117', 'Weiwang Minipau Kacang Hijau 25s', '1000000000117', 0, 0, '', '', 9, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(119, 1, 1, '9000000000118', 'Weiwang Long Pao Coklat 24s', '1000000000118', 0, 0, '', '', 9, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(120, 1, 1, '9000000000119', 'Weiwang Ragout Roll 21s', '1000000000119', 0, 0, '', '', 9, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(121, 1, 1, '9000000000120', 'Weiwang Dosie Coklat Mini 28s', '1000000000120', 0, 0, '', '', 9, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(122, 1, 1, '9000000000121', 'Weiwang Mantou Plain 8s', '1000000000121', 0, 0, '', '', 9, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(123, 1, 1, '9000000000122', 'Vitalia Burger Sapi 250gr', '1000000000122', 0, 0, '', '', 8, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(124, 1, 1, '9000000000123', 'Vitalia Burger Sapi Mini 280gr', '1000000000123', 0, 0, '', '', 8, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(125, 1, 1, '9000000000124', 'Vitalia Bakso Sapi Bsr 640gr', '1000000000124', 0, 0, '', '', 8, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(126, 1, 1, '9000000000125', 'Vitalia Bakso Sapi Kecil 270gr', '1000000000125', 0, 0, '', '', 8, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(127, 1, 1, '9000000000126', 'Rious Gold Cake Original 200gr', '1000000000126', 0, 0, '', '', 11, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(128, 1, 1, '9000000000127', 'Rious Gold Cake Choco Cheese 200gr', '1000000000127', 0, 0, '', '', 11, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(129, 1, 1, '9000000000128', 'Rious Gold Cake Lemon Cheese 200gr', '1000000000128', 0, 0, '', '', 11, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(130, 1, 1, '9000000000129', 'Rious Gold Cake Light Cheese 200gr', '1000000000129', 0, 0, '', '', 11, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(131, 1, 1, '9000000000130', 'Rious Gold Cake Double Chocolate 200gr', '1000000000130', 0, 0, '', '', 11, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(132, 1, 1, '9000000000131', 'Rious Pizza Original 180gr', '1000000000131', 0, 0, '', '', 11, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(133, 1, 1, '9000000000132', 'Rious Pizza Double Cheese 180gr', '1000000000132', 0, 0, '', '', 11, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(134, 1, 1, '9000000000133', 'Belfoods Uenak Stik 250gr', '1000000000133', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(135, 1, 1, '9000000000134', 'Belfoods Uenak Stik 500gr', '1000000000134', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(136, 1, 1, '9000000000135', 'Belfoods Uenak Nugget Small 250gr', '1000000000135', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(137, 1, 1, '9000000000136', 'Belfoods Uenak Nugget Small 500gr', '1000000000136', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(138, 1, 1, '9000000000137', 'Belfoods Uenak Nugget Small 85gr (Kecil)', '1000000000137', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(139, 1, 1, '9000000000138', 'Belfoods Uenak Nugget \"S\" 250gr', '1000000000138', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(140, 1, 1, '9000000000139', 'Belfoods Uenak Nugget \"S\" 500gr', '1000000000139', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(141, 1, 1, '9000000000140', 'Belfoods Uenak Sosis Ayam 75gr (Kecil)', '1000000000140', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(142, 1, 1, '9000000000141', 'Belfoods Uenak Sosis Ayam 375gr ', '1000000000141', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(143, 1, 1, '9000000000142', 'Belfoods Uenak Sosis Ayam Long 500gr', '1000000000142', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(144, 1, 1, '9000000000143', 'Belfoods Uenak Sosis Ayam 1kg 30s (Long)', '1000000000143', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(145, 1, 1, '9000000000144', 'Belfoods Uenak Sosis Ayam 1kg 40s (Short)', '1000000000144', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(146, 1, 1, '9000000000145', 'Belfoods Uenak Baso Ayam Kerikil 500gr', '1000000000145', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(147, 1, 1, '9000000000146', 'Belfoods Uenak Baso Ayam Inner Scht 500gr', '1000000000146', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(148, 1, 1, '9000000000147', 'Belfoods Uenak Kornet Luncheon 450gr', '1000000000147', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(149, 1, 1, '9000000000148', 'Belfoods Uenak Sosbak 6s 500gr', '1000000000148', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(150, 1, 1, '9000000000149', 'Belfoods Favorite Nugget 250gr', '1000000000149', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(151, 1, 1, '9000000000150', 'Belfoods Favorite Nugget 500gr', '1000000000150', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(152, 1, 1, '9000000000151', 'Belfoods Favorite Nugget 1kg', '1000000000151', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(153, 1, 1, '9000000000152', 'Belfoods Favorite Stik 250gr', '1000000000152', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(154, 1, 1, '9000000000153', 'Belfoods Favorite Stik 500gr', '1000000000153', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(155, 1, 1, '9000000000154', 'Belfoods Favorite Ceria 250gr ', '1000000000154', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(156, 1, 1, '9000000000155', 'Belfoods Favorite Ceria 500gr ', '1000000000155', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(157, 1, 1, '9000000000156', 'Belfoods Favorite Safari 450gr', '1000000000156', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(158, 1, 1, '9000000000157', 'Belfoods Favorite Ayam Goreng Renyah 500gr', '1000000000157', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(159, 1, 1, '9000000000158', 'Belfoods Favorite Chicken Pop corn 500gr', '1000000000158', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(160, 1, 1, '9000000000159', 'Belfoods Favorite Spicy Wing 500gr', '1000000000159', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(161, 1, 1, '9000000000160', 'Belfoods Favorite Nugget Crunchy 500gr', '1000000000160', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(162, 1, 1, '9000000000161', 'Belfoods Favorite Chicken Burger 315gr', '1000000000161', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(163, 1, 1, '9000000000162', 'Belfoods Favorite Kentang 500gr', '1000000000162', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(164, 1, 1, '9000000000163', 'Belfoods SP Kentang 200gr', '1000000000163', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(165, 1, 1, '9000000000164', 'Belfoods SP Ceria 170gr', '1000000000164', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(166, 1, 1, '9000000000165', 'Belfoods SP Nugget 170gr', '1000000000165', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(167, 1, 1, '9000000000166', 'Belfoods SP Sosis Ayam 200gr', '1000000000166', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(168, 1, 1, '9000000000167', 'Belfoods SP Bakso Ayam 100gr', '1000000000167', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(169, 1, 1, '9000000000168', 'Belfoods Nugget FROZEN II 450gr', '1000000000168', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(170, 1, 1, '9000000000169', 'Belfoods Royal Nugget \"S\" 500gr', '1000000000169', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(171, 1, 1, '9000000000170', 'Belfoods Royal Golden Fillet 250gr', '1000000000170', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(172, 1, 1, '9000000000171', 'Belfoods Royal Golden Fillet 500gr', '1000000000171', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(173, 1, 1, '9000000000172', 'Belfoods Royal Karage 500gr', '1000000000172', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(174, 1, 1, '9000000000173', 'Belfoods Royal Nugget Drummies 500gr', '1000000000173', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(175, 1, 1, '9000000000174', 'Belfodos Royal Cheesy Bites 500gr', '1000000000174', 0, 0, '', '', 12, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(176, 1, 1, '9000000000175', 'Cedea Baso Cumi 500gr', '1000000000175', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(177, 1, 1, '9000000000176', 'Cedea Baso Ikan Besar 500gr', '1000000000176', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(178, 1, 1, '9000000000177', 'Cedea Baso Ikan Sedang 500gr', '1000000000177', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(179, 1, 1, '9000000000178', 'Cedea Baso Ikan 100s 1kg', '1000000000178', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(180, 1, 1, '9000000000179', 'Cedea Baso Ikan Jamur 500gr', '1000000000179', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(181, 1, 1, '9000000000180', 'Cedea Baso Ikan Pedas 500gr', '1000000000180', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(182, 1, 1, '9000000000181', 'Cedea Baso Ikan Sayur Goreng 500gr', '1000000000181', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(183, 1, 1, '9000000000182', 'Cedea Baso Ikan Sayuran 500gr', '1000000000182', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(184, 1, 1, '9000000000183', 'Cedea Baso Ikan dan Udang 500gr', '1000000000183', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(185, 1, 1, '9000000000184', 'Cedea Baso Kepiting 500gr', '1000000000184', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(186, 1, 1, '9000000000185', 'Cedea Chikuwa Mini 500gr ', '1000000000185', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(187, 1, 1, '8997014356723', 'Cedea Chikuwa MINI 1KG', '8997014356723', 1, 0, '', '', 13, 'R1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:33:31'),
(188, 1, 1, '9000000000187', 'Cedea Chikuwa Mini Tray 250gr', '1000000000187', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(189, 1, 1, '9000000000188', 'Cedea Chikuwa LONG 1KG', '1000000000188', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(190, 1, 1, '9000000000189', 'Cedea Chikuwa Jamur Kecil 250gr', '1000000000189', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(191, 1, 1, '9000000000190', 'Cedea Chikuwa Jamur Bsr 500gr', '1000000000190', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(192, 1, 1, '9000000000191', 'Cedea Crab Stik 250gr', '1000000000191', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(193, 1, 1, '9000000000192', 'Cedea Crab Stik 1KG', '1000000000192', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(194, 1, 1, '8997014357065', 'Cedea Duo Twister 500gr', '8997014357065', 2, 0, '', '', 13, 'R1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:03:08'),
(195, 1, 1, '8997014357096', 'Cedea Flower Twister 500gr', '8997014357096', 2, 0, '', '', 13, 'F1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:19:14'),
(196, 1, 1, '9000000000195', 'Cedea Kue Ikan Pedas 500gr', '1000000000195', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(197, 1, 1, '9000000000196', 'Cedea Shrimp Ball (Bola Udang) 200gr', '1000000000196', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(198, 1, 1, '8997014356228', 'Cedea Shrimp Ball (Bola Udang) 500gr', '8997014356228', 2, 0, 'CEDEA_BOLA_UDANG_500_gr.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/CEDEA_BOLA_UDANG_500_gr.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 13, 'F1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:24:26'),
(199, 1, 1, '9000000000198', 'Cedea Tahu Baso Ikan 500gr', '1000000000198', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(200, 1, 1, '9000000000199', 'Cedea Tahu Baso Seafood 500gr', '1000000000199', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(201, 1, 1, '9000000000200', 'Cedea Crab Claw 450gr', '1000000000200', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(202, 1, 1, '9000000000201', 'Cedea Fish Ball TR45 1kg', '1000000000201', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(203, 1, 1, '8997014356570', 'Cedea Fish Dumpling Cheese 500gr', '8997014356570', 1, 0, '', '', 13, 'F1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:30:24'),
(204, 1, 1, '(90)MD243209026078(9', 'Cedea Fish Dumpling Cheese 200gr (Kecil)', '(90)MD243209026078(91)240620', 1, 0, '', '', 13, 'F1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 08:54:18'),
(205, 1, 1, '8997014356563', 'Cedea Fish Dumpling Chicken 500gr', '8997014356563', 1, 0, '', '', 13, 'R1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 11:34:56'),
(206, 1, 1, '(90)MD243209020078(9', 'Cedea Fish Dumpling Chicken 200gr (Kecil)', '(90)MD243209020078(91)240211', 1, 0, '', '', 13, 'F1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 08:54:50'),
(207, 1, 1, '9000000000206', 'Cedea Fried Fish Ball 1kg (Bakso Ikan Goreng)', '1000000000206', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(208, 1, 1, '9000000000207', 'Cedea Fried Fish Ball 500gr (Singapore)', '1000000000207', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(209, 1, 1, '9000000000208', 'Cedea Fried Fish Cake 500gr', '1000000000208', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(210, 1, 1, '9000000000209', 'Cedea Lobster Ball 500gr', '1000000000209', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(211, 1, 1, '9000000000210', 'Cedea Naget Kepiting 500gr', '1000000000210', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(212, 1, 1, '9000000000211', 'Cedea Otak Otak Salju 1kg', '1000000000211', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(213, 1, 1, '8997014356587', 'Cedea Otak Otak Singapur 1kg', '8997014356587', 1, 0, '', '', 13, 'R1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:28:24'),
(214, 1, 1, '9000000000213', 'Cedea Otak Otak Singapur 500gr', '1000000000213', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(215, 1, 1, '8997014356518', 'Cedea Salmon Ball 500gr', '8997014356518', 2, 0, 'CEDEA_BOLA_UDANG_500_gr.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/CEDEA_BOLA_UDANG_500_gr.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 13, '1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:24:54'),
(216, 1, 1, '9000000000215', 'Cedea Salmon Ball 200gr (Kecil)', '1000000000215', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(217, 1, 1, '9000000000216', 'Cedea Sandwich Tofu 500gr', '1000000000216', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(218, 1, 3, '8997014356136', 'Cedea Seafood Tofu 500gr (Tofu Premium)', '8997014356136', 2, 0, '', '', 13, 'F1', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:18:27'),
(219, 1, 1, '9000000000218', 'Cedea Ebi Furai 10s', '1000000000218', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(220, 1, 1, '9000000000219', 'Cedea Fish Roll 250gr (Kecil)', '1000000000219', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(221, 1, 1, '9000000000220', 'Cedea Fish Roll 1kg (Besar)', '1000000000220', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(222, 1, 1, '9000000000221', 'Cedea Siomay Ikan 500gr', '1000000000221', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(223, 1, 1, '9000000000222', 'Cedea Siomay Ayam dan Udang 500gr', '1000000000222', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(224, 1, 1, '9000000000223', 'Cedea Vegetable Spring Roll 500gr', '1000000000223', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(225, 1, 1, '9000000000224', 'Cedea Steamboat 300gr (Kecil)', '1000000000224', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(226, 1, 1, '9000000000225', 'Cedea Steamboat 500gr ', '1000000000225', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(227, 1, 1, '9000000000226', 'Cedea Tomyam 300gr', '1000000000226', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(228, 1, 1, '9000000000227', 'Cedea Farm Animals 500gr', '1000000000227', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(229, 1, 1, '9000000000228', 'Cedea Oriental Cartoon 500gr', '1000000000228', 0, 0, '', '', 13, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(230, 1, 1, '9000000000229', 'Teman Laut Baso Cumi 200gr (Kecil)', '1000000000229', 0, 0, '', '', 14, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(231, 1, 1, '9000000000230', 'Teman Laut Baso Cumi 500gr', '1000000000230', 0, 0, '', '', 14, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(232, 1, 1, '9000000000231', 'Teman Laut Baso Ikan 200gr (Kecil)', '1000000000231', 0, 0, '', '', 14, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(233, 1, 1, '9000000000232', 'Teman Laut Baso Ikan 500gr', '1000000000232', 0, 0, '', '', 14, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(234, 1, 1, '9000000000233', 'Teman Laut Baso Udang 200gr (Kecil)', '1000000000233', 0, 0, '', '', 14, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(235, 1, 1, '9000000000234', 'Teman Laut Baso Udang 500gr', '1000000000234', 0, 0, '', '', 14, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(236, 1, 1, '9000000000235', 'Teman Laut Scallop 200gr (Kecil)', '1000000000235', 0, 0, '', '', 14, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(237, 1, 1, '9000000000236', 'Teman Laut Scallop 500gr', '1000000000236', 0, 0, '', '', 14, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(238, 1, 1, '9000000000237', 'Teman Laut Fish Coin 200gr (Kecil)', '1000000000237', 0, 0, '', '', 14, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(239, 1, 1, '9000000000238', 'Teman Laut Fish Coin 500gr', '1000000000238', 0, 0, '', '', 14, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(240, 1, 1, '9000000000239', 'Teman Laut Coin Star 200gr (Kecil)', '1000000000239', 0, 0, '', '', 14, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(241, 1, 1, '9000000000240', 'Teman Laut Coin Star 500gr', '1000000000240', 0, 0, '', '', 14, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(242, 1, 1, '9000000000241', 'So Good Nugget Original 400gr', '1000000000241', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(243, 1, 1, '9000000000242', 'So Good Nugget Hot n Spicy 400gr', '1000000000242', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(244, 1, 1, '8993110010743', 'So Good Dino Bites 400gr', '8993110010743', 1, 0, '', '', 15, 'F3', 1, '2022-03-08 01:49:01', 1, '2022-04-01 12:04:45'),
(245, 1, 1, '9000000000244', 'So Good Alphabet 400gr', '1000000000244', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(246, 1, 1, '9000000000245', 'So Good Nugget JETZ 400gr', '1000000000245', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(247, 1, 1, '9000000000246', 'So Good Karage 400gr', '1000000000246', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(248, 1, 1, '9000000000247', 'So Good Katsu 400gr', '1000000000247', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(249, 1, 1, '9000000000248', 'So Good Spicy Chicken 400gr', '1000000000248', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(250, 1, 1, '8993110050923', 'So Good Spicy Wing 400gr', '8993110050923', 1, 0, '', '', 15, 'F3', 1, '2022-03-08 01:49:01', 1, '2022-04-01 12:16:27'),
(251, 1, 1, '9000000000250', 'So Good Animal 400gr', '1000000000250', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(252, 1, 1, '8993110000249', 'So Good Chicken Strip250gr', '8993110000249', 1, 0, '', '', 15, 'F3', 1, '2022-03-08 01:49:01', 1, '2022-04-01 12:10:59'),
(253, 1, 1, '9000000000252', 'So Good Ayam Utuh Potong 1kg', '1000000000252', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(254, 1, 1, '9000000000253', 'So Good Paha Dada 1kg (Tanpa Bumbu)', '1000000000253', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(255, 1, 1, '9000000000254', 'So Good Paha Dada 450gr (Tanpa Bumbu)', '1000000000254', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(256, 1, 1, '9000000000255', 'So Good Paha Dada Pedas Manis 450gr', '1000000000255', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(257, 1, 1, '9000000000256', 'So Good Paha Dada Bumbu Kuning 450gr', '1000000000256', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(258, 1, 1, '9000000000257', 'So Good Baso Sapi Kuah 8s', '1000000000257', 0, 0, '', '', 15, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(259, 1, 1, '9000000000258', 'So Nice Nugget 250gr', '1000000000258', 0, 0, '', '', 16, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(260, 1, 1, '9000000000259', 'So Nice Nugget 500gr', '1000000000259', 0, 0, '', '', 16, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(261, 1, 1, '9000000000260', 'So Nice Nugget 1kg', '1000000000260', 0, 0, '', '', 16, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(262, 1, 1, '9000000000261', 'So Nice Stik 250gr', '1000000000261', 0, 0, '', '', 16, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(263, 1, 3, '8993110001581', 'So Nice Stik 500gr', '8993110001581', 1, 0, '', '', 16, 'F3', 1, '2022-03-08 01:49:01', 1, '2022-04-01 12:12:01'),
(264, 1, 1, '9000000000263', 'So Nice Stik 1kg', '1000000000263', 0, 0, '', '', 16, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(265, 1, 1, '9000000000264', 'So Nice Sosis 375gr', '1000000000264', 0, 0, '', '', 16, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(266, 1, 1, '9000000000265', 'So Nice Sosis 3s', '1000000000265', 0, 0, '', '', 16, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(267, 1, 1, '9000000000266', 'So Eco Nugget 1kg', '1000000000266', 0, 0, '', '', 17, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(268, 1, 1, '9000000000267', 'Queen Food Cordon Blue 340gr ', '1000000000267', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(269, 1, 1, '9000000000268', 'Queen Food Chicken Katsu 350gr', '1000000000268', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(270, 1, 1, '9000000000269', 'Queen Food Dory Katsu 350gr', '1000000000269', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(271, 1, 1, '9000000000270', 'Queen Food Shrimp Roll 340gr', '1000000000270', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(272, 1, 1, '9000000000271', 'Queen Food Spicy Chicken 340gr', '1000000000271', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(273, 1, 1, '9000000000272', 'Queen Food Sayap Isi 450gr', '1000000000272', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(274, 1, 1, '9000000000273', 'Queen Food Egg Chicken Roll 350gr', '1000000000273', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(275, 1, 1, '9000000000274', 'Queen Food Ori Bag Telur 200gr', '1000000000274', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(276, 1, 1, '9000000000275', 'Queen Food Sushi Crab Roll 400gr', '1000000000275', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(277, 1, 1, '9000000000276', 'Queen Food Sushi Tuna Roll 400gr', '1000000000276', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(278, 1, 1, '9000000000277', 'Queen Food Cheesy Stik 310gr', '1000000000277', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(279, 1, 1, '9000000000278', 'Queen Food Cakwe Isi Udang 400gr', '1000000000278', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(280, 1, 1, '9000000000279', 'Queen Food Bitter Ballen 300gr', '1000000000279', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(281, 1, 1, '9000000000280', 'Queen Food Ebi Furai 340gr', '1000000000280', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(282, 1, 1, '9000000000281', 'Queen Food Tori Egg Roll 400gr ', '1000000000281', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(283, 1, 1, '9000000000282', 'Queen Food Pangsit Udang Mayo 225gr', '1000000000282', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(284, 1, 1, '9000000000283', 'Queen Food Chicken Strip 500gr', '1000000000283', 0, 0, '', '', 18, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(285, 1, 1, '9000000000284', 'Maxchoice Sosbak Sapi ORI JUMBO 6s 500gr', '1000000000284', 0, 0, '', '', 19, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(286, 1, 1, '9000000000285', 'MAxchoice Sosbak Sapi Mini Ori 10s 500gr', '1000000000285', 0, 0, '', '', 19, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(287, 1, 1, '9000000000286', 'Maxchoice Sosbak Ayam ORI JUMBO 6s 500gr', '1000000000286', 0, 0, '', '', 19, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(288, 1, 1, '9000000000287', 'MAxchoice Sosbak Ayam Mini Ori 10s 500gr', '1000000000287', 0, 0, '', '', 19, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(289, 1, 1, '9000000000288', 'Delimax Smoked Beef 200gr', '1000000000288', 0, 0, '', '', 20, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(290, 1, 1, '9000000000289', 'Delimax Smoked Beef 500gr', '1000000000289', 0, 0, '', '', 20, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(291, 1, 1, '9000000000290', 'Delimax Spicy Wing 500gr', '1000000000290', 0, 0, '', '', 20, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(292, 1, 1, '9000000000291', 'Minaku Scallop 200gr (Kecil)', '1000000000291', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(293, 1, 1, '9000000000292', 'Minaku Scallop 500gr ', '1000000000292', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(294, 1, 1, '9000000000293', 'Minaku Kaki Naga 200gr (Kecil)', '1000000000293', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(295, 1, 1, '9000000000294', 'Minaku Kaki Naga 500gr ', '1000000000294', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(296, 1, 1, '9000000000295', 'Minaku Nugget Ice Cream 500gr', '1000000000295', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(297, 1, 1, '9000000000296', 'Minaku Otak Otak 200gr (Kecil)', '1000000000296', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(298, 1, 1, '9000000000297', 'Minaku Otak Otak 500gr', '1000000000297', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(299, 1, 1, '9000000000298', 'Minaku Bola Ikan 200gr (Kecil)', '1000000000298', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(300, 1, 1, '9000000000299', 'Minaku Bola Ikan 500gr', '1000000000299', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(301, 1, 1, '9000000000300', 'Minaku Bola Udang 200gr (Kecil)', '1000000000300', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(302, 1, 1, '9000000000301', 'Minaku Bola Udang 500gr', '1000000000301', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(303, 1, 1, '9000000000302', 'Minaku Bola Cumi 200gr (Kecil)', '1000000000302', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(304, 1, 1, '9000000000303', 'Minaku Bola Cumi 500gr', '1000000000303', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(305, 1, 1, '9000000000304', 'Minaku Bola Salmon 200gr (Kecil)', '1000000000304', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(306, 1, 1, '9000000000305', 'Minaku Bola Salmon 500gr', '1000000000305', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(307, 1, 1, '9000000000306', 'Minaku Bola Lobster 200gr (Kecil)', '1000000000306', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(308, 1, 1, '8995179907088', 'Minaku Bola Lobster 500gr', '8995179907088', 1, 0, '', '', 21, 'F3', 1, '2022-03-08 01:49:01', 1, '2022-04-01 12:27:26'),
(309, 1, 1, '9000000000308', 'Minaku Bola Kepiting 200gr (Kecil)', '1000000000308', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(310, 1, 1, '9000000000309', 'Minaku Bola Kepiting  500gr', '1000000000309', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(311, 1, 1, '9000000000310', 'Minaku Kentang 500gr', '1000000000310', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(312, 1, 1, '9000000000311', 'Minaku Crab Stik 250gr', '1000000000311', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(313, 1, 1, '9000000000312', 'Minaku Crab Stik 500gr', '1000000000312', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(314, 1, 1, '9000000000313', 'Minaku Crab Stik 1kg', '1000000000313', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(315, 1, 1, '9000000000314', 'Minaku Edamame 500gr ', '1000000000314', 0, 0, '', '', 21, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(316, 1, 1, '9000000000315', 'Sunfish Bakso Ikan Rebus 500gr', '1000000000315', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(317, 1, 1, '9000000000316', 'Sunfish Bakso Ikan n Udang 500gr', '1000000000316', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(318, 1, 1, '9000000000317', 'Sunfish Bolado 250gr (Kecil)', '1000000000317', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(319, 1, 1, '9000000000318', 'Sunfish Bolado 1kg', '1000000000318', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(320, 1, 1, '9000000000319', 'Sunfish Fish Roll 250gr (Kecil)', '1000000000319', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(321, 1, 1, '9000000000320', 'Sunfish Fish Roll 500gr', '1000000000320', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(322, 1, 1, '9000000000321', 'Sunfish Fish Roll 1kg', '1000000000321', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(323, 1, 1, '9000000000322', 'Sunfish Scallop Ikan 500gr', '1000000000322', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(324, 1, 1, '9000000000323', 'Sunfish Hati Ikan 500gr', '1000000000323', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(325, 1, 1, '9000000000324', 'Sunfish Fish Tofu 500gr', '1000000000324', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(326, 1, 1, '9000000000325', 'Sunfish Nugget Stik 250gr', '1000000000325', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(327, 1, 1, '9000000000326', 'Sunfish Otak Otak 10s 500gr', '1000000000326', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(328, 1, 1, '9000000000327', 'Sunfish Otak Lancip 20S 500gr', '1000000000327', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(329, 1, 1, '9000000000328', 'Sunfish Otak Lancip 40S 500gr', '1000000000328', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(330, 1, 1, '9000000000329', 'Sunfish Vegetable Fish Cake 500gr', '1000000000329', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(331, 1, 1, '9000000000330', 'Sunfish Dumpling Cheese 500gr', '1000000000330', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(332, 1, 1, '9000000000331', 'Sunfish Chikuwa MINI 1KG', '1000000000331', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(333, 1, 1, '9000000000332', 'Sunfish Chikuwa Mini 500gr', '1000000000332', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(334, 1, 1, '9000000000333', 'Sunfish Chikuwa LONG 1KG', '1000000000333', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(335, 1, 1, '9000000000334', 'Sunfish Chikuwa Long 500gr', '1000000000334', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(336, 1, 1, '9000000000335', 'Sunfish Kembang Cumi 500gr', '1000000000335', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(337, 1, 1, '9000000000336', 'Sunfish Baso Ikan Cumi 500gr', '1000000000336', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(338, 1, 1, '9000000000337', 'Sunfish Fish N Soy 500gr', '1000000000337', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(339, 1, 1, '9000000000338', 'Sunfish Dumpling Chicken 500gr', '1000000000338', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(340, 1, 1, '9000000000339', 'Sunfish Banana Fish Cake 500gr (Otak Sgpr)', '1000000000339', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(341, 1, 1, '9000000000340', 'Sunfish Kue Ikan Pedas 500gr', '1000000000340', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(342, 1, 1, '9000000000341', 'Sunfish Kue Ikan Sayur Model Bulat 500gr', '1000000000341', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(343, 1, 1, '9000000000342', 'Sunfish Crab Stik 250gr (Kecil)', '1000000000342', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(344, 1, 1, '9000000000343', 'Sunfish Crab Stik 1KG', '1000000000343', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(345, 1, 1, '9000000000344', 'Sunfish Baso Mix 500gr ', '1000000000344', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(346, 1, 1, '9000000000345', 'Sunfish Baso Mix 1KG', '1000000000345', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(347, 1, 1, '9000000000346', 'Sunfish Salmon Ball 500gr', '1000000000346', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(348, 1, 1, '9000000000347', 'Sunfish Shrimp Roll 500gr', '1000000000347', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL);
INSERT INTO `tblitem` (`item_id`, `stock_category_id`, `unit_id`, `item_code`, `item_name`, `barcode`, `minimum_stock`, `maximum_stock`, `foto_filename`, `foto_preview`, `merk_id`, `keterangan`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(349, 1, 1, '9000000000348', 'Sunfish Ekor Udang 450gr', '1000000000348', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(350, 1, 1, '9000000000349', 'Sunfish Baso Lobster 500gr ', '1000000000349', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(351, 1, 1, '9000000000350', 'Sunfish Bakso Kepiting 500gr', '1000000000350', 0, 0, '', '', 22, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(352, 1, 1, '9000000000351', 'Delmonte Tomat Scht 9gr 24s', '1000000000351', 0, 0, '', '', 23, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(353, 1, 1, '9000000000352', 'Delmonte Tomat 140ml Btl', '1000000000352', 0, 0, '', '', 23, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(354, 1, 1, '9000000000353', 'Delmonte Tomat 340ml Btl', '1000000000353', 0, 0, '', '', 23, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(355, 1, 1, '9000000000354', 'Delmonte Tomat 200gr Pouch', '1000000000354', 0, 0, '', '', 23, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(356, 1, 1, '9000000000355', 'Delmonte Tomat Pouch 1kg', '1000000000355', 0, 0, '', '', 23, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(357, 1, 1, '9000000000356', 'Delmonte Tomat Jrgn 5,7kg', '1000000000356', 0, 0, '', '', 23, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(358, 1, 1, '9000000000357', 'Delmonte Extra Hot Scht  9gr 24S', '1000000000357', 0, 0, '', '', 23, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(359, 1, 1, '9000000000358', 'Delmonte Extra HOT 140ml Btl', '1000000000358', 0, 0, '', '', 23, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(360, 1, 1, '9000000000359', 'Delmonte Extra HOT 340ml Btl', '1000000000359', 0, 0, '', '', 23, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(361, 1, 1, '9000000000360', 'Delmonte Extra HOT 200gr Pouch', '1000000000360', 0, 0, '', '', 23, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(362, 1, 1, '9000000000361', 'Delmonte Extra HOT Pouch 1kg', '1000000000361', 0, 0, '', '', 23, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(363, 1, 1, '9000000000362', 'Delmonte Extra HOT Jrgn 5,7kg', '1000000000362', 0, 0, '', '', 23, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(364, 1, 1, '8998888712295', 'Delmonte BBQ 250gr (Kecil)', '8998888712295', 2, 0, '', '', 23, '10', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:53:08'),
(365, 1, 1, '9000000000364', 'Delmonte BBQ 1kg', '1000000000364', 0, 0, '', '', 23, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(366, 1, 1, '8998888712196', 'Delmonte Spaghetti 250gr', '8998888712196', 2, 0, '', '', 23, '10', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:45:13'),
(367, 1, 1, '9000000000366', 'Maestro Mayonaise 1kg ', '1000000000366', 0, 0, '', '', 24, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(368, 1, 1, '8998888461117', 'Maestro Mayonaise Scht 100gr', '8998888461117', 2, 0, '', '', 24, '7', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:28:12'),
(369, 1, 1, '9000000000368', 'Maestro Mayonaise PCH 180gr ', '1000000000368', 0, 0, '', '', 24, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(370, 1, 1, '9000000000369', 'Maestro Mayonaise Pedas SCHT 100gr ', '1000000000369', 0, 0, '', '', 24, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(371, 1, 1, '9000000000370', 'Maestro Thousand Island 1kg', '1000000000370', 0, 0, '', '', 24, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(372, 1, 1, '9000000000371', 'Maestro Thousand Island SCHT 100gr', '1000000000371', 0, 0, '', '', 24, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(373, 1, 1, '9000000000372', 'Maestro Thousand Island 180gr', '1000000000372', 0, 0, '', '', 24, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(374, 1, 1, '9000000000373', 'Maestro Roasted Sesame SCHT (Wijen) 100gr', '1000000000373', 0, 0, '', '', 24, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(375, 1, 1, '8992845857265', 'Primaagung Mayonaise ORI 900gr', '8992845857265', 2, 0, '', '', 25, '5', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:15:46'),
(376, 1, 1, '9000000000375', 'Primaagung Mayonaise ORI 500gr', '1000000000375', 0, 0, '', '', 25, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(377, 1, 1, '9000000000376', 'Primaagung Mayonaise ORI 250gr (Kecil)', '1000000000376', 0, 0, '', '', 25, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(378, 1, 1, '9000000000377', 'Primaagung Saus Keju 1kg', '1000000000377', 0, 0, '', '', 25, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(379, 1, 1, '8992845858569', 'Primaagung Saus Keju 500GR', '8992845858569', 2, 0, '', '', 25, '6', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:27:05'),
(380, 1, 1, '8992845858552', 'Primaagung Saus Keju 250GR  (Kecil)', '8992845858552', 1, 0, '', '', 25, '9', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:43:37'),
(381, 1, 1, '9000000000380', 'Primaagung Saus Mentai 1KG', '1000000000380', 0, 0, '', '', 25, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(382, 1, 1, '9000000000381', 'Primaagung Saus Mentai 500GR', '1000000000381', 0, 0, '', '', 25, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(383, 1, 1, '9000000000382', 'Primaagung Saus Mentai 250gr  (Kecil)', '1000000000382', 0, 0, '', '', 25, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(384, 1, 1, '9000000000383', 'Primaagung Mayonaise Pedas 1kg', '1000000000383', 0, 0, '', '', 25, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(385, 1, 1, '9000000000384', 'Primaagung Mayonaise Pedas 500GR', '1000000000384', 0, 0, '', '', 25, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(386, 1, 1, '9000000000385', 'Primaagung Mayonaise Pedas 250GR  (Kecil)', '1000000000385', 0, 0, '', '', 25, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(387, 1, 1, '9000000000386', 'Primaagung Thousand Island 1kg', '1000000000386', 0, 0, '', '', 25, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(388, 1, 1, '9000000000387', 'Primaagung Thousand Island 500GR', '1000000000387', 0, 0, '', '', 25, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(389, 1, 1, '9000000000388', 'Primaagung Thousand Island 250GR  (Kecil)', '1000000000388', 0, 0, '', '', 25, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(390, 1, 1, '9000000000389', 'KK Shoestring 1kg', '1000000000389', 0, 0, '', '', 26, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(391, 1, 1, '9000000000390', 'KK STRAIGHT CUT 1KG', '1000000000390', 0, 0, '', '', 26, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(392, 1, 1, '9000000000391', 'KK Crincle Cut 1kg', '1000000000391', 0, 0, '', '', 26, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(393, 1, 1, '9000000000392', 'KING Shoestring 2,5kg', '1000000000392', 0, 0, '', '', 26, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(394, 1, 1, '9000000000393', 'KING Crincle 2,5kg', '1000000000393', 0, 0, '', '', 26, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(395, 1, 1, '9000000000394', 'KK MIX Vegetable 1kg 3Ways', '1000000000394', 0, 0, '', '', 26, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(396, 1, 1, '9000000000395', 'KK MIX Vegetable 1kg 4Ways', '1000000000395', 0, 0, '', '', 26, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(397, 1, 1, '9000000000396', 'KK Sweet Corn 1kg', '1000000000396', 0, 0, '', '', 26, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(398, 1, 1, '9000000000397', 'KK GREEN PEAS 1KG', '1000000000397', 0, 0, '', '', 26, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(399, 1, 3, '8997225710697', 'Muantap Sosbak Jumbo Ori 6s + 1', '8997225710697', 1, 0, '', '', 27, 'F2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 10:40:46'),
(400, 1, 1, '9000000000399', 'Muantap Sosis Sapi 1kg', '1000000000399', 0, 0, '', '', 27, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(401, 1, 1, '9000000000400', 'Muantap Sosis Sapi Short 750gr', '1000000000400', 0, 0, '', '', 27, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(402, 1, 1, '9000000000401', 'Bartoz Spicy Wing 1kg', '1000000000401', 0, 0, '', '', 28, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(403, 1, 1, '9000000000402', 'Mitraku Bakso Ikan 200gr (Kecil)', '1000000000402', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(404, 1, 1, '9000000000403', 'Mitraku Bakso Ikan 500gr', '1000000000403', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(405, 1, 1, '9000000000404', 'Mitraku Bakso Isi Ayam 250gr (Kecil)', '1000000000404', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(406, 1, 1, '9000000000405', 'Mitraku Bakso Isi TUNA 250gr (Kecil)', '1000000000405', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(407, 1, 1, '9000000000406', 'Mitraku Bakso Isi Keju 250gr (Kecil)', '1000000000406', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(408, 1, 1, '9000000000407', 'Mitraku Dumpling Ayam 250gr (Kecil)', '1000000000407', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(409, 1, 1, '9000000000408', 'Mitraku Dumpling Ayam 500gr ', '1000000000408', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(410, 1, 1, '9000000000409', 'Mitraku Dumpling Keju 250gr (Kecil)', '1000000000409', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(411, 1, 1, '9000000000410', 'Mitraku Dumpling Keju 500gr ', '1000000000410', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(412, 1, 1, '9000000000411', 'Mitraku Bakso MIX 250gr (Kecil)', '1000000000411', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(413, 1, 1, '9000000000412', 'Mitraku Bakso MIX 500gr', '1000000000412', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(414, 1, 1, '9000000000413', 'Mitraku Fish Tofu 500gr', '1000000000413', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(415, 1, 1, '9000000000414', 'Mitraku Fish Roll 250gr (Kecil)', '1000000000414', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(416, 1, 1, '9000000000415', 'Mitraku Fish Roll 500gr', '1000000000415', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(417, 1, 1, '9000000000416', 'Mitraku Fish Roll 1KG', '1000000000416', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(418, 1, 1, '9000000000417', 'Mitraku Scallop 200gr (kecil)', '1000000000417', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(419, 1, 1, '9000000000418', 'Mitraku Scallop 500gr ', '1000000000418', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(420, 1, 1, '9000000000419', 'Mitraku Fish Roll Jagung 250gr', '1000000000419', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(421, 1, 1, '9000000000420', 'Mitraku Fish Roll Barbque 250gr', '1000000000420', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(422, 1, 1, '9000000000421', 'Mitraku Fish Roll Blackpapper 250gr', '1000000000421', 0, 0, '', '', 29, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(423, 1, 1, '9000000000422', 'Bumifood Crispy Mix SFD 210gr', '1000000000422', 0, 0, '', '', 30, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(424, 1, 1, '9000000000423', 'Bumifood Dimsum Siomay Reg 200gr', '1000000000423', 0, 0, '', '', 30, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(425, 1, 1, '9000000000424', 'Bumifood Hakau Udang 222gr', '1000000000424', 0, 0, '', '', 30, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(426, 1, 1, '9000000000425', 'Bumifood Lumpia Ayam 210gr', '1000000000425', 0, 0, '', '', 30, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(427, 1, 1, '9000000000426', 'Bumifood Lumpia Sayur 210gr', '1000000000426', 0, 0, '', '', 30, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(428, 1, 1, '9000000000427', 'Bumifood Martabak Ayam 222gr', '1000000000427', 0, 0, '', '', 30, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(429, 1, 1, '9000000000428', 'Bumifood Mini Wonton 350gr', '1000000000428', 0, 0, '', '', 30, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(430, 1, 1, '9000000000429', 'Bumifood Ebi Furai 220gr', '1000000000429', 0, 0, '', '', 30, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(431, 1, 1, '9000000000430', 'Mantul Bakso Ikan 200gr (Kecil)', '1000000000430', 0, 0, '', '', 31, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(432, 1, 1, '9000000000431', 'Mantul Bakso Ikan 500gr', '1000000000431', 0, 0, '', '', 31, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(433, 1, 1, '9000000000432', 'Mantul Bakso Cumi 200gr', '1000000000432', 0, 0, '', '', 31, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(434, 1, 1, '9000000000433', 'Mantul Bakso Udang 200gr', '1000000000433', 0, 0, '', '', 31, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(435, 1, 1, '9000000000434', 'Mantul Fish Roll Balado 200gr (Kecil)', '1000000000434', 0, 0, '', '', 31, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(436, 1, 1, '9000000000435', 'Mantul Fish Roll Balado 500gr', '1000000000435', 0, 0, '', '', 31, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(437, 1, 1, '9000000000436', 'Mantul Otak Otak 200gr (kecil)', '1000000000436', 0, 0, '', '', 31, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(438, 1, 1, '9000000000437', 'Mantul Otak Otak 500gr', '1000000000437', 0, 0, '', '', 31, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(439, 1, 1, '9000000000438', 'Sedani PIPA 1KG', '1000000000438', 0, 0, '', '', 32, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(440, 1, 1, '9000000000439', 'Sedani Kerang 1KG', '1000000000439', 0, 0, '', '', 32, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(441, 1, 1, '9000000000440', 'Sedani SPIRAL 1KG', '1000000000440', 0, 0, '', '', 32, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(442, 1, 1, '9000000000441', 'Sedani SPAGHETTI 1KG', '1000000000441', 0, 0, '', '', 32, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(443, 1, 1, '9000000000442', 'Lafonte Spaghetti 225gr (Kecil)', '1000000000442', 0, 0, '', '', 33, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(444, 1, 1, '9000000000443', 'Lafonte Spaghetti 450gr', '1000000000443', 0, 0, '', '', 33, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(445, 1, 1, '9000000000444', 'Lafonte Spaghetti 1kg', '1000000000444', 0, 0, '', '', 33, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(446, 1, 1, '9000000000445', 'Lafonte Fettucini 750gr', '1000000000445', 0, 0, '', '', 33, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(447, 1, 1, '9000000000446', 'Lafonte Saus Bolognase 315gr', '1000000000446', 0, 0, '', '', 33, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(448, 1, 1, '9000000000447', 'King F Rolade Sapi 225gr', '1000000000447', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(449, 1, 1, '9000000000448', 'King F Rolade Sapi 1kg', '1000000000448', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(450, 1, 1, '9000000000449', 'King F Rolade Ayam 225gr', '1000000000449', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(451, 1, 1, '9000000000450', 'King F Rolade Ayam 1kg', '1000000000450', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(452, 1, 1, '9000000000451', 'King F Kornet Sapi 1kg', '1000000000451', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(453, 1, 1, '9000000000452', 'King F Kornet Ayam 1kg', '1000000000452', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(454, 1, 1, '9000000000453', 'King F Kornet Ayam EKO 450gr', '1000000000453', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(455, 1, 1, '9000000000454', 'King F Kornet Koin 450gr', '1000000000454', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(456, 1, 1, '9000000000455', 'King F Burger ORI 10s 250gr', '1000000000455', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(457, 1, 1, '9000000000456', 'King F Burger MINI 20s 280gr', '1000000000456', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(458, 1, 1, '9000000000457', 'King F Sosbak Sapi JUMBO 6s 500gr', '1000000000457', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(459, 1, 1, '9000000000458', 'King F Sosbak KEJU 500gr 6s', '1000000000458', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(460, 1, 1, '9000000000459', 'King F Sosbak LADA HITAM 500gr 6s', '1000000000459', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(461, 1, 1, '9000000000460', 'KING F Basis Putih 21s 500gr', '1000000000460', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(462, 1, 1, '9000000000461', 'KING F Basis Merah 21s 500gr', '1000000000461', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(463, 1, 1, '9000000000462', 'King F Sosis Sapi Hocky 375gr', '1000000000462', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(464, 1, 1, '9000000000463', 'King F Sosis Sapi Hocky 500gr', '1000000000463', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(465, 1, 1, '9000000000464', 'King F Sosbak Pendekar 10s 500gr', '1000000000464', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(466, 1, 1, '9000000000465', 'King F Fries Kentang 500gr', '1000000000465', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(467, 1, 1, '9000000000466', 'King F Fries Kentang 1kg', '1000000000466', 0, 0, '', '', 34, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(468, 1, 1, '9000000000467', 'Kipao Coklat 25s', '1000000000467', 0, 0, '', '', 35, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(469, 1, 1, '9000000000468', 'Kipao Sapi 25s', '1000000000468', 0, 0, '', '', 35, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(470, 1, 1, '9000000000469', 'Kipao Strawberry 25s', '1000000000469', 0, 0, '', '', 35, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(471, 1, 1, '9000000000470', 'Kipao Keju 25s', '1000000000470', 0, 0, '', '', 35, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(472, 1, 1, '9000000000471', 'Kipao Ayam 25s', '1000000000471', 0, 0, '', '', 35, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(473, 1, 1, '9000000000472', 'Kipao Kacang Merah 25s', '1000000000472', 0, 0, '', '', 35, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(474, 1, 1, '9000000000473', 'Kipao Premium Coffe 12s', '1000000000473', 0, 0, '', '', 35, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(475, 1, 1, '9000000000474', 'Kipao Premium Salted Egg 12s', '1000000000474', 0, 0, '', '', 35, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(476, 1, 1, '9000000000475', 'Kipao Premium Matcha 12s', '1000000000475', 0, 0, '', '', 35, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(477, 1, 1, '9000000000476', 'Kipao Premium Huzelnut 12s', '1000000000476', 0, 0, '', '', 35, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(478, 1, 1, '9000000000477', 'Boss Sosis Ayam 375gr 15s', '1000000000477', 0, 0, '', '', 36, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(479, 1, 1, '9000000000478', 'Boss Sosis Ayam 1kg 40s', '1000000000478', 0, 0, '', '', 36, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(480, 1, 1, '9000000000479', 'Boss Baso Sapi 10s 130gr', '1000000000479', 0, 0, '', '', 36, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(481, 1, 1, '9000000000480', 'Boss Baso Sapi 25s 325gr', '1000000000480', 0, 0, '', '', 36, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(482, 1, 1, '9000000000481', 'Boss Sosbak Sapi JUMBO 6s 500gr', '1000000000481', 0, 0, '', '', 36, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(483, 1, 1, '9000000000482', 'Boss Sosbak Sapi MIni 10s 500gr', '1000000000482', 0, 0, '', '', 36, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(484, 1, 1, '9000000000483', 'Boss Basis Putih 27s 530gr', '1000000000483', 0, 0, '', '', 36, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(485, 1, 1, '9000000000484', 'Boss Basis Merah 27s 530gr', '1000000000484', 0, 0, '', '', 36, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(486, 1, 1, '9000000000485', 'Boss Smoke Beef 250gr', '1000000000485', 0, 0, '', '', 36, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(487, 1, 1, '9000000000486', 'Boss Burger 10s 250gr', '1000000000486', 0, 0, '', '', 36, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(488, 1, 1, '9000000000487', 'Kibif Bakso Sapi 50s 600gr', '1000000000487', 0, 0, '', '', 37, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(489, 1, 1, '9000000000488', 'Kibif Smoke Beef 250gr', '1000000000488', 0, 0, '', '', 37, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(490, 1, 1, '9000000000489', 'Kibif Daging Rendang 1kg', '1000000000489', 0, 0, '', '', 37, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(491, 1, 1, '9000000000490', 'Kibif Daging Sapi 500gr', '1000000000490', 0, 0, '', '', 37, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(492, 1, 1, '9000000000491', 'Kibif Yakiniku 250gr', '1000000000491', 0, 0, '', '', 37, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(493, 1, 1, '9000000000492', 'Pelangi Donut Besar 10s ', '1000000000492', 0, 0, '', '', 38, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(494, 1, 1, '9000000000493', 'Pelangi Donut MINI 21s', '1000000000493', 0, 0, '', '', 38, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(495, 1, 1, '9000000000494', 'Pelangi Donat Mini 10s 300gr', '1000000000494', 0, 0, '', '', 38, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(496, 1, 1, '9000000000495', 'Pelangi Donat UNYIL 30s 300gr', '1000000000495', 0, 0, '', '', 38, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(497, 1, 1, '9000000000496', 'Pelangi Donat Coklat 12s 300gr', '1000000000496', 0, 0, '', '', 38, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(498, 1, 1, '9000000000497', 'Pelangi Donat Coklat 24s ', '1000000000497', 0, 0, '', '', 38, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(499, 1, 1, '9000000000498', 'Pelangi Mipao Pandan 30s', '1000000000498', 0, 0, '', '', 38, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(500, 1, 1, '9000000000499', 'Pelangi Mipao Coklat 30s', '1000000000499', 0, 0, '', '', 38, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(501, 1, 1, '9000000000500', 'Pelangi Mipao Vanilla 30s', '1000000000500', 0, 0, '', '', 38, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(502, 1, 1, '9000000000501', 'Pelangi Mipao Strawberry 30s', '1000000000501', 0, 0, '', '', 38, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(503, 1, 1, '9000000000502', 'PELANGI Ubi Ungu Besar 10s ', '1000000000502', 0, 0, '', '', 38, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(504, 1, 1, '9000000000503', 'PELANGI Ubi Ungu MINI 21s ', '1000000000503', 0, 0, '', '', 38, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(505, 1, 1, '9000000000504', 'PELANGI Ubi Ungu Mini 10s ', '1000000000504', 0, 0, '', '', 38, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(506, 1, 1, '9000000000505', 'Pelangi Jelly 500gr', '1000000000505', 0, 0, '', '', 38, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(507, 1, 1, '9000000000506', 'Pelangi Jelly 1kg', '1000000000506', 0, 0, '', '', 38, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(508, 1, 1, '9000000000507', 'JOLIN PISCOK', '1000000000507', 0, 0, '', '', 39, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(509, 1, 1, '9000000000508', 'JOLIN PISCOK KEJU', '1000000000508', 0, 0, '', '', 39, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(510, 1, 1, '9000000000509', 'JOLIN NANGKA COKLAT', '1000000000509', 0, 0, '', '', 39, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(511, 1, 1, '9000000000510', 'JOLIN NANAS COKLAT', '1000000000510', 0, 0, '', '', 39, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(512, 1, 1, '9000000000511', 'JOLIN TAPE COKLAT', '1000000000511', 0, 0, '', '', 39, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(513, 1, 1, '9000000000512', 'CIRENG BREXCELLE', '1000000000512', 0, 0, '', '', 40, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(514, 1, 1, '9000000000513', 'CIRENG KHARISMA', '1000000000513', 0, 0, '', '', 40, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(515, 1, 1, '9000000000514', 'CIRENG MERCON AYAM', '1000000000514', 0, 0, '', '', 40, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(516, 1, 1, '9000000000515', 'CIRENG MERCON BAKSO', '1000000000515', 0, 0, '', '', 40, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(517, 1, 1, '9000000000516', 'CIRENG MERCON CAKALANG', '1000000000516', 0, 0, '', '', 40, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(518, 1, 1, '9000000000517', 'BEN\'S TOPPOKI ORI', '1000000000517', 0, 0, '', '', 41, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(519, 1, 1, '9000000000518', 'BEN\'S RABBOKI', '1000000000518', 0, 0, '', '', 41, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(520, 1, 1, '9000000000519', 'BEN\'S TOPPOKI MOZARELLA', '1000000000519', 0, 0, '', '', 41, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(521, 1, 1, '9000000000520', 'BAWANG MERAH GORENG', '1000000000520', 0, 0, '', '', 42, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(522, 1, 1, '9000000000521', 'WARISAN BASO 50S', '1000000000521', 0, 0, '', '', 43, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(523, 1, 1, '9000000000522', 'FROZENLAND Shoestring 500gr', '1000000000522', 0, 0, '', '', 44, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(524, 1, 1, '9000000000523', 'FROZENLAND Shoestring 1KG', '1000000000523', 0, 0, '', '', 44, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(525, 1, 1, '9000000000524', 'FROZENLAND Straight Cut 500gr', '1000000000524', 0, 0, '', '', 44, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(526, 1, 1, '9000000000525', 'FROZENLAND Straight Cut 1KG', '1000000000525', 0, 0, '', '', 44, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(527, 1, 1, '9000000000526', 'FROZENLAND Crincle Cut 500gr', '1000000000526', 0, 0, '', '', 44, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(528, 1, 1, '9000000000527', 'FROZENLAND Crincle Cut 1kg', '1000000000527', 0, 0, '', '', 44, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(529, 1, 1, '9000000000528', 'FROZENLAND Batter Coated 500gr', '1000000000528', 0, 0, '', '', 44, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(530, 1, 1, '9000000000529', 'FROZENLAND Batter Coated 1kg', '1000000000529', 0, 0, '', '', 44, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(531, 1, 1, '9000000000530', 'FROZENLAND Batter Coated 2,5kg', '1000000000530', 0, 0, '', '', 44, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(532, 1, 1, '9000000000531', 'FROZENLAND MIX Vege 4ways 1kg', '1000000000531', 0, 0, '', '', 44, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(533, 1, 1, '9000000000532', 'AVIKO SHOESTRING 2,5KG', '9000000000532', 0, 0, 'AVIKO_SHOESTRING_2,5KG.jpg', '<img src=\"http://localhost/pos_muezza/upload/item/AVIKO_SHOESTRING_2,5KG.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 45, NULL, 1, '2022-03-08 01:49:01', 1, '2022-03-07 20:31:53'),
(534, 1, 3, '9000000000533', 'FARM FRITES SHOESTRING 2 KG', '9000000000533', 2, 0, 'FARM_FRITES_2_KG.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/FARM_FRITES_2_KG.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 46, '4', 1, '2022-03-08 01:49:01', 1, '2022-03-31 23:58:38'),
(535, 1, 1, '9000000000534', 'FARM FRITES Straight Cut 2,5KG', '1000000000534', 0, 0, '', '', 46, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(536, 1, 1, '9000000000535', 'FARM FRITES Crincle CUT 2,5KG', '1000000000535', 0, 0, '', '', 46, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(537, 1, 1, '9000000000536', 'PERFETTO MOZARELLA 250GR', '1000000000536', 0, 0, '', '', 47, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(538, 1, 1, '9000000000537', 'SHIFUDO Chikuwa Mini 500gr', '1000000000537', 0, 0, '', '', 48, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(539, 1, 1, '9000000000538', 'SHIFUDO Chikuwa Mini 1kg', '1000000000538', 0, 0, '', '', 48, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(540, 1, 1, '9000000000539', 'SHIFUDO Chikuwa Long 500gr', '1000000000539', 0, 0, '', '', 48, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(541, 1, 1, '9000000000540', 'SHIFUDO Chikuwa Long 1kg', '1000000000540', 0, 0, '', '', 48, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(542, 1, 1, '9000000000541', 'SHIFUDO Cumi Flower 500gr', '1000000000541', 0, 0, '', '', 48, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(543, 1, 1, '9000000000542', 'SHIFUDO Bakso Cumi 500gr', '1000000000542', 0, 0, '', '', 48, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(544, 1, 1, '9000000000543', 'SHIFUDO Bakso Ikan 500GR', '1000000000543', 0, 0, '', '', 48, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(545, 1, 1, '9000000000544', 'SHIFUDO Bakso Udang 500GR', '1000000000544', 0, 0, '', '', 48, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(546, 1, 1, '9000000000545', 'SHIFUDO Otak Fish Roll 250GR', '1000000000545', 0, 0, '', '', 48, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(547, 1, 1, '9000000000546', 'SHIFUDO Otak Kotak 500gr', '1000000000546', 0, 0, '', '', 48, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(548, 1, 1, '9000000000547', 'Fiesta SFD Ebi Furai 160gr', '1000000000547', 0, 0, '', '', 49, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(549, 1, 1, '9000000000548', 'Fiesta SFD Dory Stik 200gr', '1000000000548', 0, 0, '', '', 49, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(550, 1, 1, '9000000000549', 'Fiesta SFD Shrimp Shumai 200gr', '1000000000549', 0, 0, '', '', 49, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(551, 1, 1, '9000000000550', 'MY TASTE Blackpapper 100GR (Kecil)', '1000000000550', 0, 0, '', '', 50, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(552, 1, 1, '9000000000551', 'MY TASTE Blackpapper 500GR', '1000000000551', 0, 0, '', '', 50, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(553, 1, 1, '9000000000552', 'MY TASTE Blackpapper 1kg', '1000000000552', 0, 0, '', '', 50, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(554, 1, 1, '8997011790018', 'MY TASTE BBQ 100GR (Kecil)', '8997011790018', 2, 0, '', '', 50, '6', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:23:10'),
(555, 1, 1, '8997011790155', 'MY TASTE BBQ 500GR', '8997011790155', 1, 0, '', '', 50, '2', 1, '2022-03-08 01:49:01', 1, '2022-03-31 17:57:11'),
(556, 1, 1, '9000000000555', 'MY TASTE BBQ 1kg', '1000000000555', 0, 0, '', '', 50, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(557, 1, 1, '9000000000556', 'MY TASTE BBQ Spicy LVL 3 500gr', '1000000000556', 0, 0, '', '', 50, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(558, 1, 1, '(90)MD256410053093(9', 'MY TASTE Mushroom sauce 500gr', '(90)MD256410053093(9', 1, 0, 'MY_TASTE_SAUCE_BULGOGI_500_gr3.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/MY_TASTE_SAUCE_BULGOGI_500_gr3.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 50, 'Rak 6', 1, '2022-03-08 01:49:01', 1, '2022-04-01 07:11:54'),
(559, 1, 1, '9000000000558', 'MY TASTE Teriyaki sauce 500gr', '1000000000558', 0, 0, '', '', 50, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(560, 1, 1, '9000000000559', 'MY TASTE Bolognase sauce 500gr', '1000000000559', 0, 0, '', '', 50, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(562, 1, 1, '9000000000561', 'MY TASTE Cheese sauce 500gr', '1000000000561', 0, 0, '', '', 50, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(563, 1, 1, '(90)MD256210093093(9', 'MY TASTE Saus Mayo sauce 500gr', '(90)MD256210093093(91)250729', 3, 0, '', '', 50, '8', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:40:13'),
(564, 1, 1, '(90)MD256310077093(9', 'MY TASTE Chilli Sauce 500GR', '(90)MD256310077093(9', 1, 0, 'MY_TASTE_SAUCE_BULGOGI_500_gr2.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/MY_TASTE_SAUCE_BULGOGI_500_gr2.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 50, 'Rak 2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 07:11:26'),
(565, 1, 1, '9000000000564', 'MY TASTE XO SAUCE 175GR', '1000000000564', 0, 0, '', '', 50, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(566, 1, 1, '9000000000565', 'MY TASTE Fish Sauce 200gr', '1000000000565', 0, 0, '', '', 50, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(567, 1, 1, '9000000000566', 'MY TASTE Kuah Bakso 8gr', '1000000000566', 0, 0, '', '', 50, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(568, 1, 1, '9000000000567', 'MY TASTE Jagung Kaleng 410GR', '1000000000567', 0, 0, '', '', 50, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(569, 1, 1, '9000000000568', 'Belibis Cabe Sachet 9gr', '1000000000568', 0, 0, '', '', 51, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(570, 1, 1, '9000000000569', 'Belibis Cabe Btl 135ml', '1000000000569', 0, 0, '', '', 51, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(571, 1, 1, '9000000000570', 'Belibis Cabe Btl 340ml ', '1000000000570', 0, 0, '', '', 51, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(572, 1, 1, '9000000000571', 'Belibis Cabe Btl Beling 650ml', '1000000000571', 0, 0, '', '', 51, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(573, 1, 1, '9000000000572', 'Belibis Cabe Btl Dot 535ml', '1000000000572', 0, 0, '', '', 51, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(574, 1, 1, '8992984910173', 'Belibis Sauce Cabe Pouch 1kg', '8992984910173', 2, 0, 'BELIBIS_SAUCE_1_KG_CABE.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/BELIBIS_SAUCE_1_KG_CABE.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 51, '1', 1, '2022-03-08 01:49:01', 1, '2022-03-31 17:36:03'),
(575, 1, 1, '8992984910500', 'Belibis Value Sauce Cabe 1kg Bantal', '8992984910500', 2, 0, 'BELIBIS_VALUE_BANTAL_SAUCE_CABE_1_KG.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/BELIBIS_VALUE_BANTAL_SAUCE_CABE_1_KG.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 51, '1', 1, '2022-03-08 01:49:01', 1, '2022-03-31 17:36:44'),
(576, 1, 1, '9000000000575', 'Belibis Tomat Sachet 9gr', '1000000000575', 0, 0, '', '', 51, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(577, 1, 1, '9000000000576', 'Belibis Tomat Btl 135ml', '1000000000576', 0, 0, '', '', 51, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(578, 1, 1, '9000000000577', 'Belibis Tomat Btl 340ml ', '1000000000577', 0, 0, '', '', 51, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(579, 1, 1, '9000000000578', 'Belibis Tomat Btl Beling 650ml', '1000000000578', 0, 0, '', '', 51, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(580, 1, 1, '9000000000579', 'Belibis Tomat POUCH 1kg', '1000000000579', 0, 0, '', '', 51, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(581, 1, 1, '8997024460236', 'Mc Lewis Sambal Value 1kg', '8997024460236', 2, 0, '', '', 52, '3', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:06:00'),
(582, 1, 1, '8997024460281', 'Mc Lewis Tomat Value 1kg ', '8997024460281', 2, 0, '', '', 52, '3', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:09:09'),
(583, 1, 1, '9000000000582', 'Mc Lewis Sweet Mayo 1kg', '1000000000582', 0, 0, '', '', 52, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(584, 1, 1, '8997024460359', 'Mc Lewis ORIGINAL Mayo 1kg', '8997024460359', 1, 0, '', '', 52, '5', 1, '2022-03-08 01:49:01', 1, '2022-03-31 18:13:26'),
(585, 1, 1, '9000000000584', 'Mc Lewis Thousand Island 1kg', '1000000000584', 0, 0, '', '', 52, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(586, 1, 1, '9000000000585', 'Mc Lewis BBQ Sauce 1kg', '1000000000585', 0, 0, '', '', 52, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(587, 1, 1, '9000000000586', 'Mc Lewis BPP 310gr', '1000000000586', 0, 0, '', '', 52, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(588, 1, 1, '9000000000587', 'Mc Lewis Bolognase Sauce 1kg', '1000000000587', 0, 0, '', '', 52, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(589, 1, 1, '9000000000588', 'Mc Lewis Cheese Sauce 1kg ', '1000000000588', 0, 0, '', '', 52, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(590, 1, 1, '9000000000589', 'Mc Lewis Cheese Sauce 250gr', '1000000000589', 0, 0, '', '', 52, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(591, 1, 1, '9000000000590', 'Kimbo Mini Original 10s 500gr', '1000000000590', 0, 0, '', '', 53, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(592, 1, 1, '9000000000591', 'Kimbo JUMBO Original 6s 500gr', '1000000000591', 0, 0, '', '', 53, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(593, 1, 1, '8995555118251', 'Kimbo Mini Keju 10s 500gr', '8995555118251', 1, 0, '', '', 53, 'R2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:42:18'),
(594, 1, 1, '(90)MD239810049134(9', 'Kimbo JUMBO Keju 6s 500gr', '(90)MD239810049134(91)240114', 1, 0, '', '', 53, 'R2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:54:27'),
(595, 1, 1, '(90)MD239810038134(9', 'Kimbo Mini Lada Hitam 10s 500gr', '(90)MD239810038134(91)221127', 1, 0, '', '', 53, 'R2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:47:37'),
(596, 1, 1, '8995555168270', 'Kimbo JUMBO Lada Hitam 6s 500gr', '8995555168270', 1, 0, '', '', 53, 'F2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:39:28'),
(597, 1, 1, '8995555118503', 'Kimbo Sosis Cocktail 450gr', '8995555118503', 1, 0, '', '', 53, 'R2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 09:50:27'),
(598, 1, 1, '8995555218210', 'Vigo Sosbak Sapi 12s 500gr', '8995555218210', 1, 0, '', '', 54, 'F3', 1, '2022-03-08 01:49:01', 1, '2022-04-01 12:31:38'),
(599, 1, 1, '8995555815211', 'Vigo Sosis Sapi & Ayam 330 gr isi 15 ', '8995555815211', 1, 0, '', '', 54, 'R2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 10:01:10'),
(600, 1, 1, '9000000000599', 'Vigo Sosis Sapi 30s 690gr', '1000000000599', 0, 0, '', '', 54, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(601, 1, 1, '9000000000600', 'Vigo Kornet 450gr', '1000000000600', 0, 0, '', '', 54, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(602, 1, 1, '9000000000601', 'Kanzler Bockwurst 360gr', '1000000000601', 0, 0, '', '', 55, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(603, 1, 1, '9000000000602', 'Kanzler Cheese Frank 360gr ', '1000000000602', 0, 0, '', '', 55, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(604, 1, 1, '9000000000603', 'Kanzler Garlic Frank 300gr', '1000000000603', 0, 0, '', '', 55, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(605, 1, 1, '8993200344215', 'Kanzler BPP Frank 300gr', '8993200344215', 1, 0, '', '', 55, 'F2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 11:55:42'),
(606, 1, 1, '8993200664368', 'Kanzler Cheese Cocktail 500gr', '8993200664368', 1, 0, '', '', 55, 'F2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 11:18:45'),
(608, 1, 1, '8993200667772', 'Kanzler Beef Cocktail 250gr', '8993200667772', 1, 0, '', '', 55, 'R2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 11:16:06'),
(609, 1, 1, '9000000000608', 'Kanzler Beef Wiener 500gr', '1000000000608', 0, 0, '', '', 55, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(610, 1, 1, '9000000000609', 'Kanzler Beef Bratwurst 360gr ', '1000000000609', 0, 0, '', '', 55, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(611, 1, 1, '9000000000610', 'Kanzler Crispy Nugget 450gr', '1000000000610', 0, 0, '', '', 55, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(612, 1, 1, '9000000000611', 'Kanzler Nugget Premium 450gr', '1000000000611', 0, 0, '', '', 55, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(613, 1, 1, '9000000000612', 'Kanzler Singles 1s ', '1000000000612', 0, 0, '', '', 55, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(614, 1, 1, '8993200661442', 'Kanzler Cheese Bratwurst 360gr', '8993200661442', 1, 0, '', '', 55, 'F2', 1, '2022-03-08 01:49:01', 1, '2022-04-01 11:43:58'),
(615, 1, 1, '9000000000614', 'Kanzler Chicken BW Coarse 360gr', '1000000000614', 0, 0, '', '', 55, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(616, 1, 1, '9000000000615', 'Kanzler Beef Cocktail 1KG', '1000000000615', 0, 0, '', '', 55, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(617, 1, 1, '9000000000616', 'Kanzler Frank Cocktail 1kg', '1000000000616', 0, 0, '', '', 55, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(618, 1, 1, '9000000000617', 'Kanzler Cheese Cocktail 1kg', '1000000000617', 0, 0, '', '', 55, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(619, 1, 1, '9000000000618', 'Kanzler Bockwurst 1kg 14s', '1000000000618', 0, 0, '', '', 55, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(620, 1, 1, '9000000000619', 'Kanzler Smoke Beef 250gr', '1000000000619', 0, 0, '', '', 55, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(621, 1, 1, '9000000000620', 'JURAGAN Sosbak ORI Jumbo 6s 500gr', '1000000000620', 0, 0, '', '', 56, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(622, 1, 1, '9000000000621', 'JURAGAN Sosbak MINI 10s 500gr', '1000000000621', 0, 0, '', '', 56, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(623, 1, 1, '9000000000622', 'JURAGAN Sosbak ORI Jumbo 12s 1kg', '1000000000622', 0, 0, '', '', 56, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(624, 1, 1, '9000000000623', 'JURAGAN Sosbak MINI 20s 1kg', '1000000000623', 0, 0, '', '', 56, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(625, 1, 1, '9000000000624', 'EURO Sambal 1kg', '1000000000624', 0, 0, '', '', 57, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(626, 1, 1, '9000000000625', 'EURO Tomat 1kg', '1000000000625', 0, 0, '', '', 57, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(627, 1, 1, '9000000000626', 'EURO Sambal Extra Pedas 1kg', '1000000000626', 0, 0, '', '', 57, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(628, 1, 1, '9000000000627', 'EURO BBQ 500GR', '1000000000627', 0, 0, '', '', 57, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(629, 1, 1, '9000000000628', 'EURO Saus Keju 500gr', '1000000000628', 0, 0, '', '', 57, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(630, 1, 1, '9000000000629', 'EURO Mayonaise ORI 1kg', '1000000000629', 0, 0, '', '', 57, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(631, 1, 1, '9000000000630', 'EURO Mayonaise BTL 290ML', '1000000000630', 0, 0, '', '', 57, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(632, 1, 1, '9000000000631', 'EURO Mayonaise PEDAS 290ML', '1000000000631', 0, 0, '', '', 57, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(633, 1, 1, '9000000000632', 'EURO Mayonaise Thousand Island 290ML', '1000000000632', 0, 0, '', '', 57, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(634, 1, 1, '9000000000633', 'EURO Sambal SCHT 9gr', '1000000000633', 0, 0, '', '', 57, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(635, 1, 1, '9000000000634', 'EURO Tomat SCHT 9gr', '1000000000634', 0, 0, '', '', 57, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(636, 1, 1, '9000000000635', 'Best Chicken Sosis Ayam 1kg', '1000000000635', 0, 0, '', '', 58, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(637, 1, 1, '9000000000636', 'Dosuka Spicy Wing 500gr ', '1000000000636', 0, 0, '', '', 59, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(638, 1, 1, '9000000000637', 'Dosuka Sosis Ayam 375gr', '1000000000637', 0, 0, '', '', 59, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(639, 1, 1, '9000000000638', 'Dosuka Scallop 500gr ', '1000000000638', 0, 0, '', '', 59, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(640, 1, 1, '9000000000639', 'Dosuka Bakso 500gr', '1000000000639', 0, 0, '', '', 59, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(641, 1, 1, '9000000000640', 'Dosuka Nugget 250gr', '1000000000640', 0, 0, '', '', 59, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(642, 1, 1, '9000000000641', 'Dosuka Spicy Chick 500gr', '1000000000641', 0, 0, '', '', 59, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(643, 1, 1, '9000000000642', 'Dosuka Crispy Burger 235gr ', '1000000000642', 0, 0, '', '', 59, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(644, 1, 1, '9000000000643', 'Bon Bon Sosis Coklat 50s 1kg', '1000000000643', 0, 0, '', '', 60, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(645, 1, 1, '9000000000644', 'Bon Bon Sosis Coklat 25s 500gr', '1000000000644', 0, 0, '', '', 60, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(646, 1, 1, '9000000000645', 'Bon Bon Sosis Coklat 15cm 1kg', '1000000000645', 0, 0, '', '', 60, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(647, 1, 1, '9000000000646', 'Bon Bon Sosis Merah 50s 1kg', '1000000000646', 0, 0, '', '', 60, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(648, 1, 1, '9000000000647', 'Bon Bon Sosis Merah 25s 500gr', '1000000000647', 0, 0, '', '', 60, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(649, 1, 1, '9000000000648', 'Yomas Rolade Sapi 250gr ', '1000000000648', 0, 0, '', '', 61, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(650, 1, 1, '9000000000649', 'Yomas Rolade Sapi 500gr ', '1000000000649', 0, 0, '', '', 61, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(651, 1, 1, '9000000000650', 'Yomas Sosbak Sapi Jumbo Ori 6s 500gr', '1000000000650', 0, 0, '', '', 61, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(652, 1, 1, '9000000000651', 'Yomas Sosbak Sapi Mini Ori 12s 500gr', '1000000000651', 0, 0, '', '', 61, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(653, 1, 1, '9000000000652', 'Yomas Kornet Ayam 1kg ', '1000000000652', 0, 0, '', '', 61, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(654, 1, 1, '9000000000653', 'Yomas Kornet Ayam Kotak 500gr', '1000000000653', 0, 0, '', '', 61, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(655, 1, 1, '9000000000654', 'Yomas Saikoro 250gr', '1000000000654', 0, 0, '', '', 61, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(656, 1, 1, '9000000000655', 'Yomas Beef Steak 250gr ', '1000000000655', 0, 0, '', '', 61, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(657, 1, 1, '9000000000656', 'Yomas Cocktail 500gr', '1000000000656', 0, 0, '', '', 61, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(658, 1, 1, '9000000000657', 'ESSEM BASIS PUTIH 25S', '1000000000657', 0, 0, '', '', 62, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(659, 1, 1, '9000000000658', 'ESSEM BASIS MERAH 25S', '1000000000658', 0, 0, '', '', 62, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(660, 1, 1, '9000000000659', 'ESSEM BASO POLOS TM 50S ', '1000000000659', 0, 0, '', '', 62, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(661, 1, 1, '9000000000660', 'ESSEM BASO BIRU TM 50S', '1000000000660', 0, 0, '', '', 62, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(662, 1, 1, '9000000000661', 'Sunnygold Nugget 500gr ', '1000000000661', 0, 0, '', '', 63, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(663, 1, 1, '9000000000662', 'Sunnygold Stik 500gr ', '1000000000662', 0, 0, '', '', 63, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(664, 1, 1, '9000000000663', 'Sunnygold Karage 500gr', '1000000000663', 0, 0, '', '', 63, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(665, 1, 1, '9000000000664', 'Sunnygold Tempura 500gr', '1000000000664', 0, 0, '', '', 63, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(666, 1, 1, '9000000000665', 'Sunnygold Spicy Wing 500gr', '1000000000665', 0, 0, '', '', 63, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(667, 1, 1, '9000000000666', 'Sunnygold Sosis Ayam 400gr ', '1000000000666', 0, 0, '', '', 63, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(668, 1, 1, '9000000000667', 'Sunnygold Crispy Crunch 500gr ', '1000000000667', 0, 0, '', '', 63, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(669, 1, 1, '9000000000668', 'Cikiwiki Nugget Ori 250gr', '1000000000668', 0, 0, '', '', 64, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(670, 1, 1, '9000000000669', 'Cikiwiki Nugget Dino 250gr', '1000000000669', 0, 0, '', '', 64, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(671, 1, 1, '9000000000670', 'Cikiwiki Sosis Ayam 375gr ', '1000000000670', 0, 0, '', '', 64, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(672, 1, 1, '9000000000671', 'Geboooy Basis 999 Merah ', '1000000000671', 0, 0, '', '', 65, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(673, 1, 1, '9000000000672', 'Geboooy Basis 999 PUTIH', '1000000000672', 0, 0, '', '', 65, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(674, 1, 1, '9000000000673', 'Geboooyku Sosis Ayam 1kg', '1000000000673', 0, 0, '', '', 65, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(675, 1, 1, '9000000000674', 'Geboooyku Sosis Ayam 730gr Merah', '1000000000674', 0, 0, '', '', 65, NULL, 1, '2022-03-08 01:49:01', NULL, NULL),
(677, 1, 1, '8993492101664', 'EDO Pizza Base 120 gram', '8993492101664', 5, 0, 'PIZZA_BASE_120_gram1.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/PIZZA_BASE_120_gram1.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 66, '2', 1, '2022-03-08 10:08:25', 1, '2022-03-28 22:37:35'),
(678, 1, 4, 'SWR00001', 'SWR Coffee', 'SWR00001', 5, 0, '', '', 45, 'Rak 1', 1, '2022-03-08 15:38:00', NULL, NULL),
(679, 1, 1, '1234', 'test 2', '1234', 53, 0, '', '', 45, '', 1, '2022-03-08 21:19:55', NULL, NULL),
(680, 1, 1, '8997011791244', 'MY TASTE SAUS BULGOGI 500 gr', '8997011791244', 1, 0, 'MY_TASTE_SAUCE_BULGOGI_500_gr.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/MY_TASTE_SAUCE_BULGOGI_500_gr.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 50, '', 1, '2022-03-31 17:39:18', 1, '2022-04-01 00:39:07'),
(681, 1, 1, '8993200664542', 'MAMAYO MAYONAIS ORIGINAL 1Kg', '8993200664542', 1, 0, '', '', 67, '8', 1, '2022-03-31 18:34:58', NULL, NULL),
(683, 1, 3, '8993207130057', 'Akumo Naget Ayam 250 gr', '8993207130057', 1, 0, 'AKUMO_NAGET_AYAM_250_gr2.jpg', '<img src=\"https://adminpos.trijayasolution.co.id/upload/item/AKUMO_NAGET_AYAM_250_gr2.jpg\" width=\"150\" height=\"250\" class=\"img-thumbnail\" />', 68, '4', 1, '2022-03-31 23:55:10', 1, '2022-04-01 08:50:45'),
(684, 1, 3, '8997014356013', 'Cedea Bakso Ikan 500 gr', '8997014356013', 2, 0, '', '', 13, 'F1', 1, '2022-04-01 09:13:27', NULL, NULL),
(686, 1, 3, '8993207800240', 'Champ Chicken Sausage 1 Kg', '8993207800240', 1, 0, '', '', 70, 'F3', 1, '2022-04-01 12:23:07', NULL, NULL),
(687, 1, 3, '8993207569147', 'Fiesta Naget Stikie 500 gr', '8993207569147', 1, 0, '', '', 49, 'F3', 1, '2022-04-01 12:36:38', 1, '2022-04-01 12:37:19'),
(688, 1, 3, '8993207730035', 'Champ chicken sos  375 Gr', '8993207730035', 1, 0, '', '', 70, 'F3', 1, '2022-04-01 12:45:03', NULL, NULL);

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
(1, 11, 1, '2022-02-21', 32850, 36500, 1, '2020-05-15 23:09:39', NULL, NULL),
(2, 11, 2, '2022-02-21', 32400, 36000, 1, '2020-05-15 23:09:39', NULL, NULL),
(3, 11, 3, '2022-02-21', 30420, 33800, 1, '2020-05-15 23:09:39', NULL, NULL),
(4, 11, 4, '2022-02-21', 30420, 33800, 1, '2020-05-15 23:09:39', NULL, NULL),
(5, 11, 5, '2022-02-21', 28080, 31200, 1, '2020-05-15 23:09:39', NULL, NULL),
(6, 11, 6, '2022-02-21', 27630, 30700, 1, '2020-05-15 23:09:39', NULL, NULL),
(7, 11, 7, '2022-02-21', 28080, 31200, 1, '2020-05-15 23:09:39', NULL, NULL),
(8, 11, 8, '2022-02-21', 29520, 32800, 1, '2020-05-15 23:09:39', NULL, NULL),
(9, 11, 9, '2022-02-21', 12330, 13700, 1, '2020-05-15 23:09:39', NULL, NULL),
(10, 11, 10, '2022-02-21', 7290, 8100, 1, '2020-05-15 23:09:39', NULL, NULL),
(11, 11, 11, '2022-02-21', 13140, 14600, 1, '2020-05-15 23:09:39', NULL, NULL),
(12, 11, 12, '2022-02-21', 26190, 29100, 1, '2020-05-15 23:09:39', NULL, NULL),
(13, 11, 13, '2022-02-21', 10080, 11200, 1, '2020-05-15 23:09:39', NULL, NULL),
(14, 11, 14, '2022-02-21', 26460, 29400, 1, '2020-05-15 23:09:39', NULL, NULL),
(15, 11, 15, '2022-02-21', 26370, 29300, 1, '2020-05-15 23:09:39', NULL, NULL),
(16, 11, 16, '2022-02-21', 9810, 10900, 1, '2020-05-15 23:09:39', NULL, NULL),
(17, 11, 17, '2022-02-21', 25380, 28200, 1, '2020-05-15 23:09:39', NULL, NULL),
(18, 11, 18, '2022-02-21', 25560, 28400, 1, '2020-05-15 23:09:39', NULL, NULL),
(19, 11, 19, '2022-02-21', 6390, 7100, 1, '2020-05-15 23:09:39', NULL, NULL),
(20, 11, 20, '2022-02-21', 7200, 8000, 1, '2020-05-15 23:09:39', NULL, NULL),
(21, 11, 21, '2022-02-21', 11790, 13100, 1, '2020-05-15 23:09:39', NULL, NULL),
(22, 11, 22, '2022-02-21', 11790, 13100, 1, '2020-05-15 23:09:39', NULL, NULL),
(23, 11, 23, '2022-02-21', 26190, 29100, 1, '2020-05-15 23:09:39', NULL, NULL),
(24, 11, 24, '2022-02-21', 13140, 14600, 1, '2020-05-15 23:09:39', NULL, NULL),
(25, 11, 25, '2022-02-21', 13230, 14700, 1, '2020-05-15 23:09:39', NULL, NULL),
(26, 11, 26, '2022-02-21', 12780, 14200, 1, '2020-05-15 23:09:39', NULL, NULL),
(27, 11, 27, '2022-02-21', 25110, 27900, 1, '2020-05-15 23:09:39', NULL, NULL),
(28, 11, 28, '2022-02-21', 25110, 27900, 1, '2020-05-15 23:09:39', NULL, NULL),
(29, 11, 29, '2022-02-21', 21690, 24100, 1, '2020-05-15 23:09:39', NULL, NULL),
(30, 11, 30, '2022-02-21', 43020, 47800, 1, '2020-05-15 23:09:39', NULL, NULL),
(31, 11, 31, '2022-02-21', 28530, 31700, 1, '2020-05-15 23:09:39', NULL, NULL),
(32, 11, 32, '2022-02-21', 56610, 62900, 1, '2020-05-15 23:09:39', NULL, NULL),
(33, 11, 33, '2022-02-21', 22680, 25200, 1, '2020-05-15 23:09:39', NULL, NULL),
(34, 11, 34, '2022-02-21', 39600, 44000, 1, '2020-05-15 23:09:39', NULL, NULL),
(35, 11, 35, '2022-02-21', 25650, 28500, 1, '2020-05-15 23:09:39', NULL, NULL),
(36, 11, 36, '2022-02-21', 28710, 31900, 1, '2020-05-15 23:09:39', NULL, NULL),
(37, 11, 37, '2022-02-21', 3510, 3900, 1, '2020-05-15 23:09:39', NULL, NULL),
(38, 11, 38, '2022-02-21', 7110, 7900, 1, '2020-05-15 23:09:39', NULL, NULL),
(39, 11, 39, '2022-02-21', 13500, 15000, 1, '2020-05-15 23:09:39', NULL, NULL),
(40, 11, 40, '2022-02-21', 26370, 29300, 1, '2020-05-15 23:09:39', NULL, NULL),
(41, 11, 41, '2022-02-21', 13500, 15000, 1, '2020-05-15 23:09:39', NULL, NULL),
(42, 11, 42, '2022-02-21', 26370, 29300, 1, '2020-05-15 23:09:39', NULL, NULL),
(43, 11, 43, '2022-02-21', 13410, 14900, 1, '2020-05-15 23:09:39', NULL, NULL),
(44, 11, 44, '2022-02-21', 26370, 29300, 1, '2020-05-15 23:09:39', NULL, NULL),
(45, 11, 45, '2022-02-21', 9090, 10100, 1, '2020-05-15 23:09:39', NULL, NULL),
(46, 11, 46, '2022-02-21', 9720, 10800, 1, '2020-05-15 23:09:39', NULL, NULL),
(47, 11, 47, '2022-02-21', 12870, 14300, 1, '2020-05-15 23:09:39', NULL, NULL),
(48, 11, 48, '2022-02-21', 8100, 9000, 1, '2020-05-15 23:09:39', NULL, NULL),
(49, 11, 49, '2022-02-21', 15480, 17200, 1, '2020-05-15 23:09:39', NULL, NULL),
(50, 11, 50, '2022-02-21', 19080, 21200, 1, '2020-05-15 23:09:39', NULL, NULL),
(51, 11, 51, '2022-02-21', 9990, 11100, 1, '2020-05-15 23:09:39', NULL, NULL),
(52, 11, 52, '2022-02-21', 23670, 26300, 1, '2020-05-15 23:09:39', NULL, NULL),
(53, 11, 53, '2022-02-21', 36360, 40400, 1, '2020-05-15 23:09:39', NULL, NULL),
(54, 11, 54, '2022-02-21', 29520, 32800, 1, '2020-05-15 23:09:39', NULL, NULL),
(55, 11, 55, '2022-02-21', 32130, 35700, 1, '2020-05-15 23:09:39', NULL, NULL),
(56, 11, 56, '2022-02-21', 20700, 23000, 1, '2020-05-15 23:09:39', NULL, NULL),
(57, 11, 57, '2022-02-21', 21060, 23400, 1, '2020-05-15 23:09:39', NULL, NULL),
(58, 11, 58, '2022-02-21', 40140, 44600, 1, '2020-05-15 23:09:39', NULL, NULL),
(59, 11, 59, '2022-02-21', 21960, 24400, 1, '2020-05-15 23:09:39', NULL, NULL),
(60, 11, 60, '2022-02-21', 22410, 24900, 1, '2020-05-15 23:09:39', NULL, NULL),
(61, 11, 61, '2022-02-21', 41490, 46100, 1, '2020-05-15 23:09:39', NULL, NULL),
(62, 11, 62, '2022-02-21', 22410, 24900, 1, '2020-05-15 23:09:39', NULL, NULL),
(63, 11, 63, '2022-02-21', 21060, 23400, 1, '2020-05-15 23:09:39', NULL, NULL),
(64, 11, 64, '2022-02-21', 21060, 23400, 1, '2020-05-15 23:09:39', NULL, NULL),
(65, 11, 65, '2022-02-21', 22410, 24900, 1, '2020-05-15 23:09:39', NULL, NULL),
(66, 11, 66, '2022-02-21', 18540, 20600, 1, '2020-05-15 23:09:39', NULL, NULL),
(67, 11, 67, '2022-02-21', 18540, 20600, 1, '2020-05-15 23:09:39', NULL, NULL),
(68, 11, 68, '2022-02-21', 19440, 21600, 1, '2020-05-15 23:09:39', NULL, NULL),
(69, 11, 69, '2022-02-21', 19440, 21600, 1, '2020-05-15 23:09:39', NULL, NULL),
(70, 11, 70, '2022-02-21', 18270, 20300, 1, '2020-05-15 23:09:39', NULL, NULL),
(71, 11, 71, '2022-02-21', 18270, 20300, 1, '2020-05-15 23:09:39', NULL, NULL),
(72, 11, 72, '2022-02-21', 6120, 6800, 1, '2020-05-15 23:09:39', NULL, NULL),
(73, 11, 73, '2022-02-21', 7830, 8700, 1, '2020-05-15 23:09:39', NULL, NULL),
(74, 11, 74, '2022-02-21', 10980, 12200, 1, '2020-05-15 23:09:39', NULL, NULL),
(75, 11, 75, '2022-02-21', 10980, 12200, 1, '2020-05-15 23:09:39', NULL, NULL),
(76, 11, 76, '2022-02-21', 9630, 10700, 1, '2020-05-15 23:09:39', NULL, NULL),
(77, 11, 77, '2022-02-21', 8640, 9600, 1, '2020-05-15 23:09:39', NULL, NULL),
(78, 11, 78, '2022-02-21', 17550, 19500, 1, '2020-05-15 23:09:39', NULL, NULL),
(79, 11, 79, '2022-02-21', 8640, 9600, 1, '2020-05-15 23:09:39', NULL, NULL),
(80, 11, 80, '2022-02-21', 17550, 19500, 1, '2020-05-15 23:09:39', NULL, NULL),
(81, 11, 81, '2022-02-21', 25650, 28500, 1, '2020-05-15 23:09:39', NULL, NULL),
(82, 11, 82, '2022-02-21', 44910, 49900, 1, '2020-05-15 23:09:39', NULL, NULL),
(83, 11, 83, '2022-02-21', 43020, 47800, 1, '2020-05-15 23:09:39', NULL, NULL),
(84, 11, 84, '2022-02-21', 37980, 42200, 1, '2020-05-15 23:09:39', NULL, NULL),
(85, 11, 85, '2022-02-21', 86670, 96300, 1, '2020-05-15 23:09:39', NULL, NULL),
(86, 11, 86, '2022-02-21', 41760, 46400, 1, '2020-05-15 23:09:39', NULL, NULL),
(87, 11, 87, '2022-02-21', 93420, 103800, 1, '2020-05-15 23:09:39', NULL, NULL),
(88, 11, 88, '2022-02-21', 16200, 18000, 1, '2020-05-15 23:09:39', NULL, NULL),
(89, 11, 89, '2022-02-21', 29070, 32300, 1, '2020-05-15 23:09:39', NULL, NULL),
(90, 11, 90, '2022-02-21', 33210, 36900, 1, '2020-05-15 23:09:39', NULL, NULL),
(91, 11, 91, '2022-02-21', 31140, 34600, 1, '2020-05-15 23:09:39', NULL, NULL),
(92, 11, 92, '2022-02-21', 33210, 36900, 1, '2020-05-15 23:09:39', NULL, NULL),
(93, 11, 93, '2022-02-21', 8370, 9300, 1, '2020-05-15 23:09:39', NULL, NULL),
(94, 11, 94, '2022-02-21', 7200, 8000, 1, '2020-05-15 23:09:39', NULL, NULL),
(95, 11, 95, '2022-02-21', 53730, 59700, 1, '2020-05-15 23:09:39', NULL, NULL),
(96, 11, 96, '2022-02-21', 25380, 28200, 1, '2020-05-15 23:09:39', NULL, NULL),
(97, 11, 97, '2022-02-21', 64710, 71900, 1, '2020-05-15 23:09:39', NULL, NULL),
(98, 11, 98, '2022-02-21', 58500, 65000, 1, '2020-05-15 23:09:39', NULL, NULL),
(99, 11, 99, '2022-02-21', 43920, 48800, 1, '2020-05-15 23:09:39', NULL, NULL),
(100, 11, 100, '2022-02-21', 23850, 26500, 1, '2020-05-15 23:09:39', NULL, NULL),
(101, 11, 101, '2022-02-21', 23850, 26500, 1, '2020-05-15 23:09:39', NULL, NULL),
(102, 11, 102, '2022-02-21', 23850, 26500, 1, '2020-05-15 23:09:39', NULL, NULL),
(103, 11, 103, '2022-02-21', 25830, 28700, 1, '2020-05-15 23:09:39', NULL, NULL),
(104, 11, 104, '2022-02-21', 9450, 10500, 1, '2020-05-15 23:09:39', NULL, NULL),
(105, 11, 105, '2022-02-21', 9450, 10500, 1, '2020-05-15 23:09:39', NULL, NULL),
(106, 11, 106, '2022-02-21', 9450, 10500, 1, '2020-05-15 23:09:39', NULL, NULL),
(107, 11, 107, '2022-02-21', 12780, 14200, 1, '2020-05-15 23:09:39', NULL, NULL),
(108, 11, 108, '2022-02-21', 12780, 14200, 1, '2020-05-15 23:09:39', NULL, NULL),
(109, 11, 109, '2022-02-21', 13230, 14700, 1, '2020-05-15 23:09:39', NULL, NULL),
(110, 11, 110, '2022-02-21', 13230, 14700, 1, '2020-05-15 23:09:39', NULL, NULL),
(111, 11, 111, '2022-02-21', 7110, 7900, 1, '2020-05-15 23:09:39', NULL, NULL),
(112, 11, 112, '2022-02-21', 11430, 12700, 1, '2020-05-15 23:09:39', NULL, NULL),
(113, 11, 113, '2022-02-21', 14850, 16500, 1, '2020-05-15 23:09:39', NULL, NULL),
(114, 11, 114, '2022-02-21', 30780, 34200, 1, '2020-05-15 23:09:39', NULL, NULL),
(115, 11, 115, '2022-02-21', 14850, 16500, 1, '2020-05-15 23:09:39', NULL, NULL),
(116, 11, 116, '2022-02-21', 10620, 11800, 1, '2020-05-15 23:09:39', NULL, NULL),
(117, 11, 117, '2022-02-21', 10620, 11800, 1, '2020-05-15 23:09:39', NULL, NULL),
(118, 11, 118, '2022-02-21', 10620, 11800, 1, '2020-05-15 23:09:39', NULL, NULL),
(119, 11, 119, '2022-02-21', 7740, 8600, 1, '2020-05-15 23:09:39', NULL, NULL),
(120, 11, 120, '2022-02-21', 15300, 17000, 1, '2020-05-15 23:09:39', NULL, NULL),
(121, 11, 121, '2022-02-21', 12690, 14100, 1, '2020-05-15 23:09:39', NULL, NULL),
(122, 11, 122, '2022-02-21', 14400, 16000, 1, '2020-05-15 23:09:39', NULL, NULL),
(123, 11, 123, '2022-02-21', 6300, 7000, 1, '2020-05-15 23:09:39', NULL, NULL),
(124, 11, 124, '2022-02-21', 7020, 7800, 1, '2020-05-15 23:09:39', NULL, NULL),
(125, 11, 125, '2022-02-21', 11970, 13300, 1, '2020-05-15 23:09:39', NULL, NULL),
(126, 11, 126, '2022-02-21', 5040, 5600, 1, '2020-05-15 23:09:39', NULL, NULL),
(127, 11, 127, '2022-02-21', 19800, 22000, 1, '2020-05-15 23:09:39', NULL, NULL),
(128, 11, 128, '2022-02-21', 22770, 25300, 1, '2020-05-15 23:09:39', NULL, NULL),
(129, 11, 129, '2022-02-21', 22770, 25300, 1, '2020-05-15 23:09:39', NULL, NULL),
(130, 11, 130, '2022-02-21', 25830, 28700, 1, '2020-05-15 23:09:39', NULL, NULL),
(131, 11, 131, '2022-02-21', 25830, 28700, 1, '2020-05-15 23:09:39', NULL, NULL),
(132, 11, 132, '2022-02-21', 15750, 17500, 1, '2020-05-15 23:09:39', NULL, NULL),
(133, 11, 133, '2022-02-21', 15750, 17500, 1, '2020-05-15 23:09:39', NULL, NULL),
(134, 11, 134, '2022-02-21', 8730, 9700, 1, '2020-05-15 23:09:39', NULL, NULL),
(135, 11, 135, '2022-02-21', 14940, 16600, 1, '2020-05-15 23:09:39', NULL, NULL),
(136, 11, 136, '2022-02-21', 8730, 9700, 1, '2020-05-15 23:09:39', NULL, NULL),
(137, 11, 137, '2022-02-21', 14760, 16400, 1, '2020-05-15 23:09:39', NULL, NULL),
(138, 11, 138, '2022-02-21', 3690, 4100, 1, '2020-05-15 23:09:39', NULL, NULL),
(139, 11, 139, '2022-02-21', 8820, 9800, 1, '2020-05-15 23:09:39', NULL, NULL),
(140, 11, 140, '2022-02-21', 15300, 17000, 1, '2020-05-15 23:09:39', NULL, NULL),
(141, 11, 141, '2022-02-21', 2520, 2800, 1, '2020-05-15 23:09:39', NULL, NULL),
(142, 11, 142, '2022-02-21', 11160, 12400, 1, '2020-05-15 23:09:39', NULL, NULL),
(143, 11, 143, '2022-02-21', 13680, 15200, 1, '2020-05-15 23:09:39', NULL, NULL),
(144, 11, 144, '2022-02-21', 26370, 29300, 1, '2020-05-15 23:09:39', NULL, NULL),
(145, 11, 145, '2022-02-21', 26370, 29300, 1, '2020-05-15 23:09:39', NULL, NULL),
(146, 11, 146, '2022-02-21', 10530, 11700, 1, '2020-05-15 23:09:39', NULL, NULL),
(147, 11, 147, '2022-02-21', 12780, 14200, 1, '2020-05-15 23:09:39', NULL, NULL),
(148, 11, 148, '2022-02-21', 11610, 12900, 1, '2020-05-15 23:09:39', NULL, NULL),
(149, 11, 149, '2022-02-21', 21150, 23500, 1, '2020-05-15 23:09:39', NULL, NULL),
(150, 11, 150, '2022-02-21', 11250, 12500, 1, '2020-05-15 23:09:39', NULL, NULL),
(151, 11, 151, '2022-02-21', 23940, 26600, 1, '2020-05-15 23:09:39', NULL, NULL),
(152, 11, 152, '2022-02-21', 44100, 49000, 1, '2020-05-15 23:09:39', NULL, NULL),
(153, 11, 153, '2022-02-21', 12420, 13800, 1, '2020-05-15 23:09:39', NULL, NULL),
(154, 11, 154, '2022-02-21', 23940, 26600, 1, '2020-05-15 23:09:39', NULL, NULL),
(155, 11, 155, '2022-02-21', 16380, 18200, 1, '2020-05-15 23:09:39', NULL, NULL),
(156, 11, 156, '2022-02-21', 31050, 34500, 1, '2020-05-15 23:09:39', NULL, NULL),
(157, 11, 157, '2022-02-21', 30780, 34200, 1, '2020-05-15 23:09:39', NULL, NULL),
(158, 11, 158, '2022-02-21', 29970, 33300, 1, '2020-05-15 23:09:39', NULL, NULL),
(159, 11, 159, '2022-02-21', 34470, 38300, 1, '2020-05-15 23:09:39', NULL, NULL),
(160, 11, 160, '2022-02-21', 41040, 45600, 1, '2020-05-15 23:09:39', NULL, NULL),
(161, 11, 161, '2022-02-21', 30420, 33800, 1, '2020-05-15 23:09:39', NULL, NULL),
(162, 11, 162, '2022-02-21', 12420, 13800, 1, '2020-05-15 23:09:39', NULL, NULL),
(163, 11, 163, '2022-02-21', 15390, 17100, 1, '2020-05-15 23:09:39', NULL, NULL),
(164, 11, 164, '2022-02-21', 7290, 8100, 1, '2020-05-15 23:09:39', NULL, NULL),
(165, 11, 165, '2022-02-21', 7290, 8100, 1, '2020-05-15 23:09:39', NULL, NULL),
(166, 11, 166, '2022-02-21', 7290, 8100, 1, '2020-05-15 23:09:39', NULL, NULL),
(167, 11, 167, '2022-02-21', 7290, 8100, 1, '2020-05-15 23:09:39', NULL, NULL),
(168, 11, 168, '2022-02-21', 7290, 8100, 1, '2020-05-15 23:09:39', NULL, NULL),
(169, 11, 169, '2022-02-21', 29340, 32600, 1, '2020-05-15 23:09:39', NULL, NULL),
(170, 11, 170, '2022-02-21', 33840, 37600, 1, '2020-05-15 23:09:39', NULL, NULL),
(171, 11, 171, '2022-02-21', 22680, 25200, 1, '2020-05-15 23:09:39', NULL, NULL),
(172, 11, 172, '2022-02-21', 45360, 50400, 1, '2020-05-15 23:09:39', NULL, NULL),
(173, 11, 173, '2022-02-21', 39330, 43700, 1, '2020-05-15 23:09:39', NULL, NULL),
(174, 11, 174, '2022-02-21', 33840, 37600, 1, '2020-05-15 23:09:39', NULL, NULL),
(175, 11, 175, '2022-02-21', 44460, 49400, 1, '2020-05-15 23:09:39', NULL, NULL),
(176, 11, 176, '2022-02-21', 20340, 22600, 1, '2020-05-15 23:09:39', NULL, NULL),
(177, 11, 177, '2022-02-21', 19260, 21400, 1, '2020-05-15 23:09:39', NULL, NULL),
(178, 11, 178, '2022-02-21', 19260, 21400, 1, '2020-05-15 23:09:39', NULL, NULL),
(179, 11, 179, '2022-02-21', 36090, 40100, 1, '2020-05-15 23:09:39', NULL, NULL),
(180, 11, 180, '2022-02-21', 19260, 21400, 1, '2020-05-15 23:09:39', NULL, NULL),
(181, 11, 181, '2022-02-21', 19260, 21400, 1, '2020-05-15 23:09:39', NULL, NULL),
(182, 11, 182, '2022-02-21', 19260, 21400, 1, '2020-05-15 23:09:39', NULL, NULL),
(183, 11, 183, '2022-02-21', 19260, 21400, 1, '2020-05-15 23:09:39', NULL, NULL),
(184, 11, 184, '2022-02-21', 22140, 24600, 1, '2020-05-15 23:09:39', NULL, NULL),
(185, 11, 185, '2022-02-21', 19260, 21400, 1, '2020-05-15 23:09:39', NULL, NULL),
(186, 11, 186, '2022-02-21', 22140, 24600, 1, '2020-05-15 23:09:39', NULL, NULL),
(187, 11, 187, '2022-02-21', 47400, 57000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:36:46'),
(188, 11, 188, '2022-02-21', 12330, 13700, 1, '2020-05-15 23:09:39', NULL, NULL),
(189, 11, 189, '2022-02-21', 42660, 47400, 1, '2020-05-15 23:09:39', NULL, NULL),
(190, 11, 190, '2022-02-21', 13140, 14600, 1, '2020-05-15 23:09:39', NULL, NULL),
(191, 11, 191, '2022-02-21', 23760, 26400, 1, '2020-05-15 23:09:39', NULL, NULL),
(192, 11, 192, '2022-02-21', 11070, 12300, 1, '2020-05-15 23:09:39', NULL, NULL),
(193, 11, 193, '2022-02-21', 38790, 43100, 1, '2020-05-15 23:09:39', NULL, NULL),
(194, 11, 194, '2022-02-21', 21800, 26300, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:09:03'),
(195, 11, 195, '2022-02-21', 21400, 26000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:21:54'),
(196, 11, 196, '2022-02-21', 19260, 21400, 1, '2020-05-15 23:09:39', NULL, NULL),
(197, 11, 197, '2022-02-21', 8010, 8900, 1, '2020-05-15 23:09:39', NULL, NULL),
(198, 11, 198, '2022-02-21', 21600, 26000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:23:38'),
(199, 11, 199, '2022-02-21', 19260, 21400, 1, '2020-05-15 23:09:39', NULL, NULL),
(200, 11, 200, '2022-02-21', 19260, 21400, 1, '2020-05-15 23:09:39', NULL, NULL),
(201, 11, 201, '2022-02-21', 36270, 40300, 1, '2020-05-15 23:09:39', NULL, NULL),
(202, 11, 202, '2022-02-21', 38340, 42600, 1, '2020-05-15 23:09:39', NULL, NULL),
(203, 11, 203, '2022-02-21', 22140, 24600, 1, '2020-05-15 23:09:39', NULL, NULL),
(204, 11, 204, '2022-02-21', 10400, 12500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:01:27'),
(205, 11, 205, '2022-02-21', 24800, 28500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 11:36:54'),
(206, 11, 206, '2022-02-21', 10400, 12500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:01:09'),
(207, 11, 207, '2022-02-21', 41850, 46500, 1, '2020-05-15 23:09:39', NULL, NULL),
(208, 11, 208, '2022-02-21', 21330, 23700, 1, '2020-05-15 23:09:39', NULL, NULL),
(209, 11, 209, '2022-02-21', 21330, 23700, 1, '2020-05-15 23:09:39', NULL, NULL),
(210, 11, 210, '2022-02-21', 22140, 24600, 1, '2020-05-15 23:09:39', NULL, NULL),
(211, 11, 211, '2022-02-21', 21780, 24200, 1, '2020-05-15 23:09:39', NULL, NULL),
(212, 11, 212, '2022-02-21', 39330, 43700, 1, '2020-05-15 23:09:39', NULL, NULL),
(213, 11, 213, '2022-02-21', 46900, 56000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:27:51'),
(214, 11, 214, '2022-02-21', 21330, 23700, 1, '2020-05-15 23:09:39', NULL, NULL),
(215, 11, 215, '2022-02-21', 22140, 29500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:26:09'),
(216, 11, 216, '2022-02-21', 9270, 10300, 1, '2020-05-15 23:09:39', NULL, NULL),
(217, 11, 217, '2022-02-21', 40590, 45100, 1, '2020-05-15 23:09:39', NULL, NULL),
(218, 11, 218, '2022-02-21', 21400, 25600, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:17:42'),
(219, 11, 219, '2022-02-21', 22590, 25100, 1, '2020-05-15 23:09:39', NULL, NULL),
(220, 11, 220, '2022-02-21', 10170, 11300, 1, '2020-05-15 23:09:39', NULL, NULL),
(221, 11, 221, '2022-02-21', 37080, 41200, 1, '2020-05-15 23:09:39', NULL, NULL),
(222, 11, 222, '2022-02-21', 22140, 24600, 1, '2020-05-15 23:09:39', NULL, NULL),
(223, 11, 223, '2022-02-21', 36090, 40100, 1, '2020-05-15 23:09:39', NULL, NULL),
(224, 11, 224, '2022-02-21', 18450, 20500, 1, '2020-05-15 23:09:39', NULL, NULL),
(225, 11, 225, '2022-02-21', 18090, 20100, 1, '2020-05-15 23:09:39', NULL, NULL),
(226, 11, 226, '2022-02-21', 28710, 31900, 1, '2020-05-15 23:09:39', NULL, NULL),
(227, 11, 227, '2022-02-21', 18090, 20100, 1, '2020-05-15 23:09:39', NULL, NULL),
(228, 11, 228, '2022-02-21', 37080, 41200, 1, '2020-05-15 23:09:39', NULL, NULL),
(229, 11, 229, '2022-02-21', 37080, 41200, 1, '2020-05-15 23:09:39', NULL, NULL),
(230, 11, 230, '2022-02-21', 6210, 6900, 1, '2020-05-15 23:09:39', NULL, NULL),
(231, 11, 231, '2022-02-21', 14400, 16000, 1, '2020-05-15 23:09:39', NULL, NULL),
(232, 11, 232, '2022-02-21', 6210, 6900, 1, '2020-05-15 23:09:39', NULL, NULL),
(233, 11, 233, '2022-02-21', 14400, 16000, 1, '2020-05-15 23:09:39', NULL, NULL),
(234, 11, 234, '2022-02-21', 6210, 6900, 1, '2020-05-15 23:09:39', NULL, NULL),
(235, 11, 235, '2022-02-21', 14400, 16000, 1, '2020-05-15 23:09:39', NULL, NULL),
(236, 11, 236, '2022-02-21', 6390, 7100, 1, '2020-05-15 23:09:39', NULL, NULL),
(237, 11, 237, '2022-02-21', 15030, 16700, 1, '2020-05-15 23:09:39', NULL, NULL),
(238, 11, 238, '2022-02-21', 7020, 7800, 1, '2020-05-15 23:09:39', NULL, NULL),
(239, 11, 239, '2022-02-21', 15570, 17300, 1, '2020-05-15 23:09:39', NULL, NULL),
(240, 11, 240, '2022-02-21', 7020, 7800, 1, '2020-05-15 23:09:39', NULL, NULL),
(241, 11, 241, '2022-02-21', 15570, 17300, 1, '2020-05-15 23:09:39', NULL, NULL),
(242, 11, 242, '2022-02-21', 29700, 33000, 1, '2020-05-15 23:09:39', NULL, NULL),
(243, 11, 243, '2022-02-21', 29700, 33000, 1, '2020-05-15 23:09:39', NULL, NULL),
(244, 11, 244, '2022-02-21', 34700, 40000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 12:03:32'),
(245, 11, 245, '2022-02-21', 30330, 33700, 1, '2020-05-15 23:09:39', NULL, NULL),
(246, 11, 246, '2022-02-21', 30330, 33700, 1, '2020-05-15 23:09:39', NULL, NULL),
(247, 11, 247, '2022-02-21', 32670, 36300, 1, '2020-05-15 23:09:39', NULL, NULL),
(248, 11, 248, '2022-02-21', 34290, 38100, 1, '2020-05-15 23:09:39', NULL, NULL),
(249, 11, 249, '2022-02-21', 32670, 36300, 1, '2020-05-15 23:09:39', NULL, NULL),
(250, 11, 250, '2022-02-21', 42000, 48500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 12:17:19'),
(251, 11, 251, '2022-02-21', 30330, 33700, 1, '2020-05-15 23:09:39', NULL, NULL),
(252, 11, 252, '2022-02-21', 28300, 32500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 12:08:27'),
(253, 11, 253, '2022-02-21', 26550, 29500, 1, '2020-05-15 23:09:39', NULL, NULL),
(254, 11, 254, '2022-02-21', 29790, 33100, 1, '2020-05-15 23:09:39', NULL, NULL),
(255, 11, 255, '2022-02-21', 15570, 17300, 1, '2020-05-15 23:09:39', NULL, NULL),
(256, 11, 256, '2022-02-21', 23760, 26400, 1, '2020-05-15 23:09:39', NULL, NULL),
(257, 11, 257, '2022-02-21', 23760, 26400, 1, '2020-05-15 23:09:39', NULL, NULL),
(258, 11, 258, '2022-02-21', 11970, 13300, 1, '2020-05-15 23:09:39', NULL, NULL),
(259, 11, 259, '2022-02-21', 9540, 10600, 1, '2020-05-15 23:09:39', NULL, NULL),
(260, 11, 260, '2022-02-21', 18540, 20600, 1, '2020-05-15 23:09:39', NULL, NULL),
(261, 11, 261, '2022-02-21', 35190, 39100, 1, '2020-05-15 23:09:39', NULL, NULL),
(262, 11, 262, '2022-02-21', 9540, 10600, 1, '2020-05-15 23:09:39', NULL, NULL),
(263, 11, 263, '2022-02-21', 20600, 24000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 12:14:20'),
(264, 11, 264, '2022-02-21', 35190, 39100, 1, '2020-05-15 23:09:39', NULL, NULL),
(265, 11, 265, '2022-02-21', 10710, 11900, 1, '2020-05-15 23:09:39', NULL, NULL),
(266, 11, 266, '2022-02-21', 2520, 2800, 1, '2020-05-15 23:09:39', NULL, NULL),
(267, 11, 267, '2022-02-21', 26100, 29000, 1, '2020-05-15 23:09:39', NULL, NULL),
(268, 11, 268, '2022-02-21', 26910, 29900, 1, '2020-05-15 23:09:39', NULL, NULL),
(269, 11, 269, '2022-02-21', 24570, 27300, 1, '2020-05-15 23:09:39', NULL, NULL),
(270, 11, 270, '2022-02-21', 24210, 26900, 1, '2020-05-15 23:09:39', NULL, NULL),
(271, 11, 271, '2022-02-21', 20430, 22700, 1, '2020-05-15 23:09:39', NULL, NULL),
(272, 11, 272, '2022-02-21', 20790, 23100, 1, '2020-05-15 23:09:39', NULL, NULL),
(273, 11, 273, '2022-02-21', 37710, 41900, 1, '2020-05-15 23:09:39', NULL, NULL),
(274, 11, 274, '2022-02-21', 25020, 27800, 1, '2020-05-15 23:09:39', NULL, NULL),
(275, 11, 275, '2022-02-21', 27360, 30400, 1, '2020-05-15 23:09:39', NULL, NULL),
(276, 11, 276, '2022-02-21', 23940, 26600, 1, '2020-05-15 23:09:39', NULL, NULL),
(277, 11, 277, '2022-02-21', 26010, 28900, 1, '2020-05-15 23:09:39', NULL, NULL),
(278, 11, 278, '2022-02-21', 27360, 30400, 1, '2020-05-15 23:09:39', NULL, NULL),
(279, 11, 279, '2022-02-21', 24210, 26900, 1, '2020-05-15 23:09:39', NULL, NULL),
(280, 11, 280, '2022-02-21', 23580, 26200, 1, '2020-05-15 23:09:39', NULL, NULL),
(281, 11, 281, '2022-02-21', 23400, 26000, 1, '2020-05-15 23:09:39', NULL, NULL),
(282, 11, 282, '2022-02-21', 25470, 28300, 1, '2020-05-15 23:09:39', NULL, NULL),
(283, 11, 283, '2022-02-21', 20700, 23000, 1, '2020-05-15 23:09:39', NULL, NULL),
(284, 11, 284, '2022-02-21', 28260, 31400, 1, '2020-05-15 23:09:39', NULL, NULL),
(285, 11, 285, '2022-02-21', 19980, 22200, 1, '2020-05-15 23:09:39', NULL, NULL),
(286, 11, 286, '2022-02-21', 19980, 22200, 1, '2020-05-15 23:09:39', NULL, NULL),
(287, 11, 287, '2022-02-21', 18450, 20500, 1, '2020-05-15 23:09:39', NULL, NULL),
(288, 11, 288, '2022-02-21', 18450, 20500, 1, '2020-05-15 23:09:39', NULL, NULL),
(289, 11, 289, '2022-02-21', 13230, 14700, 1, '2020-05-15 23:09:39', NULL, NULL),
(290, 11, 290, '2022-02-21', 30420, 33800, 1, '2020-05-15 23:09:39', NULL, NULL),
(291, 11, 291, '2022-02-21', 32040, 35600, 1, '2020-05-15 23:09:39', NULL, NULL),
(292, 11, 292, '2022-02-21', 7110, 7900, 1, '2020-05-15 23:09:39', NULL, NULL),
(293, 11, 293, '2022-02-21', 16920, 18800, 1, '2020-05-15 23:09:39', NULL, NULL),
(294, 11, 294, '2022-02-21', 5130, 5700, 1, '2020-05-15 23:09:39', NULL, NULL),
(295, 11, 295, '2022-02-21', 12150, 13500, 1, '2020-05-15 23:09:39', NULL, NULL),
(296, 11, 296, '2022-02-21', 11520, 12800, 1, '2020-05-15 23:09:39', NULL, NULL),
(297, 11, 297, '2022-02-21', 6030, 6700, 1, '2020-05-15 23:09:39', NULL, NULL),
(298, 11, 298, '2022-02-21', 14310, 15900, 1, '2020-05-15 23:09:39', NULL, NULL),
(299, 11, 299, '2022-02-21', 7380, 8200, 1, '2020-05-15 23:09:39', NULL, NULL),
(300, 11, 300, '2022-02-21', 17730, 19700, 1, '2020-05-15 23:09:39', NULL, NULL),
(301, 11, 301, '2022-02-21', 8370, 9300, 1, '2020-05-15 23:09:39', NULL, NULL),
(302, 11, 302, '2022-02-21', 20160, 22400, 1, '2020-05-15 23:09:39', NULL, NULL),
(303, 11, 303, '2022-02-21', 8370, 9300, 1, '2020-05-15 23:09:39', NULL, NULL),
(304, 11, 304, '2022-02-21', 20160, 22400, 1, '2020-05-15 23:09:39', NULL, NULL),
(305, 11, 305, '2022-02-21', 8370, 9300, 1, '2020-05-15 23:09:39', NULL, NULL),
(306, 11, 306, '2022-02-21', 20160, 22400, 1, '2020-05-15 23:09:39', NULL, NULL),
(307, 11, 307, '2022-02-21', 22400, 26900, 1, '2020-05-15 23:09:39', 1, '2022-04-01 07:45:42'),
(308, 11, 308, '2022-02-21', 20160, 22400, 1, '2020-05-15 23:09:39', NULL, NULL),
(309, 11, 309, '2022-02-21', 8370, 9300, 1, '2020-05-15 23:09:39', NULL, NULL),
(310, 11, 310, '2022-02-21', 20160, 22400, 1, '2020-05-15 23:09:39', NULL, NULL),
(311, 11, 311, '2022-02-21', 11970, 13300, 1, '2020-05-15 23:09:39', NULL, NULL),
(312, 11, 312, '2022-02-21', 10080, 11200, 1, '2020-05-15 23:09:39', NULL, NULL),
(313, 11, 313, '2022-02-21', 18450, 20500, 1, '2020-05-15 23:09:39', NULL, NULL),
(314, 11, 314, '2022-02-21', 35730, 39700, 1, '2020-05-15 23:09:39', NULL, NULL),
(315, 11, 315, '2022-02-21', 12330, 13700, 1, '2020-05-15 23:09:39', NULL, NULL),
(316, 11, 316, '2022-02-21', 17190, 19100, 1, '2020-05-15 23:09:39', NULL, NULL),
(317, 11, 317, '2022-02-21', 18810, 20900, 1, '2020-05-15 23:09:39', NULL, NULL),
(318, 11, 318, '2022-02-21', 10710, 11900, 1, '2020-05-15 23:09:39', NULL, NULL),
(319, 11, 319, '2022-02-21', 39330, 43700, 1, '2020-05-15 23:09:39', NULL, NULL),
(320, 11, 320, '2022-02-21', 9450, 10500, 1, '2020-05-15 23:09:39', NULL, NULL),
(321, 11, 321, '2022-02-21', 18450, 20500, 1, '2020-05-15 23:09:39', NULL, NULL),
(322, 11, 322, '2022-02-21', 36000, 40000, 1, '2020-05-15 23:09:39', NULL, NULL),
(323, 11, 323, '2022-02-21', 14310, 15900, 1, '2020-05-15 23:09:39', NULL, NULL),
(324, 11, 324, '2022-02-21', 15570, 17300, 1, '2020-05-15 23:09:39', NULL, NULL),
(325, 11, 325, '2022-02-21', 15570, 17300, 1, '2020-05-15 23:09:39', NULL, NULL),
(326, 11, 326, '2022-02-21', 7830, 8700, 1, '2020-05-15 23:09:39', NULL, NULL),
(327, 11, 327, '2022-02-21', 15030, 16700, 1, '2020-05-15 23:09:39', NULL, NULL),
(328, 11, 328, '2022-02-21', 15570, 17300, 1, '2020-05-15 23:09:39', NULL, NULL),
(329, 11, 329, '2022-02-21', 15570, 17300, 1, '2020-05-15 23:09:39', NULL, NULL),
(330, 11, 330, '2022-02-21', 15570, 17300, 1, '2020-05-15 23:09:39', NULL, NULL),
(331, 11, 331, '2022-02-21', 20520, 22800, 1, '2020-05-15 23:09:39', NULL, NULL),
(332, 11, 332, '2022-02-21', 40950, 45500, 1, '2020-05-15 23:09:39', NULL, NULL),
(333, 11, 333, '2022-02-21', 21330, 23700, 1, '2020-05-15 23:09:39', NULL, NULL),
(334, 11, 334, '2022-02-21', 40950, 45500, 1, '2020-05-15 23:09:39', NULL, NULL),
(335, 11, 335, '2022-02-21', 20700, 23000, 1, '2020-05-15 23:09:39', NULL, NULL),
(336, 11, 336, '2022-02-21', 21690, 24100, 1, '2020-05-15 23:09:39', NULL, NULL),
(337, 11, 337, '2022-02-21', 18270, 20300, 1, '2020-05-15 23:09:39', NULL, NULL),
(338, 11, 338, '2022-02-21', 15570, 17300, 1, '2020-05-15 23:09:39', NULL, NULL),
(339, 11, 339, '2022-02-21', 20520, 22800, 1, '2020-05-15 23:09:39', NULL, NULL),
(340, 11, 340, '2022-02-21', 15570, 17300, 1, '2020-05-15 23:09:39', NULL, NULL),
(341, 11, 341, '2022-02-21', 18000, 20000, 1, '2020-05-15 23:09:39', NULL, NULL),
(342, 11, 342, '2022-02-21', 15570, 17300, 1, '2020-05-15 23:09:39', NULL, NULL),
(343, 11, 343, '2022-02-21', 11070, 12300, 1, '2020-05-15 23:09:39', NULL, NULL),
(344, 11, 344, '2022-02-21', 38520, 42800, 1, '2020-05-15 23:09:39', NULL, NULL),
(345, 11, 345, '2022-02-21', 21330, 23700, 1, '2020-05-15 23:09:39', NULL, NULL),
(346, 11, 346, '2022-02-21', 40140, 44600, 1, '2020-05-15 23:09:39', NULL, NULL),
(347, 11, 347, '2022-02-21', 18900, 21000, 1, '2020-05-15 23:09:39', NULL, NULL),
(348, 11, 348, '2022-02-21', 18900, 21000, 1, '2020-05-15 23:09:39', NULL, NULL),
(349, 11, 349, '2022-02-21', 22950, 25500, 1, '2020-05-15 23:09:39', NULL, NULL),
(350, 11, 350, '2022-02-21', 18270, 20300, 1, '2020-05-15 23:09:39', NULL, NULL),
(351, 11, 351, '2022-02-21', 18900, 21000, 1, '2020-05-15 23:09:39', NULL, NULL),
(352, 11, 352, '2022-02-21', 4140, 4600, 1, '2020-05-15 23:09:39', NULL, NULL),
(353, 11, 353, '2022-02-21', 3960, 4400, 1, '2020-05-15 23:09:39', NULL, NULL),
(354, 11, 354, '2022-02-21', 8910, 9900, 1, '2020-05-15 23:09:39', NULL, NULL),
(355, 11, 355, '2022-02-21', 3960, 4400, 1, '2020-05-15 23:09:39', NULL, NULL),
(356, 11, 356, '2022-02-21', 11520, 12800, 1, '2020-05-15 23:09:39', NULL, NULL),
(357, 11, 357, '2022-02-21', 64620, 71800, 1, '2020-05-15 23:09:39', NULL, NULL),
(358, 11, 358, '2022-02-21', 4950, 5500, 1, '2020-05-15 23:09:39', NULL, NULL),
(359, 11, 359, '2022-02-21', 4500, 5000, 1, '2020-05-15 23:09:39', NULL, NULL),
(360, 11, 360, '2022-02-21', 9630, 10700, 1, '2020-05-15 23:09:39', NULL, NULL),
(361, 11, 361, '2022-02-21', 4410, 4900, 1, '2020-05-15 23:09:39', NULL, NULL),
(362, 11, 362, '2022-02-21', 16920, 18800, 1, '2020-05-15 23:09:39', NULL, NULL),
(363, 11, 363, '2022-02-21', 79920, 88800, 1, '2020-05-15 23:09:39', NULL, NULL),
(364, 11, 364, '2022-02-21', 7020, 7800, 1, '2020-05-15 23:09:39', NULL, NULL),
(365, 11, 365, '2022-02-21', 23760, 26400, 1, '2020-05-15 23:09:39', NULL, NULL),
(366, 11, 366, '2022-02-21', 7020, 7800, 1, '2020-05-15 23:09:39', NULL, NULL),
(367, 11, 367, '2022-02-21', 23040, 25600, 1, '2020-05-15 23:09:39', NULL, NULL),
(368, 11, 368, '2022-02-21', 3600, 4000, 1, '2020-05-15 23:09:39', NULL, NULL),
(369, 11, 369, '2022-02-21', 5940, 6600, 1, '2020-05-15 23:09:39', NULL, NULL),
(370, 11, 370, '2022-02-21', 3600, 4000, 1, '2020-05-15 23:09:39', NULL, NULL),
(371, 11, 371, '2022-02-21', 22320, 24800, 1, '2020-05-15 23:09:39', NULL, NULL),
(372, 11, 372, '2022-02-21', 3600, 4000, 1, '2020-05-15 23:09:39', NULL, NULL),
(373, 11, 373, '2022-02-21', 5940, 6600, 1, '2020-05-15 23:09:39', NULL, NULL),
(374, 11, 374, '2022-02-21', 3690, 4100, 1, '2020-05-15 23:09:39', NULL, NULL),
(375, 11, 375, '2022-02-21', 25920, 28800, 1, '2020-05-15 23:09:39', NULL, NULL),
(376, 11, 376, '2022-02-21', 15210, 16900, 1, '2020-05-15 23:09:39', NULL, NULL),
(377, 11, 377, '2022-02-21', 9270, 10300, 1, '2020-05-15 23:09:39', NULL, NULL),
(378, 11, 378, '2022-02-21', 21420, 23800, 1, '2020-05-15 23:09:39', NULL, NULL),
(379, 11, 379, '2022-02-21', 11700, 13000, 1, '2020-05-15 23:09:39', NULL, NULL),
(380, 11, 380, '2022-02-21', 6840, 7600, 1, '2020-05-15 23:09:39', NULL, NULL),
(381, 11, 381, '2022-02-21', 36270, 40300, 1, '2020-05-15 23:09:39', NULL, NULL),
(382, 11, 382, '2022-02-21', 19620, 21800, 1, '2020-05-15 23:09:39', NULL, NULL),
(383, 11, 383, '2022-02-21', 12780, 14200, 1, '2020-05-15 23:09:39', NULL, NULL),
(384, 11, 384, '2022-02-21', 31050, 34500, 1, '2020-05-15 23:09:39', NULL, NULL),
(385, 11, 385, '2022-02-21', 17910, 19900, 1, '2020-05-15 23:09:39', NULL, NULL),
(386, 11, 386, '2022-02-21', 10620, 11800, 1, '2020-05-15 23:09:39', NULL, NULL),
(387, 11, 387, '2022-02-21', 26460, 29400, 1, '2020-05-15 23:09:39', NULL, NULL),
(388, 11, 388, '2022-02-21', 14490, 16100, 1, '2020-05-15 23:09:39', NULL, NULL),
(389, 11, 389, '2022-02-21', 7740, 8600, 1, '2020-05-15 23:09:39', NULL, NULL),
(390, 11, 390, '2022-02-21', 19170, 21300, 1, '2020-05-15 23:09:39', NULL, NULL),
(391, 11, 391, '2022-02-21', 19170, 21300, 1, '2020-05-15 23:09:39', NULL, NULL),
(392, 11, 392, '2022-02-21', 19170, 21300, 1, '2020-05-15 23:09:39', NULL, NULL),
(393, 11, 393, '2022-02-21', 41400, 46000, 1, '2020-05-15 23:09:39', NULL, NULL),
(394, 11, 394, '2022-02-21', 41400, 46000, 1, '2020-05-15 23:09:39', NULL, NULL),
(395, 11, 395, '2022-02-21', 17550, 19500, 1, '2020-05-15 23:09:39', NULL, NULL),
(396, 11, 396, '2022-02-21', 18000, 20000, 1, '2020-05-15 23:09:39', NULL, NULL),
(397, 11, 397, '2022-02-21', 17550, 19500, 1, '2020-05-15 23:09:39', NULL, NULL),
(398, 11, 398, '2022-02-21', 21600, 24000, 1, '2020-05-15 23:09:39', NULL, NULL),
(399, 11, 399, '2022-02-21', 23100, 27000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 10:42:30'),
(400, 11, 400, '2022-02-21', 25110, 27900, 1, '2020-05-15 23:09:39', NULL, NULL),
(401, 11, 401, '2022-02-21', 18090, 20100, 1, '2020-05-15 23:09:39', NULL, NULL),
(402, 11, 402, '2022-02-21', 58230, 64700, 1, '2020-05-15 23:09:39', NULL, NULL),
(403, 11, 403, '2022-02-21', 7020, 7800, 1, '2020-05-15 23:09:39', NULL, NULL),
(404, 11, 404, '2022-02-21', 16200, 18000, 1, '2020-05-15 23:09:39', NULL, NULL),
(405, 11, 405, '2022-02-21', 11340, 12600, 1, '2020-05-15 23:09:39', NULL, NULL),
(406, 11, 406, '2022-02-21', 11340, 12600, 1, '2020-05-15 23:09:39', NULL, NULL),
(407, 11, 407, '2022-02-21', 11340, 12600, 1, '2020-05-15 23:09:39', NULL, NULL),
(408, 11, 408, '2022-02-21', 11340, 12600, 1, '2020-05-15 23:09:39', NULL, NULL),
(409, 11, 409, '2022-02-21', 21420, 23800, 1, '2020-05-15 23:09:39', NULL, NULL),
(410, 11, 410, '2022-02-21', 11340, 12600, 1, '2020-05-15 23:09:39', NULL, NULL),
(411, 11, 411, '2022-02-21', 21420, 23800, 1, '2020-05-15 23:09:39', NULL, NULL),
(412, 11, 412, '2022-02-21', 10530, 11700, 1, '2020-05-15 23:09:39', NULL, NULL),
(413, 11, 413, '2022-02-21', 19710, 21900, 1, '2020-05-15 23:09:39', NULL, NULL),
(414, 11, 414, '2022-02-21', 20160, 22400, 1, '2020-05-15 23:09:39', NULL, NULL),
(415, 11, 415, '2022-02-21', 9000, 10000, 1, '2020-05-15 23:09:39', NULL, NULL),
(416, 11, 416, '2022-02-21', 17730, 19700, 1, '2020-05-15 23:09:39', NULL, NULL),
(417, 11, 417, '2022-02-21', 35190, 39100, 1, '2020-05-15 23:09:39', NULL, NULL),
(418, 11, 418, '2022-02-21', 6750, 7500, 1, '2020-05-15 23:09:39', NULL, NULL),
(419, 11, 419, '2022-02-21', 15930, 17700, 1, '2020-05-15 23:09:39', NULL, NULL),
(420, 11, 420, '2022-02-21', 9000, 10000, 1, '2020-05-15 23:09:39', NULL, NULL),
(421, 11, 421, '2022-02-21', 9000, 10000, 1, '2020-05-15 23:09:39', NULL, NULL),
(422, 11, 422, '2022-02-21', 9000, 10000, 1, '2020-05-15 23:09:39', NULL, NULL),
(423, 11, 423, '2022-02-21', 20520, 22800, 1, '2020-05-15 23:09:39', NULL, NULL),
(424, 11, 424, '2022-02-21', 14940, 16600, 1, '2020-05-15 23:09:39', NULL, NULL),
(425, 11, 425, '2022-02-21', 22590, 25100, 1, '2020-05-15 23:09:39', NULL, NULL),
(426, 11, 426, '2022-02-21', 17820, 19800, 1, '2020-05-15 23:09:39', NULL, NULL),
(427, 11, 427, '2022-02-21', 16200, 18000, 1, '2020-05-15 23:09:39', NULL, NULL),
(428, 11, 428, '2022-02-21', 14310, 15900, 1, '2020-05-15 23:09:39', NULL, NULL),
(429, 11, 429, '2022-02-21', 30150, 33500, 1, '2020-05-15 23:09:39', NULL, NULL),
(430, 11, 430, '2022-02-21', 20520, 22800, 1, '2020-05-15 23:09:39', NULL, NULL),
(431, 11, 431, '2022-02-21', 5760, 6400, 1, '2020-05-15 23:09:39', NULL, NULL),
(432, 11, 432, '2022-02-21', 13140, 14600, 1, '2020-05-15 23:09:39', NULL, NULL),
(433, 11, 433, '2022-02-21', 5760, 6400, 1, '2020-05-15 23:09:39', NULL, NULL),
(434, 11, 434, '2022-02-21', 5760, 6400, 1, '2020-05-15 23:09:39', NULL, NULL),
(435, 11, 435, '2022-02-21', 7560, 8400, 1, '2020-05-15 23:09:39', NULL, NULL),
(436, 11, 436, '2022-02-21', 16740, 18600, 1, '2020-05-15 23:09:39', NULL, NULL),
(437, 11, 437, '2022-02-21', 6120, 6800, 1, '2020-05-15 23:09:39', NULL, NULL),
(438, 11, 438, '2022-02-21', 14040, 15600, 1, '2020-05-15 23:09:39', NULL, NULL),
(439, 11, 439, '2022-02-21', 13500, 15000, 1, '2020-05-15 23:09:39', NULL, NULL),
(440, 11, 440, '2022-02-21', 13500, 15000, 1, '2020-05-15 23:09:39', NULL, NULL),
(441, 11, 441, '2022-02-21', 13500, 15000, 1, '2020-05-15 23:09:39', NULL, NULL),
(442, 11, 442, '2022-02-21', 17820, 19800, 1, '2020-05-15 23:09:39', NULL, NULL),
(443, 11, 443, '2022-02-21', 6480, 7200, 1, '2020-05-15 23:09:39', NULL, NULL),
(444, 11, 444, '2022-02-21', 12510, 13900, 1, '2020-05-15 23:09:39', NULL, NULL),
(445, 11, 445, '2022-02-21', 22500, 25000, 1, '2020-05-15 23:09:39', NULL, NULL),
(446, 11, 446, '2022-02-21', 15660, 17400, 1, '2020-05-15 23:09:39', NULL, NULL),
(447, 11, 447, '2022-02-21', 14130, 15700, 1, '2020-05-15 23:09:39', NULL, NULL),
(448, 11, 448, '2022-02-21', 6930, 7700, 1, '2020-05-15 23:09:39', NULL, NULL),
(449, 11, 449, '2022-02-21', 29160, 32400, 1, '2020-05-15 23:09:39', NULL, NULL),
(450, 11, 450, '2022-02-21', 6120, 6800, 1, '2020-05-15 23:09:39', NULL, NULL),
(451, 11, 451, '2022-02-21', 23580, 26200, 1, '2020-05-15 23:09:39', NULL, NULL),
(452, 11, 452, '2022-02-21', 19440, 21600, 1, '2020-05-15 23:09:39', NULL, NULL),
(453, 11, 453, '2022-02-21', 19620, 21800, 1, '2020-05-15 23:09:39', NULL, NULL),
(454, 11, 454, '2022-02-21', 9000, 10000, 1, '2020-05-15 23:09:39', NULL, NULL),
(455, 11, 455, '2022-02-21', 9900, 11000, 1, '2020-05-15 23:09:39', NULL, NULL),
(456, 11, 456, '2022-02-21', 6030, 6700, 1, '2020-05-15 23:09:39', NULL, NULL),
(457, 11, 457, '2022-02-21', 6390, 7100, 1, '2020-05-15 23:09:39', NULL, NULL),
(458, 11, 458, '2022-02-21', 21330, 23700, 1, '2020-05-15 23:09:39', NULL, NULL),
(459, 11, 459, '2022-02-21', 22230, 24700, 1, '2020-05-15 23:09:39', NULL, NULL),
(460, 11, 460, '2022-02-21', 22230, 24700, 1, '2020-05-15 23:09:39', NULL, NULL),
(461, 11, 461, '2022-02-21', 9090, 10100, 1, '2020-05-15 23:09:39', NULL, NULL),
(462, 11, 462, '2022-02-21', 9090, 10100, 1, '2020-05-15 23:09:39', NULL, NULL),
(463, 11, 463, '2022-02-21', 9090, 10100, 1, '2020-05-15 23:09:39', NULL, NULL),
(464, 11, 464, '2022-02-21', 11970, 13300, 1, '2020-05-15 23:09:39', NULL, NULL),
(465, 11, 465, '2022-02-21', 18270, 20300, 1, '2020-05-15 23:09:39', NULL, NULL),
(466, 11, 466, '2022-02-21', 10710, 11900, 1, '2020-05-15 23:09:39', NULL, NULL),
(467, 11, 467, '2022-02-21', 19080, 21200, 1, '2020-05-15 23:09:39', NULL, NULL),
(468, 11, 468, '2022-02-21', 12600, 14000, 1, '2020-05-15 23:09:39', NULL, NULL),
(469, 11, 469, '2022-02-21', 12600, 14000, 1, '2020-05-15 23:09:39', NULL, NULL),
(470, 11, 470, '2022-02-21', 12600, 14000, 1, '2020-05-15 23:09:39', NULL, NULL),
(471, 11, 471, '2022-02-21', 12600, 14000, 1, '2020-05-15 23:09:39', NULL, NULL),
(472, 11, 472, '2022-02-21', 12600, 14000, 1, '2020-05-15 23:09:39', NULL, NULL),
(473, 11, 473, '2022-02-21', 12600, 14000, 1, '2020-05-15 23:09:39', NULL, NULL),
(474, 11, 474, '2022-02-21', 7920, 8800, 1, '2020-05-15 23:09:39', NULL, NULL),
(475, 11, 475, '2022-02-21', 7920, 8800, 1, '2020-05-15 23:09:39', NULL, NULL),
(476, 11, 476, '2022-02-21', 7920, 8800, 1, '2020-05-15 23:09:39', NULL, NULL),
(477, 11, 477, '2022-02-21', 7920, 8800, 1, '2020-05-15 23:09:39', NULL, NULL),
(478, 11, 478, '2022-02-21', 10620, 11800, 1, '2020-05-15 23:09:39', NULL, NULL),
(479, 11, 479, '2022-02-21', 27090, 30100, 1, '2020-05-15 23:09:39', NULL, NULL),
(480, 11, 480, '2022-02-21', 5580, 6200, 1, '2020-05-15 23:09:39', NULL, NULL),
(481, 11, 481, '2022-02-21', 13950, 15500, 1, '2020-05-15 23:09:39', NULL, NULL),
(482, 11, 482, '2022-02-21', 22050, 24500, 1, '2020-05-15 23:09:39', NULL, NULL),
(483, 11, 483, '2022-02-21', 22050, 24500, 1, '2020-05-15 23:09:39', NULL, NULL),
(484, 11, 484, '2022-02-21', 12150, 13500, 1, '2020-05-15 23:09:39', NULL, NULL),
(485, 11, 485, '2022-02-21', 12150, 13500, 1, '2020-05-15 23:09:39', NULL, NULL),
(486, 11, 486, '2022-02-21', 20250, 22500, 1, '2020-05-15 23:09:39', NULL, NULL),
(487, 11, 487, '2022-02-21', 9720, 10800, 1, '2020-05-15 23:09:39', NULL, NULL),
(488, 11, 488, '2022-02-21', 34470, 38300, 1, '2020-05-15 23:09:39', NULL, NULL),
(489, 11, 489, '2022-02-21', 27540, 30600, 1, '2020-05-15 23:09:39', NULL, NULL),
(490, 11, 490, '2022-02-21', 96750, 107500, 1, '2020-05-15 23:09:39', NULL, NULL),
(491, 11, 491, '2022-02-21', 41490, 46100, 1, '2020-05-15 23:09:39', NULL, NULL),
(492, 11, 492, '2022-02-21', 28620, 31800, 1, '2020-05-15 23:09:39', NULL, NULL),
(493, 11, 493, '2022-02-21', 10800, 12000, 1, '2020-05-15 23:09:39', NULL, NULL),
(494, 11, 494, '2022-02-21', 13140, 14600, 1, '2020-05-15 23:09:39', NULL, NULL),
(495, 11, 495, '2022-02-21', 7740, 8600, 1, '2020-05-15 23:09:39', NULL, NULL),
(496, 11, 496, '2022-02-21', 9000, 10000, 1, '2020-05-15 23:09:39', NULL, NULL),
(497, 11, 497, '2022-02-21', 7650, 8500, 1, '2020-05-15 23:09:39', NULL, NULL),
(498, 11, 498, '2022-02-21', 12780, 14200, 1, '2020-05-15 23:09:39', NULL, NULL),
(499, 11, 499, '2022-02-21', 9360, 10400, 1, '2020-05-15 23:09:39', NULL, NULL),
(500, 11, 500, '2022-02-21', 9360, 10400, 1, '2020-05-15 23:09:39', NULL, NULL),
(501, 11, 501, '2022-02-21', 9360, 10400, 1, '2020-05-15 23:09:39', NULL, NULL),
(502, 11, 502, '2022-02-21', 9360, 10400, 1, '2020-05-15 23:09:39', NULL, NULL),
(503, 11, 503, '2022-02-21', 10800, 12000, 1, '2020-05-15 23:09:39', NULL, NULL),
(504, 11, 504, '2022-02-21', 13050, 14500, 1, '2020-05-15 23:09:39', NULL, NULL),
(505, 11, 505, '2022-02-21', 7650, 8500, 1, '2020-05-15 23:09:39', NULL, NULL),
(506, 11, 506, '2022-02-21', 5040, 5600, 1, '2020-05-15 23:09:39', NULL, NULL),
(507, 11, 507, '2022-02-21', 9720, 10800, 1, '2020-05-15 23:09:39', NULL, NULL),
(508, 11, 508, '2022-02-21', 8550, 9500, 1, '2020-05-15 23:09:39', NULL, NULL),
(509, 11, 509, '2022-02-21', 9450, 10500, 1, '2020-05-15 23:09:39', NULL, NULL),
(510, 11, 510, '2022-02-21', 8550, 9500, 1, '2020-05-15 23:09:39', NULL, NULL),
(511, 11, 511, '2022-02-21', 8550, 9500, 1, '2020-05-15 23:09:39', NULL, NULL),
(512, 11, 512, '2022-02-21', 9450, 10500, 1, '2020-05-15 23:09:39', NULL, NULL),
(513, 11, 513, '2022-02-21', 8820, 9800, 1, '2020-05-15 23:09:39', NULL, NULL),
(514, 11, 514, '2022-02-21', 8550, 9500, 1, '2020-05-15 23:09:39', NULL, NULL),
(515, 11, 515, '2022-02-21', 10350, 11500, 1, '2020-05-15 23:09:39', NULL, NULL),
(516, 11, 516, '2022-02-21', 10350, 11500, 1, '2020-05-15 23:09:39', NULL, NULL),
(517, 11, 517, '2022-02-21', 10350, 11500, 1, '2020-05-15 23:09:39', NULL, NULL),
(518, 11, 518, '2022-02-21', 9000, 10000, 1, '2020-05-15 23:09:39', NULL, NULL),
(519, 11, 519, '2022-02-21', 9900, 11000, 1, '2020-05-15 23:09:39', NULL, NULL),
(520, 11, 520, '2022-02-21', 12600, 14000, 1, '2020-05-15 23:09:39', NULL, NULL),
(521, 11, 521, '2022-02-21', 9450, 10500, 1, '2020-05-15 23:09:39', NULL, NULL),
(522, 11, 522, '2022-02-21', 22050, 24500, 1, '2020-05-15 23:09:39', NULL, NULL),
(523, 11, 523, '2022-02-21', 11520, 12800, 1, '2020-05-15 23:09:39', NULL, NULL),
(524, 11, 524, '2022-02-21', 19620, 21800, 1, '2020-05-15 23:09:39', NULL, NULL),
(525, 11, 525, '2022-02-21', 11520, 12800, 1, '2020-05-15 23:09:39', NULL, NULL),
(526, 11, 526, '2022-02-21', 19620, 21800, 1, '2020-05-15 23:09:39', NULL, NULL),
(527, 11, 527, '2022-02-21', 11520, 12800, 1, '2020-05-15 23:09:39', NULL, NULL),
(528, 11, 528, '2022-02-21', 19620, 21800, 1, '2020-05-15 23:09:39', NULL, NULL),
(529, 11, 529, '2022-02-21', 14310, 15900, 1, '2020-05-15 23:09:39', NULL, NULL),
(530, 11, 530, '2022-02-21', 24300, 27000, 1, '2020-05-15 23:09:39', NULL, NULL),
(531, 11, 531, '2022-02-21', 59670, 66300, 1, '2020-05-15 23:09:39', NULL, NULL),
(532, 11, 532, '2022-02-21', 18900, 21000, 1, '2020-05-15 23:09:39', NULL, NULL),
(533, 11, 533, '2022-02-21', 40500, 45000, 1, '2020-05-15 23:09:39', NULL, NULL),
(534, 11, 534, '2022-02-21', 52000, 65000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 00:04:26'),
(535, 11, 535, '2022-02-21', 50400, 56000, 1, '2020-05-15 23:09:39', NULL, NULL),
(536, 11, 536, '2022-02-21', 50400, 56000, 1, '2020-05-15 23:09:39', NULL, NULL),
(537, 11, 537, '2022-02-21', 25650, 28500, 1, '2020-05-15 23:09:39', NULL, NULL),
(538, 11, 538, '2022-02-21', 21870, 24300, 1, '2020-05-15 23:09:39', NULL, NULL),
(539, 11, 539, '2022-02-21', 42930, 47700, 1, '2020-05-15 23:09:39', NULL, NULL),
(540, 11, 540, '2022-02-21', 21870, 24300, 1, '2020-05-15 23:09:39', NULL, NULL),
(541, 11, 541, '2022-02-21', 42930, 47700, 1, '2020-05-15 23:09:39', NULL, NULL),
(542, 11, 542, '2022-02-21', 22320, 24800, 1, '2020-05-15 23:09:39', NULL, NULL),
(543, 11, 543, '2022-02-21', 19890, 22100, 1, '2020-05-15 23:09:39', NULL, NULL),
(544, 11, 544, '2022-02-21', 17010, 18900, 1, '2020-05-15 23:09:39', NULL, NULL),
(545, 11, 545, '2022-02-21', 17820, 19800, 1, '2020-05-15 23:09:39', NULL, NULL),
(546, 11, 546, '2022-02-21', 9360, 10400, 1, '2020-05-15 23:09:39', NULL, NULL),
(547, 11, 547, '2022-02-21', 17010, 18900, 1, '2020-05-15 23:09:39', NULL, NULL),
(548, 11, 548, '2022-02-21', 24210, 26900, 1, '2020-05-15 23:09:39', NULL, NULL),
(549, 11, 549, '2022-02-21', 20430, 22700, 1, '2020-05-15 23:09:39', NULL, NULL),
(550, 11, 550, '2022-02-21', 17460, 19400, 1, '2020-05-15 23:09:39', NULL, NULL),
(551, 11, 551, '2022-02-21', 5850, 6500, 1, '2020-05-15 23:09:39', NULL, NULL),
(552, 11, 552, '2022-02-21', 13500, 15000, 1, '2020-05-15 23:09:39', NULL, NULL),
(553, 11, 553, '2022-02-21', 27000, 30000, 1, '2020-05-15 23:09:39', NULL, NULL),
(554, 11, 554, '2022-02-21', 5850, 6500, 1, '2020-05-15 23:09:39', NULL, NULL),
(555, 11, 555, '2022-02-21', 13500, 15000, 1, '2020-05-15 23:09:39', NULL, NULL),
(556, 11, 556, '2022-02-21', 27000, 30000, 1, '2020-05-15 23:09:39', NULL, NULL),
(557, 11, 557, '2022-02-21', 13500, 15000, 1, '2020-05-15 23:09:39', NULL, NULL),
(558, 11, 558, '2022-02-21', 15900, 19100, 1, '2020-05-15 23:09:39', 1, '2022-04-01 07:32:50'),
(559, 11, 559, '2022-02-21', 13500, 15000, 1, '2020-05-15 23:09:39', NULL, NULL),
(560, 11, 560, '2022-02-21', 14310, 15900, 1, '2020-05-15 23:09:39', NULL, NULL),
(561, 11, 561, '2022-02-21', 19350, 21500, 1, '2020-05-15 23:09:39', NULL, NULL),
(562, 11, 562, '2022-02-21', 26550, 29500, 1, '2020-05-15 23:09:39', NULL, NULL),
(563, 11, 563, '2022-02-21', 13050, 14500, 1, '2020-05-15 23:09:39', NULL, NULL),
(564, 11, 564, '2022-02-21', 17100, 20500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 07:30:53'),
(565, 11, 565, '2022-02-21', 33840, 37600, 1, '2020-05-15 23:09:39', NULL, NULL),
(566, 11, 566, '2022-02-21', 10890, 12100, 1, '2020-05-15 23:09:39', NULL, NULL),
(567, 11, 567, '2022-02-21', 5310, 5900, 1, '2020-05-15 23:09:39', NULL, NULL),
(568, 11, 568, '2022-02-21', 9630, 10700, 1, '2020-05-15 23:09:39', NULL, NULL),
(569, 11, 569, '2022-02-21', 7740, 8600, 1, '2020-05-15 23:09:39', NULL, NULL),
(570, 11, 570, '2022-02-21', 5310, 5900, 1, '2020-05-15 23:09:39', NULL, NULL),
(571, 11, 571, '2022-02-21', 13590, 15100, 1, '2020-05-15 23:09:39', NULL, NULL),
(572, 11, 572, '2022-02-21', 21690, 24100, 1, '2020-05-15 23:09:39', NULL, NULL),
(573, 11, 573, '2022-02-21', 19800, 22000, 1, '2020-05-15 23:09:39', NULL, NULL),
(574, 11, 574, '2022-02-21', 25380, 28200, 1, '2020-05-15 23:09:39', NULL, NULL),
(575, 11, 575, '2022-02-21', 17100, 19000, 1, '2020-05-15 23:09:39', NULL, NULL),
(576, 11, 576, '2022-02-21', 4320, 4800, 1, '2020-05-15 23:09:39', NULL, NULL),
(577, 11, 577, '2022-02-21', 3150, 3500, 1, '2020-05-15 23:09:39', NULL, NULL),
(578, 11, 578, '2022-02-21', 7380, 8200, 1, '2020-05-15 23:09:39', NULL, NULL),
(579, 11, 579, '2022-02-21', 11340, 12600, 1, '2020-05-15 23:09:39', NULL, NULL),
(580, 11, 580, '2022-02-21', 12780, 14200, 1, '2020-05-15 23:09:39', NULL, NULL),
(581, 11, 581, '2022-02-21', 9540, 10600, 1, '2020-05-15 23:09:39', NULL, NULL),
(582, 11, 582, '2022-02-21', 9450, 10500, 1, '2020-05-15 23:09:39', NULL, NULL),
(583, 11, 583, '2022-02-21', 18270, 20300, 1, '2020-05-15 23:09:39', NULL, NULL),
(584, 11, 584, '2022-02-21', 19800, 22000, 1, '2020-05-15 23:09:39', NULL, NULL),
(585, 11, 585, '2022-02-21', 19800, 22000, 1, '2020-05-15 23:09:39', NULL, NULL),
(586, 11, 586, '2022-02-21', 26550, 29500, 1, '2020-05-15 23:09:39', NULL, NULL),
(587, 11, 587, '2022-02-21', 8100, 9000, 1, '2020-05-15 23:09:39', NULL, NULL),
(588, 11, 588, '2022-02-21', 24840, 27600, 1, '2020-05-15 23:09:39', NULL, NULL),
(589, 11, 589, '2022-02-21', 44820, 49800, 1, '2020-05-15 23:09:39', NULL, NULL),
(590, 11, 590, '2022-02-21', 11430, 12700, 1, '2020-05-15 23:09:39', NULL, NULL),
(591, 11, 591, '2022-02-21', 22950, 25500, 1, '2020-05-15 23:09:39', NULL, NULL),
(592, 11, 592, '2022-02-21', 25700, 31000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:53:34'),
(593, 11, 593, '2022-02-21', 25800, 30000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 11:30:38'),
(594, 11, 594, '2022-02-21', 25700, 31000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 09:43:33'),
(595, 11, 595, '2022-02-21', 25800, 29500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 11:32:07'),
(596, 11, 596, '2022-02-21', 25700, 29500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 11:26:55'),
(597, 11, 597, '2022-02-21', 28000, 32500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 11:32:58'),
(598, 11, 598, '2022-02-21', 18360, 20400, 1, '2020-05-15 23:09:39', NULL, NULL),
(599, 11, 599, '2022-02-21', 9850, 11500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 10:16:02'),
(600, 11, 600, '2022-02-21', 17460, 19400, 1, '2020-05-15 23:09:39', NULL, NULL),
(601, 11, 601, '2022-02-21', 11880, 13200, 1, '2020-05-15 23:09:39', NULL, NULL),
(602, 11, 602, '2022-02-21', 36000, 40000, 1, '2020-05-15 23:09:39', NULL, NULL),
(603, 11, 603, '2022-02-21', 36900, 41000, 1, '2020-05-15 23:09:39', NULL, NULL),
(604, 11, 604, '2022-02-21', 31500, 35000, 1, '2020-05-15 23:09:39', NULL, NULL),
(605, 11, 605, '2022-02-21', 35800, 41500, 1, '2020-05-15 23:09:39', 1, '2022-04-01 11:57:00'),
(606, 11, 606, '2022-02-21', 44300, 51000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 11:19:27'),
(607, 11, 607, '2022-02-21', 44300, 51000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 10:32:41'),
(608, 11, 608, '2022-02-21', 23200, 27000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 10:27:56'),
(609, 11, 609, '2022-02-21', 34200, 38000, 1, '2020-05-15 23:09:39', NULL, NULL),
(610, 11, 610, '2022-02-21', 35640, 39600, 1, '2020-05-15 23:09:39', NULL, NULL),
(611, 11, 611, '2022-02-21', 33300, 37000, 1, '2020-05-15 23:09:39', NULL, NULL),
(612, 11, 612, '2022-02-21', 32670, 36300, 1, '2020-05-15 23:09:39', NULL, NULL),
(613, 11, 613, '2022-02-21', 6030, 6700, 1, '2020-05-15 23:09:39', NULL, NULL),
(614, 11, 614, '2022-02-21', 41000, 48000, 1, '2020-05-15 23:09:39', 1, '2022-04-01 11:48:07'),
(615, 11, 615, '2022-02-21', 33030, 36700, 1, '2020-05-15 23:09:39', NULL, NULL),
(616, 11, 616, '2022-02-21', 90900, 101000, 1, '2020-05-15 23:09:39', NULL, NULL),
(617, 11, 617, '2022-02-21', 79560, 88400, 1, '2020-05-15 23:09:39', NULL, NULL),
(618, 11, 618, '2022-02-21', 87840, 97600, 1, '2020-05-15 23:09:39', NULL, NULL),
(619, 11, 619, '2022-02-21', 95850, 106500, 1, '2020-05-15 23:09:39', NULL, NULL),
(620, 11, 620, '2022-02-21', 29700, 33000, 1, '2020-05-15 23:09:39', NULL, NULL),
(621, 11, 621, '2022-02-21', 21600, 24000, 1, '2020-05-15 23:09:39', NULL, NULL),
(622, 11, 622, '2022-02-21', 21600, 24000, 1, '2020-05-15 23:09:39', NULL, NULL);
INSERT INTO `tblitem_price` (`item_price_id`, `branch_id`, `item_id`, `start_period`, `buying_price`, `selling_price`, `creator_id`, `created_date`, `modificator_id`, `modified_date`) VALUES
(623, 11, 623, '2022-02-21', 40950, 45500, 1, '2020-05-15 23:09:39', NULL, NULL),
(624, 11, 624, '2022-02-21', 40950, 45500, 1, '2020-05-15 23:09:39', NULL, NULL),
(625, 11, 625, '2022-02-21', 8550, 9500, 1, '2020-05-15 23:09:39', NULL, NULL),
(626, 11, 626, '2022-02-21', 8640, 9600, 1, '2020-05-15 23:09:39', NULL, NULL),
(627, 11, 627, '2022-02-21', 9900, 11000, 1, '2020-05-15 23:09:39', NULL, NULL),
(628, 11, 628, '2022-02-21', 12420, 13800, 1, '2020-05-15 23:09:39', NULL, NULL),
(629, 11, 629, '2022-02-21', 15840, 17600, 1, '2020-05-15 23:09:39', NULL, NULL),
(630, 11, 630, '2022-02-21', 20160, 22400, 1, '2020-05-15 23:09:39', NULL, NULL),
(631, 11, 631, '2022-02-21', 13950, 15500, 1, '2020-05-15 23:09:39', NULL, NULL),
(632, 11, 632, '2022-02-21', 14670, 16300, 1, '2020-05-15 23:09:39', NULL, NULL),
(633, 11, 633, '2022-02-21', 16830, 18700, 1, '2020-05-15 23:09:39', NULL, NULL),
(634, 11, 634, '2022-02-21', 4500, 5000, 1, '2020-05-15 23:09:39', NULL, NULL),
(635, 11, 635, '2022-02-21', 4500, 5000, 1, '2020-05-15 23:09:39', NULL, NULL),
(636, 11, 636, '2022-02-21', 31320, 34800, 1, '2020-05-15 23:09:39', NULL, NULL),
(637, 11, 637, '2022-02-21', 35550, 39500, 1, '2020-05-15 23:09:39', NULL, NULL),
(638, 11, 638, '2022-02-21', 11160, 12400, 1, '2020-05-15 23:09:39', NULL, NULL),
(639, 11, 639, '2022-02-21', 15300, 17000, 1, '2020-05-15 23:09:39', NULL, NULL),
(640, 11, 640, '2022-02-21', 16740, 18600, 1, '2020-05-15 23:09:39', NULL, NULL),
(641, 11, 641, '2022-02-21', 11520, 12800, 1, '2020-05-15 23:09:39', NULL, NULL),
(642, 11, 642, '2022-02-21', 31860, 35400, 1, '2020-05-15 23:09:39', NULL, NULL),
(643, 11, 643, '2022-02-21', 12330, 13700, 1, '2020-05-15 23:09:39', NULL, NULL),
(644, 11, 644, '2022-02-21', 26730, 29700, 1, '2020-05-15 23:09:39', NULL, NULL),
(645, 11, 645, '2022-02-21', 13410, 14900, 1, '2020-05-15 23:09:39', NULL, NULL),
(646, 11, 646, '2022-02-21', 24660, 27400, 1, '2020-05-15 23:09:39', NULL, NULL),
(647, 11, 647, '2022-02-21', 26730, 29700, 1, '2020-05-15 23:09:39', NULL, NULL),
(648, 11, 648, '2022-02-21', 13410, 14900, 1, '2020-05-15 23:09:39', NULL, NULL),
(649, 11, 649, '2022-02-21', 7110, 7900, 1, '2020-05-15 23:09:39', NULL, NULL),
(650, 11, 650, '2022-02-21', 13500, 15000, 1, '2020-05-15 23:09:39', NULL, NULL),
(651, 11, 651, '2022-02-21', 18270, 20300, 1, '2020-05-15 23:09:39', NULL, NULL),
(652, 11, 652, '2022-02-21', 18270, 20300, 1, '2020-05-15 23:09:39', NULL, NULL),
(653, 11, 653, '2022-02-21', 17640, 19600, 1, '2020-05-15 23:09:39', NULL, NULL),
(654, 11, 654, '2022-02-21', 10260, 11400, 1, '2020-05-15 23:09:39', NULL, NULL),
(655, 11, 655, '2022-02-21', 27900, 31000, 1, '2020-05-15 23:09:39', NULL, NULL),
(656, 11, 656, '2022-02-21', 30600, 34000, 1, '2020-05-15 23:09:39', NULL, NULL),
(657, 11, 657, '2022-02-21', 23670, 26300, 1, '2020-05-15 23:09:39', NULL, NULL),
(658, 11, 658, '2022-02-21', 9720, 10800, 1, '2020-05-15 23:09:39', NULL, NULL),
(659, 11, 659, '2022-02-21', 10440, 11600, 1, '2020-05-15 23:09:39', NULL, NULL),
(660, 11, 660, '2022-02-21', 37350, 41500, 1, '2020-05-15 23:09:39', NULL, NULL),
(661, 11, 661, '2022-02-21', 37350, 41500, 1, '2020-05-15 23:09:39', NULL, NULL),
(662, 11, 662, '2022-02-21', 32040, 35600, 1, '2020-05-15 23:09:39', NULL, NULL),
(663, 11, 663, '2022-02-21', 32040, 35600, 1, '2020-05-15 23:09:39', NULL, NULL),
(664, 11, 664, '2022-02-21', 34650, 38500, 1, '2020-05-15 23:09:39', NULL, NULL),
(665, 11, 665, '2022-02-21', 31950, 35500, 1, '2020-05-15 23:09:39', NULL, NULL),
(666, 11, 666, '2022-02-21', 42750, 47500, 1, '2020-05-15 23:09:39', NULL, NULL),
(667, 11, 667, '2022-02-21', 24210, 26900, 1, '2020-05-15 23:09:39', NULL, NULL),
(668, 11, 668, '2022-02-21', 39960, 44400, 1, '2020-05-15 23:09:39', NULL, NULL),
(669, 11, 669, '2022-02-21', 13500, 15000, 1, '2020-05-15 23:09:39', NULL, NULL),
(670, 11, 670, '2022-02-21', 13500, 15000, 1, '2020-05-15 23:09:39', NULL, NULL),
(671, 11, 671, '2022-02-21', 14850, 16500, 1, '2020-05-15 23:09:39', NULL, NULL),
(672, 11, 672, '2022-02-21', 9450, 10500, 1, '2020-05-15 23:09:39', NULL, NULL),
(673, 11, 673, '2022-02-21', 9450, 10500, 1, '2020-05-15 23:09:39', NULL, NULL),
(674, 11, 674, '2022-02-21', 24570, 27300, 1, '2020-05-15 23:09:39', NULL, NULL),
(675, 11, 675, '2022-02-21', 17820, 19800, 1, '2020-05-15 23:09:39', NULL, NULL),
(676, 11, 677, '2022-03-08', 10000, 12000, 1, '2022-03-08 20:35:49', NULL, NULL),
(677, 11, 683, '2022-03-31', 10100, 13000, 1, '2022-03-31 23:57:03', NULL, NULL),
(678, 11, 680, '2022-04-01', 22400, 26900, 1, '2022-04-01 07:21:07', NULL, NULL),
(679, 11, 684, '2022-04-01', 21600, 26000, 1, '2022-04-01 09:15:50', NULL, NULL),
(680, 11, 203, '2022-04-01', 24800, 29500, 1, '2022-04-01 09:32:16', NULL, NULL),
(681, 11, 686, '2022-04-01', 37040, 43000, 1, '2022-04-01 12:26:14', NULL, NULL),
(682, 11, 687, '2022-04-01', 39100, 45000, 1, '2022-04-01 12:38:24', NULL, NULL),
(683, 11, 688, '2022-04-01', 14595, 17000, 1, '2022-04-01 12:46:25', NULL, NULL);

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
(1, 11, 1, 0),
(2, 11, 2, 0),
(3, 11, 3, 0),
(4, 11, 4, 0),
(5, 11, 5, 0),
(6, 11, 6, 0),
(7, 11, 7, 0),
(8, 11, 8, 0),
(9, 11, 9, 0),
(10, 11, 10, 0),
(11, 11, 11, 0),
(12, 11, 12, 0),
(13, 11, 13, 0),
(14, 11, 14, 0),
(15, 11, 15, 0),
(16, 11, 16, 0),
(17, 11, 17, 0),
(18, 11, 18, 0),
(19, 11, 19, 0),
(20, 11, 20, 0),
(21, 11, 21, 0),
(22, 11, 22, 0),
(23, 11, 23, 0),
(24, 11, 24, 0),
(25, 11, 25, 0),
(26, 11, 26, 0),
(27, 11, 27, 0),
(28, 11, 28, 0),
(29, 11, 29, 0),
(30, 11, 30, 0),
(31, 11, 31, 0),
(32, 11, 32, 0),
(33, 11, 33, 0),
(34, 11, 34, 0),
(35, 11, 35, 0),
(36, 11, 36, 0),
(37, 11, 37, 0),
(38, 11, 38, 0),
(39, 11, 39, 0),
(40, 11, 40, 0),
(41, 11, 41, 0),
(42, 11, 42, 0),
(43, 11, 43, 0),
(44, 11, 44, 0),
(45, 11, 45, 0),
(46, 11, 46, 0),
(47, 11, 47, 0),
(48, 11, 48, 0),
(49, 11, 49, 0),
(50, 11, 50, 0),
(51, 11, 51, 0),
(52, 11, 52, 0),
(53, 11, 53, 0),
(54, 11, 54, 0),
(55, 11, 55, 0),
(56, 11, 56, 0),
(57, 11, 57, 0),
(58, 11, 58, 0),
(59, 11, 59, 0),
(60, 11, 60, 0),
(61, 11, 61, 0),
(62, 11, 62, 0),
(63, 11, 63, 0),
(64, 11, 64, 0),
(65, 11, 65, 0),
(66, 11, 66, 0),
(67, 11, 67, 0),
(68, 11, 68, 0),
(69, 11, 69, 0),
(70, 11, 70, 0),
(71, 11, 71, 0),
(72, 11, 72, 0),
(73, 11, 73, 0),
(74, 11, 74, 0),
(75, 11, 75, 0),
(76, 11, 76, 6),
(77, 11, 77, 6),
(78, 11, 78, 6),
(79, 11, 79, 6),
(80, 11, 80, 0),
(81, 11, 81, 0),
(82, 11, 82, 0),
(83, 11, 83, 0),
(84, 11, 84, 0),
(85, 11, 85, 0),
(86, 11, 86, 0),
(87, 11, 87, 0),
(88, 11, 88, 0),
(89, 11, 89, 0),
(90, 11, 90, 0),
(91, 11, 91, 0),
(92, 11, 92, 0),
(93, 11, 93, 6),
(94, 11, 94, 0),
(95, 11, 95, 0),
(96, 11, 96, 0),
(97, 11, 97, 0),
(98, 11, 98, 0),
(99, 11, 99, 0),
(100, 11, 100, 0),
(101, 11, 101, 0),
(102, 11, 102, 0),
(103, 11, 103, 0),
(104, 11, 104, 0),
(105, 11, 105, 0),
(106, 11, 106, 0),
(107, 11, 107, 0),
(108, 11, 108, 0),
(109, 11, 109, 0),
(110, 11, 110, 0),
(111, 11, 111, 0),
(112, 11, 112, 0),
(113, 11, 113, 0),
(114, 11, 114, 0),
(115, 11, 115, 0),
(116, 11, 116, 0),
(117, 11, 117, 0),
(118, 11, 118, 0),
(119, 11, 119, 0),
(120, 11, 120, 0),
(121, 11, 121, 0),
(122, 11, 122, 0),
(123, 11, 123, 0),
(124, 11, 124, 0),
(125, 11, 125, 0),
(126, 11, 126, 0),
(127, 11, 127, 0),
(128, 11, 128, 0),
(129, 11, 129, 0),
(130, 11, 130, 0),
(131, 11, 131, 0),
(132, 11, 132, 0),
(133, 11, 133, 0),
(134, 11, 134, 0),
(135, 11, 135, 0),
(136, 11, 136, 0),
(137, 11, 137, 0),
(138, 11, 138, 0),
(139, 11, 139, 0),
(140, 11, 140, 0),
(141, 11, 141, 0),
(142, 11, 142, 0),
(143, 11, 143, 0),
(144, 11, 144, 0),
(145, 11, 145, 0),
(146, 11, 146, 0),
(147, 11, 147, 0),
(148, 11, 148, 0),
(149, 11, 149, 0),
(150, 11, 150, 0),
(151, 11, 151, 0),
(152, 11, 152, 0),
(153, 11, 153, 0),
(154, 11, 154, 0),
(155, 11, 155, 0),
(156, 11, 156, 0),
(157, 11, 157, 0),
(158, 11, 158, 0),
(159, 11, 159, 0),
(160, 11, 160, 0),
(161, 11, 161, 0),
(162, 11, 162, 0),
(163, 11, 163, 0),
(164, 11, 164, 0),
(165, 11, 165, 0),
(166, 11, 166, 0),
(167, 11, 167, 0),
(168, 11, 168, 0),
(169, 11, 169, 0),
(170, 11, 170, 0),
(171, 11, 171, 0),
(172, 11, 172, 0),
(173, 11, 173, 0),
(174, 11, 174, 0),
(175, 11, 175, 0),
(176, 11, 176, 0),
(177, 11, 177, 0),
(178, 11, 178, 0),
(179, 11, 179, 0),
(180, 11, 180, 0),
(181, 11, 181, 0),
(182, 11, 182, 0),
(183, 11, 183, 0),
(184, 11, 184, 0),
(185, 11, 185, 0),
(186, 11, 186, 0),
(187, 11, 187, 0),
(188, 11, 188, 0),
(189, 11, 189, 0),
(190, 11, 190, 0),
(191, 11, 191, 0),
(192, 11, 192, 0),
(193, 11, 193, 0),
(194, 11, 194, 0),
(195, 11, 195, 0),
(196, 11, 196, 0),
(197, 11, 197, 0),
(198, 11, 198, 0),
(199, 11, 199, 0),
(200, 11, 200, 0),
(201, 11, 201, 0),
(202, 11, 202, 0),
(203, 11, 203, 0),
(204, 11, 204, 0),
(205, 11, 205, 0),
(206, 11, 206, 0),
(207, 11, 207, 0),
(208, 11, 208, 0),
(209, 11, 209, 0),
(210, 11, 210, 0),
(211, 11, 211, 0),
(212, 11, 212, 0),
(213, 11, 213, 0),
(214, 11, 214, 0),
(215, 11, 215, 0),
(216, 11, 216, 0),
(217, 11, 217, 0),
(218, 11, 218, 0),
(219, 11, 219, 0),
(220, 11, 220, 0),
(221, 11, 221, 0),
(222, 11, 222, 0),
(223, 11, 223, 0),
(224, 11, 224, 0),
(225, 11, 225, 0),
(226, 11, 226, 0),
(227, 11, 227, 0),
(228, 11, 228, 0),
(229, 11, 229, 0),
(230, 11, 230, 0),
(231, 11, 231, 0),
(232, 11, 232, 0),
(233, 11, 233, 0),
(234, 11, 234, 0),
(235, 11, 235, 0),
(236, 11, 236, 0),
(237, 11, 237, 0),
(238, 11, 238, 0),
(239, 11, 239, 0),
(240, 11, 240, 0),
(241, 11, 241, 0),
(242, 11, 242, 0),
(243, 11, 243, 0),
(244, 11, 244, 0),
(245, 11, 245, 0),
(246, 11, 246, 0),
(247, 11, 247, 0),
(248, 11, 248, 0),
(249, 11, 249, 0),
(250, 11, 250, 0),
(251, 11, 251, 0),
(252, 11, 252, 0),
(253, 11, 253, 0),
(254, 11, 254, 0),
(255, 11, 255, 0),
(256, 11, 256, 0),
(257, 11, 257, 0),
(258, 11, 258, 0),
(259, 11, 259, 0),
(260, 11, 260, 0),
(261, 11, 261, 0),
(262, 11, 262, 0),
(263, 11, 263, 0),
(264, 11, 264, 0),
(265, 11, 265, 0),
(266, 11, 266, 0),
(267, 11, 267, 0),
(268, 11, 268, 0),
(269, 11, 269, 0),
(270, 11, 270, 0),
(271, 11, 271, 0),
(272, 11, 272, 0),
(273, 11, 273, 0),
(274, 11, 274, 0),
(275, 11, 275, 0),
(276, 11, 276, 0),
(277, 11, 277, 0),
(278, 11, 278, 0),
(279, 11, 279, 0),
(280, 11, 280, 0),
(281, 11, 281, 0),
(282, 11, 282, 0),
(283, 11, 283, 0),
(284, 11, 284, 0),
(285, 11, 285, 0),
(286, 11, 286, 0),
(287, 11, 287, 0),
(288, 11, 288, 0),
(289, 11, 289, 0),
(290, 11, 290, 0),
(291, 11, 291, 0),
(292, 11, 292, 0),
(293, 11, 293, 0),
(294, 11, 294, 0),
(295, 11, 295, 0),
(296, 11, 296, 0),
(297, 11, 297, 0),
(298, 11, 298, 0),
(299, 11, 299, 0),
(300, 11, 300, 0),
(301, 11, 301, 0),
(302, 11, 302, 0),
(303, 11, 303, 0),
(304, 11, 304, 0),
(305, 11, 305, 0),
(306, 11, 306, 0),
(307, 11, 307, 0),
(308, 11, 308, 0),
(309, 11, 309, 0),
(310, 11, 310, 0),
(311, 11, 311, 0),
(312, 11, 312, 0),
(313, 11, 313, 0),
(314, 11, 314, 0),
(315, 11, 315, 0),
(316, 11, 316, 0),
(317, 11, 317, 0),
(318, 11, 318, 0),
(319, 11, 319, 0),
(320, 11, 320, 0),
(321, 11, 321, 0),
(322, 11, 322, 0),
(323, 11, 323, 0),
(324, 11, 324, 0),
(325, 11, 325, 0),
(326, 11, 326, 0),
(327, 11, 327, 0),
(328, 11, 328, 0),
(329, 11, 329, 0),
(330, 11, 330, 0),
(331, 11, 331, 0),
(332, 11, 332, 0),
(333, 11, 333, 0),
(334, 11, 334, 0),
(335, 11, 335, 0),
(336, 11, 336, 0),
(337, 11, 337, 0),
(338, 11, 338, 0),
(339, 11, 339, 0),
(340, 11, 340, 0),
(341, 11, 341, 0),
(342, 11, 342, 0),
(343, 11, 343, 0),
(344, 11, 344, 0),
(345, 11, 345, 0),
(346, 11, 346, 0),
(347, 11, 347, 0),
(348, 11, 348, 0),
(349, 11, 349, 0),
(350, 11, 350, 0),
(351, 11, 351, 0),
(352, 11, 352, 0),
(353, 11, 353, 0),
(354, 11, 354, 0),
(355, 11, 355, 0),
(356, 11, 356, 0),
(357, 11, 357, 0),
(358, 11, 358, 0),
(359, 11, 359, 0),
(360, 11, 360, 0),
(361, 11, 361, 0),
(362, 11, 362, 0),
(363, 11, 363, 0),
(364, 11, 364, 6),
(365, 11, 365, 0),
(366, 11, 366, 6),
(367, 11, 367, 0),
(368, 11, 368, 5),
(369, 11, 369, 0),
(370, 11, 370, 0),
(371, 11, 371, 0),
(372, 11, 372, 0),
(373, 11, 373, 0),
(374, 11, 374, 0),
(375, 11, 375, 5),
(376, 11, 376, 0),
(377, 11, 377, 0),
(378, 11, 378, 5),
(379, 11, 379, 0),
(380, 11, 380, 5),
(381, 11, 381, 0),
(382, 11, 382, 0),
(383, 11, 383, 0),
(384, 11, 384, 0),
(385, 11, 385, 0),
(386, 11, 386, 0),
(387, 11, 387, 0),
(388, 11, 388, 0),
(389, 11, 389, 0),
(390, 11, 390, 0),
(391, 11, 391, 0),
(392, 11, 392, 0),
(393, 11, 393, 0),
(394, 11, 394, 0),
(395, 11, 395, 0),
(396, 11, 396, 0),
(397, 11, 397, 0),
(398, 11, 398, 0),
(399, 11, 399, 0),
(400, 11, 400, 0),
(401, 11, 401, 0),
(402, 11, 402, 0),
(403, 11, 403, 0),
(404, 11, 404, 0),
(405, 11, 405, 0),
(406, 11, 406, 0),
(407, 11, 407, 0),
(408, 11, 408, 0),
(409, 11, 409, 0),
(410, 11, 410, 0),
(411, 11, 411, 0),
(412, 11, 412, 0),
(413, 11, 413, 0),
(414, 11, 414, 0),
(415, 11, 415, 0),
(416, 11, 416, 0),
(417, 11, 417, 0),
(418, 11, 418, 0),
(419, 11, 419, 0),
(420, 11, 420, 0),
(421, 11, 421, 0),
(422, 11, 422, 0),
(423, 11, 423, 0),
(424, 11, 424, 0),
(425, 11, 425, 0),
(426, 11, 426, 0),
(427, 11, 427, 0),
(428, 11, 428, 0),
(429, 11, 429, 0),
(430, 11, 430, 0),
(431, 11, 431, 0),
(432, 11, 432, 0),
(433, 11, 433, 0),
(434, 11, 434, 0),
(435, 11, 435, 0),
(436, 11, 436, 0),
(437, 11, 437, 0),
(438, 11, 438, 0),
(439, 11, 439, 0),
(440, 11, 440, 0),
(441, 11, 441, 0),
(442, 11, 442, 0),
(443, 11, 443, 0),
(444, 11, 444, 0),
(445, 11, 445, 0),
(446, 11, 446, 0),
(447, 11, 447, 0),
(448, 11, 448, 0),
(449, 11, 449, 0),
(450, 11, 450, 0),
(451, 11, 451, 0),
(452, 11, 452, 0),
(453, 11, 453, 0),
(454, 11, 454, 0),
(455, 11, 455, 0),
(456, 11, 456, 0),
(457, 11, 457, 0),
(458, 11, 458, 0),
(459, 11, 459, 0),
(460, 11, 460, 0),
(461, 11, 461, 0),
(462, 11, 462, 0),
(463, 11, 463, 0),
(464, 11, 464, 0),
(465, 11, 465, 0),
(466, 11, 466, 0),
(467, 11, 467, 0),
(468, 11, 468, 0),
(469, 11, 469, 0),
(470, 11, 470, 0),
(471, 11, 471, 0),
(472, 11, 472, 0),
(473, 11, 473, 0),
(474, 11, 474, 0),
(475, 11, 475, 0),
(476, 11, 476, 0),
(477, 11, 477, 0),
(478, 11, 478, 0),
(479, 11, 479, 0),
(480, 11, 480, 0),
(481, 11, 481, 0),
(482, 11, 482, 0),
(483, 11, 483, 0),
(484, 11, 484, 0),
(485, 11, 485, 0),
(486, 11, 486, 0),
(487, 11, 487, 0),
(488, 11, 488, 0),
(489, 11, 489, 0),
(490, 11, 490, 0),
(491, 11, 491, 0),
(492, 11, 492, 0),
(493, 11, 493, 0),
(494, 11, 494, 0),
(495, 11, 495, 0),
(496, 11, 496, 0),
(497, 11, 497, 0),
(498, 11, 498, 0),
(499, 11, 499, 0),
(500, 11, 500, 0),
(501, 11, 501, 0),
(502, 11, 502, 0),
(503, 11, 503, 0),
(504, 11, 504, 0),
(505, 11, 505, 0),
(506, 11, 506, 0),
(507, 11, 507, 0),
(508, 11, 508, 0),
(509, 11, 509, 0),
(510, 11, 510, 0),
(511, 11, 511, 0),
(512, 11, 512, 0),
(513, 11, 513, 0),
(514, 11, 514, 0),
(515, 11, 515, 0),
(516, 11, 516, 0),
(517, 11, 517, 0),
(518, 11, 518, 0),
(519, 11, 519, 0),
(520, 11, 520, 0),
(521, 11, 521, 0),
(522, 11, 522, 0),
(523, 11, 523, 0),
(524, 11, 524, 0),
(525, 11, 525, 0),
(526, 11, 526, 0),
(527, 11, 527, 0),
(528, 11, 528, 0),
(529, 11, 529, 0),
(530, 11, 530, 0),
(531, 11, 531, 0),
(532, 11, 532, 0),
(533, 11, 533, 0),
(534, 11, 534, 9),
(535, 11, 535, 0),
(536, 11, 536, 0),
(537, 11, 537, 0),
(538, 11, 538, 0),
(539, 11, 539, 0),
(540, 11, 540, 0),
(541, 11, 541, 0),
(542, 11, 542, 0),
(543, 11, 543, 0),
(544, 11, 544, 0),
(545, 11, 545, 0),
(546, 11, 546, 0),
(547, 11, 547, 0),
(548, 11, 548, 0),
(549, 11, 549, 0),
(550, 11, 550, 0),
(551, 11, 551, 0),
(552, 11, 552, 0),
(553, 11, 553, 0),
(554, 11, 554, 5),
(555, 11, 555, 5),
(556, 11, 556, 0),
(557, 11, 557, 0),
(558, 11, 558, 3),
(559, 11, 559, 0),
(560, 11, 560, 0),
(561, 11, 561, 0),
(562, 11, 562, 0),
(563, 11, 563, 3),
(564, 11, 564, 3),
(565, 11, 565, 0),
(566, 11, 566, 0),
(567, 11, 567, 0),
(568, 11, 568, 0),
(569, 11, 569, 0),
(570, 11, 570, 0),
(571, 11, 571, 0),
(572, 11, 572, 0),
(573, 11, 573, 0),
(574, 11, 574, 6),
(575, 11, 575, 6),
(576, 11, 576, 0),
(577, 11, 577, 0),
(578, 11, 578, 0),
(579, 11, 579, 0),
(580, 11, 580, 0),
(581, 11, 581, 5),
(582, 11, 582, 5),
(583, 11, 583, 0),
(584, 11, 584, 5),
(585, 11, 585, 0),
(586, 11, 586, 0),
(587, 11, 587, 0),
(588, 11, 588, 0),
(589, 11, 589, 0),
(590, 11, 590, 0),
(591, 11, 591, 0),
(592, 11, 592, 0),
(593, 11, 593, 0),
(594, 11, 594, 0),
(595, 11, 595, 0),
(596, 11, 596, 0),
(597, 11, 597, 0),
(598, 11, 598, 0),
(599, 11, 599, 0),
(600, 11, 600, 0),
(601, 11, 601, 0),
(602, 11, 602, 0),
(603, 11, 603, 0),
(604, 11, 604, 0),
(605, 11, 605, 0),
(606, 11, 606, 0),
(607, 11, 607, 0),
(608, 11, 608, 0),
(609, 11, 609, 0),
(610, 11, 610, 0),
(611, 11, 611, 0),
(612, 11, 612, 0),
(613, 11, 613, 0),
(614, 11, 614, 0),
(615, 11, 615, 0),
(616, 11, 616, 0),
(617, 11, 617, 0),
(618, 11, 618, 0),
(619, 11, 619, 0),
(620, 11, 620, 0),
(621, 11, 621, 0),
(622, 11, 622, 0),
(623, 11, 623, 0),
(624, 11, 624, 0),
(625, 11, 625, 0),
(626, 11, 626, 0),
(627, 11, 627, 0),
(628, 11, 628, 0),
(629, 11, 629, 0),
(630, 11, 630, 0),
(631, 11, 631, 0),
(632, 11, 632, 0),
(633, 11, 633, 0),
(634, 11, 634, 0),
(635, 11, 635, 0),
(636, 11, 636, 0),
(637, 11, 637, 0),
(638, 11, 638, 0),
(639, 11, 639, 0),
(640, 11, 640, 0),
(641, 11, 641, 0),
(642, 11, 642, 0),
(643, 11, 643, 0),
(644, 11, 644, 0),
(645, 11, 645, 0),
(646, 11, 646, 0),
(647, 11, 647, 0),
(648, 11, 648, 0),
(649, 11, 649, 0),
(650, 11, 650, 0),
(651, 11, 651, 0),
(652, 11, 652, 0),
(653, 11, 653, 0),
(654, 11, 654, 0),
(655, 11, 655, 0),
(656, 11, 656, 0),
(657, 11, 657, 0),
(658, 11, 658, 0),
(659, 11, 659, 0),
(660, 11, 660, 0),
(661, 11, 661, 0),
(662, 11, 662, 0),
(663, 11, 663, 0),
(664, 11, 664, 0),
(665, 11, 665, 0),
(666, 11, 666, 0),
(667, 11, 667, 0),
(668, 11, 668, 0),
(669, 11, 669, 0),
(670, 11, 670, 0),
(671, 11, 671, 0),
(672, 11, 672, 0),
(673, 11, 673, 0),
(674, 11, 674, 0),
(675, 11, 675, 0),
(678, 11, 681, 4),
(679, 11, 676, 0),
(680, 11, 677, 0),
(681, 11, 678, 0),
(682, 11, 680, 3),
(683, 11, 683, 2);

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
(9, 'WEIWAYANG'),
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
(70, 'CHAMP');

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
(1, 11, 'POS2022040001', 91000.00, 0.00, 91000.00, 1, 0, '', '', 91000.00, 0.00, '', 45, '2022-04-01 00:05:26', NULL, NULL),
(2, 11, 'POS2022040002', 91000.00, 0.00, 91000.00, 1, 0, '', '', 100000.00, 9000.00, '', 45, '2022-04-01 00:10:22', NULL, NULL),
(3, 11, 'POS2022040003', 13000.00, 0.00, 13000.00, 1, 0, '', '', 13000.00, 0.00, '', 45, '2022-04-01 08:19:00', NULL, NULL);

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
(1, 1, 534, 65000, 0, 0, 1, 65000, 45, '2022-04-01 00:05:26', NULL, NULL),
(2, 1, 683, 13000, 0, 0, 2, 26000, 45, '2022-04-01 00:05:26', NULL, NULL),
(3, 2, 534, 65000, 0, 0, 1, 65000, 45, '2022-04-01 00:10:22', NULL, NULL),
(4, 2, 683, 13000, 0, 0, 2, 26000, 45, '2022-04-01 00:10:22', NULL, NULL),
(5, 3, 683, 13000, 0, 0, 1, 13000, 45, '2022-04-01 08:19:00', NULL, NULL);

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
(3, 11, 683, 1, 1, 10100, 'trial ', 1, '2022-04-01 08:23:15', NULL, NULL);

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
(1, 11, 575, 1, '2022-03-31 17:45:57', 6, 6, 17100.00, 'stock_in', NULL, '1'),
(2, 11, 574, 1, '2022-03-31 17:47:07', 6, 6, 25380.00, 'stock_in', NULL, '1'),
(3, 11, 680, 1, '2022-03-31 17:48:30', 3, 6, 0.00, 'stock_in', NULL, '1'),
(4, 11, 555, 1, '2022-03-31 18:00:25', 5, 5, 13500.00, 'stock_in', NULL, '1'),
(5, 11, 564, 1, '2022-03-31 18:02:47', 3, 3, 13500.00, 'stock_in', NULL, '1'),
(6, 11, 581, 1, '2022-03-31 18:07:27', 5, 5, 9540.00, 'stock_in', NULL, '1'),
(7, 11, 582, 1, '2022-03-31 18:10:26', 5, 5, 9450.00, 'stock_in', NULL, '1'),
(8, 11, 584, 1, '2022-03-31 18:17:28', 5, 5, 19800.00, 'stock_in', NULL, '1'),
(9, 11, 375, 1, '2022-03-31 18:18:42', 5, 5, 25920.00, 'stock_in', NULL, '1'),
(10, 11, 558, 1, '2022-03-31 18:25:09', 3, 3, 13500.00, 'stock_in', NULL, '1'),
(11, 11, 554, 1, '2022-03-31 18:25:55', 5, 5, 5850.00, 'stock_in', NULL, '1'),
(12, 11, 378, 1, '2022-03-31 18:29:38', 5, 5, 21420.00, 'stock_in', NULL, '1'),
(13, 11, 368, 1, '2022-03-31 18:30:27', 5, 5, 3600.00, 'stock_in', NULL, '1'),
(14, 11, 563, 1, '2022-03-31 18:41:23', 3, 3, 13050.00, 'stock_in', NULL, '1'),
(15, 11, 681, 1, '2022-03-31 18:42:23', 4, 4, 0.00, 'stock_in', NULL, '1'),
(16, 11, 380, 1, '2022-03-31 18:46:24', 5, 5, 6840.00, 'stock_in', NULL, '1'),
(17, 11, 366, 1, '2022-03-31 18:48:28', 6, 6, 7020.00, 'stock_in', NULL, '1'),
(18, 11, 364, 1, '2022-03-31 18:54:21', 6, 6, 7020.00, 'stock_in', NULL, '1'),
(19, 11, 76, 1, '2022-03-31 19:00:21', 5, 5, 9630.00, 'stock_in', NULL, '1'),
(20, 11, 76, 1, '2022-03-31 19:04:10', 1, 6, 9630.00, 'stock_in', NULL, '1'),
(21, 11, 78, 1, '2022-03-31 19:07:16', 6, 6, 17550.00, 'stock_in', NULL, '1'),
(22, 11, 79, 1, '2022-03-31 19:11:13', 6, 6, 8640.00, 'stock_in', NULL, '1'),
(23, 11, 77, 1, '2022-03-31 19:35:51', 6, 6, 8640.00, 'stock_in', NULL, '1'),
(24, 11, 93, 1, '2022-03-31 19:39:25', 6, 6, 8370.00, 'stock_in', NULL, '1'),
(25, 11, 683, 1, '2022-03-31 23:55:51', 4, 3, 0.00, 'stock_in', NULL, '1'),
(26, 11, 534, 1, '2022-04-01 00:03:21', 10, 8, 50400.00, 'stock_in', NULL, '1'),
(27, 11, 534, 2, '2022-04-01 00:05:26', 1, 1, 65000.00, 'stock_out', 26, 'POS2022040001'),
(28, 11, 683, 2, '2022-04-01 00:05:26', 2, 2, 13000.00, 'stock_out', 25, 'POS2022040001'),
(29, 11, 534, 2, '2022-04-01 00:10:22', 1, 1, 65000.00, 'stock_out', 26, 'POS2022040002'),
(30, 11, 683, 2, '2022-04-01 00:10:22', 2, 2, 13000.00, 'stock_out', 25, 'POS2022040002'),
(31, 11, 683, 1, '2022-04-01 07:53:12', 2, 2, 10100.00, 'stock_adjustment', NULL, NULL),
(32, 11, 534, 1, '2022-04-01 08:03:25', 1, 1, 52000.00, 'stock_adjustment', NULL, NULL),
(33, 11, 683, 2, '2022-04-01 08:19:00', 1, 1, 13000.00, 'stock_out', 25, 'POS2022040003'),
(34, 11, 683, 1, '2022-04-01 08:23:15', 1, 1, 10100.00, 'stock_adjustment', NULL, NULL);

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
(26, 11, 1, '1', '2022-03-31', 1, '', 1, '2022-04-01 00:03:21', NULL, NULL);

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
(12, 12, 378, 5, 1, '2022-03-31 18:29:38', NULL, NULL),
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
(26, 26, 534, 10, 1, '2022-04-01 00:03:21', NULL, NULL);

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
(1, 11, 'POS2022040001', '2022-04-01 00:05:26', 1, NULL, 45, '2022-04-01 00:05:26', NULL, NULL),
(2, 11, 'POS2022040002', '2022-04-01 00:10:22', 1, NULL, 45, '2022-04-01 00:10:22', NULL, NULL),
(3, 11, 'POS2022040003', '2022-04-01 08:19:00', 1, NULL, 45, '2022-04-01 08:19:00', NULL, NULL);

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
(1, 1, 534, 1, NULL, 45, '2022-04-01 00:05:26', NULL, NULL),
(2, 1, 683, 2, NULL, 45, '2022-04-01 00:05:26', NULL, NULL),
(3, 2, 534, 1, NULL, 45, '2022-04-01 00:10:22', NULL, NULL),
(4, 2, 683, 2, NULL, 45, '2022-04-01 00:10:22', NULL, NULL),
(5, 3, 683, 1, NULL, 45, '2022-04-01 08:19:00', NULL, NULL);

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
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=689;

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
  MODIFY `item_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=684;

--
-- AUTO_INCREMENT for table `tblitem_promo`
--
ALTER TABLE `tblitem_promo`
  MODIFY `item_promo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblitem_stock`
--
ALTER TABLE `tblitem_stock`
  MODIFY `item_stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=684;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tblmodule`
--
ALTER TABLE `tblmodule`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblsales`
--
ALTER TABLE `tblsales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblsales_det`
--
ALTER TABLE `tblsales_det`
  MODIFY `sales_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `stock_adj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblstock_category`
--
ALTER TABLE `tblstock_category`
  MODIFY `stock_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblstock_flow`
--
ALTER TABLE `tblstock_flow`
  MODIFY `stock_flow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tblstock_in`
--
ALTER TABLE `tblstock_in`
  MODIFY `stock_in_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblstock_in_det`
--
ALTER TABLE `tblstock_in_det`
  MODIFY `stock_in_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblstock_out`
--
ALTER TABLE `tblstock_out`
  MODIFY `stock_out_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblstock_out_det`
--
ALTER TABLE `tblstock_out_det`
  MODIFY `stock_out_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
