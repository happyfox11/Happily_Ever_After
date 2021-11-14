<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Consult"%>
<%@ page import="dao.ConsultRepository"%>
<%@ page import="java.net.URLDecoder"%>


<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<%
			String cartId = session.getId();
		%>
		<title>Happily_Ever_After</title>

		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="./resources/css/thankCustomer.css"/>
		<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
		
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
		String applying_cartId = "";
		String applying_cusName = "";
		String applying_hopeDate = "";
		String applying_cusPhone = "";

		Cookie[] cookies = request.getCookies();

		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if (n.equals("Applying_cartId"))
					applying_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				if (n.equals("Applying_hopeDate"))
					applying_hopeDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			}
		}
	%>

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
						<h1>신청 완료</h1>

						<div class="box">
							<h2>신청해주셔서 감사합니다.^_^</h2><br/>
							<p>	<%	out.println(applying_hopeDate);	%> 전에 담당자로부터 연락드리겠습니다!!	</p>
							<p>	신청 번호 :	<%	out.println(applying_cartId);	%></p><br/>		

							<p>	<a href="./applyList.jsp" class="link but"> &laquo; 프로그램 목록</a>		
						</div>
					
						<%
							//session.invalidate();
							session.removeAttribute("cartlist");
						
							for (int i = 0; i < cookies.length; i++) {
								Cookie thisCookie = cookies[i];
								String n = thisCookie.getName();
								if (n.equals("Applying_cartId"))
									thisCookie.setMaxAge(0);
								if (n.equals("Applying_cusName"))
									thisCookie.setMaxAge(0);
								if (n.equals("Applying_cusPhone"))
									thisCookie.setMaxAge(0);
								if (n.equals("Applying_hopeDate"))
									thisCookie.setMaxAge(0);
								
								response.addCookie(thisCookie);
							}
						%>

					</article>
				</section>
			</div>
					

			<%@ include file="footer.jsp"%>
			
		</div>
</body>
</html>



	
