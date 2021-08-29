<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OnlineExam.in</title>
</head>
<body>
<div class="page-header">
  <h2> <a href="#"><strong style="color: rgb(51, 204, 51)"> OnlineQuiz.in</strong></a></h2>
</div>
  <jsp:include page="header.jsp"></jsp:include>
  
  <div class="row">
  <div class="col-sm-4" >
  <h4 class="text-left"> <strong style="color:rgb(255, 140, 26)">Our Tutorial Service:- </strong></h4><br><br>
  
   <form class="form-horizontal" action="/action_page.php">
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
  <div class="col-sm-8" style="background-color:purple;" > 
          <% 
					if(request.getAttribute("notlogin_msg")!=null){
					out.print("<font size='2' color='red' >");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</font>");
					}
		            %>
          <% 
					if(request.getAttribute("Error")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
					if(session.getAttribute("category")!=null){
					String category=(String)session.getAttribute("category");
					if(category.equals("Student")){
					request.setAttribute("category","You are not a Teacher,You can't make questions");
					%>
					<jsp:forward page="home.jsp"></jsp:forward>
					<% 
					}
					
					}
					%>
					<%
					  if(request.getAttribute("successfull")!=null){
						out.print("<font size='2' color='white' >");
						out.print(request.getAttribute("successfull"));
						out.print("</font>");
					  }
					%>
  
  
  <h4 class="text-center"> <strong style="color:rgb(255, 140, 26)">Make Questions : </strong></h4><br><br>
  
	<form method="post" action="saveques.jsp" class="form-horizontal">
	<div class="form-group">
     <label class="control-label col-sm-2" style="color: white;"> Subject:</label>    
         <div class="col-sm-3">
         <select class="form-control" name="sub">
         <option>Select your subject</option>
        <option>cprog</option>
        <option>cpp</option>
        <option>html</option>
        <option>java</option>  
         </select>
         </div>
         </div>
         <div class="form-group">
     <label class="control-label col-sm-2" style="color: white;"> Question:</label>    
         <div class="col-sm-3">
         <textarea rows="3" cols="" name="question" class="form-control"></textarea>
        </div>
        </div>
        <div class="form-group">
     <label class="control-label col-sm-2" style="color: white;"> Option1:</label>    
         <div class="col-sm-3">
        <input type="text" name="option1" class="form-control"/>
        </div>
        </div>
        <div class="form-group">
     <label class="control-label col-sm-2" style="color: white;"> Option2:</label>    
         <div class="col-sm-3">
        <input type="text" name="option2" class="form-control"/>
        </div>
        </div>
         <div class="form-group">
     <label class="control-label col-sm-2" style="color: white;"> Option3:</label>    
         <div class="col-sm-3">
         <input type="text" name="option3" class="form-control"/>
         </div>
         </div>
         <div class="form-group">
     <label class="control-label col-sm-2" style="color: white;"> Option4:</label>    
         <div class="col-sm-3">
         <input type="text" name="option4" class="form-control"/>
</div>
</div>
         <div class="form-group">
     <label class="control-label col-sm-2" style="color: white;"> Answer:</label>    
         <div class="col-sm-3">
       <input type="text" name="answer" class="form-control" />
       </div>
       </div>
        <div class="form-group">   
         <div class="col-sm-offset-2 col-sm-10">
       <input style="color:red" type="submit"  value="save" />
      </div>
      </div>
  </form>
  </div>
  </div>
</body>
</html>