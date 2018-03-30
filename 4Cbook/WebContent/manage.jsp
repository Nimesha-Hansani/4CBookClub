<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>4Cknowledge-Manage</title>
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
          
          <h1><a href="Home.jsp">4C<span class="logo_colour">knowledge</span></a></h1>
          <h2>Meet Your Next Favourite Book...</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          
          <li><a href="Home.jsp">Home</a></li>
          <li><a href="Browse.jsp">Browse</a></li>
          <li class="selected"><a href="manage.jsp">Manage</a></li>
         <!--  <li><a href="Registration.jsp">Register</a></li> -->
          <li><a href="Login.jsp">Logout</a></li>
          
        </ul>
      </div>
    </div>
    <div id="site_content">
      <div class="sidebar">     
        <h3>Search</h3>
        <form method="post" action="#" id="search_form">
          <p>
            <input class="search" type="text" name="search_field" value="Enter keywords....." />
            <input name="search" type="image" style="border: 0; margin: 0 0 -9px 5px;" src="style/search.png" alt="Search" title="Search" />
          </p>
        </div>
         <center>   
    	 <table border = "1" width = "100%">
         <tr>
            <th>FullnName</th>
            <th>Email</th>
            <th>Password</th>
            <th>DOB</th>
            <th>PeAddress</th>
            <th>CuAddress</th>
            <th>MobileNumber</th>
            <th>HomeTP</th>
            <th>Interests</th>
         </tr>
         
           <%
			try{
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookClub","root","\\&4+S:3<!'0!OsK");
				statement=connection.createStatement();
				String sql ="select * from Member";
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
			%>
				<tr>
				<td><%=resultSet.getString("FullName") %></td>
				<td><%=resultSet.getString("Email") %></td>
				<td><%=resultSet.getString("Password") %></td>
				<td><%=resultSet.getString("DOB") %></td>
				<td><%=resultSet.getString("PeAddress") %></td>
				<td><%=resultSet.getString("CuAddress") %></td>
				<td><%=resultSet.getString("MobileNumber") %></td>
				<td><%=resultSet.getString("HomeTP") %></td>
				<td><%=resultSet.getString("Interests") %></td>			
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
      </form>      
    </div>
    <div id="footer">
      Copyright &copy; | 4Cknowledge | 
    </div>
  </div>
</body>
</html>
