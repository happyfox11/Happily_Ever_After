<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
<title>Happily_Ever_After_Login</title>
<style type="text/css">
	@font-face {
	  font-family: 'YeonSung-Regular';
	  src: 
			url('fonts/Yeon_Sung/YeonSung-Regular.woof') format('woff2'), /* 모던 브라우저. 압축률이 가장 높음(30%) */
	       url('fonts/Yeon_Sung/YeonSung-Regular.woof2') format('woff'), /* 대부분 브라우저. 압축률이 좋음*/
	       url('fonts/Yeon_Sung/YeonSung-Regular.ttf')  format('truetype'), /* Android, iOS, 압축 x */,
	       url('fonts/Yeon_Sung/YeonSung-Regular.eot'); /* IE9 호완성 모드, 압축 x */ 
	}

	.jumbotron{
		margin-top:100px;
	}
	
	*{
		margin:0;
		padding:0;
		font-family: 'Yeon Sung', cursive, sans-serif;
	}
	
	img{
		width:100px;
		height:100px;
	}
	span{
		font-size:30px;
	}
</style>
</head>
<body>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3" >로그인<img src="./resources/img/star.png"><span>Happily_Ever_After</span></h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%>
			<form class="form-signin" action="j_security_check" method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label> 
					<input	type="text" class="form-control" placeholder="ID"	name='j_username' required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label> 
					<input 	type="password" class="form-control" placeholder="Password" name='j_password' required>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
			</form>
		</div>
	</div>
	
</body>
</html>