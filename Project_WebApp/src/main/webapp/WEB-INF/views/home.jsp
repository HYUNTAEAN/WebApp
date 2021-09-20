<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html lang="en"> 
<head> 
  <title>Doraemon Webapp !</title> 
  <meta charset="utf-8"> 
  <meta name="viewport" content="width=device-width, initial-scale=1"> 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
<style type="text/css">
.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.main {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 15px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 30;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}
.footer {
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
	padding: 5px 0;
	text-align: center;
	color: white;
	background: blue;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 12px;}
}
</style>  
</head> 

<body> 
<nav  class="navbar  navbar-expand-md  bg-dark navbar-dark fixed-top"> 
 
<button class = "navbar-toggler" type = "button"
data-toggle = "collapse" data-target = "#collapsibleNavbar">
<span class = "navbar-toggler-icon"></span>
</button>
<div class = "collapse navbar-collapse" id = "collapsibleNavbar">
	<ul class = "navbar-nav">
	<li class = "navbar-brand"><a class = "nav-link" onclick="openNav()" cursor:pointer>&#9776;Tab</a></li>	
  	<img src = "./resources/img/weather.png" style = "width:80px;">
	<li class = "nav-item"><a class = "nav-link" href = "#">Seoul</a></li>
	<li class = "nav-item"><a class = "nav-link" href = "#">Busan</a></li>
	<li class = "nav-item"><a class = "nav-link" href = "#">Search</a></li>
	<li class = "nav-item"><a class = "nav-link" href = "#">Now playing</a>
	</li>
	
		
	</ul></div>
  <ul  class="navbar-nav"> 

    <li  class="nav-item"> 
    <a class="navbar-brand"  href="#">
  	 	<img src = "./resources/img/doraemon.png" alt = "Logo" style = "width:60px;">
 	</a> 
      <a class="navbar-brand"  href="#">Doraemon Webapp !</a> 
    </li> 
    <li  class="nav-item"> 
      <a class="nav-link"  href="#">login</a> 
    </li> 
    <li class="nav-item"> 
      <a class="nav-link" href="#">join</a> 
    </li> 
     <li class="nav-item dropdown"> 
      <a class="nav-link dropdown-toggle" href="#" id = "navbardrop" data-toggle="dropdown">
      bookmark
      </a> 
           <div class = "dropdown-menu">
      	<a class = "dropdown-item" href = "#">add</a>
        <a class = "dropdown-item" href = "#">alter</a>
      </div>
    </li> 
    <li class="nav-item dropdown"> 
      <a class="nav-link dropdown-toggle" href="#" id = "navbardrop" data-toggle="dropdown">
      setting
      </a> 
      <div class = "dropdown-menu">
      	<a class = "dropdown-item" href = "#">theme</a>
        <a class = "dropdown-item" href = "#">music</a>
      </div>
    </li> 
  </ul> 
</nav> 


<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#"></a>
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" id = "navbardrop" data-toggle="dropdown">About</a> 
      <div class = "dropdown-menu">
      	<a class = "dropdown-item" href = "#">what</a>
      </div></li>
   <li class="nav-item dropdown">
 	<a class="nav-link dropdown-toggle" href="#" id = "navbardrop" data-toggle="dropdown">Now people</a> 
      <div class = "dropdown-menu">
      	<a class = "dropdown-item" href = "#">people</a>
      </div></li>

  <li class="nav-item dropdown">
 	<a class="nav-link dropdown-toggle" href="#" id = "navbardrop" data-toggle="dropdown">Bookmark</a> 
      <div class = "dropdown-menu">
      	<a class = "dropdown-item" href = "#">bookmark</a>
      </div></li>
  <li class="nav-item dropdown">
 	<a class="nav-link dropdown-toggle" href="#" id = "navbardrop" data-toggle="dropdown">Command</a> 
      <div class = "dropdown-menu">
      	<a class = "dropdown-item" href = "#">update</a>
      	<a class = "dropdown-item" href = "#">delete</a>

      </div></li>
 <li class="nav-item dropdown">
 	<a class="nav-link dropdown-toggle" href="#" id = "navbardrop" data-toggle="dropdown">Chatting</a> 
      <div class = "dropdown-menu">
      	<a class = "dropdown-item" href = "#">chatting view</a>


      </div></li>
</div>

<div class = "main">내용</div>

<div class="footer" style="margin-bottom:0">
  <p>About us ! </p>
</div>
</body> 
</html>