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
	<jsp:setProperty name="person" property="name" value="홍길동"/>
	<jsp:setProperty name="person" property="age" value="19"/>
	<jsp:setProperty name="person" property="address" value="서울시 중구 퇴계로"/>
	<jsp:setProperty name="person" property="hobby" value="독서"/>
	<jsp:setProperty name="person" property="major" value="프로그래밍"/>
	
	이름 : <jsp:getProperty name="person" property="name"/><br/>
	나이 : <jsp:getProperty name="person" property="age"/><br/>
	주소 : <jsp:getProperty name="person" property="address"/><br/>
	취미 : <jsp:getProperty name="person" property="hobby"/><br/>
	전공 : <jsp:getProperty name="person" property="major"/><br/>
</body>
</html>