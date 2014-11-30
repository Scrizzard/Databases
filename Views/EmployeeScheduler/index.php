<!-- 
view voyages, the Cars and Engine (and Engine Type) assigned to a voyage
create, update and delete Employees 
create, update and delete Employee/Voyage schedule information. 
-->

<?php
	include '../DatabaseConnection.php';

	// If there's a post request, process that before loading the rest of the page...

	if (isset($_POST["newEmployee"])) {
		// we're adding a new employee!
		$query = "INSERT INTO Employees VALUES (NULL, '" . $_POST['name'] . "', '" . $_POST['title'] . "', " . $_POST['yearsOfEmployment'] . ")";
		$result = mysql_query($query) or die(mysql_error());
		
	} elseif (isset($_POST["deleteEmployee"])) {
		# we're removing an employee...
		$query = 'DELETE FROM Employees WHERE id = ' . $_POST["deleteEmployee"];
		$results = mysql_query($query) or die(mysql_error());

	} elseif (isset($_POST["addEmployeeToVoyage"])) {
		# we're adding an employee to a voyage!
		$query = "INSERT INTO EmployeeVoyagePair VALUES (" . $_POST['voyageID'] . ", " . $_POST['employeeID'] . ")";
		$result = mysql_query($query) or die(mysql_error());

	} elseif (isset($_POST["removeEmployeeFromVoyage"])) {
		# we're removing an employee from a voyage!
		$query = "DELETE FROM EmployeeVoyagePair WHERE voyageID = " . $_POST['voyageID'] . " AND employeeID = " . $_POST['employeeID'];
		$result = mysql_query($query) or die(mysql_error());
		
	}
	
?>

<html>
	<head>
		<link rel="stylesheet" type="text/css" href="../mainStyle.css">
 		<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
		<title>Employee Scheduler</title>
	</head>
	<body>

		<h1 id="pageTitle">Train Management System: Employee Scheduler View</h1>
		<p id="description">This view allows a manager to schedule employees for upcoming voyages, as well as manage the current list of employees.</p>

		<div id="pageCenter">

			<h2>Upcoming Voyages</h2>
			<?php 
			// query and print out voyages coming up in the next 30 days
			// also display engine & cars assigned to the voyage
			// also display staff assigned to each voyage
			// also include drop-down to add staff to the voyage
			include 'printVoyages.php';
			?>


			<h2>Current Employees</h2>
			<?php
			// query and print out current employees, each with a link to delete them
			include 'printEmployees.php';
			?>


			<h2>Add Employee</h2>
			<form action="index.php" method="post">
				<input type="hidden" name="newEmployee" value="newEmployee">
				<table>
					<tr>
						<td>Name:</td>
						<td><input type="text" limit="255" name="name"></td>
					</tr>
					<tr>
						<td>Title:</td>
						<td><input type="text" limit="255" name="title"></td>
					</tr>
					<tr>
						<td>Years of Employment:</td>
						<td><input type="Number" min="0" step="1" value="0" name="yearsOfEmployment"></td>
					</tr>
				</table>
				<input type="submit" value="Add Employee">
			</form>

		</div>

	</body>
</html>