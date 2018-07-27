-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27 Jul 2018 pada 02.19
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
`SOURCE` varchar(50)
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
(1, 'AUD  ', '2018-07-26 10:09:21', 1, '10803.5100', '10694.9000', '10749.2050'),
(1, 'BND  ', '2018-07-26 10:09:21', 1, '10680.6500', '10573.9100', '10627.2800'),
(1, 'CAD  ', '2018-07-26 10:09:21', 1, '11132.8400', '11021.5500', '11077.1950'),
(1, 'CHF  ', '2018-07-26 10:09:21', 1, '14645.3400', '14498.5900', '14571.9650'),
(1, 'CNH  ', '2018-07-26 10:09:21', 1, '2144.7100', '2122.9400', '2133.8250'),
(1, 'CNY  ', '2018-07-26 10:09:21', 1, '2145.2200', '2123.9400', '2134.5800'),
(1, 'DKK  ', '2018-07-26 10:09:21', 1, '2286.0400', '2262.6500', '2274.3450'),
(1, 'EUR  ', '2018-07-26 10:09:21', 1, '17031.9000', '16861.4900', '16946.6950'),
(1, 'GBP  ', '2018-07-26 10:09:21', 1, '19165.6100', '18969.7200', '19067.6650'),
(1, 'HKD  ', '2018-07-26 10:09:21', 1, '1849.9200', '1831.3800', '1840.6500'),
(1, 'JPY  ', '2018-07-26 10:09:21', 100, '13102.5500', '12971.3900', '13036.9700'),
(1, 'KRW  ', '2018-07-26 10:09:21', 1, '12.9500', '12.8200', '12.8850'),
(1, 'KWD  ', '2018-07-26 10:09:21', 1, '48031.1100', '47444.7000', '47737.9050'),
(1, 'LAK  ', '2018-07-26 10:09:21', 1, '1.7300', '1.7000', '1.7150'),
(1, 'MYR  ', '2018-07-26 10:09:21', 1, '3582.6200', '3542.7100', '3562.6650'),
(1, 'NOK  ', '2018-07-26 10:09:21', 1, '1784.9900', '1766.2000', '1775.5950'),
(1, 'NZD  ', '2018-07-26 10:09:21', 1, '9925.3600', '9821.1400', '9873.2500'),
(1, 'PGK  ', '2018-07-26 10:09:21', 1, '4521.4200', '4261.0000', '4391.2100'),
(1, 'PHP  ', '2018-07-26 10:09:21', 1, '272.1200', '269.3900', '270.7550'),
(1, 'SAR  ', '2018-07-26 10:09:21', 1, '3870.3600', '3831.8600', '3851.1100'),
(1, 'SEK  ', '2018-07-26 10:09:22', 1, '1658.9000', '1641.8700', '1650.3850'),
(1, 'SGD  ', '2018-07-26 10:09:22', 1, '10680.6500', '10573.9100', '10627.2800'),
(1, 'THB  ', '2018-07-26 10:09:22', 1, '436.9400', '432.3400', '434.6400'),
(1, 'USD  ', '2018-07-26 10:09:22', 1, '14515.0000', '14371.0000', '14443.0000'),
(1, 'VND  ', '2018-07-26 10:09:22', 1, '0.6300', '0.6200', '0.6250');

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `exchange_rate`  AS  select `s`.`nama_source` AS `SOURCE`,`m`.`nama_matauang` AS `MATA_UANG`,`e`.`nilai` AS `NILAI`,`e`.`tanggal` AS `TANGGAL`,`e`.`kurs_jual` AS `KURS_JUAL`,`e`.`kurs_beli` AS `KURS_BELI`,`e`.`kurs_tengah` AS `KURS_TENGAH` from ((`source` `s` join `matauang` `m`) join `ex_rate` `e`) where ((`s`.`id_source` = `e`.`id_source`) and (`m`.`kode_matauang` = `e`.`kode_matauang`)) ;

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
