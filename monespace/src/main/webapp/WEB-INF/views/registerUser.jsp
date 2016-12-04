<%@ include file = "header.jsp" %>
<form:form method="POST" action="addUser" modelAttribute="user">
	
			<label for="username">UserName:</label>
			<form:input path="username" />
			<label for="password">Password:</label>
			<form:password path="password" />
			<input type="submit">
</form:form>

<%@ include file="footer.jsp"%>