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
}catch(Exception e1){
	e1.printStackTrace();
}
%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OnlineExam.in</title>
</head>
<body>
<div class="page-header">
  <h2> <a href="#"><strong style="color: rgb(51, 204, 51)"> OnlineExam.in</strong></a></h2>
</div>
  <jsp:include page="header.jsp"></jsp:include>
  
  <div class="row">
  <div class="col-sm-4" >
   <h4 class="text-left"> <strong style="color:rgb(255, 140, 26)">Our Tutorial Service:- </strong></h4><br><br>
  <marquee direction="left" style="color: red;" onmouseover="stop()" onmouseout="start()"><B>Read this tutorial by click on them: </B></marquee>
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
  <div class="col-sm-8"  > 
  <h4 class="text-center"> <strong style="color:rgb(255, 140, 26)">welcome to our Exam Portal </strong></h4>
  <h5 style="color:rgb(255, 140, 26)" class="text-center"><strong>Select any Subject and submit: </strong>  </h5><br>
  <form  method="post"  action="Examprocess" class="form-horizontal">
   <div class="form-group">
     <label class="control-label col-sm-1" style="color: white" > Subject:</label>    
         <div class="col-sm-3">
         <select class="form-control" name="sub"  class="text-center">
         <option>Select your subject</option>
        <option>C-Prog</option>
        <option>HTML</option>
        <option>JAVA</option>  
         </select>
         </div>
          </div>
           <div class="form-group">   
         <div class="col-sm-offset-2 col-sm-10">
       <input style="color:red" type="submit"  value="start exam" />
       </div>
        </div><hr>
     <h4 style="color:yellow"><strong>Informations: </strong>  </h4>
   <p style="color:rgb(255, 140, 26)" ><strong>1.Click the <strong  style="color:fuchsia;">"StartExam"</strong> button to start the exam. </strong>  </p>
   <p style="color:rgb(255, 140, 26)" ><strong>2. You have 10 questions. </strong>  </p>
   <p style="color:rgb(255, 140, 26)" ><strong>3. Each questions answer carry 2 Marks.No penalty for wrong answer. </strong>  </p>
   <p style="color:rgb(255, 140, 26)" ><strong>4. You have only <strong style="color:fuchsia;">50</strong> Seconds to submit your answer sheet ,either it will be submit automatically.  </strong>  </p>
   <p style="color:rgb(255, 140, 26)" ><strong>5.Don't refresh the page. </strong>  </p>
   
   
      
  </form>

  
  
  </div>
  
  
  </div>
  

</body>
</html>