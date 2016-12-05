<%@ include file="header.jsp"%>

	<!-- Search Bar -->
	<div class="container">
		<div class="row">
<!-- 		<h2>Slider Search box</h2> -->
			<div class="search">
				<input type="text" ng-model= "test" /> <br>
				<button style="position: absolute; height: 30px;" type="submit" class="btn btn-primary btn-sm">Search</button>
			</div>
		</div>
	</div>
	<br>
	<!-- Search Bar ends -->
	
<h1 style="margin-top:50px; text-align:center; color:#880E4F"><i>My ShortList!</i></h1>	
<div class="container" >
<div class="table-responsive">
<table class="table table-bordered">
			<thead>
				<tr>
					<th>Category Name </th>
					<th>property Description</th>
					<th>Property Price:</th>
					<th>Rate:</th>
					
					<th>Image</th>
					<th>
					<a class="btn btn-info btn-sm btn-danger" data-toggle="tooltip" title="Delete Category!">
					<span class="glyphicon glyphicon-trash"></span> DELETE</a>
					</th>
				</tr>
			</thead>
				<tr ng-repeat="k in klm | filter: test">
					<td>{{k.propertyName}}</td>
					<td>{{k.propertyDescription}}</td>
					<td>{{k.propertyPrice}}</td>
					<td>{{k.rate}}</td>
					
					<td><img src="resources/img/{{k.propertyId}}.jpg" width="100" height="100"></td>
					<td>
					<a href="deleteShortListedProperty-{{k.shortListedPropertyId}}" data-toggle="tooltip" title="Click to Delete WishListed Property!">
					<span class="glyphicon glyphicon-trash" style="color: #F44336;"></span></a>
					</td>
				</tr>
</table>
</div>
</div>

<hr>
<a href="checkout"><button name="Submit" type="submit" class="btn btn-primary btn-lg welcome col-md-offset-1"
	Style= "background-color:green; margin-top:120px; padding: 10px 16px; font-size: 18px; line-height: 0;">
	Click to Confirm Deals!</button></a>	

	

	<script>
angular.module('myApp', []).controller('myController',function($scope) {
			$scope.klm = ${listOfShortList};
		});

</script>

<%@ include file="footer.jsp"%>