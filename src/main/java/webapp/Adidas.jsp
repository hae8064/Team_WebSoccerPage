<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] name = {"아디다스 프레데터 프릭.3", "아디다스 프레데터 프릭.1", "아디다스 X 고스티드.1", "아디다스 코파 센스.1"};
	String[] price = {"85,000", "173,000", "149,000", "195,000"};
	String[] img ={"../images/soc5.PNG", "../images/soc6.PNG", "../images/soc7.PNG", "../images/soc8.PNG"};
	String[] info = {"이 제품은  완벽한 컨트롤과 폭발적인 플레이를 이끄는 아디다스 프레데터 시리즈를 만나보세요. 인조 잔디의 지배자를 위한 지지력과 그립감을 하나로 담아낸 견고한 축구화입니다. 미드컷 실루엣이 안정적으로 발을 감싸고, 고무 아웃솔이 최적의 접지력을 선사합니다. 코팅 메쉬 갑피를 넓게 둘러싼 3D 프린트 데몬스케일 돌기가 공과 발을 하나처럼 밀착시키고 정교한 회전을 더해줍니다.",
			"이 제품은  완벽한 컨트롤과 폭발적인 플레이를 이끄는 아디다스 프레데터 시리즈를 만나보세요. 인조 잔디의 지배자를 위한 지지력과 그립감을 하나로 담아낸 견고한 축구화입니다. 미드컷 실루엣이 안정적으로 발을 감싸고, 고무 아웃솔이 최적의 접지력을 선사합니다. 코팅 메쉬 갑피를 넓게 둘러싼 3D 프린트 데몬스케일 돌기가 공과 발을 하나처럼 밀착시키고 정교한 회전을 더해줍니다.",
			"이 제품은 새로운 차원의 속도감을 선사하는 축구화이고 스파이크화 스타일의 경사진 앞발과 아웃솔의 카비텍스 탄소 섬유 인서트가 폭발적인 추진력을 더해줍니다. 클로칼라가 장착된 초박형 플루로스킨 갑피가 발목 움직임을 자유롭게 하는 동시에 흔들림없는 핏을 선사합니다.",
			"이 제품은 280g의 가벼운 무게와 겉감은 천연가죽으로 만들어 가벼우면서도 질감이 천연가죽이여서 피부에 무리도 안가고 가벼운 무게로인해 발목 또한 무리가지 않는 제품으로서 올해 최고의 인기제품입니다."};
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adidas object</title>
<script>
	function Cart(name,price){
		if(confirm("관심상품에 담으시겠습니까?")){
			loaction.herf="cartProcess.jsp?name=" + name + "&price=" + price;
		}
	}
</script>
</head>
<body>
<table border="1">
		<tr align="center">
			<td colspan="5">
				<h3>Adidas 상품</h3>
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
							out.println("<input type='button' value='관심상품 담기' onclick = 'Cart(\"" + name[i] + "\", \"" + price[i] + "\")'/>");
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

</body>
</html>
