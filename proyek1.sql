-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 26, 2018 at 04:19 AM
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
-- Table structure for table `ex_rate`
--

CREATE TABLE `ex_rate` (
  `id_source` int(11) NOT NULL,
  `id_matauang` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kurs_jual` float NOT NULL,
  `kurs_beli` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matauang`
--

CREATE TABLE `matauang` (
  `id_matauang` int(11) NOT NULL,
  `nama_matauang` varchar(100) NOT NULL,
  `kode_matauang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matauang`
--

INSERT INTO `matauang` (`id_matauang`, `nama_matauang`, `kode_matauang`) VALUES
(0, '', ''),
(1, 'Australian Dollar', 'AUD'),
(2, 'Brunei Dollar', 'BND'),
(3, 'Canadian Dollar', 'CAD'),
(4, 'Swiss Franc', 'CHF'),
(5, 'Chinese Yuan (offshore)', 'CNH'),
(6, 'Chinese Yuan', 'CNY'),
(7, 'Danish Krone', 'DKK'),
(8, 'Euro', 'EUR'),
(9, 'Pound sterling', 'GBP'),
(10, 'Hong Kong Dollar', 'HKD'),
(11, 'Japanese Yen', 'JPY'),
(12, 'South Korean Won', 'KRW'),
(13, 'Kwaiti Dinar', 'KWD'),
(14, 'Laotian Kip', 'LAK'),
(15, 'Malaysian Ringgit', 'MYR'),
(16, 'Norwegian Krone', 'NOK'),
(17, 'New Zealand Dollar', 'NZD'),
(18, 'Papua New Guinean Kina', 'PGK'),
(19, 'Philippine Piso', 'PHP'),
(20, 'Saudi Riyal', 'SAR'),
(21, 'Swedish Krona', 'SEK'),
(22, 'Singapore Dollar', 'SGD'),
(23, 'Thai Baht', 'THB'),
(24, 'US Dollar', 'USD'),
(25, 'Vietnamese Dong', 'VND'),
(26, 'Indonesian Rupiah', 'IDR');

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ex_rate`
--
ALTER TABLE `ex_rate`
  ADD PRIMARY KEY (`tanggal`),
  ADD KEY `id_matauang` (`id_matauang`),
  ADD KEY `id_source` (`id_source`);

--
-- Indexes for table `matauang`
--
ALTER TABLE `matauang`
  ADD PRIMARY KEY (`id_matauang`);

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
  ADD CONSTRAINT `ex_rate_ibfk_1` FOREIGN KEY (`id_matauang`) REFERENCES `matauang` (`id_matauang`),
  ADD CONSTRAINT `ex_rate_ibfk_2` FOREIGN KEY (`id_source`) REFERENCES `source` (`id_source`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
