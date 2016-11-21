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



<div class="w3-container w3-teal">
  <h2>Manage Property</h2>
</div>
		<form:form class="w3-container" method="POST" action="addproperty" modelAttribute="property" enctype="multipart/form-data">
		<form:input path="propertyId" hidden="true" />
		
		<br>
		<label class="w3-label w3-text-teal"><b>Type of Deal: </b></label>
		<form:select class="w3-input w3-border w3-light-grey" path="dealsCategory.dealsCategoryName" items="${listDealsCategories}" itemValue="dealsCategoryName" itemLabel="dealsCategoryName"></form:select>
		<br>
		<label class="w3-label w3-text-teal"><b>Type of Property: </b></label>
		<form:select class="w3-input w3-border w3-light-grey" path="propertyDealsSubCategory.propertyType" items="${listSubCategory}" itemValue="propertyType" itemLabel="propertyType"></form:select>
		<br>
		<label class="w3-label w3-text-teal"><b>Dealer: </b></label>
		<form:select class="w3-input w3-border w3-light-grey" path="dealer.dealerName" items="${listDealer}" itemValue="dealerName" itemLabel="dealerName"></form:select>
			
		
		<br><label class="w3-label w3-text-teal">Property Name: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="PropertyName" />
		<br><label class="w3-label w3-text-teal">Property Description: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="PropertyDescription" />
		<br><label class="w3-label w3-text-teal">Starting Price: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="propertyPrice"/>
		<br><label class="w3-label w3-text-teal">Discount: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="propertyDiscount"/>
		<br><label class="w3-label w3-text-teal">Overview Line1: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="propertyOverview1"/>
		<br><label class="w3-label w3-text-teal">Overview Line2: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="propertyOverview2"/>
		<br><label class="w3-label w3-text-teal">Location Advantages Line1: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="propertyLocationAdvantage1"/>
		<br><label class="w3-label w3-text-teal">Location Advantages Line2: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="propertyLocationAdvantage2"/>
		<br><label class="w3-label w3-text-teal">Amenities Line1: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="propertyAmenities1"/>
		<br><label class="w3-label w3-text-teal">Amenities Line2: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="propertyAmenities2"/>
		<br><label class="w3-label w3-text-teal">Specifications Line1: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="propertySpecifications1"/>
		<br><label class="w3-label w3-text-teal">Specifications Line2: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="propertySpecifications2"/>
		<br><label class="w3-label w3-text-teal">Specifications Line3: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="propertySpecifications3"/>
		<br><label class="w3-label w3-text-teal">About Advertiser Line1: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="propertyAdvertiser1"/>
		<br><label class="w3-label w3-text-teal">About Advertiser Line2: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="propertyAdvertiser2"/>
		<br><label class="w3-label w3-text-teal">Contact Details Line1: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="propertyContactDetails1"/>
		<br><label class="w3-label w3-text-teal">Contact Details Line2: </label>
		<br><form:input class="w3-input w3-border w3-light-grey" path="propertyContactDetails2"/>
		
		
		<br><label class="w3-label w3-text-teal">Upload Image: </label>
		<form:input class="w3-input w3-border w3-light-grey" type="file" path="uploadImage" placeholder="Please upload Image here" />
		<br>
		<input type="Submit" value="Submit" />
	</form:form>


<div class="w3-container">
<div class="w3-responsive">
<table class="w3-table w3-striped w3-bordered w3-border">
			
				<tr>
					<th>property Id </th>
					<th>property Name </th>
					<th>property Description </th>
					<th>Starting Price </th>
					<th>Discount </th>
<!--				<th>Overview Line1</th>
 					<th>Overview Line2</th> 
					<th>Location Advantages Line1 </th>
					<th>Location Advantages Line2 </th> 
					<th>Amenities Line1 </th>
 					<th>Amenities Line2 </th>
					<th>Specifications Line1 </th>
					<th>Specifications Line2 </th>
	 				<th>Specifications Line3 </th> -->
					<th>About Advertiser Line1 </th>
<!-- 				<th>About Advertiser Line2 </th> -->
					<th>Contact Details Line1 </th>
<!-- 				<th>Contact Details Line2 </th> -->
					<th>EDIT|DELETE</th>
				</tr>
				<tr ng-repeat="k in klm | filter: test">
					<td>{{k.propertyId}}</td>
					<td>{{k.propertyName}}</td>
					<td>{{k.propertyDescription}}</td>
					<td>{{k.propertyPrice}}</td>
					<td>{{k.propertyDiscount}}</td>
<!--				<td>{{k.propertyOverview1}}</td>
 					<td>{{k.propertyOverview2}}</td> 
					<td>{{k.propertyLocationAdvantage1}}</td>
					<td>{{k.propertyLocationAdvantage2}}</td>
					<td>{{k.propertyAmenities1}}</td>
 					<td>{{k.propertyAmenities2}}</td> 
					<td>{{k.propertySpecifications1}}</td>
	 				<td>{{k.propertySpecifications2}}</td> 	
	 				<td>{{k.propertySpecifications3}}</td>--> 	
					<td>{{k.propertyAdvertiser1}}</td>
<!--	 			<td>{{k.propertyAdvertiser2}}</td> -->
					<td>{{k.propertyContactDetails1}}</td>
<!-- 				<td>{{k.propertyContactDetails2}}</td> -->
					<td><img src="resources/img/{{k.propertyId}}.jpg" width="100" height="100"></td>
					<td><a href="editProperty-{{k.propertyId}}">EDIT |</a><a
						href="deleteProperty-{{k.propertyId}}">DELETE</a></td>
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