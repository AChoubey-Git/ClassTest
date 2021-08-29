package exam.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exam.DAO.LoginValidate;
import exam.DTO.Login;



@WebServlet("/Loginprocess")
public class Loginprocess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		//request.setAttribute("msg","*Please login first.");
		//request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String username=request.getParameter("uname");
	    String userpass=request.getParameter("upass");
	    
	   Login user =new Login();
	    
	    user.setUname(username);
	    user.setUpass(userpass);
	    
	    LoginValidate loginValidate = new LoginValidate();
	    boolean userValidate = loginValidate.validate(user);
	    if(userValidate == true) {
	    	
	    	HttpSession session = request.getSession();
			session.setAttribute("user", user);
				session.setAttribute("islogin","plz sign in first");
				session.setAttribute("category",username);
				request.getRequestDispatcher("home.jsp").forward(request, response);    
	    	
	    }else{
	    	HttpSession session = request.getSession();
	        request.setAttribute("Error","Sorry! Username or Password Error. plz Enter Correct Detail or Register");
	        session.setAttribute("Loginmsg","plz sign in first");
	        request.getRequestDispatcher("index.jsp").forward(request, response);
	    
	    
	}

}
}
