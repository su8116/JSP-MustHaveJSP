<%@page import="common.DBConnPool"%>
<%@ page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ConnectionTest.java</title>
</head>
<body>
 	<h2>JDBC 테스트 1</h2>
 	<%
 	JDBConnect jdbc1 = new JDBConnect(); //연결
 	jdbc1.close(); //연결 해제
 	%>
 	
 	<h2>JDBC 테스트 2</h2>
 	<%
 	String driver = application.getInitParameter("OracleDriver");
 	String url = application.getInitParameter("OracleURL");
 	String id = application.getInitParameter("OracleId");
 	String pwd = application.getInitParameter("OraclePwd");
 	
 	JDBConnect jdbc2 = new JDBConnect(driver, url,id,pwd); //연결
 	jdbc2.close(); //연결 해제
 	%>
 	
  	<h2>JDBC 테스트 3</h2>
  	<%
  	JDBConnect jdbc3 = new JDBConnect(application); //연결
  	jdbc3.close(); //연결 해제
  	%>
  	
  	<h2>커넥션 풀 테스트 4</h2>
  	<%
  	DBConnPool pool = new DBConnPool();
  	pool.close();
  	%>
</body>
</html>