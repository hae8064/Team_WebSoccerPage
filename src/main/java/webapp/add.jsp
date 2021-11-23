<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*" %>
    
<%
	request.setCharacterEncoding("utf-8");   
%>

<%
	String menu = request.getParameter("m_menu");
	ArrayList<String> list = (ArrayList)session.getAttribute("list");
	if(list ==null){
		list = new ArrayList <String>();
	}
	list.add(menu);
	
	session.setAttribute("list", list);
%>

<script type = "text/javascript">
//뒤로가기
history.go(-1);
</script>