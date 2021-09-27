<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Top</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Lobster&display=swap');
</style>
</head>
<body>
<div class = gradient></div>
<nav  class="navbar  navbar-expand-md  bg-dark navbar-dark fixed-top"> 
 
<button class = "navbar-toggler" type = "button"
data-toggle = "collapse" data-target = "#collapsibleNavbar">
<span class = "navbar-toggler-icon"></span>
</button>
<div class = "collapse navbar-collapse" id = "collapsibleNavbar">
	<ul class = "navbar-nav">
	<li class = "nav-item"><a class = "nav-link"  href = "#">now playing</a></li>	
	</ul></div>
	
	  <c:if test="${not empty sessionScope.loginId}">
		<a style="font-size:15px; font-family:'sans-serif';color:#E2E2E2;margin-right: 15px;  ">hello, ${sessionScope.loginId}!</a> 
		
	  </c:if>
	  <c:choose>
		<c:when test="${empty sessionScope.loginId}">
		<ul  class="navbar-nav"> 
		    <li  class="nav-item"> 
		    <a class="navbar-brand"  href="#">
		  	 	<img src = "./resources/img/dora.png" alt = "Logo" style = "width:120px;">
		 	</a> 
		      <a class="navbar-brand"  href="#">Doraemon Webapp !</a> 
		    </li> 
		    
		    <li  class="nav-item"> 
		      <a class="nav-link"  href="loginForm">login</a> 
		    </li> 
		    <li class="nav-item"> 
		      <a class="nav-link" href="joinForm">join</a> 
		    </li> 
		       <li class="nav-item"> 
     	 <a class="nav-link" href="#">How to use</a> 
 			   </li> 
		       <li class="nav-item"> 
     	 <a class="nav-link" href="chatdesign">(임시)챗디자인</a> 
 			   </li> 
  			</ul> 
  			  	</c:when>
		<c:otherwise>
			<ul  class="navbar-nav"> 
			<li  class="nav-item"> 
		    <a class="navbar-brand"  href="#">
		  	 	<img src = "./resources/img/dora.png" alt = "Logo" style = "width:120px;">
		 	</a> 
		      <a class="navbar-brand"  href="#">Doraemon Webapp !</a> 
		    </li> 
		    
		    <li  class="nav-item"> 
		      <a class="nav-link"  href="logout">logout</a> 
		    </li> 
		    <li  class="nav-item"> 
		      <a class="nav-link"  href="#">myinfo</a> 
		    </li> 
		    <li class="nav-item"> 
     		 <a class="nav-link" href="#">How to use</a> 
 			</li> 
 			</ul> 
		</c:otherwise>
		

	  </c:choose>
	
 
<!--  
    <li class="nav-item dropdown"> 
      <a class="nav-link dropdown-toggle" href="#" id = "navbardrop" data-toggle="dropdown">
      my page
      </a> 
      <div class = "dropdown-menu">
 
        <a class = "dropdown-item" href = "#">setting</a>
        <a class = "dropdown-item" href = "#">setting</a>
      </div>
    </li> 
     -->
     

</nav> 
</body>
</html>