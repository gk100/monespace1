<%@ include file="header.jsp"%>
<html>
<head>
<title>Confirm Form 1</title>
</head>
<body>
	<h5>Voila! C'est un confirmForm1...</h5>
	<form:form commandName="userDetail" modelAttribute="userDetail">

		<label for="firstName">First Name:</label>${userDetail.firstName}
		<br>
		<label for="lastName">Last Name:</label>${userDetail.lastName}
		<br>
		<label for="phoneNumber">Phone Number:</label>${userDetail.phoneNumber}
		<br>
		<label for="mobileNumber">Mobile Number:</label>${userDetail.mobileNumber}
		<br>
		<label for="emailId">EmailId:</label>${userDetail.emailId}
		<br>
		<label for="username">UserName:</label>${userDetail.username}
		
		<button name="_eventId_edit" type="submit" class="btn btn-warning"
			value="Edit">Edit</button>
		<button name="_eventId_submit" type="submit" class="btn btn-warning"
			value="Submit">Submit</button>
		<button name="_eventId_cancel" type="submit" class="btn btn-warning"
			value="Cancel">Cancel</button>
	</form:form>
</body>
</html>