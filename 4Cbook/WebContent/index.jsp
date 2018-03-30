<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  
   Connection conn=null;
try{
	 Class.forName("com.mysql.jdbc.Driver");
	 conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/BookClub","root","\\&4+S:3<!'0!OsK");
			 
	 
	 
	 if(conn != null)
	 {
		 out.print("connected");
	 }
	 else
	 {
		 out.print("not connected");
	 }
	
}
catch (Exception c)
{
	out.print("not connected");
}
%>


</body>
</html>