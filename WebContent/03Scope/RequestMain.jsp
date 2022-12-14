<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %>
    <%
    request.setAttribute("requestString", "request 영역의 문자열");
    request.setAttribute("requestPerson", new Person("안중근", 31));
    //문자열 객체와 Person객체를 속성으로 저장
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestMain.jsp</title>
</head>
<body>
<h2>request 영역의 속성 값 삭제하기</h2>
<%

	request.removeAttribute("requestString"); //정상 상태로 출력시 null로 표시
	request.removeAttribute("requestInteger"); //에러 없음
%>
<h2>request 영역의 속성 값 읽기</h2>
<%
	Person rPerson = (Person)(request.getAttribute("requestPerson"));
%>
<ul>
	<li>String 객체 : <%= request.getAttribute("requestString") %></li>
	<li>Person 객체 : <%= rPerson.getName() %>, <%= rPerson.getAge() %></li>
</ul>


<h2>포워드 된 페이지에서 request 영역 속성 값 읽기</h2>
<%
request.getRequestDispatcher("RequestForward.jsp?paramHan=한글&paramEng=English")
	.forward(request, response);
%>
</body>
</html>