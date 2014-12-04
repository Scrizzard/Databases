
--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `baggagecar`
--

CREATE TABLE IF NOT EXISTS `baggagecar` (
  `carID` int(11) NOT NULL,
  `baggageCapacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baggagecar`
--

INSERT INTO `baggagecar` (`carID`, `baggageCapacity`) VALUES
(5, 60),
(13, 50),
(14, 45),
(15, 60);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE IF NOT EXISTS `car` (
`id` int(11) NOT NULL,
  `inService` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `inService`) VALUES
(1, 1),
(2, 1),
(3, 0),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 0),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 0),
(16, 1),
(17, 1),
(18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `carvoyagepair`
--

CREATE TABLE IF NOT EXISTS `carvoyagepair` (
  `voyageID` int(11) NOT NULL,
  `carID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carvoyagepair`
--

INSERT INTO `carvoyagepair` (`voyageID`, `carID`) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 4),
(3, 5),
(3, 6),
(4, 1),
(4, 2),
(4, 4),
(4, 5),
(4, 6),
(5, 1),
(5, 2),
(5, 4),
(5, 5),
(5, 6),
(6, 1),
(6, 2),
(6, 4),
(6, 5),
(6, 6),
(7, 1),
(7, 2),
(7, 4),
(7, 5),
(7, 6),
(8, 1),
(8, 2),
(8, 4),
(8, 5),
(8, 6);

-- --------------------------------------------------------

--
-- Table structure for table `diningcar`
--

CREATE TABLE IF NOT EXISTS `diningcar` (
  `carID` int(11) NOT NULL,
  `passengerLimit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diningcar`
--

INSERT INTO `diningcar` (`carID`, `passengerLimit`) VALUES
(6, 60),
(16, 30),
(17, 35),
(18, 35);

-- --------------------------------------------------------

--
-- Table structure for table `employeeenginepair`
--

CREATE TABLE IF NOT EXISTS `employeeenginepair` (
  `employeeID` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeenginepair`
--

INSERT INTO `employeeenginepair` (`employeeID`, `name`) VALUES
(1, 'SuperEngine'),
(1, 'Smokey'),
(1, 'SuperEngine II'),
(2, 'SuperEngine'),
(3, 'Smokey'),
(3, 'SuperEngine II'),
(3, 'Puller Express'),
(3, 'SuperEngine'),
(3, 'Speedy'),
(3, 'Orange Mk. 5'),
(11, 'SuperEngine II'),
(11, 'Puller Express'),
(11, 'SuperEngine'),
(11, 'Speedy'),
(11, 'Orange Mk. 5');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `yearsOfEmployment` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `title`, `yearsOfEmployment`) VALUES
(1, 'Andrew Irwin', 'Engineer', 15),
(2, 'Laurie Ricker', 'Conductor', 12),
(3, 'Robert Rosebrugh', 'Engineer', 16),
(4, 'Geoffrey Cruttwell', 'Porter', 9),
(5, 'Mark Hamilton', 'Ticket Taker', 11),
(6, 'Andrew Hamilton-Wright', 'Chief Cook', 5),
(7, 'Liam Keliher', 'Cook', 20),
(8, 'Margaret-Ellen Messinger', 'Cook', 3),
(9, 'Jeffrey Morton', ' Cook', 6),
(10, 'Robert Allen', 'Conductor', 12),
(11, 'Kristian Strickland', 'Engineer', 3),
(13, 'Angus Findlay', 'Conductor', 14),
(14, 'timmy', 'super train guy', 400);

-- --------------------------------------------------------

--
-- Table structure for table `employeevoyagepair`
--

CREATE TABLE IF NOT EXISTS `employeevoyagepair` (
  `voyageID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeevoyagepair`
--

INSERT INTO `employeevoyagepair` (`voyageID`, `employeeID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `engine`
--

CREATE TABLE IF NOT EXISTS `engine` (
`id` int(11) NOT NULL,
  `yearOfConstruction` int(11) DEFAULT NULL,
  `inServiceState` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `engine`
--

INSERT INTO `engine` (`id`, `yearOfConstruction`, `inServiceState`, `name`) VALUES
(1, 2002, 1, 'SuperEngine II'),
(2, 1994, 1, 'Puller Express'),
(3, 1880, 0, 'Smokey'),
(4, 1990, 1, 'Orange Mk. 5'),
(5, 2009, 1, 'Speedy'),
(6, 2010, 1, 'Speedy'),
(7, 1974, 1, 'SuperEngine'),
(8, 1979, 1, 'SuperEngine'),
(9, 1999, 1, 'Puller Express');

-- --------------------------------------------------------

--
-- Table structure for table `enginetype`
--

CREATE TABLE IF NOT EXISTS `enginetype` (
  `fuelType` varchar(255) DEFAULT NULL,
  `yearOfInvention` int(11) DEFAULT NULL,
  `inventor` varchar(255) DEFAULT NULL,
  `countryOfOrigin` varchar(255) DEFAULT NULL,
  `maxCarPull` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enginetype`
--

INSERT INTO `enginetype` (`fuelType`, `yearOfInvention`, `inventor`, `countryOfOrigin`, `maxCarPull`, `name`) VALUES
('Diesel', 1986, 'TrainCorp', 'Germany', 35, 'Orange Mk. 5'),
('Diesel', 1994, 'American Rails', 'USA', 40, 'Puller Express'),
('Coal', 1876, 'CanTrain', 'Canada', 15, 'Smokey'),
('Diesel', 2008, 'Royal Rails', 'UK', 60, 'Speedy'),
('Diesel', 1973, 'CanTrain', 'Canada', 30, 'SuperEngine'),
('Diesel', 2000, 'CanTrain Inc.', 'Canada', 45, 'SuperEngine II');

-- --------------------------------------------------------

--
-- Table structure for table `enginevoyagepair`
--

CREATE TABLE IF NOT EXISTS `enginevoyagepair` (
  `voyageID` int(11) NOT NULL,
  `engineID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enginevoyagepair`
--

INSERT INTO `enginevoyagepair` (`voyageID`, `engineID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE IF NOT EXISTS `passenger` (
  `passportNumber` varchar(255) DEFAULT NULL,
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `paymentType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1235 ;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`passportNumber`, `id`, `name`, `nationality`, `address`, `phoneNumber`, `paymentType`) VALUES
('8472-3542-0912', 1, 'Benjamin Weichman', 'USA', '34 Main St., Somecity, ME, USA', '555-536-1111', 'Visa'),
(NULL, 2, 'Caroline Quinn', 'Canada', '23 Main St., Othercity, NB, Canada', '555-536-2222', 'Paypal'),
('7322-4562-6532', 4, 'Albert Ross', 'USA', '108 Main St., Somecity, ME, USA', '555-536-4444', 'MasterCard'),
(NULL, 5, 'Jonna Roberts', 'Canada', '563 Main St., Othercity, ON, Canada', '555-536-5555', 'Paypal'),
(NULL, 6, 'Sam Reilly', 'Canada', '565 Main St., Moncton, NB, Canada', '555-536-6666', 'Cheque'),
('0147-6566-4322', 7, 'Tim Bray', 'Canada', '8665 Main St., Somecity, NS, Canada', '555-536-7777', 'Visa'),
('3422-5542-2533', 8, 'Jimmie Peters', 'Canada', '2443 Main St., Othercity, QC, Canada', '555-536-8888', 'Paypal'),
('8427-4561-1552', 9, 'Brian Bray', 'Canada', '6435 Main St., Kingston, ON, Canada', '555-536-9999', 'Cheque'),
('8427-4561-1465', 10, 'Bruce Bray', 'Canada', '6435 Main St., Kingston, ON, Canada', '555-536-1010', 'Cheque'),
('6372-2232-4632', 11, 'Ross Rider', 'USA', '54 Main St., Somecity, ME, USA', '555-536-0011', 'MasterCard'),
(NULL, 12, 'Helen Roberts', 'Canada', '563 Main St., Othercity, ON, Canada', '555-536-1212', 'Paypal'),
(NULL, 13, 'Sarah Rivers', 'Canada', '765 Main St., Moncton, NB, Canada', '555-536-1313', 'Cheque'),
('0147-6566-4322', 14, 'Tony McFarlane', 'Canada', '345 Main St., Somecity, NS, Canada', '555-536-1414', 'Visa'),
(NULL, 15, 'John Whynot', 'Canada', '456 Main St., Othercity, QC, Canada', '555-536-1515', 'Paypal'),
(NULL, 16, 'Frank Gates', 'Canada', '543 Main St., Kingston, ON, Canada', '555-536-1616', 'Cheque'),
('passport123', 1234, 'benji 2.0', 'america', 'here', '781', 'credit');

-- --------------------------------------------------------

--
-- Table structure for table `passengercar`
--

CREATE TABLE IF NOT EXISTS `passengercar` (
  `carID` int(11) NOT NULL,
  `numberofSeats` int(11) DEFAULT NULL,
  `class` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengercar`
--

INSERT INTO `passengercar` (`carID`, `numberofSeats`, `class`) VALUES
(1, 60, 1),
(2, 60, 1),
(3, 60, 1),
(4, 50, 1.5),
(7, 50, 1),
(8, 40, 2),
(9, 30, 2.5),
(10, 50, 1),
(11, 50, 1),
(12, 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `passengerticket`
--

CREATE TABLE IF NOT EXISTS `passengerticket` (
`id` int(11) NOT NULL,
  `passengerID` int(11) NOT NULL,
  `voyageID` int(11) NOT NULL,
  `carID` int(11) NOT NULL,
  `discount` float(9,2) DEFAULT NULL,
  `seatNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `passengerticket`
--

INSERT INTO `passengerticket` (`id`, `passengerID`, `voyageID`, `carID`, `discount`, `seatNumber`) VALUES
(1, 1, 1, 1, 0.00, 1),
(2, 2, 1, 1, 0.00, 2),
(4, 4, 1, 2, 0.00, 1),
(5, 5, 1, 2, 0.50, 2),
(6, 6, 1, 2, 0.00, 3),
(7, 1, 2, 1, 0.50, 1),
(8, 2, 2, 1, 0.00, 2),
(10, 4, 2, 4, 0.00, 1),
(11, 5, 2, 4, 0.00, 2),
(12, 6, 2, 4, 0.00, 3),
(13, 7, 2, 1, 0.00, 4),
(14, 8, 2, 4, 0.00, 4),
(15, 8, 3, 1, 0.50, 1),
(16, 9, 3, 1, 0.00, 2),
(17, 10, 3, 1, 0.00, 3),
(18, 11, 3, 2, 0.00, 1),
(19, 12, 3, 2, 0.50, 2),
(20, 13, 3, 4, 0.50, 1),
(21, 14, 3, 1, 0.00, 4),
(22, 15, 3, 4, 0.00, 2),
(23, 9, 4, 1, 0.50, 1),
(24, 10, 4, 1, 0.00, 2),
(25, 11, 4, 1, 0.00, 3),
(26, 12, 4, 2, 0.00, 1),
(27, 13, 4, 2, 0.00, 2),
(28, 14, 4, 4, 0.00, 1),
(29, 15, 4, 1, 0.00, 4),
(30, 16, 4, 4, 0.00, 2),
(31, 1, 5, 2, 0.00, 1),
(32, 2, 5, 2, 0.00, 2),
(34, 4, 5, 1, 0.00, 1),
(35, 5, 5, 1, 0.50, 2),
(36, 6, 5, 1, 0.00, 3),
(37, 1, 6, 4, 0.50, 1),
(38, 2, 6, 4, 0.00, 2),
(40, 4, 6, 1, 0.00, 1),
(41, 5, 6, 1, 0.00, 2),
(42, 6, 6, 1, 0.00, 3),
(43, 7, 6, 4, 0.00, 4),
(44, 8, 6, 1, 0.00, 4),
(45, 8, 7, 1, 0.50, 1),
(46, 9, 7, 1, 0.00, 2),
(47, 10, 7, 1, 0.00, 3),
(48, 11, 7, 2, 0.00, 1),
(49, 12, 7, 2, 0.50, 2),
(50, 13, 7, 4, 0.50, 1),
(51, 14, 7, 1, 0.00, 4),
(52, 15, 7, 4, 0.00, 2),
(53, 9, 8, 1, 0.50, 1),
(54, 10, 8, 1, 0.00, 2),
(55, 11, 8, 1, 0.00, 3),
(56, 12, 8, 2, 0.00, 1),
(57, 13, 8, 2, 0.00, 2),
(58, 14, 8, 4, 0.00, 1),
(59, 15, 8, 1, 0.00, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sectionroute`
--

CREATE TABLE IF NOT EXISTS `sectionroute` (
  `trackSectionID` int(11) DEFAULT NULL,
  `routeID` int(11) DEFAULT NULL,
  `orderOfVisitation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sectionroute`
--

INSERT INTO `sectionroute` (`trackSectionID`, `routeID`, `orderOfVisitation`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(12, 2, 1),
(11, 2, 2),
(10, 2, 3),
(9, 2, 4),
(8, 2, 5),
(7, 2, 6),
(26, 3, 1),
(24, 3, 2),
(22, 3, 3),
(20, 3, 4),
(18, 3, 5),
(17, 4, 1),
(19, 4, 2),
(21, 4, 3),
(23, 4, 4),
(25, 4, 5),
(27, 5, 1),
(28, 6, 1),
(22, 7, 1),
(20, 7, 2),
(19, 8, 1),
(21, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ticketpassengerpair`
--

CREATE TABLE IF NOT EXISTS `ticketpassengerpair` (
  `ticketID` int(11) NOT NULL,
  `passengerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticketpassengerpair`
--

INSERT INTO `ticketpassengerpair` (`ticketID`, `passengerID`) VALUES
(1, 1),
(2, 2),
(4, 4),
(5, 5),
(6, 6),
(7, 1),
(8, 2),
(10, 4),
(11, 5),
(12, 6),
(13, 7),
(14, 8),
(15, 8),
(16, 9),
(17, 10),
(18, 11),
(19, 12),
(20, 13),
(21, 14),
(22, 15),
(23, 9),
(24, 10),
(25, 11),
(26, 12),
(27, 13),
(28, 14),
(29, 15),
(30, 16),
(31, 1),
(32, 2),
(34, 4),
(35, 5),
(36, 6),
(37, 1),
(38, 2),
(40, 4),
(41, 5),
(42, 6),
(43, 7),
(44, 8),
(45, 8),
(46, 9),
(47, 10),
(48, 11),
(49, 12),
(50, 13),
(51, 14),
(52, 15),
(53, 9),
(54, 10),
(55, 11),
(56, 12),
(57, 13),
(58, 14),
(59, 15);

-- --------------------------------------------------------

--
-- Table structure for table `ticketprice`
--

CREATE TABLE IF NOT EXISTS `ticketprice` (
  `voyageID` int(11) NOT NULL,
  `carID` int(11) NOT NULL,
  `discount` float(9,2) DEFAULT '0.00',
  `price` float(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticketprice`
--

INSERT INTO `ticketprice` (`voyageID`, `carID`, `discount`, `price`) VALUES
(1, 1, 0.00, 300.00),
(1, 2, 0.00, 300.00),
(1, 4, 0.00, 450.00),
(2, 1, 0.00, 300.00),
(2, 4, 0.00, 450.00),
(3, 1, 0.00, 300.00),
(3, 4, 0.00, 450.00),
(4, 1, 0.00, 300.00),
(4, 2, 0.00, 300.00),
(4, 4, 0.00, 450.00),
(5, 1, 0.50, 300.00),
(5, 2, 0.00, 300.00),
(5, 4, 0.00, 450.00),
(6, 1, 0.00, 300.00),
(6, 2, 0.00, 300.00),
(6, 4, 0.00, 450.00),
(7, 1, 0.00, 400.00),
(7, 2, 0.00, 400.00),
(7, 4, 0.00, 550.00),
(8, 1, 0.00, 400.00),
(8, 2, 0.00, 400.00),
(8, 4, 0.00, 550.00);

-- --------------------------------------------------------

--
-- Table structure for table `tracksection`
--

CREATE TABLE IF NOT EXISTS `tracksection` (
`sectionID` int(11) NOT NULL,
  `stationOfOrigin` varchar(255) DEFAULT NULL,
  `terminalStation` varchar(255) DEFAULT NULL,
  `inServiceState` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `tracksection`
--

INSERT INTO `tracksection` (`sectionID`, `stationOfOrigin`, `terminalStation`, `inServiceState`) VALUES
(1, 'Montreal', 'Fredericton', 1),
(2, 'Fredericton', 'Saint John', 1),
(3, 'Saint John', 'Moncton', 1),
(4, 'Moncton', 'Sackville', 1),
(5, 'Sackville', 'Amherst', 1),
(6, 'Amherst', 'Halifax', 1),
(7, 'Fredericton', 'Montreal', 1),
(8, 'Saint John', 'Fredericton', 1),
(9, 'Moncton', 'Saint John', 1),
(10, 'Sackville', 'Moncton', 1),
(11, 'Amherst', 'Sackville', 1),
(12, 'Halifax', 'Amherst', 1),
(13, 'Fredericton', 'Quebec City', 1),
(14, 'Quebec City', 'Fredericton', 1),
(15, 'Quebec City', 'Montreal', 1),
(16, 'Montreal', 'Quebec City', 1),
(17, 'Montreal', 'Ottawa', 1),
(18, 'Ottawa', 'Montreal', 1),
(19, 'Ottawa', 'Kingston', 1),
(20, 'Kingston', 'Ottawa', 1),
(21, 'Kingston', 'Toronto', 1),
(22, 'Toronto', 'Kingston', 1),
(23, 'Toronto', 'Hamilton', 1),
(24, 'Hamilton', 'Toronto', 1),
(25, 'Hamilton', 'Windsor', 1),
(26, 'Windsor', 'Hamilton', 1),
(27, 'Windsor', 'Thunder Bay', 1),
(28, 'Thunder Bay', 'Windsor', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trainroute`
--

CREATE TABLE IF NOT EXISTS `trainroute` (
  `routeID` int(11) NOT NULL,
  `stationOfOrigin` varchar(255) DEFAULT NULL,
  `terminalStation` varchar(255) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `travelTime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainroute`
--

INSERT INTO `trainroute` (`routeID`, `stationOfOrigin`, `terminalStation`, `distance`, `cost`, `travelTime`) VALUES
(1, 'Montreal', 'Halifax', 1020, 300, 22),
(2, 'Halifax', 'Montreal', 1020, 300, 22),
(3, 'Windsor', 'Montreal', 980, 280, 16),
(4, 'Montreal', 'Windsor', 980, 280, 16),
(5, 'Windsor', 'Thunder Bay', 520, 230, 10),
(6, 'Thunder Bay', 'Windsor', 520, 230, 10),
(7, 'Toronto', 'Ottawa', 500, 150, 5),
(8, 'Ottawa', 'Toronto', 500, 150, 5);

-- --------------------------------------------------------

--
-- Table structure for table `trainstation`
--

CREATE TABLE IF NOT EXISTS `trainstation` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainstation`
--

INSERT INTO `trainstation` (`name`, `latitude`, `longitude`, `address`) VALUES
('Amherst', 'N45 12.2', 'W63 56.1', '342 LaPlanche St., Amherst, NS'),
('Fredericton', 'N45 58.3', 'W65 30.4', '46 King St., Fredericton, NB'),
('Halifax', 'N44 45.3', 'W63 5.8', '2443 Barrington St., Halifax, NS'),
('Hamilton', 'N43 1.4', 'W79 6.6', '654 King St., Hamilton, ON'),
('Kingston', 'N47 30.4', 'W73 45.5', '334 Princess St., Kingston, ON'),
('Moncton', 'N46 0.3', 'W64 55.7', '1001 Main St., Moncton NB'),
('Montreal', 'N47 30.4', 'W68 4.2', '3002 Queen St., Montreal, QC'),
('Ottawa', 'N48 34.4', 'W72 34.2', '1001 Sparks St., Ottawa, ON'),
('Quebec City', 'N47 31.4', 'W67 4.2', '1302 Vert Rue, Quebec City, QC'),
('Sackville', 'N45 15.4', 'W64 20.3', '45 Lorne St., Sackville, NB'),
('Saint John', 'N45 45.7', 'W65 20.6', '1229 Dock Yard Lane, St. John, NB'),
('Thunder Bay', 'N47 30.4', 'W81 4.2', '62 Queen St., Thunder Bay, ON'),
('Toronto', 'N43 3.3', 'W78 34.3', '2543 Main St., Toronto, ON'),
('Windsor', 'N41 20.4', 'W80 4.2', '802 Green St., Windsor, ON');

-- --------------------------------------------------------

--
-- Table structure for table `voyage`
--

CREATE TABLE IF NOT EXISTS `voyage` (
  `id` int(11) NOT NULL,
  `routeID` int(11) DEFAULT NULL,
  `departureDate` date DEFAULT NULL,
  `departureTime` time DEFAULT NULL,
  `arrivalDate` date DEFAULT NULL,
  `arrivalTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voyage`
--

INSERT INTO `voyage` (`id`, `routeID`, `departureDate`, `departureTime`, `arrivalDate`, `arrivalTime`) VALUES
(1, 1, '2014-12-10', '18:30:00', '2014-12-11', '17:30:00'),
(2, 2, '2014-12-12', '11:30:00', '2014-12-13', '08:30:00'),
(3, 1, '2014-12-14', '18:30:00', '2014-12-15', '17:30:00'),
(4, 2, '2014-12-16', '11:30:00', '2014-12-17', '08:30:00'),
(5, 1, '2014-12-18', '18:30:00', '2014-12-19', '17:30:00'),
(6, 2, '2014-12-20', '11:30:00', '2014-12-21', '08:30:00'),
(7, 1, '2014-12-22', '18:30:00', '2014-12-23', '17:30:00'),
(8, 2, '2014-12-24', '11:30:00', '2014-12-25', '08:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baggagecar`
--
ALTER TABLE `baggagecar`
 ADD KEY `carID` (`carID`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carvoyagepair`
--
ALTER TABLE `carvoyagepair`
 ADD KEY `voyageID` (`voyageID`), ADD KEY `carID` (`carID`);

--
-- Indexes for table `diningcar`
--
ALTER TABLE `diningcar`
 ADD KEY `carID` (`carID`);

--
-- Indexes for table `employeeenginepair`
--
ALTER TABLE `employeeenginepair`
 ADD KEY `name` (`name`), ADD KEY `employeeID` (`employeeID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeevoyagepair`
--
ALTER TABLE `employeevoyagepair`
 ADD KEY `voyageID` (`voyageID`), ADD KEY `employeeID` (`employeeID`);

--
-- Indexes for table `engine`
--
ALTER TABLE `engine`
 ADD PRIMARY KEY (`id`), ADD KEY `name` (`name`);

--
-- Indexes for table `enginetype`
--
ALTER TABLE `enginetype`
 ADD PRIMARY KEY (`name`);

--
-- Indexes for table `enginevoyagepair`
--
ALTER TABLE `enginevoyagepair`
 ADD KEY `voyageID` (`voyageID`), ADD KEY `engineID` (`engineID`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passengercar`
--
ALTER TABLE `passengercar`
 ADD KEY `carID` (`carID`);

--
-- Indexes for table `passengerticket`
--
ALTER TABLE `passengerticket`
 ADD PRIMARY KEY (`id`), ADD KEY `passengerID` (`passengerID`), ADD KEY `voyageID` (`voyageID`), ADD KEY `carID` (`carID`);

--
-- Indexes for table `sectionroute`
--
ALTER TABLE `sectionroute`
 ADD KEY `trackSectionID` (`trackSectionID`), ADD KEY `routeID` (`routeID`);

--
-- Indexes for table `ticketpassengerpair`
--
ALTER TABLE `ticketpassengerpair`
 ADD KEY `passengerID` (`passengerID`), ADD KEY `ticketID` (`ticketID`);

--
-- Indexes for table `ticketprice`
--
ALTER TABLE `ticketprice`
 ADD KEY `voyageID` (`voyageID`), ADD KEY `carID` (`carID`);

--
-- Indexes for table `tracksection`
--
ALTER TABLE `tracksection`
 ADD PRIMARY KEY (`sectionID`), ADD KEY `stationOfOrigin` (`stationOfOrigin`), ADD KEY `terminalStation` (`terminalStation`);

--
-- Indexes for table `trainroute`
--
ALTER TABLE `trainroute`
 ADD PRIMARY KEY (`routeID`);

--
-- Indexes for table `trainstation`
--
ALTER TABLE `trainstation`
 ADD PRIMARY KEY (`name`);

--
-- Indexes for table `voyage`
--
ALTER TABLE `voyage`
 ADD PRIMARY KEY (`id`), ADD KEY `routeID` (`routeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `engine`
--
ALTER TABLE `engine`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1235;
--
-- AUTO_INCREMENT for table `passengerticket`
--
ALTER TABLE `passengerticket`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `tracksection`
--
ALTER TABLE `tracksection`
MODIFY `sectionID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `baggagecar`
--
ALTER TABLE `baggagecar`
ADD CONSTRAINT `baggagecar_ibfk_1` FOREIGN KEY (`carID`) REFERENCES `car` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carvoyagepair`
--
ALTER TABLE `carvoyagepair`
ADD CONSTRAINT `carvoyagepair_ibfk_1` FOREIGN KEY (`voyageID`) REFERENCES `voyage` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `carvoyagepair_ibfk_2` FOREIGN KEY (`carID`) REFERENCES `car` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `diningcar`
--
ALTER TABLE `diningcar`
ADD CONSTRAINT `diningcar_ibfk_1` FOREIGN KEY (`carID`) REFERENCES `car` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employeeenginepair`
--
ALTER TABLE `employeeenginepair`
ADD CONSTRAINT `employeeenginepair_ibfk_1` FOREIGN KEY (`name`) REFERENCES `enginetype` (`name`) ON DELETE CASCADE,
ADD CONSTRAINT `employeeenginepair_ibfk_2` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employeevoyagepair`
--
ALTER TABLE `employeevoyagepair`
ADD CONSTRAINT `employeevoyagepair_ibfk_1` FOREIGN KEY (`voyageID`) REFERENCES `voyage` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `employeevoyagepair_ibfk_2` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `engine`
--
ALTER TABLE `engine`
ADD CONSTRAINT `engine_ibfk_1` FOREIGN KEY (`name`) REFERENCES `enginetype` (`name`) ON DELETE CASCADE;

--
-- Constraints for table `enginevoyagepair`
--
ALTER TABLE `enginevoyagepair`
ADD CONSTRAINT `enginevoyagepair_ibfk_1` FOREIGN KEY (`voyageID`) REFERENCES `voyage` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `enginevoyagepair_ibfk_2` FOREIGN KEY (`engineID`) REFERENCES `engine` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `passengercar`
--
ALTER TABLE `passengercar`
ADD CONSTRAINT `passengercar_ibfk_1` FOREIGN KEY (`carID`) REFERENCES `car` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `passengerticket`
--
ALTER TABLE `passengerticket`
ADD CONSTRAINT `passengerticket_ibfk_1` FOREIGN KEY (`passengerID`) REFERENCES `passenger` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `passengerticket_ibfk_2` FOREIGN KEY (`voyageID`) REFERENCES `voyage` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `passengerticket_ibfk_3` FOREIGN KEY (`carID`) REFERENCES `car` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sectionroute`
--
ALTER TABLE `sectionroute`
ADD CONSTRAINT `sectionroute_ibfk_1` FOREIGN KEY (`trackSectionID`) REFERENCES `tracksection` (`sectionID`) ON DELETE CASCADE,
ADD CONSTRAINT `sectionroute_ibfk_2` FOREIGN KEY (`routeID`) REFERENCES `trainroute` (`routeID`) ON DELETE CASCADE;

--
-- Constraints for table `ticketpassengerpair`
--
ALTER TABLE `ticketpassengerpair`
ADD CONSTRAINT `ticketpassengerpair_ibfk_1` FOREIGN KEY (`passengerID`) REFERENCES `passenger` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `ticketpassengerpair_ibfk_2` FOREIGN KEY (`ticketID`) REFERENCES `passengerticket` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticketprice`
--
ALTER TABLE `ticketprice`
ADD CONSTRAINT `ticketprice_ibfk_1` FOREIGN KEY (`voyageID`) REFERENCES `voyage` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `ticketprice_ibfk_2` FOREIGN KEY (`carID`) REFERENCES `car` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tracksection`
--
ALTER TABLE `tracksection`
ADD CONSTRAINT `tracksection_ibfk_1` FOREIGN KEY (`stationOfOrigin`) REFERENCES `trainstation` (`name`) ON DELETE CASCADE,
ADD CONSTRAINT `tracksection_ibfk_2` FOREIGN KEY (`terminalStation`) REFERENCES `trainstation` (`name`) ON DELETE CASCADE;

--
-- Constraints for table `voyage`
--
ALTER TABLE `voyage`
ADD CONSTRAINT `voyage_ibfk_1` FOREIGN KEY (`routeID`) REFERENCES `trainroute` (`routeID`) ON DELETE CASCADE;
