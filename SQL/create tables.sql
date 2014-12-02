CREATE DATABASE IF NOT EXISTS TMS;
USE TMS;
SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE IF NOT EXISTS TicketPrice (
	voyageID int NOT NULL,
	carID int NOT NULL,
	discount float(9,2) DEFAULT 0.00,
	price float(9,2),
	FOREIGN KEY (voyageID) REFERENCES Voyage(id) ON DELETE CASCADE,
	FOREIGN KEY (carID) REFERENCES Car(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS PassengerTicket (
	id int NOT NULL AUTO_INCREMENT,
	passengerID int NOT NULL,
	voyageID int NOT NULL,
	carID int NOT NULL,
	discount float(9,2),
	seatNumber int,
	PRIMARY KEY (id),
	FOREIGN KEY (passengerID) REFERENCES Passenger(id) ON DELETE CASCADE,
	FOREIGN KEY (voyageID) REFERENCES Voyage(id) ON DELETE CASCADE,
	FOREIGN KEY (carID) REFERENCES Car(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS TicketPassengerPair (
	ticketID int NOT NULL,
	passengerID int NOT NULL,
	FOREIGN KEY (passengerID) REFERENCES Passenger(id) ON DELETE CASCADE,
	FOREIGN KEY (ticketID) REFERENCES PassengerTicket(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS CarVoyagePair (
	voyageID int NOT NULL,
	carID int NOT NULL,
	FOREIGN KEY (voyageID) REFERENCES Voyage(id) ON DELETE CASCADE,
	FOREIGN KEY (carID) REFERENCES Car(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS EngineVoyagePair (
	voyageID int NOT NULL,
	engineID int NOT NULL,
	FOREIGN KEY (voyageID) REFERENCES Voyage(id) ON DELETE CASCADE,
	FOREIGN KEY (engineID) REFERENCES Engine(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS EmployeeVoyagePair (
	voyageID int NOT NULL,
	employeeID int NOT NULL,
	FOREIGN KEY (voyageID) REFERENCES Voyage(id) ON DELETE CASCADE,
	FOREIGN KEY (employeeID) REFERENCES Employees(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Car (
	id int NOT NULL AUTO_INCREMENT,
	inService boolean,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS PassengerCar (
	carID int NOT NULL,
	numberofSeats int CHECK (numberofSeats >=0) , 
	class float NOT NULL,
	FOREIGN KEY (carID) REFERENCES Car(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS BaggageCar (
	carID int NOT NULL,
	baggageCapacity int,
	FOREIGN KEY (carID) REFERENCES Car(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS DiningCar (
	carID int NOT NULL,
	passengerLimit int, 
	FOREIGN KEY (carID) REFERENCES Car(id) ON DELETE CASCADE
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
	yearOfConstruction int CHECK (yearOfConstruction > date),
	inServiceState boolean,
    name varchar(255),
    PRIMARY KEY (id),
    FOREIGN KEY (name)
    REFERENCES EngineType(name) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Voyage (
	id int NOT NULL,
	routeID int,
	departureDate date,
	departureTime time,
	arrivalDate date CHECK (arrivalDate >= departureDate),
	arrivalTime time,
	PRIMARY KEY (id),
	FOREIGN KEY (routeID)
	REFERENCES TrainRoute(routeID) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS TrainStation (
	name varchar(255),
	latitude varchar(255),
	longitude varchar(255),
	address varchar(255),
	PRIMARY KEY (name)
);

CREATE TABLE IF NOT EXISTS TrackSection (
	sectionID int NOT NULL AUTO_INCREMENT,
	stationOfOrigin varchar(255),
	terminalStation varchar(255),
	inServiceState boolean,
	PRIMARY KEY (sectionID),
	FOREIGN KEY (stationOfOrigin)
    REFERENCES TrainStation(name) ON DELETE CASCADE,
	FOREIGN KEY (terminalStation)
    REFERENCES TrainStation(name) ON DELETE CASCADE
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
	FOREIGN KEY (trackSectionID) REFERENCES TrackSection(SectionID) ON DELETE CASCADE,
	FOREIGN KEY (routeID) REFERENCES TrainRoute(routeID) ON DELETE CASCADE
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
	FOREIGN KEY (name) REFERENCES EngineType(name) ON DELETE CASCADE,
	FOREIGN KEY (employeeID) REFERENCES Employees(id) ON DELETE CASCADE
);

SET FOREIGN_KEY_CHECKS=1;
