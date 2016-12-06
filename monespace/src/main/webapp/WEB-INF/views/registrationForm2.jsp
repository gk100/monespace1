<%@ include file = "header.jsp" %>

<h2>registration Form 2: Select Role</h2>

<form:form modelAttribute="userRole">

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
        	<h3 style="margin-bottom: 25px; text-align: center;">Select User Role</h3>
				
				<form:radiobutton path="roleId" value="1"/>Buyer
				<form:radiobutton path="roleId" value="2"/>Dealer
				<br>
				<button name= "_eventId_back"type="submit" class="btn btn-lg btn-warning" style="line-height: 0;" value="Back">Back</button>
				<button name="_eventId_cancel" type="submit" class="btn btn-lg btn-danger" style="line-height: 0;" value="Cancel">Cancel</button>
				<button name="_eventId_submitBuyer" type="submit" value="1" class="btn btn-lg btn-success pull-right" style="line-height: 0;">Buyer</button>
				<button name="_eventId_submitDealer" type="submit" value="2" class="btn btn-lg btn-success pull-right" style="line-height: 0;">Dealer</button>
			
			</form>
		</div>
	</div>
</div>
</form:form>

<%@ include file="footer.jsp"%>