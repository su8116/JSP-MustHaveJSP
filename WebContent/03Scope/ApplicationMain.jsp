<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ApplicationMain.jsp</title>
</head>
<body>
	<h2>application 영역</h2>
	<%
	Map<String, Person> maps = new HashMap<>();
	maps.put("actor1", new Person("홍지영",99));
	maps.put("actor2", new Person("허유림",19));
	application.setAttribute("maps", maps);
	//application 영역에 컬렉션 채로 저장함.
	%>
	application 영역에 속성이 저장되었습니다.
</body>
</html>