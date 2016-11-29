<%@ include file="header.jsp"%>

	<h2>2) Edit Billing Address</h2>
	
	<form:form	modelAttribute="userBillingAddress">

		<br>
		<label for="houseNumber">House Number:</label>
		<form:input path="houseNumber" />
		<br>
		<label for="houseName">House Name:</label>
		<form:input path="houseName" />
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('houseName')}" var="err">
		<div><span>${err.text}</span></div>
		</c:forEach>
		<br>
		<label for="streetName">Street Name:</label>
		<form:input path="streetName" />
		<br>
		<label for="locality">Area:</label>
		<form:input path="locality" />
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('locality')}" var="err">
		<div><span>${err.text}</span></div>
		</c:forEach>
		<br>
		<label for="city">City:</label>
		<form:input path="city" />
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('city')}" var="err">
		<div><span>${err.text}</span></div>
		</c:forEach>
		<br>
		<label for="state">State:</label>
		<form:input path="state" />
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('state')}" var="err">
		<div><span>${err.text}</span></div>
		</c:forEach>
		<br>
		<label for="pincode">Pincode:</label>
		<form:input path="pincode" />
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('pincode')}" var="err">
		<div><span>${err.text}</span></div>
		</c:forEach>
		<br>
		<button name="_eventId_back" type="submit" class="btn btn-warning" value="Back">Back</button>
		<button name="_eventId_submit" type="submit" class="btn btn-warning" value="Submit">Submit</button>
		<button name="_eventId_cancel" type="submit" class="btn btn-warning" value="Cancel">Cancel</button>
	</form:form>
	
<%@ include file="footer.jsp"%>