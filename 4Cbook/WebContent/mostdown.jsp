<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
</head>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "BookClub";
String userid = "root";
String password = "\\&4+S:3<!'0!OsK";
try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<body>
 <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">4C<span class="logo_colour">knowledge</span></a></h1>
           <h2>Meet Your Next Favourite Book</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li ><a href="home.jsp">Home</a></li>
          <li ><a href="search.jsp">Search Books</a></li>
          <li ><a href="recently.jsp">Recently Uploaded</a></li>
          <li class="selected"><a href="mostdown.jsp">My Account</a></li>
          <li><a href="home.jsp">Logout</a></li>
        </ul>
      </div>
    </div>
    
    
     <center>  
    <br/>
    <br/>
    <font size="10">My profile</font>
    
     
    <br/>
    <br/>        
      <table border = "0" width = "100%">
         <tr>
           
          
            
             <td>Full Name</td>
            <td>Email</td>
             <td>password</td>
            <td>Date Of Birth</td>
             <td>Permanent Address</td>
            
            
            <td>Mobile Number</td>  
            <td>update</td>
                  
         </tr>         
         	<%
			try{
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookClub","root","\\&4+S:3<!'0!OsK");
				statement=connection.createStatement();
				String sql ="select FullName,Email,Password,DOB,PeAddress,MobileNumber from Member";
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
			%>
				<tr>
			
				<td><%=resultSet.getString("FullName") %></td>
				<td><%=resultSet.getString("Email") %></td>
				<td><%=resultSet.getString("Password") %></td>
				<td><%=resultSet.getString("DOB") %></td>
				<td><%=resultSet.getString("PeAddress") %></td>
				
				<td><%=resultSet.getString("MobileNumber") %></td>

			
				<td><a href="update.jsp?Email=<%=resultSet.getString("Email")%>">update</a></td>
</tr>
			<%
				}
				connection.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
			%>
      </table>
      </center>

     
    
 	
    </div>
    
 
</body>
</html>