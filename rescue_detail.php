<html>
	<head>
		<title>Rescue Center</title>

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
		 <meta charset = "utf-8">
        
        <link rel="stylesheet" type="text/css" href="grooming.css">
	</head>
	

	<body>


		
	
		<div class="menu_bar">
			<h1 class="logo"> Pet<span>Org</span></h1>
		</div>
	<div class="t1">
							<h1 align="Center">
								 Nearby <br>
								Rescue Center

							</h1></div>
							<?php 
								$rescuer_id=$_GET['rescuer_id'];
								require_once('dbcont.php');
								$connect = mysqli_connect(HOST,USER, PASS , DB)
									or die("Can't connect");
								$results = mysqli_query( $connect, "SELECT * FROM rescue_team WHERE rescuer_id = '$rescuer_id' " )
									or die("Can not execute query");
								
								echo "<table class='ui celled striped unstackable collapsing table'> \n";
								echo "<thead><tr><th>rescuer_id</th><th>rescuer_phone</th><th>rescuer_mail</th><th>post_code</th><th>city</th><th>ward_number</th><th>district</th> <th>location</th></tr></thead><tbody> \n";
								while( $rows = mysqli_fetch_array( $results ) ) {
									extract( $rows );
									echo "<tr>";
									echo "<td> $rescuer_id </td>";
									echo "<td> $rescuer_phone </td>";
									echo "<td> $rescuer_mail </td>";
									echo "<td> $post_code </td>";
									echo "<td> $city </td>";
									echo "<td> $ward_number </td>";
									echo "<td> $district </td>";
									echo "<td> $location </td>";

									
									
		
		
								}
								echo"<p><a href=rescue_center.php> Go back to Rescue center </a>"

							?>
		

</body>
</html>