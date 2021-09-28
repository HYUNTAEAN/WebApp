<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="msvalidate.01" content="B7807734CA7AACC0779B341BBB766A4E" />
<meta name="p:domain_verify" content="78ad0b4e41a4f27490d91585cb10df4a"/>
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<title>[로그인 폼]</title>

<style type="text/css">
body {
	margin: 0;
	padding: 0;
	background-size: cover;
	font-family: sans-serif;
}
.box {
	margin-left : -150px;
	margin-top:80px;
	position: absolute; top : 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 25rem;
	padding: 2.5rem;
	box-sizing: border-box;
	border: 1px solid #dadce0;
	-webkit-border-radius: 8px;
	border-radius: 8px;
	top: 50%;
}
.box h2 {
	margin: 0px 0 -0.125rem;
	padding: 0;
	color: #fff;
	text-align: center;
	color: #202124;
	font-family: 'Google Sans', 'Noto Sans Myanmar UI', arial, sans-serif;
	font-size: 24px;
	font-weight: 400;
}
.box p {
	font-size: 16px;
	font-weight: 400;
	letter-spacing: .1px;
	line-height: 1.5;
	margin-bottom: 25px;
	margin-top : 5px;
	text-align: center;
}
.box .inputBox {
	position: relative;
}
/*입력창 박스*/
.box .inputBox input {
	width: 93%;
	padding: 0.625rem 10px;
	font-size: 1rem;
	letter-spacing: 0.062rem;
	margin-bottom: 1.875rem;
	border: 1px solid #ccc;
	background: transparent;
	border-radius: 4px;
}
/*입력박스 라벨*/
.box .inputBox label {
	position: absolute;
	top: 0;
	left: 10px;
	padding: 0.625rem 0;
	font-size: 1rem;
	color: grey;
	pointer-events: none;
	transition: 0.5s;
}
/*아이디 비번 입력 박스*/
.box .inputBox input:focus ~ label, .box .inputBox input:valid ~ label,
	.box .inputBox input:not([value=""]) ~ label {
	top: -1.125rem;
	left: 10px;
	color: #1a73e8;
	font-size: 0.75rem;
	background-color: white;
	height: 10px;
	padding-left: 5px;
	padding-right: 5px;
}
/*아이디 비번 입력창 클릭시*/
.box .inputBox input:focus {
	outline: none;
	border: 2px solid #1a73e8;
}
/*입력*/
.box input[type="submit"] {
	border: none;
	outline: none;
	color: #fff;
	background-color: #1a73e8;
	padding: 0.625rem 1.25rem;
	cursor: pointer;
	border-radius: 0.312rem;
	font-size: 1rem;
	float: right;
}
/*signin 버튼*/
.box input[type="submit"]:hover {
	background-color: #287ae6;
	box-shadow: 0 1px 1px 0 rgba(66, 133, 244, 0.45), 0 1px 3px 1px
		rgba(66, 133, 244, 0.3);
}
</style>

<script type="text/javascript">
	function formCheck() {
		let id = document.getElementById("userid").value;
		let password = document.getElementById("userpwd").value;

		if (id == "") {
			alert("아이디를 입력해주세요");
			return false;
		}
		if (password == "") {
			alert("비밀번호를 입력해주세요");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<%
	String contentPage = request.getParameter("CONTENTPAGE");
	%>

	<table>
		<tr>
			<td colspan="2"><jsp:include page="top.jsp" flush="false" /></td>
		</tr>
		<tr>
			<td width="150" valign="top"><jsp:include page="left.jsp"
					flush="false" /></td>
			<td width="950" valign="top">

				<form action="login" method="post" onsubmit="return formCheck();">
				<div class="box">
                <h2>Sign in</h2>
                <p>Use your Account</p>
					<div style="margin-top: 60px;">
						<div class="inputBox">
							<input type="text" name="userid" id = "userid" value=""
								onkeyup="this.setAttribute('value', this.value);"> <label>ID</label>
						</div>
						<div class="inputBox">
							<input type="password" name="userpwd" id = "" value=""
								onkeyup="this.setAttribute('value', this.value);"> <label>Password</label>
						</div>
					</div>
					<input type="submit" name="sign-in" value="Sign In">
					</div>
				</form>
			

			</td>
			<td width="150" valign="top"><jsp:include page="chat.jsp"
					flush="false" /></td>
		</tr>
	</table>




</body>
</html>