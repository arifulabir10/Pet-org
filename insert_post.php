<html>
	<head>
		<title>Pending post</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">	
	</head>
		<body>

			<h1 style="text-align: center; color: olive; font-size:68;"><cite>Pending Posts</cite></h1>

<?php

	$post_id = $_GET["post_id"];

	$content = $_GET["content"];

	$category = $_GET["category"];

	$user_id = $_GET['user_id'];



	require_once('dbcont.php');

	$connect = mysqli_connect( HOST, USER, PASS, DB )

		or die("Can not connect");



	mysqli_query( $connect, "INSERT INTO post VALUES ( '$post_id', '$content', '$category','$user_id' )" )

		or die("Can not execute query");
	
	$results = mysqli_query( $connect, "SELECT * FROM post " )

					or die("Can not execute1 query");
		echo "<table class='ui celled striped unstackable collapsing table'> \n";
	echo "<thead><tr><th>post_id</th> <th>content<th>category</th></tr></thead><tbody> \n";

	while( $rows = mysqli_fetch_array( $results ) ) {
		extract( $rows );
		echo "<tr>";
		echo "<td> $post_id </td>";
		echo "<td> $content </td>";
		echo "<td> $category </td>";
		echo "<td> $user_id </td>";
		
	}

	echo "</tbody></table> \n";





	echo "<p><a href=insert_post.php> Read all Data </a>";

?>
		</body>
</html>
