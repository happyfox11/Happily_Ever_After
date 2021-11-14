<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Happily_Ever_After</title>
		
		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		
		<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
		<link rel="stylesheet" href="./resources/css/selfdia.css"/>
		
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
						<h1>감정 상태</h1>
						
						<table>
						
							<tr>
								<th>번호</th>
								<th>검사 명칭</th>
								<th>기관명</th>
							</tr>
							
							<tr>
								<td>1</td>
								<td><a href="https://blutouch.net/health/test5.asp">정신건강 이해</a></td>
								<td>블루터치</td>
							</tr>
							
							<tr>
								<td>2</td>
								<td><a href="http://www.najumh.go.kr/html/content.do?depth=cp&menu_cd=05_01_02_03">정신건강 자가진단</a></td>
								<td>국립나주병원</td>
							</tr>
							
							<tr>
								<td>3</td>
								<td><a href="http://sducounsel.sdu.ac.kr/sducounselap/cms/FR_CON/index.do?MENU_ID=170">우울 자가진단 검사</a></td>
								<td>서울디지털사이버대학교</td>
							</tr>
							
							<tr>
								<td>4</td>
								<td><a href="http://www.samsunghospital.com/dept/common/self_check01.do?DP_CODE=DEP&MENU_ID=003011">우울증 자가진단</a></td>
								<td>삼성서울병원</td>
							</tr>
							
							<tr>
								<td>5</td>
								<td><a href="https://biz.ajou.ac.kr/ws/counsel/counsel02_01.jsp">위기 자가진단</a></td>
								<td>아주대학교</td>
							</tr>
							
							<tr>
								<td>6</td>
								<td><a href="http://www.sungae.or.kr/health/sub_02.html ">정신건강 클리닉</a></td>
								<td>열린성애병원</td>
							</tr>
							
							<tr>
								<td>7</td>
								<td><a href="https://hrc.uos.ac.kr/counsel/test/testSelf.do?epTicket=LOG">심리상담실 자가진단 테스트</a></td>
								<td>서울시립대학교 인권센터</td>
							</tr>
						</table>
					</article>
				</section>
				
				
			</div>
			
			<%@ include file="footer.jsp"%>
		</div>
</body>
</html>
