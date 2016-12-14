<%@ include file="header.jsp"%>

<!-- 	<h1>1) Confirm Permanent Address...</h1> -->
	
	
<form:form commandName="userPermanentAddress" modelAttribute="userPermanentAddress">

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
        	<h3 style="text-align: center;color: #0b0b3a;"><b>1) Confirm Permanent Address...</b></h3>
<!--  -->
		<div class="form-group">	
		<label for="houseNumber" style="color: #0b0b3a;">House Number: </label>${userPermanentAddress.houseNumber}
		</div>
		<div class="form-group">
		<label for="houseName" style="color: #0b0b3a;">House Name:</label>${userPermanentAddress.houseName}
		</div>
		<div class="form-group">
		<label for="streetName" style="color: #0b0b3a;">Street Name: </label>${userPermanentAddress.streetName}
		</div>
		<div class="form-group">
		<label for="area" style="color: #0b0b3a;">Area: </label>${userPermanentAddress.area}
		</div>
		<div class="form-group">
		<label for="city" style="color: #0b0b3a;">City: </label>${userPermanentAddress.city}
		</div>
		<div class="form-group">
		<label for="state" style="color: #0b0b3a;">State: </label>${userPermanentAddress.state}
		</div>
		<div class="form-group">
		<label for="pincode" style="color: #0b0b3a;">Pin Code: </label>${userPermanentAddress.pincode}
		</div>
		
		
		<button name="_eventId_edit" type="submit" class="btn btn-lg btn-warning btn-inline left" style="line-height: 0; margin-top:0px;">Edit</button>
		<button name="_eventId_cancel" type="submit" class="btn  btn-lg btn-danger btn-inline center" style="line-height: 0; margin-top:0px;">Cancel</button>
		<button name="_eventId_submit" type="submit" class="btn  btn-lg btn-success btn-inline center" style="line-height: 0; margin-top:0px;">Submit</button>
				
				</form>
			</div>
		</div>
	</div>
</form:form>

<%@ include file="footer.jsp"%>