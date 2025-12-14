-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2025 at 06:55 PM
-- Server version: 8.0.44
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursework2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `Deptcode` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Deptlocation` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`Deptcode`, `Deptlocation`) VALUES
('10J', 'Texas'),
('11K', 'North Carolina'),
('12L', 'Nevada'),
('13M', 'Arizona'),
('14N', 'Nunavut'),
('15O', 'Illinois'),
('16P', 'Quebec'),
('17Q', 'Nebraska'),
('18R', 'Missouri'),
('19S', 'Yukon'),
('1A', 'Kansas'),
('20T', 'Quebec'),
('21U', 'Kansas'),
('22V', 'Alabama'),
('23W', 'Mississippi'),
('24X', 'Washington'),
('25Y', 'Yukon'),
('26Z', 'Delaware'),
('27A1', 'Pennsylvania'),
('27AA', 'Pennsylvania'),
('28BB', 'Texas'),
('29CC', 'Quebec'),
('2B', 'Labrador'),
('30DD', 'Ontario'),
('3C', 'Texas'),
('4D', 'California'),
('5E', 'New Brunswick'),
('6F', 'Oregon'),
('7G', 'Utah'),
('8H', 'Manitoba'),
('9I', 'Yukon');

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `Empno` int NOT NULL,
  `Name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `hire_date` date DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `Deptcode` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `job_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`Empno`, `Name`, `hire_date`, `salary`, `Deptcode`, `job_id`) VALUES
(1001, 'Nikolai Peartree', '2025-07-26', 62246.00, '15O', 7),
(1002, 'Bernice Carroll', '2025-08-22', 51719.40, '19S', 10),
(1003, 'Clarey Matous', '2025-10-17', 116483.00, '1A', 22),
(1004, 'Gustaf Brognot', '2025-11-14', 85572.00, '8H', 22),
(1005, 'Michaeline Reymers', '2025-10-13', 33610.50, '29CC', 25),
(1006, 'Mellicent Gedling', '2025-03-29', 113967.00, '6F', 29),
(1007, 'Katti MacFadzan', '2025-01-19', 146589.50, '10J', 7),
(1009, 'Nevin Ozanne', '2025-01-03', 77389.20, '19S', 28),
(1010, 'Karee Di Biasi', '2025-12-08', 127013.50, '9I', 5),
(1011, 'Wenona Rablin', '2025-09-18', 124996.00, '5E', 4),
(1012, 'Tiphany Goodlett', '2025-11-14', 60666.70, '13M', 19),
(1014, 'Chadd Bonafant', '2025-09-06', 93046.00, '19S', 13),
(1016, 'Cati Outhwaite', '2025-06-08', 91173.00, '11K', 4),
(1022, 'Astrid Whitehead', '2025-06-30', 141348.30, '10J', 4),
(1023, 'Dorelia Keoghan', '2025-05-28', 128765.50, '3C', 26),
(1024, 'Mariejeanne Ezzell', '2025-06-02', 75615.00, '21U', 11),
(1026, 'Virge Plaschke', '2025-03-04', 39417.00, '1A', 1),
(1027, 'Cassondra Seth', '2025-11-09', 100859.50, '30DD', 16),
(1030, 'Myrwyn Tumility', '2025-03-23', 81128.50, '20T', 8),
(1031, 'Chad Jeromson', '2025-08-26', 124677.50, '13M', 19),
(1032, 'Lise Parlor', '2025-01-25', 57928.50, '24X', 4),
(1033, 'Filmer Kilshall', '2025-03-13', 118964.30, '29CC', 7),
(1034, 'Neilla Sweedland', '2025-02-03', 53510.20, '30DD', 4),
(1035, 'Derron Kenrack', '2025-07-26', 86375.50, '27AA', 12),
(1036, 'Aubry Keoghan', '2025-02-17', 103384.00, '10J', 8),
(1037, 'Junina Tomankowski', '2025-10-07', 99739.00, '22V', 12),
(1038, 'Aloysius Casement', '2025-11-22', 65872.00, '14N', 29),
(1039, 'Meris Haquard', '2025-05-12', 44426.00, '7G', 28),
(1040, 'Hewitt Arlett', '2025-09-18', 43085.00, '12L', 13),
(1041, 'Jayne Godspede', '2025-05-02', 100920.00, '22V', 28);

-- --------------------------------------------------------

--
-- Table structure for table `Job`
--

CREATE TABLE `Job` (
  `job_id` int NOT NULL,
  `jobName` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Job`
--

INSERT INTO `Job` (`job_id`, `jobName`) VALUES
(8, 'Administrative Assistant II'),
(12, 'Analog Circuit Design Manager'),
(26, 'Assistant Media Planner'),
(25, 'Automation Specialist II'),
(21, 'Chef'),
(4, 'Chemical Engineer'),
(1, 'Cost Accountant'),
(17, 'Customer Service Rep'),
(28, 'Design Engineer'),
(22, 'Developer IV'),
(20, 'Electrician'),
(15, 'Financial Manager'),
(5, 'Graphic Designer'),
(24, 'Help Desk Operator'),
(14, 'Human Resources Specialist'),
(6, 'Librarian'),
(10, 'Marketing Assistant'),
(16, 'Payment Adjustment Coordinator'),
(27, 'Pilot'),
(9, 'Project Coordinator'),
(13, 'Recruiting Manager'),
(29, 'Research Nurse'),
(18, 'Safety Inspector'),
(7, 'Sales Associate'),
(23, 'Security Guard'),
(30, 'Security Guard II'),
(11, 'Senior Editor'),
(3, 'Software Engineer'),
(2, 'System Analyst'),
(19, 'VP Product Management');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`Deptcode`);

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`Empno`),
  ADD KEY `fk_Deptcode` (`Deptcode`),
  ADD KEY `fk_job_id` (`job_id`);

--
-- Indexes for table `Job`
--
ALTER TABLE `Job`
  ADD PRIMARY KEY (`job_id`),
  ADD UNIQUE KEY `jobName` (`jobName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Job`
--
ALTER TABLE `Job`
  MODIFY `job_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Employees`
--
ALTER TABLE `Employees`
  ADD CONSTRAINT `fk_Deptcode` FOREIGN KEY (`Deptcode`) REFERENCES `Department` (`Deptcode`),
  ADD CONSTRAINT `fk_job_id` FOREIGN KEY (`job_id`) REFERENCES `Job` (`job_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
