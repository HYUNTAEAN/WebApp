<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
.bookmark {
	position:relative;
	width:100%;
	height:600px;
}
.bookmark .site {
	position:relative;
	float:left;
	display:inline-block;
	width:110px;
	height:140px;
	margin-bottom:50px;
	margin-left:100px;
}
.bookmark .over {
	background-color:#ffe7e7;
	border:1px solid transparent;
    border-radius:10px;
}
.bookmark .site a {
	position:relative;
	display:block;
	width:100%;
	height:100%;
	text-decoration:none;
}
.bookmark .site a img {
	width:100px;
}
.bookmark .site a span.text {
	position:relative;
	display:block;
	width:100px;
	top:10px;
	text-align:center;
	font-size:11pt;
	font-weight:bold;
}
</style>
<script type="text/javascript">
$(document).on("mouseover", ".bookmark .site a", function(e) {
	$(this).closest(".site").addClass("over").siblings(".site").removeClass("over");
});

$(document).on("mouseout", ".bookmark .site a", function(e) {
	$(".bookmark .site").removeClass("over");
});

$(document).on("click", "#add", function(e) {
	$(".modals").fadeIn();
});

$(document).on("click", "#confirm, #cancel", function(e) {
	$(".modals").fadeOut();
});
</script>
</head>
<body>

<br><br><br><br>
	<div class="bookmark">
		<div class="site">
			<a href="#">
				<img src="${contextPath }/resources/img/doraemon_icon/dora1.png" />
				<span class="text">네이버</span>
			</a>
		</div>
		<div class="site add">
			<a href="#">
				<img src="${contextPath }/resources/img/doraemon_icon/dora2.png" />
				<span class="text">네이버</span>
			</a>
		</div>
		<div class="site add">
			<a href="#">
				<img src="${contextPath }/resources/img/doraemon_icon/dora3.png" />
				<span class="text">네이버</span>
			</a>
		</div>
		<div class="site add">
			<a href="#">
				<img src="${contextPath }/resources/img/doraemon_icon/dora4.png" />
				<span class="text">네이버</span>
			</a>
		</div>
		<div class="site add">
			<a href="#">
				<img src="${contextPath }/resources/img/doraemon_icon/dora5.png" />
				<span class="text">네이버</span>
			</a>
		</div>
		<div class="site add">
			<a href="#">
				<img src="${contextPath }/resources/img/doraemon_icon/dora6.png" />
				<span class="text">네이버</span>
			</a>
		</div>
		<div class="site add">
			<a href="#">
				<img src="${contextPath }/resources/img/doraemon_icon/dora7.png" />
				<span class="text">네이버</span>
			</a>
		</div>
		<div class="site add">
			<a href="#" id="add">
				<img src="${contextPath }/resources/img/doraemon_icon/dora15.png" />
				<span class="text">바로가기 추가</span>
			</a>
		</div>
	</div>
	<div class="modals">
		<div class="modal_content">
			<div class="header">
				<span class="text">바로가기 추가</span>
			</div>
			<div class="content">
				<div class="siteBox">
					<input type="text" id="siteName" name="siteName" placeholder="사이트명" />
				</div>
				
				<div class="urlBox">
					<input type="text" id="url" name="url" placeholder="URL" />
				</div>
			</div>
			<div class="buttons">
				<input type="button" id="cancel" value="취소" />
				<input type="button" id="confirm" value="확인" />
			</div>
		</div>
	</div>
</body>
</html>