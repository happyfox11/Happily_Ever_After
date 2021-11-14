<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%
	request.setCharacterEncoding("UTF-8");
	//out.println(request.getParameter("cusName"));
	Cookie cartId = new Cookie("Applying_cartId", URLEncoder.encode(request.getParameter("cartId"), "utf-8"));
	Cookie cusName = new Cookie("Applying_cusName", URLEncoder.encode(request.getParameter("cusName"), "utf-8"));
	Cookie cusPhone = new Cookie("Applying_cusPhone", URLEncoder.encode(request.getParameter("cusPhone1")+"-"
			+request.getParameter("cusPhone2")+"-"+request.getParameter("cusPhone3"), "utf-8"));
	Cookie hopeDate = new Cookie("Applying_hopeDate",	
			URLEncoder.encode(request.getParameter("day")+" "+request.getParameter("time"), "utf-8"));
	
	cartId.setMaxAge(24 * 60 * 60);
	cusName.setMaxAge(24 * 60 * 60);
	cusPhone.setMaxAge( 24 * 60 * 60);
	hopeDate.setMaxAge( 24 * 60 * 60);
	
	response.addCookie(cartId);
	response.addCookie(cusName);
	response.addCookie(cusPhone);
	response.addCookie(hopeDate);
	
	
	response.sendRedirect("applyConfirmation.jsp");

%>
