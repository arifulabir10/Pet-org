<?php

	$first_name = $_GET["first_name"];

	$last_name = $_GET["last_name"];

	$password = $_GET["password"];

	$user_phone = $_GET["user_phone"];

	$username = $_GET["username"];

	$user_id = $_GET["user_id"];
	$rescuer_id = $_GET["rescuer_id"];

	require_once('dbcont.php');

	$connect = mysqli_connect( HOST, USER, PASS, DB )

		or die("Can not connect");



	mysqli_query( $connect, "INSERT INTO users VALUES ( '$first_name', '$last_name ', '$password','$user_phone','$username','$user_id','$rescuer_id' )" )

		or die("Can not execute query");



	echo "<p>User is creating sucessfully</p>";


	echo "<p><a href=login_index.php> Go to Login page </a>";

?>