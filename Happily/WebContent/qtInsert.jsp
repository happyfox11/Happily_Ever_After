<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Happily_Ever_After</title>
	
	<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
	
	<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
	<link rel="stylesheet" href="./resources/css/qt.css"/>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
	</script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
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
					<h1>큐티 다이어리 작성하기</h1>
					<div id="box1">
						<form action="qtInsertProcess.jsp" method="post">
							<table width="700px">
								<tr>
									<th colspan="2">큐티 다이어리</th>
								</tr>
								<tr>
									<td width="150px">이름</td>
									<td align="left" height="40px" >
										<input type="text" name="q_name" size="10" style="margin-left:10px;">
									</td>
								</tr>
								<tr>
									<td>비밀번호</td>
									<td align="left" height="40px">
										<input type="password" name="q_pw" size="10" style="margin-left:10px;">
									</td>
								</tr>
								<tr>
									<td align="center">qt 다이어리 작성</td>
									<td>
										<textarea name="q_memo" style="width:520px;height:300px;resize: none"></textarea>
									</td>
								</tr>
								<tr>
									<td colspan="2" align="right">
										<input type="submit" class = "link but1" value="저장하기">
										<a class="link but4" href="qt.jsp">qt 나눔으로...</a>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</article>
			</section>
				
			</div>
		
		<%@ include file="footer.jsp"%>
		
	</div>
</body>
</html>