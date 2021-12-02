<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] name = {"퓨마 퓨처 Z 3.2", "퓨마 울트라 2.3", "푸마 스피릿 III TT"};
	String[] price = {"195,000", "109,000", "35,000"};
	String[] img ={"../images/soc9.PNG", "../images/soc4.PNG", "../images/soc10.PNG"};
	String[] info = {"이 제품은 퓨마 브랜드로서 풋살용 제품으로 인조잔디 및 맨땅에서 사용가능합니다. 발을 감사는 안정감 좋은 핏을 구현하며 탁원한 공 터치감을 선사합니다.",
			"이 제품은 가볍고 부드러움이 공존하는 높은 수준의 편안함과 핏팅감을 제공하며 게임을 압도하는 플레이어를 위해 탄생한 정교함과 고속에서의 볼 컨트롤을 위한 내장재의 업그레이드입니다.",
			"이 제품은 그라운드 위, 최적의 움직임과 스피드, 컨트롤을 선사하는 제품으로서 Puma올해의 제품으로 선정된 제품으로서 가벼운 무게로 발목의 무리가 안가 오랜시간 착용해도 불편하지 않는 제품입니다."};
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Puma object</title>
<script type="text/javascript">

//관심상품 담는 process 함수
	function Cart(name, price) {
		if(confirm("관심상품에 담으시겠습니까?")) {
			location.href = "cartProcess.jsp?name=" + name + "&price=" + price;
	}	
}
</script>
</head>
<body>
<table border="1">
		<tr align="center">
			<td colspan="5">
				<h3>Puma 상품</h3>
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
