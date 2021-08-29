<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/jquery-3.3.1.min.js"></script>
<title>Registration Form</title>

</head >
<body style="background-color:rgb(0, 102, 0)">
<div class="page-header">
  <h2><a href="#">  <strong style="color:white"> OnlineExam.in</strong></a></h2>
</div>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
   <ul class="nav navbar-nav">
      <li class="active"><a href="home.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>
      <li><a href="#">MakeQues</a></li>
      <li><a href="#">TakeExam</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Register.jsp"><span class="glyphicon glyphicon-user"></span> Registration</a></li>
      <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
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
  <div class="col-sm-8" style="background-color:rgb(0, 0, 102)"> 
                 <%
                 if(request.getAttribute("success")!=null){
 					out.print("<font size='2' color='white' >");
 					out.print(request.getAttribute("success"));
 					out.print("</font>");
 					}
  
                   %>
  <p class="text-left"> <strong style="color:rgb(255, 198, 179)">Registration..</strong></p>
  <form method="post" class="form-horizontal" action="Registerprocess"  >
  
    <div class="form-group">
      <label class="control-label col-sm-2" for="username"><strong style="color:rgb(242, 242, 242)">User Name:</strong></label>
      <div class="col-sm-5">
        <input type="text" class="form-control" id="username" placeholder="Enter User Name" name="uname" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd"><strong style="color:rgb(242, 242, 242)">Password:</strong></label>
      <div class="col-sm-5">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="upass"  />
      </div>
    </div>
    
    <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
       <button  type="submit" class="btn btn-default"><strong>Register</strong></button>
        
    </div>
  </div><br><br><br><br><br><br><br><br>
  </form>
  
  </div>
</div>


</body>
</html>