<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("EUC-KR");
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("pw");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	if(user_id == null || user_id.length() == 0){
%>
	아이디를 입력하세요 <br/>
	<a href="./login.html">로그인 화면으로</a>
<%
	}else if(user_id.equals("admin") ){
%>
	관리자로 로그인하였습니다.<br/>
	<form>
		<input type=button value="회원정보 삭제">
		<input type=button value="회원정보 수정">
	</form>
<% 
	}else{
%>
	<h1>환영합니다. <%=user_id %>님!</h1>
<%
	} 
%>
</body>
</html>