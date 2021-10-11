<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="${contextPath }/resources/css/content.css" />
<style type="text/css">
</style>
<script type="text/javascript">
$(document).on("mouseover", ".bookmark .site a", function(e) {
	$(this).closest(".site").addClass("over").siblings(".site").removeClass("over");
});

$(document).on("mouseout", ".bookmark .site a", function(e) {
	$(".bookmark .site").removeClass("over");
});

$(document).on("click", "#add", function(e) {
	console.log("add");
	$(".modals").fadeIn();
});

$(document).on("click", "#cancel", function(e) {
	console.log("remove");
	$(".modals").fadeOut();
});

$(document).on("click", "#confirm", function(e) {
	let siteName = $("#siteName").val();
	let bookUrl = $("#bookUrl").val();

	if (!siteName) {
		alert("사이트 이름을 입력해주세요");
		$("#siteName").focus();
		return false;
	}
	
	if (!bookUrl) {
		alert("URL을 입력해주세요");
		$("#bookUrl").focus();
		return false;
	}

	$.ajax({
		async : true,
		url : "${contextPath}/addBookmark",
		data : {siteName : siteName, bookUrl : bookUrl},
		type : "post",
		success : function(data) {
			if (Number(data.result) == 1) {
				let num = $(".bookmark .mark").length;
				let url = "http://"+bookUrl;
				let div = $("<div>").addClass("site mark")
					.append($("<a>", {href:url})
						.append($("<img>").prop("src", "${contextPath}/resources/img/doraemon_icon/dora" + (num + 1) + ".png"))
						.append($("<span>").addClass("text").text(siteName))
					)
				$(div).prependTo(".bookmark");			
			}
		},
		error : function(xhr, status, res) {
			console.log("실패");
			console.log(xhr, status, res);	
		}
	})
	$("#siteName").val("");
	$("#bookUrl").val("");
	$(".modals").fadeOut();
});
</script>
</head>
<body>

<br><br><br><br>
	<div class="bookmark">
	<c:forEach var="bookmark" items="${bookmarkList }">
		<div class="site mark">
			<a href="http://${bookmark.bookUrl }">
				<img src="${contextPath }/resources/img/doraemon_icon/dora${bookmark.orderNo }.png" />
				<span class="text">${bookmark.siteName }</span>
			</a>
		</div>
	</c:forEach>
		<div class="site">
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
					<input type="text" id="bookUrl" name="bookUrl" placeholder="URL" />
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