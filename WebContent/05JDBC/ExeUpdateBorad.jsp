<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ExeUpdateBorad.jsp</title>
</head>
<body>
<h2>동적쿼리문으로 board 테이블 행 추가</h2>
<%
JDBConnect jdbc = new JDBConnect();
String title = "제목7";
String content = "내용 33889";
String id = "test1";

String sql = "INSERT INTO board VALUES (seq_board_num.nextval, ?, ?, ?, sysdate, 0)";
PreparedStatement psmt = jdbc.con.prepareStatement(sql);
psmt.setString(1, title);
psmt.setString(2, content);
psmt.setString(3, id);

int inResult = psmt.executeUpdate();
out.println(inResult + "행이 입력되었습니다.");

jdbc.close();

%>

</body>
</html>