-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01 Agu 2018 pada 04.15
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.0.22

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
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `exchange_rate` (
`ID_SOURCE` int(11)
,`SOURCE` varchar(50)
,`KODE` varchar(5)
,`MATA_UANG` varchar(100)
,`NILAI` int(11)
,`TANGGAL` datetime
,`KURS_JUAL` decimal(13,4)
,`KURS_BELI` decimal(13,4)
,`KURS_TENGAH` decimal(13,4)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ex_rate`
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

--
-- Dumping data untuk tabel `ex_rate`
--

INSERT INTO `ex_rate` (`id_source`, `kode_matauang`, `tanggal`, `nilai`, `kurs_jual`, `kurs_beli`, `kurs_tengah`) VALUES
(1, 'AUD  ', '2018-07-31 06:52:49', 1, '10749.3200', '10635.2900', '10692.3050'),
(1, 'BND  ', '2018-07-31 06:52:49', 1, '10641.3500', '10529.3700', '10585.3600'),
(1, 'CAD  ', '2018-07-31 06:52:49', 1, '11090.2700', '10976.6600', '11033.4650'),
(1, 'CHF  ', '2018-07-31 06:52:49', 1, '14668.3500', '14516.6500', '14592.5000'),
(1, 'CNH  ', '2018-07-31 06:52:49', 1, '2118.9600', '2097.2800', '2108.1200'),
(1, 'CNY  ', '2018-07-31 06:52:50', 1, '2124.9900', '2103.8700', '2114.4300'),
(1, 'DKK  ', '2018-07-31 06:52:50', 1, '2277.2700', '2253.9200', '2265.5950'),
(1, 'EUR  ', '2018-07-31 06:52:50', 1, '16961.9400', '16787.5700', '16874.7550'),
(1, 'GBP  ', '2018-07-31 06:52:50', 1, '19008.6700', '18815.3900', '18912.0300'),
(1, 'HKD  ', '2018-07-31 06:52:50', 1, '1845.6200', '1827.2500', '1836.4350'),
(1, 'JPY  ', '2018-07-31 06:52:50', 100, '13049.5500', '12916.3300', '12982.9400'),
(1, 'KRW  ', '2018-07-31 06:52:50', 1, '12.9400', '12.8100', '12.8750'),
(1, 'KWD  ', '2018-07-31 06:52:50', 1, '47868.4700', '47298.8100', '47583.6400'),
(1, 'LAK  ', '2018-07-31 06:52:50', 1, '1.7200', '1.7000', '1.7100'),
(1, 'MYR  ', '2018-07-31 06:52:50', 1, '3565.9800', '3526.1900', '3546.0850'),
(1, 'NOK  ', '2018-07-31 06:52:50', 1, '1781.5600', '1762.7700', '1772.1650'),
(1, 'NZD  ', '2018-07-31 06:52:50', 1, '9878.7700', '9774.8300', '9826.8000'),
(1, 'PGK  ', '2018-07-31 06:52:50', 1, '4512.0800', '4252.1100', '4382.0950'),
(1, 'PHP  ', '2018-07-31 06:52:50', 1, '272.1900', '269.4500', '270.8200'),
(1, 'SAR  ', '2018-07-31 06:52:50', 1, '3862.3600', '3823.8600', '3843.1100'),
(1, 'SEK  ', '2018-07-31 06:52:50', 1, '1654.6500', '1637.4600', '1646.0550'),
(1, 'SGD  ', '2018-07-31 06:52:50', 1, '10641.3500', '10529.3700', '10585.3600'),
(1, 'THB  ', '2018-07-31 06:52:50', 1, '434.8500', '430.4000', '432.6250'),
(1, 'USD  ', '2018-07-31 06:52:50', 1, '14485.0000', '14341.0000', '14413.0000'),
(1, 'VND  ', '2018-07-31 06:52:50', 1, '0.6200', '0.6200', '0.6200'),
(2, 'AUD', '2018-07-31 09:03:15', 1, '0.0000', '0.0000', '1.0107'),
(2, 'EUR', '2018-07-31 09:03:15', 1, '0.0000', '0.0000', '1.5944'),
(2, 'IDR', '2018-07-31 09:03:15', 100, '0.0000', '0.0000', '0.0094'),
(2, 'USD', '2018-07-31 09:03:15', 1, '0.0000', '0.0000', '1.3619'),
(3, 'AUD', '2018-07-31 06:53:23', 1, '5.7461', '5.9027', '5.8244'),
(3, 'CAD', '2018-07-31 06:53:23', 1, '5.9254', '6.0929', '6.0092'),
(3, 'CHF', '2018-07-31 06:53:23', 1, '7.8385', '8.0533', '7.9459'),
(3, 'CNY', '2018-07-31 06:53:23', 1, '1.1338', '1.1632', '1.1485'),
(3, 'EUR', '2018-07-31 06:53:23', 1, '9.0654', '9.3159', '9.1907'),
(3, 'GBP', '2018-07-31 06:53:23', 1, '10.1080', '10.4940', '10.3010'),
(3, 'JPY', '2018-07-31 06:53:23', 1, '0.0696', '0.0717', '0.0706'),
(3, 'MYR', '2018-07-31 06:53:23', 1, '1.7855', '2.0855', '1.9355'),
(3, 'NZD', '2018-07-31 06:53:23', 1, '5.2705', '5.4345', '5.3525'),
(3, 'PHP', '2018-07-31 06:53:23', 1, '0.1440', '0.1585', '0.1513'),
(3, 'SGD', '2018-07-31 06:53:23', 1, '5.6785', '5.8465', '5.7625'),
(3, 'THB', '2018-07-31 06:53:24', 1, '0.2212', '0.2502', '0.2357'),
(3, 'USD', '2018-07-31 06:53:23', 1, '7.7851', '7.9119', '7.8485');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matauang`
--

CREATE TABLE `matauang` (
  `nama_matauang` varchar(100) NOT NULL,
  `kode_matauang` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matauang`
--

INSERT INTO `matauang` (`nama_matauang`, `kode_matauang`) VALUES
('Australian Dollar', 'AUD'),
('Brunei Dollar', 'BND'),
('Canadian Dollar', 'CAD'),
('Swiss Franc', 'CHF'),
('Chinese Yuan (offshore)', 'CNH'),
('Chinese Yuan', 'CNY'),
('Danish Krone', 'DKK'),
('Euro', 'EUR'),
('Pound Sterling', 'GBP'),
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
('Philippine Peso', 'PHP'),
('Saudi Riyal', 'SAR'),
('Swedish Krona', 'SEK'),
('Singapore Dollar', 'SGD'),
('Thai Baht', 'THB'),
('US Dollar', 'USD'),
('Vietnamese Dong', 'VND');

-- --------------------------------------------------------

--
-- Struktur dari tabel `source`
--

CREATE TABLE `source` (
  `id_source` int(11) NOT NULL,
  `nama_source` varchar(50) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `source`
--

INSERT INTO `source` (`id_source`, `nama_source`, `deskripsi`) VALUES
(1, 'BI', 'Bank Indonesia'),
(2, 'MAS', 'Monetary Authority of Singapore'),
(3, 'HSBC', 'Hongkong and Shanghai Banking Corporation'),
(4, 'YF', 'Yahoo Finance');

-- --------------------------------------------------------

--
-- Struktur untuk view `exchange_rate`
--
DROP TABLE IF EXISTS `exchange_rate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `exchange_rate`  AS  select `s`.`id_source` AS `ID_SOURCE`,`s`.`nama_source` AS `SOURCE`,`m`.`kode_matauang` AS `KODE`,`m`.`nama_matauang` AS `MATA_UANG`,`e`.`nilai` AS `NILAI`,`e`.`tanggal` AS `TANGGAL`,`e`.`kurs_jual` AS `KURS_JUAL`,`e`.`kurs_beli` AS `KURS_BELI`,`e`.`kurs_tengah` AS `KURS_TENGAH` from ((`source` `s` join `matauang` `m`) join `ex_rate` `e`) where ((`s`.`id_source` = `e`.`id_source`) and (`m`.`kode_matauang` = `e`.`kode_matauang`)) ;

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
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ex_rate`
--
ALTER TABLE `ex_rate`
  ADD CONSTRAINT `ex_rate_ibfk_1` FOREIGN KEY (`id_source`) REFERENCES `source` (`id_source`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ex_rate_ibfk_2` FOREIGN KEY (`kode_matauang`) REFERENCES `matauang` (`kode_matauang`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
