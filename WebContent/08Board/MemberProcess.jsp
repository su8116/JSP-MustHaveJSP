<%@ page import="utils.JSFunction"%>
<%@ page import="java.sql.Date"%>
<%@ page import="memberShip.MemberDAO"%>
<%@ page import="memberShip.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //폼값 받기
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String name = request.getParameter("name");

//폼값을 DTO 객체에 저장
MemberDTO dto = new MemberDTO();
dto.setId(id);
dto.setPass(pass);
dto.setName(name);
//request로 넘어온 id값이 없어서 session에 있는 UserId를 활용한다.

//DAO객체를 통해 DB에 DTO 저장
MemberDAO dao = new MemberDAO(application);
int iResult = dao.insertMember(dto);
dao.close();

//성공 유뮤 확인
if(iResult == 1){ //글쓰기가 성공하면 1값이 반환됨 21행 참조
	response.sendRedirect("../06Session/LoginForm.jsp"); //게시판 목록으로 돌아감
} else { 
	JSFunction.alertBack("회원가입이 실패하였습니다.", out);
}
%>