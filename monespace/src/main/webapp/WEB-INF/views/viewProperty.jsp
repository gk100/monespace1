<%@ include file="header.jsp"%>

<div class="panel panel-info" class="col-sm-10">
	<div class="panel-heading"><h4><b>Property Index:{{klm.propertyId}}</b></h4></div>
</div>

<div class="container">
  <img src="resources/img/{{klm.propertyId}}.jpg" class="img-responsive" alt="Cinque Terre" width="304" height="236">
</div>
<br>
 
	
	
	
<!--  
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div  class="preview col-md-6">	
					<div class="details col-md-6">
						<h1 class="PropertyName">{{klm.propertyName}}</h1>
						<h3 class="PropertyDescription">{{klm.propertyDescription}}</h3>
						<h1 class="propertyPrice"><b>{{klm.propertyPrice}}</b></h4>
						<h4 class=""></h4>
						
	
						<div class="action">
							<button class="add-to-cart btn btn-default" type="button">ShortList!</button>
							<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
-->	

<!-- 
 				 
					<td></td>
 				<td>{{k.propertyAdvertiser2}}</td> 
 				
					<td></td>
 				<td>{{k.propertyContactDetails2}}</td> -->



	
<div class="panel panel-info" class="col-sm-10">
	<div class="panel-heading"><h4><b>Main Info:</b></h4></div>
		<div class="panel-body">
      <h3>Type: {{klm.propertyName}}</h3>
      <h4>Status: {{klm.propertyDescription}}</h4>
      <h4>Starting Price: Rs.{{klm.propertyPrice}}/-</h4>
      <h4>Discount: {{klm.propertyDiscount}}</h4>
     </div>
</div>
	
<div class="panel panel-info" class="col-sm-10">
	<div class="panel-heading"><h4><b>Overview</b></h4></div>
		<div class="panel-body">
		<h4>{{klm.propertyOverview1}}</h4>
		<h4>{{klm.propertyOverview1}}</h4>
		</div>
</div>
	
<div class="panel panel-info" class="col-sm-10">
	<div class="panel-heading"><h4><b>Location Advantages:</b></h4></div>
		<div class="panel-body">
		<h4>{{klm.propertyLocationAdvantage1}}</h4>
		<h4>{{klm.propertyLocationAdvantage2}}</h4>
		</div>
</div>	

<div class="panel panel-info" class="col-sm-10">
	<div class="panel-heading"><h4><b></b>Amenities:</h4></div>
		<div class="panel-body">
		<h4>{{klm.propertyAmenities1}}</h4>
		<h4>{{klm.propertyAmenities2}}</h4>
		
		</div>
</div>	

<div class="panel panel-info" class="col-sm-10">
	<div class="panel-heading"><h4><b>Specifications:</b></h4></div>
		<div class="panel-body">
		<h4>{{klm.propertySpecifications1}}</h4>
		<h4>{{klm.propertySpecifications2}}</h4>
		<h4>{{klm.propertySpecifications3}}</h4>
		</div>
</div>
	
<div class="panel panel-info" class="col-sm-10">
	<div class="panel-heading"><h4><b>About Advertiser:</b></h4></div>
		<div class="panel-body">
		<h4>{{klm.propertyAdvertiser1}}</h4>
		<h4>{{klm.propertyAdvertiser2}}</h4>
		</div>
</div>	
	
<div class="panel panel-info" class="col-sm-10">
	<div class="panel-heading"><h4><b>Contact Details:</b></h4></div>
		<div class="panel-body">
		<h4>{{klm.propertyContactDetails1}}</h4>
		<h4>{{klm.propertyContactDetails1}}</h4>
		</div>
</div>		
<br>
<script>
angular.module('myApp', []).controller('myController',function($scope) {
			$scope.klm = ${listViewproperty};
		});

</script>
<%@ include file="footer.jsp"%>