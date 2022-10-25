<%@ page import="common.Person"%>
<%@ page import="java.util.Set"%>
<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ApplicationResult.jsp</title>
</head>
<body>
	<h2>application 영역의 속성 읽기</h2>
	<%
	Map<String, Person> maps = (Map<String, Person>) application.getAttribute("maps");
	//maps는 main에서 넘어온 application 객체임으로 강제타입 변환하여 maps에 넣는다.
	Set<String> keys = maps.keySet(); //컬렉션에 key를 알아낸다.
	for (String key : keys) {//keys에 있는 값을 반복적을 출력하기 위해서 for문 작성
		Person person = maps.get(key);//key값에 해당하는 Person 객체를 가져옴
		out.print(String.format("이름 : %s, 나이 : %d<br/>", // %s->String  %d->숫자
				person.getName(), person.getAge())); //출럭 format
	}
	%>
</body>
</html>