<?php
include '../DatabaseConnection.php';
$query =
"SELECT stationOfOrigin, terminalStation, departureDate, departureTime, arrivalDate, arrivalTime, class, numberofseats FROM voyage
INNER JOIN CarVoyagePain
ON voyage.id = carVoyagePair.carID
INNER JOIN passengerCar
ON carVoyagePair.carID=passengerCarID
$result = mysql_query($query);
if (!$result) {
die('Invalid query: ' . mysql_error());
}
$rows = array();
while($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
$rows[] = $row;
}

$sql = "INSERT INTO Passenger (passport number,name,nationality, address, phone, payment type,)
VALUES ('John', 'Doe', 'john@example.com')";

$sql = "INSERT INTO Ticket (firstname, lastname, email)
VALUES ('John', 'Doe', 'john@example.com')";

echo json_encode($rows);
?>
