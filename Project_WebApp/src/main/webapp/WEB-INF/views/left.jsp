<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap"
	rel="stylesheet">

<html lang="en">
<head>
<title>Left</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+Display:ital,wght@0,300;0,400;1,200;1,400&family=Pacifico&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<script>



function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}



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
    
    $.ajax({
		url:'weather'
		, method:'GET'
		, success : function(resp){
			console.log(data);
            
		}
	});
});


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
/*왼쪽 바*/
.side-menu {
	top: 50px;
	width: 90px;
	z-index: 10;
	background: #316AB1;
	border-right: 1px solid rgba(0, 0, 0, 0.07);
	bottom: 50px;
	height: 100%;
	margin-bottom: -70px;
	margin-left: -2px; margin-top : 0px;
	padding-bottom: 70px;
	position: fixed;
	box-shadow: 0 0px 24px 0 rgb(0 0 0/ 6%), 0 1px 0px 0 rgb(0 0 0/ 2%);
	margin-top: 0px;
}

/*귀여운 그라데이션 바
background: linear-gradient(137deg, #fff6b7, #f77c99, #6578f2, #c2ffd8); background-size: 800% 800%; -webkit-animation: AnimationName 16s ease infinite; -moz-animation: AnimationName 16s ease infinite; -o-animation: AnimationName 16s ease infinite; animation: AnimationName 16s ease infinite; @-webkit-keyframes AnimationName { 0%{background-position:0% 50%} 50%{background-position:100% 50%} 100%{background-position:0% 50%} } @-moz-keyframes AnimationName { 0%{background-position:0% 50%} 50%{background-position:100% 50%} 100%{background-position:0% 50%} } @-o-keyframes AnimationName { 0%{background-position:0% 50%} 50%{background-position:100% 50%} 100%{background-position:0% 50%} } @keyframes AnimationName { 0%{background-position:0% 50%} 50%{background-position:100% 50%} 100%{background-position:0% 50%} } 
 .gradient { height:55px; color: #fff; background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab); background-size: 400% 400%; animation: AnimationName 15s ease infinite; display: flex; flex-direction: column; align-items: center; justify-content: center; top: 35%; text-align: center; }*/
.sidebar-inner {
	height: 100%;
	padding-top: 30px;
}

#sidebar-menu, #sidebar-menu ul, #sidebar-menu li, #sidebar-menu a {
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
	padding-left: 3px;
}

/* 사이드 메뉴 */
/*search 테두리 선*/
input[type="search"] {
	width: 220px;
	margin: 0 auto;
	margin-left: 20px;
	border: 2px solid #316AB1;
	font-size: 14px;
	margin-top: 10px;
	padding: 4px 0 4px 14px;
	border-radius: 50px;
}
/*클릭 탭 배경 부분*/
.left_sub_menu {
	overflow-y: scroll;
	position: fixed;
	top: 50px;
	width: 300px;
	z-index: 10;
	left: 90px;
	background: white;
	border-right: 1px solid rgba(0, 0, 0, 0.07);
	bottom: 50px;
	height: 650px;
	margin-bottom: -70px;
	margin-top: 0px;
	padding-bottom: 0px;
	box-shadow: 0 0px 24px 0 rgb(0 0 0/ 6%), 0 1px 0px 0 rgb(0 0 0/ 2%);
	color: black;
}
/*메인 스크롤바 안보이게*/
.left_sub_menu::-webkit-scrollbar {
	display: none; /* Chrome, Safari, Opera*/
}

.sub_menu {
	margin-top: 50px;
}
/*클릭탭 > 세브메뉴 hover부분 > 글씨와 배경컬러*/
.left_sub_menu>.sub_menu li:hover {
	color: 316AB1;
	background-color: #e1e1e1;
}
/*클릭탭 > 서브메뉴 > 줄*/
.left_sub_menu>.sub_menu li {
	color: #333;
	font-size: 16px;
	font-weight: 200;
	padding: 15px 10px 10px 14px;
	border-bottom: 1px solid #316AB1;
}
/*welcome 아래 줄 부분*/
.sub_menu>h2 {
	padding-bottom: 4px;
	border-bottom: 3px solid #316AB1;
	margin-top: 30px;
	font-size: 20px;
	font-weight: 600;
	color: #333;
	margin-left: 10px;
	margin-right: 10px;
	font-family: 'NotoKrB';
	line-height: 35px;
}
/*도라에몽 머리 버튼?fasbars*/
.sub_menu .fas {
	color: #316AB1;
	font-size: 10px;
	line-height: 20px;
	float: right;
	margin-right: 1px;
}

/*클릭탭 > 서브메뉴 > 서브서브메뉴 글씨 사이즈*/
.sub_menu>.big_menu>.small_menu li {
	color: #333;
	font-size: 14px;
	font-weight: 600;
	border-bottom: 0px solid #316AB1;
	margin-left: 14px;
	padding-top: 8px;
}

/**/
.big_menu {
	cursor: pointer;
}
/**/
ul {
	padding-inline-start: 0px;
}
/*클릭탭 > 서브메뉴 > 서브서브메뉴 글씨 컬러*/
a {
	color: #316AB1;
	text-decoration: none;
	background-color: transparent;
}
/**/
ul {
	list-style: none;
}
/**/
ol, ul {
	margin-top: 0;
	margin-bottom: 10px;
}
/**/
.has_sub {
	width: 100%;
}
/*제일 가운데 배경*/
.overlay {
	position: fixed;
	width: 100%;
	height: 100%;
	margin-top: 100px;
	margin-left: 120px;
}
/**/
.hide_sidemenu {
	display: none;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 12px;
	}
}
</style>
</head>

<body>




	<!--  여기부터 -->
	<div id="wrapper">
		<div class="topbar" style="position: absolute; top: 0;">
			<!-- 왼쪽 메뉴 -->
			<div class="left side-menu">
				<div class="sidebar-inner ">
					<div id="sidebar-menu">
						<ul>
							<li class="has_sub"><a href="javascript:void(0);"
								class="waves-effect"> <i class="fas fa-bars"> <img
										src="./resources/img/dora2.png" style="width: 60px;">
								</i>


							</a></li>
							<p
								style="font-size: 17px; font-family: 'Noto Sans Display', sans-serif; font-weight: bolder; color: #B0C4DE; margin-left: 10px;">
								Today is&nbsp;&nbsp;&nbsp; <span
									style="background: linear-gradient(to top, #191970 80%, transparent 50%);)"><strong
									style="font-size: 30px; color: #ffffff; text-shadow: 2px 2px 2px #696969; font-family: 'Noto Sans Display', sans-serif;">${a}</strong></span>
							</p>

							<p class="weathertab">${b}</p>
							<p class="weathertab">${c}</p>
						</ul>
					</div>
				</div>
			</div>

			<!-- 왼쪽 서브 메뉴 -->
			<div class="left_sub_menu">
				<div class="sub_menu">
					<input type="search" name="SEARCH" placeholder="SEARCH">

					<h2>
						<img src="./resources/img/join.png" style="width: 60px;">
						welcome !
					</h2>

					<ul class="big_menu">
						<li>bookmark</li>
					</ul>

					<ul class="big_menu">
						<li><a href="command">command</a></li>
					</ul>


					<ul class="big_menu">
						<li>setting<i class="arrow fas fa-angle-right"></i></li>
						<ul class="small_menu">
							<li><a href="theme">mode</a></li>
							<li><a href="backgroundMusic">backgroundmusic</a></li>
						</ul>
					</ul>


				</div>

				<div class="sub_menu">
					<h2>
						<img src="./resources/img/dorayaki.png" style="width: 60px;">
						linked-member
					</h2>

					<div
						style="text-align: center; textbackground-color: #F1F1F1; padding-top: 5px; padding-bottom: 10px; margin: 0 auto; margin-bottom: 30px; font-size: 15px;">
						<p style="font-weight: bold;">* now 8 people</p>
						<div
							style="height: 200; padding-top: 10px; text-align: center; background-color: #EFEFEF; overflow-y: scroll; margin: 0 auto; font-size: 13px; width: 200px;">
							<p>zannabi95</p>
							<p>kimddutdol</p>
							<p>fallvacation</p>
							<p>kimsawal88</p>
							<p>kyungjaehwan</p>
							<p>blackskirt</p>
							<p>giduck123</p>
						</div>
					</div>
					<!--접속자수 스크린샷 </div>
                  <center><img src = "./resources/img/member.png" style = "width:200px;"></center>
                </div>
 -->

					<div class="sub_menu">
						<h2>
							<img src="./resources/img/bye.png" style="width: 60px;">
							chatting !
						</h2>
						<center>
							<img src="./resources/img/chat.png" style="width: 200px;">
						</center>
					</div>

					<div class="sub_menu">
						<h2>
							<img src="./resources/img/peng.png" style="width: 60px;">
							About Us
						</h2>
						<div style="text-align: center; padding-top: 10px">
							<span
								style="font-family: 'Pacifico'; font-size: 22px; background: linear-gradient(to top, #7FFFD4 75%, transparent 50%);)">Contact
								me ! </span>
						</div>
						<div
							style="text-align: center; padding-top: 10px; font-family: 'Noto Sans Display', sans-serif;">doraemon@naver.com</div>
						<div
							style="text-align: center; padding-top: 10px; font-family: 'Noto Sans Display', sans-serif;">doraemon@google.co.kr</div>

					</div>

				</div>


			</div>
</body>
</html>