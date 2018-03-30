<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.sql.*,java.util.*" %>
<%
String BookID =request.getParameter("b");
int no =Integer.parseInt(BookID);
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookClub", "root", "\\&4+S:3<!'0!OsK");
Statement st=conn.createStatement();
st.executeUpdate("DELETE FROM Book WHERE BookID='"+no+"'");
response.sendRedirect("Kbrowse.jsp");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>

</body>
</html>