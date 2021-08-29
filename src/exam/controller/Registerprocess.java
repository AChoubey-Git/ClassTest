package exam.controller;

import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import exam.utilities.ConnectionFac;


//import exam.DAO.RegisterDao;
//import exam.DTO.Register;


@WebServlet("/Registerprocess")
public class Registerprocess extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username=request.getParameter("uname");
	    String userpass=request.getParameter("upass");
	    System.out.println(username);
	    System.out.println(userpass);
	   if(username==null ) {
		
		   request.setAttribute("success","*Fill details correctly*");
		     request.getRequestDispatcher("Register.jsp").forward(request, response);
		   
		   
	   }
	    
	    Connection cn = null;
		PreparedStatement ps = null;
		
		ConnectionFac con = new ConnectionFac();
	    String userdataSQL = "insert into loginuser(username,password) values(?,?)";
	    
	   
	    
		try {
			cn = con.getConn();
			ps = cn.prepareStatement(userdataSQL);
			ps.setString(1, username);
			ps.setString(2, userpass);
			
			ps.executeUpdate();
			
		     request.setAttribute("success","*You have successfully Register*");
		     request.getRequestDispatcher("Register.jsp").forward(request, response);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	    
	   
	    		
	    
	}

}
