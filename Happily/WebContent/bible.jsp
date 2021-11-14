<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Happily_Ever_After</title>
	
	<link href="https://fonts.googleapis.com/css?family=Concert+One|Kaushan+Script|Permanent+Marker|Yeon+Sung&display=swap" rel="stylesheet">
	
	<meta name="viewport" content="user-scalable=no,initial-scale=1"/>
	<link rel="stylesheet" href="./resources/css/bible.css"/>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
	</script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
	</script>

</head>
<script type="text/javascript">
	//기본 유효성 검사
	//1. 입력한 데이터 값의 유무 검사(장과 전체 절 체크/ 장과 시작절 마지막절 모두 작성한 경우만 제출됨)
	//2. 숫자 여부 확인하기(장, 시작 절, 마지막 절)
	function validCheckForm() {
		var form = document.bibleForm;
		//alert(form.entire_verse.checked);
		if (form.chapter.value == "") {
			alert("'장'을 입력해 주세요.");
			form.chapter.focus();
			return false;
		}else if(form.entire_verse.checked== true){//장 적혀있고, 전체절 체크된 경우
			if (isNaN(form.chapter.value)){
				alert("장은 숫자로만 입력 가능 합니다!");
				form.chapter.focus();
				return;
			}
			
			form.submit();
		} 
		else if (form.verse_start.value == "") {//장 적혀있고, 전체절 체크 안된 경우
			alert("'시작 절'을 입력해 주세요");
			form.verse_start.focus();
			return false;
		}
		else if (form.verse_end.value == "" ) {//장 적혀있고, 전체절 체크 안된 경우
			alert("'마지막 절'을 입력해 주세요");
			form.verse_end.focus();
			return false;
		}
		
		if (isNaN(form.verse_start.value )){
			alert("시작절은 숫자로만 입력 가능 합니다!");
			form.verse_start.focus();
			return;
		}
		if (isNaN(form.verse_end.value)){
			alert("마지막 절은 숫자로만 입력 가능 합니다!");
			form.verse_end.focus();
			return;
		}
		
		form.submit();
	}
</script>
<body>
<fmt:setLocale value='<%= request.getParameter("language") %>'/>
<fmt:bundle basename="bundle.message" >

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
					<h1>성경</h1>
					<p> 
						<a href="?language=ko" >[Korean </a> | <a href="?language=en" > English]</a>
					</p>
					<div>
					<img src="./resources/img/page.png"/>
					<form action="bible_process.jsp" method="post" name="bibleForm">						
						<p>	
							<fmt:message key="langu" /> : 
							<select name="language">
								<option value="kor">kor</option>
								<option value="jcl">jcl</option>
								<option value="asv">asv</option>
								<option value="cus">cus</option>
							</select>
						</p>
						<p>	
							<fmt:message key="bible_list" /> : 
							<select name="bible_list">
								   <option value="ge">ge (창세기)</option>
								   <option value="exo">exo (출애굽기)</option>
								   <option value="lev">lev (레위기)</option>
								   <option value="num">num (민수기)</option>
								   <option value="deu">deu (신명기)</option>
								   <option value="josh">josh (여호수아)</option>
								   <option value="jdgs">jdgs (사사기)</option>
								   <option value="ruth">ruth (룻기)</option>
								   <option value="1sm">1sm (사무엘상)</option>
								   <option value="2sm">2sm (사무엘하)</option>
								   <option value="1ki">1ki (열왕기상)</option>
								   <option value="2ki">2ki (열왕기하)</option>
								   <option value="1chr">1chr (역대상)</option>
								   <option value="2chr">2chr (역대하)</option>
								   <option value="ezra">ezra (에스라)</option>
								   <option value="neh">neh (느헤미야)</option>
								   <option value="est">est (에스더)</option>
								   <option value="job">job (욥기)</option>
								   <option value="psa">psa (시편)</option>
								   <option value="prv">prv (잠언)</option>
								   <option value="eccl">eccl (전도서)</option>
								   <option value="ssol">ssol (아가)</option>
								   <option value="isa">isa (이사야)</option>
								   <option value="jer">jer (예레미야)</option>
								   <option value="lam">lam (예레미야 애가)</option>
								   <option value="eze">eze (에스겔)</option>
								   <option value="dan">dan (다니엘)</option>
								   <option value="hos">hos (호세아)</option>
								   <option value="joel">joel (요엘)</option>
								   <option value="amos">amos (아모스)</option>
								   <option value="obad">obad (오바댜)</option>
								   <option value="jonah">jonah (요나)</option>
								   <option value="mic">mic (미가)</option>
								   <option value="nahum">nahum (나훔)</option>
								   <option value="hab">hab (하박국)</option>
								   <option value="zep">zep (스바냐)</option>
								   <option value="hag">hag (학개)</option>
								   <option value="zep">zep (스가랴)</option>
								   <option value="mal">mal (말라기)</option>
								   <option value="mat">mat (마태복음)</option>
								   <option value="mark">mark 마가복음)</option>
								   <option value="luke">luke (누가복음)</option>
								   <option value="john">john (요한복음)</option>
								   <option value="acts">acts (사도행전)</option>
								   <option value="rom">rom (로마서)</option>
								   <option value="1cor">1cor (고린도전서)</option>
								   <option value="2cor">2cor (고린도후서)</option>
								   <option value="gal">gal (갈라디아서)</option>
								   <option value="eph">eph (에베소서)</option>
								   <option value="phi">phi (빌립보서)</option>
								   <option value="col">col (골로새서)</option>
								   <option value="1th">1th (데살로니가전서)</option>
								   <option value="2th">2th (데살로니가후서)</option>
								   <option value="1tim">1tim (디모데전서)</option>
								   <option value="2tim">2tim (디모데후서)</option>
								   <option value="titus">titus (디도서)</option>
								   <option value="phmn">phmn (빌레몬서)</option>
								   <option value="heb">heb (히브리서)</option>
								   <option value="jas">jas (야고보서)</option>
								   <option value="1pet">1pet (베드로전서)</option>
								   <option value="2pet">2pet (베드로후서)</option>
								   <option value="1jn">1jn (요한1서)</option>
								   <option value="2jn">2jn (요한2서)</option>
								   <option value="3jn">3jn (요한3서)</option>
								   <option value="jude">jude (유다서)</option>
								   <option value="rev">rev (요한계시록)</option>
								  </select>
						</p>  
						<p>	<fmt:message key="chapter" /> : <input type="text" name="chapter" style="width='20px'"></p>
						<p>	<fmt:message key="read_entire_verse" /><input type="checkbox" name="entire_verse" ></p>
						<p>	<fmt:message key="verse" /> : <input type="text" name="verse_start">&nbsp;~&nbsp;<input type="text" name="verse_end"></p>
						<p>	<input type="button" value="<fmt:message key="search" />" id="read_buton" onclick="validCheckForm()"/>
						<input type="button" value="<fmt:message key="reset" />" onClick="location.href='bible.jsp'" id="reset_buton" ></p>
					</form>
					</div>
				</article>
				
				<%
					String show=request.getParameter("show");
					String info = request.getParameter("info");
					if(show !=null){
						out.println("<article><center><object type='text/html' data='http://ibibles.net/quote.php?"+info+"' width='700' height='300'></object></center></article>");
					}
				%>	
			</section>
		</div>
		<%@ include file="footer.jsp"%>
		
	</div>
	
</fmt:bundle>
</body>
</html>