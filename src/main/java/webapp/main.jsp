<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] name = {"나이키 머큐리얼 베이퍼 14", "나이키 머큐리얼 수퍼플라이 8", "나이키 팬텀 GT 2", "아디다스 프레데터 프릭.3", "아디다스 프레데터 프릭.1", "아디다스 X 고스티드.1", "아디다스 코파 센스.1", "퓨마 퓨처 Z 3.2", "퓨마 울트라 2.3", "푸마 스피릿 III TT"};
	String[] price = {"75,000", "139,000", "73,000", "85,000", "173,000", "149,000", "195,000", "195,000", "109,000", "35,000"};
	String[] img ={"../images/soc1.PNG", "../images/soc2.PNG", "../images/soc3.PNG", "../images/soc5.PNG", "../images/soc6.PNG", "../images/soc7.PNG", "../images/soc8.PNG", "../images/soc9.PNG", "../images/soc4.PNG", "../images/soc10.PNG"};
	String[] info = {"이 제품은 최소한의 소재만 사용한 극도로 간결한 디자인이 특징으로 처음부터 끝까지 최고의 속도로 플레이 할 수 있습니다. 안창의 쿠셔닝이 지속적인 편안함을 선사하며, 특별히 디자인된 플레이트는 빠른 속도에서 더욱 민첩한 컷 동작이 가능한 즉각적인 반응성을 제공합니다.",
			"이 제품은 처음부터 끝까지 최고의 속도로 플레이할 수 있는 특별한 구성요소로 새로운 스타일을 연출합니다. 신축성 있는 카라는 지지력을 한층 높이고 혁신적인 플레이트는 빠른 속도앳 ㅓ더욱 민첩한 컷 동작이 가능한 즉각적 반응성을 제공합니다.",
			"이 제품은 데이터에 기반한 디자인으로 정확하게 공격할 수 있습니다. 갑피의 혁신적인 텍스처와 바닥의 특별한 접지력이 경기내내 자유로운 컨트롤을 선사합니다. 신충석 있는 카라가 안정성을 높여 발의 움직임에 집중할 수 잇있습니다.",
			"이 제품은  완벽한 컨트롤과 폭발적인 플레이를 이끄는 아디다스 프레데터 시리즈를 만나보세요. 인조 잔디의 지배자를 위한 지지력과 그립감을 하나로 담아낸 견고한 축구화입니다. 미드컷 실루엣이 안정적으로 발을 감싸고, 고무 아웃솔이 최적의 접지력을 선사합니다. 코팅 메쉬 갑피를 넓게 둘러싼 3D 프린트 데몬스케일 돌기가 공과 발을 하나처럼 밀착시키고 정교한 회전을 더해줍니다.",
			"이 제품은  완벽한 컨트롤과 폭발적인 플레이를 이끄는 아디다스 프레데터 시리즈를 만나보세요. 인조 잔디의 지배자를 위한 지지력과 그립감을 하나로 담아낸 견고한 축구화입니다. 미드컷 실루엣이 안정적으로 발을 감싸고, 고무 아웃솔이 최적의 접지력을 선사합니다. 코팅 메쉬 갑피를 넓게 둘러싼 3D 프린트 데몬스케일 돌기가 공과 발을 하나처럼 밀착시키고 정교한 회전을 더해줍니다.",
			"이 제품은 새로운 차원의 속도감을 선사하는 축구화이고 스파이크화 스타일의 경사진 앞발과 아웃솔의 카비텍스 탄소 섬유 인서트가 폭발적인 추진력을 더해줍니다. 클로칼라가 장착된 초박형 플루로스킨 갑피가 발목 움직임을 자유롭게 하는 동시에 흔들림없는 핏을 선사합니다.",
			"이 제품은 280g의 가벼운 무게와 겉감은 천연가죽으로 만들어 가벼우면서도 질감이 천연가죽이여서 피부에 무리도 안가고 가벼운 무게로인해 발목 또한 무리가지 않는 제품으로서 올해 최고의 인기제품입니다.",
			"이 제품은 퓨마 브랜드로서 풋살용 제품으로 인조잔디 및 맨땅에서 사용가능합니다. 발을 감사는 안정감 좋은 핏을 구현하며 탁원한 공 터치감을 선사합니다.",
			"이 제품은 가볍고 부드러움이 공존하는 높은 수준의 편안함과 핏팅감을 제공하며 게임을 압도하는 플레이어를 위해 탄생한 정교함과 고속에서의 볼 컨트롤을 위한 내장재의 업그레이드입니다.",
			"이 제품은 그라운드 위, 최적의 움직임과 스피드, 컨트롤을 선사하는 제품으로서 Puma올해의 제품으로 선정된 제품으로서 가벼운 무게로 발목의 무리가 안가 오랜시간 착용해도 불편하지 않는 제품입니다."
			};
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
							//out.println("<a href='mainProdDetail.jsp' target = '_self'><img src = 'images/" + img[i] + "' width='150' height='150' /></a>");
							out.println("<a target = '_self' href='mainProdDetail.jsp?name="+name[i]+"&img="+img[i]+"&price="+price[i]+"&info="+info[0]+"'><img src = 'images/" + img[i] + "' width='150' height='150' /></a>");
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
