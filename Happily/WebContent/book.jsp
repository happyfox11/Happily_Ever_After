<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
		<title>Happily_Ever_After</title>
		
		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		
		<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
		<link rel="stylesheet" href="./resources/css/book.css"/>
		
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
		 function ViewLayer1(){
			//만일 Pop라는 녀석이 닫혀있다면??
			if(document.getElementById("writing1").style.display=="none"){
			   //열어주어라
			   document.getElementById("writing1").style.display='inline'
			//그렇지 않은 모든 경우라면??
			}else{
			   //닫아주어라
				document.getElementById("writing1").style.display='none'
				}
			}
		</script>
			<script>  
		 function ViewLayer2(){
			//만일 Pop라는 녀석이 닫혀있다면??
			if(document.getElementById("writing2").style.display=="none"){
			   //열어주어라
			   document.getElementById("writing2").style.display='inline'
			//그렇지 않은 모든 경우라면??
			}else{
			   //닫아주어라
				document.getElementById("writing2").style.display='none'
				}
			}
		</script> 
		
		<script>  
		 function ViewLayer3(){
			//만일 Pop라는 녀석이 닫혀있다면??
			if(document.getElementById("writing3").style.display=="none"){
			   //열어주어라
			   document.getElementById("writing3").style.display='inline'
			//그렇지 않은 모든 경우라면??
			}else{
			   //닫아주어라
				document.getElementById("writing3").style.display='none'
				}
			}
		</script> 
		
		<script>  
		 function ViewLayer4(){
			//만일 Pop라는 녀석이 닫혀있다면??
			if(document.getElementById("writing4").style.display=="none"){
			   //열어주어라
			   document.getElementById("writing4").style.display='inline'
			//그렇지 않은 모든 경우라면??
			}else{
			   //닫아주어라
				document.getElementById("writing4").style.display='none'
				}
			}
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
						<h1>추천 도서</h1>
						
						<table>
							<tr>
								<th>자존감 수업</th>
								<th>미움 받을 용기</th>
							</tr>
							
							<tr>
								<td>
									<div>
										<img src="./resources/img/bo1.jpg"/>
									</div>
									<button><a href="javascript:ViewLayer1();">간단한 소개:)</a></button>
									

									<div id="writing1">
										<h3>자존감, 지금 시작해도 늦지 않다!</h3>
										<p>정신과 의사인 윤홍균 원장이 2년 넘게 심혈을 기울여 쓴 책으로,높은 자존감을 갖고 싶지만 방법을 모르는 사람, 낮은 자존감 때문에 내면의 불화와 갈등을 겪고 있는 이들이 건강한 자존감을 회복하도록 돕는다.
</p>
									</div>
								</td>
								
								<td>
									<div>
										<img src="./resources/img/bo2.jpg"/>
									</div>
									<button><a href="javascript:ViewLayer2();">간단한 소개:)</a></button>
									

									<div id="writing2">
										<h3>우리는 그저, 용기를 잃어버린 사람들</h3>
										<p>아들러 심리학이 말하는 '관계'와 '용기'에 대한 이야기를 철학자와 청년의 대화를
 통해 풀어나가는 '대화편'이다.자칫 딱딱하고 가르치는 투가 되기 쉬운 심리학이라는 학문의 한 분야를 대등한 입장에
서 논의한다는 느낌으로 읽어나갈 수 있기에 독자가 느끼는 거부감을 덜 수 있다. </p>
									</div>
								</td>
							</tr>
							
							<tr>
								<th>죽고 싶지만 떡볶이는 먹고 싶어</th>
								<th>말그릇</th>
							</tr>
							
							<tr>
								<td>
									<div>
										<img src="./resources/img/bo3.jpg"/>
									</div>
									<button><a href="javascript:ViewLayer3();">간단한 소개:)</a></button>
									

									<div id="writing3">
										<h3>의심 없이 편안하게 사랑하고 사랑받고 싶은<br/> 한 사람의 이야기</h3>
										<p>겉보기에는 멀쩡하지만 속은 곪아 있는 사람들, 불안 속에 하루하루를 버티고 있는 사람들에게 이제까지 간과하고 있었지만 본인으로부터 나오고 있을지 모를 또 다른 소리에 귀 기울여보게 한다.</p>
									</div>
								</td>
								
								<td>
									<div>
										<img src="./resources/img/bo4.jpg"/>
									</div>
									<button><a href="javascript:ViewLayer4();">간단한 소개:)</a></button>
									

									<div id="writing4">
										<h3>당신의 말이 태어나고 자라는 곳<br/>‘말 그릇’을 키워 관계와 인생의 주인이 되는 법</h3>
										<p>사람들은 ‘말재주’가 뛰어난 사람을 부러워하지만, 곁에 두고 싶어 하는 사람은 결국 말에서 마음이 느껴지는 사람이다. 많은 말을 하지 않지만 꼭 필요한 말을 조리 있게 하는 사람, 적절한 때에 입을 열고 정확한 순간에 침묵할 줄 아는 사람, 말 한마디에서도 품격이 느껴지는 사람에게 끌리게 되어 있다. 이 책은 우리의 말 그릇을 크고 단단하게 만들기 위한 다섯 개의 파트로 구성되어 있다. </p>
									</div>
								</td>
							</tr>
						</table>

						
					</article>
				</section>
				
				
			</div>
			
			<!--푸터-->
			<%@ include file="footer.jsp"%>
		</div>
</body>
</html>
