-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06 Agu 2018 pada 11.25
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
,`KURS_JUAL` decimal(13,5)
,`KURS_BELI` decimal(13,5)
,`KURS_TENGAH` decimal(13,5)
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
  `kurs_jual` decimal(13,5) NOT NULL,
  `kurs_beli` decimal(13,5) NOT NULL,
  `kurs_tengah` decimal(13,5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ex_rate`
--

INSERT INTO `ex_rate` (`id_source`, `kode_matauang`, `tanggal`, `nilai`, `kurs_jual`, `kurs_beli`, `kurs_tengah`) VALUES
(1, 'AUD  ', '2018-08-06 09:58:53', 1, '10760.49000', '10652.57000', '10706.53000'),
(1, 'BND  ', '2018-08-06 09:58:53', 1, '10654.51000', '10546.77000', '10600.64000'),
(1, 'CAD  ', '2018-08-06 09:58:53', 1, '11195.48000', '11083.85000', '11139.66500'),
(1, 'CHF  ', '2018-08-06 09:58:53', 1, '14627.60000', '14479.95000', '14553.77500'),
(1, 'CNH  ', '2018-08-06 09:58:53', 1, '2127.69000', '2106.02000', '2116.85500'),
(1, 'CNY  ', '2018-08-06 09:58:54', 1, '2124.12000', '2103.10000', '2113.61000'),
(1, 'DKK  ', '2018-08-06 09:58:54', 1, '2257.68000', '2235.10000', '2246.39000'),
(1, 'EUR  ', '2018-08-06 09:58:54', 1, '16827.63000', '16659.69000', '16743.66000'),
(1, 'GBP  ', '2018-08-06 09:58:54', 1, '18917.44000', '18725.94000', '18821.69000'),
(1, 'HKD  ', '2018-08-06 09:58:54', 1, '1854.22000', '1835.68000', '1844.95000'),
(1, 'JPY  ', '2018-08-06 09:58:54', 100, '13071.95000', '12941.44000', '13006.69500'),
(1, 'KRW  ', '2018-08-06 09:58:54', 1, '12.96000', '12.83000', '12.89500'),
(1, 'KWD  ', '2018-08-06 09:58:54', 1, '48077.30000', '47523.09000', '47800.19500'),
(1, 'LAK  ', '2018-08-06 09:58:54', 1, '1.73000', '1.71000', '1.72000'),
(1, 'MYR  ', '2018-08-06 09:58:54', 1, '3571.29000', '3531.62000', '3551.45500'),
(1, 'NOK  ', '2018-08-06 09:58:54', 1, '1763.32000', '1745.70000', '1754.51000'),
(1, 'NZD  ', '2018-08-06 09:58:54', 1, '9816.00000', '9715.99000', '9765.99500'),
(1, 'PGK  ', '2018-08-06 09:58:54', 1, '4504.15000', '4243.45000', '4373.80000'),
(1, 'PHP  ', '2018-08-06 09:58:54', 1, '274.41000', '271.32000', '272.86500'),
(1, 'SAR  ', '2018-08-06 09:58:54', 1, '3880.49000', '3841.99000', '3861.24000'),
(1, 'SEK  ', '2018-08-06 09:58:54', 1, '1632.03000', '1615.52000', '1623.77500'),
(1, 'SGD  ', '2018-08-06 09:58:54', 1, '10654.51000', '10546.77000', '10600.64000'),
(1, 'THB  ', '2018-08-06 09:58:54', 1, '437.68000', '433.09000', '435.38500'),
(1, 'USD  ', '2018-08-06 09:58:55', 1, '14553.00000', '14409.00000', '14481.00000'),
(1, 'VND  ', '2018-08-06 09:58:55', 1, '0.62000', '0.62000', '0.62000'),
(2, 'AUD', '2018-08-06 10:18:54', 1, '0.00000', '0.00000', '1.00970'),
(2, 'EUR', '2018-08-06 10:18:53', 1, '0.00000', '0.00000', '1.57950'),
(2, 'IDR', '2018-08-06 10:18:54', 100, '0.00000', '0.00000', '0.00943'),
(2, 'USD', '2018-08-06 10:18:53', 1, '0.00000', '0.00000', '1.36600'),
(3, 'AUD', '2018-08-06 09:58:43', 1, '5.72430', '5.88090', '5.80260'),
(3, 'CAD', '2018-08-06 09:58:43', 1, '5.95050', '6.11880', '6.03465'),
(3, 'CHF', '2018-08-06 09:58:44', 1, '7.77840', '7.99040', '7.88440'),
(3, 'CNY', '2018-08-06 09:58:44', 1, '1.13030', '1.15990', '1.14510'),
(3, 'EUR', '2018-08-06 09:58:43', 1, '8.94890', '9.19690', '9.07290'),
(3, 'GBP', '2018-08-06 09:58:44', 1, '10.00200', '10.38400', '10.19300'),
(3, 'JPY', '2018-08-06 09:58:43', 1, '0.06947', '0.07156', '0.07052'),
(3, 'MYR', '2018-08-06 09:58:43', 1, '1.78550', '2.08550', '1.93550'),
(3, 'NZD', '2018-08-06 09:58:43', 1, '5.21000', '5.37300', '5.29150'),
(3, 'PHP', '2018-08-06 09:58:43', 1, '0.14450', '0.15900', '0.15175'),
(3, 'SGD', '2018-08-06 09:58:44', 1, '5.65800', '5.82600', '5.74200'),
(3, 'THB', '2018-08-06 09:58:44', 1, '0.22130', '0.25030', '0.23580'),
(3, 'USD', '2018-08-06 09:58:43', 1, '7.78540', '7.91240', '7.84890');

-- --------------------------------------------------------

--
-- Struktur dari tabel `import`
--

CREATE TABLE `import` (
  `id` int(11) NOT NULL,
  `cl` int(11) NOT NULL,
  `exrate` varchar(10) NOT NULL,
  `from_curr` varchar(10) NOT NULL,
  `to_curr` varchar(10) NOT NULL,
  `valid` date NOT NULL,
  `exch` decimal(13,5) NOT NULL,
  `ratio` int(11) NOT NULL,
  `ratio_b` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `import`
--

INSERT INTO `import` (`id`, `cl`, `exrate`, `from_curr`, `to_curr`, `valid`, `exch`, `ratio`, `ratio_b`) VALUES
(1, 100, 'B', 'USD', 'IDR', '2018-08-06', '14.55300', 0, 0),
(2, 100, 'B', 'USDN', 'IDR', '2018-08-06', '14.55300', 0, 0),
(3, 100, 'G', 'USD', 'IDR', '2018-08-06', '14.40900', 0, 0),
(4, 100, 'G', 'USDN', 'IDR', '2018-08-06', '14.40900', 0, 0),
(5, 100, 'M', 'AUD', 'IDR', '2018-08-06', '10.70653', 0, 0),
(6, 100, 'M', 'AUD', 'USD', '2018-08-06', '0.73935', 0, 0),
(7, 100, 'M', 'CAD', 'IDR', '2018-08-06', '11.13967', 0, 0),
(8, 100, 'M', 'CAD', 'USD', '2018-08-06', '0.76926', 0, 0),
(9, 100, 'M', 'CHF', 'IDR', '2018-08-06', '14.55378', 0, 0),
(10, 100, 'M', 'CHF', 'USD', '2018-08-06', '1.00503', 0, 0),
(11, 100, 'M', 'CNY', 'IDR', '2018-08-06', '2.11361', 0, 0),
(12, 100, 'M', 'CNY', 'USD', '2018-08-06', '0.14596', 0, 0),
(13, 100, 'M', 'EUR', 'HKD', '2018-08-06', '9.07540', 0, 0),
(14, 100, 'M', 'EUR', 'IDR', '2018-08-06', '16.74366', 0, 0),
(15, 100, 'M', 'EUR', 'SGD', '2018-08-06', '1.57950', 0, 0),
(16, 100, 'M', 'EUR', 'USD', '2018-08-06', '1.15625', 0, 0),
(17, 100, 'M', 'GBP', 'IDR', '2018-08-06', '18.82169', 0, 0),
(18, 100, 'M', 'GBP', 'USD', '2018-08-06', '1.29975', 0, 0),
(19, 100, 'M', 'HKD', 'EUR', '2018-08-06', '0.11019', 0, 0),
(20, 100, 'M', 'HKD', 'IDR', '2018-08-06', '1.84495', 0, 0),
(21, 100, 'M', 'HKD', 'USD', '2018-08-06', '0.12740', 0, 0),
(22, 100, 'M', 'JPY', 'IDR', '2018-08-06', '130.06695', 0, 0),
(23, 100, 'M', 'JPY', 'USD', '2018-08-06', '0.00898', 0, 0),
(24, 100, 'M', 'MYR', 'IDR', '2018-08-06', '3.55146', 0, 0),
(25, 100, 'M', 'MYR', 'USD', '2018-08-06', '0.24525', 0, 0),
(26, 100, 'M', 'NOK', 'IDR', '2018-08-06', '1.75451', 0, 0),
(27, 100, 'M', 'NOK', 'USD', '2018-08-06', '0.12116', 0, 0),
(28, 100, 'M', 'NZD', 'IDR', '2018-08-06', '9.76600', 0, 0),
(29, 100, 'M', 'NZD', 'USD', '2018-08-06', '0.67440', 0, 0),
(30, 100, 'M', 'SGD', 'IDR', '2018-08-06', '10.60064', 0, 0),
(31, 100, 'M', 'SGD', 'USD', '2018-08-06', '0.73204', 0, 0),
(32, 100, 'M', 'THB', 'IDR', '2018-08-06', '435.38500', 0, 0),
(33, 100, 'M', 'THB', 'USD', '2018-08-06', '0.03007', 0, 0),
(34, 100, 'M', 'USD', 'IDR', '2018-08-06', '14.48100', 0, 0),
(35, 100, 'M', 'USDN', 'IDR', '2018-08-06', '14.48100', 0, 0),
(36, 100, 'M', 'USDN', 'SGD', '2018-08-06', '1.36605', 0, 0),
(37, 100, 'PES', 'AUD', 'USD', '2018-08-06', '0.73888', 0, 0),
(38, 100, 'PES', 'EUR', 'USD', '2018-08-06', '1.16491', 0, 0),
(39, 100, 'PES', 'SGD', 'USD', '2018-08-06', '0.73389', 0, 0),
(40, 100, 'PES', 'USD', 'IDR', '2018-08-06', '14.46036', 0, 0),
(41, 100, 'PTR', 'AUD', 'USD', '2018-08-06', '0.73888', 0, 0),
(42, 100, 'PTR', 'EUR', 'HKD', '2018-08-06', '9.07530', 0, 0),
(43, 100, 'PTR', 'EUR', 'USD', '2018-08-06', '1.16491', 0, 0),
(44, 100, 'PTR', 'HKD', 'EUR', '2018-08-06', '0.11019', 0, 0),
(45, 100, 'PTR', 'SGD', 'USD', '2018-08-06', '0.73389', 0, 0),
(46, 100, 'PTR', 'USD', 'IDR', '2018-08-06', '14.46036', 0, 0);

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
-- Indexes for table `import`
--
ALTER TABLE `import`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `import`
--
ALTER TABLE `import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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
