<?php
	$donation_id=$_GET['donation_id'];
	$p_type=$_GET['pet_type'];
	$p_name=$_GET['pet_name'];
	$breed=$_GET['breed'];
	
	$image=$_GET['image'];
	
	$user_id=$_GET['user_id'];
	$details=$_GET['details'];

	require_once('dbcont.php');
	$connect = mysqli_connect( HOST, USER, PASS, DB )
		or die("Can not connect");
	mysqli_query( $connect, "INSERT INTO donation_pending VALUES ( '$donation_id','$p_type', '$p_name','$breed','$image','$user_id','$details' )" )

		or die("Can not execute query");

	echo "<p><a href=Home.html> Go back to Home </a>";

?>