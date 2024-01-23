-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 09, 2024 at 05:51 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21766301_webdailyjournal`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `gambar` text NOT NULL,
  `tanggal` datetime NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `username`) VALUES
(1, 'Perpustakaan Kampus', 'perpustakaan kampus ad di gedung G, lantai 2', 'keg1.jpg', '2023-12-12 06:56:52', 'admin'),
(2, 'Ruang Kelas Gedung H', 'Ruang kelas gedung H cukup banyak', '', '2023-12-12 06:56:52', 'admin'),
(3, 'Laboratorium', 'laboratorium untuk praktek', '20231212132236.jpg', '2023-12-12 13:22:36', 'admin'),
(6, 'sadafafaf', 'qwertyuiop', '20231219125713.jpg', '2023-12-19 12:57:13', 'admin'),
(7, 'article 2', 'qwertyuioplkjhg', '20231219130812.jpg', '2023-12-19 13:08:12', 'admin'),
(8, '123123', 'qwerty', '20231219133522.jpg', '2023-12-19 13:35:22', 'admin'),
(9, '12345', 'qwerty', '', '2024-01-09 12:04:00', 'admin'),
(10, 'UAS_tes1', 'qwertyuio', '20240109121625.jpg', '2024-01-09 12:16:25', 'admin'),
(11, 'tes2', 'sdfghj', '20240109121846.jpg', '2024-01-09 12:18:46', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `judul` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`judul`, `tanggal`, `gambar`, `id`, `username`) VALUES
('09-01-2024', '2024-01-09', '20240109120723.jpg', 1, 'admin'),
('2024-01-09', '2024-01-09', '20240109121959.jpg', 2, 'admin'),
('0', '2024-01-09', '20240109122357.jpg', 3, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `foto`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', ''),
(2, 'admin2', 'b9d1bdf8df1babf2cdf5fd970fa2fc08', ''),
(3, 'sulu', 'c5a07165e59a339eba4ba854c21632f9', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
