<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.Consult"%>
<%@ page import="dao.ConsultRepository"%>
<%@ page errorPage="exceptionNoPage.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	if(request.getRemoteUser().equals("guest")){
		//out.println("<script>alert('접근 권한이 없습니다!!');history.back();</script>");	
		response.sendRedirect("exceptionNoPage.jsp");
	}



	request.setCharacterEncoding("UTF-8");
/*
	String consultId = request.getParameter("consultId");
	String cName = request.getParameter("cName");
	String description = request.getParameter("description");
	String picName = request.getParameter("picName");
	String picPhone = request.getParameter("picPhone1") +"-"+request.getParameter("picPhone2")+"-"+request.getParameter("picPhone3");
	String max = request.getParameter("maxNum");
*/

	String filename = "";
	String realFolder = application.getRealPath("/")+"resources/img/"; //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	String consultId = multi.getParameter("consultId");
	String cName = multi.getParameter("cName");
	String description = multi.getParameter("description");
	String picName = multi.getParameter("picName");
	String picPhone = multi.getParameter("picPhone1") +"-"+multi.getParameter("picPhone2")+"-"+multi.getParameter("picPhone3");
	String max = multi.getParameter("maxNum");


	Integer maxNum;

	if (max.isEmpty())
		maxNum = 0;
	else
		maxNum = Integer.valueOf(max);

	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	
	ConsultRepository dao = ConsultRepository.getInstance();

	Consult newConsult = new Consult();
	newConsult.setConsultId(consultId);
	newConsult.setCName(cName);
	newConsult.setDescription(description);
	newConsult.setPicName(picName);
	newConsult.setPicPhone(picPhone);
	newConsult.setMaxNum(maxNum);
	newConsult.setFilename(fileName);

	dao.addConsult(newConsult);

	response.sendRedirect("applyList.jsp");
%>
</body>
</html>




