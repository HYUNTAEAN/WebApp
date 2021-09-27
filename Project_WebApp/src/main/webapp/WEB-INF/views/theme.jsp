<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MODE</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" 
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
		
<script type="text/javascript">
$(function () {
	$(".color").on("mouseover", function () {
		$(this).css("cursor", "pointer");
		$(this).css("outline", "#1E6EC7")
		.css("color", "white");
	});
	$(".color").on("mouseout", function () {
		$(this).css("outline", "white")
		.css("color", "#1E6EC7");
	});
});


</script>
<style type="text/css">

.color {
	height: 70px;
	width: 70px;
	border-radius: 30%;
    overflow: hidden;
    margin-left: 20px;
}

[type=radio]{
	position: absolute;
	opacity: 0;
	width: 0;
	height: 0;
}

[type=radio] + label {
	cursor: pointer;
}

.color:focus{
	outline: 4px soild black;
}

.btn0 {
	border: none;
	font-size: 17px;
	color: #FFFFFF;
	text-align: center;
	cursor: pointer;
	background-color: rgba( 6, 29, 40, 0.5 );
}

.btn0:focus {
	color:  rgba( 6, 29, 40, 0.7 );
	background-color: #FFFFFF;
}

.bgi {
	padding-left: 2px;
	padding-right: 2px;
	color: #FFFFFF;
	cursor: pointer;
	background-color:  rgba( 6, 29, 40, 0.5 );
}

table {
     top: 100px;
     left: 100px;
     width: 600px;
     padding: 50px 0px;
     border-radius: 20px;
}

.tdd {
     border: 0px solid #ff9800;
     border-radius: 5px;
     background-color: rgba( 2, 84, 126, 0.5 );
}

h2 {
	color: #FFFFFF;
	background-color: rgba( 6, 29, 40, 0.5 );
}

</style>
</head>
<body>
<div class="wrapper">
<form method="get" action="" enctype="multipart/form-data">
	<table style="text-align: center;" >
		<tr>
			<td class="tdd">
				<h2>Theme Color</h2>
		
					<input type="radio" name="chk_theme" value="red"><label><img class="color" alt="red" src="https://user-images.githubusercontent.com/86651228/134537610-6eb885b9-20f1-4302-8e05-01a0deb5f511.jpg"></label>
					<input type="radio" name="chk_theme" value="orange"><label><img class="color" alt="orange" src="https://user-images.githubusercontent.com/86651228/134538278-58deb091-7ce6-4e50-9df1-e79808b17fcb.jpg"></label>
					<input type="radio" name="chk_theme" value="green"><label><img class="color" alt="green" src="https://user-images.githubusercontent.com/86651228/134538745-b03da666-6dce-48e0-aa5c-b1657b6d96c5.jpg"></label>
					<input type="radio" name="chk_theme" value="blue"><label><img class="color" alt="blue" src="https://user-images.githubusercontent.com/86651228/134538853-94ae5358-2ec9-443f-95f2-482a1fcd0223.jpg"></label>
					<input type="radio" name="chk_theme" value="dark"><label><img class="color" alt="dark" src="https://user-images.githubusercontent.com/86651228/134538939-e6e3c341-5b68-4fd3-a058-39f20d0c63a0.jpg"></label>
					
					<p><input class="btn0" type="submit" value="submit"></p>
			</td>
		</tr>
		<tr>
			<td>
				<br>
			</td>
		</tr>
		<tr>
			<td class="tdd">
				<h2> Background Img </h2>
					<label class="bgi" for="backgroundImg">upload</label>
					<input type="text" id="fileName"  name="fileName" readonly>
					<input type="file" id="backgroundImg" name="upFile" accept="image/png, image/jepg" style="display: none" onchange="javascript:document.getElementById('fileName').value = this.value">
					<input class="btn0" type="submit" value="submit">
			</td>
		</tr>
	</table>
</form>
</div>

</body>
</html>