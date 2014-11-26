<?php
mysql_connect("localhost", "root", "");
mysql_select_db("tms");
$query =
"SELECT stationOfOrigin, terminalStation, departureDate, departureTime, arrivalDate, arrivalTime FROM EmployeeVoyagePair
INNER JOIN Voyage
ON employeeVoyagePair.voyageID = Voyage.id
INNER JOIN TrainRoute
ON Voyage.routeID = TrainRoute.routeID
WHERE employeeID = \"" . $_GET["employeeID"] . "\"";
$result = mysql_query($query);
if (!$result) {
die('Invalid query: ' . mysql_error());
}
$rows = array();
while($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
$rows[] = $row;
}
echo json_encode($rows);
?>
