<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Consult"%>
<%@ page import="dao.ConsultRepository"%>

<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("applyList.jsp");
		return;
	}

	ConsultRepository dao = ConsultRepository.getInstance();
	
	Consult consult = dao.getConsultById(id);
	if (consult == null) {
		response.sendRedirect("cart.jsp");
	}

	ArrayList<Consult> cartList = (ArrayList<Consult>) session.getAttribute("cartlist");
	Consult goodsQnt = new Consult();
	for (int i = 0; i < cartList.size(); i++) { // 상담리스트 하나씩 출력하기
		goodsQnt = cartList.get(i);
		if (goodsQnt.getConsultId().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}

	response.sendRedirect("cart.jsp");
%>
