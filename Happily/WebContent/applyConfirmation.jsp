<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Consult"%>
<%@ page import="dao.ConsultRepository"%>


<%
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId();

	String applying_cartId = "";
	String applying_cusName = "";
	String applying_cusPhone= "";
	String applying_hopeDate = "";

	Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if (n.equals("Applying_cartId"))
				applying_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Applying_cusName"))
				applying_cusName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Applying_cusPhone"))
				applying_cusPhone = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Applying_hopeDate"))
				applying_hopeDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");

		}
	}
%>


<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Happily_Ever_After</title>

		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		
		<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
		<link rel="stylesheet" href="./resources/css/applyConfirmation.css"/>
		
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
			<h1>신청 정보 확인</h1>
	
			<div id="box">
				<div>
					<h2>옳은 정보인지, 다시 한번 확인부탁드립니다!</h2>
				</div><br/>
				<div id="gray">
					<div align="left">
						<h3>[신청자 정보]</h3> <br> 
						성명 : <% out.println(applying_cusName); %><br> 
						연락처 : <% 	out.println(applying_cusPhone);%><br> 
						희망 상담 시작일 : <%	out.println(applying_hopeDate);%> <br>
					</div><br/>

					<table>			
					<tr>
						<th>프로그램 명</th>
						<th>담당자 명</th>
						<th>담당자 연락처</th>
					</tr><br/>
					<%
						int sum = 0;
						ArrayList<Consult> cartList = (ArrayList<Consult>) session.getAttribute("cartlist");
						if (cartList == null)
							cartList = new ArrayList<Consult>();
						for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
							Consult consult=cartList.get(i);
					%>
					<tr>
						<td><%=consult.getCName()%></td>
						<td><%=consult.getPicName()%></td>
						<td><%=consult.getPicPhone()%></td>
					</tr>
					<%
						}
					%>
					</table><br/>
					<div class="butlist">
						<a href="./applyingInfo.jsp?cartId=<%=applying_cartId%>"class="link but1" role="button"> 이전 </a>
						<a href="./thankCustomer.jsp"  class="link but2" role="button"> 신청 확정 </a>
						<a href="./checkOutCancelled.jsp" class="link but3"	role="button"> 취소 </a>			
					</div>
				</div>
			</div>
		</article>
	</section>
	
	
</div>
<%@ include file="footer.jsp"%>
	
</div>
</body>
</html>

					
