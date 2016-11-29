<%@ include file="header.jsp"%>

<h1>3) Confirm Billing Address...</h1>

<form:form commandName="userBillingAddress" modelAttribute="userBillingsAddress">

		<label for="houseNumber">House Number: </label>${userBillingAddress.houseNumber}
		<br>
		<label for="houseName">House Name:</label>${userBillingAddress.houseName}
		<br>
		<label for="streetName">Street Name:</label>${userBillingAddress.streetName}
		<br>
		<label for="locality">Area:</label>${userBillingAddress.locality}
		<br>
		<label for="city">City:</label>${userBillingAddress.city}
		<br>
		<label for="state">State:</label>${userBillingAddress.state}
		<br>
		<label for="pincode">Pin Code:</label>${userBillingAddress.pincode}
		<br>
		
		<button name="_eventId_edit" type="submit" class="btn btn-warning">Edit</button>
		<button name="_eventId_submit" type="submit" class="btn btn-warning">Submit</button>
		<button name="_eventId_cancel" type="submit" class="btn btn-warning">Cancel</button>

</form:form>

<%@ include file="footer.jsp"%>