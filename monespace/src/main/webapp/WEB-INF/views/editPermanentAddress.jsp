<%@ include file="header.jsp"%>

	<h2>2) Edit Permanent Address</h2>
	
	<form:form	modelAttribute="userPermanentAddress">

		<div class="form-group">
		<label for="houseNumber" style="color: #0b0b3a;">House Number:</label>
		<form:input type="text" class="form-control" placeholder="Enter House Number" path="houseNumber" />
		</div>
		<div class="form-group">
		<label for="houseName" style="color: #0b0b3a;">House Name:</label>
		<form:input type="text" class="form-control" placeholder="Enter House Name" path="houseName" />
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('houseName')}" var="err">
		<div><span>${err.text}</span></div>
		</c:forEach>
		</div>
		<div class="form-group">
		<label for="streetName" style="color: #0b0b3a;">Street Name:</label>
		<form:input type="text" class="form-control" placeholder="Enter Street Name" path="streetName" />
		</div>
		<div class="form-group">
		<label for="area" style="color: #0b0b3a;">Area:</label>
		<form:input type="text" class="form-control" placeholder="Enter Location Area" path="area" />
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('area')}" var="err">
		<div><span>${err.text}</span></div>
		</c:forEach>
		</div>
		<div class="form-group">
		<label for="city" style="color: #0b0b3a;">City:</label>
		<form:input type="text" class="form-control" placeholder="Enter City" path="city" />
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('city')}" var="err">
		<div><span>${err.text}</span></div>
		</c:forEach>
		</div>
		<div class="form-group">
		<label for="state" style="color: #0b0b3a;">State:</label>
		<form:input type="text" class="form-control" placeholder="Enter State" path="state" />
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('state')}" var="err">
		<div><span>${err.text}</span></div>
		</c:forEach>
		</div>
		<div class="form-group">
		<label for="pincode" style="color: #0b0b3a;">Pincode:</label>
		<form:input type="text" class="form-control" placeholder="Enter Pincode" path="pincode" />
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('pincode')}" var="err">
		<div><span>${err.text}</span></div>
		</c:forEach>
		</div>
		<button name="_eventId_back" type="submit" class="btn btn-lg btn-warning btn-inline left" style="line-height: 0; margin-top:-10px;" value="Back">Back</button>
		<button name="_eventId_cancel" type="submit" class="btn  btn-lg btn-danger btn-inline center" style="line-height: 0; margin-top:-10px;" value="Cancel">Cancel</button>
		<button name="_eventId_submit" type="submit" class="btn  btn-lg btn-success btn-inline center" style="line-height: 0; margin-top:-10px;" value="Submit">Submit</button>
	</form:form>
	
<%@ include file="footer.jsp"%>