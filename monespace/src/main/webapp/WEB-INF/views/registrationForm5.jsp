<%@ include file="header.jsp"%>
<html>
<head>
<title>Registration Form 5</title>
</head>
<body>
	<h5>registration Form 6: User Billing Detail</h5>
	<form:form modelAttribute="userBillingAddress">
		<br>
		<label for="houseNumber">House Number:</label>
		<form:input path="houseNumber" />
		<br>
		<label for="houseName">House Name:</label>
		<form:input path="houseName" />
		<br>
		<label for="streetName">Street Name:</label>
		<form:input path="streetName" />
		<br>
		<label for="locality">Area:</label>
		<form:input path="locality" />
		<br>
		<label for="city">City:</label>
		<form:input path="city" />
		<br>
		<label for="state">State:</label>
		<form:input path="state" />
		<br>
		<label for="pincode">Pincode:</label>
		<form:input path="pincode" />
		<br>
		<button name="_eventId_back" type="submit" class="btn btn-warning" value="Back">Back</button>
		<button name="_eventId_submit" type="submit" class="btn btn-warning" value="Submit">Submit</button>
		<button name="_eventId_cancel" type="submit" class="btn btn-warning" value="Cancel">Cancel</button>
	</form:form>
</body>
</html>