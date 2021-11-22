<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] img ={"../images/soc1.PNG", "../images/soc2.PNG", "../images/soc3.PNG", "../images/soc5.PNG", "../images/soc6.PNG", "../images/soc7.PNG", "../images/soc8.PNG", "../images/soc9.PNG", "../images/soc4.PNG"};
	String[] name = {"나이키 머큐리얼 베이퍼 14", "나이키 머큐리얼 수퍼플라이 8", "나이키 팬텀 GT 2", "아디다스 프레데터 프릭.3", "아디다스 프레데터 프릭.1", "아디다스 X 고스티드.1", "아디다스 코파 센스.1", "퓨마 퓨처 Z 3.2", "퓨마 울트라 2.3"};
	String[] price = {"75,000", "139,000", "73,000", "85,000", "173,000", "149,000", "195,000", "195,000", "109,000"};
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<!-- 자바스크립트 구현 -->
<script type="text/javascript">
function Cart(name, price) {
	//alert("Name : " + name + "\nPrice : " + price);
	if(confirm("장바구니에 담으시겠습니까?")) {
		location.href = "CartProcess.jsp?name=" + name + "&price=" + price;
	}
}

function cartView() {
	if(confirm("장바구니를 보시겠습니까?")){
		location.href = "CartView.jsp";
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
				<a href="#">자유게시판</a>&nbsp;&nbsp;&nbsp;
				<a href="#">나이키</a>&nbsp;&nbsp;&nbsp;
				<a href="#">아디다스</a>&nbsp;&nbsp;&nbsp;
				<a href="#">퓨마</a>
			</td>
		</tr>
	</table>
</div>

	<%=(String) session.getAttribute("loginUser")%>님 안녕하세요
	
	<form method="get" action="logout.jsp">
		<input type="submit" value="로그아웃">
	</form>
	
	<!-- 장바구니 보기 버튼 -->
	<div id = "cartButton">
		<input type="button" value="장바구니 보기" onclick="cartView()" />	
	</div>
	
	
	<div align="center">
	<h3>[브랜드별 축구화 정보공유 게시판]</h3>
	
	<img src = "./images/mainImg.PNG" alt = "메인이미지">
	
	<br>

	<table border="1">
		<tr align="center">
			<td colspan="3">
				<h3>이번 달 인기 상품</h3>
			</td>
		</tr>
		<%
		for(int i = 0; i < img.length; i++) {
			if(i % 3 == 0) { 
				out.println("<tr align='center'>");
			}
			out.println("<td>");
				out.println("<table>");
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<img src = 'images/" + img[i] + "' width='150' height='150' />");
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
							out.println("<input type='button' value='장바구니 담기' ");
							out.println("onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />");
						out.println("</td>");
					out.println("</tr>");
				out.println("</table>");
			out.println("</td>");
			if(i % 3 == 2) {
				out.println("</tr>");
			}
		}
		%>	
	</table>
</div>
</body>
</html>