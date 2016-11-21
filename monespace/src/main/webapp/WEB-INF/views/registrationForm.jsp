<%@ include file = "header.jsp" %>

		<form:form method="POST" action="add/register" modelAttribute="userDetail">

			<form:input type="hidden" path="username" value="${sessionScope.username}" />
			<form:input type="hidden" path="userId" value="${sessionScope.userId}" />
			<form:input type="hidden" path="shortListId" value="${sessionScope.userId}" />
			<form:input type="hidden" path="password" value="${sessionScope.password}" />
			<form:input type="hidden" path="userRole.userId" value="${sessionScope.userId}" />

			<label for="emailId">EmailId:</label>
			<form:input path="emailId" />
			<label for="firstName">First Name:</label>
			<form:input path="firstName" />
			<label for="lastName">Last Name:</label>
			<form:input path="lastName" />
			<label for="phoneNumber">Phone Number:</label>
			<form:input path="phoneNumber" />
			<label for="mobileNumber">Mobile Number:</label>
			<form:input path="mobileNumber" />
			<form:radiobutton path="userRole.roleId" value="1" />Buyer
			<form:radiobutton path="userRole.roleId" value="2" />Dealer
			<form:input type="hidden" path="userPermanentAddress.city" />
			<form:input type="hidden" path="userBillingAddress.city" />
			<button type="submit" class="btn btn-warning">Submit</button>
		</form:form>