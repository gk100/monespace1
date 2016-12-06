<%@ include file="header.jsp"%>

	
	<form:form modelAttribute="userDetail">

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
        	<h3 style="text-align: center;color: #0b0b3a;"><b>Confirm User Details:</b></h3>
<!--  -->	
			<div class="form-group">
				<label for="firstName">First Name:</label>	${userDetail.firstName}
			</div>
			<div class="form-group">
				<label for="lastName">Last Name:</label>	${userDetail.lastName}
			</div>
			<div class="form-group">
				<label for="username">Username:</label>	${userDetail.username}
			</div>
			<div class="form-group">
				<label for="emailId">Email Id:</label>	${userDetail.emailId}
			</div>
			<div class="form-group">
				<label for="mobileNumber">Mobile Number:</label>	${userDetail.mobileNumber}
			</div>
		<button name="_eventId_edit" type="submit" class="btn btn-lg btn-warning btn-inline left" style="line-height: 0; margin-top:0px;" value="Edit">Edit</button>
		<button name="_eventId_cancel" type="submit" class="btn  btn-lg btn-danger btn-inline center" style="line-height: 0; margin-top:0px;" value="Submit" value="Cancel">Cancel</button>
		<button name="_eventId_submit" type="submit" class="btn  btn-lg btn-success btn-inline center" style="line-height: 0; margin-top:0px;" value="Submit">Submit</button>
		

</form>
</div>
</div>
</div>	
</form:form>

<%@ include file="footer.jsp"%>