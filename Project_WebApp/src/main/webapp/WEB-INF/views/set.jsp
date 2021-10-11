<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Doraemon Webapp !</title>
	<script
	  src="https://code.jquery.com/jquery-3.6.0.js"
	  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	  crossorigin="anonymous"></script>
<script>
function closePage(){
	
		$.ajax({
			url:'checker'
			,method:'GET'
			,success:function(resp){
				
			}
		})
	
}
</script>
</head>
<body onbeforeunload="closePage()">
	<table>
		<tr>
			<td colspan="2">
				<jsp:include page="top.jsp" flush="false"/>
			</td>
		</tr>
		<tr>
			<td width="150" valign="top">
				<jsp:include page="left.jsp" flush="false"/>
			</td>
			<td width="950" valign="top">
				<jsp:include page="content.jsp" flush="false">
					<jsp:param name="bookmark" value="${param.bookmarkList }" />
				</jsp:include>
			</td>
			<td width="150" valign="top">
				<jsp:include page="chatdesign.jsp" flush="false"/>	
			</td>
		</tr>
	</table>


	
</body>
</html>