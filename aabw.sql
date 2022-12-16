-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2022 at 01:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aabw`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun1s`
--

CREATE TABLE `akun1s` (
  `id_akun1` int(6) UNSIGNED NOT NULL,
  `kode_akun1` varchar(6) NOT NULL,
  `nama_akun1` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akun1s`
--

INSERT INTO `akun1s` (`id_akun1`, `kode_akun1`, `nama_akun1`) VALUES
(1, '1', 'Aktivaaaaaa'),
(2, '2', 'Kewajiban'),
(3, '3', 'Modal'),
(4, '4', 'Pendapatan'),
(5, '5', 'Beban'),
(6, '6', 'Akun ke-6'),
(7, '7', 'Akun ke-7'),
(12, '10', 'Iman'),
(13, '11', 'Umang'),
(14, '11', 'Coba');

-- --------------------------------------------------------

--
-- Table structure for table `akun2s`
--

CREATE TABLE `akun2s` (
  `id_akun2` int(6) UNSIGNED NOT NULL,
  `kode_akun2` int(6) UNSIGNED NOT NULL,
  `nama_akun2` varchar(40) NOT NULL,
  `kode_akun1` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akun2s`
--

INSERT INTO `akun2s` (`id_akun2`, `kode_akun2`, `nama_akun2`, `kode_akun1`) VALUES
(1, 11, 'Aktiva Lancar - Edit', 2),
(4, 22, 'Utang Jangka Panjang', 2),
(5, 31, 'Modal Pemilik', 3),
(6, 32, 'Prive Pemilik', 3),
(7, 41, 'Pendapatan Usaha', 4),
(8, 42, 'Pendapatan diluar Usaha', 4),
(9, 51, 'Beban Usaha', 5),
(10, 52, 'Beban di Luar Usaha', 5),
(15, 12, 'Coba-2', 4);

-- --------------------------------------------------------

--
-- Table structure for table `akun3s`
--

CREATE TABLE `akun3s` (
  `id_akun3` int(6) UNSIGNED NOT NULL,
  `kode_akun3` int(6) UNSIGNED NOT NULL,
  `nama_akun3` varchar(70) NOT NULL,
  `kode_akun2` int(6) UNSIGNED NOT NULL,
  `kode_akun1` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akun3s`
--

INSERT INTO `akun3s` (`id_akun3`, `kode_akun3`, `nama_akun3`, `kode_akun2`, `kode_akun1`) VALUES
(1, 1101, 'Kas', 11, 1),
(2, 1102, 'Piutang Usaha', 11, 1),
(3, 1103, 'Perlengkapan Kantor', 11, 1),
(4, 1104, 'Sewa Dibayar di muka', 11, 1),
(5, 1105, 'Asuransi dibayar dimuka', 11, 1),
(6, 1201, 'Utang Usaha', 12, 1),
(7, 1202, 'Akumulasi Penyusutan P.Kantor', 12, 1),
(8, 1203, 'Tanah', 12, 1),
(9, 2101, 'Utang Usaha', 21, 2),
(10, 2102, 'Utang Gaji', 21, 2),
(11, 2103, 'Pendapatan diterima di muka', 21, 2),
(12, 2201, 'Utang Hipotek', 22, 2),
(13, 2202, 'Utang Obligasi', 22, 2),
(14, 3101, 'Modal Pemilik', 31, 3),
(16, 4101, 'Pendapatan Jasa', 41, 4),
(17, 4102, 'Pendapatan diterima di muka', 41, 4),
(18, 4201, 'Pendapatan diluar Usaha', 42, 4),
(19, 5101, 'Beban Gaji Karyawan', 51, 5),
(20, 5102, 'Beban Iklan', 51, 5),
(21, 5103, 'Beban Asuransi', 51, 5),
(22, 5104, 'Beban Telpon', 51, 5),
(23, 5105, 'Beban Listrik', 51, 5),
(24, 5106, 'Beban Sewa', 51, 5),
(25, 5107, 'Beban Penyusutan Peralatan Kantor', 51, 5),
(26, 5108, 'Beban Perlengkapan Kantor', 51, 5),
(27, 5201, 'Beban Bunga', 52, 5),
(28, 5202, 'Beban Lainnya', 52, 5),
(29, 1109, 'Kode Akun Baru 1109 - Edit - Lagi gaes', 12, 1),
(32, 11, 'Coba-Akun3', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'fauzijihad@gmail.com', 1, '2022-10-22 00:04:10', 1),
(2, '::1', 'fauzijihad@gmail.com', 1, '2022-10-22 05:23:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(2, '2022-10-02-045654', 'App\\Database\\Migrations\\CreateAkun1', 'default', 'App', 1664688372, 1),
(5, '2022-10-11-012742', 'App\\Database\\Migrations\\CreateAkun2', 'default', 'App', 1665452496, 2),
(7, '2022-10-12-065407', 'App\\Database\\Migrations\\CreateAkun3', 'default', 'App', 1665557999, 3),
(8, '2022-10-12-204534', 'App\\Database\\Migrations\\CreateTransaksi', 'default', 'App', 1665607844, 4),
(9, '2022-10-12-210558', 'App\\Database\\Migrations\\CreteNilai', 'default', 'App', 1665609432, 5),
(10, '2022-10-12-231331', 'App\\Database\\Migrations\\CreateStatus', 'default', 'App', 1665616584, 6),
(15, '2022-10-14-031007', 'App\\Database\\Migrations\\CreatePenyesuaian', 'default', 'App', 1665721064, 7),
(16, '2022-10-14-031432', 'App\\Database\\Migrations\\CreateNilaiPenyesuaian', 'default', 'App', 1665721064, 7),
(17, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1666412745, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `id_nilai` int(5) UNSIGNED NOT NULL,
  `id_transaksi` int(5) UNSIGNED NOT NULL,
  `kode_akun3` int(6) UNSIGNED NOT NULL,
  `debit` float UNSIGNED NOT NULL,
  `kredit` float UNSIGNED NOT NULL,
  `id_status` int(5) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id_nilai`, `id_transaksi`, `kode_akun3`, `debit`, `kredit`, `id_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(20, 12, 1101, 30000000, 0, 3, '2022-10-22 01:17:27', '2022-10-22 01:17:27', NULL),
(21, 12, 1103, 3000000, 0, 5, '2022-10-22 01:17:27', '2022-10-22 01:17:27', NULL),
(22, 12, 1201, 35000000, 0, 5, '2022-10-22 01:17:27', '2022-10-22 01:17:27', NULL),
(23, 12, 3101, 0, 68000000, 5, '2022-10-22 01:17:27', '2022-10-22 01:17:27', NULL),
(24, 13, 1101, 0, 15000000, 2, '2022-10-22 01:18:27', '2022-10-22 01:18:27', NULL),
(25, 13, 1104, 15000000, 0, 5, '2022-10-22 01:18:27', '2022-10-22 01:18:27', NULL),
(26, 14, 1201, 5000000, 0, 5, '2022-10-22 01:19:23', '2022-10-22 01:19:23', NULL),
(27, 14, 2101, 0, 5000000, 5, '2022-10-22 01:19:23', '2022-10-22 01:19:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilaipenyesuaian`
--

CREATE TABLE `tbl_nilaipenyesuaian` (
  `id` int(5) UNSIGNED NOT NULL,
  `id_penyesuaian` int(5) UNSIGNED NOT NULL,
  `kode_akun3` int(6) UNSIGNED NOT NULL,
  `debit` float UNSIGNED NOT NULL,
  `kredit` float UNSIGNED NOT NULL,
  `id_status` int(5) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_nilaipenyesuaian`
--

INSERT INTO `tbl_nilaipenyesuaian` (`id`, `id_penyesuaian`, `kode_akun3`, `debit`, `kredit`, `id_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 5, 1104, 0, 2500000, 5, '2022-10-22 01:20:55', '2022-10-22 01:20:55', NULL),
(9, 5, 5106, 2500000, 0, 5, '2022-10-22 01:20:55', '2022-10-22 01:20:55', NULL),
(10, 6, 5103, 350000, 0, 5, '2022-10-22 01:21:45', '2022-10-22 01:21:45', NULL),
(11, 6, 1105, 0, 350000, 5, '2022-10-22 01:21:45', '2022-10-22 01:21:45', NULL),
(12, 7, 1202, 0, 600000, 5, '2022-10-22 01:22:36', '2022-10-22 01:22:36', NULL),
(13, 7, 5107, 600000, 0, 5, '2022-10-22 01:22:36', '2022-10-22 01:22:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penyesuaian`
--

CREATE TABLE `tbl_penyesuaian` (
  `id_penyesuaian` int(5) UNSIGNED NOT NULL,
  `tanggal` date DEFAULT NULL,
  `deskripsi` text NOT NULL,
  `nilai` float NOT NULL,
  `waktu` int(12) NOT NULL,
  `jumlah` float NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_penyesuaian`
--

INSERT INTO `tbl_penyesuaian` (`id_penyesuaian`, `tanggal`, `deskripsi`, `nilai`, `waktu`, `jumlah`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, '2022-10-08', 'Sewa gedung selama 6 bulan dibayar 2 Desember 2021 sebesar Rp 15.000.000', 15000000, 6, 2500000, NULL, NULL, NULL),
(6, '2022-10-08', 'Asuransi untuk 1 tahun dibayar 5 Desember 2021 sebesar Rp 4.200.000', 4200000, 12, 350000, NULL, NULL, NULL),
(7, '2022-10-08', 'Peralatan kantor disusutkan sebesar Rp 7.200.000 per tahun', 7200000, 12, 600000, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id_status` int(6) UNSIGNED NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`id_status`, `status`) VALUES
(1, 'Penerimaan'),
(2, 'Pengeluaran'),
(3, 'Investasi Masuk'),
(4, 'Investasi Keluar'),
(5, 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(5) UNSIGNED NOT NULL,
  `kwitansi` varchar(4) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `deskripsi` text NOT NULL,
  `ketjurnal` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `kwitansi`, `tanggal`, `deskripsi`, `ketjurnal`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, '0001', '2022-10-01', 'Tuan Najwa menyetorkan modal berupa uang tunai sebesar Rp30.000.000, perlengkapan kantor Rp3.000.000. dan peralatan kantor Rp 35.000.000', 'Setoran Modal Pemilik', NULL, NULL, NULL),
(13, '0002', '2022-10-02', 'Membayar Sewa gedung untuk 6 bulan sebesar Rp15.000.000', 'Pembayaran Sewa gedung untuk 6 bulan', NULL, NULL, NULL),
(14, '0003', '2022-10-03', 'Membeli peralatan kantor secara kredit dari Toko Sempurna sebesar Rp 5.000.000', 'Membeli peralatan kantor secara kredit dari Toko Sempurna sebesar Rp 5.000.000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'fauzijihad@gmail.com', 'fauzijihad', '$2y$10$5iCvTnkbyY.gjy.mXand4e7.wOX3hTK3rHV2GetofPMDs0BNB6RTS', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-10-22 00:03:45', '2022-10-22 00:03:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun1s`
--
ALTER TABLE `akun1s`
  ADD PRIMARY KEY (`id_akun1`);

--
-- Indexes for table `akun2s`
--
ALTER TABLE `akun2s`
  ADD PRIMARY KEY (`id_akun2`),
  ADD KEY `akun2s_kode_akun1_foreign` (`kode_akun1`);

--
-- Indexes for table `akun3s`
--
ALTER TABLE `akun3s`
  ADD PRIMARY KEY (`id_akun3`),
  ADD KEY `akun3s_kode_akun1_foreign` (`kode_akun1`);

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `tbl_nilai_id_transaksi_foreign` (`id_transaksi`);

--
-- Indexes for table `tbl_nilaipenyesuaian`
--
ALTER TABLE `tbl_nilaipenyesuaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_nilaipenyesuaian_id_penyesuaian_foreign` (`id_penyesuaian`);

--
-- Indexes for table `tbl_penyesuaian`
--
ALTER TABLE `tbl_penyesuaian`
  ADD PRIMARY KEY (`id_penyesuaian`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun1s`
--
ALTER TABLE `akun1s`
  MODIFY `id_akun1` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `akun2s`
--
ALTER TABLE `akun2s`
  MODIFY `id_akun2` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `akun3s`
--
ALTER TABLE `akun3s`
  MODIFY `id_akun3` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `id_nilai` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_nilaipenyesuaian`
--
ALTER TABLE `tbl_nilaipenyesuaian`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_penyesuaian`
--
ALTER TABLE `tbl_penyesuaian`
  MODIFY `id_penyesuaian` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `id_status` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akun2s`
--
ALTER TABLE `akun2s`
  ADD CONSTRAINT `akun2s_kode_akun1_foreign` FOREIGN KEY (`kode_akun1`) REFERENCES `akun1s` (`id_akun1`);

--
-- Constraints for table `akun3s`
--
ALTER TABLE `akun3s`
  ADD CONSTRAINT `akun3s_kode_akun1_foreign` FOREIGN KEY (`kode_akun1`) REFERENCES `akun1s` (`id_akun1`);

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD CONSTRAINT `tbl_nilai_id_transaksi_foreign` FOREIGN KEY (`id_transaksi`) REFERENCES `tbl_transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_nilaipenyesuaian`
--
ALTER TABLE `tbl_nilaipenyesuaian`
  ADD CONSTRAINT `tbl_nilaipenyesuaian_id_penyesuaian_foreign` FOREIGN KEY (`id_penyesuaian`) REFERENCES `tbl_penyesuaian` (`id_penyesuaian`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
