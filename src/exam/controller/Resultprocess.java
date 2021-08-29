package exam.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exam.DAO.CTest;
import exam.DAO.HtmlTest;
import exam.DTO.Answer;






@WebServlet("/Resultprocess")
public class Resultprocess extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int count;
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("msg","*Please login first.");
		request.getRequestDispatcher("LogoutServ").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    setCount(0);
		for(int i=1;i<=5;i++) {
		String ans = request.getParameter("option"+i);
		System.out.println(ans);
		HttpSession session2 = request.getSession();
		String Sub= (String)session2.getAttribute("Subject");
		
		Answer answer =new Answer();
		answer.setAnswer(ans);
		
		if(Sub.equals("HTML")) {
			HtmlTest htmlans = new HtmlTest();
			boolean answercheck =htmlans.getans1(answer,i);
			if(answercheck==true) {
				setCount(getCount() + 2);
			}
			
		}
		else if(Sub.equals("C-Prog")) {
			CTest ctest = new CTest();
			boolean answercheck =ctest.getans1(answer,i);
			if(answercheck) {
				setCount(getCount() + 1);
			}
		}
		else  {
			response.sendRedirect("LogoutServ");
			
		}
		
		
	}
	   HttpSession session1 = request.getSession();
	   String answer1 = Integer.toString(count);
	   session1.setAttribute("answer", answer1);
	   request.getRequestDispatcher("result.jsp").forward(request, response);
	
}


	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}

}
