<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Consult"%>
<%@ page import="dao.ConsultRepository"%>

<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Happily_Ever_After</title>

		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		
		<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
		<link rel="stylesheet" href="./resources/css/applyList.css"/>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
		</script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
		</script>
		
		<script>
			$(document).ready(function(){
				$('.outer-menu-item').hover(function(){
					$(this).find('.inner-menu').show();
				},function(){
					$(this).find('.inner-menu').hide();
				});
			});
		</script>
</head>
<body>
	<!--전체를 감싸는 래퍼-->
		<div id="wrapper">
			<!--헤더-->
			<%@include file="menu.jsp" %>
			
			<!--컨텐츠-->
			<div id="content" style="height:1400px;">
			
				<!--네비게이션 바-->
				<div id="contentNav">
					
					<ul>
						<li>Help</li>
						<ul>
							<li><a href="number.jsp">번호</a></li>
							<li><a href="applyList.jsp">신청</a></li>
						</ul>
					</ul>
				</div>
				
				<!--메인 컨텐츠-->
				<section id="mainCont" style="height:1400px;">
					<article>
						<h1>프로그램 신청하기</h1>
						<%
							if(request.getRemoteUser().equals("admin")){
						%>
								<a href='addConsult.jsp' class="link new">새로운 프로그램 등록하기</a>
						<%
							}
						%>	
						
						

					<%
						ConsultRepository dao = ConsultRepository.getInstance();
						ArrayList<Consult> listOfConsults = dao.getAllConsults();
					%>
				
					<div class="container">
						<div class="row" align="center">
						<table width="700px">
						 <tr>
						 	<th width="100px">프로그램명</th>
						 	<th width="100px">활동</th>
						 	<th width="450px">설명</th>
						 	<th width="50px">인원</th>
						 </tr>
							<%
								for (int i = 0; i < listOfConsults.size(); i++) {
									Consult consult = listOfConsults.get(i);
							%><%-- 
							<div class="col-md-4">
								<h3><%=consult.getPName()%></h3>
								<p><%=consult.getDescription()%>
								<p><%=consult.getPicName()%>
								<p><%=consult.getMaxNum()%>명
							</div>--%>
							
							
							<tr>
								<td><%=consult.getCName()%></td>
								<td><img src="./resources/img/<%=consult.getFilename()%>" style="width:100px;height:100px;"/></td>
								<td id="des"><%=consult.getDescription()%></td>
								<%--<td><%=consult.getPicName()%></td>--%>
								<td><%=consult.getMaxNum()%>명</td>
							</tr>
							<tr>
								<td colspan="4"><a href="./consult.jsp?id=<%=consult.getConsultId()%>" class="link but" >상세 정보 &raquo;</a></td>
							</tr>
							
							
							
							<%
								}
							%></table>
						</div>
						
					</div>
		
					</article>
				</section>
				
				
			</div>
			<%@ include file="footer.jsp"%>
			
		</div>
</body>
</html>


