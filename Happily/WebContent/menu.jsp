<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<meta charset="utf-8">
		<title>Happily_Ever_After</title>
		
		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		
		<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
		<link rel="stylesheet" href="./resources/css/menu.css"/>
		
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
<%
	if(request.getRemoteUser()== null) response.sendRedirect("index2.jsp");
%>
	<!--전체를 감싸는 래퍼-->
		<div id="wrapper">
			<!--헤더-->
			<header>
				
				<!--search area-->
				<div id="search_area">
					<div>
						<div ><img src="./resources/img/logout.png" /></div>
						
						 <form><!--
							<input type="search"  placeholder="찾으실 단어..." style="border-style:none;width:150px; height:30px;"/>
							 <input type="submit"  value="검색"  style=" border-style:none; width:50px; height:30px;background-color:#0B0B61; color:#fff; border-radius:10px;" />	
						--><a href="logout.jsp" id="logout" style='text-decoration="none"'><span>'<%=request.getRemoteUser()%>' 님 로그아웃</span></a>
						</form>
						
					</div>
				</div>
				
				<!--로고와 메뉴 메인-->
				<div id="first_main">
						<!--로고와 제목-->
					<div id="title_Logo">
						<div>
							<img src="./resources/img/rainbows.png" class="star_illust"/>
							
						</div>
						<div>
							<p><a href="index2.jsp">Happily<br/>Ever After</a></p>
						</div>
					</div>
					
					<!--네비게이션 메뉴-->
					<nav>
						<div>
							<ul id="main-menu">
								<li class="outer-menu-item">
									<span class="menu_title">SELF-DIAGNOSIS</span>
									<ul class="inner-menu">
										<li><a href="selfdia.jsp">감정상태</a></li>
										<li><a href="eatdia.jsp">식습관</a></li>
										<li><a href="sleepdia.jsp">수면 상태</a></li>
									</ul>
								</li>
								<li class="outer-menu-item">
									<span class="menu_title">PHYSICAL HEALTH</span>
									<ul class="inner-menu">
										<li><a href="food.jsp">음식</a></li>
										<li><a href="night.jsp">수면</a></li>
									</ul>
								</li>
								<li class="outer-menu-item">
									<span class="menu_title">MENTAL HEALTH</span>
									<ul class="inner-menu">
										<li><a href="book.jsp">독서</a></li>
										<li><a href="music.jsp">음악</a></li>
										<li><a href="bible.jsp">성경</a></li>
										<li><a href="qt.jsp">큐티</a></li>
									</ul>
								</li>
								<li class="outer-menu-item">
									<span class="menu_title">HELP</span>
									<ul class="inner-menu">
										<li><a href="number.jsp">번호</a></li>
										<li><a href="applyList.jsp">신청</a></li>
									</ul>
								</li>
							
							</ul>
						</div>
					</nav>
				</div>
			</header>
</body>
</html>