<?php

$query = '
SELECT sectionID, stationOfOrigin, terminalStation, inServiceState
FROM TrackSection';

$result = mysql_query($query) or die(mysql_error());
		

echo '<table>
		<tr>
			<th>Start</th>
			<th>End</th>
			<th>In Service?</th>			
			<th>Delete?</th>
		</tr>		
		';

while ($row = mysql_fetch_object($result)) {		
	echo '<tr>
					<td>' . $row->stationOfOrigin . '</td>
					<td>' . $row->terminalStation . '</td>
					<td>' . $row->inServiceState . '</td>
					<td> 
						<form action="index.php" method="post">
							<input type="hidden" name="deleteTrack" value="' . $row->sectionID . '"> 
							<input type="submit" value="Delete">
						</form>
					</td>
				</tr>';
}

echo '</table>';

?>