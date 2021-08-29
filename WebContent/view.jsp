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
<script type="text/javascript">
var varTimerInMiliseconds = 60000;
setTimeout(function(){ 
    document.getElementById("myForm").submit();
}, varTimerInMiliseconds);
</script>
<script type="text/javascript">
function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10)
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + ":" + seconds;

        if (--timer < 0) {
            timer = duration;
        }
    }, 1000);
}

window.onload = function () {
    var Minutes = 60 * 1,
        display = document.querySelector('#time');
    startTimer(Minutes, display);
};
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ques-Sheet</title>
</head>
<body >
<div class="page-header">
  <h2> <a href="#"><strong style="color: rgb(51, 204, 51)"> OnlineExam.in</strong></a></h2>
</div>
  <jsp:include page="headerfilter.jsp"></jsp:include>
  
  <div class="row">
   <div  class="col-sm-4" >
 <h2 style="color:red">Remaining time  <span id="time">01:00</span> minutes!</h2>
   </div>
  <div  class="col-sm-8" >
  
  
   <form  name="myForm" id="myForm" method="post" action="Resultprocess">
  <% int i=1; %>
  <c:forEach items="${examq}" var="examq"  >
  
  <label style="color:yellow;">Q<c:out value="${examq.getQid()}"></c:out>:- <c:out value="${examq.getQuestion()}"></c:out></label><br>
  
  <label style="color:white" ><input type="radio" name="option<%=i %>" value="<c:out value="${examq.getOption1()}"></c:out>"><c:out value="${examq.getOption1()}"></c:out></label><br> 
  
  
  <label style="color:white" ><input type="radio" name="option<%=i %>"  value="<c:out value="${examq.getOption2()}"></c:out>"><c:out value="${examq.getOption2()}"></c:out></label><br> 
 
  
  <label style="color:white" ><input type="radio" name="option<%=i %>" value ="<c:out value ="${examq.getOption3()}"></c:out>"><c:out value="${examq.getOption3()}"></c:out></label><br> 
  
  
  <label style="color:white" ><input type="radio" name="option<%=i %>" value ="<c:out value="${examq.getOption4()}"></c:out>" > <c:out value="${examq.getOption4() }"></c:out></label><br> 

  <hr>   
  <%i++; %>      
    </c:forEach> 
   
  
    <input type="submit" value="submit">
     
 </form>

  </div>
  </div>


</body>
</html>