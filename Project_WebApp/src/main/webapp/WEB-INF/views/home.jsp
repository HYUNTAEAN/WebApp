<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<style type="text/css">

nav {
	font-size: 12pt;
	position: relative;
}

nav ul {
	padding: 0;
	margin: 0 auto;
	width: auto;
}


.uemenu {
	margin: 0;
	padding: 0;
	background-color: #EBF5FF;
}

.uemenu0 {
	color: #FFD4DF;
	position: absolute;
	z-index: 1;
}

form{
	color: #FFD4DF;
}

.uemenu00 {
	width: 5000px;
	height: 400px;
	text-align: right;
	max-width: 100%;
	background-position: right;
	background-size: cover;
	position: absolute;
	z-index: 1;
}

aside#left_menu{
	float: left;
	width: 12em;
	margin-right: 1em;
}

aside#left_menu ul {
	list-style: none;
}

aside#left_menu ul li{
	background-color: #FFD4DF;
	padding: 5px 10px;
	border: 2px solid #FFD732;
}

aside#left_menu ul li a{
	color: white;
	text-decoration: none;
}

aside#left_menu ul li:hover{
	background-color: #FF6A89;
}

section#main{
	float: left;
}

input {
	font-size: 20;
}

# imgid {
	padding-top: 20;
}

</style>
<body topmargin="0" leftmargin="0" rightmargin="0"
style="background-color: #EBF5FF">
	<table id="DO" >
	 	<tr class="uemenu">
	 		<td>
		 		&nbsp; &nbsp;<a id="uemenu0" href="home"><img alt="home"
								src="https://user-images.githubusercontent.com/86651228/133937052-a92096d4-f629-4b17-bba9-4fec084a0f86.png"
								width="180" height="70"></a>
	 		</td>
	 		<td width="480"></td>
	 		<td class="li2" align="left" id="uemenu00">
				&nbsp; &nbsp; <img id="imgid" alt="ID" src="https://user-images.githubusercontent.com/86651228/133941979-c65bb25a-44b8-49c3-a0f2-81ad59b57fcc.png" width="45" height="30"> &nbsp; 
			</td>
			<td>
				<input type="text" style="width: 100; border-bottom-style:3px soild; border-color: #6478FF; background-color: #CCE1FF;  border-radius:0.5em; -moz-border-radius: 0.5em; -webkit-border-radius: 0.5em;"> &nbsp; 
			</td>
			<td>
				<img alt="PW" src="https://user-images.githubusercontent.com/86651228/133987213-84bb3063-6b7d-4442-bacd-1d2d853052f1.png" width="45" height="30">
			</td>
			<td>		
				<input type="password" style="width: 100; border: 3px soild; border-color: #6478FF; background-color: #CCE1FF; border-radius:0.5em; -moz-border-radius: 0.5em; -webkit-border-radius: 0.5em;"> &nbsp; 
			</td>
			<td>		
				<input type="submit" value="login" style="font-weight:bold; background-color: #EBF5FF; color: #6991E1; border:3px solid; border-color: #6478FF; border-radius:0.5em; -moz-border-radius: 0.5em; -webkit-border-radius: 0.5em; "> &nbsp;
			</td>
			<td>
				<a href=""><img alt="JOIN" src="https://user-images.githubusercontent.com/86651228/133987456-67d8410b-7afc-482a-8d77-224dbcf7afeb.png" width="95" height="30"></a>
	 		</td>
	 	</tr>
	</table>
	
	
</body>
<body>
	<aside id="left_menu">
		<ul>
			<li style="color: white;"><b>MENU</b></li>
			<li><a href="mode" target="iframe1"><b>MODE</b></a></li>
			<li><a href="order" target="iframe1"><b>COMMAND</b></a></li>
		</ul>
	</aside>
	<section id="main" style= "background-color: #EBF5FF;">
		<article>
			<iframe name="iframe1" src="mode" width="1000" height="100%"></iframe>
		</article>
	</section>
	<footer></footer>
</body>
</html>
