<html>
  <head>
        <title>Future Trains</title>
    </head>
    <body>
        <table>
        <thead>
           <caption>Future Trains</caption>
		   <tr>
			   <td>Voyage ID </td>               
			   <td>Station of Origin</td>
                <td>Terminal Station</td>
				<td>Departure Date</td>
				<td>Departure Time</td>
				<td>Arrival Date</td>
				<td>Arrival Time </td>
				<td>Cost  </td>
				<td>Class </td>
				<td>Number Of Seats Available </td>
            </tr>
        </thead>
	<tbody>
<?php
$SERVER = 'localhost';
	$USER = 'root';
	$PASSWORD = 'openSesame';
	$DATABASENAME = 'TMS';

	$DBC = mysql_connect($SERVER, $USER, $PASSWORD);
	mysql_select_db($DATABASENAME);


if(isset($_POST['if'])){
	$query =
	"SELECT id, stationOfOrigin, terminalStation, departureDate, departureTime, arrivalDate, arrivalTime, cost, class, numberOfSeats FROM Voyage
	INNER JOIN TrainRoute
	ON TrainRoute.routeID = Voyage.routeID
	INNER JOIN CarVoyagePair
	ON CarVoyagePair.voyageID=Voyage.id
	INNER JOIN PassengerCar
	ON PassengerCar.carID=carVoyagePair.carID
	WHERE departureDate > date("Y-m-d") AND departureTime > date("h:i:sa");

	$result = mysql_query($query);
	if (!$result) 
	{
		die('Invalid query: ' . mysql_error());
	}

	else
	{
		$rows = array();
		while($row = mysql_fetch_array($result)){
		?>
                <tr>
                    td><?php echo $row['id']?></td>
					<td><?php echo $row['stationOfOrigin']?></td>
                    <td><?php echo $row['terminalStation']?></td>
					<td><?php echo $row['departureDate']?></td>
					<td><?php echo $row['departureTime']?></td>
					<td><?php echo $row['arrivalDate']?></td>
					<td><?php echo $row['arrivalTime']?></td>
					<td><?php echo $row['cost']?></td>
					<td><?php echo $row['class']?></td>
					<td><?php echo $row['numberOfSeats']?></td>
                </tr>
}
            <?php
			}
	}
?>
	 </tbody>
            </table>
    </body>
</html> 
