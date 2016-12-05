<%@ include file = "header.jsp" %>

<h2>registration Form 2: Select Role</h2>

<form:form modelAttribute="userRole">

<div class="container" style="margin-top:120px;">
	<div class="col-md-5 col-md-offset-3">
		<div class="form-area">  
        <form role="form">
<!--         <br style="clear:both"> -->
        	<h3 style="margin-bottom: 25px; text-align: center;">Select User Role</h3>
				
				<form:radiobutton path="roleId" value="1" />Buyer
				<form:radiobutton path="roleId" value="2" />Dealer
				<br>
				<button name="_eventId_submitBuyer" type="submit" value="1" class="btn btn-warning">Buyer</button>
				<button name="_eventId_submitDealer" type="submit" value="2" class="btn btn-warning">Dealer</button>
				<br><br><button name= "_eventId_back"type="submit" class="btn btn-warning" value="Back">Back</button>
				<button name="_eventId_cancel" type="submit" class="btn btn-warning" value="Cancel">Cancel</button>
			
			</form>
		</div>
	</div>
</div>
</form:form>

<%@ include file="footer.jsp"%>