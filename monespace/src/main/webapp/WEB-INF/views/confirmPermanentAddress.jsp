<%@ include file="header.jsp"%>
<html>
<head>
<title>Confirm Form 2</title>
</head>
<body>
	<h1>1) Confirm Permanent Address...</h1>
	
	
<%-- 	<form:form commandName="userPermanentAddress" modelAttribute="userPermanentAddress"> --%>

<%-- 		<label for="houseNumber">House Number: </label>${userPermanentAddress.houseNumber} --%>
<!-- 		<br> -->
<%-- 		<label for="houseName">House Name:</label>${userPermanentAddress.houseName} --%>
<!-- 		<br> -->
<%-- 		<label for="streetName">Street Name:</label>${userPermanentAddress.streetName} --%>
<!-- 		<br> -->
<%-- 		<label for="area">Area:</label>${userPermanentAddress.area} --%>
<!-- 		<br> -->
<%-- 		<label for="city">City:</label>${userPermanentAddress.city} --%>
<!-- 		<br> -->
<%-- 		<label for="state">State:</label>${userPermanentAddress.state} --%>
<!-- 		<br> -->
<%-- 		<label for="pincode">Pincode:</label>${userPermanentAddress.pincode} --%>
<!-- 		<br> -->
		
		<c:forEach items="${listDetail}" var="UserPermanentAddress">
			<tr>
				<td><c:out value="${UserPermanentAddress.houseNumber}"></c:out></td>
				
			</tr>
		</c:forEach>
		
		<button name="_eventId_edit" type="submit" class="btn btn-warning"
			value="Edit">Edit</button>
		<button name="_eventId_submit" type="submit" class="btn btn-warning"
			value="Submit">Submit</button>
		<button name="_eventId_cancel" type="submit" class="btn btn-warning"
			value="Cancel">Cancel</button>
<%-- </form:form> --%>
</body>
</html>