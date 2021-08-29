<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OnlineExam.in</title>
</head>
<body>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","choubeyraju92&");
    String subject= request.getParameter("sub");
    String question= request.getParameter("question");
    String option1= request.getParameter("option1");
    String option2= request.getParameter("option2");
    String option3= request.getParameter("option3");
    String option4= request.getParameter("option4");
    String answer=request.getParameter("answer");
    
    if(subject.equals("cprog")){
    	PreparedStatement ps=con.prepareStatement("insert into ctest(question,option1,option2,option3,option4,answer) values(?,?,?,?,?,?)");

    	ps.setString(1,question);
    	ps.setString(2,option1);
    	ps.setString(3,option2);
    	ps.setString(4,option3);
    	ps.setString(5,option4);
    	ps.setString(6,answer);
    	int s= ps.executeUpdate();

    }
    else if(subject.equals("cpp")){
    	
    	PreparedStatement ps=con.prepareStatement("insert into cpptest(question,option1,option2,option3,option4,answer) values(?,?,?,?,?,?)");

    	ps.setString(1,question);
    	ps.setString(2,option1);
    	ps.setString(3,option2);
    	ps.setString(4,option3);
    	ps.setString(5,option4);
    	ps.setString(6,answer);
    	int s= ps.executeUpdate();
    }
    else if(subject.equals("html")){
    	PreparedStatement ps=con.prepareStatement("insert into html(question,option1,option2,option3,option4,answer) values(?,?,?,?,?,?)");

    	ps.setString(1,question);
    	ps.setString(2,option1);
    	ps.setString(3,option2);
    	ps.setString(4,option3);
    	ps.setString(5,option4);
    	ps.setString(6,answer);
    	int s= ps.executeUpdate();
    	
    }
    else if(subject.equals("java")){
    	PreparedStatement ps=con.prepareStatement("insert into javatest(question,option1,option2,option3,option4,answer) values(?,?,?,?,?,?)");

    	ps.setString(1,question);
    	ps.setString(2,option1);
    	ps.setString(3,option2);
    	ps.setString(4,option3);
    	ps.setString(5,option4);
    	ps.setString(6,answer);
    	int s= ps.executeUpdate();
    	
    	
    }
%>
   
<%
   request.setAttribute("successfull", "**Question inserted Successfully ");
   request.getRequestDispatcher("makeques.jsp").forward(request, response);

%>
</body>
</html>