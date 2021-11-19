<!-- 로그인 Id: admin, 비밀번호: 1234 -->

<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8"); // 입력받은 데이터 한글 처리
	String name = "이봉희";
	String userId = request.getParameter("userId");
	String userPwd = request.getParameter("userPwd");
	
	//처음 로그인 아이디admin, 비밀번호 1234
	if(userId.equals("admin") && userPwd.equals("1234")){
		session.setAttribute("loginUser",userId);
		
		//main화면에 userId를 받기위해 Encoder를 활용해 이름 전달
		response.sendRedirect("main.jsp?name" + URLEncoder.encode(name, "UTF-8"));
	}
	else if(userId.equals("admin")){
		//alert함수를 통해 확인 창 나오게함
		//history.back을 이용해 현재페이지 유지
		out.println("<script>alert('비밀번호가 틀렸습니다.'); history.back();</script>");
	}
	else if(userId.equals("1234")){
		out.println("<script>alert('아이디가 틀렸습니다.'); history.back();</script>");
	}
	else{
		out.println("<script>alert('아이디와 비밀번호가 틀렸습니다.'); history.back();</script>");
	}
	%>
</body>
</html>