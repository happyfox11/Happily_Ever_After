<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
	<%
		String language = request.getParameter("language");
		String bible_list = request.getParameter("bible_list");
		String chapter = request.getParameter("chapter");
		String entire_verse = request.getParameter("entire_verse");
		String verse_start = "1";
		String verse_end = "180";
		if(entire_verse==null){
			verse_start = request.getParameter("verse_start");
			verse_end = request.getParameter("verse_end");
		}
		else if(entire_verse.equals("on")){
			verse_start="1";
			verse_end="180";
		}

		String info=language+"-"+bible_list+"/"+chapter+":"+ verse_start +"-"+verse_end;
		response.sendRedirect("bible.jsp?show=1&info="+info);
	%>
</body>
</html>