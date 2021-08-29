package exam.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exam.DAO.CTest;
import exam.DAO.HtmlTest;


@WebServlet("/Examprocess")
public class Examprocess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("msg","*Please login first.");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String subject = request.getParameter("sub");
		HttpSession session2 = request.getSession();
		session2 .setAttribute("Subject", subject);
		
		if(subject.equals("C-Prog")) {
			
			CTest ctest = new CTest();
			RequestDispatcher rd = request.getRequestDispatcher("view.jsp");
			request.setAttribute("examq", ctest.getdata());
			rd.forward(request, response);
			}
		
		else if(subject.equals("HTML")) {
			HtmlTest htmltest = new HtmlTest();
			RequestDispatcher rd = request.getRequestDispatcher("view.jsp");
			request.setAttribute("examq", htmltest.getdata());
			rd.forward(request, response);
		}
		
	}

}
