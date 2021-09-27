
<!-- 개복치이니 조심해주세요 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.min.css'>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>웹소켓 채팅</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.js"></script>

	<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
	<script type="text/javascript">
		var webSocket = {
			init: function(param) {
				this._url = param.url;
				this._initSocket();
			},
			sendChat: function() {
				this._sendMessage($('#uname').val(), $('#uid').val(), 'CMD_MSG_SEND', $('#message').val());
				$('#message').val('');
			},
			sendEnter: function() {
				this._sendMessage($('#uname').val(), $('#uid').val(), 'CMD_ENTER', $('#message').val());
				$('#message').val('');
			},
			receiveMessage: function(msgData) {

				// 정의된 CMD 코드에 따라서 분기 처리
				if(msgData.cmd == 'CMD_MSG_SEND') {		
					$('#message-content').append('<div class = "from-me">' + msgData.msg + '</div>');
					$("#scroll").scrollTop($("#scroll")[0].scrollHeight);

				}
				// 입장
				else if(msgData.cmd == 'CMD_ENTER') {
					$('#message-content').append('<div class = "from-them">' + msgData.msg + '</div>');
					$("#scroll").scrollTop($("#scroll")[0].scrollHeight);

				}
				// 퇴장
				else if(msgData.cmd == 'CMD_EXIT') {					
					$('#message-content').append('<div class = "from-them">' + msgData.msg + '</div>');
					$("#scroll").scrollTop($("#scroll")[0].scrollHeight);

				}
			},
			closeMessage: function(str) {
				$('#divChatData').append('<div>' + '연결 끊김 : ' + str + '</div>');
			},
			disconnect: function() {
				this._socket.close();
			},
			_initSocket: function() {
				this._socket = new SockJS(this._url);
				this._socket.onopen = function(evt) {
					webSocket.sendEnter();
				};
				this._socket.onmessage = function(evt) {
					webSocket.receiveMessage(JSON.parse(evt.data));
				};
				this._socket.onclose = function(evt) {
					webSocket.closeMessage(JSON.parse(evt.data));
				}
			},
			_sendMessage: function(uname, bang_id, cmd, msg) {
				var msgData = {
						uname : uname,				
						bang_id : bang_id,
						cmd : cmd,
						msg : msg
				};
				var jsonData = JSON.stringify(msgData);
				this._socket.send(jsonData);
			}
		};
		
		$('#secScroll').scrollTop($('#secScroll')[0].scrollHeight);


	</script>	
	<script type="text/javascript">
		//$(window).on('load', function () {
			//webSocket.init({ url: '<c:url value="/chat" />' });	
		//});
		
		function chatgo(){
			let uid = $('#inputid').val();
			let uname = $('#uname').val();
			let chatUrl = 'chat?uid='+uid;
			let myData = {"uid" : uid};
			
			$.ajax({
				url: chatUrl
				, method: 'POST'
				, data : myData 
				, success : function(resp){
					if($('#uid').val() != ''){

						webSocket.disconnect();
					}
					$('#uid').val(uid);
					$('#uname').val(uname);
					$('#uidpre').html("방번호 : "+uid);
					$('#unamepre').html("사용자 : "+uname);
					
					webSocket.init({ url: '<c:url value="/chat" />' });	
				}
			})
		}
		function commandChk(){
			let msgchk = $('#message').val()
			if(msgchk.indexOf('/',0) == 0){
				alert("명령어임");
			} else {
				webSocket.sendChat();
			}
		}
		
		function idset(){
			let mydata = {"idset" : $('#idinput').val()}
			
			$.ajax({
				url:'idset'
				, method:'GET'
				,data:mydata
				,success : function(resp){
					alert("아이디 입력 완료");
					location.reload();
				}
			})
		}

	</script>

	<style>
	body {

		display: flex;

		font-family: "proxima-nova", "Source Sans Pro", sans-serif;
		font-size: 1em;
		color: #32465a;

	}
	
	section {
 		 max-width: 550px;
 		 margin: auto;
 		 height: 400px;
 		 overflow-y: auto;

	}
	section div {
 		 max-width: 700px;
  
 		 margin-bottom: 1px;
 		 line-height: 24px;
 		 
	}
	.from-me {

  word-wrap: break-word;
  position: relative;
  padding: 10px 20px;
  margin-right : 200px;
  margin-top : 50px;
 
  color: white;
  background: #0B93F6;
  border-radius: 25px;
  float: right;
}
.from-me:before {
	word-wrap: break-word;
  content: "";
  position: absolute;
  z-index: -1;
  bottom: -2px;
  right: -7px;
  height: 20px;
  border-right: 20px solid #0B93F6;
  border-bottom-left-radius: 16px 14px;
  -webkit-transform: translate(0, -2px);
}
.from-me:after {
  content: "";
  position: absolute;
  z-index: 1;
  bottom: -2px;
  right: -56px;
  width: 26px;
  height: 20px;
  background: white;
  border-bottom-left-radius: 10px;
  -webkit-transform: translate(-30px, -2px);
}

.from-them {
  position: relative;
  padding: 10px 20px;
  background: #E5E5EA;
  border-radius: 25px;
  color: black;
  float: left;
}
.from-them:before {
  content: "";
  position: absolute;
  z-index: 2;
  bottom: -2px;
  left: -7px;
  height: 20px;
  border-left: 20px solid #E5E5EA;
  border-bottom-right-radius: 16px 14px;
  -webkit-transform: translate(0, -2px);
}
.from-them:after {
  content: "";
  position: absolute;
  z-index: 3;
  bottom: -2px;
  left: 4px;
  width: 26px;
  height: 20px;
  background: white;
  border-bottom-right-radius: 10px;
  -webkit-transform: translate(-30px, -2px);
}
	.msg-box{
		position: absolute;
		bottom: -30px;
		width: 70%;
		z-index: 99;
	}
	


	</style>
</head>
<body>


<section id = "scroll">
<div>
		<div style="position: relative;">
		아이디입력 <input id="idinput" type="text">
		<input type="button" value="아이디입력" onclick="idset()"><br>
	<br>
		채팅방번호 <input type="text" id="inputid">
		<input type="button" value="채팅접속" onclick="chatgo();">
			</div>
		<p><div id="chatView"></div></p>

	<div class="head-img">
		<img src="#" alt="" />
		<center><p style="background: #E9EAEF; color: gray; font-weight: bolder; font-style: italic;"> --- ${sessionScope.uname}님의 채팅방 --- </p></center>
	</div>

	<div class="message-content" id = "message-content"></div>

	<div class="msg-box">
		<pre id="uidpre"></pre>
		<input type="hidden" id="uid">
		<pre id="unamepre"></pre>
		<input type="hidden" id="uname" value="${sessionScope.uname}">
		<input type="text" id="message" size="45" onkeypress="if(event.keyCode==13){commandChk();}" />
		<input type="button" id="btnSend" value="채팅 전송" onclick="commandChk()" />
		<i class="fa fa-paper-plane" aria-hidden="true"></i></button>
	</div>
</div>
</div>
</section>
</body>
</html>