<%@ include file = "header.jsp" %>

<sec:authorize access="hasRole('ROLE_USER')">
<div class="container" style="margin-top:80px;">

    <div class="page-header">
        <h1>Feedback Form</h1>
    </div>
    
    <div class="well" style="min-height: 20px;
    				padding: 19px;
    				margin-bottom: 20px;
   					background-color: transparent;
/*    					#337ab7; */
    				border: 2px solid #080808;
    				border-radius: 10px;">
    				<h4>Have a question or comment? Fill out the following feedback form and we will get back to you as soon as possible.</h4></div>
    
    <form class="form-horizontal" method="post" role="form">
    	<div class="form-group">
    		<label for="email" class="col-sm-2 control-label">E-mail</label>
    		<div class="col-sm-4">
    			<input type="email" class="form-control" id="email" name="email" placeholder="E-mail Address" required autofocus>
    		</div>
    	</div>
    	
    	<div class="form-group">
    		<label for="name" class="col-sm-2 control-label">Name</label>
    		<div class="col-sm-4">
    			<input type="text" class="form-control" id="name" name="name" placeholder="Full Name" required>
    		</div>
    	</div>
    	
    	<div class="form-group">
    		<label for="name" class="col-sm-2 control-label">Message</label>
    		<div class="col-sm-6">
    			<textarea id="message" name="message" class="form-control" placeholder="Your Message" rows="5" required></textarea>
    		</div>
    	</div>
    
    	<div class="form-group">
    		<div class="col-sm-offset-2 col-sm-6">
    			<button type="submit" class="btn btn-lg btn-primary" style="line-height:0;"><i class="fa fa-envelope" aria-hidden="true" style="line-height:0;"></i>
    			 Send Message</button>
    		</div>
    	</div>
    </form>

</div>
</sec:authorize>

<div class="container" style="margin-top:100px;">
<h1><strong>Contact Address:</strong></h1><br>
	<div class="row text-center">
		<div class="col-sm-3 col-xs-6" style="padding:10px;background:#9C0;border: 2px solid #080808;">
        <h1><span class="glyphicon glyphicon-earphone"></span></h1>
        <h3>Customer Support</h3><h5>(8AM to 10PM)</h5>
        <h5>+91-1234567890, +91-9876543210</h5>
    </div>
    <div class="col-sm-3 col-xs-6 second-box" style="padding:5px; background:#39F;border: 2px solid #080808;">
        <h1><span class="glyphicon glyphicon-home"></span></h1>
        <h3>Location</h3>
        <h5>216, Netaji Subhash Chandra Bose Rd, Churchgate, Mumbai, Maharashtra-400021</h5><br>
    </div>
    <div class="col-sm-3 col-xs-6 third-box" style="padding:10px;background:#F66;border: 2px solid #080808;">
        <h1><span class="glyphicon glyphicon-send"></span></h1>
        <h3>E-mail</h3>
        <h4>info@monespace.com</h4><br>
    </div>
    <div class="col-sm-3 col-xs-6 fourth-box" style="padding:10px;background:#6CC;border: 2px solid #080808;">
    	<h1><span class="glyphicon glyphicon-leaf"></span></h1>
        <h3>Web</h3>
        <h4>www.monespace.com</h4><br>
    </div>
	</div>
</div>
<br>




<%@ include file="footer.jsp"%>