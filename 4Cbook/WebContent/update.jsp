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
</head>
<%
String Email= request.getParameter("userid");
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
 <% 
			try{
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookClub","root","\\&4+S:3<!'0!OsK");
				statement=connection.createStatement();
				String sql ="select FullName,Email,Password,DOB,PeAddress,MobileNumber from Member ";
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
			%>
			
			
<form method="post" action="updatep.jsp">
<input type="hidden" name="Email" value="<%=resultSet.getString("Email") %>">
<input type="text" name="Email value="<%=resultSet.getString("Email") %>">
<br>
Full Name<br>
<input type="text" name="FullName" value="<%=resultSet.getString("FullName") %>">
<br>
Email:<br>
<input type="text" name="Email" value="<%=resultSet.getString("Email") %>">
<br>
Password:<br>
<input type="text" name="Password" value="<%=resultSet.getString("Password") %>">
<br>
Date of Birth:<br>
<input type="text" name="DOB" value="<%=resultSet.getString("DOB") %>">
<br>
PermanentAddress:<br>
<input type="text" name="PeAddress" value="<%=resultSet.getString("PeAddress") %>">
<br>

Mobile number:
<input type="text" name="MobileNumber" value="<%=resultSet.getString("MobileNumber") %>">
<br>
<br>
<input type="submit" value="submit">
</form>
		
			<%
				}
				connection.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
			%>
</body>
</html>