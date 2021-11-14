<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Happily_Ever_After</title>
		
		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		
		<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
		<link rel="stylesheet" href="./resources/css/sleepdia.css"/>
		
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
						<li>Self-Diagnosis</li>
						<ul>
							<li><a href="selfdia.jsp">감정 상태</a></li>
							<li><a href="eatdia.jsp">식 습 관</a></li>
							<li><a href="sleepdia.jsp">수면 상태</a></li>
						</ul>
					</ul>
				</div>
				
				<!--메인 컨텐츠-->
				<section id="mainCont">
					<article>
						<h1>수면 상태</h1>
						
						<table>
						
							<tr>
								<th>번호</th>
								<th>검사 명칭</th>
								<th>기관명</th>
							</tr>
							
							<tr>
								<td>1</td>
								<td><a href="https://www.sleepnet.or.kr/sleep/self-test">수면장애 자가진단</a></td>
								<td>대한수면연구학회</td>
							</tr>
							
							<tr>
								<td>2</td>
								<td><a href="http://www.suwonmental.org/sub03/sub02_18.asp">수면장애 자가검진</a></td>
								<td>수원시 정신건강복지센터</td>
							</tr>
							
						</table>
					</article>
				</section>
				
				
			</div>
			<%@ include file="footer.jsp"%>
			
		</div>
</body>
</html>

