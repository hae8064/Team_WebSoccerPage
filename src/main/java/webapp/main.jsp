/*2021-12-02 include태그 , 내 정보 추가*/
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
        String select = request.getParameter("pageChange");
        if (select == null) {
            select = "fobject.jsp";
        }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<!-- 자바스크립트 구현 -->
<script type="text/javascript">
	function cartView(){
		if(confirm("관심상품을 보시겠습니까?")){
			location.href = "cartView.jsp";
		}
	}
</script>
<style type = "text/css">
<!-- 이미지 태그 사이즈 조절 -->
	img{
		width: 30%;
		height: 30%;
	}
	
	#cartButton{
		position:absolute;
		top:8px;
		right:16px;
	}
</style>
</head>
<body>


<!-- 최상단 메뉴바 -->
<div align="center">
	<table>
		<tr>
			<td align="right">
				<a href="board.jsp" target = "_self">자유게시판</a>&nbsp;&nbsp;&nbsp;
			</td>
		</tr>
	</table>
</div>

	<%=(String) session.getAttribute("loginUser")%>님 안녕하세요
	
	<form method="get" action="logout.jsp">
		<input type="submit" value="로그아웃">
	</form>
	<form method="post" action="/jspbook2/Mypageview">
		<input type="submit" value="내 정보 확인">
	</form>
	
	<!-- 관심상품 보기 버튼 -->
	<div id = "cartButton">
		<input type="button" value="관심상품 보기" onclick="cartView()"/>	
	</div>

	<div align="center">
	<h3>[브랜드별 축구화 정보공유 게시판]</h3>
	
	<img src = "./images/mainImg.PNG" alt = "메인이미지">
	<br>
	<jsp:include page="include.jsp" flush="false"/>
	<jsp:include page="<%=select%>" flush="false"/>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- footer추가 -->
	<footer class = "footer">
		관리팀: 5팀
		<br>
		문의: KpuWebTeam5@kpu.ac.kr
	</footer>
</div>
</body>
</html>
