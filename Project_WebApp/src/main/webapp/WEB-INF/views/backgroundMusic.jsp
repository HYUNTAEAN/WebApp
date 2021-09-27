<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Background Music</title>
<style type="text/css">
table {
    top: 100px;
    left: 100px;
    width: 600px;
    padding: 0px 0px;
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

h4 {
	color: #FFFFFF;
	background-color: rgba( 6, 29, 40, 0.2 );
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

pre {
	display:inline;
}
</style>
</head>
<body>
	<table style="text-align: center;" class="tdd">
		<tr>
			<td>
				<h2>Background Music</h2> 
				<h4>Background Music list</h4> <!-- 모양만 낸 것. 추후 수정 -->
				<div align="left">
					<pre> 	   Music Name         	         Singer </pre>
				</div>
				<input type="text" value="Music Name" style="width: 30%" disabled>
				<input type="text" value="Singer" style="width: 20%" disabled>
				<input type="button" class="btn0" value="modify">
				<input type="button" class="btn0" value="Delete">
				<br>
				<br>
			</td>
		</tr>
	
		<tr>
			<td >
				<h4>New Background Music</h4>
					<label class="bgi" for="backgroundImg">upload</label>
					<input type="text" id="fileName"  name="fileName" readonly>
					<input type="file" id="backgroundImg" name="upFile" accept="audio/mp3" style="display: none" onchange="javascript:document.getElementById('fileName').value = this.value">
					<input class="btn0" type="submit" value="submit">
			</td>
		</tr>
	</table>


</body>
</html>