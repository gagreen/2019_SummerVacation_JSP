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
	���̵� �Է��ϼ��� <br/>
	<a href="./login.html">�α��� ȭ������</a>
<%
	}else if(user_id.equals("admin") ){
%>
	�����ڷ� �α����Ͽ����ϴ�.<br/>
	<form>
		<input type=button value="ȸ������ ����">
		<input type=button value="ȸ������ ����">
	</form>
<% 
	}else{
%>
	<h1>ȯ���մϴ�. <%=user_id %>��!</h1>
<%
	} 
%>
</body>
</html>