-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2015 at 08:18 PM
-- Server version: 5.5.39-MariaDB-1~trusty-log
-- PHP Version: 5.5.9-1ubuntu4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `MainDatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `Answer`
--

CREATE TABLE IF NOT EXISTS `Answer` (
  `ques_id` int(10) DEFAULT NULL,
  `ans_text` longtext
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `Answer`
--

INSERT INTO `Answer` (`ques_id`, `ans_text`) VALUES
(30, 'Unnamed pipe:\r\n\r\n1) These are created by the shell automatically.\r\n\r\n2) They exists in the kernel.\r\n\r\n3) They can not be accesses by any process, including the process that creates it.\r\n\r\n4) They are opened at the time of creation only.\r\n\r\n5) They are unidirectional.\r\n\r\n\r\n\r\nNamed Pipe:( also called FIFO, First In FIrst Out)\r\n\r\n1) They are created programatically using the command mkfifo.\r\n\r\n2) They exists in the file system with a given file name.\r\n\r\n3) They can be viewed and accessed by any two un-related processes. ls cmd shows "p" in the permission bits for a named pipe.\r\n\r\n4) They are not opened while creation.\r\n\r\n5) They are Bi-directinoal.\r\n\r\n6) A process writing a named pipe blocks until there is a process that reads that data.\r\n\r\n7) Broken pipe error occurs when the writing process closes the named pipe while another reading process reads it'),
(31, 'In computing, inter-process communication (IPC) is a set of methods for the exchange of data among multiple threads in one or more processes. Processes may be running on one or more computers connected by a network. IPC methods are divided into methods for message passing, synchronization, shared memory, and remote procedure calls (RPC). The method of IPC used may vary based on the bandwidth and latency of communication between the threads, and the type of data being communicated.'),
(32, 'Windows used non-preemptive scheduling up to Windows 3.x, and started using ... I.e. users are more accepting of a consistent predictable system than so the above thing is true'),
(32, 'Yes It is true!'),
(32, '<p><strong>Yes it is true but</strong></p>'),
(32, ''),
(37, '<p>Berkley os</p>'),
(37, ''),
(37, '<p><em><strong>Its is open source os</strong></em></p>'),
(37, '<p><em><strong>Its is open source os</strong></em></p>'),
(37, '<p><em><strong>Its is open source os</strong></em></p>'),
(39, '<p>Ans Added!!</p>'),
(40, '<p>Anything!!</p>'),
(43, '<ol><li>Yes!!</li></ol>'),
(30, '<p><strong>What is os?</strong></p>'),
(45, '<p><strong>Kernel is something something....</strong></p><p><strong><a href="http://www.google.co.in">http://www.google.co.in</a></strong></p>'),
(46, '<p><strong>Push down automata!</strong></p>'),
(47, '<p>This is nothing!!</p>'),
(48, '<p><strong>Sid is good guy in PICT!!</strong></p>'),
(49, '<p>It is nothing!</p>'),
(51, '<p>VFS means<strong> Virtual file system&nbsp;</strong></p>'),
(52, '<p>VFS is virrual file system!!</p>');

-- --------------------------------------------------------

--
-- Table structure for table `Domain`
--

CREATE TABLE IF NOT EXISTS `Domain` (
  `domain_name` varchar(50) NOT NULL DEFAULT '',
  `domain_id` int(50) DEFAULT NULL,
  `t_id` int(10) DEFAULT NULL,
  KEY `t_id` (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `Domain`
--

INSERT INTO `Domain` (`domain_name`, `domain_id`, `t_id`) VALUES
('Artificial Intelligence', 301, 102),
('Astronomy', 505, 201),
('cloud security', 307, 101),
('Computer Vision', 308, 103),
('Data Mining', 315, 106),
('Data Modeling', 316, 106),
('Devices and Circuits', 500, 200),
('Digital Electronics', 503, 201),
('Distributed system security', 304, 101),
('Distributed systems', 314, 105),
('Forecasting and Prediction algorithms', 317, 106),
('grid middle ware', 305, 101),
('HCI ', 309, 103),
('Information Security', 313, 105),
('Machine Learning', 302, 102),
('Microwave engineering', 504, 201),
('networking security', 312, 104),
('Operating System', 318, 106),
('Power Electronics', 501, 200),
('software engineering ', 310, 104),
('Speech Processing ', 303, 102),
('theory of computation', 311, 104),
('Wireless Networks', 502, 200),
('theory of computation', 311, 107),
('Operating System', 318, 100);

-- --------------------------------------------------------

--
-- Table structure for table `Question`
--

CREATE TABLE IF NOT EXISTS `Question` (
  `ques_id` int(20) NOT NULL AUTO_INCREMENT,
  `ques_text` longtext,
  `t_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`ques_id`),
  KEY `t_id` (`t_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=54 ;

--
-- Dumping data for table `Question`
--

INSERT INTO `Question` (`ques_id`, `ques_text`, `t_id`) VALUES
(30, 'what is difference between named and unamed pipe?', 100),
(31, 'What is IPC?', 100),
(32, 'Why linux scheduler is more intelligient than windows scheduler?', 106),
(33, 'What is BSD?', 100),
(34, '<p>What is mean by memeory management?</p>', 100),
(35, '<p>What is function of turing machine?</p>', 104),
(36, '<p>Why cloud security matters ?</p>', 101),
(37, '<p><strong>What is BSD?</strong></p>', 106),
(38, '<p>what is PDA?</p>', 104),
(39, '<p><strong>What is mean by OS ?</strong></p>', 106),
(40, '<p><em><strong>What is mean by Process management?</strong></em></p>', 100),
(41, '<p>why this?</p>', 100),
(42, '<p>why this?</p>', 100),
(43, '<p><strong>Did i asked question?</strong></p>', 100),
(44, '<p><strong>What is Inter process communication?</strong></p>', 100),
(45, '<p><strong>What is kernel?</strong></p>', 106),
(46, '<p>What is PDA?</p>', 107),
(47, '<p><strong>What is this thing?</strong></p>', 100),
(48, '<p>Who is Sid ?</p>', 100),
(49, '<p><strong>Hello I am Avi What is this ?&nbsp;</strong></p>', 100),
(50, '<p>Hello there ?</p>', 106),
(51, '<p><strong>What is VFS ?&nbsp;</strong></p>', 100),
(52, '<p>What is VFS ?</p>', 106),
(53, '<p><em><strong>What is this all about?</strong></em></p>', 100);

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE IF NOT EXISTS `Student` (
  `st_id` int(11) NOT NULL,
  `st_name` varchar(20) DEFAULT NULL,
  `st_email` varchar(20) DEFAULT NULL,
  `st_roll` int(11) NOT NULL,
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`st_id`, `st_name`, `st_email`, `st_roll`) VALUES
(3461, 'Isha Renavikar', 'ir@memail.com', 3461),
(3462, 'Rohit Kumar H.', 'rohitk@memail.com', 3462),
(3463, 'Saurabh Birari', 'saurabhb@memail.com', 3463),
(3464, 'Saurav Sagar', 'sauravs@memail.com', 3464),
(3465, 'Dipak Suryawanshi', 'dipaks@memail.com', 3465),
(3466, 'Aditya Sonawane', 'adityas@memail.com', 3466),
(3467, 'Soutri Mukherjee', 'soutrim@memail.com', 3467),
(3468, 'Abhishek Singh', 'abhisheks@memail.com', 3468),
(3469, 'Vrushada Tawar', 'vrushadat@memail.com', 3469),
(3470, 'Rahul Tiwari', 'rahult@memail.com', 3470),
(3471, 'Rasika Waichal', 'rasikav@memail.com', 3471),
(3472, 'Satyam Zode', 'satyamz@memail.com', 3472);

-- --------------------------------------------------------

--
-- Table structure for table `Teacher`
--

CREATE TABLE IF NOT EXISTS `Teacher` (
  `t_id` int(10) NOT NULL DEFAULT '0',
  `t_name` text,
  `t_email` varchar(50) DEFAULT NULL,
  `t_quali` text,
  `t_dept` varchar(50) DEFAULT NULL,
  `t_pwd` varchar(50) NOT NULL DEFAULT '123',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `Teacher`
--

INSERT INTO `Teacher` (`t_id`, `t_name`, `t_email`, `t_quali`, `t_dept`, `t_pwd`) VALUES
(100, 'Dr. Sarang A Joshi', 'sarang.joshi2002@gmail.com', 'BE (CE)\r\nME (CE)\r\nPh.D. (Computer Engineering)', 'Computer Engineering', '123'),
(101, 'Dr. Rajesh Baliram Ingle', 'rbingle@pict.edu', 'B.E. Computer Engineering\r\nM.E. Computer Engg, M.S. Software Engineering\r\nPhD Computer Science and Engineering', 'Computer Engineering', '123'),
(102, 'Balwant Ambadas Sonkamble', 'basonkamble@pict.edu', 'B. E. (Computer Science and Engineering)\r\nM. E. (Computer Engineering)\r\nPh. D. (Computer Science and Engineering)', 'Computer Engineering', '123'),
(103, 'Archana Santosh Ghotkar ', 'aaghotkar@pict.edu', 'B.E.(Computer Science & Engineering)\r\nM.E.(Computer Engineering)\r\nPh.D(Computer Engineering)-Pursuing ', 'Computer Engineering', '123'),
(104, 'PREETI ANAND JAIN ', 'proswal@pict.edu', 'Computer Science & Engineering\r\nM.Tech.', 'Computer Engineering', '123'),
(105, 'Madhuri Sachin Wakode ', 'mswakode@pict.edu', 'BE(CSE)\r\nME(CE)', 'Computer Engineering', '123'),
(106, 'Pravin Ramdas Patil ', 'prpatil@pict.edu', 'B. E. Computer Engineering\r\nM. E. Computer Engineering\r\nPh. D. Student, Computer Engineering ', 'Computer Engineering', '123'),
(107, 'Mukta Sunil Takalikar', 'mstaklikar@pict.edu ', 'B.E (CE)\r\nM.E. (CE)\r\nPh.D Persuing ', 'Computer Engineering', '123'),
(200, 'Girish Shrikisan Mundada ', 'gsmundada@pict.edu', 'B.E. (Electronics Engineering)\r\nM.E. (Industrial Electronics Engineering)\r\nWireless Networks ', 'Electronics and telecommunication', '123'),
(201, 'Ashwinikumar Panjabrao Dhande ', 'apdhande@pict.edu', 'B.E. E & TC\nM.E. E & TC \nApplication of Multi Valued Logic-A Comparative Study ', 'Electronics and telecommunication', '123');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Domain`
--
ALTER TABLE `Domain`
  ADD CONSTRAINT `Domain_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `Teacher` (`t_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
