<html>
	<head>
		<title>Pending Donation</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">	
	</head>
		<body>

			<h1 style="text-align: center; color: olive; font-size:68;"><cite>Pending Posts</cite></h1>

<?php
	

	echo '<div class="container-fluid">';
echo '<div class="row">';
echo ' <div class="col-lg-12">';
echo ' <div class="image d-flex justify-content-center">';

           
   
     echo '<div class="box-container">';

	



	require_once('dbcont.php');

	$connect = mysqli_connect( HOST, USER, PASS, DB )

		or die("Can not connect");



	
	$results = mysqli_query( $connect, "SELECT * FROM donation_pending " )

					or die("Can not execute1 query");
		

	while( $rows = mysqli_fetch_array( $results ) ) 
     {
        extract( $rows );


       echo '<div class="card m-4" style="width: 18rem;">';
       echo "<img src='$image' class='card-img-top' alt='...'>";
       echo '<div class="card-body">';
       
       echo " <h5 class='card-title'> $breed</h5>";
       echo "<p class='card-text'>$details  </p>";
         echo "<a href='insert_donor.php?pet_type=$pet_type &pet_name=$pet_name &breed=$breed &image=$image &user_id=$user_id &details=$details' class='btn btn-primary'>Approve</a>";
         echo "<br>";
         echo "<a href='delete_donor.php?donation_id=$donation_id' class='btn btn-primary'>Disapprove</a>";
         echo '</div>';
         echo '</div>'; 
         echo "<br>";  
        
     }

	echo '</div>?';
               echo '</div>';
               echo '</div>';
   
            echo '</div>';




	echo "<p><a href=Home.html> Home Page </a>";

?>
		</body>
</html>
