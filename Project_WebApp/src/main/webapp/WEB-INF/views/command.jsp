<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>command</title>


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

pre {
	display:inline;
}

</style>
</head>
<body>
<br><br><br>
	<table style="text-align: center;" class="tdd">
		<tr>
			<td>
				<h2>Command</h2> 
				<h4>Command list</h4> <!-- 모양만 낸 것. 추후 수정 -->
				<div align="left">
					<pre>  Command Name         Command Add </pre>
				</div>
				<input type="text" value="/Command Name" style="width: 20%" disabled>
				<input type="text" value="Command Add" style="width: 50%" disabled>
				<input type="button" class="btn0" value="modify">
				<input type="button" class="btn0" value="Delete">
				<br>
				<br>
			</td>
		</tr>
		<tr>
			<td>
				<h4>New Command</h4>
				<div align="left">
				<pre>         Command Name</pre>
				<input type="text" style="width: 20%">
				</div>
				<br>
				<div align="left">
				<pre>         Commmand Add</pre>
				<input type="text" style="width: 65%">
				<br>
				</div>
				<input class="btn0" type="submit" value="submit">
			</td>
		</tr>
	</table>
</body>
</html>