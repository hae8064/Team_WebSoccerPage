<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] name = {"나이키 머큐리얼 베이퍼 14", "나이키 머큐리얼 수퍼플라이 8", "나이키 팬텀 GT 2", "아디다스 프레데터 프릭.3", "아디다스 프레데터 프릭.1", "아디다스 X 고스티드.1", "아디다스 코파 센스.1", "퓨마 퓨처 Z 3.2", "퓨마 울트라 2.3"};
	String[] price = {"75,000", "139,000", "73,000", "85,000", "173,000", "149,000", "195,000", "195,000", "109,000"};
	String[] img ={"../images/soc1.PNG", "../images/soc2.PNG", "../images/soc3.PNG", "../images/soc5.PNG", "../images/soc6.PNG", "../images/soc7.PNG", "../images/soc8.PNG", "../images/soc9.PNG", "../images/soc4.PNG"};
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<!-- 자바스크립트 구현 -->
<script type="text/javascript">

//관심상품 담는 process 함수
function Cart(name, price) {
	if(confirm("관심상품에 담으시겠습니까?")) {
		location.href = "cartProcess.jsp?name=" + name + "&price=" + price;
	}
}

	//관심상품 보는 함수
	function cartView() {
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
				<a href="#" target = "_self">나이키</a>&nbsp;&nbsp;&nbsp;
				<a href="#" target = "_self">아디다스</a>&nbsp;&nbsp;&nbsp;
				<a href="#" target = "_self">퓨마</a>
			</td>
		</tr>
	</table>
</div>

	<%=(String) session.getAttribute("loginUser")%>님 안녕하세요
	
	<form method="get" action="logout.jsp">
		<input type="submit" value="로그아웃">
	</form>
	
	<!-- 관심상품 보기 버튼 -->
	<div id = "cartButton">
		<input type="button" value="관심상품 보기" onclick="cartView()" />	
	</div>
	
	
	<div align="center">
	<h3>[브랜드별 축구화 정보공유 게시판]</h3>
	
	<img src = "./images/mainImg.PNG" alt = "메인이미지">
	
	<br>

	<table border="1">
		<tr align="center">
			<td colspan="5">
				<h3>이번 달 인기 상품</h3>
			</td>
		</tr>
		<%
		for(int i = 0; i < img.length; i++) {
			if(i % 5 == 0) { 
				out.println("<tr align='center'>");
			}
			out.println("<td>");
				out.println("<table>");
				
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<a href='mainProdDetail.jsp' target = '_self'><img src = 'images/" + img[i] + "' width='150' height='150' /></a>");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<b>" + name[i] + "</b>");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<b>￦" + price[i] + "원</b>");
						out.println("</td>");
					out.println("</tr>");
					
		
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<input type='button' value='관심상품 담기' onClick = 'Cart(\"" + name[i] + "\", \"" + price[i] + "\")'/>");
						out.println("</td>");
					out.println("</tr>");
					
				out.println("</table>");
			out.println("</td>");
			
			if(i % 5 == 4) {
				out.println("</tr>");
			}
		}
		%>	
	</table>
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
