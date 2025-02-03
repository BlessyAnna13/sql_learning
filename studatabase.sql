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


-- Dumping database structure for studentmanagement
DROP DATABASE IF EXISTS `studentmanagement`;
CREATE DATABASE IF NOT EXISTS `studentmanagement` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `studentmanagement`;

-- Dumping structure for table studentmanagement.academic_details
DROP TABLE IF EXISTS `academic_details`;
CREATE TABLE IF NOT EXISTS `academic_details` (
  `batch_id` int NOT NULL,
  `join_date` date DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`batch_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `academic_details_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table studentmanagement.academic_details: ~0 rows (approximately)
DELETE FROM `academic_details`;

-- Dumping structure for table studentmanagement.course
DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `course_id` int NOT NULL,
  `course_name` varchar(10) DEFAULT NULL,
  `dept_name` varchar(10) DEFAULT NULL,
  `fees` int DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table studentmanagement.course: ~5 rows (approximately)
DELETE FROM `course`;
INSERT INTO `course` (`course_id`, `course_name`, `dept_name`, `fees`) VALUES
	(1, 'IT', 'Bsc.IT', 500000),
	(2, 'commerce', 'B.com', 400000),
	(3, 'AI', 'bsc.AI', 800000),
	(4, 'accounts', 'bba', 500000),
	(5, 'literature', 'ba.lit', 400000);

-- Dumping structure for table studentmanagement.marks
DROP TABLE IF EXISTS `marks`;
CREATE TABLE IF NOT EXISTS `marks` (
  `YEAR1` int DEFAULT NULL,
  `YEAR2` int DEFAULT NULL,
  `YEAR3` int DEFAULT NULL,
  `stu_id` int DEFAULT NULL,
  KEY `stu_id` (`stu_id`),
  CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `students` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table studentmanagement.marks: ~5 rows (approximately)
DELETE FROM `marks`;
INSERT INTO `marks` (`YEAR1`, `YEAR2`, `YEAR3`, `stu_id`) VALUES
	(80, 50, 90, 1),
	(95, 87, 60, 2),
	(79, 89, 30, 3),
	(30, 89, 90, 4),
	(50, 78, 90, 5);

-- Dumping structure for table studentmanagement.students
DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `stu_id` int NOT NULL,
  `firstname` varchar(10) DEFAULT NULL,
  `lastname` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `dob` int DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table studentmanagement.students: ~5 rows (approximately)
DELETE FROM `students`;
INSERT INTO `students` (`stu_id`, `firstname`, `lastname`, `age`, `dob`) VALUES
	(1, 'ram', 'kumar', 18, -1993),
	(2, 'sita', 'lakshmi', 18, 3),
	(3, 'ann', 'gracy', 19, NULL),
	(4, 'angel', 'abraham', 19, NULL),
	(5, 'stephan', 'issac', 20, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
