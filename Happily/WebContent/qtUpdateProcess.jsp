<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%
		request.setCharacterEncoding("UTF-8");

		int q_no=Integer.parseInt(request.getParameter("q_no"));
		int currentPage=Integer.parseInt(request.getParameter("currentPage"));
		String q_pw=request.getParameter("q_pw");
		
		String sql="select * from qt where q_no = ?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,q_no);
		rs=pstmt.executeQuery();
		rs.next();

		String q_name=request.getParameter("q_name");
		String q_memo=request.getParameter("q_memo");
		
		out.println("<script>");
		if(q_pw.trim().equals(rs.getString("q_pw").trim())){

			sql="update qt set q_name = ?, q_memo  = ? where q_no = ?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,q_name);
			pstmt.setString(2,q_memo);
			pstmt.setInt(3,q_no);
			pstmt.executeUpdate();
			
			out.println("alert('"+q_no+"번 다이어리를 수정했습니다.')");
			
		}else{
			out.println("alert('비밀번호가 올바르지 않습니다.')");
		}
		
		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
		
		out.println("location.href='qt.jsp?currentPage="+currentPage+"'");
		out.println("</script>");
	
%>