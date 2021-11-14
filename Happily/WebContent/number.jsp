<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Happily_Ever_After</title>
		
		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		
		<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
		<link rel="stylesheet" href="./resources/css/number.css"/>
		
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
						<h1>정신 건강 상담 전화</h1>
						
						<table>
						
							<tr>
								<th>지역</th>
								<th>지정기관</th>
								<th>연결번호</th>
							</tr>
							
							<tr>		
								<td>서울</td>
								<td>서울자살예방센터</td>
								<td>02-3444-2334</td>
							</tr>
							
							<tr>		
								<td>부산</td>
								<td>부산광역정신건강증진센터</td>
								<td>051-466-5076</td>
							</tr>
							
							<tr>	
								<td>대구	</td>
								<td>대구광역정신건강증진센터</td>
								<td>053-427-0199</td>
							</tr>
							
							<tr>		
								<td>인천</td>
								<td>인천광역정신건강증진센터</td>
								<td>032-468-9921</td>
							</tr>
							
							<tr>		
								<td>광주</td>
								<td>광주자살예방센터</td>
								<td>062-600-1900</td>
							</tr>
							
							<tr>	
								<td>대전	</td>
								<td>대전광역정신건강증진센터</td>
								<td>042-486-0005</td>
							</tr>
							
							<tr>		
								<td>울산</td>
								<td>국립부곡병원</td>
								<td>055-536-6360</td>
							</tr>
							
							<tr>		
								<td>경기</td>
								<td>경기도자살예방센터</td>
								<td>031-250-0250</td>
							</tr>
							
							<tr>		
								<td>강원</td>
								<td>강원광역정신건강증진센터</td>
								<td>033-251-1972	</td>
							</tr>
							
							<tr>		
								<td>충북</td>
								<td>충북광역정신건강증진센터</td>
								<td>043-217-0597</td>
							</tr>
							
							<tr>		
								<td>충남</td>
								<td>충남광역정신건강증진센터</td>
								<td>041-633-9188</td>
							</tr>
							
							<tr>		
								<td>제주</td>
								<td>제주의료원 정신과</td>
								<td>064-720-2232</td>
							</tr>
							
							<tr>		
								<td>경북</td>
								<td>국립부곡병원</td>
								<td>055-536-6360</td>
							</tr>
	
	
	

						</table>
					</article>
				</section>
				
				
			</div>
			<%@ include file="footer.jsp"%>
			
		</div>
</body>
</html>

