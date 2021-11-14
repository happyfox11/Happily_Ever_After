<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Happily_Ever_After</title>
		
		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		
		<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
		<link rel="stylesheet" href="./resources/css/music.css"/>
		
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
						<h1>음악</h1>
						
						<table>
						
							<tr>
								<th>번호</th>
								<th>내용</th>
								<th>음악 들으러 가기!</th>
							</tr>
							
							<tr>
								<td>1</td>
								<td>밤에 듣기 좋은 판타지 뉴에이지</td>
								<td><div>
								<a href="https://www.youtube.com/watch?v=Iz5EYhsLNQQ">
								<img src="./resources/img/mu1.jpg"/></a>
								</div></td>
							</tr>
							
							<tr>
								<td>2</td>
								<td>자기 전에 듣기 좋은 피아노 음악</td>
								<td><div>
								<a href="https://www.youtube.com/watch?v=rcfbOtMeNFI">
								<img src="./resources/img/mu2.jpg"/></a>
								</div></td>
							</tr>
							
							<tr>
								<td>3</td>
								<td>마음이 편안해지는 스튜디오 지브리 음악</td>
								<td><div>
								<a href="https://www.youtube.com/watch?v=WdeCDEoZ8Rs">
								<img src="./resources/img/mu3.jpg"/></a>
								</div></td>
							</tr>
							
							<tr>
								<td>4</td>
								<td>불면증 치료 수면 음악</td>
								<td><div>
								<a href="https://www.youtube.com/watch?v=zm--TkytN_M">
								<img src="./resources/img/mu4.jpg"/></a>
								</div></td>
							</tr>

							

						</table>
					</article>
				</section>
				
				
			</div>
			<%@ include file="footer.jsp"%>
			
		</div>
</body>
</html>

