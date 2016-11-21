<%@ include file = "header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select Role</title>
</head>
<body>
<h2>registration Form 2: Select Role</h2>

<form:form modelAttribute="userRole">

		
			<form:radiobutton path="roleId" value="1" />Buyer
			<form:radiobutton path="roleId" value="2" />Dealer
			<br>
		<button name="_eventId_submitBuyer" type="submit" value="1" class="btn btn-warning">Buyer</button>
		<button name="_eventId_submitDealer" type="submit" value="2" class="btn btn-warning">Dealer</button>
		<br><br><button name= "_eventId_back"type="submit" class="btn btn-warning" value="Back">Back</button>
		<button name="_eventId_cancel" type="submit" class="btn btn-warning" value="Cancel">Cancel</button>
</form:form>
</body>
</html>