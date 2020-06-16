<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%!
	Connection connection;
	Statement statement;
	ResultSet resultSet;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String upw = "tiger";
	String query = "select * from member";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%	
	try{
		Class.forName(driver);
		
		connection = DriverManager.getConnection(url, uid, upw);
		statement = connection.createStatement();
		resultSet = statement.executeQuery(query);
%>
		<table border="1">
		<tr align="center"><td width=150px>아이디</td><td width=150px>비밀번호</td><td width=150px>이름</td><td width=150px>전화번호</td></tr>
		
<%
		while(resultSet.next()){
			String id = resultSet.getString("id");
			String pw = resultSet.getString("pw");
			String name = resultSet.getString("name");
			String phone = resultSet.getString("phone");
%>
			<tr align="center">
				<td><%= id %></td>
				<td><%= pw %></td>
				<td><%= name %></td>
				<td><%= phone %></td>
			</tr>
<%
		}
%>
		</table>
<%
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(resultSet != null) resultSet.close();
			if(statement != null) statement.close();
			if(connection != null) connection.close();
		}catch(Exception e2){
			e2.printStackTrace();
		}
	}
%>
	
</body>
</html>