
    
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
   <link rel="stylesheet" type="text/css" href="style/kushstyle.css" title="style" />
</head>


<style>


#button2{
	padding:20px;
	background-color:grey;
}

#button2:hover{
background-color:white;
}


</style>
<body>



<%
String BookID=request.getParameter("BookID");
String Bname=request.getParameter("Bname");
String Author=request.getParameter("Author");
String Category=request.getParameter("Category");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookClub","root","\\&4+S:3<!'0!OsK");
System.out.println("connection established");



Statement st=null;
st=conn.createStatement();

st.executeUpdate("INSERT INTO Book(BookID,Bname,Author,Category)values('"+BookID+"','"+Bname+"','"+Author+"','"+Category+"')");

}
catch(Exception e)
{
System.out.print(e);
out.println("kush");
}
%>

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
          <li><a href="ManagerMain.jsp">Home</a></li>
          
          
          <li><a href="Books.jsp">Add Books</a></li>
          <li><a href="Kbrowse.jsp">Delete Books</a></li>
          <li><a href="Main.jsp">Log Out</a></li>
        </ul>
      </div>
    </div>
    <div id="site_content">
   </div>
  
  <center>  
    
   <div id=" middle"> 
    <h1>Add Books</h1> 
<form action ="Registration"  method="post"   style="border:1px solid #ccc">
  <div class="RegContainer">
  
				<label for="BookID"><b>BookID</b></label>
               <input type="text"  name="BookID">
               
  				<label for="Bname"><b>Bname</b></label>
               <input type="text"  name="Bname">
               
               <label for="Author"><b>Author</b></label>
               <input type="text"  name="Author">
               
               <label for="Category"><b>Category</b></label>
               <input type="text"  name="Category">

   <div class="clearfix">
              
               <button type="submit"  class="signupbtn">Submit</button>
               </div>
              

</div>
</form>

</div>

</center>

    <br/>
   
    </div>

</body>

</html>