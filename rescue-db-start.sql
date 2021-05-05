-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2019 at 03:21 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rescue`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `animal_id` int(9) NOT NULL,
  `shelter_no` int(9) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `age` int(2) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `weight` int(3) DEFAULT NULL,
  `animal_type` varchar(45) DEFAULT NULL,
  `health_status` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `shelter_admit_date` date DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `color` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `attends`
--

CREATE TABLE `attends` (
  `animal_id` int(9) NOT NULL,
  `event_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cares_for`
--

CREATE TABLE `cares_for` (
  `member_id` int(9) NOT NULL,
  `animal_id` int(9) NOT NULL,
  `care_date` date NOT NULL DEFAULT '2000-01-01',
  `care_duration` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `caretaker`
--

CREATE TABLE `caretaker` (
  `member_id` int(9) NOT NULL,
  `trained_species` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cleans`
--

CREATE TABLE `cleans` (
  `shelter_no` int(9) NOT NULL,
  `member_id` int(9) NOT NULL,
  `cleaning_date` date NOT NULL DEFAULT '2000-01-01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `member_id` int(9) NOT NULL,
  `salary` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_location` varchar(45) DEFAULT NULL,
  `event_type` varchar(45) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `sponsors` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `foster`
--

CREATE TABLE `foster` (
  `member_id` int(11) NOT NULL,
  `foster_status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fosters`
--

CREATE TABLE `fosters` (
  `member_id` int(11) NOT NULL,
  `animal_id` int(11) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(9) NOT NULL,
  `phone` bigint(10) DEFAULT 1234567,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `minit` varchar(2) DEFAULT NULL,
  `start_date` date NOT NULL DEFAULT '2000-01-01',
  `title` varchar(45) DEFAULT NULL,
  `address` varchar(150) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `phone`, `fname`, `lname`, `minit`, `start_date`, `title`, `address`, `password`) VALUES
(111111111, 1231231234, 'Admin', 'Account', 'AA', '2019-11-26', 'Admin', 'Main Headquarters', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `plays_with`
--

CREATE TABLE `plays_with` (
  `member_id` int(9) NOT NULL,
  `animal_id` int(9) DEFAULT NULL,
  `play_date` date DEFAULT '2000-01-01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `potential_adopter`
--

CREATE TABLE `potential_adopter` (
  `member_id` int(9) NOT NULL,
  `animal_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shelter`
--

CREATE TABLE `shelter` (
  `shelter_no` int(9) NOT NULL,
  `shelter_type` varchar(45) DEFAULT NULL,
  `last_cleaned` date DEFAULT '2000-01-01',
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `length` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `treats`
--

CREATE TABLE `treats` (
  `member_id` int(9) NOT NULL,
  `animal_id` int(9) NOT NULL,
  `treat_type` varchar(45) DEFAULT NULL,
  `treat_date` date NOT NULL,
  `treat_duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `veterinarian`
--

CREATE TABLE `veterinarian` (
  `member_id` int(11) NOT NULL,
  `specialization` varchar(45) DEFAULT NULL,
  `years_experience` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `member_id` int(9) NOT NULL,
  `training_status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `volunteers_at`
--

CREATE TABLE `volunteers_at` (
  `member_id` int(9) NOT NULL,
  `event_id` int(9) NOT NULL,
  `role` varchar(45) DEFAULT NULL,
  `hours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `member_id` int(9) NOT NULL,
  `event_id` int(9) NOT NULL,
  `role` varchar(45) DEFAULT NULL,
  `hours` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`animal_id`),
  ADD KEY `fk2_shelter_no_idx` (`shelter_no`);

--
-- Indexes for table `attends`
--
ALTER TABLE `attends`
  ADD PRIMARY KEY (`animal_id`,`event_id`),
  ADD KEY `fk1_event_id_idx` (`event_id`);

--
-- Indexes for table `cares_for`
--
ALTER TABLE `cares_for`
  ADD PRIMARY KEY (`member_id`,`animal_id`,`care_date`),
  ADD KEY `fk7_animal_id_idx` (`animal_id`);

--
-- Indexes for table `caretaker`
--
ALTER TABLE `caretaker`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `cleans`
--
ALTER TABLE `cleans`
  ADD PRIMARY KEY (`shelter_no`,`member_id`,`cleaning_date`),
  ADD KEY `fk15_member_id_idx` (`member_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `foster`
--
ALTER TABLE `foster`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `fosters`
--
ALTER TABLE `fosters`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `fk3_animal_id_idx` (`animal_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `plays_with`
--
ALTER TABLE `plays_with`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `fk5_animal_id_idx` (`animal_id`);

--
-- Indexes for table `potential_adopter`
--
ALTER TABLE `potential_adopter`
  ADD PRIMARY KEY (`member_id`,`animal_id`),
  ADD KEY `fk_animal_id` (`animal_id`);

--
-- Indexes for table `shelter`
--
ALTER TABLE `shelter`
  ADD PRIMARY KEY (`shelter_no`);

--
-- Indexes for table `treats`
--
ALTER TABLE `treats`
  ADD PRIMARY KEY (`member_id`,`animal_id`,`treat_date`),
  ADD KEY `fk6_animal_id_idx` (`animal_id`);

--
-- Indexes for table `veterinarian`
--
ALTER TABLE `veterinarian`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `volunteers_at`
--
ALTER TABLE `volunteers_at`
  ADD PRIMARY KEY (`member_id`,`event_id`),
  ADD KEY `fk3_event_id_idx` (`event_id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`member_id`,`event_id`),
  ADD KEY `fk4_event_id_idx` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123456793;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `fk2_shelter_no` FOREIGN KEY (`shelter_no`) REFERENCES `shelter` (`shelter_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attends`
--
ALTER TABLE `attends`
  ADD CONSTRAINT `fk1_event_id` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk3_animal_id` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cares_for`
--
ALTER TABLE `cares_for`
  ADD CONSTRAINT `fk6_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk7_animal_id` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `caretaker`
--
ALTER TABLE `caretaker`
  ADD CONSTRAINT `fk5_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cleans`
--
ALTER TABLE `cleans`
  ADD CONSTRAINT `fk15_member_id` FOREIGN KEY (`member_id`) REFERENCES `volunteer` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk1_shelter_id` FOREIGN KEY (`shelter_no`) REFERENCES `shelter` (`shelter_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk1_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foster`
--
ALTER TABLE `foster`
  ADD CONSTRAINT `fk2_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fosters`
--
ALTER TABLE `fosters`
  ADD CONSTRAINT `fk4_animal_id` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk4_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plays_with`
--
ALTER TABLE `plays_with`
  ADD CONSTRAINT `fk5_animal_id` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk8_member_id` FOREIGN KEY (`member_id`) REFERENCES `volunteer` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `potential_adopter`
--
ALTER TABLE `potential_adopter`
  ADD CONSTRAINT `fk12_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_animal_id` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `treats`
--
ALTER TABLE `treats`
  ADD CONSTRAINT `fk11_member_id` FOREIGN KEY (`member_id`) REFERENCES `veterinarian` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk6_animal_id` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `veterinarian`
--
ALTER TABLE `veterinarian`
  ADD CONSTRAINT `fk13_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD CONSTRAINT `fk9_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `volunteers_at`
--
ALTER TABLE `volunteers_at`
  ADD CONSTRAINT `fk14_member_id` FOREIGN KEY (`member_id`) REFERENCES `volunteer` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk3_event_id` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `fk16_member_id` FOREIGN KEY (`member_id`) REFERENCES `employee` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk4_event_id` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
