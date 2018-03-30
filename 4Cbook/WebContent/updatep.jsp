<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/test";%>
<%!String user = "root";%>
<%!String psw = "\\&4+S:3<!'0!OsK" ;%>
<body>

<%

String FullName=request.getParameter("FullName");
String Email=request.getParameter("Email");
String Password=request.getParameter("Password");
String DOB=request.getParameter("DOB");
String PeAddress=request.getParameter("PeAddress");

String MobileNumber=request.getParameter("MobileNumber");
if(MobileNumber!= null)
{
	Connection con = null;
	PreparedStatement ps = null;
	int personID = Integer.parseInt(MobileNumber);
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookClub","root","\\&4+S:3<!'0!OsK");
	String sql="Update Member 	set FullName=?,Email=?,Password=?,DOB=?,PeAddress=?, MobileNumber=? where Email="+Email;
	ps = con.prepareStatement(sql);
	
	ps.setString(1, FullName);
	ps.setString(2, Email);
	ps.setString(3, Password);
	ps.setString(4, DOB);
	ps.setString(5, PeAddress);
	ps.setString(6, MobileNumber);
	int i = ps.executeUpdate();
	if(i > 0)
	{
	out.print("Record Updated Successfully");
	}
	else
	{
	out.print("There is a problem in updating Record.");
	} 
	}
	catch(SQLException sql)
	{
	request.setAttribute("error", sql);
	out.println(sql);
	}
	}
	%>
</body>
</html>