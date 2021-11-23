<%@page import="java.text.DecimalFormat"%>
<%@page import="webapp.images.CartDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
ArrayList<CartDTO> cart = null;

//세션 객체에서 cart 값을 가져온다.
Object obj = session.getAttribute("cart");

//세션 정보가 없으면 배열을 생성
if(obj == null) {	
	cart = new ArrayList<CartDTO>();	
} 
//세션 정보가 있으면 강제로 캐스팅 
else {			
	cart = (ArrayList<CartDTO>) obj;
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart View</title>
<script type="text/javascript">

function CartClear(){
	if(confirm("관심상품을 비우시겠습니까?")) {
		cart = null;
		location.href = "cartClear.jsp";	
	}
}

//main페이지 이동을 위한 함수
function MainGo(){
	location.href = "main.jsp";
}

</script>

<style type = "text/css">
	div table{
		width: 100%;
		border-top: 1px solid #blue;
		border-collapse: collapse;
	}
	th,td{
		border-bottom: 1px solid #444444;
  	 	padding: 10px;
    	text-align: center;
	}
</style>

</head>
<body>
<div align="center">
	<h3>[관심상품 보기]</h3>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>상품명</th>
			<th>가격</th>
		</tr>
		
		<%
		//관심상품이 없을 때
		if(cart.size() == 0) {
			out.println("<tr align='center'>");
				out.println("<td colspan= '3'>");
					out.println("관심상품이 없습니다..");
					out.println("<a href= 'main.jsp'>Home</a>");
				out.println("</td>");
			out.println("</tr>");
		} 
		else {
			int totalSum = 0, total = 0;
			DecimalFormat df = new DecimalFormat("￦#,##0");
			for(int i = 0; i < cart.size(); i++) {
				CartDTO dto = cart.get(i);
				out.println("<tr align= 'center'>");
					out.println("<td>" + (i + 1) + "</td>");
					out.println("<td>" + "<a href = 'cartProdDetail.jsp'>"+dto.getName() +"</a>" + "</td>");
					out.println("<td>" + df.format(dto.getPrice()) + "</td>");
				out.println("</tr>");
				totalSum += total;
			}
			
			
		out.println("<tr align = 'center'>");
			out.println("<td colspan= '3'>");
				out.println("<input type='button' value='관심상품 비우기' onclick='CartClear()' />");
				out.println("<input type='button' value='쇼핑 계속하기' onclick='MainGo()' />");
			out.println("</td>");
		out.println("</tr>");
		}//if else
		%>
	</table>
</div>
</body>
</html>