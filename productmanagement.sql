-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for productmanagement
CREATE DATABASE IF NOT EXISTS `productmanagement` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `productmanagement`;

-- Dumping structure for table productmanagement.category
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int NOT NULL,
  `category_name` varchar(50) DEFAULT '',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table productmanagement.category: ~4 rows (approximately)
DELETE FROM `category`;
INSERT INTO `category` (`category_id`, `category_name`) VALUES
	(101, 'electronics'),
	(102, 'accesories'),
	(103, 'electronics'),
	(104, 'mobile devices');

-- Dumping structure for table productmanagement.order
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int DEFAULT NULL,
  `pro_id` int DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table productmanagement.order: ~4 rows (approximately)
DELETE FROM `order`;
INSERT INTO `order` (`order_id`, `pro_id`, `date`) VALUES
	(1, 101, '2025-01-29'),
	(2, 102, '2025-01-24'),
	(3, 103, '2025-01-22'),
	(4, 104, '2025-01-16');

-- Dumping structure for table productmanagement.product
CREATE TABLE IF NOT EXISTS `product` (
  `pro_id` int NOT NULL,
  `pro_name` varchar(10) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table productmanagement.product: ~4 rows (approximately)
DELETE FROM `product`;
INSERT INTO `product` (`pro_id`, `pro_name`, `price`, `category_id`) VALUES
	(101, 'laptop', 10000, 101),
	(102, 'speaker', 5000, 102),
	(103, 'TV', 15000, 103),
	(104, 'phone', 25000, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
