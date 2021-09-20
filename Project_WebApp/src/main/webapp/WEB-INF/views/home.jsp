red.ver

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

//추가건 script 시작
    $(function () {
        $(".left_sub_menu").hide();
        $(".has_sub").click(function () {
            $(".left_sub_menu").fadeToggle(300);
        });
        // 왼쪽메뉴 드롭다운
        $(".sub_menu ul.small_menu").hide();
        $(".sub_menu ul.big_menu").click(function () {
            $("ul", this).slideToggle(300);
        });
        // 외부 클릭 시 좌측 사이드 메뉴 숨기기
        $('.overlay').on('click', function () {
            $('.left_sub_menu').fadeOut();
            $('.hide_sidemenu').fadeIn();
        });
    });
//추가건 script 끝
</script>

<style type="text/css">

.footer {
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
	padding: 8px 0;
	text-align: center;
	color: white;
	background: blue;
}

 .side-menu {
            top: 50px;
            width: 45px;
            z-index: 10;
            background: #0000FF;
            border-right: 1px solid rgba(0, 0, 0, 0.07);
            bottom: 50px;
            height: 100%;
            margin-bottom: -70px;
            margin-top: 0px;
            padding-bottom: 70px;
            position: fixed;
            box-shadow: 0 0px 24px 0 rgb(0 0 0 / 6%), 0 1px 0px 0 rgb(0 0 0 / 2%);
        }

        .sidebar-inner {
            height: 100%;
            padding-top: 30px;
        }

        #sidebar-menu,
        #sidebar-menu ul,
        #sidebar-menu li,
        #sidebar-menu a {
            border: 0;
            font-weight: normal;
            line-height: 1;
            list-style: none;
            margin: 0;
            padding: 0;
            position: relative;
            text-decoration: none;
        }

        #sidebar-menu>ul>li a {
            color: #fff;
            font-size: 15px;
            display: block;
            padding: 17px 0px;
            margin: 20px 0px 0px 8px;
            border-top: 1px solid rgba(0, 0, 0, 0.1);
            border-bottom: 1px solid rgba(255, 255, 255, 0.05);
            width: 15px;
            cursor: pointer;
        }

        #sidebar-menu .fas {
            padding-left: 5px;
        }

        /* 사이드 메뉴 */
        input[type="search"] {
            width: 180px;
            margin: 0 auto;
            margin-left: 9px;
            border: 2px solid #797979;
            font-size: 14px;
            margin-top: 10px;
            padding: 4px 0 4px 14px;
            border-radius: 50px;
        }

        .left_sub_menu {
            position: fixed;
            top: 50px;
            width: 200px;
            z-index: 10;
            left: 45px;
            background: white;
            border-right: 1px solid rgba(0, 0, 0, 0.07);
            bottom: 50px;
            height: 100%;
            margin-bottom: -70px;
            margin-top: 0px;
            padding-bottom: 0px;
            box-shadow: 0 0px 24px 0 rgb(0 0 0 / 6%), 0 1px 0px 0 rgb(0 0 0 / 2%);
            color: black;
        }

        .sub_menu {
            margin-top: 50px;
        }

        .left_sub_menu>.sub_menu li:hover {
            color: 0000FF;
            background-color: #e1e1e1;
        }

        .left_sub_menu>.sub_menu li {
            color: #333;
            font-size: 17px;
            font-weight: 200;
            padding: 20px 0px 8px 14px;
            border-bottom: 1px solid #e1e1e1;
        }

        .sub_menu>h2 {
            padding-bottom: 4px;
            border-bottom: 3px solid #0000FF;
            margin-top: 30px;
            font-size: 20px;
            font-weight: 600;
            color: #333;
            margin-left: 10px;
            margin-right: 10px;
            font-family: 'NotoKrB';
            line-height: 35px;
        }

        .sub_menu .fas {
            color: #0000FF;
            font-size: 10px;
            line-height: 20px;
            float: right;
            margin-right: 20px;
        }

        .sub_menu>.big_menu>.small_menu li {
            color: #333;
            font-size: 14px;
            font-weight: 600;
            border-bottom: 0px solid #0000FF;
            margin-left: 14px;
            padding-top: 8px;
        }

        .big_menu {
            cursor: pointer;
        }

        ul {
            padding-inline-start: 0px;
        }

        a {
            color: #797979;
            text-decoration: none;
            background-color: transparent;
        }

        ul {
            list-style: none;
        }

        ol,
        ul {
            margin-top: 0;
            margin-bottom: 10px;
        }

        .has_sub {
            width: 100%;
        }

        .overlay {
            position: fixed;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.7);
        }

        .hide_sidemenu {
            display: none;
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
  	<img src = "./resources/img/weather.png" style = "width:80px;">
	<li class = "nav-item"><a class = "nav-link" href = "#">Seoul</a></li>
	<li class = "nav-item"><a class = "nav-link" href = "#">Busan</a></li>
	<li class = "nav-item"><a class = "nav-link" href = "#">Incheon</a></li>
	<li class = "nav-item"><a class = "nav-link" href = "#">Search</a></li>	
	<li class = "nav-item"><a class = "nav-link" href = "#">now playing</a></li>	
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
  <ul>now playing</ul>
</nav> 

<!--  여기부터 -->
<div id="wrapper">
        <div class="topbar" style="position: absolute; top:0;">
            <!-- 왼쪽 메뉴 -->
            <div class="left side-menu">
                <div class="sidebar-inner">
                    <div id="sidebar-menu">
                        <ul>
                            <li class="has_sub"><a href="javascript:void(0);" class="waves-effect">
                                <i class="fas fa-bars">tab !</i>
                            </a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 왼쪽 서브 메뉴 -->
            <div class="left_sub_menu">
                <div class="sub_menu">
                    <input type="search" name="SEARCH" placeholder="SEARCH">
                    <h2>welcome !</h2>
                    <ul class="big_menu">
                        <li>bookmark<i class="arrow fas fa-angle-right"></i></li>
                        <ul class="small_menu">
                            <li><a href="#">add</a></li>
                            <li><a href="#">update</a></li>
                        </ul>
                    </ul>
                    <ul class="big_menu">
                        <li>now people</li>
                    </ul>
                    <ul class="big_menu">
                        <li>command<i class="arrow fas fa-angle-right"></i></li>
                        <ul class="small_menu">
                            <li><a href="#">add</a></li>
                            <li><a href="#">update</a></li>
                        </ul>
                    </ul>
                    <ul class="big_menu">
                        <li>chatting<i class="arrow fas fa-angle-right"></i></li>
                    </ul>
                </div>
            </div>
            <div class="overlay"></div>
        </div>

<!--  여기까지 -->


<div class = "main">내용</div>

  <p>About us ! </p>
</div>
</body> 
</html>