<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" 
	buffer="1kb" autoFlush="false"%>
	<!-- 버퍼를 1kb로 설정하고 플러시를 false로 설정하여
    	  버프 크기를 줄인 후 버퍼가 가득차면 에러가 나도록 설정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AutoFlushTest.jsp</title>
</head>
<body>
	<%
		for (int i = 1; i <= 100; i++) { //버퍼 채우기
		out.println("abcde12345");
	}
	%>
</body>
</html>