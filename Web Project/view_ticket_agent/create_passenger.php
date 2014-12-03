<?php

include '../shared/db_connection.php';

$insertQuery = "INSERT INTO Passenger (id, name, nationality, address, phoneNumber, paymentType, passportNumber)
		  VALUES (" 
		  . $_GET["id"] . ',"' 
		  . $_GET["name"] . '","' 
		  . $_GET["nationality"] . '","' 
		  . $_GET["address"] . '","' 
		  . $_GET["phone"] . '","'
		  . $_GET["payment"] . '","'		   
		  . $_GET["passport"] . '")';

echo $insertQuery;

$insertResult = mysql_query($insertQuery);

if (!$insertResult) {
	die('Invalid query: ' . mysql_error());
}

?>	