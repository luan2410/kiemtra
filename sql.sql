-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.43 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.11.0.7065
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for loctruongluan
CREATE DATABASE IF NOT EXISTS `loctruongluan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `loctruongluan`;

-- Dumping structure for table loctruongluan.dienthoai
CREATE TABLE IF NOT EXISTS `dienthoai` (
  `MADT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TENDT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NAMSANXUAT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CAUHINH` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MANCC` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HINHANH` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MADT`),
  KEY `FK_dienthoai_nhacungcap` (`MANCC`),
  CONSTRAINT `FK_dienthoai_nhacungcap` FOREIGN KEY (`MANCC`) REFERENCES `nhacungcap` (`MANCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table loctruongluan.dienthoai: ~4 rows (approximately)
INSERT INTO `dienthoai` (`MADT`, `TENDT`, `NAMSANXUAT`, `CAUHINH`, `MANCC`, `HINHANH`) VALUES
	('IP01', 'Iphone 16', '2025', 'Apple A16', 'NCC002', 'iphone1.jpg'),
	('IP02', 'Iphone 17', '2026', 'Apple A17', 'NCC002', 'iphone2.jpg'),
	('SS01', 'Samsung S1', '2023', 'intel 12', 'NCC001', 'samsung1.jpg'),
	('SS02', 'Samsung S2', '2024', 'Amd 8', 'NCC001', 'samsung2.jpg');

-- Dumping structure for table loctruongluan.nhacungcap
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `MANCC` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TENNHACC` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DIACHI` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SODIENTHOAI` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MANCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table loctruongluan.nhacungcap: ~2 rows (approximately)
INSERT INTO `nhacungcap` (`MANCC`, `TENNHACC`, `DIACHI`, `SODIENTHOAI`) VALUES
	('NCC001', 'Nha Cung cap 001', '12 nguyen van bao', '01234567890'),
	('NCC002', 'Nha Cung cap 002', '8 nguyen thai son', '012345667891');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
