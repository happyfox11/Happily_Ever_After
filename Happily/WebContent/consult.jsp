<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@page import="dao.ConsultRepository"%>
<%@ page import="dto.Consult"%>
<jsp:useBean id="consultDAO" class="dao.ConsultRepository" scope="session" />


<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Happily_Ever_After</title>
		<script type="text/javascript">
			function addToCart() {
				if (confirm("프로그램을 위시리스트에 추가하시겠습니까?")) {
					document.addForm.submit();
				} else {		
					document.addForm.reset();
				}
			}
		</script>

		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="./resources/css/consult.css"/>
		<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
		
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
			<div id="content">
			
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
				<section id="mainCont">
					<article>
						<h1>상담 정보</h1>

						<%
							String id = request.getParameter("id");
							ConsultRepository dao = ConsultRepository.getInstance();
							Consult consult = dao.getConsultById(id);
						%>

						<div>
							<div id="box1">
								<p>[<%=consult.getCName()%>]</p><br/>
								<div class="imgbox">
									<img src="./resources/img/<%=consult.getFilename()%>" style="width:300px;height:300px;"/>
									<%--<%= application.getRealPath("/")+"resources/img/"+consult.getFilename()%>--%>
								</div>
								<div id="desbox">
									<p><%=consult.getDescription()%></p><br/>
									
									<p><b>상담 코드 : </b><button type="button"><%=consult.getConsultId()%></button></p>
									<p><b>담당자</b> : <%=consult.getPicName()%></p>
									<p><b>연락처</b> : <%=consult.getPicPhone()%></p>
									<p><b>최대 신청가능 인원수</b> : <%=consult.getMaxNum()%>명</p><br/>
								</div>
									<form name="addForm" action="./addCart.jsp?id=<%=consult.getConsultId() %>" method="post" class="butlist">
										<a href="#" class="link but2" onclick="addToCart()"> 상담 신청 &raquo;</a> 
										<a href="./cart.jsp" class="link but3"> 위시리스트 &raquo;</a> 
										<a	href="./applyList.jsp" class="link but1"> 신청 목록 &raquo;</a>
									</form>
								
							</div>
						</div>
					</article>
				</section>
			</div>
					

			<%@ include file="footer.jsp"%>
			
		</div>
</body>
</html>
