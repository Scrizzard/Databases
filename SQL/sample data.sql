USE TMS;

START TRANSACTION;

INSERT INTO Car VALUES 
(1,true), 
(2,true), 
(3,false), 
(4,true), 
(5,true), 
(6,true),
(7,true), 
(8,true), 
(9,false), 
(10,true), 
(11,true), 
(12,true),
(13,true), 
(14,true), 
(15,false), 
(16,true), 
(17,true), 
(18,true);

INSERT INTO PassengerCar VALUES 
(1,60,1.0), 
(2,60,1.0), 
(3,60,1.0), 
(4,50,1.5),
(7,50,1.0),
(8,40,2.0),
(9,30,2.5),
(10,50,1.0),
(11,50,1.0),
(12,50,1.0);

INSERT INTO BaggageCar VALUES 
(5,60),
(13,50),
(14,45),
(15,60);

INSERT INTO DiningCar VALUES 
(6,60),
(16,30),
(17,35),
(18,35);

INSERT INTO EngineType VALUES 
('Diesel', 2000, 'CanTrain Inc.', 'Canada', 45, 'SuperEngine II'), 
('Diesel', 1994, 'American Rails', 'USA', 40, 'Puller Express'), 
('Diesel', 1986, 'TrainCorp', 'Germany', 35, 'Orange Mk. 5'), 
('Diesel', 2008, 'Royal Rails', 'UK', 60, 'Speedy'), 
('Diesel', 1973, 'CanTrain', 'Canada', 30, 'SuperEngine'), 
('Coal', 1876, 'CanTrain', 'Canada', 15, 'Smokey');

INSERT INTO Engine VALUES 
(1, 2002, true, 'SuperEngine II'), 
(2, 1994, true, 'Puller Express'), 
(3, 1880, false, 'Smokey'),
(4, 1990, true, 'Orange Mk. 5'), 
(5, 2009, true, 'Speedy'), 
(6, 2010, true, 'Speedy'), 
(7, 1974, true, 'SuperEngine'), 
(8, 1979, true, 'SuperEngine'), 
(9, 1999, true, 'Puller Express');

INSERT INTO TrainStation VALUES 
('Sackville', 'N45 15.4', 'W64 20.3', '45 Lorne St., Sackville, NB'), 
('Moncton', 'N46 0.3', 'W64 55.7', '1001 Main St., Moncton NB'), 
('Fredericton', 'N45 58.3', 'W65 30.4', '46 King St., Fredericton, NB'), 
('Saint John', 'N45 45.7', 'W65 20.6', '1229 Dock Yard Lane, St. John, NB'), 
('Amherst', 'N45 12.2', 'W63 56.1', '342 LaPlanche St., Amherst, NS'), 
('Halifax', 'N44 45.3', 'W63 5.8', '2443 Barrington St., Halifax, NS'), 
('Montreal', 'N47 30.4', 'W68 4.2', '3002 Queen St., Montreal, QC'),
('Quebec City', 'N47 31.4', 'W67 4.2', '1302 Vert Rue, Quebec City, QC'),
('Ottawa', 'N48 34.4', 'W72 34.2', '1001 Sparks St., Ottawa, ON'),
('Kingston', 'N47 30.4', 'W73 45.5', '334 Princess St., Kingston, ON'),
('Toronto', 'N43 3.3', 'W78 34.3', '2543 Main St., Toronto, ON'),
('Hamilton', 'N43 1.4', 'W79 6.6', '654 King St., Hamilton, ON'),
('Windsor', 'N41 20.4', 'W80 4.2', '802 Green St., Windsor, ON'),
('Thunder Bay', 'N47 30.4', 'W81 4.2', '62 Queen St., Thunder Bay, ON');

INSERT INTO TrackSection VALUES 
(1, 'Montreal', 'Fredericton', true), 
(2, 'Fredericton', 'Saint John', true), 
(3, 'Saint John', 'Moncton', true), 
(4, 'Moncton', 'Sackville', true), 
(5, 'Sackville', 'Amherst', true), 
(6, 'Amherst', 'Halifax', true), 
(7, 'Fredericton', 'Montreal', true), 
(8, 'Saint John', 'Fredericton', true), 
(9, 'Moncton', 'Saint John', true), 
(10, 'Sackville', 'Moncton', true), 
(11, 'Amherst', 'Sackville', true), 
(12, 'Halifax', 'Amherst', true),
(13, 'Fredericton', 'Quebec City', true),
(14, 'Quebec City', 'Fredericton', true),
(15, 'Quebec City', 'Montreal', true),
(16, 'Montreal', 'Quebec City', true),
(17, 'Montreal', 'Ottawa', true),
(18, 'Ottawa', 'Montreal', true),
(19, 'Ottawa', 'Kingston', true),
(20, 'Kingston', 'Ottawa', true),
(21, 'Kingston', 'Toronto', true),
(22, 'Toronto', 'Kingston', true),
(23, 'Toronto', 'Hamilton', true),
(24, 'Hamilton', 'Toronto', true),
(25, 'Hamilton', 'Windsor', true),
(26, 'Windsor', 'Hamilton', true),
(27, 'Windsor', 'Thunder Bay', true),
(28, 'Thunder Bay', 'Windsor', true);

INSERT INTO TrainRoute VALUES 
(1, 'Montreal', 'Halifax', 1020, 300, 22), 
(2, 'Halifax', 'Montreal', 1020, 300, 22),
(3, 'Windsor', 'Montreal', 980, 280, 16),
(4, 'Montreal', 'Windsor', 980, 280, 16),
(5, 'Windsor', 'Thunder Bay', 520, 230, 10),
(6, 'Thunder Bay', 'Windsor', 520, 230, 10),
(7, 'Toronto', 'Ottawa', 500, 150, 5),
(8, 'Ottawa', 'Toronto', 500, 150, 5);

INSERT INTO Voyage VALUES 
(1, 1, '2014-12-10', '18:30:00', '2014-12-11', '17:30:00'), 
(2, 2, '2014-12-12', '11:30:00', '2014-12-13', '8:30:00'),
(3, 1, '2014-12-14', '18:30:00', '2014-12-15', '17:30:00'), 
(4, 2, '2014-12-16', '11:30:00', '2014-12-17', '8:30:00'), 
(5, 1, '2014-12-18', '18:30:00', '2014-12-19', '17:30:00'), 
(6, 2, '2014-12-20', '11:30:00', '2014-12-21', '8:30:00'), 
(7, 1, '2014-12-22', '18:30:00', '2014-12-23', '17:30:00'), 
(8, 2, '2014-12-24', '11:30:00', '2014-12-25', '8:30:00'); # add more here
##################################################################################
##################################################################################
##################################################################################

##################################################################################
##################################################################################
##################################################################################

INSERT INTO SectionRoute VALUES 
(1, 1, 1), (2, 1, 2), (3, 1, 3), (4, 1, 4), (5, 1, 5), (6, 1, 6), #route 1
(12, 2, 1), (11, 2, 2), (10, 2, 3), (9, 2, 4), (8, 2, 5), (7, 2, 6), #route 2
(26, 3, 1), (24, 3, 2), (22, 3, 3), (20, 3, 4), (18, 3, 5),  #route 3
(17, 4, 1), (19, 4, 2), (21, 4, 3), (23, 4, 4), (25, 4, 5), #route 4
(27, 5, 1), #route 5
(28, 6, 1), #route 6
(22, 7, 1), (20, 7, 2), #route 7
(19, 8, 1), (21, 8, 2); #route 8

INSERT INTO Employees VALUES 
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
(12, 'Kellie Mattatall', 'Conductor', 17), 
(13, 'Angus Findlay', 'Conductor', 14);

INSERT INTO EmployeeEnginePair VALUES 
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
(11, 'Orange Mk. 5'),
(12, 'SuperEngine II'),
(12, 'Puller Express'),
(12, 'SuperEngine'),
(12, 'Speedy'),
(12, 'Orange Mk. 5');

INSERT INTO Passenger VALUES 
('8472-3542-0912', 1, 'Benjamin Weichman', 'USA', '34 Main St., Somecity, ME, USA', '555-536-1111', 'Visa'), 
(null, 2, 'Caroline Quinn', 'Canada', '23 Main St., Othercity, NB, Canada', '555-536-2222', 'Paypal'), 
(null, 3, 'Alexander Keeling', 'Canada', '65 Main St., Bagtown, NB, Canada', '555-536-3333', 'Cheque'),
('7322-4562-6532', 4, 'Albert Ross', 'USA', '108 Main St., Somecity, ME, USA', '555-536-4444', 'MasterCard'), 
(null, 5, 'Jonna Roberts', 'Canada', '563 Main St., Othercity, ON, Canada', '555-536-5555', 'Paypal'), 
(null, 6, 'Sam Reilly', 'Canada', '565 Main St., Moncton, NB, Canada', '555-536-6666', 'Cheque'),
('0147-6566-4322', 7, 'Tim Bray', 'Canada', '8665 Main St., Somecity, NS, Canada', '555-536-7777', 'Visa'), 
('3422-5542-2533', 8, 'Jimmie Peters', 'Canada', '2443 Main St., Othercity, QC, Canada', '555-536-8888', 'Paypal'), 
('8427-4561-1552', 9, 'Brian Bray', 'Canada', '6435 Main St., Kingston, ON, Canada', '555-536-9999', 'Cheque'),
('8427-4561-1465', 10, 'Bruce Bray', 'Canada', '6435 Main St., Kingston, ON, Canada', '555-536-1010', 'Cheque'),
('6372-2232-4632', 11, 'Ross Rider', 'USA', '54 Main St., Somecity, ME, USA', '555-536-0011', 'MasterCard'), 
(null, 12, 'Helen Roberts', 'Canada', '563 Main St., Othercity, ON, Canada', '555-536-1212', 'Paypal'), 
(null, 13, 'Sarah Rivers', 'Canada', '765 Main St., Moncton, NB, Canada', '555-536-1313', 'Cheque'),
('0147-6566-4322', 14, 'Tony McFarlane', 'Canada', '345 Main St., Somecity, NS, Canada', '555-536-1414', 'Visa'), 
(null, 15, 'John Whynot', 'Canada', '456 Main St., Othercity, QC, Canada', '555-536-1515', 'Paypal'), 
(null, 16, 'Frank Gates', 'Canada', '543 Main St., Kingston, ON, Canada', '555-536-1616', 'Cheque');

INSERT INTO EmployeeVoyagePair VALUES 
(1, 1), (1, 2), (1, 3), (1, 4),
(2, 1), (2, 2), (2, 3), (2, 4),
(3, 1), (3, 2), (3, 3), (3, 4),
(4, 1), (4, 2), (4, 3), (4, 4),
(5, 1), (5, 2), (5, 3), (5, 4),
(6, 1), (6, 2), (6, 3), (6, 4),
(7, 1), (7, 2), (7, 3), (7, 4),
(8, 1), (8, 2), (8, 3), (8, 4);

INSERT INTO EngineVoyagePair VALUES 
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1);

INSERT INTO CarVoyagePair VALUES 
(1, 1), (1, 2), (1, 4), (1, 5), (1, 6), 
(2, 1), (2, 4), (2, 5), (2, 6),
(3, 1), (3, 4), (3, 5), (3, 6),
(4, 1), (4, 2), (4, 4), (4, 5), (4, 6), 
(5, 1), (5, 2), (5, 4), (5, 5), (5, 6), 
(6, 1), (6, 2), (6, 4), (6, 5), (6, 6), 
(7, 1), (7, 2), (7, 4), (7, 5), (7, 6), 
(8, 1), (8, 2), (8, 4), (8, 5), (8, 6);

INSERT INTO PassengerTicket VALUES 
(1, 1, 1, 1, 0.0, 1), 
(2, 2, 1, 1, 0.0, 2),
(3, 3, 1, 1, 0.0, 3), 
(4, 4, 1, 2, 0.0, 1),
(5, 5, 1, 2, 0.5, 2), 
(6, 6, 1, 2, 0.0, 3), # voyage 1

(7, 1, 2, 1, 0.5, 1), 
(8, 2, 2, 1, 0.0, 2),
(9, 3, 2, 1, 0.0, 3), 
(10, 4, 2, 4, 0.0, 1),
(11, 5, 2, 4, 0.0, 2), 
(12, 6, 2, 4, 0.0, 3),
(13, 7, 2, 1, 0.0, 4),
(14, 8, 2, 4, 0.0, 4), # voyage 2

(15, 8, 3, 1, 0.5, 1), 
(16, 9, 3, 1, 0.0, 2),
(17, 10, 3, 1, 0.0, 3), 
(18, 11, 3, 2, 0.0, 1),
(19, 12, 3, 2, 0.5, 2), 
(20, 13, 3, 4, 0.5, 1),
(21, 14, 3, 1, 0.0, 4),
(22, 15, 3, 4, 0.0, 2), # voyage 3

(23, 9, 4, 1, 0.5, 1), 
(24, 10, 4, 1, 0.0, 2),
(25, 11, 4, 1, 0.0, 3), 
(26, 12, 4, 2, 0.0, 1),
(27, 13, 4, 2, 0.0, 2), 
(28, 14, 4, 4, 0.0, 1),
(29, 15, 4, 1, 0.0, 4),
(30, 16, 4, 4, 0.0, 2), # voyage 4

(31, 1, 5, 2, 0.0, 1), 
(32, 2, 5, 2, 0.0, 2),
(33, 3, 5, 2, 0.0, 3), 
(34, 4, 5, 1, 0.0, 1),
(35, 5, 5, 1, 0.5, 2), 
(36, 6, 5, 1, 0.0, 3), # voyage 5

(37, 1, 6, 4, 0.5, 1), 
(38, 2, 6, 4, 0.0, 2),
(39, 3, 6, 4, 0.0, 3), 
(40, 4, 6, 1, 0.0, 1),
(41, 5, 6, 1, 0.0, 2), 
(42, 6, 6, 1, 0.0, 3),
(43, 7, 6, 4, 0.0, 4),
(44, 8, 6, 1, 0.0, 4), # voyage 6

(45, 8, 7, 1, 0.5, 1), 
(46, 9, 7, 1, 0.0, 2),
(47, 10, 7, 1, 0.0, 3), 
(48, 11, 7, 2, 0.0, 1),
(49, 12, 7, 2, 0.5, 2), 
(50, 13, 7, 4, 0.5, 1),
(51, 14, 7, 1, 0.0, 4),
(52, 15, 7, 4, 0.0, 2), # voyage 7

(53, 9, 8, 1, 0.5, 1), 
(54, 10, 8, 1, 0.0, 2),
(55, 11, 8, 1, 0.0, 3), 
(56, 12, 8, 2, 0.0, 1),
(57, 13, 8, 2, 0.0, 2), 
(58, 14, 8, 4, 0.0, 1),
(59, 15, 8, 1, 0.0, 4),
(60, 16, 8, 4, 0.0, 2); # voyage 8

INSERT INTO TicketPassengerPair VALUES 
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6),
(7, 1), (8, 2), (9, 3), (10, 4), (11, 5), (12, 6), (13, 7), (14, 8), 
(15, 8), (16, 9), (17, 10), (18, 11), (19, 12), (20, 13), (21, 14), (22, 15),
(23, 9), (24, 10), (25, 11), (26, 12), (27, 13), (28, 14), (29, 15), (30, 16), 
(31, 1), (32, 2), (33, 3), (34, 4), (35, 5), (36, 6), 
(37, 1), (38, 2), (39, 3), (40, 4), (41, 5), (42, 6), (43, 7), (44, 8), 
(45, 8), (46, 9), (47, 10), (48, 11), (49, 12), (50, 13), (51, 14), (52, 15), 
(53, 9), (54, 10), (55, 11), (56, 12), (57, 13), (58, 14), (59, 15), (60, 16);

INSERT INTO TicketPrice VALUES 
(1, 1, 0.0, 300), (1, 2, 0.0, 300), (1, 4, 0.0, 450), 
(2, 1, 0.0, 300), (2, 4, 0.0, 450),
(3, 1, 0.0, 300), (3, 4, 0.0, 450), 
(4, 1, 0.0, 300), (4, 2, 0.0, 300), (4, 4, 0.0, 450), 
(5, 1, 0.5, 300), (5, 2, 0.0, 300), (5, 4, 0.0, 450), 
(6, 1, 0.0, 300), (6, 2, 0.0, 300), (6, 4, 0.0, 450), 
(7, 1, 0.0, 400), (7, 2, 0.0, 400), (7, 4, 0.0, 550), 
(8, 1, 0.0, 400), (8, 2, 0.0, 400), (8, 4, 0.0, 550);


COMMIT;
