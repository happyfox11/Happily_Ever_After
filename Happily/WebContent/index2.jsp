<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
		<title>Happily_Ever_After</title>
		
		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		
		<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
		<link rel="stylesheet" href="./resources/css/style.css"/>
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
		
		<script>

			function ch_bg()

			{

			document.getElementById('main-image').style.backgroundImage= "url(./resources/img/ex2.jpg)"

			}

		</script>

		<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
		
		<script>
			window.onload=function(){
				var clock=document.getElementById('clock');
				setInterval(function(){
					var now=new Date();
					clock.innerHTML=now.toString();
				},1000);
			};
		</script>
	
</head>
<body>
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
						--><a href="logout.jsp" id="logout"><span>'<%=request.getRemoteUser()%>' 님 로그아웃</span></a>
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
				
				<!--메인 화면이미지와 소개글-->
				<div id="main-image">
					<div>
						<div>
							<p id="typing"></p>
							<script>
								var xx=0;
								var txt='Are you alright?';
								var speed=400;
								typeWriter();

								function typeWriter(){
									if(xx<txt.length){
										document.getElementById("typing").innerHTML+=txt.charAt(xx);
										xx++;
										setTimeout(typeWriter,speed);
									}
								}
								
							</script>
							
							
							<p id="typing2">Here and Now...</p>
							
							<p>Don't Worry Be Happy  !</p>
							<div onclick="ch_bg()">
								<a href="#">
									<img src="./resources/img/heart.png" id="heart"/>
								
								<span>Take Heart!</span>
								<!--<input type="button" value="배경변경" onclick="ch_bg()">-->
								</a>
							</div>
							
						</div>
					</div>
				</div>
			</header>
			
			<!--컨텐츠-->
			<div id="content">
				<!--메뉴 4가지에 대한 소개-->
				<section id="four_part">
					<!--자가진단 이미지와 소개글-->
					<article>
						<div>
							<p>SELF DIAGNOSIS</p>
							<div>당신의 현재 상태를<br/>체크해보세요</div>
							<p>생활 습관, 식습관, 감정상태 등의 자가진단자료를 제공합니다.</p>
							<div><a href="selfdia.jsp">>>자세히 알아보기</a></div>
						</div>
					</article>
					<!--정신적 건강의 필요성과 이미지-->
					<article>
						<div>
							<p>MENTAL HEALTH</p>
							<div>100점짜리<br />마음가짐★<br />Attitude!</div>
							<div><a href="book.jsp">>>자세히 알아보기</a></div>
						</div>
					</article>
					<!--육체적 건강의 필요성과 이미지-->
					<article>
						<div>
							<p>PHYSICAL HEALTH</p>
							<div><a href="food.jsp">>>자세히 알아보기</a></div>
						</div>
					</article>
					<!--질의응답 설명-->
					<article>
						<div>
							<p>HELP</p>
							<div>Advice. Consult.<br/>Customized information.</div>
							<div><a href="number.jsp">>>자세히 알아보기</a></div>
						</div>
					</article>
				</section>
				
				
				
				
				
				
				
				
				
				
				<script language="JavaScript">
				
					$(document).ready(function() {
						//사용할 배너
						var $banner = $(".banner").find("ul");

						var $bannerWidth = $banner.children().outerWidth();//배너 이미지의 폭
						var $bannerHeight = $banner.children().outerHeight(); // 높이
						var $bannerLength = $banner.children().length;//배너 이미지의 갯수
						var rollingId;

						//정해진 초마다 함수 실행
						rollingId = setInterval(function() { rollingStart(); }, 3000);//다음 이미지로 롤링 애니메이션 할 시간차

						//마우스 오버시 롤링을 멈춘다.
						banner.mouseover(function(){
							//중지
							clearInterval(rollingId);
							$(this).css("cursor", "pointer");
						});
						//마우스 아웃되면 다시 시작
						banner.mouseout(function(){
							rollingId = setInterval(function() { rollingStart(); }, 3000);
							$(this).css("cursor", "default");
						});
						
						function rollingStart() {
							$banner.css("width", $bannerWidth * $bannerLength + "px");
							$banner.css("height", $bannerHeight + "px");
							//alert(bannerHeight);
							//배너의 좌측 위치를 옮겨 준다.
							$banner.animate({left: - $bannerWidth + "px"}, 1500, function() { //숫자는 롤링 진행되는 시간이다.
								//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
								$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
								//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
								$(this).find("li:first").remove();
								//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
								$(this).css("left", 0);
								//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
							});
						}
					}); 
				
				</script>
				
				
		
			
				<section id="lastSection">
					<article>
						<div class="contents">
							<div class="banner">
								<ul>
									<li><a href="https://blutouch.net/"><img src="./resources/img/m1.jpg"/></a></li>
									<li><a href="http://www.najumh.go.kr/main.do"><img src="./resources/img/m2.jpg"/></a></li>
									<li><a href="http://sdu.ac.kr/sducounselap/index.do"><img src="./resources/img/m3.jpg"/></a></li>
									<li><a href="http://www.samsunghospital.com/dept/common/self_check01.do?DP_CODE=DEP&MENU_ID=003011"><img src="./resources/img/m4.jpg"/></a></li>
									<li><a href="https://apcc1721.ajou.ac.kr/apcc1721/index.jsp"><img src="./resources/img/m5.jpg"/></a></li>
									<li><a href="http://www.sungae.or.kr/health/sub_02.html "><img src="./resources/img/m6.jpg"/></a></li>
									<li><a href="https://hrc.uos.ac.kr/counsel/counsel/counselPerson.do?epTicket=LOG"><img src="./resources/img/m7.jpg"/></a></li>
									<li><a href="https://www.dietitian.or.kr/kb_c_habits_diagnosis.do"><img src="./resources/img/f1.jpg"/></a></li>
									<li><a href="http://health.amc.seoul.kr/health/maintain/check.do"><img src="./resources/img/f2.jpg"/></a></li>
									<li><a href="http://www.foodsafetykorea.go.kr/portal/exhealthyfoodlife/index.html"><img src="./resources/img/f3.jpg"/></a></li>
									<li><a href="https://www.sleepnet.or.kr/sleep/self-test"><img src="./resources/img/s1.jpg"/></a></li>
									<li><a href="http://www.suwonmental.org/sub03/sub02_18.asp"><img src="./resources/img/s2.jpg"/></a></li>

									
								</ul>
							</div>
						</div>
					</article>
				</section>
				
			</div>
			<%@ include file="footer.jsp"%>
			
		</div>
</body>
</html>

