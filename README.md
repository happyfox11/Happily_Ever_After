# 😊 Happily_Ever_After Ver 2.0   
JSP web page that provides information for people's mental and physical health recovery  
(Version 1 : Using HTML, CSS, JavaScript, JQuery ➡️ Version 2 : +JSP, MySql)  
By hanstar0211@kyonggi.ac.kr   
<br/>

## 🌳 개발환경
- 운영체제 : Windows 10   
- 통합개발환경 : eclipse   
- 개발언어 : JSP   
- 자바개발환경 : JDK-14.0.2   
- 웹서버 : Tomcat v9.0  
- 데이터베이스 : MySQL 
<br/>   

## 🎥 시연영상  
https://www.youtube.com/watch?v=GM0C6OAXOMI    
<br/>

## 👻 주요 기능  
	
<table width="100%" style="table-layout:fixed">
  <tr background-color = "#f0f0f0">
    <th>Main Menu</th>
    <th colspan = "4">Sub Menu </th>
  </tr>
  <tr>
	  <td align=center width="20%">1. self-diagnosis</td>
	  <td align=center width="20%">📋 emotion<br/>self-diagnosis</td>
	  <td align=center width="20%">📋 sleeping<br/>self-diagnosis</td>
	  <td align=center width="20%">📋 eating<br/>self-diagnosis</td>
	  <td align=center width="20%">-</td>
  </tr>
  <tr>
	  <td align=center>2. physical health</td>
	  <td align=center>🍎 food</td>
	  <td align=center>😴 sleep</td>
	  <td align=center>-</td>
	  <td align=center>-</td>
  </tr>
  <tr>
	  <td align=center>3️. mental health</td>
	  <td align=center>📗 book</td>
	  <td align=center>🎶 music</td>
	  <td align=center>📓 bible</td>
	  <td align=center>🙏 qt</td>
  </tr>
  <tr>
	  <td align=center>4️. help</td>
	  <td align=center>☎️ tel</td>
	  <td align=center>🏥 consult</td>
	  <td align=center>-</td>
	  <td align=center>-</td>
  </tr>
</table>	
<br/>

## 🔔주의사항  
- 이 프로젝트는 크롬(100%)에 최적화되어 있습니다.  
- eclipse에서 실행을 시킬 때, 반드시 Chrome으로 실행시켜주세요. 또한, 화면 크기를 반드시 100%로 맞춰주십시오.  
	- 내부 브라우저, IE 등으로 실행을 시킬 시에는 글씨체 적용이 되지 않거나 화면이 깨지는 문제가 발생합니다.   
	- 화면 크기가 100%가 아닐 경우 화면이 깨지는 문제가 발생합니다. 반드시 지켜주시기를 바랍니다.  
- 데이터베이스에 관련된 코드를 실행하실 때, 보고서에 첨부된 코드를 복사하여 사용하시는 경우 따옴표로 인해 오류가 발생할 가능성이 높으므로, qt.sql 파일에 작성된 코드를 사용하시기를 부탁드리겠습니다.    
<br/>

## 📋 사용 방법  
1. eclipse에 Happily 프로젝트를 import 해주세요.  
2. Servers 프로젝트에 포함되어 있는 tomcat-users.xml에 아래의 4줄을 반드시 추가해주세요. 시큐리티에 의한 로그인에 사용될 것입니다.
```
<role rolename="admin"/>  
<role rolename="guest"/>  
<user username="admin" password="admin1234" roles="admin"/>  
<user username="guest" password="guest1234" roles="guest"/>  
```
3. MySQL Command Line Client를 열어주세요.  
4. MySQL의 계정은 root이고, 비밀번호는 1234입니다. (자신이 설정한 비밀번호를 입력하면 될 것입니다.)  
5. create database happilydb;를 실행시켜서 happilydb라는 데이터베이스를 생성해주세요.  
6. use happilydb;를 실행해주세요.  
7. eclipse로 돌아가서 resources 폴더 내의 sql 폴더 내의 qt.sql에서 create table문을 실행해주세요.  
(eclipse로 이동하지 않고, MySQL Command Line Client창에서 아래의 명령문을 실행해줘도 됩니다.)  
```
CREATE TABLE qt (  
  q_no int(11) NOT NULL AUTO_INCREMENT,  
  q_name varchar(30) NOT NULL,  
  q_pw varchar(10) NOT NULL,  
  q_memo varchar(500) NOT NULL,  
  q_writeDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,  
  PRIMARY KEY (q_no)  
)DEFAULT CHARSET=utf8;  
```
이제 모든 기본적인 준비가 끝났습니다.  

8. index2.jsp 파일(메인 홈페이지)을 찾으신 후, 실행해주세요.  
9. 초기화면으로 index2.jsp(메인 홈페이지)가 나오는 것이 아니라, 시큐리티에 의해 로그인 화면이 나올 것입니다.  
(아이디, 비밀번호)로 (admin, admin1234) 혹은 (guest, guest1234)를 입력하시면 됩니다.  
admin은 관리자 계정이고, guest는 일반 사용자 계정입니다.  

10. 이제 웹 페이지의 메뉴를 하나씩 눌러보며, 그 기능을 알아보세요!     
<br/>

## 📝 주요 파일 정보  
- 📑 Happily   
	- 📁 src  
		- 📁 dto   
			- Consult.java  
		- 📁 dao   
			- ConsultRepository.java  
		- 📁 bundle   
			- message.properties  
			- message_en.properties  
	- 📁 WebContent   
		- WEB-INF  
			- web.xml  
			- lib  
			     - cos.jar  
			     - jstl-1.2.jar  
			     - mysql-connector-java-5.1.49.jar  
		- 📄 39개의 개별 jsp 파일  
		- 📁 resources   
			- 📁 sql   
			     - qt.sql  
			- 📁 css   
			     - 📄 22개의 개별 css 파일  
			- 📁 img   
			     - 📄 51개의 개별 이미지 파일  
			- 📁 js   

			     - validation.js  
<br/>

## 💻 실행화면 예시
|<img width="100%" src="https://user-images.githubusercontent.com/89199587/173984185-64f5c86c-b6d2-4e29-86f6-3fc239989027.png"/>|<img width="100%" src="https://user-images.githubusercontent.com/89199587/173984275-00391a93-94a4-4bd2-8ec2-5f6cd1f2a644.png"/>|
|------|-----|
|<img width="100%" src="https://user-images.githubusercontent.com/89199587/173984289-70d0b08b-be01-4ed7-906c-dc8a54b69104.png"/>|<img width="100%" src="https://user-images.githubusercontent.com/89199587/173984295-ed1ad38e-8403-4f90-be5f-d8daa404dce5.png"/>|
|<img width="100%" src="https://user-images.githubusercontent.com/89199587/173984302-2032d242-9826-418f-aebf-18e1a9970e64.png"/>|<img width="100%" src="https://user-images.githubusercontent.com/89199587/173984810-e3e1b806-b26a-46f4-8d25-f9030651adcc.png"/>>|
|<img width="100%" src="https://user-images.githubusercontent.com/89199587/173984551-26e96f4c-a872-4aab-942e-f3d34832c383.png"/>|<img width="100%" src="https://user-images.githubusercontent.com/89199587/173985683-2934c8e2-36fe-4bea-b737-045598bb5062.png"/>|

