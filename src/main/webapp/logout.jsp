<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 지우고 로그아웃 페이지</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
	<%
		session.invalidate();
	%>
	
	<script type="text/javascript">
	
		//El식
		$(document).ready(function() {
			alert("로그아웃 되었습니다.");
			location.href = "login.jsp"
		});
	</script>
</body>
</html>