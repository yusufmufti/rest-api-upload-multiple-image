-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for rest_server
CREATE DATABASE IF NOT EXISTS `rest_server` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rest_server`;

-- Dumping structure for table rest_server.books
CREATE TABLE IF NOT EXISTS `books` (
  `isbn` varchar(8) NOT NULL,
  `title` varchar(50) NOT NULL,
  `writer` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rest_server.books: ~4 rows (approximately)
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`isbn`, `title`, `writer`, `description`, `image`) VALUES
	('20171201', 'Panduan Mudah Pengembangan Google Map Android', 'Yusuf Mufti', 'Buku tutorial dan latihan pengembangan aplikasi Android', NULL),
	('20171202', 'Panduan Mudah Pengembangan Google Map Android', 'Yusuf Mufti', 'Buku tutorial dan latihan pengembangan aplikasi Android', '20191204_034538.jpg'),
	('20171203', 'Panduan Mudah Pengembangan Google Map Android', 'Yusuf Mufti', 'Buku tutorial dan latihan pengembangan aplikasi Android', NULL),
	('20171204', 'Panduan Mudah Pengembangan Google Map Android', 'Yusuf Mufti', 'Buku tutorial dan latihan pengembangan aplikasi Android', NULL),
	('20171205', 'Panduan Mudah Pengembangan Google Map Android', 'Yusuf Mufti', 'Buku tutorial dan latihan pengembangan aplikasi Android', NULL),
	('20171206', 'Panduan Mudah Pengembangan Google Map Android', 'Yusuf Mufti', 'Buku tutorial dan latihan pengembangan aplikasi Android', NULL),
	('20171207', 'Panduan Mudah Pengembangan Google Map Android', 'Yusuf Mufti', 'Buku tutorial dan latihan pengembangan aplikasi Android', NULL),
	('20171208', 'Panduan Mudah Pengembangan Google Map Android', 'Yusuf Mufti', 'Buku tutorial dan latihan pengembangan aplikasi Android', NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;

-- Dumping structure for table rest_server.books_image
CREATE TABLE IF NOT EXISTS `books_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(8) DEFAULT '0',
  `image` varchar(100) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table rest_server.books_image: ~0 rows (approximately)
/*!40000 ALTER TABLE `books_image` DISABLE KEYS */;
INSERT INTO `books_image` (`id`, `isbn`, `image`) VALUES
	(1, '20171205', '20191204_090132-2.jpg'),
	(2, '20171205', '20191204_090132-1.jpg'),
	(3, '20171206', '20191204_090248-2.jpg'),
	(4, '20171206', '20191204_090248-1.jpg'),
	(5, '20171207', '20191204_090535-2.jpg'),
	(6, '20171207', '20191204_090535-1.jpg'),
	(7, '20171208', '20191204_090804-2.jpg'),
	(8, '20171208', '20191204_090804-1.jpg');
/*!40000 ALTER TABLE `books_image` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
