<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <jsp:useBean id="person" class="com.jsplec.ex.Person" scope="page"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty name="person" property="name" value="ȫ�浿"/>
	<jsp:setProperty name="person" property="age" value="19"/>
	<jsp:setProperty name="person" property="address" value="����� �߱� ����"/>
	<jsp:setProperty name="person" property="hobby" value="����"/>
	<jsp:setProperty name="person" property="major" value="���α׷���"/>
	
	�̸� : <jsp:getProperty name="person" property="name"/><br/>
	���� : <jsp:getProperty name="person" property="age"/><br/>
	�ּ� : <jsp:getProperty name="person" property="address"/><br/>
	��� : <jsp:getProperty name="person" property="hobby"/><br/>
	���� : <jsp:getProperty name="person" property="major"/><br/>
</body>
</html>