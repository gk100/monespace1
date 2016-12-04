<%@ include file = "header.jsp" %>
<h1>Welcome to contact us page</h1>



<div class="container" style="margin-top: 75px;">
<div class="col-md-6 col-md-offset-3">
    <div class="form-area">  
        <form role="form">
        <br style="clear:both">
                    <h3 style=" margin-bottom: 25px; text-align: left;">Payment Portal</h3>
                    
    				<div class="form-group">
    					<label for="cardHolderName">Card Holder's Name</label>
						<input type="text" class="form-control col-sm-4" id="name" name="name" placeholder="Enter Name Given on Card" required>
					</div>
					<div class="form-group">
						<label for="cardHolderName">Card Number</label>
						<input type="text" class="form-control col-sm-2" id="email" placeholder="">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="mobile" name="mobile" placeholder="Mobile Number" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" required>
					</div>
                    <div class="form-group">
                    <textarea class="form-control" type="textarea" id="message" placeholder="Message" maxlength="140" rows="7"></textarea>
                        <span class="help-block"><p id="characterLeft" class="help-block ">You have reached the limit</p></span>                    
                    </div>
           
        			<button type="button" id="submit" name="submit" class="btn btn-primary pull-right">Submit</button>
        			<button type="button" id="cancel" name="submit" class="btn btn-danger">Cancel</button>
        </form>
    </div>
</div>
</div>










<div class="container">
<div class="col-md-6 col-md-offset-3">
    <div class="form-area">  
        <form role="form">
        <br style="clear:both">
                    <h3 style="margin-bottom: 25px; text-align: center;">Contact Form</h3>
    				<div class="form-group">
						<input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="email" name="email" placeholder="Email" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="mobile" name="mobile" placeholder="Mobile Number" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" required>
					</div>
                    <div class="form-group">
                    <textarea class="form-control" type="textarea" id="message" placeholder="Message" maxlength="140" rows="7"></textarea>
                        <span class="help-block"><p id="characterLeft" class="help-block ">You have reached the limit</p></span>                    
                    </div>
           
        <button type="button" id="submit" name="submit" class="btn btn-primary pull-right">Submit</button>
        </form>
    </div>
</div>
</div>

												<!-- Payment Portal -->


<div class="container">
<div class="responsive">

<div class="col-lg-10 col-md-offset-1" style= "padding-top: 50px;">
            <div class="well bs-component">
              <form class="form-horizontal">
                <fieldset>
                  <legend><img class="img-responsive pull-right" src="resources/img/Cards_accepted.png"><b>Payment Portal</b></legend>
                                                     
                  <div class="form-group">
                    <label for="number" class="col-lg-2 control-label">Enter Card Number:</label>
                    <div class="col-lg-2">
                      <input type="text" class="form-control" id="inputEmail" placeholder="****">
                    </div>
                    <div class="col-lg-2">
                      <input type="text" class="form-control" id="inputEmail" placeholder="****">
                    </div>
                    <div class="col-lg-2">
                      <input type="text" class="form-control" id="inputEmail" placeholder="****">
                    </div>
                    <div class="col-lg-2">
                      <input type="text" class="form-control" id="inputEmail" placeholder="****">
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label for="Data" class="col-lg-2 control-label">Expiration Date:</label>
                    <div class="col-lg-2"> 
                      <select class="form-control" id="select">
                        <option>Select Month</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                        <option>9</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                      </select>
                    </div>
                    <div class="col-lg-2">
                      	<select class="form-control" id="select">
                        <option>Select Year</option>
                        <option>2016</option>
                        <option>2017</option>
                        <option>2018</option>
                        <option>2019</option>
                        <option>2020</option>
                      	</select>
                    </div>
                    
                    <label for="number" class="col-lg-2 control-label">CVV/CVC:</label>
                    <div class="col-lg-2">
                      <input type="number" class="form-control" id="inputNumber" placeholder="****">
                    </div>
                    
                    </div>
                  
                  <div class="form-group">
                    <label for="text" class="col-lg-2 control-label">Card Holder Name:</label>
                    <div class="col-lg-6">
                      <input type="password" class="form-control" id="" placeholder="">
                  
</div>
</div>
				<button name="_eventId_submit" type="submit" class="btn-lg btn-warning btn-block">Submit</button>
				<a href="_eventId_cancel" class="pull-right">Cancel</a>
</fieldset>

</form>
</div>
</div>
</div>
</div>

													<!-- End -->







<%@ include file="footer.jsp"%>