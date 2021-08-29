package exam.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LogoutServ")
public class LogoutServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession(false);
		session.invalidate();
		response.setHeader("Cache-Control","no-cache.no-store,must-revalidate"); 
		response.setHeader("Pragma","no-cache"); 
		response.setDateHeader ("Expires", 0);
		request.setAttribute("success","*You have  successfully logout, Login Again!");
	     request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
