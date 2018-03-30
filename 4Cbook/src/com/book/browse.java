package com.book;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/browse")
public class browse extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public browse() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String id = request.getParameter("userid");
		out.print("<table><tr><th>BookID</th><th>Bname</th><th>Author</th><th>Category</th></tr>");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");		
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/BookClub","root","\\&4+S:3<!'0!OsK");
			Statement stmt=conn.createStatement();
			String sql ="select * from Book";
			ResultSet rs= stmt.executeQuery(sql);
			while(rs.next())
			{
				out.print("<tr><td>");
				out.print(rs.getString("BookID"));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString("Bname"));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString("Author"));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString("Category"));
				out.print("</td>");
				out.print("</tr>");
			}	
			
			
		conn.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		out.print("</table>");
	
	}	
	
	
		

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doGet(request, response);
		}
	}
