<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/styleNime.css" title="style" />
</head>
<body>
<div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">4C<span class="logo_colour">knowledge</span></a></h1>
          <h2>Simple. Contemporary. Website Template.</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li><a href="Main.jsp">Home</a></li>
          <li><a href="examples.html">Search</a></li>
          <li class="selected"><a href="page.html">A Page</a></li>
          <li><a href="Register.jsp">Register</a></li>
          <li><a href="LogIn.jsp">Log In</a></li>
        </ul>
      </div>
    </div>
    <div id=" middle">
            <form action ="Registration"  method="post"   style="border:1px solid #ccc">
              <div class="RegContainer">
               <h1> Registration </h1>
               <p>Please fill in this form to create an account.</p>
               <hr>
               <label for="Full Name"><b>Full Name</b></label>
               <input type="text"  name="Full Name">
               
               <label for="Email"><b>Email</b></label>
               <input type="text"  name="Email">
               
               <label for="Password"><b>Password</b></label>
               <input type="text"  name="Password">
               
               <label for="PSW-Repeat"><b>Confirm Password</b></label>
               <input type="text"  name="PSW-Repeat">
               
               <label for="DOB"><b>Date Of Birth</b></label>
               <input type="text"  name="DOB">
               
               
               
               <label for="P Address"><b>Permanent Address</b></label>
               <input type="text"  name="P Address">
               
               <label for="P Address"><b>Permanent Address</b></label>
               <input type="text"  name="P Address">
               
               <label for="C Address"><b>Current Address</b></label>
               <input type="text"  name="C Address">
               
               <label for="Mobile Number"><b>Mobile Number</b></label>
               <input type="text"  name="Mobile Number">
               
               <label for="Home Telephone Number"><b>Home Telephone Number</b></label>
               <input type="text"  name="Home Telephone Number">
               
               <label for ="Interest"><b>Interest</b></label>
               <input type="text"  name="Interest">
               
               <div class="clearfix">
               <button type="button"  class="cancelbtn">Cancel</button>
               <button type="button"  class="signupbtn">Submit</button>
               </div>
              
              </div>
            
            </form>
    
    
         
    </div>
     
            
    
    </div>
    <div id="footer">
      Copyright &copy; textured_blue | <a href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a href="http://www.html5webtemplates.co.uk">Free CSS Templates</a>
    </div>
  
</body>
</body>
</html>
