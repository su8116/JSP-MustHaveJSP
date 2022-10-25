<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="utils.CookieManager" %>
<%@ page import="utils.JSFunction" %>
<% //form에 전달된 값을 저장
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String save_check = request.getParameter("save_check"); 

if("ksj".equals(user_id) && "1234".equals(user_pw)){
	//form에 있는 값을 비교한다 (and연산)
	//로그인 성공
	if(save_check != null && save_check.equals("Y")){
		CookieManager.makeCookie(response, "loginId", user_id, 86400);
		CookieManager.makeCookie(response, "loginPw", user_pw, 86400);
	} // 쿠키를 생성하여 값을 대입한다. 
	else{ //체크가 없으면 쿠키를 삭제한다.
		CookieManager.deleteCookie(response, "loginId");
		CookieManager.deleteCookie(response, "loginPw");
	}
	JSFunction.alertLocation("로그인에 성공했습니다.", "IdSaveMain.jsp", out);
}
else {
	//로그인 실패
	JSFunction.alertBack("로그인에 실패했습니다.", out);
}
%>