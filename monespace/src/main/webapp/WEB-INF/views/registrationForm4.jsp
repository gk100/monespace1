<%@ include file="header.jsp"%>

	
	<form:form	modelAttribute="userPermanentAddress">
<!--  -->
<div class="container" style="margin-top:120px;">
<div class="col-md-5 col-md-offset-4">
    <div class="form-area" style=" background-color: #5C6BC0; 
    							padding: 10px 40px 60px; 
    							margin: 10px 0px 60px; 
    							border: 3px solid #0b0b3a; 
    							border-bottom-left-radius: 0px; 
    							border-bottom-right-radius: 75px; 
    							border-top-left-radius: 50px; 
    							border-top-right-radius: 50px;">  
        <form role="form">
<!--         <br style="clear:both"> -->
        	<h3 style="text-align: center;color: #0b0b3a;"><b>Buyer Details 1:</b></h3>
        	<h3 style= "text-align: center;color: #0b0b3a;"><b>Permanent Address</b></h3>
<!--  -->		
			
			<div class="form-group">
				<label for="houseNumber" style="color: #0b0b3a;">House Number:</label>
				<form:input type="text" class="form-control" placeholder="Enter House Number" path="houseNumber" />
			</div>
			<div class="form-group">
				<label for="houseName" style="color: #0b0b3a;"><span class="asterix" style="color:red;">*</span>House Name:</label>
				<form:input type="text" class="form-control" placeholder="Enter House Name" path="houseName" />
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('houseName')}" var="err">
				<div><span style="color: #C62828;"><b>${err.text}</b></span></div>
				</c:forEach>
			</div>
			<div class="form-group">
				<label for="streetName" style="color: #0b0b3a;">Street Name:</label>
				<form:input type="text" class="form-control" placeholder="Enter Street Name" path="streetName" />
			</div>
			<div class="form-group">
				<label for="area" style="color: #0b0b3a;"><span class="asterix" style="color:red;">*</span>Area:</label>
				<form:input type="text" class="form-control" placeholder="Enter Location Area" path="area" />
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('area')}" var="err">
				<div><span style="color: #ff0000;">${err.text}</span></div>
				</c:forEach>
			</div>
			<div class="form-group">
				<label for="city" style="color: #0b0b3a;"><span class="asterix" style="color:red;">*</span>City:</label>
				<form:input type="text" class="form-control" placeholder="Enter City" path="city" />
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('city')}" var="err">
				<div><span style="color: #ff0000;">${err.text}</span></div>
				</c:forEach>
			</div>
			<div class="form-group">
				<label for="state" style="color: #0b0b3a;"><span class="asterix" style="color:red;">*</span>State:</label>
				<form:input type="text" class="form-control" placeholder="Enter State" path="state" />
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('state')}" var="err">
				<div><span style="color: #ff0000;">${err.text}</span></div>
				</c:forEach>
			</div>
			<div class="form-group">
				<label for="pincode" style="color: #0b0b3a;"><span class="asterix" style="color:red;">*</span>Pin Code:</label>
				<form:input type="text" class="form-control" placeholder="Enter Pincode" path="pincode" />
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('pincode')}" var="err">
				<div><span style="color: #ff0000;">${err.text}</span></div>
				</c:forEach>
			</div>
		<button name="_eventId_back" type="submit" class="btn btn-lg btn-warning btn-inline left" style="line-height: 0; margin-top:-10px;" value="Back">Back</button>
		<button name="_eventId_cancel" type="submit" class="btn  btn-lg btn-danger btn-inline center" style="line-height: 0; margin-top:-10px;" value="Cancel">Cancel</button>
		<button name="_eventId_submit" type="submit" class="btn  btn-lg btn-success pull-right btn-inline" style="line-height: 0; margin-top:-10px;" value="Submit">Submit</button>

		<h6 style="text-align: right;color:white;">Field Marked with <span class="asterix" style="color:red;">*</span> sign are Mandetory</h6>
</form>
</div>
</div>	
</div>

</form:form>

<%@ include file="footer.jsp"%>