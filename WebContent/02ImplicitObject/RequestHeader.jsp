<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestHeader.jsp</title>
</head>
<body>
<h2>3. HTTP 요청 헤더 정보 읽기</h2>
<%
Enumeration headers = request.getHeaderNames();
while(headers.hasMoreElements()){
	String headerName = (String)headers.nextElement();
	String headerValue = request.getHeader(headerName);
	out.println("헤더명 : " + headerName + ", 헤더값 : " + headerValue+ "<br/>");
}
%>
<p>이 파일을 직접 실행하면 referer 정보는 출력되지 않습니다.</p>
</body>
</html>