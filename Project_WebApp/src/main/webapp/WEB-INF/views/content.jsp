<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function goNaver(){
	$('#frmContent').attr('src', "http://172.30.1.47:8089/")
	
}
function backPage(){
	
}
</script>
</head>
<body>
	<br><br><br>
	<h1>가운데입니다</h1>
	<div id="webContent" style="border: solid;">
		<iframe id="frmContent" src="https://news.naver.com/" width="100%" height="500"></iframe>
		
		
	</div>
	<input type="button" id="backPage" value="뒤로" onclick="backPage();">
	<input type="button" id="naverBtn" value="변경" onclick="goNaver();">
</body>
</html>