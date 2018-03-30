<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>4Cknowledge-Browse</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
          <li><a href="ManagerMain.jsp">Home</a></li>
         <li><a href="Books.jsp">Add Books</a></li>
          <li><a href="Kbrowse.jsp">Delete Books</a></li>
         
          <li><a href="Main.jsp">LogOut</a></li>
        </ul>
      </div>
    </div>
    <center>  
    <br/>
    <br/>
    <font size="10">Books</font>
    
     
    <br/>
    <br/>        
      <table border = "1" width = "100%">
         <tr>
           
            <th>Bname</th>
            <th>Author</th>
                     
         </tr>         
         	<%
			try{
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookClub","root","\\&4+S:3<!'0!OsK");
				statement=connection.createStatement();
				String sql ="select BookID,Bname,Author from Book";
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
			%>
				<tr>
			
				<td><%=resultSet.getString("Bname") %></td>
				<td><%=resultSet.getString("Author") %></td>
			
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

      <center>    
      <font size="10">Members</font>      
      <table border = "1" width = "100%">
         <tr>
            <th>BookID</th>
            <th>Bname</th>
            <th>Author</th>
            <th>Category</th>           
         </tr>         
         	<%
			try{
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookClub","root","\\&4+S:3<!'0!OsK");
				statement=connection.createStatement();
				String sql ="select FullName,Email,DOB from Book";
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
			%>
				<tr>
				<td><%=resultSet.getString("FullName") %></td>
				<td><%=resultSet.getString("Email") %></td>
				<td><%=resultSet.getString("DOB") %></td>
			
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
    
 	<div id="footer">
      Copyright &copy; | 4Cknowledge | 
    </div>
    </div>
</body>
</html>