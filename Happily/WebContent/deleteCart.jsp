<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Consult"%>
<%@ page import="dao.ConsultRepository"%>

<%
	String id = request.getParameter("cartId");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("applyList.jsp");
		return;
	}

	session.removeAttribute("cartlist");

	response.sendRedirect("cart.jsp");
%>
