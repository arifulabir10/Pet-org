<html>
	<head>
		<title>Pending post</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">	
	</head>
		<body>

			<h1 style="text-align: center; color: olive; font-size:68;"><cite>Pending Posts</cite></h1>

<?php

	$pet_type = $_GET["pet_type"];

	$pet_name = $_GET["pet_name"];

	$breed = $_GET["breed"];
	$image = $_GET['image'];
	$user_id = $_GET['user_id'];

	$details = $_GET['details'];

	



	require_once('dbcont.php');

	$connect = mysqli_connect( HOST, USER, PASS, DB )

		or die("Can not connect");



	mysqli_query( $connect, "INSERT INTO donor VALUES ( NULL,'$pet_type',  '$breed','$pet_name','$image','$user_id','$details' )" )

		or die("Can not execute query");
	
	





	echo "<p><a href=adoption_post.php> Go back </a>";

?>
		</body>
</html>
