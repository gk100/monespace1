<%@ include file="header.jsp"%>

<div class="panel panel-info" class="col-sm-10">
	<div class="panel-heading"><h4><b>Your Confirmed Property Details of {{klm.propertyName}} at {{klm.propertyDescription}}</b></h4>
</div>

<br>

 	<a href="checkout" class="btn btn-info btn-xs" role="button" Style= "background-color:green;">Confirm and CheckOut!</a>
 	<a href="deleteShortListedProperty-{{klm.propertyId}}" class="btn btn-info btn-xs" role="button" Style="background-color:red;">Cancel</a>
	
	<a href="checkout"><button name="Submit" type="submit" class="btn btn-primary pull-right welcome"  Style= "background-color:green;">Confirm and CheckOut!</button></a>
	<a href="deleteShortListedProperty-{{klm.propertyId}}" ><button  name="Cancel" class="btn btn-warning home"  Style="background-color:red;">Cancel</button></a></div>

<div class="container">
  <img src="resources/img/{{klm.propertyId}}.jpg" class="img-responsive" alt="Cinque Terre" Style= "height:500px; width:400px;">
</div>

<br>

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