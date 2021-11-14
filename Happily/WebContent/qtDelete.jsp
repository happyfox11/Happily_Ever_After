<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Happily_Ever_After</title>
	
	<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
	
	<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
	<link rel="stylesheet" href="./resources/css/qt.css"/>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
	</script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
	</script>
</head>
<body>
	<!--전체를 감싸는 래퍼-->
	<div id="wrapper">
		<!--헤더-->
		<%@include file="menu.jsp" %>
		
		<!--컨텐츠-->
		<div id="content">
		
			<!--네비게이션 바-->
			<div id="contentNav">
				
				<ul>
					<li>Mental Health</li>
					<ul>
						<li><a href="book.jsp">독서</a></li>
						<li><a href="music.jsp">음악</a></li>
						<li><a href="bible.jsp">성경</a></li>
						<li><a href="qt.jsp">큐티</a></li>
					</ul>
				</ul>
			</div>
			
			<!--메인 컨텐츠-->
			<section id="mainCont">
				<article>
					<h1>큐티 다이어리 삭제하기</h1>
					
					<%@ include file="dbconn.jsp" %>
					
					<div id="box1">
					<%
						request.setCharacterEncoding("UTF-8");
					
						int q_no=Integer.parseInt(request.getParameter("q_no"));
						int currentPage=Integer.parseInt(request.getParameter("currentPage"));
						
						
						String sql="select * from qt where q_no = ?";
						pstmt=conn.prepareStatement(sql);
						pstmt.setInt(1,q_no);
						rs=pstmt.executeQuery();
						
						
						if(rs.next()){
					%>		
						<form action="qtDeleteProcess.jsp" method="post">
							<table width="700">
								<tr>
									<th colspan="2">삭제할 글 보기</th>
								</tr>
								<tr>
									<td width="100"> qt 번호</td>
									<td><%=rs.getInt("q_no") %></td>
								</tr>
								<tr>
									<td width="100"> 작성자</td>
									<td><%=rs.getString("q_name") %></td>
								</tr>
								<tr>
									<td width="100"> qt 다이어리</td>
									<td align="left"><%=rs.getString("q_memo") %></td>
								</tr>
								<tr>
									<td width="100"> 작성일</td>
									<% SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 E요일 H시 mm분");%>
									<td><%=sdf.format(rs.getTimestamp("q_writeDate")) %></td>
								</tr>
								<tr>
									<td> 
										비밀번호
									</td>
									<td align="left"> 
										<input type="password" name="q_pw">
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="submit"  class="link but1" value="삭제하기">
										<a class="link but4" href="qt.jsp">qt 나눔으로...</a>
									</td>
								</tr>
							</table>
							
							<input type="hidden" name="q_no" value="<%=q_no%>">
							<input type="hidden" name="currentPage" value="<%=currentPage%>">
							
							<%
							if (rs != null)
								rs.close();
					 		if (pstmt != null)
					 			pstmt.close();
					 		if (conn != null)
								conn.close();
							%>
									
						</form>
					<%		
						}else{
							if (rs != null)
								rs.close();
					 		if (pstmt != null)
					 			pstmt.close();
					 		if (conn != null)
								conn.close();
					 		
					 		response.sendRedirect("qt.jsp");
						}
					%>
					</div>
				</article>
			</section>
				
		</div>
		
		<%@ include file="footer.jsp"%>
		
	</div>
</body>
</html>