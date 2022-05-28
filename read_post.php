<html>
	<head>
		<title>Pending Donation</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">	
	</head>
		<body>

			<h1 style="text-align: center; color: olive; font-size:68;"><cite>Pending Posts</cite></h1>



<?php
	require_once('dbcont.php');
	$connect = mysqli_connect( HOST, USER, PASS, DB )
		or die("Can not connect");


	$results = mysqli_query( $connect, "SELECT 
	post_id,content,category,user_id
	FROM post_view" )
		or die("Can not execute query");




	echo "<table class='ui celled striped unstackable collapsing table'> \n";
	echo "<thead><tr><th>post_id</th> <th>content</th><th>category</th><th>user_id</th><th>APPROVE</th> <th>DELETE</th></tr></thead><tbody> \n";

	while( $rows = mysqli_fetch_array( $results ) ) {
		extract( $rows );
		echo "<tr>";
		echo "<td> $post_id </td>";
		echo "<td> $content </td>";
		echo "<td> $category </td>";
		echo "<td> $user_id </td>";
		
		echo "<td> <a href = 'insert_post.php?post_id=$post_id
		&content=$content
		&category=$category &user_id=$user_id'> Approve </a> </td>";
		
		echo "<td> <a href = 'delete.php?post_id=$post_id'> Delete </a> </td>";
	}

	echo "</tbody></table> \n";

?>
		</body>
</html>
