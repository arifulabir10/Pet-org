<?php

	$donation_id = $_GET["donation_id"];

	require_once('dbcont.php');

	$connect = mysqli_connect( HOST, USER, PASS, DB )

		or die("Can not connect");



	mysqli_query( $connect, "DELETE FROM donation_pending WHERE donation_id=$donation_id" )

		or die("Can not execute query");



	echo "Record deleted<br>";



	echo "<p><a href=adoption_post.php>READ all records</a>";

?>