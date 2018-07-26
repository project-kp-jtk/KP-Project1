-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 26, 2018 at 08:20 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek1`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `exchange_rate`
-- (See below for the actual view)
--
CREATE TABLE `exchange_rate` (
`SOURCE` varchar(50)
,`MATAUANG` varchar(5)
,`TANGGAL` datetime
,`KURSJUAL` decimal(13,4)
,`KURS_BELI` decimal(13,4)
);

-- --------------------------------------------------------

--
-- Table structure for table `ex_rate`
--

CREATE TABLE `ex_rate` (
  `id_source` int(11) NOT NULL,
  `kode_matauang` varchar(5) NOT NULL,
  `tanggal` datetime NOT NULL,
  `nilai` int(11) NOT NULL,
  `kurs_jual` decimal(13,4) NOT NULL,
  `kurs_beli` decimal(13,4) NOT NULL,
  `kurs_tengah` decimal(13,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matauang`
--

CREATE TABLE `matauang` (
  `nama_matauang` varchar(100) NOT NULL,
  `kode_matauang` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matauang`
--

INSERT INTO `matauang` (`nama_matauang`, `kode_matauang`) VALUES
('', ''),
('Australian Dollar', 'AUD'),
('Brunei Dollar', 'BND'),
('Canadian Dollar', 'CAD'),
('Swiss Franc', 'CHF'),
('Chinese Yuan (offshore)', 'CNH'),
('Chinese Yuan', 'CNY'),
('Danish Krone', 'DKK'),
('Euro', 'EUR'),
('Pound sterling', 'GBP'),
('Hong Kong Dollar', 'HKD'),
('Indonesian Rupiah', 'IDR'),
('Japanese Yen', 'JPY'),
('South Korean Won', 'KRW'),
('Kwaiti Dinar', 'KWD'),
('Laotian Kip', 'LAK'),
('Malaysian Ringgit', 'MYR'),
('Norwegian Krone', 'NOK'),
('New Zealand Dollar', 'NZD'),
('Papua New Guinean Kina', 'PGK'),
('Philippine Piso', 'PHP'),
('Saudi Riyal', 'SAR'),
('Swedish Krona', 'SEK'),
('Singapore Dollar', 'SGD'),
('Thai Baht', 'THB'),
('US Dollar', 'USD'),
('Vietnamese Dong', 'VND');

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE `source` (
  `id_source` int(11) NOT NULL,
  `nama_source` varchar(50) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `source`
--

INSERT INTO `source` (`id_source`, `nama_source`, `deskripsi`) VALUES
(1, 'BI', 'Bank Indonesia'),
(2, 'MAS', 'Monetary Authority of Singapore'),
(3, 'HSBC', 'Hongkong and Shanghai Banking Corporation'),
(4, 'YF', 'Yahoo Finance');

-- --------------------------------------------------------

--
-- Structure for view `exchange_rate`
--
DROP TABLE IF EXISTS `exchange_rate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `exchange_rate`  AS  select `s`.`nama_source` AS `SOURCE`,`m`.`kode_matauang` AS `MATAUANG`,`e`.`tanggal` AS `TANGGAL`,`e`.`kurs_jual` AS `KURSJUAL`,`e`.`kurs_beli` AS `KURS_BELI` from ((`source` `s` join `matauang` `m`) join `ex_rate` `e`) where ((`s`.`id_source` = `e`.`id_source`) and (`m`.`kode_matauang` = `e`.`kode_matauang`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ex_rate`
--
ALTER TABLE `ex_rate`
  ADD PRIMARY KEY (`id_source`,`kode_matauang`,`tanggal`),
  ADD KEY `kode_matauang` (`kode_matauang`);

--
-- Indexes for table `matauang`
--
ALTER TABLE `matauang`
  ADD PRIMARY KEY (`kode_matauang`);

--
-- Indexes for table `source`
--
ALTER TABLE `source`
  ADD PRIMARY KEY (`id_source`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ex_rate`
--
ALTER TABLE `ex_rate`
  ADD CONSTRAINT `ex_rate_ibfk_1` FOREIGN KEY (`id_source`) REFERENCES `source` (`id_source`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ex_rate_ibfk_2` FOREIGN KEY (`kode_matauang`) REFERENCES `matauang` (`kode_matauang`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
