<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Write.jsp</title>
<script type="text/javascript">
function validateForm(form){ // 폼 내용 검증
	if(form.id.value == "") {
		alert("아이디를 입력하세요.");
		form.id.focus();
		return false;
	}
	if(form.pass.value == ""){
		alert("비밀번호를 입력하세요.");
		form.pass.focus();
		return false;
	}
	if(form.name.value == ""){
		alert("이름을 입력하세요.");
		form.name.focus();
		return false;
	}
}
</script>
</head>
<body>
<h2>회원가입</h2>
<form name="memberFrm" method="post" action="MemberProcess.jsp"
 onsubmit="return validateForm(this);">
 <table border="1" width="90%">
 <tr>
 <td>아이디</td>
 <td>
 <input type="text" name="id" style="width:90%" />
 </td>
 </tr>
<tr>
<td>비밀번호</td>
<td>
 <input type="password" name="pass" style="width:90%" />
</td>
</tr>
<tr>
<td>이름</td>
<td>
 <input type="text" name="name" style="width:90%" />
</td>
</tr>
<tr>
<td colspan="2" align="center">
<button type="submit">작성 완료</button>
<button type="reset">다시 입력</button>
<button type="button" onclick="location.href='List.jsp';">목록 보기</button>
</td>
</tr>
</table>
</form>
</body>
</html>