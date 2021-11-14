<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Happily_Ever_After</title>
		
		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		
		<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
		<link rel="stylesheet" href="./resources/css/eatdia.css"/>
		
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
						<h1>식습관</h1>
						
						<table>
						
							<tr>
								<th>번호</th>
								<th>검사 명칭</th>
								<th>기관명</th>
							</tr>
							
							<tr>
								<td>1</td>
								<td><a href="https://www.dietitian.or.kr/kb_c_habits_diagnosis.do">올바른 식습관</a></td>
								<td>사단법인 대한영양사 협회</td>
							</tr>
							
							<tr>
								<td>2</td>
								<td><a href="http://health.amc.seoul.kr/health/maintain/check.do">나의 식생활 점검</a></td>
								<td>서울아산병원 건강증진센터</td>
							</tr>
							<tr>
								<td>3</td>
								<td><a href="http://www.foodsafetykorea.go.kr/portal/exhealthyfoodlife/index.html">영양 식생활 진단</a></td>
								<td>영양 식생활 진단 및 상담 프로그램</td>
							</tr>
						</table>
					</article>
				</section>
				
				
			</div>
			<%@ include file="footer.jsp"%>
			
		</div>
</body>
</html>

