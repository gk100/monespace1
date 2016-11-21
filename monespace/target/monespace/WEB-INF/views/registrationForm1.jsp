<%@ include file="header.jsp"%>
<html>
<head>
<title>User Detail</title>
</head>
<body>
	<h2>registration Form 1: User Detail</h2>
	
	<form:form modelAttribute="userDetail">

		<br>
		<label for="firstName">First Name:</label>
		<form:input path="firstName" />
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('firstName')}" var="err">
		<div><span>${err.text}</span></div>
		</c:forEach>
		<br>
		<label for="lastName">Last Name:</label>
		<form:input path="lastName" />
		<br>
		<label for="phoneNumber">Phone Number:</label>
		<form:input path="phoneNumber" />
		<br>
		<label for="mobileNumber">Mobile Number:</label>
		<form:input path="mobileNumber" />
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('mobileNumber')}" var="err">
		<div><span>${err.text}</span></div>
		</c:forEach>
		<br>
		<label for="emailId">EmailId:</label>
		<form:input path="emailId" />
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('emailId')}" var="err">
		<div><span>${err.text}</span></div>
		</c:forEach>
		<br>
		<label for="username">UserName:</label>
		<form:input path="username" />
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('username')}" var="err">
		<div><span>${err.text}</span></div>
		</c:forEach>
		<br>
		<label for="password">Password:</label>
		<form:password path="password" />
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
		<div><span>${err.text}</span></div>
		</c:forEach>
		<br>
		<button name="_eventId_submit" type="submit" class="btn btn-warning">Submit</button>
<!-- 		<button name= "_eventId_edit"type="submit" class="btn btn-warning" value="Edit">Edit</button> -->
		<button name="_eventId_cancel" type="submit" class="btn btn-warning">Cancel</button>
	</form:form>
</body>
</html>