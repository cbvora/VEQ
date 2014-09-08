-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 17, 2013 at 10:31 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oes`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE IF NOT EXISTS `adminlogin` (
  `admname` varchar(32) NOT NULL,
  `admpassword` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`admname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`admname`, `admpassword`) VALUES
('root', '63a9f0ea7bb98050796b649e85481845');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `testid` bigint(20) NOT NULL DEFAULT '0',
  `qnid` int(11) NOT NULL DEFAULT '0',
  `question` varchar(500) DEFAULT NULL,
  `optiona` varchar(100) DEFAULT NULL,
  `optionb` varchar(100) DEFAULT NULL,
  `optionc` varchar(100) DEFAULT NULL,
  `optiond` varchar(100) DEFAULT NULL,
  `correctanswer` enum('optiona','optionb','optionc','optiond') DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  PRIMARY KEY (`testid`,`qnid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`testid`, `qnid`, `question`, `optiona`, `optionb`, `optionc`, `optiond`, `correctanswer`, `marks`) VALUES
(1, 1, 'Round robin scheduling is essentially the preemptive version of______.', 'FIFO', 'SJF', 'SRF', 'RR', 'optiona', 1),
(1, 2, 'A page fault occurs__', 'when the process enters the blocked state ', 'when the page is in the memory ', 'when the page is not in the memory ', 'when the process is in the ready state ', 'optionc', 1),
(1, 3, ') The state of a process after it encounters an I/O instruction is __________', 'Ready ', 'Terminate', 'Running', 'Blocked/Waiting ', 'optiond', 1),
(1, 4, ' PCB =____', 'Pakistan Cricket Board', 'Process Control Block', 'Program Control Block ', 'Process Communication Block ', 'optionb', 1),
(1, 5, 'The mechanism that bring a page into memory only when it is needed is called _____________.', 'Segmentation ', 'Page Replacement ', 'Fragmentation', 'Demand Paging', 'optiond', 1),
(1, 6, 'Which of the following memory allocation scheme suffers from External fragmentation?', ' Segmentation ', 'Swapping', 'Pure demand paging ', 'Paging ', 'optiona', 1),
(1, 7, 'The problem of fragmentation arises in _______.', 'Static storage allocation', 'Heap allocation ', 'Stack allocation with dynamic binding', 'Stack allocation storage', 'optionb', 1),
(1, 8, ' _________ page replacement alogorithm suffers from Belady&#039;s anamoly.', 'FIFO', 'LRU ', 'MRU ', 'LIFO', 'optiona', 1),
(1, 9, 'How many 32K * 1 RAM chips are needed to provide a memory capasity of 256K-bytes?', '32', '64', '8', '128', 'optionc', 1),
(1, 10, 'Which of the following statement is not true?', ' Multiprogramming implies multitasking  ', 'Multi-user does not imply multiprocessing', 'Multitasking does not imply multiprocessing', 'Multithreading implies multi-user ', 'optiond', 1),
(2, 1, '&lt;?php\r\n     $array = array(1,2,3,5,8,13,21,34,55)\r\n     $num=0;\r\n     For($i=0;$i&lt;5;$i++)\r\n     {\r\n              $num += $array[$array[$i]];\r\n     }\r\n     echo $num;\r\n?&gt;', '78', '54', '58', '99', 'optiona', 2),
(2, 2, 'which array function checks if the specified key exist in the array.?', 'array_key_exist()', 'array_key_exists()', 'array_keys_exist()', 'arrays_key_exists()', 'optionb', 2),
(2, 3, '&lt;?php $x=array(&quot;aaa&quot;,&quot;ttt&quot;,&quot;www&quot;,&quot;ttt&quot;,&quot;yyy&quot;,&quot;ttt&quot;); $y=array_count_values($x); echo $y[ttt]; ?&gt;', '1', '2', '3', '4', 'optionb', 2),
(2, 4, '&lt;?php $arr = array(5 =&gt; 1, 12 =&gt; 2); $arr[] = 56; $arr[&quot;x&quot;] = 42; echo var_dump($arr);?&gt;', 'array(3) { [12]=&gt; int(2) [13]=&gt; int(56) [&quot;x&quot;]=&gt; int(42) }', '42', 'array(4) { [5]=&gt;int(1) [12]=&gt; int(2) [13]=&gt; int(56) [&quot;x&quot;]=&gt; int(42) }', '1,2,56,42', 'optionc', 2),
(2, 5, 'What is the difference, in seconds, between the current timestamp in the GMT time zone and the current timestamp in your local time zone?', 'There is no difference', 'It depends on the number of hours between the local time zone and GMT', 'The two will never match', ' The two will only match if the local time zone is GMT', 'optiona', 2),
(3, 1, 'Assume you would like to sort an array in ascending order by value while preserving key associations. Which of the following PHP sorting functions would you use?', 'ksort()', 'sort()', 'krsort()', 'asort()', 'optiond', 1),
(3, 2, 'What function computes the difference of arrays?', 'array_diff', 'diff_arrays', 'arrays_diff ', 'diff_array', 'optiona', 1),
(3, 3, 'In PHP in order to access MySQL database you will use: ', 'mysqlconnect() function', 'sql_connect() function', 'connect_mysql() function', 'mysql-connect() function', 'optiond', 1),
(3, 4, 'Which of the following is not an SQL aggregate function?', 'AVG ', 'CURRENT_DATE()', 'MIN', 'MAX', 'optionb', 1),
(3, 5, 'Which of the following functions retrieve the entire contents of a file in such a way that it can be used as part of an expression?', 'file_get_contents()', 'fgets()', 'file()', 'both A and C', 'optiond', 1),
(3, 6, 'Which of the following functions reads the entire contents of a file?', 'file_get_contents()', 'readfile()', 'file()', 'All of the Above', 'optiond', 1),
(3, 7, 'The ............ function checks if the &quot;end-of-file&quot; (EOF) has been reached.', 'f_eof()', 'feof()', 'feofs()', 'f_of()', 'optionb', 1),
(3, 8, 'The ........... function is used to read a single character from a file.', 'fgetc()', 'fgets()', 'fget()', 'fgetf()', 'optiona', 1),
(3, 9, 'Which of the following variables is not a predefined variable?', '$get', '$ask', '$request', '$post', 'optionb', 1),
(3, 10, 'When compared to the compiled program, scripts run..	', 'Faster', 'Slower', 'The execution speed is similar', 'All of above', 'optionb', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `stdid` bigint(20) NOT NULL,
  `stdname` varchar(40) DEFAULT NULL,
  `stdpassword` varchar(40) DEFAULT NULL,
  `emailid` varchar(40) DEFAULT NULL,
  `contactno` varchar(20) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`stdid`),
  UNIQUE KEY `stdname` (`stdname`),
  UNIQUE KEY `emailid` (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stdid`, `stdname`, `stdpassword`, `emailid`, `contactno`, `address`, `city`, `pincode`) VALUES
(1, 'cbvora', '"<(ÍD', 'cbvora@yahoo.com', '7845645749', 'madhav , Gokuldham', 'Gujarat', '360405'),
(2, 'Lalit', ']KÕh', 'lalit@live.com', '784456578', 'rana nagar', 'srinagar', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `studentquestion`
--

CREATE TABLE IF NOT EXISTS `studentquestion` (
  `stdid` bigint(20) NOT NULL DEFAULT '0',
  `testid` bigint(20) NOT NULL DEFAULT '0',
  `qnid` int(11) NOT NULL DEFAULT '0',
  `answered` enum('answered','unanswered','review') DEFAULT NULL,
  `stdanswer` enum('optiona','optionb','optionc','optiond') DEFAULT NULL,
  PRIMARY KEY (`stdid`,`testid`,`qnid`),
  KEY `testid` (`testid`,`qnid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studenttest`
--

CREATE TABLE IF NOT EXISTS `studenttest` (
  `stdid` bigint(20) NOT NULL DEFAULT '0',
  `testid` bigint(20) NOT NULL DEFAULT '0',
  `starttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `correctlyanswered` int(11) DEFAULT NULL,
  `status` enum('over','inprogress') DEFAULT NULL,
  PRIMARY KEY (`stdid`,`testid`),
  KEY `testid` (`testid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subid` int(11) NOT NULL,
  `subname` varchar(40) DEFAULT NULL,
  `subdesc` varchar(100) DEFAULT NULL,
  `tcid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`subid`),
  UNIQUE KEY `subname` (`subname`),
  KEY `subject_fk1` (`tcid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subid`, `subname`, `subdesc`, `tcid`) VALUES
(1, 'AOS', 'This subject comes under M.Tech-IT 1st semester ', NULL),
(2, 'PHP', 'One of open source language comes under OSP,M.Tech-IT-II sem  ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `testid` bigint(20) NOT NULL,
  `testname` varchar(30) NOT NULL,
  `testdesc` varchar(100) DEFAULT NULL,
  `testdate` date DEFAULT NULL,
  `testtime` time DEFAULT NULL,
  `subid` int(11) DEFAULT NULL,
  `testfrom` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `testto` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `duration` int(11) DEFAULT NULL,
  `totalquestions` int(11) DEFAULT NULL,
  `attemptedstudents` bigint(20) DEFAULT NULL,
  `testcode` varchar(40) NOT NULL,
  `tcid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`testid`),
  UNIQUE KEY `testname` (`testname`),
  KEY `test_fk1` (`subid`),
  KEY `test_fk2` (`tcid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`testid`, `testname`, `testdesc`, `testdate`, `testtime`, `subid`, `testfrom`, `testto`, `duration`, `totalquestions`, `attemptedstudents`, `testcode`, `tcid`) VALUES
(1, 'Quiz1', 'Contains 10 Questions.Each having 1 marks. No negative marking.Duration 10 min.', '2013-04-17', '14:59:51', 1, '2013-04-17 03:59:50', '2013-05-31 18:29:59', 10, 10, 0, 'ùXâ', NULL),
(2, 'QuizPHP1', 'Contains 5 Question.\r\nEach having 2 marks.\r\nNo negative marking.\r\nDuration : 15 min', '2013-04-17', '15:23:14', 2, '2013-04-18 04:42:59', '2013-05-24 18:29:59', 15, 5, 0, ';À5', NULL),
(3, 'QuizPHP2', 'Contains 10 Questions.\r\nEach having 1 mark.\r\nNo Negative Marking.\r\nDuration : 10 min', '2013-04-17', '15:44:12', 2, '2013-04-18 04:58:39', '2013-05-31 18:29:59', 10, 10, 0, ';À5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testconductor`
--

CREATE TABLE IF NOT EXISTS `testconductor` (
  `tcid` bigint(20) NOT NULL,
  `tcname` varchar(40) DEFAULT NULL,
  `tcpassword` varchar(40) DEFAULT NULL,
  `emailid` varchar(40) DEFAULT NULL,
  `contactno` varchar(20) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tcid`),
  UNIQUE KEY `stdname` (`tcname`),
  UNIQUE KEY `emailid` (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testconductor`
--

INSERT INTO `testconductor` (`tcid`, `tcname`, `tcpassword`, `emailid`, `contactno`, `address`, `city`, `pincode`) VALUES
(1, 'abvora', 'ù>*ÏF', 'abvora@live.com', '7845645794', 'jayanagar', 'bangloare', '123');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`testid`) REFERENCES `test` (`testid`);

--
-- Constraints for table `studentquestion`
--
ALTER TABLE `studentquestion`
  ADD CONSTRAINT `studentquestion_ibfk_1` FOREIGN KEY (`stdid`) REFERENCES `student` (`stdid`),
  ADD CONSTRAINT `studentquestion_ibfk_2` FOREIGN KEY (`testid`, `qnid`) REFERENCES `question` (`testid`, `qnid`);

--
-- Constraints for table `studenttest`
--
ALTER TABLE `studenttest`
  ADD CONSTRAINT `studenttest_ibfk_1` FOREIGN KEY (`stdid`) REFERENCES `student` (`stdid`),
  ADD CONSTRAINT `studenttest_ibfk_2` FOREIGN KEY (`testid`) REFERENCES `test` (`testid`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_fk1` FOREIGN KEY (`tcid`) REFERENCES `testconductor` (`tcid`);

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_fk1` FOREIGN KEY (`subid`) REFERENCES `subject` (`subid`),
  ADD CONSTRAINT `test_fk2` FOREIGN KEY (`tcid`) REFERENCES `testconductor` (`tcid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
