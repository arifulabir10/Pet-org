<html>
	<head>
		<title>Rescue Center</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">	
	</head>
		<body>

 			<h1 style="text-align: center; color: olive; font-size:68;"><cite>Rescue Center</cite></h1> 



<?php
	$location = 'Badda';

	require_once('dbcont.php');
	$connect = mysqli_connect( HOST, USER, PASS, DB )
		or die("Can not connect");


	$results = mysqli_query( $connect, "SELECT rescuer_id,location FROM rescue_team WHERE location='$location'" )
		or die("Can not execute query");




	echo "<table class='ui celled striped unstackable collapsing table'> \n";
	echo "<thead><tr><th>rescuer_id</th> <th>location<th>Details</th></tr></thead><tbody> \n";

	while( $rows = mysqli_fetch_array( $results ) ) {
		extract( $rows );
		echo "<tr>";
		echo "<td> $rescuer_id </td>";
		echo "<td> $location </td>";

		
		echo "<td> <a href = 'rescue_detail.php?rescuer_id=$rescuer_id'> Details </a> </td>";
		
		
	}

	echo "</tbody></table> \n";

?>
		</body>
</html>