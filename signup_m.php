<html>
	<head>
		<title>Create User</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">	
	</head>
		<body>
			<br>

<h1 style="text-align: center;">Create User Record</h1>

<form class="ui form" style="max-width:250; margin: auto;" action='create_result_m.php' method='GET'>
  <div class="field">
    <label>first_name</label>
    <input <input type=text  name="first_name"> 

  </div>

  <div class="field">
    <label>last_name</label>
    <input <input type=text name="last_name"> 
  </div>
    
  <div class="field">
    <label>password</label>
    <input  type=text placeholder="password" name="password">
   </div>
      <div class="field">
    <label>user_phone</label>
    <input type=text name="user_phone">
   </div>

   <div class="field">
    <label>user_name</label>
    <input <input type=text name="username">
  </div>

  <div class="field">
    <label>user_id</label>
     <input type=text name="user_id">
  </div>
  <div class="field">
    <label>rescuer_id</label>
     <input type=text name="rescuer_id">
  </div>
  
  <button class="ui labled olive button" type="submit">Submit</button> <a href="login_index_m.php" class="ca">Have an account!? Log In</a>
</form>


		</body>
</html>
