
<!-- 개복치이니 조심해주세요 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>웹소켓 채팅</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.js"></script>
	<script type="text/javascript">
		var webSocket = {
			init: function(param) {
				this._url = param.url;
				this._initSocket();
			},
			sendChat: function() {
				this._sendMessage($('#uname').val(), $('#uid').val(), 'CMD_MSG_SEND', $('#message').val());
				alert("sendMessage 작동");
				$('#message').val('');
			},
			sendEnter: function() {
				alert("sendEnter 작동");
				alert($('#uname').val());
				this._sendMessage($('#uname').val(), $('#uid').val(), 'CMD_ENTER', $('#message').val());
				$('#message').val('');
			},
			receiveMessage: function(msgData) {

				// 정의된 CMD 코드에 따라서 분기 처리
				if(msgData.cmd == 'CMD_MSG_SEND') {					
					$('#divChatData').append('<div>' + msgData.msg + '</div>');
				}
				// 입장
				else if(msgData.cmd == 'CMD_ENTER') {
					$('#divChatData').append('<div>' + msgData.msg + '</div>');
				}
				// 퇴장
				else if(msgData.cmd == 'CMD_EXIT') {					
					$('#divChatData').append('<div>' + msgData.msg + '</div>');
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
	</script>	
	<script type="text/javascript">
		$(window).on('load', function () {
			webSocket.init({ url: '<c:url value="/chat" />' });	
		});
		
		function chatgo(){
			let uid = $('#inputid').val();
			let chatUrl = 'chat?uid='+uid;
			$.ajax({
				url: chatUrl
				, method: 'get'
				, success : function(resp){
					location.reload();
				}
			})
		}
		function commandChk(){
			let msgchk = $('#message').val()
			alert(msgchk);
			if(msgchk.indexOf('/',0) == 0){
				alert("명령어임");
			} else {
				webSocket.sendChat();
			}
		}
	</script>
	
</head>
<body>
<div id="firstchat">
		<br><br><br>
		<h1>오른쪽</h1>
		채팅번호 <input type="text" id="inputid">
		<input type="button" value="채팅접속" onclick="chatgo();">
		<div id="chatView">
		</div>
</div>
<div id="secondchat">
	<br><br><br><br>
	<div style="width: 400px; height: 300px; padding: 10px; border: solid 1px #e1e3e9;">
		<div id="divChatData"></div>
	</div>
	<div style="width: 100%; height: 10%; padding: 10px;">
		<pre>방번호 = ${uid}</pre>
		<input type="hidden" id="uid" value="${uid}">
		<pre>${uname}</pre>
		<input type="hidden" id="uname" value="${uname}">
		<input type="text" id="message" size="45" onkeypress="if(event.keyCode==13){commandChk();}" />
		<input type="button" id="btnSend" value="채팅 전송" onclick="commandChk()" />
	</div>
</div>

</body>
</html>