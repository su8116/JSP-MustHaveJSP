<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ApplicationMain.jsp</title>
</head>
<body>
	<h2>web.xml에서 설정한 내용 읽어오기</h2>
	초기화 매개변수 : <%= application.getInitParameter("INIT-PARAM") %>
	
	<h2>서버의 물리적 경로 얻어오기</h2>
	application 내장 객체 : <%= application.getRealPath("/02ImplicitObject") %>
	
	<h2>선언부에서 application 내장 객체 사용하기</h2>
	<%!
	public String useImplicitObject(){
		return this.getServletContext().getRealPath("/02ImplicitObject");
	} //물리적 경로를 반환 -> 서블릿 컨텍스트를 this로 얻는다.
	public String useImplicitObject(ServletContext app){
		return app.getRealPath("/02ImplicitObject");
	} //매개변수로 얻는다.
	%>
	<ul>
	<li>this 내장 객체 사용 : <%= useImplicitObject() %></li>
	<li>내장 객체를 인수로 전달 :<%= useImplicitObject(application) %> </li>
	</ul>
</body>
</html>