<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>4Cknowledge-Logout</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />

<!-- <style>
body{
margin:0 auto;
background:skyblue;
background-size= 100% 720px;
}

.container{
width:500px;
height:450px;
text-align:center;
margin:0 auto;
border-radius:04px;
margin:0 auto;
margin-top:100px;

}
</style> -->
</head>
<body>

<div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="Home.jsp">4C<span class="logo_colour">knowledge</span></a></h1>
          <h2>Meet Your Next Favourite Book...</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li><a href="Home.jsp">Home</a></li>
          <li><a href="Browse.jsp">Browse</a></li>
          <li><a href="manage.jsp">Manage</a></li>
          <!-- <li><a href="Registration.jsp">Register</a></li> -->
          <li class="selected"><a href="Home.jsp">Logout</a></li>        
          
        </ul>
      </div>
    </div>

	<!-- <div class="container"style="background-color:#f1f1f1">
		<form>
		<div class="form_input">
					<label for="uname"><b>Username : </b></label>
					<input type="text" name ="username" placeholder="Enter your Username"><br>
					<br>
		</div>
		<div class="form_input">
			<label for="uname"><b>Password : </b></label>
			<input type="password" name="password" id= "button" placeholder="Enter your Password"><br>
			<br>
		</div>
			<input type="submit" name="submit" value= "LOGIN" class="btn-login"><br>
			
			<span class="psw">Forgot <a href="#">password?</a></span><br>
			<br>
 
    		<button type="button" class="cancelbtn">CANCEL</button>
    		
		</form> -->
	</div> 
	
</body>
</html>