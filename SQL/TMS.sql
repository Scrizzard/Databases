CREATE DATABASE TMS;

USE TMS;


DROP TABLE IF EXISTS TicketPrice;

CREATE TABLE TicketPrice (
	voyageID int NOT NULL,
	carID int NOT NULL,
	discount float(9,2) DEFAULT 0.00,
	price float(9,2),
	FOREIGN KEY (voyageID) REFERENCES Voyage(id),
	FOREIGN KEY (carID) REFERENCES Car(id)
);


DROP TABLE IF EXISTS PassengerTicket;

CREATE TABLE PassengerTicket (
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


DROP TABLE IF EXISTS TicketPassengerPair;

CREATE TABLE TicketPassengerPair (
	ticketID int NOT NULL,
	passengerID int NOT NULL,
	FOREIGN KEY (passengerID) REFERENCES Passenger(id),
	FOREIGN KEY (ticketID) REFERENCES PassengerTicket(id)
);


DROP TABLE IF EXISTS CarVoyagePair;

CREATE TABLE CarVoyagePair (
	voyageID int NOT NULL,
	carID int NOT NULL,
	FOREIGN KEY (voyageID) REFERENCES Voyage(id),
	FOREIGN KEY (carID) REFERENCES Car(id)
);


DROP TABLE IF EXISTS EngineVoyagePair;

CREATE TABLE EngineVoyagePair (
	voyageID int NOT NULL,
	engineID int NOT NULL,
	FOREIGN KEY (voyageID) REFERENCES Voyage(id),
	FOREIGN KEY (engineID) REFERENCES Engine(id)
);


DROP TABLE IF EXISTS EmployeeVoyagePair;

CREATE TABLE EmployeeVoyagePair (
	voyageID int NOT NULL,
	employeeID int NOT NULL,
	FOREIGN KEY (voyageID) REFERENCES Voyage(id),
	FOREIGN KEY (employeeID) REFERENCES Employee(id)
);


DROP TABLE IF EXISTS Car;

CREATE TABLE Car (
	id int NOT NULL AUTO_INCREMENT,
	inService boolean,
	PRIMARY KEY id
);

DROP TABLE IF EXISTS PassengerCar;

CREATE TABLE PassengerCar (
	carID int NOT NULL,
	inServiceState boolean,
	numberofSeats int, 
	class float NOT NULL,
	FOREIGN KEY (carID) REFERENCES Car(id)
);

DROP TABLE IF EXISTS BaggageCar;

CREATE TABLE BaggageCar (
	carID int NOT NULL,
	inServiceState boolean,
	baggageCapacity int,
	FOREIGN KEY (carID) REFERENCES Car(id)
);

DROP TABLE IF EXISTS DinningCar;

CREATE TABLE DinningCar (
	carID int NOT NULL,
	inServiceState boolean,
	passengerLimit int, 
	FOREIGN KEY (carID) REFERENCES Car(id)
);

DROP TABLE IF EXISTS Engine;

CREATE TABLE Engine (
	engineID int NOT NULL AUTO_INCREMENT,
	name varchar(255),
	yearOfConstruction int,
	inServiceState boolean,
	FOREIGN KEY (name) REFERENCES EngineType(name),
	PRIMARY KEY engineID
);

DROP TABLE IF EXISTS EngineType;

CREATE TABLE EngineType (
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255),
	fuelType varchar(255),
	yearOfInvention int,
	inventor varchar(255),
	countryOfOrigin varchar(255),
	maxCarPull int,
	PRIMARY KEY id
);

DROP TABLE IF EXISTS Voyage;

CREATE TABLE Voyage (
	voyageID int NOT NULL,
	departureDate date,
	departueTime time,
	arrivalDate date,
	arrivalTime time,
	PRIMARY KEY voyageID
);

DROP TABLE IF EXISTS TrainStation;

CREATE TABLE TrainStation (
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255),
	latitude varchar(255),
	longitude varchar(255),
	address varchar(255),
	PRIMARY KEY name
);

DROP TABLE IF EXISTS TrackSection;

CREATE TABLE TrackSection (
	sectionID int NOT NULL,
	stationOfOrigin varchar(255),
	terminalStation varchar(255),
	inServiceState boolean,
	PRIMARY KEY sectionID
);

DROP TABLE IF EXISTS TrainRoute;

CREATE TABLE TrainRoute (
	routeID int NOT NULL,
	stationOfOrigin varchar(255),
	terminalStation varchar(255),
	distance float,
	cost float,
	travelTime int,
	PRIMARY KEY routeID
);

DROP TABLE IF EXISTS SectionRoute;

CREATE TABLE SectionRoute (
	trackSectionID int,
	routeID int,
	orderOfVisitation int,
	FOREIGN KEY (trackSectionID) REFERENCES TrackSection(trackSectionID),
	FOREIGN KEY (routeID) REFERENCES TrainRoute(routeID)
);

DROP TABLE IF EXISTS Passenger;

CREATE TABLE Passenger (
	passportNumber varchar(255),
	passengerID int NOT NULL AUTO_INCREMENT,
	name varchar(255),
	nationality varchar(255),
	address varchar(255),
	phoneNumber varchar(255),
	paymentType varchar(255),	
	PRIMARY KEY passengerID
);

DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee (
	employeeID int NOT NULL AUTO_INCREMENT,
	name varchar(255),
	title varchar(255),
	yearsOfEmployment int,
	PRIMARY KEY employeeID
);

DROP TABLE IF EXISTS EmployeeEnginePair;

CREATE TABLE EmployeeEnginePair (
	employeeID int,
	name varchar(255),
	FOREIGN KEY (name) REFERENCES EngineType(name),
	FOREIGN KEY (employeeID) REFERENCES Employee(employeeID)
);
################################################################
DROP TABLE IF EXISTS states;

CREATE TABLE states (
  id int(11) NOT NULL AUTO_INCREMENT,
  state char(25) DEFAULT NULL,
  population int(9) DEFAULT NULL,
  PRIMARY KEY (id)
);

INSERT INTO states VALUES (1,'Alabama',4822023),(2,'Alaska',731449),(3,'Arizona',6553255),(4,'Arkansas',2949131);
