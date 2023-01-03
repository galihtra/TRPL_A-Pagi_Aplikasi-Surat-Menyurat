-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2022 at 12:21 PM
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
-- Database: `pace_if`
--

-- --------------------------------------------------------

--
-- Table structure for table `berkas`
--

CREATE TABLE `berkas` (
  `idberkas` int(11) NOT NULL,
  `pengajuan_surat_id` int(11) NOT NULL,
  `surat_syarat_id` int(11) NOT NULL,
  `nama_berkas` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `berkas`
--

INSERT INTO `berkas` (`idberkas`, `pengajuan_surat_id`, `surat_syarat_id`, `nama_berkas`) VALUES
(58, 128, 2, 'register.jpeg'),
(59, 129, 2, 'register1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_surat`
--

CREATE TABLE `pengajuan_surat` (
  `idpengajuansurat` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `surat_id` int(11) NOT NULL,
  `status` enum('Buat','Pengajuan','Proses','Selesai','Tolak') DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengajuan_surat`
--

INSERT INTO `pengajuan_surat` (`idpengajuansurat`, `user_id`, `surat_id`, `status`, `create_by`) VALUES
(128, 51, 2, 'Pengajuan', 51),
(129, 52, 2, 'Selesai', 52);

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `idsurat` int(11) NOT NULL,
  `nama_surat` varchar(128) DEFAULT NULL,
  `keterangan` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`idsurat`, `nama_surat`, `keterangan`) VALUES
(2, 'Surat Keterangan Beasiswa', 'Surat Keterangan Beasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `surat_syarat`
--

CREATE TABLE `surat_syarat` (
  `idsurat_syarat` int(11) NOT NULL,
  `surat_id` int(11) DEFAULT NULL,
  `nama_syarat` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `surat_syarat`
--

INSERT INTO `surat_syarat` (`idsurat_syarat`, `surat_id`, `nama_syarat`) VALUES
(2, 2, 'KTM');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idusers` int(11) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `level` enum('admin','user') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idusers`, `username`, `password`, `level`) VALUES
(1, 'admin', '$2y$10$YeTc/dcZ32v0xT3mztiAwuTv5wu9VYzWpw/CMumNknRLWSbhyoZKS', 'admin'),
(44, '4342201011', '$2y$10$7MWMKyT5t/HeOWJ8MKz4cO1ArKGXq5oVPM1ru6IqSk02/cBESh8.W', 'user'),
(51, '4342201001', '$2y$10$CojLUqvVu8ZbEbNI8ITH0.SfZDhRoMUC/ttEZBFSAPWnhX2E87mUu', 'user'),
(52, '4342201002', '$2y$10$4JT6lBklvKImpg0Jj1copO9B0/EhUQu7XDWxz/yI8DKUhqYdW8lra', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `iduser_profile` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `nama_lengkap` varchar(128) NOT NULL,
  `program_studi` varchar(64) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Pria','Wanita') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`iduser_profile`, `users_id`, `nim`, `nama_lengkap`, `program_studi`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `alamat`) VALUES
(5, 44, '4342201011', 'Jhonatan Sidabutar', 'Teknologi Rekayasa Perangkat Lunak', '2004-05-17', 'Pria', 'Kristen Protestan', 'BATU AJI'),
(11, 51, '4342201001', 'Sinta Rusita', 'Animasi', '0000-00-00', 'Wanita', 'Islam', ''),
(12, 52, '4342201002', 'Andi Putra', 'Rekayasa Keamana Siber', '0000-00-00', 'Pria', 'Islam', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berkas`
--
ALTER TABLE `berkas`
  ADD PRIMARY KEY (`idberkas`);

--
-- Indexes for table `pengajuan_surat`
--
ALTER TABLE `pengajuan_surat`
  ADD PRIMARY KEY (`idpengajuansurat`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`idsurat`);

--
-- Indexes for table `surat_syarat`
--
ALTER TABLE `surat_syarat`
  ADD PRIMARY KEY (`idsurat_syarat`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusers`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`iduser_profile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berkas`
--
ALTER TABLE `berkas`
  MODIFY `idberkas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `pengajuan_surat`
--
ALTER TABLE `pengajuan_surat`
  MODIFY `idpengajuansurat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `idsurat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `surat_syarat`
--
ALTER TABLE `surat_syarat`
  MODIFY `idsurat_syarat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `iduser_profile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
