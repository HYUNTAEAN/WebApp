<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>난 bgm이야</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
 	$(document).ready(function(){
		$('#radioButton').click(function(){
			var radioVal = $('input[name = "bgm"]:checked').val();
			alert(radioVal);
			
			String value1 = request.getParameter("radioVal");
			location.href = "musicsetting?radioVal="+radioVal;
		})
	}) 
	
</script> 
</head>
<body>
	<h3>bgm</h3>
	배경음악을 선택하세요 ~ just select your bgm ~
	<hr>
	<form action="goBgmdata" method="post">
		<input type="radio" name="music" value="dsong" checked>doraemon song 
		<input type="radio" name="music" value="classic">classic 
		<br><br>
		<!-- <button type="button" name="button" id="radioButton">check ! </button> -->
		<input type="submit" value="전송버튼">

		
		
		
	</form>
</body>
</html>