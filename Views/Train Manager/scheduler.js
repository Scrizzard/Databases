window.onload = function(){

	$.ajax({  
    	type: 'GET',  
    	url: 'scheduler_routes.php', 
    	success: function(result){populateRoutes(result);}
    });
    
    $.ajax({  
    	type: 'GET',  
    	url: 'scheduler_engine.php', 
    	success: function(result){populateEngines(result);}
    });
};

function populateRoutes(stringResult){
	result = $.parseJSON(stringResult);

	for(i = 0; i < result.length; i++){
		//Weakness here: station of origin and terminal station should be sanitized
		entryString = result[i].routeID + ": " + result[i].stationOfOrigin + " to " + result[i].terminalStation;
		entryString = "<option value=\"" + result[i].routeID + "\">" + entryString + "</option>";
		$("#routeDDL").append(entryString);
	}
}

function populateEngines(stringResult){
	result = $.parseJSON(stringResult);

	for(i = 0; i < result.length; i++){
		//Weakness here: station of origin and terminal station should be sanitized
		entryString = result[i].id + ": " + result[i].name;
		entryString = "<option value=\"" + result[i].id + "\">" + entryString + "</option>";
		$("#engineDDL").append(entryString);
	}
}

//TODO:
//drop down for engine, list for traincars
//fetch all currently scheduled voyages
//from user, get departure date and time 
//from route nd user input, calculate arrival date and time
//set traincars for voyage, too...
