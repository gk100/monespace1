<%@ include file="header.jsp"%>

<!-- <a href="deleteShortListedProperty-{{klm.shortListedPropertyId}}" ><button  name="Cancel" class="btn btn-warning btn-lg home col-md-offset-1"
	Style="background-color:red; margin-top:120px; padding: 10px 16px; font-size: 18px; line-height: 0;">
	Cancel</button></a>
<a href="checkout"><button name="Submit" type="submit" class="btn btn-primary btn-lg welcome col-md-offset-7"
	Style= "background-color:green; margin-top:120px; padding: 10px 16px; font-size: 18px; line-height: 0;">
	Click to Confirm Deal!</button></a>

<hr>

<div class="panel panel-info">
	<div class="panel-heading"><h4><b>Your Confirmed Property Details of {{klm.propertyName}} at {{klm.propertyDescription}}</b></h4>
</div>
		<div class="panel-body">
      		<h3>Type: {{klm.propertyName}}</h3>
      		<h4>Status: {{klm.propertyDescription}}</h4>
      		<h4>Starting Price: Rs.{{klm.propertyPrice}}/-</h4>
      		<h4>Discount: {{klm.propertyDiscount}}</h4>
     	</div>

<div class="container">
  <img src="resources/img/{{klm.propertyId}}.jpg" class="img-responsive" alt="Cinque Terre" Style= "height:500px; width:400px;">
</div>
</div>	



<hr>

<div class="panel panel-info" class="col-sm-10">
	<div class="panel-heading"><h4><b>Main Info:</b></h4></div>
		<div class="panel-body">
      <h3>Type: {{klm.propertyName}}</h3>
      <h4>Status: {{klm.propertyDescription}}</h4>
      <h4>Starting Price: Rs.{{klm.propertyPrice}}/-</h4>
      <h4>Discount: {{klm.propertyDiscount}}</h4>
     </div>
</div> -->



<h1 style="margin-top:100px; text-align:center; color:#880E4F"><i>Book Now!</i></h1>	
<div class="container">
<div class="table-responsive" >
<table class="table table-bordered">
			
			<thead>
				<tr>
					<th><i class="fa fa-building" aria-hidden="true"></i> Property</th>
					<th><i class="fa fa-map-marker fa-2x" aria-hidden="true" style="color:#F50057;"></i> Location</th>
					<th>Price (in <i class="fa fa-inr" aria-hidden="true" style="color:green;"></i>)</th>
					<th>Rate (in <i class="fa fa-inr" aria-hidden="true" style="color:green;"></i> /sq.Ft.)</th>
					<th>Registration Fees To Book Property (in <i class="fa fa-inr" aria-hidden="true" style="color:green;"></i>)</th>
					
					<th><i class="fa fa-picture-o" aria-hidden="true"></i> Image</th>
					<th>
					<a class="btn btn-info btn-sm btn-danger"><span class="glyphicon glyphicon-trash"></span> Remove</a>
					</th>
				</tr>
			</thead>
				<tr>
					<td>{{klm.propertyName}}</td>
					<td>{{klm.propertyDescription}}</td>
					<td>{{klm.propertyPrice}}/-</td>
					<td>{{klm.rate}} <b>per sq.Ft.</b></td>
					<td>{{klm.propertyPrice * 0.05}}/-</td>
					
					<td><img src="resources/img/{{klm.propertyId}}.jpg" width="100" height="100"></td>
					<td>
					<a href="deleteShortListedProperty-{{klm.shortListedPropertyId}}" data-toggle="tooltip" title="Click to Remove Property!">
					<span class="glyphicon glyphicon-trash" style="color: #F44336;"></span></a>
					</td>
				</tr>
</table>
</div>
</div>

<a href="checkout"><button name="Submit" type="submit" class="btn btn-primary btn-lg welcome col-md-offset-9"
	Style= "background-color:green; margin-bottom: 10px; padding: 10px 16px; font-size: 18px; line-height: 0;">
	Click to Confirm Deal!</button></a>	

	
<script>
angular.module('myApp', []).controller('myController',function($scope) {
			$scope.klm = ${shortListedPropertyList};
		});

</script>

<%@ include file="footer.jsp"%>