<?php

	$post_id = $_GET["post_id"];

	require_once('dbcont.php');

	$connect = mysqli_connect( HOST, USER, PASS, DB )

		or die("Can not connect");



	mysqli_query( $connect, "DELETE FROM post_view WHERE post_id=$post_id" )

		or die("Can not execute query");



	echo "Record deleted<br>";



	echo "<p><a href=read_post.php>READ all records</a>";

?>