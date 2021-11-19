<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>
	<%=(String) session.getAttribute("loginUser")%>님 안녕하세요
	<br> 메인 홈페이지
	
	<form method="get" action="logout.jsp">
		<input type="submit" value="로그아웃">
	</form>
</body>
</html>