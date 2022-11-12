-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Nov 2022 pada 04.05
-- Versi Server: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_kriptografi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `file`
--

CREATE TABLE IF NOT EXISTS `file` (
`id_file` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `file_name_source` varchar(255) DEFAULT NULL,
  `file_name_finish` varchar(255) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `file_size` float DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `tgl_upload` timestamp NULL DEFAULT NULL,
  `status` enum('1','2') DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `file`
--

INSERT INTO `file` (`id_file`, `username`, `file_name_source`, `file_name_finish`, `file_url`, `file_size`, `password`, `tgl_upload`, `status`, `keterangan`) VALUES
(34, 'sidang', '24115-202232-musakkir-nompo.pdf', '16372-202232-musakkir-nompo.rda', 'file_encrypt/16372-202232-musakkir-nompo.rda', 1757.34, 'ac627ab1ccbdb62e', '2022-11-10 02:03:47', '1', 'File Musakkir'),
(35, 'sidang', '27883-202232-musakkir-nompo.pdf', '20200-202232-musakkir-nompo.rda', 'file_encrypt/20200-202232-musakkir-nompo.rda', 1757.34, 'ac627ab1ccbdb62e', '2022-11-10 02:05:54', '1', 'File Musakkir'),
(36, 'musakkir', '45545-khs-semester-4.pdf', '5595-khs-semester-4.rda', 'file_encrypt/5595-khs-semester-4.rda', 514.61, 'd005ce7aeef46bd1', '2022-11-12 00:46:10', '2', 'Ini adalah file KHS'),
(37, 'admin', '32508-nama-kelompok.pptx', '24741-nama-kelompok.rda', 'file_encrypt/24741-nama-kelompok.rda', 689.103, '7cd86ecb09aa48c6', '2022-11-12 02:25:49', '2', 'File ppt Nama Kelompok');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(15) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `join_date` timestamp NULL DEFAULT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `status` enum('1','2') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `fullname`, `job_title`, `join_date`, `last_activity`, `status`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'Project Manager', '2017-04-28 08:48:55', '2022-11-12 02:36:03', '1'),
('musakkir', '74e7caf98c6df498fb9a242884317da5', 'Musakkir Nompo', 'Back End', '2022-10-31 22:36:15', '2022-11-12 00:50:11', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file`
--
ALTER TABLE `file`
 ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
