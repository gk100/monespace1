<%@ include file="header.jsp"%>

<form:form modelAttribute="userDetail">

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
        	<h3 style="text-align: center;"><b>User Detail</b></h3>
<!--  -->		
		<br>
		<div class="form-group"><!--  -->
		<label for="firstName"><span class="asterix" style="color:red;">*</span>First Name: </label>
		<form:input type="text" class="form-control" placeholder="Enter First Name here" path="firstName" /><!--  -->
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('firstName')}" var="err">
		<div><span style="color: #ff0000;">${err.text}</span></div>
		</c:forEach>
		</div>
		<div class="form-group"><!--  -->
		<label for="lastName"><span class="asterix" style="color:red;">*</span>Last Name: </label>
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
		<label for="mobileNumber"><span class="asterix" style="color:red;">*</span>Mobile Number: </label>
		<form:input type="text" class="form-control" placeholder="Enter Mobile Number here" path="mobileNumber" /><!--  -->
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('mobileNumber')}" var="err">
		<div><span style="color: #ff0000;">${err.text}</span></div>
		</c:forEach>
		</div>
		<div class="form-group"><!--  -->
		<label for="emailId"><span class="asterix" style="color:red;">*</span>Email-Id: </label>
		<form:input type="text" class="form-control" placeholder="Enter your Email-Id here" path="emailId" /><!--  -->
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('emailId')}" var="err">
		<div><span style="color: #ff0000;">${err.text}</span></div>
		</c:forEach>
		</div>
		<div class="form-group"><!--  -->
		<label for="username"><span class="asterix" style="color:red;">*</span>Username: </label>
		<form:input type="text" class="form-control" placeholder="Enter your username here" path="username" /><!--  -->
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('username')}" var="err">
		<div><span style="color: #ff0000;">${err.text}</span></div>
		</c:forEach>
		</div>
		<div class="form-group"><!--  -->
		<label for="password"><span class="asterix" style="color:red;">*</span>Password: </label>
		<form:password class="form-control" placeholder="Enter your password here" path="password" /><!--  -->
		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
		<div><span style="color: #ff0000;">${err.text}</span></div>
		</c:forEach>
		</div>
		<button  name="_eventId_submit" type="submit" class="btn btn-success btn-lg pull-right" style="line-height: 0;">Submit</button>
		<button  name="_eventId_cancel" type="submit" class="btn btn-danger btn-lg" style="line-height: 0;">Cancel</button>
	
		<h6 style="text-align: right;color:white;">Field Marked with <span class="asterix" style="color:red;">*</span> sign are Mandetory</h6>
	
        </form>
    </div>
</div>
</div>
</form:form><!--  -->

<%@ include file="footer.jsp"%>