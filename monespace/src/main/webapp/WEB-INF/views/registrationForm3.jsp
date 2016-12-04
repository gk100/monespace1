<%@ include file = "header.jsp" %>


<form:form modelAttribute="dealer">

				<form:label path="dealerName">Name of Dealer</form:label>
				<form:input path="dealerName" />
				<form:label path="dealerOrganisation">Organization</form:label>
				<form:input path="dealerOrganisation" />
				<form:label path="dealerAddress1">AddressLine1</form:label>
				<form:input path="dealerAddress1" />
				<form:label path="dealerAddress2">AddressLine2</form:label>
				<form:input path="dealerAddress2" />
				<td><form:label path="dealerContactNumber">Contact Number</form:label></td>
				<td><form:input path="dealerContactNumber" /></td>
				<td><form:label path="dealerMobileNumber">Mobile Number</form:label></td>
				<td><form:input path="dealerMobileNumber" /></td>
				<td><form:label path="dealerEmailId">Email-Id</form:label></td>
				<td><form:input path="dealerEmailId" /></td><br><br>
				<br>
		<button name="_eventId_back" type="submit" class="btn btn-warning" value="Back">Back</button>
		<button name="_eventId_submit" type="submit" class="btn btn-warning" value="Submit">Submit</button>
		<button name="_eventId_cancel" type="submit" class="btn btn-warning" value="Cancel">Cancel</button>
				
</form:form>

<%@ include file="footer.jsp"%>