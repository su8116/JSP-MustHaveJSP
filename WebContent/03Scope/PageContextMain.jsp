<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %> <!-- common.Person 임폴트로 외부파일 연결 -->
<%
//속성 저장
//pageContext 객체를 통해서 page영역세 속성 값을 저장
pageContext.setAttribute("pageInteger", 1000);
//객체가 아닌 기본타입인 int는 포장객체인 랩퍼wrapper 클래스로 자동박싱 된다. (int -> Integer)
pageContext.setAttribute("pageString", "페이지 영역의 문자열");
pageContext.setAttribute("pagePerson", new Person("한석봉", 99));
//new Person("한석봉", 99)는 Object 타입으로 저장된다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PageContextMain.jsp</title>
</head>
<body>
<h2>page 영역의 속성 값 읽기</h2>
<%
//모든 속성이 Object 타입으로 저장되어 있어 원래 타입으로 강제타입 변환 -> 속성 읽기
int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
String pString = pageContext.getAttribute("pageString").toString();
//String 타입입 경우 toString() 메서드를 통해 문자열로 변환하여 출력
Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
%>

<ul>
	<li>Integer 객체 : <%= pInteger %></li>
	<li>String 객체 : <%= pString %></li>
	<li>Person 객체 : <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>
</ul>

<h2>include된 파일에서 page 영역 읽어오기</h2>
<%@ include file="PageInclude.jsp" %>
<!-- include 지시어로 다른 jsp 파일을 포함 -->

<h2>페이지 이동 후, page 영역 읽어오기</h2>
<a href="PageLocation.jsp">PageLocation.jsp 바로가기</a>
<!-- a태그로 감싼 링크를 클릭하면 다른 페이지로 이동 
	이전 페이지에서 만든 page영역은 소멸 확인-->

</body>
</html>