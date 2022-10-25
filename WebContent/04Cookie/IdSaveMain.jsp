<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="utils.CookieManager" %>
<%
String loginId = CookieManager.readCookie(request, "loginId");
String loginPw = CookieManager.readCookie(request, "loginPw");

//CookieManager 클래스에 readCookie 메서드를 활용하여 
//이름이 loginId인 쿠키를 읽어와 loginId 변수에 저장 
//-> 아이디가 있다면 아이디 입력폼에 기본 값으로 쓰임
String cookieCheckId = ""; //cookieCheck 변수 생성
String cookieCheckPw = ""; 
if(! loginId.equals("")){ //loginId에 빈 문자열 이외의 문자열을 저장 했다면
	cookieCheckId = "checked"; //cookieCheck에 checked가 대입된다.
	//[아이디 저장하기] 체크박스에 checked 속성을 부여한다.
} else if (! loginPw.equals("")){
	cookieCheckPw = "checked";
} 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdSaveMain.jsp</title>
</head>
<body>
	<h2>로그인 페이지</h2>
	<form action="IdSaveProcess.jsp" method="post">
	아이디 : <input type="text" name="user_id" value="<%= loginId %>" />
		<input type="checkbox" name="save_check" value="Y" <%= cookieCheckId %> />
		아이디 저장하기
	<br/>
	패스워드 : <input type="text" name="user_pw" value="<%= loginPw %>"/>
		<input type="checkbox" name="save_check" value="Y" <%= cookieCheckPw %> />
		암호 저장하기
	<br/>
	<input type="submit" value="로그인 하기" />
	</form>
</body>
</html>