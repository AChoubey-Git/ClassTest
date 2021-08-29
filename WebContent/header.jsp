<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/jquery-3.3.1.min.js"></script>
<title>OnlineExam.in</title>
</head>
<body  style="background-color:rgb(51, 51, 0)">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
   <ul class="nav navbar-nav">
      <li class="active"><a href="home.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>
      <li><a href="makequescheck.jsp">MakeQues</a></li>
      <li><a href="takeexam.jsp">TakeExam</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="home.jsp"> <span class="glyphicon glyphicon-user"></span> <c:out value = "${sessionScope.user.getUname()}"></c:out></a>  </li>
      <li><a href="LogoutServ"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      
    </ul>
  </div>
</nav>