package jdbc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
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
		
		try
		{
			String fname=request.getParameter("Fullname");
			String email=request.getParameter("Email");
			String password=request.getParameter("Password");
			String dob=request.getParameter("DOB");
			String paddress=request.getParameter("P Address");
			String caddress=request.getParameter("C Address");
			Integer mnumber=Integer.parseInt(request.getParameter("Mobile Number"));
			Integer hnumber=Integer.parseInt(request.getParameter("Home Telephone Number"));
			String interest=request.getParameter("Interest");
			
			String sql="insert into Member(FullName,Email,Password,DOB,PeAddress,CuAddress,MobileNumber,HomeTP,Interests) values"
					+ "('"+fname+"','"+email+"','"+password+"','"+dob+"','"+paddress+"','"+caddress+"','"+mnumber+"','"+hnumber+"','"+interest+"')";;
			
					Class.forName("com.mysql.jdbc.Driver");
					   
					   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BookClub","root","\\&4+S:3<!'0!OsK");
					   
					   PreparedStatement ps=conn.prepareStatement(sql);
					   
					   ps.executeQuery();					   
					   response.sendRedirect("Main.jsp");
					   return;
					   
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
