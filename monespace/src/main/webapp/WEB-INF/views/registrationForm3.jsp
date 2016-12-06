<%@ include file = "header.jsp" %>


<form:form modelAttribute="dealer">

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
        	<h3 style="text-align: center;color: #0b0b3a;"><b>Dealer Details</b></h3>
<!--  -->		
			<div class="form-group">
				<form:label path="dealerName" style="color: #0b0b3a">Name: </form:label>
				<form:input type="text" class="form-control" placeholder="Enter Dealer Name" path="dealerName" />
			</div>
				
			<div class="form-group">
				<form:label path="dealerOrganisation" style="color: #0b0b3a">Organization</form:label>
				<form:input type="text" class="form-control" placeholder="Organisatin Name" path="dealerOrganisation" />
			</div>
				
			<div class="form-group">
				<form:label path="dealerAddress1" style="color: #0b0b3a">Address: </form:label>
				<form:input type="text" class="form-control" placeholder="Enter Address Line1" path="dealerAddress1" />
				<form:input type="text" class="form-control" placeholder="Enter Address Line2" path="dealerAddress2" />
			</div>
				
			<div class="form-group">
				<form:label path="dealerContactNumber" style="color: #0b0b3a">Contact Number:</form:label>
				<form:input type="text" class="form-control" placeholder="Enter Alternet Contact Number" path="dealerContactNumber" />
			</div>
				
			<div class="form-group">
				<form:label path="dealerMobileNumber" style="color: #0b0b3a">Mobile Number:</form:label>
				<form:input type="text" class="form-control" placeholder="Enter Mobile Number" path="dealerMobileNumber" />
			</div>
				
			<div class="form-group">
				<form:label path="dealerEmailId" style="color: #0b0b3a">Email-Id:</form:label>
				<form:input type="text" class="form-control" placeholder="Enter EmailId" path="dealerEmailId"/><br><br>
			</div>
				<br>
				<button name="_eventId_back" type="submit" class="btn btn-lg btn-warning btn-inline left" style="line-height: 0; margin-top:-90px;" value="Back">Back</button>
				<button name="_eventId_cancel" type="submit" class="btn  btn-lg btn-danger btn-inline center" style="line-height: 0; margin-top:-90px;" value="Cancel">Cancel</button>
				<button name="_eventId_submit" type="submit" class="btn  btn-lg btn-success pull-right btn-inline" style="line-height: 0; margin-top:-50px;" value="Submit">Submit</button>
			</form>
		</div>
	</div>
</div>
				
</form:form>

<%@ include file="footer.jsp"%>