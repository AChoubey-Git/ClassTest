<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
try{
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");

%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
}catch(Exception e1){
	e1.printStackTrace();
}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("category")!=null){
	String category=(String)session.getAttribute("category");
	if(category.equals("Admin")){
	response.sendRedirect("makeques.jsp");
	}
	else{
		request.setAttribute("category","You are not a Teacher,You can't make questions");
		request.getRequestDispatcher("home.jsp").forward(request, response);
	}
}
%>


</body>
</html>