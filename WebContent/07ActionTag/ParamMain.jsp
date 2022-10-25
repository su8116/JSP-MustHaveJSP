<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8"); 
	//한글 처리를 UTF-8로 (DD에서 설정함 : 생략 가능)
	String pValue="방랑시인"; //파라미터에서 사용할 번수, 값
%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>ParamMain.jsp</title>
</head>
<body>
	<jsp:useBean id="person" class="common.Person" scope="request" />
	<jsp:setProperty name="person" property="name" value="김삿갓" />
	<jsp:setProperty name="person" property="age" value="25" />
	<jsp:forward page="ParamForward.jsp?param1=엠아이티">
		<jsp:param name="param2" value="수원시 망포"/>
		<jsp:param name="param3" value="<%= pValue %>"/>
	</jsp:forward>
</body>
</html>