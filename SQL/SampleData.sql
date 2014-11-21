USE TMS;

START TRANSACTION;

INSERT INTO Car VALUES (1,true), (2,true), (3,false), (4,true), (5,true), (6,true);

INSERT INTO PassengerCar VALUES (1,60,1.0), (2,60,1.0), (3,60,1.0), (4,50,1.5);

INSERT INTO BaggageCar VALUES (5,60);

INSERT INTO DiningCar VALUES (6,60);

INSERT INTO EngineType VALUES ('Diesel', 2000, NULL, 'Canada', 30, 'SuperEngine'), ('Coal', 1876, NULL, 'Canada', 15, 'Smokey');

INSERT INTO Engine VALUES (1, 2002, true, 'SuperEngine'), (2, 2002, true, 'SuperEngine'), (3, 1880, false, 'Smokey');

INSERT INTO TrainStation VALUES ('Sackville', null, null, '45 Lorne St., Sackville, NB'), ('Moncton', null, null, '1001 Main St., Moncton NB'), ('Fredericton', null, null, null), ('Saint John', null, null, null), ('Amherst', null, null, null), ('Halifax', null, null, null), ('Montreal', null, null, null);

INSERT INTO TrackSection VALUES (1, 'Montreal', 'Fredericton', true), (2, 'Fredericton', 'Saint John', true), (3, 'Saint John', 'Moncton', true), (4, 'Moncton', 'Sackville', true), (5, 'Sackville', 'Amherst', true), (6, 'Amherst', 'Halifax', true), (7, 'Fredericton', 'Montreal', true), (8, 'Saint John', 'Fredericton', true), (9, 'Moncton', 'Saint John', true), (10, 'Sackville', 'Moncton', true), (11, 'Amherst', 'Sackville', true), (12, 'Halifax', 'Amherst', true);

INSERT INTO TrainRoute VALUES (1, 'Montreal', 'Halifax', 1020, 300, 22), (2, 'Halifax', 'Montreal', 1020, 300, 22);

INSERT INTO Voyage VALUES (1, 1, '2014-12-10', '18:30:00', '2014-12-11', '17:30:00'), (2, 2, '2014-12-12', '11:30:00', '2014-12-13', '8:30:00');

INSERT INTO SectionRoute VALUES (1, 1, 1), (2, 1, 2), (3, 1, 3), (4, 1, 4), (5, 1, 5), (6, 1, 6); #route 1
INSERT INTO SectionRoute VALUES (12, 2, 1), (11, 2, 2), (10, 2, 3), (9, 2, 4), (8, 2, 5), (7, 2, 6); #route 2

INSERT INTO Employees VALUES (1, 'Andrew Irwin', 'Engineer', 15), (2, 'Laurie Ricker', 'Conductor', 12), (3, 'Robert Rosebrugh', 'Chief Cook', 16);

INSERT INTO EmployeeEnginePair VALUES (1, 'SuperEngine'), (1, 'Smokey'), (2, 'SuperEngine'), (3, 'Smokey');

INSERT INTO Passenger VALUES ('8472-3542-0912', 1, 'Benjamin Weichman', 'USA', '34 Main St., Somecity, ME, USA', '555-536-1111', 'Visa'), (null, 2, 'Caroline Quinn', 'Canada', '23 Main St., Othercity, NB, Canada', '555-536-2222', 'Paypal'), (null, 3, 'Alexander Keeling', 'Canada', '65 Main St., Bagtown, NB, Canada', '555-536-3333', 'Cheque');

INSERT INTO EmployeeVoyagePair VALUES (1, 1), (1, 2), (1, 3), (2, 2), (2, 3);

INSERT INTO EngineVoyagePair VALUES (1, 1), (2, 1);

INSERT INTO CarVoyagePair VALUES (1, 1), (1, 2), (1, 4), (1, 5), (1, 6), (2, 1), (2, 4), (2, 5), (2, 6);

INSERT INTO PassengerTicket VALUES (1, 1, 1, 1, 0.0, 1), (2, 2, 1, 1, 0.0, 2), (3, 1, 2, 1, 0.5, 1), (4, 3, 2, 1, 0.0, 2);

INSERT INTO TicketPassengerPair VALUES (1, 1), (2, 2), (3, 1), (4, 3);

INSERT INTO TicketPrice VALUES (1, 1, 0.0, 300), (1, 2, 0.0, 300), (1, 4, 0.0, 450), (2, 1, 0.0, 300), (2, 4, 0.0, 450);


COMMIT;