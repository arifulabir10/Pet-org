<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medical Help</title>

    <!-- font awesome cdn link  -->
      <link rel="stylesheet" type="text/css" href="./doctor_view.css">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">



</head>
    <body>
<!-- header section starts  -->

    <div class="menu_bar">
        <h1 class="logo"> Pet<span>Org</span></h1>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact us</a></li>
        </ul>
        
    </div>

    <div class="row">
  <div class="col-md-6 offset-md-3 mt-5 ">
       
        <br>
<!--         <a target="_blank" href="https://getform.io?ref=codepenHTML" class="mt-3 d-flex">Getform.io |  Get your free endpoint now</a>
        <h1>Getform.io HTML Form Example with File Upload</h1> -->
<!--         <form accept-charset="UTF-8" action="" method="POST" enctype="multipart/form-data" target="_blank">
          <div class="form-group" >
            <label for="exampleInputName">Ask A Vet</label>
            <input type="textarea" name="fullname" class="form-control" id="exampleInputName" required="required"style="height: 100px;" size="500">
          </div> -->
<!--           <div class="form-group">
            <label for="exampleInputEmail1" required="required">Email address</label>
            <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
          </div> -->
          <?php
            require_once('dbcont.php');

            $connect = mysqli_connect( HOST, USER, PASS, DB )

                or die("Can not connect");



            $results=mysqli_query( $connect, "SELECT * FROM ask_a_vet " )

                        or die("Can not execute query");
            while( $rows = mysqli_fetch_array( $results ) ) 
     {
        extract( $rows );


       echo '<div class="form-group">';
               echo '<label for="category">Category</label>';
                echo "<input type='text' name='category' value='$category'>";
        echo " </div>";
          echo '<div class="form-group">';
            echo '<label for="ask_question">Question</label>';
            echo "<textarea type ='text' rows='5' cols='85' name='ask_question' value='$ask_question'></textarea>";
        echo '</div>';
        echo '<div class="form-group">';
            echo "<img src='$image'>";
        echo '</div>';
        echo '<div class="form-group">';
            echo '<label for="exampleFormControlSelect1">Your Response</label>';
            echo "<textarea type='text' rows='5' cols='85' name='details'></textarea>";
        echo '</div>';  
        
     }
          ?>

          
<!--          <div class="form-group mt-8"> 

          <img src="photo2.jpg" alt="" class="img-responsive">

          </div> -->

         
        
<!--         <div class="col-md-4 image"> 

      <img src="photo1.jpg" alt="" class="img-responsive">

      </div>
 -->
         
        </form>
            
    </div> 




















<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>