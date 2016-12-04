<%@ include file="header.jsp"%>

<form:form modelAttribute="userDetail">

<!--  -->
<div class="container" style="margin-top:120px;">
<div class="col-md-5 col-md-offset-3">
    <div class="form-area">  
        <form role="form">
<!--         <br style="clear:both"> -->
        <h3 style="margin-bottom: 25px; text-align: center;">User Detail</h3>
<!--  -->		
		<br>
		<div class="form-group"><!--  -->
		<label for="firstName">First Name: </label>
		<form:input type="text" class="form-control" placeholder="Enter First Name here" path="firstName" /><!--  -->
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('firstName')}" var="err">
		<div><span style="color: #ff0000;">${err.text}</span></div>
		</c:forEach>
		</div>
		<div class="form-group"><!--  -->
		<label for="lastName">Last Name: </label>
		<form:input type="text" class="form-control" placeholder="Enter Last Name here" path="lastName" /><!--  -->
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('lastName')}" var="err">
		<div><span style="color: #ff0000;">${err.text}</span></div>
		</c:forEach>
		</div>
		<div class="form-group"><!--  -->
		<label for="phoneNumber">Phone Number: </label>
		<form:input type="text" class="form-control" name="phone" placeholder="Enter Phone Number here" path="phoneNumber" /><!--  -->
		</div>
		<div class="form-group"><!--  -->
		<label for="mobileNumber">Mobile Number: </label>
		<form:input type="text" class="form-control" placeholder="Enter Mobile Number here" path="mobileNumber" /><!--  -->
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('mobileNumber')}" var="err">
		<div><span style="color: #ff0000;">${err.text}</span></div>
		</c:forEach>
		</div>
		<div class="form-group"><!--  -->
		<label for="emailId">Email-Id: </label>
		<form:input type="text" class="form-control" placeholder="Enter your Email-Id here" path="emailId" /><!--  -->
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('emailId')}" var="err">
		<div><span style="color: #ff0000;">${err.text}</span></div>
		</c:forEach>
		</div>
		<div class="form-group"><!--  -->
		<label for="username">Username: </label>
		<form:input type="text" class="form-control" placeholder="Enter your username here" path="username" /><!--  -->
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('username')}" var="err">
		<div><span style="color: #ff0000;">${err.text}</span></div>
		</c:forEach>
		</div>
		<div class="form-group"><!--  -->
		<label for="password">Password: </label>
		<form:password class="form-control" placeholder="Enter your password here" path="password" /><!--  -->
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
		<div><span style="color: #ff0000;">${err.text}</span></div>
		</c:forEach>
		</div>
		<button  name="_eventId_submit" type="submit" class="btn btn-success btn-md pull-right">Submit</button>
		<button  name="_eventId_cancel" type="submit" class="btn btn-danger btn-md">Cancel</button>
	
        </form>
    </div>
</div>
</div>
</form:form><!--  -->

<%@ include file="footer.jsp"%>