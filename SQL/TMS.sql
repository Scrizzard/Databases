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
	inService boolean
	PRIMARY KEY id
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
