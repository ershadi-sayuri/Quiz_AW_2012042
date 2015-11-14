-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 14, 2015 at 05:30 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `question`
--
CREATE DATABASE IF NOT EXISTS `question` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `question`;

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` text NOT NULL,
  `question_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`answer_id`),
  KEY `FK__question` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `answer`, `question_id`) VALUES
(3, 'largest railway station', 1),
(4, 'highest railway station', 1),
(8, 'longest railway station', 1),
(9, 'None of the above', 1),
(10, 'Behavior of human beings', 2),
(11, 'Insects', 2),
(12, 'The origin and history of technical and scientific terms', 2),
(13, 'The formation of rocks', 2),
(14, 'Asia', 3),
(15, 'Africa', 3),
(16, 'Europe', 3),
(17, 'Australia', 3),
(18, '1000 bytes', 4),
(19, '100 bytes', 4),
(20, '1024 bytes', 4),
(21, '1023 bytes', 4),
(22, 'Windows 98', 5),
(23, 'BSD Unix', 5),
(24, 'Microsoft Office XP', 5),
(25, 'Red Hat Linux', 5),
(26, 'Internet', 6),
(27, 'Linux', 6),
(28, 'Unix', 6),
(29, 'Windows', 6),
(30, 'Syntax error', 7),
(31, 'Symantic error', 7),
(32, 'Logical error', 7),
(33, 'Internal error', 7),
(34, 'Feng Shui', 8),
(35, 'Ikebana', 8),
(36, 'Florabana', 8),
(37, 'None of the Above', 8),
(38, 'Australia', 9),
(39, 'Canada', 9),
(40, 'Great Britain', 9),
(41, 'Japan', 9),
(42, 'developed the telescope', 10),
(43, 'discovered four satellites of Jupiter', 10),
(44, 'discovered that the movement of pendulum produces a regular time measurement', 10),
(45, 'All of the above', 10),
(46, 'Visible light', 11),
(47, 'Infrared radiation', 11),
(48, 'X-rays and gamma rays', 11),
(49, 'Ultraviolet radiation', 11),
(50, 'New York, USA', 12),
(51, 'Haque (Netherlands)', 12),
(52, 'Geneva', 12),
(53, 'Paris', 12),
(54, 'a German Physicist', 13),
(55, 'developed the mercury thermometer in 1714', 13),
(56, 'devised temperature scale', 13),
(57, 'All of the above', 13),
(58, 'Graphite', 14),
(59, 'Silicon', 14),
(60, 'Charcoal', 14),
(61, 'Phosphorous', 14),
(62, 'hydrogen', 15),
(63, 'carbon', 15),
(64, 'sulphur', 15),
(65, 'oxygen', 15),
(66, 'Tubby', 16),
(67, 'Stodge', 16),
(68, 'Helium Bat', 16),
(69, 'Stumpy', 16),
(70, 'Canada', 17),
(71, 'Sri Lanka', 17),
(72, 'Zimbabwe', 17),
(73, 'East Africa', 17),
(74, 'Cactus Jack', 18),
(75, 'Mankind', 18),
(76, 'Dude Love', 18),
(77, 'Mick Foley', 18),
(78, 'The Rickster', 19),
(79, 'Ponts', 19),
(80, 'Ponter', 19),
(81, 'Punter', 19),
(82, '45 seconds', 20),
(83, '25 seconds', 20),
(84, '1 minute', 20),
(85, '2 minutes', 20),
(86, 'Owen Hart', 21),
(87, 'Bret Hart', 21),
(88, 'Edge', 21),
(89, 'Mabel', 21),
(90, 'A referee', 22),
(91, 'An umpire', 22),
(92, 'A spectator', 22),
(93, 'A goalkeeper', 22),
(94, 'New York Yankees', 23),
(95, 'Chicago White Sox', 23),
(96, 'Montreal Expos', 23),
(97, 'Boston Red Sox', 23),
(98, 'Triple H', 24),
(99, 'Stone Cold Steve Austin', 24),
(100, 'Mankind', 24),
(101, 'Bret Hart', 24),
(102, '1873', 25),
(103, '1877', 25),
(104, '1870', 25),
(105, '1788', 25),
(106, 'Shane Warne', 26),
(107, 'Brian Lara\r\n', 26),
(108, 'Courtney Walsh', 26),
(109, 'Muttiah Muralitharan', 26),
(110, 'Billabong', 27),
(111, 'Swampy', 27),
(112, 'Bacchus', 27),
(113, 'Lagoon', 27),
(114, 'Ooh Ahh', 28),
(115, 'Penguin', 28),
(116, 'Big Bird', 28),
(117, 'Pigeon', 28),
(118, '11', 29),
(119, '9', 29),
(120, '5', 29),
(121, '7', 29),
(122, 'Soccer - Football', 30),
(123, 'Golf - Polo', 30),
(124, 'Billiards - Carrom', 30),
(125, 'Volleyball - Squash', 30),
(126, 'Chuck Norris', 31),
(127, 'Charles Atlas', 31),
(128, 'Charlton Heston', 31),
(129, 'Jimmy Carter', 31),
(130, 'Johnny Carson', 32),
(131, 'Jay Leno', 32),
(132, ' Phil Donahue', 32),
(133, 'David Letterman', 32),
(134, 'Gene Autry', 33),
(135, 'Hopalong Cassidy', 33),
(136, 'Tom Mix', 33),
(137, 'Roy Rogers', 33),
(138, 'Manville', 34),
(139, 'Melvin', 34),
(140, 'Mortimer ', 34),
(141, 'Murgatroyd', 34),
(142, 'best actor', 35),
(143, 'best actress', 35),
(144, 'best picture', 35),
(145, 'best supporting actor', 35),
(146, 'Callahan ', 36),
(147, 'Flint', 36),
(148, 'Harrigan', 36),
(149, 'Steele', 36);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` text NOT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `category_name`) VALUES
(1, 'Sport'),
(2, 'Entertainment'),
(3, 'General Knowledge');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `questionname` text NOT NULL,
  `correctanswer` text NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`question_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `questionname`, `correctanswer`, `category_id`) VALUES
(1, 'Grand Central Terminal, Park Avenue, New York is the world''s', '1', 3),
(2, 'Entomology is the science that studies', '2', 3),
(3, 'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of', '2', 3),
(4, 'One kilobyte is equal to', '3', 3),
(5, 'Which of the following is not an example of Operating System', '3', 3),
(6, 'Check the odd term out', '1', 3),
(7, 'The errors that can be pointed out by the compiler are', '1', 3),
(8, 'What is the art of Japanese flower arranging called?', '2', 3),
(9, 'Which country had the first Women''s Institute, in 1897?', '2', 3),
(10, 'Galileo was an Italian astronomer who', '4', 3),
(11, 'The ozone layer restricts', '4', 3),
(12, 'Headquarters of UNO are situated at', '1', 3),
(13, 'Gabriel Daniel Fahrenheit was', '4', 3),
(14, 'Which of the following is used in pencils?', '1', 3),
(15, 'The element common to all acids is', '1', 3),
(16, 'Former Australian captain Mark Taylor has had several nicknames over his playing career. Which of the following was NOT one of them?', '4', 1),
(17, 'Which was the 1st non Test playing country to beat India in an international match?', '2', 1),
(18, 'Who did Stone Cold Steve Austin wrestle at the 1998 edition of "Over the Edge"?', '3', 1),
(19, 'Ricky Ponting is also known as what?', '4', 1),
(20, 'How long are professional Golf Tour players allotted per shot?', '1', 1),
(21, 'Who won the 1993 "King of the Ring"?', '2', 1),
(22, 'What is the name of the person that controls a football match?', '1', 1),
(23, 'Fenway Park is the home field of what Major League Baseball team?', '4', 1),
(24, 'Who did The Rock beat to win his first WWE Title?', '3', 1),
(25, 'When was the first cricket Test match played?', '2', 1),
(26, 'Who is the highest wicket taker in Test cricket?', '4', 1),
(27, 'The nickname of wicketkeeping great Rod Marsh was what?', '3', 1),
(28, 'The nickname of Glenn McGrath is what?', '2', 1),
(29, 'How many players are there in Kabbadi team?', '4', 1),
(30, 'Which of the following is a pair names of the same game?', '1', 1),
(31, 'Which actor has the real name of Charles Carter?', '3', 2),
(32, 'In 1988, what TV talk-show host had a house torn down that he had bought recently for over 6 million dollars?', '3', 2),
(33, 'Whose autobiography was called Back In The Saddle Again?', '1', 2),
(34, 'What was Walt Disney''s Mickey Mouse''s original name?', '3', 2),
(35, 'Which one of these Academy Awards did Gone With the Wind not win?', '1', 2),
(36, 'In the Dirty Harry movies starring Clint Eastwood as Dirty Harry, what was Harry''s last name?', '1', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `FK__question` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`categoryid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
