<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//방법 1 :회원인증정보 삭제 (세션에 저장된 아이디와 이름을 제거)
session.removeAttribute("UserId");
session.removeAttribute("UserName");

//방법 2 : 모든 속성을 한번에 제거
session.invalidate(); //세션 자체를 무효화 시킨다.
out.println("세션 삭제 완료");

//속성 삭제 후 페이지 이동
response.sendRedirect("LoginForm.jsp");
%>