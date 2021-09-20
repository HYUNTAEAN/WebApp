<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	System.out.println();
%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<c:set var="imagePath" value='<%=application.getRealPath("/images") %>' />
<!DOCTYPE html>
<html>
<head>
	<title> new document </title>
	<meta charset="utf-8" />
	<script>

	</script>
	<style>
	html, body {height:100%; margin:0px; padding:0px;}
	#wrap {width:1920px; height:1150px;}
	.header {
		width:100%;
		height:200px;
		background-color:#b1ebfd;
		border-bottom:2px solid #000302;
	}
	.header .title {
		position:relative;
		float:left;
		display:inline;
		margin-left:50px;
		margin-top:20px;
	}

	.header .inputWrap {
		position:relative;
		float:left;
		display:inline;
		height:200px;
		margin-left:150px;
	}
	.header .inputWrap .inputId {
		position:relative;
		float:left;
		display:inline;
		margin-left:50px;
		margin-top:50px;
		background:url('${contextPath}/images/doraemon_face1_100px.png') no-repeat;
		width:300px;
		height:100px;
	}

	.header .inputWrap .inputId .inputBox {
		width:150px;
		height:50px;
		background-color:#fef3fb;
		border:2px solid #e29dcc;
		margin-left:120px;
		margin-top:20px;
		font-size:20pt;
		text-align:center;
	}

	.header .inputWrap .login {
		position:relative;
		float:left;
		display:inline;
		background:url('${contextPath}/images/propeller_100px.png') no-repeat;
		width:100px;
		height:100px;
		margin-top:50px;
	}

	.header .inputWrap .login .text {
		position: absolute;
		display: block;
		left: 35px;
		bottom: -15px;
		font-size: 15pt;
		text-align: center;
	}

	.header .inputWrap .join {
		position:relative;
		float:left;
		display:inline;
		background:url('${contextPath}/images/join_100px.png') no-repeat;
		width:100px;
		height:100px;
		margin-top:50px;
		margin-left:200px;
	}

	.header .inputWrap .join .text {
		position: absolute;
		display: block;
		left: 35px;
		bottom: -25px;
		font-size: 15pt;
		text-align: center;
	}
	.body {position:relative; width:100%; height:100%;}
	.body .left {
		position:relative;
		float:left;
		display:inline;
		width:25%;
		height:100%;
		background-color:#f3c7e1;
		border-right:2px solid #000302;
	}
	.body .left .menu {
		width:80%;
		height:250px;
		background-color:#f5fafe;
		margin-left:40px;
		margin-top:40px;
		border:2px solid #a7b1e4;
	}

	.body .left .menu .menu_title {
		position:relative;
		display:block;
		width:200px;
		height:50px;
		margin:auto;
	}

	.body .left .menu .menu_title .img {
		position:relative;
		float:left;
		display:inline-block;
		background:url('${contextPath}/images/dorayaki_50px.png');
		width:50px;
		height:50px;
	}
	.body .left .menu .menu_title .text {
		position:relative;
		float:left;
		display:inline-block;
		font-size:20pt;
		margin:0px 10px;
	}

	.body .left .mid {
		width:80%;
		height:100px;
		background-color:#f5fafe;
		margin-left:40px;
		margin-top:40px;
		border:2px solid #a7b1e4;
	}

	.body .left .list {
		width:80%;
		height:600px;
		background-color:#f5fafe;
		margin-left:40px;
		margin-top:40px;
		border:2px solid #a7b1e4;
	}

	.body .left .list .list_title {
		position:relative;
		display:block;
		width:270px;
		height:50px;
		margin:auto;
		margin-top:25px;
	}

	.body .left .list .list_title .img {
		position:relative;
		float:left;
		display:inline-block;
		background:url('${contextPath}/images/dorayaki_50px.png');
		width:50px;
		height:50px;
	}
	.body .left .list .list_title .text {
		position:relative;
		float:left;
		display:inline-block;
		font-size:20pt;
		margin:0px 10px;
	}

	.body .left .list .conn_list {
		position:relative;
		display:block;
		width:260px;
		height:450px;
		margin:auto;
		margin-top:20px;
	}

	.body .left .list .conn_list .box {
		position:relative;
		display:block;
		width:100%;
		height:70px;
		background:url('${contextPath}/images/fist_50px.png') no-repeat 0 20px;
		border-left:2px solid #a6d2ed;
		border-right:2px solid #a6d2ed;
		border-bottom:2px solid #a6d2ed;
		text-align:center;
	}

	.body .left .list .conn_list .box:first-child {
		border-top:2px solid #a6d2ed;
	}

	.body .left .list .conn_list .box span {
		position:relative;
		display:block;
		top:10px;
		font-size:25pt;
	}

	.body .right {position:relative; float:left; display:inline; width:74.8%; height:100%; background-color:#b2f5c1;}
	</style>
</head>
<body>
<div id="wrap">
	<div class="header">
		<div class="title">
			<img src="${imagePath }/header_title.png" />
		</div>
		<div class="inputWrap">
			<div class="inputId">
				<input type="text" id="id" name="id" class="inputBox" placeholder="ID" />
			</div>
			<div class="inputId">
				<input type="password" id="pass" name="pass" class="inputBox" placeholder="PW" />
			</div>
			<a href="#" class="login">
				<span class="text">Login</span>
			</a>
			<a href="#" class="join">
				<span class="text">Join</span>
			</a>
		</div>
	</div>
	<div class="body">
		<div class="left">
			<div class="menu">
				<div class="menu_title">
					<span class="img"></span>
					<span class="text">MENU</span>
					<span class="img"></span>
				</div>
			</div>
			<div class="mid">
			</div>
			<div class="list">
				<div class="list_title">
					<span class="img"></span>
					<span class="text">접속 리스트</span>
					<span class="img"></span>
				</div>
				<div class="conn_list">
					<div class="box">
						<span>Id1</span>
					</div>
					<div class="box">
						<span>Id2</span>
					</div>
					<div class="box">
						<span>Id3</span>
					</div>
					<div class="box">
						<span>Id4</span>
					</div>
					<div class="box">
						<span>Id5</span>
					</div>
				</div>
			</div>
		</div>
		<div class="right">
		</div>
	</div>
</div>
</body>
</html>
