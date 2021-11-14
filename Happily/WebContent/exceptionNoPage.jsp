<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
<title>페이지 오류</title>
<style type="text/css">
	@font-face {
	  font-family: 'YeonSung-Regular';
	  src: 
			url('fonts/Yeon_Sung/YeonSung-Regular.woof') format('woff2'), /* 모던 브라우저. 압축률이 가장 높음(30%) */
	       url('fonts/Yeon_Sung/YeonSung-Regular.woof2') format('woff'), /* 대부분 브라우저. 압축률이 좋음*/
	       url('fonts/Yeon_Sung/YeonSung-Regular.ttf')  format('truetype'), /* Android, iOS, 압축 x */,
	       url('fonts/Yeon_Sung/YeonSung-Regular.eot'); /* IE9 호완성 모드, 압축 x */ 
	}
	h2,p,a{
		font-family: 'Yeon Sung', cursive, sans-serif;
	}
</style>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
		</div>
	</div>
	<div class="container">
		<p><%=request.getRequestURL()%></p>
		<p>
			<a href="index2.jsp" class="btn btn-secondary"> 메인페이지로 돌아가기 &raquo;</a>
		</p>
	</div>
</body>
</html>
