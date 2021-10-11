<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>command</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" 
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript">
function deleteCmd(seq){
	
	var cseq = seq;
	
	if(!confirm("정말 삭제하시겠습니까?")){
		alert("취소되었습니다.");
	}else{
		location.href = "deleteCmd?cseq=" + cseq;
		alert("삭제되었습니다.");
	}
}
</script>
<script>
function newCommand(){
	let command = $('#command').val();
	let commandurl = $('#commandurl').val();
	
	if(command == '') {
		alert("명령어 이름을 입력 해 주세요.");
		return;
	}
	
	if(commandurl == '') {
		alert("명령어 실행 주소를 입력 해 주세요.");
		return;
	}
	location.href="newCommand?cmdname="+command+"&commandurl="+commandurl;
}
</script>
<script>
var cmdCheck = 0;

function checkCmd(){
	var inputed = $('.cmd').val();
	$.ajax({
		data: {
			cmd : inputed	
		},
		url : "checkCmd.jy",
		success : function(data) {
			if(inputed == "" && data =='0') {
				$("#sbtn").prop("disabled", true);
				$("#sbtn").css("background-color", "#aaaaaa");
				$("#command").css("background-color", "#FFCECE");
				cmdCheck = 0;
			} else if (data == '0'){
				$("#command").css("background-color", "#B0F6AC");
				cmdCheck = 1;
				if(cmdCheck == 1){
					$("#sbtn").prop("disabled", false);
                    $("#sbtn").css("background-color", "rgba( 6, 29, 40, 0.5 )");
				} 
			} else if (data == '1') {
                    $("#sbtn").prop("disabled", true);
                    $("#sbtn").css("background-color", "#FFFFFF");
                    $("#command").css("background-color", "#FFCECE");
                    cmdCheck = 0;
			}
		}
	})
}


</script>


<style type="text/css">

.tdd {
	top: 100px;
    left: 100px;
    width: 600px;
    padding: 0px 0px;
    border: 0px solid #ff9800;
    border-radius: 5px;
    background-color: rgba( 2, 84, 126, 0.5 );
}

.hh2 {
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
<table>
<tr>
	<td colspan="2"><jsp:include page="top.jsp" flush="false" /></td>
</tr>
<tr>
	<td width="150" valign="top"><jsp:include page="left.jsp"
					flush="false" /></td>
</tr>
</table>

	<table style="text-align: center;margin-left: 335px; margin-top:108px;" class="tdd">
		<tr>
			<td width="950">
				<h2 class="hh2">Command</h2> 
				<h4>Command list</h4>
				<div align="left">
					<pre>  Command Name         Command url </pre>
				</div>
				<c:forEach items="${list }" var="Com" >
					<input type="text" value="${Com.command }" style="width: 20%" disabled>
					<input type="text" value="${Com.commandurl }" style="width: 50%" disabled>
					<input type="button" class="btn0" value="Delete" onclick="deleteCmd(${Com.cseq })">
					<br><br>
				</c:forEach>
				<br>
				<br>
			</td>
		</tr>
		<tr>
			
		</tr>
		<tr>
			<td>
				<h4>New Command</h4>
					<div align="left" style="display:inline;">
						<pre>  Command Name         Commmand url</pre>
					</div>
					<div align="left" style="display:inline;">
						<input type="text" id="command" style="width: 20%" class="cmd" oninput="checkCmd()">
						<input type="text" id="commandurl" style="width: 50%">
						<input class="btn0" id="sbtn" type="button" value="submit" disabled="disabled" onclick="newCommand();">
					</div>
					<br><br>
			</td>
		</tr>
	</table>
</body>
</html>