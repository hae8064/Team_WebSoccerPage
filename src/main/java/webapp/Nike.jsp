<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] name = {"나이키 머큐리얼 베이퍼 14", "나이키 머큐리얼 수퍼플라이 8", "나이키 팬텀 GT 2"};
	String[] price = {"75,000", "139,000", "73,000"};
	String[] img ={"../images/soc1.PNG", "../images/soc2.PNG", "../images/soc3.PNG"};
	String[] info = {"이 제품은 최소한의 소재만 사용한 극도로 간결한 디자인이 특징으로 처음부터 끝까지 최고의 속도로 플레이 할 수 있습니다. 안창의 쿠셔닝이 지속적인 편안함을 선사하며, 특별히 디자인된 플레이트는 빠른 속도에서 더욱 민첩한 컷 동작이 가능한 즉각적인 반응성을 제공합니다.",
			"이 제품은 처음부터 끝까지 최고의 속도로 플레이할 수 있는 특별한 구성요소로 새로운 스타일을 연출합니다. 신축성 있는 카라는 지지력을 한층 높이고 혁신적인 플레이트는 빠른 속도앳 ㅓ더욱 민첩한 컷 동작이 가능한 즉각적 반응성을 제공합니다.",
			"이 제품은 데이터에 기반한 디자인으로 정확하게 공격할 수 있습니다. 갑피의 혁신적인 텍스처와 바닥의 특별한 접지력이 경기내내 자유로운 컨트롤을 선사합니다. 신충석 있는 카라가 안정성을 높여 발의 움직임에 집중할 수 잇있습니다."};
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nike object</title>
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
				<h3>Nike 상품</h3>
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
