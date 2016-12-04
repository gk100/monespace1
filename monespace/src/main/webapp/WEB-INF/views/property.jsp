<%@ include file="header.jsp"%>

	<!-- Search Bar -->
	<div class="container">
		<div class="row">
<!-- 			<h2>Slider Search box</h2> -->
			<div class="search">
				<input type="text" ng-model= "test" /> <br>
				<button style="position: absolute; height: 30px;" type="submit" class="btn btn-primary btn-sm">Search</button>
			</div>
		</div>
	</div>
	<br>
	<!-- Search Bar ends -->



<div class="container" style="margin-top:10px;">
	
  <h2>Manage Property</h2>

		<form:form method="POST" action="addproperty" modelAttribute="property" enctype="multipart/form-data">
		<form:input path="propertyId" hidden="true" />
		
		<div class="form-group">
		<div class="col-xs-4">
		<label><b>Type of Deal: </b></label>
		<form:select class="form-control input border light-grey" path="dealsCategory.dealsCategoryName" items="${listDealsCategories}" itemValue="dealsCategoryName" itemLabel="dealsCategoryName" data-toggle="tooltip" title="Choose Category For Your Property!"></form:select>
		</div>
		<div class="col-xs-4">
		<label><b>Type of Property: </b></label>
		<form:select class="form-control input border light-grey" path="propertyDealsSubCategory.propertyType" items="${listSubCategory}" itemValue="propertyType" itemLabel="propertyType" data-toggle="tooltip" title="Choose Subcategory For Your Property!"></form:select>
		</div>
		<div class="col-xs-4">
		<label><b>Dealer: </b></label>
		<form:select class="form-control input border light-grey" path="dealer.dealerName" items="${listDealer}" itemValue="dealerName" itemLabel="dealerName" data-toggle="tooltip" title="Choose Dealer For Your Property!"></form:select>
		</div>
		<div class="col-xs-4">
		<label>Property Name: </label>
		<form:input class="form-control input border light-grey" path="PropertyName"/>
		</div>
		<div class="col-xs-8">
		<label>Property Description: </label>
		<form:input class="form-control input border light-grey" path="PropertyDescription" />
		</div>
		
		<div class="col-xs-4">
		<label >Starting Price: </label>
		<form:input class="form-control input border light-grey" path="propertyPrice"/>
		</div>
		<div class="col-xs-4">
		<label>Quantity: </label>
		<br><form:input class="form-control input border light-grey" path="quantity"/>
		</div>
		<div class="col-xs-4">
		<label>Discount: </label>
		<form:input class="form-control input border light-grey" path="propertyDiscount"/>
		</div>

		<h4><b>Overview of Property: </b></h4>
		<div class="col-xs-6">
		<label>Line1: </label>
		<form:input class="form-control input-lg border light-grey" path="propertyOverview1"/>
		</div>
		<div class="col-xs-6">
		<label>Line2: </label>
		<form:input class="form-control input-lg border light-grey" path="propertyOverview2"/>
		</div>
		
		<h4><b>Location Advantages of Property: </b></h4>
		<div class="col-xs-6">
		<label>Line1:</label>
		<form:input class="form-control input-lg border light-grey" path="propertyLocationAdvantage1"/>
		</div>
		<div class="col-xs-6">
		<label>Line2:</label>
		<form:input class="form-control input-lg border light-grey" path="propertyLocationAdvantage2"/>
		</div>
		
		<h4><b>Amenities:</b></h4>
		<div class="col-xs-6">
		<label>Line1:</label>
		<form:input class="form-control input-lg border light-grey" path="propertyAmenities1"/>
		</div>
		<div class="col-xs-6">
		<label>Line2:</label>
		<form:input class="form-control input-lg border light-grey" path="propertyAmenities2"/>
		</div>
		
		<h4><b>Property Specifications:</b></h4>
		<div class="col-xs-4">
		<label>Line1: </label>
		<form:input class="form-control input-lg border light-grey" path="propertySpecifications1"/>
		</div>
		<div class="col-xs-4">
		<label>Line2: </label>
		<form:input class="form-control input-lg border light-grey" path="propertySpecifications2"/>
		</div>
		<div class="col-xs-4">
		<label>Line3: </label>
		<form:input class="form-control input-lg border light-grey" path="propertySpecifications3"/>
		</div>
		
		<h4><b>About Advertiser:</b></h4>
		<div class="col-xs-6">
		<label>Line1: </label>
		<form:input class="form-control input-lg border light-grey" path="propertyAdvertiser1"/>
		</div>
		<div class="col-xs-6">
		<label>Line2: </label>
		<form:input class="form-control input-lg border light-grey" path="propertyAdvertiser2"/>
		</div>
		
		<h4><b>Contact Details:</b></h4>
		<div class="col-xs-6">
		<label>Line1: </label>
		<form:input class="form-control input-lg border light-grey" path="propertyContactDetails1"/>
		</div>
		<div class="col-xs-6">
		<label>Line2: </label>
		<form:input class="form-control input-lg border light-grey" path="propertyContactDetails2"/>
		</div>
		
		<div class="col-xs-6">
		<label>Upload Image: </label>
		<form:input class="form-control input-lg border light-grey" type="file" path="uploadImage"/>
		
		<button type="submit" class="btn btn-success" data-toggle="tooltip" title="Submit Property Details!">Submit</button>
<!-- 		<input type="Submit" value="Submit" /> -->
		</div>
		</div>
	</form:form>
</div>

<hr>


<div class="container">
<div class="table-responsive">
<table class="table table-bordered">
			<thead>
				<tr>
					<th>#</th>
					<th>property</th>
					<th>Description </th>
					<th>Starting at </th>
					<th>Quantity </th>
<!--				<th>Discount </th>
					<th>Overview Line1</th>
 					<th>Overview Line2</th> 
					<th>Location Advantages Line1 </th>
					<th>Location Advantages Line2 </th> 
					<th>Amenities Line1 </th>
 					<th>Amenities Line2 </th>
					<th>Specifications Line1 </th>
					<th>Specifications Line2 </th>
	 				<th>Specifications Line3 </th> 
					<th>About Advertiser Line1 </th>
					<th>About Advertiser Line2 </th> -->
					<th>Contact Details</th>
<!-- 				<th>Contact Details Line2 </th> -->
					<th>Image</th>
					<th>
					<a class="btn btn-info btn-sm btn-warning" data-toggle="tooltip" title="You Can Edit Property From Below!">
					<span class="glyphicon glyphicon-edit"></span>EDIT</a>
					</th>
					<th>
					<a class="btn btn-info btn-sm btn-danger" data-toggle="tooltip" title="You Can Delete Property From Below!">
					<span class="glyphicon glyphicon-trash"></span> DELETE</a>
					</th>
				</tr>
			</thead>
				<tr ng-repeat="k in klm | filter: test">
					<td>{{k.propertyId}}</td>
					<td>{{k.propertyName}}</td>
					<td>{{k.propertyDescription}}</td>
					<td>{{k.propertyPrice}}</td>
					<td>{{k.quantity}}</td>
<!--				<td>{{k.propertyDiscount}}</td>
					<td>{{k.propertyOverview1}}</td>
 					<td>{{k.propertyOverview2}}</td> 
					<td>{{k.propertyLocationAdvantage1}}</td>
					<td>{{k.propertyLocationAdvantage2}}</td>
					<td>{{k.propertyAmenities1}}</td>
 					<td>{{k.propertyAmenities2}}</td> 
					<td>{{k.propertySpecifications1}}</td>
	 				<td>{{k.propertySpecifications2}}</td> 	
	 				<td>{{k.propertySpecifications3}}</td>	
					<td>{{k.propertyAdvertiser1}}</td>
	 				<td>{{k.propertyAdvertiser2}}</td> -->
					<td>{{k.propertyContactDetails1}}</td>
<!-- 				<td>{{k.propertyContactDetails2}}</td> -->
					<td><img src="resources/img/{{k.propertyId}}.jpg" width="100" height="100"></td>
					<td>
					<a href="editProperty-{{k.propertyId}}"data-toggle="tooltip" title="Click to Edit Property!">
					<span class="glyphicon glyphicon-edit"></span></a>
					</td>
					<td>
					<a href="deleteProperty-{{k.propertyId}}"data-toggle="tooltip" title="Click to Delete Property!">
					<span class="glyphicon glyphicon-trash"></span></a>
					</td>
				</tr>
			
</table>
</div>
</div>
	
<br>
	<script>
		angular.module('myApp', []).controller('myController',function($scope) {
					$scope.klm = ${stringProperty};
				});
	</script>

<%@ include file="footer.jsp"%>