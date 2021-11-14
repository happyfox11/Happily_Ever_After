<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%
		request.setCharacterEncoding("UTF-8");
	
		String q_name=request.getParameter("q_name");
		String q_pw=request.getParameter("q_pw");
		String q_memo=request.getParameter("q_memo");
		

		String sql="insert into qt(q_name, q_pw, q_memo) values(?,?,?)";

		pstmt = conn.prepareStatement(sql);
 
		pstmt.setString(1,q_name);
		pstmt.setString(2,q_pw);
		pstmt.setString(3,q_memo);

		pstmt.executeUpdate();
		
		
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();

		response.sendRedirect("qt.jsp");
%>