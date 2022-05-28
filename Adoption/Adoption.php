<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="index.css">

</head>
<body>

<p><a href="../index.php"><button class='ui labled teal button'><i class="home icon"></i></button></a></p>

<?php
    $image = 'pic1.jpg';

echo '<div class="container-fluid">';
echo '<div class="row">';
echo ' <div class="col-lg-12">';
echo ' <div class="image d-flex justify-content-center">';

           
   
     echo '<div class="box-container">';

       
         require_once('db_connect.php');
         $connect = mysqli_connect( HOST, USER, PASS, DB )
        or die("Can not connect");

    
      $results = mysqli_query( $connect, "SELECT * FROM donor" )
        or die("Can not execute query");


    //   echo "<table class='ui unstackable celled collapsing table' style='margin: 0 auto;'> \n";
    //      echo "<thead> <tr><th>code</th> <th>name</th> <th>address</th> <th>phone_number</th> <th>Delete</th> <th>Update</th> </tr> </thead> <tbody> \n";

        while( $rows = mysqli_fetch_array( $results ) ) 
     {
        extract( $rows );


       echo '<div class="card m-4" style="width: 18rem;">';
       echo "<img src='$image' class='card-img-top' alt='...'>";
       echo '<div class="card-body">';
       
       echo " <h5 class='card-title'> $breed</h5>";
       echo "<p class='card-text'>$details  </p>";
         echo "<a href='Message.php' class='btn btn-primary'>Adopt</a>";
         echo '</div>';
         echo '</div>';    
        // echo "<tr>";
        // echo "<td> $product_id </td>";
        // echo "<td> $product_name </td>";
        // echo "<td> $category </td>";
        // echo "<td> $price</td>";
        // // echo "<td> <a href = 'delete.php?code=$code'> Delete </a> </td>";
        // // echo "<td> <a href = 'update_input.php?code=$code &name=$name &address=$address &phone_number=$phone_number'> Update </a> </td>";
        // echo "</tr> \n";
     }

        //  echo "</tbody> </table> \n";

        
              //     <!-- <div class="card m-4" style="width: 18rem;">
              //       <img src="pic2.jpg" class="card-img-top img-fluid" alt="...">
              //       <div class="card-body">
              //         <h5 class="card-title">Paris Bulldog</h5>
              //         <p class="card-text">It is a vancuvar breed Bulldog</p>
              //         <a href="#" class="btn btn-primary">Adopt</a>
              //       </div>
              //     </div>
              //     <div class="card m-4" style="width: 18rem;">
              //       <img src="Pic4.jpg" class="card-img-top img-fluid" alt="...">
              //       <div class="card-body">
              //         <h5 class="card-title">Ragdoll</h5>
              //         <p class="card-text">2 Year Old Bulgarian Cat with blue eyes</p>
              //         <a href="#" class="btn btn-primary">Adopt</a>
              //       </div>
              //     </div>
                  
              //  </div>
              //  <div class="image d-flex justify-content-center">
              //   <div class="card m-4" style="width: 18rem;">
              //       <img src="pic3.jpg" class="card-img-top" alt="...">
              //       <div class="card-body">
              //         <h5 class="card-title">Sydney Bulldog</h5>
              //         <p class="card-text">It is a sydney breed Bulldog</p>
              //         <a href="#" class="btn btn-primary">Adopt</a>
              //       </div>
              //     </div>
              //     <div class="card m-4" style="width: 18rem;">
              //       <img src="pic5.jpg" class="card-img-top img-fluid" alt="...">
              //       <div class="card-body">
              //         <h5 class="card-title">Birtty</h5>
              //         <p class="card-text">A 1.5 year old Brithish short hair cat.</p>
              //         <a href="#" class="btn btn-primary">Adopt</a>
              //       </div>
              //     </div>
              //     <div class="card m-4" style="width: 18rem;">
              //       <img src="pic6.jpg" class="card-img-top img-fluid" alt="...">
              //       <div class="card-body">
              //         <h5 class="card-title">Merry</h5>
              //         <p class="card-text">Romanian Maine Coon.</p>
              //         <a href="#" class="btn btn-primary">Adopt</a>
              //       </div>
              //     </div> -->
                  
                  echo '</div>?';
               echo '</div>';
               echo '</div>';
   
            echo '</div>';


?>







    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</body>
</html>