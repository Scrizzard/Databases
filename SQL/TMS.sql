CREATE DATABASE 'TMS';

USE 'TMS';


DROP TABLE IF EXISTS 'TicketPrice';

CREATE TABLE 'TicketPrice' (
	voyageID int NOT NULL,
	carID int NOT NULL,
	discount float(9,2) DEFAULT 0.00,
	price float(9,2),
	PRIMARY KEY (id),
	FOREIGN KEY (voyageID) REFERENCES Voyage(id),
	FOREIGN KEY (carID) REFERENCES Car(id)
);


DROP TABLE IF EXISTS 'PassengerTicket';

CREATE TABLE 'PassengerTicket' (
	id int NOT NULL AUTO_INCREMENT,
	passengerID int NOT NULL,
	voyageID int NOT NULL,
	carID int NOT NULL,
	discount float(9,2),
	seatNumber int,
	PRIMARY KEY (id),
	FOREIGN KEY (passengerID) REFERENCES Passenger(id),
	FOREIGN KEY (voyageID) REFERENCES Voyage(id),
	FOREIGN KEY (carID) REFERENCES Car(id)
);


DROP TABLE IF EXISTS 'TicketPassengerPair';

CREATE TABLE 'TicketPassengerPair' (
	ticketID int NOT NULL,
	passengerID int NOT NULL,
	FOREIGN KEY (passengerID) REFERENCES Passenger(id),
	FOREIGN KEY (ticketID) REFERENCES PassengerTicket(id)
);


DROP TABLE IF EXISTS 'CarVoyagePair';

CREATE TABLE 'CarVoyagePair' (
	voyageID int NOT NULL,
	carID int NOT NULL,
	FOREIGN KEY (voyageID) REFERENCES Voyage(id),
	FOREIGN KEY (carID) REFERENCES Car(id)
);


DROP TABLE IF EXISTS 'EngineVoyagePair';

CREATE TABLE 'EngineVoyagePair' (
	voyageID int NOT NULL,
	engineID int NOT NULL,
	FOREIGN KEY (voyageID) REFERENCES Voyage(id),
	FOREIGN KEY (engineID) REFERENCES Engine(id)
);


DROP TABLE IF EXISTS 'EmployeeVoyagePair';

CREATE TABLE 'EmployeeVoyagePair' (
	voyageID int NOT NULL,
	employeeID int NOT NULL,
	FOREIGN KEY (voyageID) REFERENCES Voyage(id),
	FOREIGN KEY (employeeID) REFERENCES Employee(id)
);


DROP TABLE IF EXISTS 'Car';

CREATE TABLE 'Car' (
	id int NOT NULL AUTO_INCREMENT,
	inService boolean,
	PRIMARY KEY id
);

DROP TABLE IF EXISTS 'PassengerCar';

CREATE TABLE 'PassengerCar'(
	carID int NOT NULL,
	inServiceState boolean,
	numberofSeats int, 
	class float NOT NULL,
	FOREIGN KEY (carID) REFRENCES Car(id)
);

DROP TABLE IF EXISTS 'BaggageCar';

CREATE TABLE 'BaggageCar'(
	carID int NOT NULL,
	inServiceState boolean,
	baggageCapacity int,
	FOREIGN KEY (carID) REFRENCES Car(id)
);

DROP TABLE IF EXISTS 'DinningCar';

CREATE TABLE 'DinningCar'(
	carID int NOT NULL,
	inServiceState boolean,
	passengerLimit int, 
	FOREIGN KEY (carID) REFRENCES Car(id)
);

DROP TABLE IF EXISTS 'Engine';

CREATE TABLE 'Engine'(
	engineID String NOT NULL,
	name String NOT NULL,
	yearOfConstruction int,
	inServiceState boolean,
	FOREIGN KEY (name) REFRENCES EngineType(name),
	PRIMARY KEY engineID
);

DROP TABLE IF EXISTS 'EngineType';

CREATE TABLE 'EngineType'(
	name String NOT NULL,
	fuelType String,
	yearOfInvention int,
	inventor String,
	countryOfOrigin String,
	maxCarPull int,
	PRIMARY KEY name
);

DROP TABLE IF EXISTS 'Voyage';

CREATE TABLE 'Voyage'(
	voyageID int NOT NULL,
	departureDate date,
	departueTime time,
	arrivalDate date,
	arrivalTime time,
	PRIMARY KEY voyageID
);

DROP TABLE IF EXISTS 'TrainStation';

CREATE TABLE 'TrainStation'(
	name String NOT NULL,
	latitude String,
	longitude String,
	address String,
	PRIMARY KEY name
);

DROP TABLE IF EXISTS 'TrackSection';

CREATE TABLE 'TrackSection'(
	sectionID int NOT NULL,
	stationOfOrigin String,
	terminalStation String,
	inServiceState boolean,
	PRIMARY KEY sectionID
);

DROP TABLE IF EXISTS 'TrainRoute';

CREATE TABLE 'TrainRoute'(
	routeID int NOT NULL,
	stationOfOrigin String,
	terminalStation String,
	distance float,
	cost float,
	travelTime int,
	PRIMARY KEY routeID
);

DROP TABLE IF EXISTS 'Section/Route';

CREATE TABLE 'Section/Route'(
	trackSectionID int,
	routeID int,
	orderOfVisitation int,
	FOREIGN KEY (trackSectionID) REFRENCES TrackSection(trackSectionID),
	FOREIGN KEY (routeID) REFRENCES TrainRoute(routeID)
);

DROP TABLE IF EXISTS 'Passenger';

CREATE TABLE 'Passenger'(
	passportNumber String,
	passengerID int,
	name String,
	nationality String,
	address String,
	phoneNumber String,
	paymentType String,
	PRIMARY KEY passportNumber,
	PRIMARY KEY passengerID
);

DROP TABLE IF EXISTS 'Employee';

CREATE TABLE 'Employee'(
	employeeID int,
	name String,
	title String,
	yearsOfEmployment int,
	PRIMARY KEY employeeID
);
################################################################
DROP TABLE IF EXISTS 'states';

CREATE TABLE 'states' (
  'id' int(11) NOT NULL AUTO_INCREMENT,
  'state' char(25) DEFAULT NULL,
  'population' int(9) DEFAULT NULL,
  PRIMARY KEY ('id')
);

INSERT INTO 'states' VALUES (1,'Alabama',4822023),(2,'Alaska',731449),(3,'Arizona',6553255),(4,'Arkansas',2949131);
