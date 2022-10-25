<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ExeQueryBoard.jsp</title>
</head>
<body>
<h2>정적쿼리문으로 board 테이블 데이터 추출 웹구현</h2>
<%
JDBConnect jdbc = new JDBConnect();

String sql = "SELECT num, title, content, id, postdate, visitcount FROM board";
Statement stmt = jdbc.con.createStatement();

ResultSet rs = stmt.executeQuery(sql);

while(rs.next()){
	String num = rs.getString("num");
	String title = rs.getString(1);
	String content = rs.getString(2);
	String id = rs.getNString(3);
	java.sql.Date postdate = rs.getDate("postdate");
	String visitcount = rs.getString("visitcount");
	
	out.println(String.format("%s %s %s %s %s %s",
			num, title, content, id, postdate, visitcount) + "<br/>");
}

jdbc.close();
%>

</body>
</html>