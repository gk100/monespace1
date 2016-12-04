<%@ include file="header.jsp"%>

	
	<form:form modelAttribute="userDetail">

		<label for="firstName">First Name:</label>${userDetail.firstName}
		<br><label for="lastName">Last Name:</label>${userDetail.lastName}
		<br><label for="username">Username:</label>${userDetail.username}
		<br><label for="emailId">Email Id:</label>${userDetail.emailId}
		<br><label for="mobileNumber">Mobile Number:</label>${userDetail.mobileNumber}
		<br>
		<button name="_eventId_edit" type="submit" class="btn btn-warning" value="Edit">Edit</button>
		<button name="_eventId_submit" type="submit" class="btn btn-warning" value="Submit">Submit</button>
		<button name="_eventId_cancel" type="submit" class="btn btn-warning" value="Cancel">Cancel</button>
	</form:form>

<%@ include file="footer.jsp"%>