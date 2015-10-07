-- phpMyAdmin SQL Dump
-- version 4.2.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 07, 2015 at 11:05 PM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mi_2014`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `mi_no` varchar(15) NOT NULL,
  `city_id` int(11) NOT NULL,
  `clg_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `year_study` varchar(5) NOT NULL,
  `notifications` varchar(600) NOT NULL,
  `group_id` int(11) NOT NULL,
  `acco` tinyint(4) NOT NULL,
  `acco1` tinyint(4) NOT NULL DEFAULT '0',
  `payment` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(100) DEFAULT NULL,
  `fbid` varchar(100) DEFAULT NULL,
  `androidid` varchar(1000) NOT NULL,
  `interests` varchar(100) NOT NULL,
  `access_token` mediumtext NOT NULL,
  `aaveg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`mi_no`, `city_id`, `clg_id`, `name`, `email`, `phone`, `dob`, `gender`, `year_study`, `notifications`, `group_id`, `acco`, `acco1`, `payment`, `timestamp`, `password`, `fbid`, `androidid`, `interests`, `access_token`, `aaveg`) VALUES
('MI-''AN-101', 28, 313, '''Anuj Sahu''', 'anujsahu.357@gmail.com', '9911066286', 'Mon Jan 01 1996', 'male', 'first', '', 0, 0, 0, 0, '2015-08-25 17:01:32', NULL, '841458079236383', '', '', 'CAAEvOddmRhQBAAdjyPhiZBd7wZAf52aZBQTbrwkL9OLJmXXoTy47YVsfMGDqvZCgUcY4NFLVZCnE8uOxizF3TePV9Or3Dgjdqp3scu7TBj0mtxeqNQQ9K5SYR8vBpr1v0nnufbxoUxUHEKZAt57ktcuwQ5TojXZCGMh2OZA3B2tnOzokdwo7yIom4OCPrv7ngu0ZD', 0),
('MI-''HI-101', 2, 0, '''Hitesh Dhamani', 'hitesh.dhamani96@gmail.com', '8862053420', 'Sat Nov 02 1996', 'male', 'secon', '', 0, 0, 0, 0, '2015-08-22 09:14:19', NULL, '859974750763002', '', '', 'CAAEvOddmRhQBAKzHWbEB60tue6ik4VByQN1VB6iKOjl9tP2hKxwI7bdYhtMTZBOmWC0P8ZASAY2I1WfJrX7OlmWZBJpNf0sZCcuSn4kE2y9kVAvk2cdgKzmJ0p8vHSSIfMBzGOc7gWte7XteoagLNfabE3Mv17ZBXnQAHrtyxJvQEXYsiMnz8', 0),
('MI-''MA-101', 0, 0, '''Mayur Dhamani', 'mickeymax786@gmail.com', '8983773805', 'Mon Apr 12 1993', 'male', 'fourt', '', 0, 0, 0, 0, '2015-08-18 18:01:50', NULL, '733225940089749', '', '', 'CAAEvOddmRhQBAAw5aYZAbCAc1EPoegFyntyRKEmwxdJAJPZASLSzj4hpWuJDJqdjoZCSQjfUTB5b5uiSPQQMckStt5ZAof9lt4Tu8Auz58WywSkd3i6Vb8Ki3ZB9en4TUcuKH9zk4BZCYccRIamOui9lAHSm9SXai1Pfe1mxmmSvQT6e55hlFbSpTEARSyZCCcZD', 0),
('MI-''MA-102', 27, 1661, '''Manan Kalra''', 'manankalra29@gmail.com', '8930925661', 'Sun Dec 29 1996', 'male', 'secon', '', 0, 0, 0, 0, '2015-09-09 07:43:30', NULL, '1015766285140769', '', '', 'CAAEvOddmRhQBACcGz18HZA3yIan1OVzKIEAWkm3bhxZCaZBHhVZAqZAdWtPi2hu3lSxmdLb0DbULQFIZAzoZAuWNNrqqfo64ToqxSdXyDRbIUGB3eSA8Lxb5b53egi6CPaxVpVyw74V6C9JbAiNkPDKyiXP0N2Lx8MsE44yWZBxsfGXpt0vncPbE', 0),
('MI-AAB-101', 13, 116, 'Aabhas Mathur', 'mathuraabhas1@gmail.com', '8105978250', 'Sat Nov 18 1995', 'male', 'secon', '', 0, 0, 0, 0, '2015-08-16 14:20:35', NULL, '10200839704911047', '', '', 'CAAEvOddmRhQBANJcjEtCxiAqwmFyFZCMZAov81a3W57uklDaTVl39ZAsCM7Ov1MfoZAOsJn5hkeldlMjSjtuQf0booTZCkKFZBk6X9QPyvcNu5yAfQDInuOVZBqZABiZBh1NVBWP6HMug6OtLUJcDVfwZAOVYOQiTG7Vy219upBoj19m6H5OjaoAmc', 0),
('MI-AAB-102', 2, 1208, 'Aabha Tathed', 'aptathed@gmail.com', '7350688180', 'Tue Sep 12 1995', 'female', 'third', '', 0, 0, 0, 0, '2015-08-27 13:43:07', NULL, '868514243230756', '', '', 'CAAEvOddmRhQBAJ4W3bAsuvsLzpK4iPv0MnhvAkYvTAm1Fa4fMFdhT7SZBxMlKhXXCCqrBZBxqxAdq8c8126uJNd2rVOKjYYl0WF2wU3gdh93n0ZBVibZC643hmBWipnHhY13ZBelsmAGqNfETOOHdwh1047yJJqsfe1jfgX2utvhjkTSUNOSs', 0),
('MI-AAB-103', 46, 490, 'Aabha Dubey', 'dubeyabha08@gmail.com', '8989433448', 'undefined', 'female', 'secon', '', 0, 0, 0, 0, '2015-09-13 17:40:09', NULL, '472800896225457', '', '', 'CAAEvOddmRhQBAOEuiU2D3W16s4tFQmMErqwKuiGRGawEJZBYZCcDZAEniQpwY0ZBhC910wfrkJVfI77LVqzVg4nOr4Xeb48RH8g9PVF6VaEQ9wquxm8SJuXwEpb1sNfZC7ZA7pczYINEb0cRVvJzNX8l8afZBTJiLCZCTtUA8xBdfHyNf5RSj8wOsNUqwLrhfzgZD', 0),
('MI-AAC-101', 118, 1221, 'Aachal Chhawsaria', 'aachal02@gmail.com', '9960822032', 'Sat Jul 02 1994', 'female', 'fourt', '', 0, 0, 0, 0, '2015-09-07 14:14:13', NULL, '796454093730588', '', '', 'CAAEvOddmRhQBAHr0k2GF6j2wuVuCCXfSrAtnESRoaMDCnHJ9LOAvPWEN7vrY9cF3Afe5gDKsuR3jupA1cQTum2H3FOq6IfKIW6ZCChEJR7rwxnSojLDgnv2PsLliPGgZC08QTS8otRaGjZB0JBNE8eIwad4807ySTZAraRMWT6osUHHki9QL', 0),
('MI-AAD-101', 1, 1, 'Aaditya Taparia', 'aadityataparia@gmail.com', '8947860548', 'Mon Jul 08 1996', 'male', 'third', '', 0, 0, 0, 0, '2015-08-21 14:12:29', NULL, '771530842893519', '', '', 'CAAEvOddmRhQBAJbOlZB1C4wWpZBsMoRZADBnbJVRbX8ZA0whQJuiPwijyEagNfpQzBLOZBZBzUtSqInlXPZAJpmXHZCsOJyhKLXJezW3al2wZCDvaZCSHZBKKhE5XjZBQZBZAs972j6ZBfqMCfWhjMVrnWFGcCd22zIu6MYrpWoIjpvZC6Gp4UXj27GJF0uf', 0),
('MI-AAD-102', 46, 492, 'Aadhar Khajanchi', 'aadharkhajanchi@yahoo.com', '9977772144', 'Fri Jan 10 1997', 'male', 'first', '', 0, 0, 0, 0, '2015-08-21 17:25:06', NULL, '1040978105935331', '', '', 'CAAEvOddmRhQBAOusqhHTXZCZAEu0bRcyBdnZAJKiXo0bjCP9AcOqVg2PyjqmFyxB91IdjZANrF81QTJfgZA8N5KnRy6Ed8MyHvXPD2YcIxoyPP8WOeb3amEkcvPyYkwwZCmbOxrUPXOJCzuuFiSYwZBrtH1jME2vfZCkdZA2jfIbTiaJPtipQRIL1', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`mi_no`), ADD UNIQUE KEY `mi_no` (`mi_no`), ADD UNIQUE KEY `fbid` (`fbid`), ADD KEY `clg_id` (`clg_id`), ADD KEY `email` (`email`), ADD KEY `rfid` (`fbid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
