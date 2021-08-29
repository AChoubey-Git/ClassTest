<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
             <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
         
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
<title>Result-Set</title>
</head>
<body>
<div class="page-header">
  <h2> <a href="#"><strong style="color: rgb(51, 204, 51)"> OnlineExam.in</strong></a></h2>
</div>
  <jsp:include page="headerfilter.jsp"></jsp:include>
  
  <div class="row">
   <div  class="col-sm-4" >
   </div>
  <div  class="col-sm-8" >
  <%
  
     response.setHeader("Cache-Control","no-cache.no-store,must-revalidate");
	response.setHeader("pragma","no-cache");
	response.setDateHeader("Expires", 0);
	
  
  %>
  
<form >
<%  HttpSession session2 = request.getSession();
  String subject= (String)session2.getAttribute("Subject");
  out.print("<font size='5' color='yellow' >");
  out.print("<strong>");
   out.print(" Subject: ");
   out.print("</strong>");
   out.print("</font>");
   out.print("<font size='5' color='red' >");
   out.print("<strong>");
   out.print(subject);
   out.print("</strong>");
   out.print("</font>");
   out.print("<br>");
%>

<%  HttpSession session1 = request.getSession();
  String marks= (String)session1.getAttribute("answer");
  out.print("<font size='5' color='yellow' >");
  out.print("<strong>");
   out.print(" You have Scored: ");
   out.print("</strong>");
   out.print("</font>");
   out.print("<font size='5' color='red' >");
   out.print("<strong>");
   out.print(marks);
   out.print("</strong>");
   out.print("</font>");
   out.print("<font size='5' color='white' >");
   out.print("<strong>");
    out.print(" Marks. ");
    out.print("</strong>");
    out.print("</font>");
   out.print("<br>");
%>

</form>


  
  </div>
  </div>
  
  
</body>
</html>