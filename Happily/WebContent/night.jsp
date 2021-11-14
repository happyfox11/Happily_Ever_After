<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Happily_Ever_After</title>
		
		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		
		<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
		<link rel="stylesheet" href="./resources/css/night.css"/>
		
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
		
		
		<script>
			var cnt=1;
			function imgToggle(){
				var img1=document.getElementById("img1");
				var img2=document.getElementById("img2");
				var img3=document.getElementById("img3");
				
				if(cnt%3==1){
					img1.src="./resources/img/moon.gif";
					img2.src="./resources/img/bame1.jpg";
					img3.src="./resources/img/bame2.jpg";
				}
				else if(cnt%3==2){
					img1.src="./resources/img/bame1.jpg";
					img2.src="./resources/img/bame2.jpg";
					img3.src="./resources/img/moon.gif";
				}
				else{
					img1.src="./resources/img/bame2.jpg";
					img2.src="./resources/img/moon.gif";
					img3.src="./resources/img/bame1.jpg";
				}

				cnt++;
			}
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
						<li>Physical Helath</li>
						<ul>
							<li><a href="food.jsp">음식</a></li>
							<li><a href="night.jsp">수면</a></li>
						</ul>
					</ul>
				</div>
				
				<!--메인 컨텐츠-->
				<section id="mainCont">
					<article>
						<h1>수면 상태</h1>
						
						<div id="nightback">
							<img src="./resources/img/moon.gif" id="img1"/>
							<img src="./resources/img/bame1.jpg" id="img2"/>
							<img src="./resources/img/bame2.jpg" id="img3"/>
							
						</div>
						<div id="next">
							<img src="./resources/img/star.png" onclick="imgToggle()" id="star"/>
							<p>별을 눌러서 다음 정보를 확인하세요:)</p>
						</div>
						<!--<input type="button" value="이미지토글"onclick="imgToggle()">-->
						
					</article>
				</section>
				
				
			</div>
			
			<!--푸터-->
			<%@ include file="footer.jsp"%>
		</div>
</body>
</html>

