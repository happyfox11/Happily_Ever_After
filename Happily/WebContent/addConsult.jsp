<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Consult"%>
<%@ page import="dao.ConsultRepository"%>

<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<script type ="text/javascript" src ="./resources/js/validation.js"></script>
		<title>Happily_Ever_After</title>

		<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
		
		<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
		<link rel="stylesheet" href="./resources/css/addConsult.css"/>
		
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
		if(!request.getRemoteUser().equals("admin")){
			//out.println("<script>alert('접근 권한이 없습니다!!');history.back();</script>");	
			response.sendRedirect("exceptionNoPage.jsp");
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
						<h1>새로운 프로그램 등록하기</h1>
						<div class="box">
							<form name="newConsult" action="./processAddConsult.jsp" method="post" enctype="multipart/form-data">
								<div>
									<label>상담 코드 : &nbsp;&nbsp;&nbsp;</label>
									<input type="text" name="consultId" id="consultId">
								</div><br/>
								<div>
									<label>상담 이름 : &nbsp;&nbsp;&nbsp;</label>
									<input type="text" name="cName" id="cName">
								</div><br/>
								<div>
									<label>상담 설명 : &nbsp;&nbsp;&nbsp;</label><br/>
									<textarea name="description" id="description" cols="50" rows="4" style="resize:none;margin-left:100px;"></textarea>
								</div><br/>
								<div>
									<label>담당자 이름 : &nbsp;&nbsp;&nbsp;</label>
									<input type="text" name="picName" id="picName">
								</div><br/>
								<div>
									<label>담당자 연락처 : &nbsp;&nbsp;&nbsp;</label>
									<select name="picPhone1">
										<option value="010">010</option>
										<option value="031">031</option>
										<option value="019">019</option>
									</select>
									-<input type="text" name="picPhone2" maxlength="4" size="6" id="picPhone2">
									-<input type="text" name="picPhone3" maxlength="4" size="6" id="picPhone3">
								</div><br/>
								<div>
									<label>최대 신청가능 인원수 : &nbsp;&nbsp;&nbsp;</label>
									<input type="text" name="maxNum" id="maxNum">
								</div><br/>
								<div>
									<label>이미지 : &nbsp;&nbsp;&nbsp;</label>
					 				<input type="file" name="consultImage" style="border:1px solid #000;" />
						 		</div><br/>
								<div>
									<div>
										<input type="button" class="link but" value="등록하기" onclick="CheckAddConsult()" >
									</div>
								</div>
							</form>
						</div>	
		
					</article>
				</section>
				
				
			</div>
			<%@ include file="footer.jsp"%>
			
		</div>
</body>
</html>

					
