<%@ include file="header.jsp"%>


<div class="container" style="margin-top: 60px;s">
<div class="responsive">

<div class="col-lg-10 col-md-offset-1" style= "padding-top: 50px;">
            <div class="well bs-component">
              <form:form class="form-horizontal" commandName="bookNow" modelAttribute="bookNow">
              
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
				<button name="_eventId_submit" type="submit" class="btn-lg btn-warning btn-block" value="Submit">Submit</button>
				<a href="_eventId_cancel" class="pull-right" >Cancel</a>
</fieldset>

</form:form>
</div>
</div>
</div>
</div>


<%@ include file="footer.jsp"%>