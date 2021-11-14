<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Consult"%>
<%@ page import="dao.ConsultRepository"%>
<%@page import="java.util.Calendar"%>
<%@page import="dao.ConsultRepository"%>


<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<%
			String cartId = session.getId();
		%>
		<title>Happily_Ever_After</title>

		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="./resources/css/cart.css"/>
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

						<div id="box">
							<div id="box1">
								<table>
									<tr>
										<td><a href="./deleteCart.jsp?cartId=<%=cartId%>" class=" link but2">모두 삭제</a></td>
										<td style="float:right;"><a href="./applyingInfo.jsp?cartId=<%= cartId %>" class="link but1">신청하기</a></td>
									</tr>
								</table>
							</div>
							<div id="box2">
								<table>
									<tr>
										<th width="150px">프로그램 명</th>
										<th width="200px">담당자 연락처</th>
										<th width="80px">신청 횟수</th>
										<th width="200px">신청일</th>
										<th>비고</th>
									</tr>
									<%				
										ArrayList<Consult> cartList = (ArrayList<Consult>) session.getAttribute("cartlist");
										if (cartList == null)
											cartList = new ArrayList<Consult>();
					
										for (int i = 0; i < cartList.size(); i++) { // 상담리스트 하나씩 출력하기
											Consult consult = cartList.get(i);
											int total = consult.getQuantity();
									%>
									<tr>
										<td><%=consult.getConsultId()%> - <%=consult.getCName()%></td>
										<td><%=consult.getPicPhone() %></td>
										<td><%=consult.getQuantity()%></td>
										<%
											Calendar cal = Calendar.getInstance();
											int year =cal.get(Calendar.YEAR);
											int month=cal.get(Calendar.MONTH)+1;
											int day = cal.get(Calendar.DATE);
										%>
										<td><%=year+"년 "+month+"월 "+ day+"일"%></td>
										<td><a href="./removeCart.jsp?id=<%=consult.getConsultId()%>" class="link but2" >삭제</a></td>
									</tr>
									<%
										}
									%>
								</table>
								<a href="./applyList.jsp" class="link but4"> &laquo; 프로그램 목록보기</a>
							</div>
							
						</div>


					</article>
				</section>
			</div>
					

			<%@ include file="footer.jsp"%>
			
		</div>
</body>
</html>


