<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "BookClub";
String userid = "root";
String password = "\\&4+S:3<!'0!OsK";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection conn = null;
Statement statement = null;
ResultSet resultSet = null;
%>
  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
  <title>4Cknowledge-Browse</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
</head>




<body>
<form action="">

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
           <li><a href="Kbrowse.jsp">DeleteBooks</a></li>
          <li><a href="Main.jsp">LogOut</a></li>
        </ul>
      </div>     
    </div>
    <div id=sidebar>
    <!-- <form action="Kdelete.jsp">
	<table>
	<tr>
	<td>Enter BookID To Delete</td>
	<td><input type="text" name="id"/></td>
	</tr>
	<tr>
	<td></td>
	<td><input type="submit" value="Delete"/></td>
	</tr>
	</table>
	</form> -->
	</div>
	</div>

<%-- <%
 Connection conn = null;
 ResultSet resultSet = null; 
Statement statement = null;
String id = request.getParameter("id");
if(id != null)
{

//Connection conn = null;
PreparedStatement ps = null;
int BookID = Integer.parseInt(id);
try
{
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookClub","root","\\&4+S:3<!'0!OsK");
String sql = "DELETE FROM Book WHERE BookID="+BookID;
ps = conn.prepareStatement(sql);
int i = ps.executeUpdate();
if(i > 0)
{%>
<jsp:forward page="Successdlt.jsp"></jsp:forward>
<% 
}
else
%>
<jsp:forward page="failuredlt.jsp"></jsp:forward>
<%
conn.close();
}
catch (Exception e) {
	e.printStackTrace();
	}
}
%> --%>

      <table border = "1" width = "100%">
          <tr>
           	<th>BookID</th>
            <th>Bname</th>
            <th>Author</th>
            <th>Category</th> 
            <th>Action</th>          
         </tr>      
       	 <%
			try{
				conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/BookClub","root","\\&4+S:3<!'0!OsK");
				statement=conn.createStatement();
				 String sql ="select * from Book"; 
				 resultSet = statement.executeQuery(sql);
				 int i=0;
				while(resultSet.next()){ 
		 %>
				<tr>
				<td><%=resultSet.getString("BookID") %></td>
				<td><%=resultSet.getString("Bname") %></td>
				<td><%=resultSet.getString("Author") %></td>
				<td><%=resultSet.getString("Category") %></td>
				<td><a href="Kdelete.jsp?b=<%=resultSet.getString("BookID") %>"><button type="button" class="delete">Delete</button></a></td>
				</tr>
			<%
				i++;
				} 
				conn.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
			%>
      </table>  
    
 		<div id="footer">
      			Copyright &copy; | 4Cknowledge | 
    	</div>
   
   </form>
</body>
</html>