//this function is called when the "View Your Tickets" button is pressed
function fetchTickets(){
	//put the name (entered in the HTML text input field) into a JSON object so we can send it to the PHP page
	data = {name : $("#nameInput").val()};	

	//request the ticket information from the database via an AJAX call
	$.ajax({  
    	type: 'GET',  
    	url: 'passenger_ticket.php', 
    	data: data,
    	//if the query succeeded, display it using the showTable function defined below
    	success: function(result){showTable(result, true);}
    });
}

//this function is called when the "View All Voyages" button is pressed 
function fetchVoyages(){
	$.ajax({  
    	type: 'GET',  
    	url: 'passenger_voyage.php', 
    	//if the query succeeded, display it using the showTable function defined below
    	success: function(result){showTable(result, false);}
    });	
}

function showTable(stringResult, justOwnTickets){
	//parse the result we got from the PHP file into a JSON object for easy access
	result = $.parseJSON(stringResult);
	$("#resultTableBody").empty();
	
	//set up the table header and add it to our HTML page
	headerString = "<tr><th>Route ID</th>" +
	"<th>Start Station</th>" +
	"<th>End Station</th>" +
	"<th>Departure Date</th>" +
	"<th>Departure Time</th>" +
	"<th>Arrival Date</th>" +
	"<th>Arrival Time</th>" +
	"<th>Cost</th>";
	
	if(justOwnTickets){
		headerString += "<th>Seat Number</th>";
	}
	
	$("#resultTableHead").html(headerString);

	//set up the table body by adding an HTML row for each tuple in our query result
	for(i = 0; i < result.length; i++){
		rowString = "<tr>";
		rowString += "<td>" + result[i].routeID + "</td>";
		rowString += "<td>" + result[i].stationOfOrigin + "</td>";
		rowString += "<td>" + result[i].terminalStation + "</td>";
		rowString += "<td>" + result[i].departureDate + "</td>";
		//the typo in "departure" needs to be fixed in the database
		rowString += "<td>" + result[i].departureTime + "</td>";
		rowString += "<td>" + result[i].arrivalDate + "</td>";
		rowString += "<td>" + result[i].arrivalTime + "</td>";
		rowString += "<td>$" + result[i].cost + "</td>";

		if(justOwnTickets){
			rowString += "<td>" + result[i].seatNumber + "</td>";
		}
		
		rowString += "</tr>";
		$("#resultTableBody").append(rowString);
	}
	
	//set the table title
	if(justOwnTickets){
		$("#resultHeader").html("You own the following tickets:");
	}
	else{
		$("#resultHeader").html("The following voyages are scheduled:");		
	}
}
