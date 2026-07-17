-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2026 at 05:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_services`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `intake_year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `course_id`, `class_name`, `intake_year`) VALUES
(1, 1, 'CS 2024A', '2024'),
(2, 2, 'IT 2024A', '2024'),
(3, 3, 'BM 2024A', '2024'),
(4, 4, 'EE 2024A', '2024'),
(5, 5, 'ME 2024A', '2024'),
(6, 6, 'HM 2024A', '2024'),
(7, 7, 'BT 2024A', '2024'),
(8, 8, 'AE 2024A', '2024'),
(9, 9, 'FD 2024A', '2024'),
(10, 10, 'LS 2024A', '2024');

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `club_id` int(11) NOT NULL,
  `club_name` varchar(100) NOT NULL,
  `patron` varchar(100) NOT NULL,
  `chairperson` varchar(100) NOT NULL,
  `meeting_day` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`club_id`, `club_name`, `patron`, `chairperson`, `meeting_day`) VALUES
(1, 'ICT Club', 'John Mwangi', 'Mary Achieng', 'Monday'),
(2, 'Drama Club', 'Grace Wanjiru', 'Mary Achieng', 'Tuesday'),
(3, 'Music Club', 'Peter Otieno', 'Kevin Mwangi', 'Wednesday'),
(4, 'Football Club', 'Susan Akinyi', 'James Mutua', 'Thursday'),
(5, 'Chess Club', 'David Kiptoo', 'Faith Njeri', 'Friday'),
(6, 'Journalism Club', 'Mary Njeri', 'Daniel Ouma', 'Monday'),
(7, 'Debate Club', 'James Kariuki', 'Lucy Akinyi', 'Tuesday'),
(8, 'Robotics Club', 'Faith Chebet', 'Peter Kamau', 'Wednesday'),
(9, 'Wildlife Club', 'Paul Ouma', 'Anne Wairimu', 'Thursday'),
(10, 'Red Cross Club', 'Lucy Atieno', 'Mercy Chebet', 'Friday');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_level` enum('Artisan','Certificate','Diploma') NOT NULL,
  `duration_years` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `department_id`, `course_name`, `course_level`, `duration_years`) VALUES
(1, 1, 'Computer Science', 'Diploma', 3),
(2, 7, 'Information Technology', 'Diploma', 3),
(3, 2, 'Business Management', 'Diploma', 3),
(4, 3, 'Electrical Engineering', 'Diploma', 3),
(5, 4, 'Mechanical Engineering', 'Diploma', 3),
(6, 5, 'Hospitality Management', 'Certificate', 2),
(7, 6, 'Building Technology', 'Certificate', 2),
(8, 8, 'Automotive Engineering', 'Certificate', 2),
(9, 9, 'Fashion Design', 'Artisan', 1),
(10, 10, 'Liberal Studies', 'Diploma', 3);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `block` varchar(20) NOT NULL,
  `hod` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `block`, `hod`) VALUES
(1, 'Computer Science', 'Block A', 'John Mwangi'),
(2, 'Business', 'Block B', 'Jane Wanjiku'),
(3, 'Electrical Engineering', 'Block C', 'Peter Otieno'),
(4, 'Mechanical Engineering', 'Block D', 'David Kiptoo'),
(5, 'Hospitality', 'Block E', 'Mary Njeri'),
(6, 'Building Technology', 'Block F', 'James Kariuki'),
(7, 'Information Technology', 'Block G', 'Susan Akinyi'),
(8, 'Automotive Engineering', 'Block H', 'Paul Ouma'),
(9, 'Fashion Design', 'Block I', 'Grace Atieno'),
(10, 'Liberal Studies', 'Block J', 'Samuel Mutiso'),
(11, 'Computer Science', 'Block A', 'John Mwangi'),
(12, 'Business', 'Block B', 'Jane Wanjiku'),
(13, 'Electrical Engineering', 'Block C', 'Peter Otieno'),
(14, 'Mechanical Engineering', 'Block D', 'David Kiptoo'),
(15, 'Hospitality', 'Block E', 'Mary Njeri'),
(16, 'Building Technology', 'Block F', 'James Kariuki'),
(17, 'Information Technology', 'Block G', 'Susan Akinyi'),
(18, 'Automotive Engineering', 'Block H', 'Paul Ouma'),
(19, 'Fashion Design', 'Block I', 'Grace Atieno'),
(20, 'Liberal Studies', 'Block J', 'Samuel Mutiso');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `module_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `module_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`module_id`, `course_id`, `module_name`, `module_number`) VALUES
(1, 1, 'Module 1', 1),
(2, 1, 'Module 2', 2),
(3, 1, 'Module 3', 3),
(4, 2, 'Module 1', 1),
(5, 3, 'Module 1', 1),
(6, 4, 'Module 1', 1),
(7, 5, 'Module 1', 1),
(8, 6, 'Module 1', 1),
(9, 7, 'Module 1', 1),
(10, 8, 'Module 1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(10) DEFAULT NULL CHECK (`gender` in ('Male','Female')),
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `enrollment_status` enum('In Session','On Attachment','Completed') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `class_id`, `course_id`, `first_name`, `last_name`, `date_of_birth`, `gender`, `address`, `phone`, `enrollment_status`) VALUES
(1, 1, 1, 'Brian', 'Otieno', '2004-02-10', 'Male', 'Mombasa Road, Nairobi', '0722999999', 'On Attachment'),
(2, 1, 1, 'Mary', 'Achieng', '2003-08-22', 'Female', 'Mombasa', '0722222222', 'In Session'),
(3, 2, 2, 'Kevin', 'Mwangi', '2001-11-02', 'Male', 'Kiambu', '0733333333', 'On Attachment'),
(4, 3, 3, 'James', 'Mutua', '2002-01-15', 'Male', 'Thika', '0744444444', 'In Session'),
(5, 4, 4, 'Faith', 'Njeri', '2003-04-19', 'Female', 'Nakuru', '0755555555', 'Completed'),
(6, 5, 5, 'Daniel', 'Ouma', '2001-09-30', 'Male', 'Kisumu', '0766666666', 'In Session'),
(7, 6, 6, 'Lucy', 'Wambui', '2002-12-05', 'Female', 'Eldoret', '0777777777', 'On Attachment'),
(8, 7, 7, 'John', 'Kariuki', '2003-03-14', 'Male', 'Nyeri', '0788888888', 'In Session'),
(9, 8, 8, 'Esther', 'Kamau', '2002-07-25', 'Female', 'Kericho', '0799999999', 'In Session'),
(10, 9, 9, 'Moses', 'Omwamba', '2004-02-10', 'Male', 'Kakamega', '0700000000', 'In Session');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `module_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_name`, `module_id`) VALUES
(101, 'Introduction to Programming', 1),
(102, 'Database Management Systems', 2),
(103, 'Data Structures & Algorithms', 3),
(104, 'Network Infrastructure', 4),
(105, 'Financial Accounting', 5),
(106, 'Electrical Principles', 6),
(107, 'Fluid Mechanics', 7),
(108, 'Food and Beverage Service', 8),
(109, 'Concrete Technology', 9),
(110, 'Engine Performance & Tuning', 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_accounts`
-- (See below for the actual view)
--
CREATE TABLE `view_accounts` (
`student_id` int(11)
,`first_name` varchar(50)
,`last_name` varchar(50)
,`phone` varchar(20)
,`billing_residence_details` varchar(100)
,`course_name` varchar(100)
,`course_level` enum('Artisan','Certificate','Diploma')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_dean`
-- (See below for the actual view)
--
CREATE TABLE `view_dean` (
`department_name` varchar(100)
,`course_name` varchar(100)
,`enrollment_status` enum('In Session','On Attachment','Completed')
,`student_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_exam_performance`
-- (See below for the actual view)
--
CREATE TABLE `view_exam_performance` (
`course_name` varchar(100)
,`module_name` varchar(100)
,`subject_name` varchar(100)
,`supplementary_status` varchar(35)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_hods`
-- (See below for the actual view)
--
CREATE TABLE `view_hods` (
`department_id` int(11)
,`department_name` varchar(100)
,`hod` varchar(100)
,`course_name` varchar(100)
,`module_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_lecturers`
-- (See below for the actual view)
--
CREATE TABLE `view_lecturers` (
`student_id` int(11)
,`first_name` varchar(50)
,`last_name` varchar(50)
,`class_name` varchar(50)
,`subject_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_registrar`
-- (See below for the actual view)
--
CREATE TABLE `view_registrar` (
`student_id` int(11)
,`first_name` varchar(50)
,`last_name` varchar(50)
,`date_of_birth` date
,`gender` varchar(10)
,`enrollment_status` enum('In Session','On Attachment','Completed')
,`class_name` varchar(50)
,`course_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_workload`
-- (See below for the actual view)
--
CREATE TABLE `view_workload` (
`lecturer_name` varchar(100)
,`department_name` varchar(100)
,`total_assigned_modules` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `view_accounts`
--
DROP TABLE IF EXISTS `view_accounts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_accounts`  AS SELECT `s`.`student_id` AS `student_id`, `s`.`first_name` AS `first_name`, `s`.`last_name` AS `last_name`, `s`.`phone` AS `phone`, `s`.`address` AS `billing_residence_details`, `co`.`course_name` AS `course_name`, `co`.`course_level` AS `course_level` FROM (`students` `s` join `courses` `co` on(`s`.`course_id` = `co`.`course_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_dean`
--
DROP TABLE IF EXISTS `view_dean`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_dean`  AS SELECT `d`.`department_name` AS `department_name`, `co`.`course_name` AS `course_name`, `s`.`enrollment_status` AS `enrollment_status`, count(`s`.`student_id`) AS `student_count` FROM ((`departments` `d` join `courses` `co` on(`d`.`department_id` = `co`.`department_id`)) join `students` `s` on(`co`.`course_id` = `s`.`course_id`)) GROUP BY `d`.`department_name`, `co`.`course_name`, `s`.`enrollment_status` ;

-- --------------------------------------------------------

--
-- Structure for view `view_exam_performance`
--
DROP TABLE IF EXISTS `view_exam_performance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_exam_performance`  AS SELECT `co`.`course_name` AS `course_name`, `m`.`module_name` AS `module_name`, `sub`.`subject_name` AS `subject_name`, 'Verified Final/Supplementary Active' AS `supplementary_status` FROM ((`courses` `co` join `modules` `m` on(`co`.`course_id` = `m`.`course_id`)) join `subjects` `sub` on(`m`.`module_id` = `sub`.`module_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_hods`
--
DROP TABLE IF EXISTS `view_hods`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hods`  AS SELECT `d`.`department_id` AS `department_id`, `d`.`department_name` AS `department_name`, `d`.`hod` AS `hod`, `co`.`course_name` AS `course_name`, `m`.`module_name` AS `module_name` FROM ((`departments` `d` join `courses` `co` on(`d`.`department_id` = `co`.`department_id`)) join `modules` `m` on(`co`.`course_id` = `m`.`course_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_lecturers`
--
DROP TABLE IF EXISTS `view_lecturers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lecturers`  AS SELECT `s`.`student_id` AS `student_id`, `s`.`first_name` AS `first_name`, `s`.`last_name` AS `last_name`, `c`.`class_name` AS `class_name`, `sub`.`subject_name` AS `subject_name` FROM (((`students` `s` join `classes` `c` on(`s`.`class_id` = `c`.`class_id`)) join `modules` `m` on(`s`.`course_id` = `m`.`course_id`)) join `subjects` `sub` on(`m`.`module_id` = `sub`.`module_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_registrar`
--
DROP TABLE IF EXISTS `view_registrar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_registrar`  AS SELECT `s`.`student_id` AS `student_id`, `s`.`first_name` AS `first_name`, `s`.`last_name` AS `last_name`, `s`.`date_of_birth` AS `date_of_birth`, `s`.`gender` AS `gender`, `s`.`enrollment_status` AS `enrollment_status`, `c`.`class_name` AS `class_name`, `co`.`course_name` AS `course_name` FROM ((`students` `s` join `classes` `c` on(`s`.`class_id` = `c`.`class_id`)) join `courses` `co` on(`s`.`course_id` = `co`.`course_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_workload`
--
DROP TABLE IF EXISTS `view_workload`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_workload`  AS SELECT `d`.`hod` AS `lecturer_name`, `d`.`department_name` AS `department_name`, count(`m`.`module_id`) AS `total_assigned_modules` FROM ((`departments` `d` join `courses` `co` on(`d`.`department_id` = `co`.`department_id`)) join `modules` `m` on(`co`.`course_id` = `m`.`course_id`)) GROUP BY `d`.`department_id`, `d`.`hod` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`club_id`),
  ADD UNIQUE KEY `club_name` (`club_name`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `fk_module_course` (`course_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `first_name` (`first_name`,`last_name`,`date_of_birth`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `module_id` (`module_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `club_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`);

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `fk_module_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
