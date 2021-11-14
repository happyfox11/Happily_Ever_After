<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Happily_Ever_After</title>
		
		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		
		<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
		<link rel="stylesheet" href="./resources/css/food.css"/>
		
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
		
		<script type="text/javascript" src="jquery-1.6.4.min.js"></script>
		<script type="text/javascript" src="Moving.js"></script>
		<script>
			$(document).ready(function () {

			balloon_Moving1();
		});
  

		function balloon_Moving1() {
				  $("#toma")
				 .animate({ marginTop: "30px" }, 1200, "", function () {
					 $(this)
				  .animate({ marginTop: "0px" }, 1200, "", function () { 
					//자기 호출
					 balloon_Moving1(); });
				});
		}
		
		</script>
		
		<script>
			$(document).ready(function () {

			balloon_Moving2();
		});
  

		function balloon_Moving2() {
				  $("#gal")
				 .animate({ marginTop: "30px" }, 1200, "", function () {
					 $(this)
				  .animate({ marginTop: "0px" }, 1200, "", function () { 
					//자기 호출
					 balloon_Moving2(); });
				});
		}
		
		</script>
		
		<script>
			$(document).ready(function () {

			balloon_Moving3();
		});
  

		function balloon_Moving3() {
				  $("#cab")
				 .animate({ marginTop: "0px" }, 1200, "", function () {
					 $(this)
				  .animate({ marginTop: "30px" }, 1200, "", function () { 
					//자기 호출
					 balloon_Moving3(); });
				});
		}
		
		</script>
		
		<script>
			$(document).ready(function () {

			balloon_Moving4();
		});
  

		function balloon_Moving4() {
				  $("#pum")
				 .animate({ marginTop: "0px" }, 1200, "", function () {
					 $(this)
				  .animate({ marginTop: "30px" }, 1200, "", function () { 
					//자기 호출
					 balloon_Moving4(); });
				});
		}
		
		</script>
		
		<script>
			$(document).ready(function () {

			balloon_Moving5();
		});
  

		function balloon_Moving5() {
				  $("#mus")
				 .animate({ marginLeft: "30px" }, 1200, "", function () {
					 $(this)
				  .animate({ marginLeft: "0px" }, 1200, "", function () { 
					//자기 호출
					 balloon_Moving5(); });
				});
		}
		
		</script>
		

	<script type="text/javascript">
		function view1(opt) {
		  if(opt) {
			 spec1.style.display = "block";
		  }
		  else {
			 spec1.style.display = "none";
		  }
		}
	</script>
	
	<script type="text/javascript">
		function view2(opt) {
		  if(opt) {
			 spec2.style.display = "block";
		  }
		  else {
			 spec2.style.display = "none";
		  }
		}
	</script>
	
		<script type="text/javascript">
		function view3(opt) {
		  if(opt) {
			 spec3.style.display = "block";
		  }
		  else {
			 spec3.style.display = "none";
		  }
		}
	</script>
	
		<script type="text/javascript">
		function view4(opt) {
		  if(opt) {
			 spec4.style.display = "block";
		  }
		  else {
			 spec4.style.display = "none";
		  }
		}
	</script>

		<script type="text/javascript">
		function view5(opt) {
		  if(opt) {
			 spec5.style.display = "block";
		  }
		  else {
			 spec5.style.display = "none";
		  }
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
						<h1>몸에 좋은 음식</h1>
						
						<div id="land">
							<a href="#" onmouseover="view1(true)" onmouseout="view1(false)" style="text-decoration:none; ">
								<img src="./resources/img/tomato.png" id="toma"/>
							</a>
							<div id="spec1">
								<span>나는 토마토! 
								비타민과 미네랄이 풍부하고 몸속 건강을 챙겨주는 것은 물론 피부미용에도 도움을 줘!  
								내 안의 라이코펜은 자외선을 막아주는 보호막 역할을 해주고 피부 노화를 억제해주지!
								동안피부를 원한다면..꼭!
								</span>
							</div>
						
							
							<a href="#" onmouseover="view2(true)" onmouseout="view2(false)" style="text-decoration:none; ">
								<img src="./resources/img/galic.png" id="gal"/>
							</a>
							<div id="spec2">
								<span>나는 마늘!
								나로인해 살균가능한 병균이 70여 종이 넘고 항산화 작용, 향균, 항암작용, 면역력개선 효과가 있다고 알려져 있어~ 
								특히, 알리신 성분은 콜레스테롤을 분해해 
								체내 콜레스테롤 수치를 감소시키고, 혈관을 확장시켜 혈액의 흐름을 좋게하여 고혈압환자에게 도움을 줄 수 있지!
								다양한 요리에 활용되니, 접하기 쉽겠지??^0^
								</span>
							</div>
							
							
							<a href="#" onmouseover="view3(true)" onmouseout="view3(false)" style="text-decoration:none; ">
								<img src="./resources/img/sweetpum.png" id="pum"/>
							</a>
							<div id="spec3">
								<span>나는 단호박!
								 부기를 가라앉히고 해독작용,비만이나 당뇨,변비, 항독작용이 있어서 암환자에게도 좋지!
								 미네랄, 비타민B, 비타민C가 풍부하게 들어있어서 건강을 해칠 수 있는 병균으로부터 보호할 수 있게 면역력을 높여줘!
								내 안의 베타카로틴이란 성분이 몸에 들어오면 비타민A로 바뀌어서 눈 건강에 효능이!

								</span>
							</div>
							
							
							<a href="#" onmouseover="view4(true)" onmouseout="view4(false)" style="text-decoration:none; ">
								<img src="./resources/img/mushroom.png" id="mus"/>
							</a>
							<div id="spec4">
								<span>나는 버섯!
								내 안에는 호르몬과 유사한 사이토카인이 들어 있어서 혈중 농도를 증가시키고 면역력을 높여주어 세균과 바이러스 감염을 차단하죠. 
								장의 독소를 제거해주고, 항진균 작용을 하며 위궤양 치료, 동맥경화나 심근경색 같은 병,항알레르기에도 효과 만점!
								식이섬유와 리놀산은 혈액 내 콜레스테롤 수치를 낮춰주고, 풍부하게 함유되어 있는 칼륨 성분은 나트륨을 배출시켜주죠!!		
								</span>
							</div>
							
							<a href="#" onmouseover="view5(true)" onmouseout="view5(false)" style="text-decoration:none; ">
								<img src="./resources/img/cabbage.png" id="cab"/>
							</a>
							<div id="spec5">
								<span>나는 양배추!
								나는 비타민뿐 아니라 섬유질, 무기질 등 풍부한 영양성분 덕택에 그 효능도 다양해! 
								위염이나 위궤양 등을 완화시켜 위 건강에 도움을 주며 항산화와 항염, 항균 작용도 뛰어나!
								챙겨먹기 어렵다면 브로콜리양배추즙을 추천할게:)
								</span>
							</div>
							
							
							
							
						</div>
					</article>
				</section>
				
				
			</div>
			<%@ include file="footer.jsp"%>
			
		</div>
</body>
</html>

