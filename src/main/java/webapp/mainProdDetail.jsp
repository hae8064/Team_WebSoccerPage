<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 상품 세부정보</title>
<style type = "text/css">
	.card {
	  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	  max-width: 500px;
	  margin: auto;
	  text-align: center;
	  font-family: arial;
	}

	.price {
	  color: grey;
	  font-size: 22px;
	}
	
	.card button {
	  border: none;
	  outline: 0;
	  padding: 12px;
	  color: white;
	  background-color: #000;
	  text-align: center;
	  cursor: pointer;
	  width: 100%;
	  font-size: 18px;
	}

	.card button:hover {
	  opacity: 0.7;
	}
	
</style>
</head>
<body

<div id = "body-wrapper">

<div id = "body-content">
	<h2>여기는 메인 상품 정보</h2>
	
	<div class = "card">
	
	<%
		String name = request.getParameter("name");
		String img = request.getParameter("img");
		String price = request.getParameter("price");
		String info = request.getParameter("info");
		
		out.println("<img src = 'images/"+img+"' style=width:100%/>");
		out.println("<h1> 제품명: "+name+"</h1>");
		out.println("<p class = 'price'>"+price+"원</p>");
		out.println("<p>"+info+"</p>");
		out.println("<form action = 'main.jsp'>");
		out.println("<p><button> 메인페이지 이동</button></p>");
		out.println("</form>");
		//out.println("</br> <img src = 'images/" + img + "' width=300 height=300 />");
		
		
	
	%>
	</div>
</div>

<!-- footer 추가 -->
<jsp:include page="footer.jsp"/>
</div> 

</body>
</html>