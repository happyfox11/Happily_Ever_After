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
		response.sendRedirect("exceptionNoPage.jsp");
	}

	ArrayList<Consult> goodsList = dao.getAllConsults();
	Consult goods = new Consult();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getConsultId().equals(id)) { 			
			break;
		}
	}
	
	ArrayList<Consult> list = (ArrayList<Consult>) session.getAttribute("cartlist");
	if (list == null) { 
		list = new ArrayList<Consult>();
		session.setAttribute("cartlist", list);
	}

	int cnt = 0;
	Consult goodsQnt = new Consult();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getConsultId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}

	response.sendRedirect("consult.jsp?id=" + id);
%>