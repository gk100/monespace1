<%@ include file="header.jsp"%>

<a href="deleteShortListedProperty-{{klm.propertyId}}" ><button  name="Cancel" class="btn btn-warning btn-lg home col-md-offset-1"
	Style="background-color:red; margin-top:120px; padding: 10px 16px; font-size: 18px; line-height: 0;">
	Cancel</button></a>
<a href="checkout"><button name="Submit" type="submit" class="btn btn-primary btn-lg welcome col-md-offset-7"
	Style= "background-color:green; margin-top:120px; padding: 10px 16px; font-size: 18px; line-height: 0;">
	Confirm to Book Now!</button></a>

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

<br>
<!--  	<a href="checkout" class="btn btn-info btn-xs" role="button" Style= "background-color:green;">Confirm and CheckOut!</a> -->
<!--  	<a href="deleteShortListedProperty-{{klm.propertyId}}" class="btn btn-info btn-xs" role="button" Style="background-color:red;">Cancel</a> -->
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
</div>

		
		
<script>
angular.module('myApp', []).controller('myController',function($scope) {
			$scope.klm = ${shortListedPropertyList};
		});

</script>

<%@ include file="footer.jsp"%>