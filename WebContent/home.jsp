<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


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
}catch(Exception e){
	e.printStackTrace();
}
%>
<body>
<div class="page-header">
  <h2> <a href="#"><strong style="color: rgb(51, 204, 51)"> OnlineExam.in</strong></a></h2>
</div>
  <jsp:include page="header.jsp"></jsp:include>
  
  
<div class="row">
  <div class="col-sm-4" >
  <h4 class="text-left"> <strong style="color:rgb(255, 140, 26)">Our Tutorial Service:- </strong></h4><br><br>
  
   <form class="form-horizontal" >
   <a href="https://www.javatpoint.com/c-programming-language-tutorial" target="blank" >
  <img src="imgC.png" class="img-circle" alt="C-prog" width="200" height="100"> 
  </a>
  <p style="color:white" class="text-left"> C is a high-level and general-purpose programming language that is ideal for
      developing firmware or portable applications. Originally intended for writing system
      software, C was developed at Bell Labs by Dennis Ritchie for the Unix Operating System
      in the early 1970s
   </p>
   <a href="https://www.javatpoint.com/cpp-tutorial" target="blank" >
  <img src="cplus.png" class="img-circle" alt="Cpp-prog" width="200" height="100"> 
  </a>
  <p style="color:white" class="text-left"> 
  C++ is an object-oriented programming language. It is an extension to C programming.
  C++ programming language was developed in 1980 by Bjarne Stroustrup at bell laboratories 
  of AT&T (American Telephone & Telegraph), located in U.S.A.Bjarne Stroustrup is known as 
  the founder of C++ language. It was develop for adding a feature of OOP (Object Oriented 
  Programming) in C without significantly changing the C component.
   </p><br>
   <a href="https://www.javatpoint.com/html-tutorial" target="blank" >
  <img src="html.png" class="img-rounded" alt="HTML" width="200" height="100"> 
  </a>
  <p style="color:white" class="text-left"> 
  HTML is an acronym which stands for Hyper Text Markup Language.
  HTML is used to create web pages.HTML is widely used language on the web.
  We can create static website by HTML only.
   </p>
  </form>
  
  </div>
  <div class="col-sm-8" > 
  <% 
					if(request.getAttribute("notlogin_msg")!=null){
					out.print("<font size='2' color='red' >");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</font>");
					}
					%>
				<% 
					if(request.getAttribute("Error")!=null){
					out.print("<font size='2' color='red' >");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
					%>
					<%
					
				if(request.getAttribute("category")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("category"));
					out.print("</font>");
					}
				
					%>
  
  
  
  <h5 class="text-left"> <strong style="color:rgb(255, 140, 26)">welcome to our site</strong></h5>
  <marquee direction="left" style="color: red;" onmouseover="stop()" onmouseout="start()"><B>Assess Yourself by taking Exam on various subjects</B></marquee>
  <p>
                	<font style="color: yellow;">Now Teacher and Student can work together<br> 
                							online.Tutors are most welcomed to my site <br>
                							   they can create Questions simply by clicking MakeQues<br>  
                							     link.And Students can appear in exam based on various
                							   subject. </font>
   </p>
  </div>
</div>

</body>
</html>