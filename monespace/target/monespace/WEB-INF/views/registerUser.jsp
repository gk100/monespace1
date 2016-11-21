<%@ include file = "header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register User</title>
</head>
	<body>
		<form:form method="POST" action="addUser" modelAttribute="user">
	
			<label for="username">UserName:</label>
			<form:input path="username" />
			<label for="password">Password:</label>
			<form:password path="password" />
			<input type="submit">
		</form:form>
	</body>
</html>