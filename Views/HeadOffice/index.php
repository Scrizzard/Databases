<!-- 
add, update, or delete:
Train Routes
Track Sections
Train Stations
Engines
Engine Type
Cars (Passenger, Dining, and Baggage)
-->

<?php
	include '../DatabaseConnection.php';
	// If there's a post request, process that before loading the rest of the page...
	include 'handlePostRequests.php';		
?>

<html>
	<head>
		<link rel="stylesheet" type="text/css" href="../mainStyle.css">
 		<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
		<title>Head Office</title>
	</head>
	<body>

		<h1 id="pageTitle">Train Management System: Head Office View</h1>
		<p id="description">This view allows a member of the Head Office team to manage things that rarely change.</p>

		<div id="pageCenter">

			<h2>Train Routes</h2>
			<?php 
				include 'printRoutes.php';
			?>


			<h2>Track Sections</h2>
			<?php
			// query and print out current Track Sections, each with a link to delete them, or change their inService status
				include 'printTracks.php';
			?>

			<h2>Add Track Section</h2>
			<?php
				include 'addTracks.php';
			?>

			
			<h2>Train Stations</h2>
			<?php
			// query and print out current Train Stations, each with a link to delete them, or change their inService status
				include 'printStations.php';
			?>

			<h2>Add Train Stations</h2>
			<?php
				include 'addStations.php';
			?>

			
			<h2>Engines</h2>
			<?php
			// query and print out current Engines, each with a link to delete them, or change their inService status
				include 'printEngines.php';
			?>

			<h2>Add Engines</h2>
			<?php
				include 'addEngines.php';
			?>


			<h2>Engine Types</h2>
			<?php
			// query and print out current Engine Types, each with a link to delete them
				include 'printEngineTypes.php';
			?>

			<h2>Add Engine Types</h2>
			<?php
				include 'addEngineTypes.php';
			?>

			
			<h2>Cars</h2>
			<?php
			// query and print out current Cars, each with a link to delete them
				include 'printCars.php';
			?>

			<h2>Add Cars</h2>
			<?php
				include 'addCars.php';
			?>

		</div>

	</body>
</html>