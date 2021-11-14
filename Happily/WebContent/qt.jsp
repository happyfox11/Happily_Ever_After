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
					<h1>큐티 나눔</h1>
					
					<%@ include file="dbconn.jsp" %>
					
					<%
						int pageSize = 5;//한 페이지 당 보이게 할 qt 다이어리의 개수는 다섯개
						int totalCount = 0;//전체 qt 다이어리의 개수
						int totalPage = 0;//전체 페이지 수
						int currentPage = 1;//현재 보고 있는 페이지
						int startNo= 0;	//현재 페이지에서의 첫번째 qt 다이어리의 번호
						int endNo= 0;//현재 페이지에서의 다섯번째 qt 다이어리의 번호
						
						//현재 페이지를 인수로 받아와서, 그 페이지에 대한 다이어리 번호를 계산해서 보여줘야하는데
						//가장 먼저 실행된 경우에는 받아오는 값이 없으므로 1페이지로 설정해주면 된다!!
						try{
							currentPage=Integer.parseInt(request.getParameter("currentPage"));
						}catch(Exception e){
							currentPage=1;
						}
						
						String sql = "select count(*) from qt";
						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();
						rs.next();
						totalCount = rs.getInt(1);
						
						totalPage = (totalCount-1)/pageSize + 1;//예를 들어서, 11개의 다이어리가 존재하면 총 3페이지가 필요함
					
						startNo= (currentPage-1)*pageSize;//인덱스가 0부터 시작이고, 이전페이지의 마지막 다이어리 번호에 1을 더한 것을 의미한다.
						endNo=startNo+(pageSize-1);
						if(endNo>totalCount)
							endNo=totalCount;
					
						
						sql = "select * from qt order by q_no desc limit ?, ?";	//인덱스가 0부터 시작함, startNo부터 pagesize개수 만큼 가져온다.
						pstmt = conn.prepareStatement(sql);
						pstmt.setInt(1, startNo);
						pstmt.setInt(2, pageSize);
						rs = pstmt.executeQuery();
					%>
					
					<div id="box1">
					<a href="qtInsert.jsp" class="link but1">qt 작성하기</a>
					<table width="700" align="center" border="1" cellpadding="5" cellspacing="0">
						<tr>
							<th width="80">qt 번호</th>
							<th width="80">작성자</th>
							<th width="110">작성일</th>
							<th width="220">qt 다이어리 보기</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
						
						
						<%
						if (rs.next()) {
							SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/E");
							do {
						%>
						
							<tr>
								<td><%=rs.getInt("q_no")%></td>
								<td><%=rs.getString("q_name")%></td>
								<td><%=sdf.format(rs.getTimestamp("q_writeDate"))%></td>
								<td><a href="qtRead.jsp?q_no=<%=rs.getInt("q_no")%>&currentPage=<%=currentPage%>" id="qta">qt 다이어리</a></td>
								<td align="center">
									<input type="button"  class="link but2" value="수정" onclick="location.href='qtUpdate.jsp?q_no=<%=rs.getInt("q_no")%>&currentPage=<%=currentPage%>'">
								</td>
								<td align="center">
									<input type="button"  class="link but3" value="삭제" onclick="location.href='qtDelete.jsp?q_no=<%=rs.getInt("q_no")%>&currentPage=<%=currentPage%>'">
								</td>
							</tr>
						
						<%
							} while (rs.next());
						} else {
						%>
						
						<tr>
							<td colspan="7">
								작성된 큐티 다이어리가 없습니다. 첫 번째 다이어리를 작성해주세요:)
							</td>
						</tr>
						
						<%
						}
						%>
					
						<tr>
							<td colspan="7" align="center">
								<%
									if(1< currentPage && currentPage<totalPage){
								%>
									<input type="button" value="<<이전페이지" title="이전페이지"  onclick="location.href='?currentPage=<%=currentPage-1%>'" />
									&nbsp;&nbsp;&nbsp;&nbsp;총 <%=totalCount %>개 [<%=currentPage %>/<%=totalPage %>]&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="button" value="다음페이지>>" title="다음페이지"  onclick="location.href='?currentPage=<%=currentPage+1%>'" />
								<%
									}else if(totalPage==1){
								%>
									총 <%=totalCount %>개 [<%=totalPage %>/<%=totalPage %>]
								<%
									}else if(currentPage==totalPage){
								%>
									<input type="button" value="<<이전페이지" title="이전페이지"  onclick="location.href='?currentPage=<%=currentPage-1%>'" />
									&nbsp;&nbsp;&nbsp;&nbsp;총 <%=totalCount %>개 [<%=currentPage %>/<%=totalPage %>]&nbsp;&nbsp;&nbsp;&nbsp;
								<%
								}else if(currentPage==1){
								%>
									&nbsp;&nbsp;&nbsp;&nbsp;총 <%=totalCount %>개 [<%=currentPage %>/<%=totalPage %>]&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="button" value="다음페이지>>" title="다음페이지"  onclick="location.href='?currentPage=<%=currentPage+1%>'" />
								<%
								}%>
								
							</td>
						</tr>
					
						
					
					</table>
				</div>		
					<%
						if (rs != null)
							rs.close();
				 		if (pstmt != null)
				 			pstmt.close();
				 		if (conn != null)
							conn.close();
				 	%>		
					
	
				</article>
			</section>
			
			
		</div>
		<%@ include file="footer.jsp"%>
		
	</div>
</body>
</html>