<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ page import="java.sql.*" %>
 <%@  page import="java.util.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Log In</title>

 
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
          <li><a href="NLogIn.jsp">Log In</a></li>
        </ul>
      </div>
    </div>
    <div id=" middle">
         <div class="login-page">
                   <div class="form">
                    
                      
                      <form class="login-form" action="validate" method="post" >
                      <label for="Username" ><b> User name</b></label>
                      <input type="text" name="Username" />
                      
                      <label for="Password" ><b>Password</b></label>
                      <input type="password" name="Password" />
                      
                      <input type="submit" value="LogIn">
                      <p class="message">Not registered? <a href="#">Create an account</a></p>
                      </form>
                        </div>
                       

                        
                        
                        
                
</div>
     
            
    
    </div>
    <div id="footer">
      Copyright &copy; textured_blue | <a href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a href="http://www.html5webtemplates.co.uk">Free CSS Templates</a>
    </div>
  </div>
</body>
</body>
</html>
