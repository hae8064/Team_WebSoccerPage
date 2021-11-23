<%@page import="webapp.images.CartDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String price = request.getParameter("price");

	ArrayList<CartDTO> cart = null;

	Object obj = session.getAttribute("cart");	//세션 객체에서 cart 값을 가져온다.

	//최초 관심상품 선택 한 경우
	if(obj == null) {	
		cart = new ArrayList<CartDTO>();	
	}
	
	//추가 관심상품
	else {			
		cart = (ArrayList<CartDTO>) obj;
	}

	int pos = -1;	//등록된 제품이 없다
	
	//관심상품 세션에 동일한 제품이 있을 경우 : 수량(cnt) 증가
	for(int i = 0; i < cart.size(); i++) {
		CartDTO dto = cart.get(i);
		if(dto.getName().equals(name)) {
			pos = 1;
			dto.setCnt(dto.getCnt() + 1);
			break;
		}
	}

	//장바구니 세션에 등록된 제품이 없을 경우 : CartDTO 객체를 생성하여 배열에 등록(add())
	if(pos == -1) {
		CartDTO dto = new CartDTO();
		dto.setName(name);
		//1,500 ▶ 1500 : 쉼표 제거 후 정수형으로 랩핑
		dto.setPrice(Integer.parseInt(price.replace(",", "")));
		dto.setCnt(1);
		cart.add(dto);
	}

	//cart 세션 객체를 만들어 준다.
	session.setAttribute("cart", cart);
%>

<script>alert("관심상품에 담았습니다."); location.href = "cartView.jsp"</script>