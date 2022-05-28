<?php
    $user_name = $_GET['user_name'];
    $user_id = $_GET['user_id'];
?>
<html>
    <head>
        <title>Sitting Post</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">    
    </head>
        <body style="background: url(donate.jpg);background-size: 100%; ">
            
            
            
            <!--Back to Home = Button-->
            
            <p><a href="Home.html"><button class='ui labled teal button'><i class="home icon"></i></button></a></p>
            
            <!-- Back to Home = Button-->



<h1 style="margin: 20px 430px; color:yellow;"><cite>Sitting Post</cite></h1>
<h1 style="margin: 20px 430px; color:yellow;">Welcome <span><?php echo "$user_name"; ?></span></h1>

<form class="ui form" style="max-width:250; margin: 50px 400px" action="create.php" method="get">

    <div style="color:yellow";class="field">
    <label for="post_id"><b>Post_id</b></label>
    <input type="text" name="post_id">
  </div>

  <div style="color:yellow";class="field">
    <label for="content"><b>Content</b></label>
    <input type="text" name="content">
  </div>

  <div style="color:yellow";class="field">
    <label for="category"><b>Category</b></label>
    <input type="text" name="category" value="Sitting">
  </div>
  <div style="color:yellow";class="field">
    <label for="user_id"><b>User_id</b></label>
    <input type="text" name="user_id" value="<?php echo "$user_id " ?>">
  </div>
   


    
  

  
    <br>

    <button class="olive ui button" type="submit"><b>Submit</b></button>
  
    </form>

        </body>
</html>