package jdbc;

import java.io.IOException;
import java.sql.*;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class validate
 */
@WebServlet("/validate")
public class validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public validate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			
			   String username=request.getParameter("Username");
			   String password=request.getParameter("Password");
			   String dbUsername=null;
			   String dbPassword=null;
			   String sqlm="select * from Member  where Email=?  and Password=? ";
			   
			   Class.forName("com.mysql.jdbc.Driver");
			   
			   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BookClub","root","\\&4+S:3<!'0!OsK");
			   
			   PreparedStatement ps=conn.prepareStatement(sqlm);
			   ps.setString(1,username);
			   ps.setString(2,password);
			   
			   ResultSet rs=ps.executeQuery();
			   
			   while(rs.next())
			   {
				   dbUsername=rs.getString("Email");
				   dbPassword=rs.getString("Password");
				   
				   
				   
			   }
			   
			   if(username.equals(dbUsername) && password.equals(dbPassword))
			   {
				   response.sendRedirect("Main.jsp");
				   return;
				   
				   
			   }
			   else
			   {
				   response.sendRedirect("index.html");
				   return ;
			   }
			   
			   
			   
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
