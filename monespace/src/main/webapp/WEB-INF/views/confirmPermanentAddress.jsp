<%@ include file="header.jsp"%>

	<h1>1) Confirm Permanent Address...</h1>
	
	
<form:form commandName="userPermanentAddress" modelAttribute="userPermanentAddress">

		<label for="houseNumber">House Number: </label>${userPermanentAddress.houseNumber}
		<br>
		<label for="houseName">House Name:</label>${userPermanentAddress.houseName}
		<br>
		<label for="streetName">Street Name:</label>${userPermanentAddress.streetName}
		<br>
		<label for="area">Area:</label>${userPermanentAddress.area}
		<br>
		<label for="city">City:</label>${userPermanentAddress.city}
		<br>
		<label for="state">State:</label>${userPermanentAddress.state}
		<br>
		<label for="pincode">Pin Code:</label>${userPermanentAddress.pincode}
		<br>
		
		
		<button name="_eventId_edit" type="submit" class="btn btn-warning">Edit</button>
		<button name="_eventId_submit" type="submit" class="btn btn-warning">Submit</button>
		<button name="_eventId_cancel" type="submit" class="btn btn-warning">Cancel</button>

</form:form>

<%@ include file="footer.jsp"%>