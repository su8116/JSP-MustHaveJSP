<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> <%-- 지시어 --%>
<%!String str1 = "JSP";
	String str2 = "안녕하세요!!!";
%> <%-- 스크립트 요소 (선언부) --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HelloJSP</title>
</head>
<body>
	<h2>처음 만들어보는 <%= str1 %></h2>  <%-- 스크립트 요소 (표현식) --%>
	<P>
		<%
		out.println(str2 + str1 + "입니다. 지금부터 시작입니다.");
		%> <%-- 스크립트 요소 (스크립틀릿) --%>
	</P>
</body>
</html>