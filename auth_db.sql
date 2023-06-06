-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.42 - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for app_db
DROP DATABASE IF EXISTS `app_db`;
CREATE DATABASE IF NOT EXISTS `app_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `app_db`;

-- Dumping structure for table app_db.Images
DROP TABLE IF EXISTS `Images`;
CREATE TABLE IF NOT EXISTS `Images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table app_db.Images: ~8 rows (approximately)
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
INSERT INTO `Images` (`id`, `img`) VALUES
	(1, 'public/img/img1.jpg'),
	(2, 'public/img/img1.jpg'),
	(3, 'public/img/img1.jpg'),
	(4, 'public/img/img1.jpg'),
	(5, 'public/img/img1.jpg'),
	(6, 'public/img/img1.jpg'),
	(7, 'public/img/img1.jpg'),
	(8, 'public/img/img1.jpg');
/*!40000 ALTER TABLE `Images` ENABLE KEYS */;

-- Dumping structure for table app_db.RestAreaImages
DROP TABLE IF EXISTS `RestAreaImages`;
CREATE TABLE IF NOT EXISTS `RestAreaImages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rest_area_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rest_area_id` (`rest_area_id`),
  KEY `image_id` (`image_id`),
  CONSTRAINT `RestAreaImages_ibfk_1` FOREIGN KEY (`rest_area_id`) REFERENCES `RestAreas` (`id`),
  CONSTRAINT `RestAreaImages_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `Images` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table app_db.RestAreaImages: ~0 rows (approximately)
/*!40000 ALTER TABLE `RestAreaImages` DISABLE KEYS */;
INSERT INTO `RestAreaImages` (`id`, `rest_area_id`, `image_id`) VALUES
	(1, 1, 1),
	(2, 1, 6);
/*!40000 ALTER TABLE `RestAreaImages` ENABLE KEYS */;

-- Dumping structure for table app_db.RestAreas
DROP TABLE IF EXISTS `RestAreas`;
CREATE TABLE IF NOT EXISTS `RestAreas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rest_area_name` varchar(255) DEFAULT NULL,
  `rest_area_location` varchar(255) DEFAULT NULL,
  `toll_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `toll_id` (`toll_id`),
  CONSTRAINT `RestAreas_ibfk_1` FOREIGN KEY (`toll_id`) REFERENCES `Tolls` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table app_db.RestAreas: ~8 rows (approximately)
/*!40000 ALTER TABLE `RestAreas` DISABLE KEYS */;
INSERT INTO `RestAreas` (`id`, `rest_area_name`, `rest_area_location`, `toll_id`) VALUES
	(1, 'Rest Area KM 57', 'Karawang, Jawa Barat', 100),
	(2, 'Rest Area KM 19', 'Bekasi, Jawa Barat', 100),
	(3, 'Rest Area KM 42', 'Karawang, Jawa Barat', 100),
	(4, 'Rest Area KM 52', 'Karawang, Jawa Barat', 100),
	(5, 'Rest Area KM 71', 'Karawang, Jawa Barat', 100),
	(6, 'Rest Area KM 379', 'Jl. Tol Semarang-Batang', 200),
	(7, 'Rest Area KM 389', 'Jl. Tol Semarang-Batang', 200),
	(8, 'Rest Area KM 391', 'Jl. Tol Semarang-Batang', 200);
/*!40000 ALTER TABLE `RestAreas` ENABLE KEYS */;

-- Dumping structure for table app_db.Tolls
DROP TABLE IF EXISTS `Tolls`;
CREATE TABLE IF NOT EXISTS `Tolls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `toll_name` varchar(255) DEFAULT NULL,
  `toll_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

-- Dumping data for table app_db.Tolls: ~2 rows (approximately)
/*!40000 ALTER TABLE `Tolls` DISABLE KEYS */;
INSERT INTO `Tolls` (`id`, `toll_name`, `toll_number`) VALUES
	(100, 'Tol Jakarta-Cikampek', '1'),
	(200, 'Tol Batang-Semarang', '2');
/*!40000 ALTER TABLE `Tolls` ENABLE KEYS */;

-- Dumping structure for table app_db.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refresh_token` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table app_db.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `refresh_token`, `createdAt`, `updatedAt`) VALUES
	(1, 'Ken', 'test@test.co.id', '$2b$10$YJ/srbMxFYYLTFn7zxUrDubfuo2Vk6IjCd3CPEtwlTaikOfZeic9a', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOiJLZW4iLCJlbWFpbCI6InRlc3RAdGVzdC5jby5pZCIsImlhdCI6MTY4NTI5MDMyMCwiZXhwIjoxNjg1MjkzOTIwfQ.1smQHoMzPY__zb4PG9nPeegwQD5fa-OovRFOS5Q0VqA', '2023-05-27 18:54:28', '2023-05-28 16:12:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
