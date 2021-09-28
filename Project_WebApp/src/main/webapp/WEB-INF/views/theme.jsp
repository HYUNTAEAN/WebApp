<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>MODE</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" 
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<script type="text/javascript">



</script>
<style type="text/css">

.color {
	height: 70px;
	width: 70px;
	border-radius: 30%;
    overflow: hidden;
    margin-left: 20px;
    
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
	text-align: center;
}

.tdtd {
	display: inline;
}

</style>
</head>
<body>
<div class="wrapper">
<form method="get" action="" enctype="multipart/form-data">
	<table style="text-align: center; align-content: center;" >
		<tr>
			<td class="tdd">
				<h2>Theme Color</h2>
				<div>
					<table style="text-align: center;">
						<tr class="tdtd">
							<td>
								<img class="color" alt="red" src="https://user-images.githubusercontent.com/86651228/134537610-6eb885b9-20f1-4302-8e05-01a0deb5f511.jpg">
							</td>
							<td>
								<img class="color" alt="yellow" src="https://user-images.githubusercontent.com/86651228/134538278-58deb091-7ce6-4e50-9df1-e79808b17fcb.jpg">
								</td>
								<td>
								<img class="color" alt="green" src="https://user-images.githubusercontent.com/86651228/134538745-b03da666-6dce-48e0-aa5c-b1657b6d96c5.jpg">
								</td>
								
								<td>
								<img class="color" alt="blue" src="https://user-images.githubusercontent.com/86651228/134538853-94ae5358-2ec9-443f-95f2-482a1fcd0223.jpg">
								</td>
								<td>
								<img class="color" alt="dark" src="https://user-images.githubusercontent.com/86651228/134538939-e6e3c341-5b68-4fd3-a058-39f20d0c63a0.jpg">
								</td>
						</tr>
						<tr class="tdtd">
							<td style="padding-right: 20px;">
							
							</td>
							<td>
								<input type="button" name="chk_theme" value="red" class="btn btn-outline-danger"> 
							</td>
							<td style="padding-left: 27px;">
								 
							</td>
							<td>
								<input type="button" name="chk_theme" value="yellow" class="btn btn-outline-warning">
							</td>
							<td style="padding-left: 27px;">
								 
							</td>
							<td>
								<input type="button" name="chk_theme" value="green" class="btn btn-outline-success">
							</td>
							<td style="padding-left: 27px;">
								 
							</td>
							<td>
								<input type="button" name="chk_theme" value="blue" class="btn btn-outline-info"> 
							</td>
							<td style="padding-left: 27px;">
								 
							</td>
							<td>
								<input type="button" name="chk_theme" value="dark" class="btn btn-outline-dark"> 
							</td>
							
						</tr>
					</table>
					<br>
				</div>
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