-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 04, 2015 at 01:44 PM
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
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `category` text NOT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `category`) VALUES
(1, 'Sport'),
(2, 'Entertainment'),
(3, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `questionname` text NOT NULL,
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  `answer3` text NOT NULL,
  `answer4` text NOT NULL,
  `correctanswer` text NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`question_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `questionname`, `answer1`, `answer2`, `answer3`, `answer4`, `correctanswer`, `category_id`) VALUES
(1, 'Grand Central Terminal, Park Avenue, New York is the world''s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', '1', 3),
(2, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', '2', 3),
(3, 'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of', 'Asia', 'Africa', 'Europe', 'Australia', '2', 3),
(4, 'One kilobyte is equal to', '1000 bytes', '100 bytes', '1024 bytes', '1023 bytes', '3', 3),
(5, 'Which of the following is not an example of Operating System', 'Windows 98', 'BSD Unix', 'Microsoft Office XP', 'Red Hat Linux', '3', 3),
(6, 'Check the odd term out', 'Internet', 'Linux', 'Unix', 'Windows', '1', 3),
(7, 'The errors that can be pointed out by the compiler are', 'Syntax error', 'Symantic error', 'Logical error', 'Internal error', '1', 3),
(8, 'What is the art of Japanese flower arranging called?', 'Feng Shui', 'Ikebana', 'Florabana', 'None of the Above', '2', 3),
(9, 'Which country had the first Women''s Institute, in 1897?', 'Australia', 'Canada', 'Great Britain', 'Japan', '2', 3),
(10, 'Galileo was an Italian astronomer who', 'developed the telescope', 'discovered four satellites of Jupiter', 'discovered that the movement of pendulum produces a regular time measurement', 'All of the above', '4', 3),
(11, 'The ozone layer restricts', 'Visible light', 'Infrared radiation', 'X-rays and gamma rays', 'Ultraviolet radiation', '4', 3),
(12, 'Headquarters of UNO are situated at', 'New York, USA', 'Haque (Netherlands)', 'Geneva', 'Paris', '1', 3),
(13, 'Gabriel Daniel Fahrenheit was', 'a German Physicist', 'developed the mercury thermometer in 1714', 'devised temperature scale', 'All of the above', '4', 3),
(14, 'Which of the following is used in pencils?', 'Graphite', 'Silicon', 'Charcoal', 'Phosphorous', '1', 3),
(15, 'The element common to all acids is', 'hydrogen', 'carbon', 'sulphur', 'oxygen', '1', 3),
(16, 'Former Australian captain Mark Taylor has had several nicknames over his playing career. Which of the following was NOT one of them?', 'Tubby', 'Stodge', 'Helium Bat', 'Stumpy', '4', 1),
(17, 'Which was the 1st non Test playing country to beat India in an international match?', 'Canada', 'Sri Lanka', 'Zimbabwe', 'East Africa', '2', 1),
(18, 'Who did Stone Cold Steve Austin wrestle at the 1998 edition of "Over the Edge"?', 'Cactus Jack', 'Mankind', 'Dude Love', 'Mick Foley', '3', 1),
(19, 'Ricky Ponting is also known as what?', 'The Rickster', 'Ponts', 'Ponter', 'Punter', '4', 1),
(20, 'How long are professional Golf Tour players allotted per shot?', '45 seconds', '25 seconds', '1 minute', '2 minutes', '1', 1),
(21, 'Who won the 1993 "King of the Ring"?', 'Owen Hart', 'Bret Hart', 'Edge', 'Mabel', '2', 1),
(22, 'What is the name of the person that controls a football match?', 'A referee', 'An umpire', 'A spectator', 'A goalkeeper', '1', 1),
(23, 'Fenway Park is the home field of what Major League Baseball team?', 'New York Yankees', 'Chicago White Sox', 'Montreal Expos', 'Boston Red Sox', '4', 1),
(24, 'Who did The Rock beat to win his first WWE Title?', 'Triple H', 'Stone Cold Steve Austin', 'Mankind', 'Bret Hart', '3', 1),
(25, 'When was the first cricket Test match played?', '1873', '1877', '1870', '1788', '2', 1),
(26, 'Who is the highest wicket taker in Test cricket?', 'Shane Warne', 'Brian Lara\r\n', 'Courtney Walsh', 'Muttiah Muralitharan', '4', 1),
(27, 'The nickname of wicketkeeping great Rod Marsh was what?', 'Billabong', 'Swampy', 'Bacchus', 'Lagoon', '3', 1),
(28, 'The nickname of Glenn McGrath is what?', 'Ooh Ahh', 'Penguin', 'Big Bird', 'Pigeon', '2', 1),
(29, 'How many players are there in Kabbadi team?', '11', '9', '5', '7', '4', 1),
(30, 'Which of the following is a pair names of the same game?', 'Soccer - Football', 'Golf - Polo', 'Billiards - Carrom', 'Volleyball - Squash', '1', 1),
(31, 'Which actor has the real name of Charles Carter?', 'Chuck Norris', 'Charles Atlas', 'Charlton Heston', 'Jimmy Carter', '3', 2),
(32, 'In 1988, what TV talk-show host had a house torn down that he had bought recently for over 6 million dollars?', 'Johnny Carson', 'Jay Leno', ' Phil Donahue', 'David Letterman', '3', 2),
(33, 'Whose autobiography was called Back In The Saddle Again?', 'Gene Autry', 'Hopalong Cassidy', 'Tom Mix', 'Roy Rogers', '1', 2),
(34, 'What was Walt Disney''s Mickey Mouse''s original name?', 'Manville', 'Melvin', 'Mortimer ', 'Murgatroyd', '3', 2),
(35, 'Which one of these Academy Awards did Gone With the Wind not win?', 'best actor', 'best actress', 'best picture', 'best supporting actor', '1', 2),
(36, 'In the Dirty Harry movies starring Clint Eastwood as Dirty Harry, what was Harry''s last name?', 'Callahan ', 'Flint', 'Harrigan', 'Steele', '1', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`categoryid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
