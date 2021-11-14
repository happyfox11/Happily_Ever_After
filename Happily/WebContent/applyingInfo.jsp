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
		<link rel="stylesheet" href="./resources/css/applyingInfo.css"/>
		
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
						<h1>신청자 정보</h1>
						<div class="box">
							<form name="newConsult" action="./processApplyingInfo.jsp" method="post">
								<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
								<div>
									<label>이름 : &nbsp;&nbsp;&nbsp;</label>
									<input type="text" name="cusName" id="cusName">
								</div><br/>
								<div>
									<label>연락처 : &nbsp;&nbsp;&nbsp;</label>
									<select name="cusPhone1">
										<option value="010">010</option>
										<option value="031">031</option>
										<option value="019">019</option>
									</select>
									-<input type="text" name="cusPhone2" maxlength="4" size="6" id="cusPhone2">
									-<input type="text" name="cusPhone3" maxlength="4" size="6" id="cusPhone3">
								</div><br/>
								<div>
									<label>희망 상담 요일 / 시간 : &nbsp;&nbsp;&nbsp;</label>
									<select name="day">
										<option value="월">월</option>
										<option value="화">화</option>
										<option value="수">수</option>
										<option value="목">목</option>
										<option value="금">금</option>
									</select><span>요일! &nbsp;</span> 
									<select name="time">
										<option value="09:00-10:00">09:00-10:00</option>
										<option value="10:00-11:00">10:00-11:00</option>
										<option value="11:00-12:00">11:00-12:00</option>
										<option value="14:00-15:00">14:00-15:00</option>
										<option value="15:00-16:00">15:00-16:00</option>
									</select> <span>동안!</span>
									
								</div><br/>
								<div>
									<div class="butlist">
										<a href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="link but1" role="button"> 이전 </a> 
										<a href="./checkOutCancelled.jsp" class="link but2" role="button"> 취소 </a>
										<input type="submit" class="link but3" value="등록하기">
									</div>
								</div>
							</form>
						</div>	
		
					</article>
				</section>
				
				
			</div>
			<%@ include file="footer.jsp"%>
			
		</div>
</body>
</html>

					
