<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+Display:ital,wght@0,300;0,400;1,200;1,400&family=Pacifico&display=swap"
	rel="stylesheet">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Top</title>

</head>
<body>
	<div class=gradient></div>
	<!-- 위쪽 바 -->
	<nav class="navbar  navbar-expand-md  bg-dark navbar-dark fixed-top">

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#collapsibleNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav">
			<li class="nav-item"><a style="font-family: 'Noto Sans Display', sans-serif;color: white;font-style: italic;">now
					playing ♪</a></li>
		</ul>
	</div>

	<c:if test="${not empty sessionScope.loginId}">

		<a
			style="font-size: 15px; font-family: 'Noto Sans Display', sans-serif; margin-right: 15px; color: black;"><span
			style="background: linear-gradient(to top, #7FFFD4 75%, transparent 50%);)">&nbsp;hello,
				<strong>${sessionScope.loginId}!&nbsp;</strong>
		</span></a>
		<!-- 		<a><img src = "./resources/img/dora.png" alt = "Logo" style = "width:120px;">
		</a> -->

		<a  href="/webapp"
			style="font-size: 30px; color: #F1F2F8; font-family: 'Pacifico'; text-shadow: -.2em .2em #4682B4;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Doraemon
			Web&nbsp;&nbsp;</a>

	</c:if> <c:choose>
		<c:when test="${empty sessionScope.loginId}">
			<a	href="/webapp"
				style="font-size: 30px; color: #F1F2F8; font-family: 'Pacifico'; text-shadow: -.2em .2em #708090;">&nbsp;&nbsp;Doraemon
				Web&nbsp;&nbsp;</a>

			<ul class="navbar-nav">



				<li class="nav-item"><a class="nav-link" href="loginForm">login</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="joinForm">join</a>
				</li>
				<li><a class = "nav-link" href="howtouse" 
	onclick="window.open(this.href, '_blank', 'width=1300, height=800'); return false;">How to
						use</a></li>
				<li class="nav-item"><a class="nav-link" href="chatdesign"></a>
				</li>
			</ul>
		</c:when>
		<c:otherwise>

			<ul class="navbar-nav">
				<li class="nav-item">
					<!-- 		    <a class="navbar-brand"  href="#">
		  	 	<img src = "./resources/img/dora.png" alt = "Logo" style = "width:120px;">
		 	</a>  --> <!-- 		      <a class="navbar-brand"  href="#">Doraemon Webapp !</a> 
 -->
				</li>
				<li class="nav-item"><a class="nav-link" href="logout">logout</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">myinfo</a></li>
				<li class="nav-item"><a class = "nav-link" href="howtouse" 
	onclick="window.open(this.href, '_blank', 'width=1300, height=800'); return false;">How to
						use</a></li>
			</ul>
		</c:otherwise>

	</c:choose>
	</nav>
</body>
</html>