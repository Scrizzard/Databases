CREATE DATABASE IF NOT EXISTS TMS;
USE TMS;
SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE IF NOT EXISTS TicketPrice (
	voyageID int NOT NULL,
	carID int NOT NULL,
	discount float(9,2) DEFAULT 0.00,
	price float(9,2),
	FOREIGN KEY (voyageID) REFERENCES Voyage(id),
	FOREIGN KEY (carID) REFERENCES Car(id)
);

CREATE TABLE IF NOT EXISTS PassengerTicket (
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

CREATE TABLE IF NOT EXISTS TicketPassengerPair (
	ticketID int NOT NULL,
	passengerID int NOT NULL,
	FOREIGN KEY (passengerID) REFERENCES Passenger(id),
	FOREIGN KEY (ticketID) REFERENCES PassengerTicket(id)
);

CREATE TABLE IF NOT EXISTS CarVoyagePair (
	voyageID int NOT NULL,
	carID int NOT NULL,
	FOREIGN KEY (voyageID) REFERENCES Voyage(id),
	FOREIGN KEY (carID) REFERENCES Car(id)
);

CREATE TABLE IF NOT EXISTS EngineVoyagePair (
	voyageID int NOT NULL,
	engineID int NOT NULL,
	FOREIGN KEY (voyageID) REFERENCES Voyage(id),
	FOREIGN KEY (engineID) REFERENCES Engine(id)
);

CREATE TABLE IF NOT EXISTS EmployeeVoyagePair (
	voyageID int NOT NULL,
	employeeID int NOT NULL,
	FOREIGN KEY (voyageID) REFERENCES Voyage(id),
	FOREIGN KEY (employeeID) REFERENCES Employees(id)
);

CREATE TABLE IF NOT EXISTS Car (
	id int NOT NULL AUTO_INCREMENT,
	inService boolean,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS PassengerCar (
	carID int NOT NULL,
	numberofSeats int, 
	class float NOT NULL,
	FOREIGN KEY (carID) REFERENCES Car(id)
);

CREATE TABLE IF NOT EXISTS BaggageCar (
	carID int NOT NULL,
	baggageCapacity int,
	FOREIGN KEY (carID) REFERENCES Car(id)
);

CREATE TABLE IF NOT EXISTS DiningCar (
	carID int NOT NULL,
	passengerLimit int, 
	FOREIGN KEY (carID) REFERENCES Car(id)
);

CREATE TABLE IF NOT EXISTS EngineType (
	fuelType varchar(255),
	yearOfInvention int,
	inventor varchar(255),
	countryOfOrigin varchar(255),
	maxCarPull int,
    name varchar(255),
	PRIMARY KEY (name)
);

CREATE TABLE IF NOT EXISTS Engine (
	id int NOT NULL AUTO_INCREMENT,
	yearOfConstruction int,
	inServiceState boolean,
    name varchar(255),
    PRIMARY KEY (id),
    FOREIGN KEY (name)
    REFERENCES EngineType(name)
);

CREATE TABLE IF NOT EXISTS Voyage (
	id int NOT NULL,
	routeID int,
	departureDate date,
	departureTime time,
	arrivalDate date,
	arrivalTime time,
	PRIMARY KEY (id),
	FOREIGN KEY (routeID)
	REFERENCES TrainRoute(routeID)
);

CREATE TABLE IF NOT EXISTS TrainStation (
	name varchar(255),
	latitude varchar(255),
	longitude varchar(255),
	address varchar(255),
	PRIMARY KEY (name)
);

CREATE TABLE IF NOT EXISTS TrackSection (
	sectionID int NOT NULL,
	stationOfOrigin varchar(255),
	terminalStation varchar(255),
	inServiceState boolean,
	PRIMARY KEY (sectionID),
	FOREIGN KEY (stationOfOrigin)
    REFERENCES TrainStation(name),
	FOREIGN KEY (terminalStation)
    REFERENCES TrainStation(name)
);

CREATE TABLE IF NOT EXISTS TrainRoute (
	routeID int NOT NULL,
	stationOfOrigin varchar(255),
	terminalStation varchar(255),
	distance float,
	cost float,
	travelTime int,
	PRIMARY KEY (routeID)
);

CREATE TABLE IF NOT EXISTS SectionRoute ( 
	trackSectionID int,
	routeID int,
	orderOfVisitation int,
	FOREIGN KEY (trackSectionID) REFERENCES TrackSection(SectionID),
	FOREIGN KEY (routeID) REFERENCES TrainRoute(routeID)
);

CREATE TABLE IF NOT EXISTS Passenger (
	passportNumber varchar(255),
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255),
	nationality varchar(255),
	address varchar(255),
	phoneNumber varchar(255),
	paymentType varchar(255),	
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Employees (
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255),
	title varchar(255),
	yearsOfEmployment int,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS EmployeeEnginePair (
	employeeID int,
	name varchar(255),
	FOREIGN KEY (name) REFERENCES EngineType(name),
	FOREIGN KEY (employeeID) REFERENCES Employees(id)
);

SET FOREIGN_KEY_CHECKS=1;

/* this should be moved elsewhere or removed

CREATE TABLE IF NOT EXISTS states (
  id int(11) NOT NULL AUTO_INCREMENT,
  state char(25) DEFAULT NULL,
  population int(9) DEFAULT NULL,
  PRIMARY KEY (id)
);

INSERT INTO states VALUES (1,'Alabama',4822023),(2,'Alaska',731449),(3,'Arizona',6553255),(4,'Arkansas',2949131);

*/
