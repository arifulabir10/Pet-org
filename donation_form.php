<?php
	$username = $_GET['username'];
    $user_id = $_GET['user_id'];
?>

<html>
	<head>
		<title>Donation Form</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">	
	</head>
		<body style="background: url(donate.jpg);background-size: 100%; ">
			
			
			
			<!--Back to Home = Button-->
			
			<p><a href="Home.html"><button class='ui labled teal button'><i class="home icon"></i></button></a></p>
			
			<!-- Back to Home = Button-->



<h1 style="margin: 20px 430px; color:yellow;"><cite>Donation Form</cite></h1>

<form class="ui form" style="max-width:250; margin: 50px 400px" method="get" action='donation_request.php'>

	<div style="color:yellow";class="field">
    <label><b>Donation_id</b></label>
    <input type=text placeholder ='donation_id' name="donation_id" required>
  </div>
	<div style="color:yellow";class="field">
    <label><b>Pet Type</b></label>
    <input type=text placeholder ='Cat,Dog etc...' name="pet_type" required>
  </div>

  <div style="color:yellow";class="field">
    <label><b>Breed Type</b></label>
    <input type=text placeholder ='Persian,German etc...' name="breed" >
  </div>

  <div style="color:yellow";class="field">
    <label><b>Pet Name</b></label>
    <input type=text placeholder ='Pet name' name="pet_name">
  </div>
  
   <div style="color:yellow";>
    <label><b>Add File</b></label>
	<i class="upload icon"></i>
  <div class="ui label">
    <input type=file  name="image">
  </div>
  
  </div>
  <div style="color:yellow";class="field">
    <label for="user_id"><b>User_id</b></label>
	<input type="text" name="user_id" value="<?php echo"$user_id"; ?>"></input>
    </div>

    <div style="color:yellow";class="field">
    <label for="details"><b>Details</b></label>
		<textarea placeholder="Type about your pet" rows="5" cols="10" name="details">
  
		</textarea>
  </div>

<!-- 
	<div style="color:yellow";class="field">
    <label><b>Details</b></label>
	<br>
	 

	<textarea name = message rows="5" cols="10" name="details"></textarea> 
	
	
  
    </div>
  -->
  
  

<br>
    <button class="olive ui button"	type="submit"><b>Submit</b></button>
  
	</form>
	


		</body>
</html>