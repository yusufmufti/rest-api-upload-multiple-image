-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21 Okt 2017 pada 18.57
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest_server`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `isbn` varchar(8) NOT NULL,
  `title` varchar(50) NOT NULL,
  `writer` varchar(40) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`isbn`, `title`, `writer`, `description`) VALUES
('20170920', 'Keluarga Tak Kasat Mata UPDATE', 'Genta', 'sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text.\\r\\n\\r\\nsample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text'),
('20170921', 'Spiderman naik haji', 'Nuris Akbar', 'sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text.\r\n\r\nsample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text.\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`isbn`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
