<?php

	$post_id = $_GET["post_id"];

	$content = $_GET["content"];

	$category = $_GET["category"];

	$user_id = $_GET['user_id'];



	require_once('dbcont.php');

	$connect = mysqli_connect( HOST, USER, PASS, DB )

		or die("Can not connect");



	mysqli_query( $connect, "INSERT INTO post_view VALUES ( '$post_id', '$content', '$category','$user_id' )" )

		or die("Can not execute query");



	echo "<p>Post is creating sucessfully. Now wait for Admin approval</p>";


	echo "<p><a href=Home.html> Home page </a>";

?>