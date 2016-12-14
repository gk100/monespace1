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
	
<h1 style="margin-top:50px; text-align:center; color:#880E4F"><i>Add Property To ShortList!</i></h1>	
<div class="container" >
<div class="table-responsive">
<table class="table table-bordered">
			<thead>
				<tr>
					<th>#</th>
					<th>flag</th>
					<th><i class="fa fa-building" aria-hidden="true"></i> Property</th>
					<th><i class="fa fa-map-marker fa-2x" aria-hidden="true" style="color:#F50057;"></i> Location</th>
					<th>Price (in <i class="fa fa-inr" aria-hidden="true" style="color:green;"></i>)</th>
					<th>Rate  (in <i class="fa fa-inr" aria-hidden="true" style="color:green;"></i> /sq.Ft.)</th>
					<th>Registration Fees To Book Property/Properties (in <i class="fa fa-inr" aria-hidden="true" style="color:green;"></i>)</th>
					
					<th><i class="fa fa-picture-o" aria-hidden="true"></i> Image</th>
					<th>
					<a class="btn btn-info btn-sm btn-danger"><span class="glyphicon glyphicon-trash"></span> Remove</a>
					</th>
				</tr>
			</thead>
				<tr ng-repeat="k in resultValue=(klm | filter: test)">
					<td>{{k.shortListedPropertyId}}</td>
					<td>{{k.flag}}</td>
					<td>{{k.propertyName}}</td>
					<td>{{k.propertyDescription}}</td>
					<td>{{k.propertyPrice}}/-</td>
					<td>{{k.rate}}</td>
					<td>{{k.propertyPrice * 0.05}}/-</td>
					
					<td><img src="resources/img/{{k.propertyId}}.jpg" width="100" height="100"></td>
					<td>
					<a href="deleteOneShortListedProperty-{{k.shortListedPropertyId}}" data-toggle="tooltip" title="Remove From ShortList!">
					<span class="glyphicon glyphicon-trash" style="color: #F44336;"></span></a>
					</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>GRAND TOTAL</td>
					<td>{{resultValue |totalAmount: 'propertyPrice'}}</td>
				</tr>
</table>
</div>
</div>

<hr>
<a href="checkout"><button name="Submit" type="submit" class="btn btn-primary btn-lg welcome col-md-offset-1"
	Style= "background-color:green; margin-top:120px; padding: 10px 16px; font-size: 18px; line-height: 0;">
	Click to Confirm Deals!</button></a>	

	

	<script>
	var app = angular.module ('myApp', []).filter('totalAmount',function() {
		return function(data, key1, key2) {
			if (typeof (data) ==='undefined' && typeof (key1) === 'undefined') {
				return 0;
			}
			var sum = 0;
			for (var i=0; i<data.length; i++) {
				sum = sum + (parseInt(data[i][key1]) * 0.05);
			}
			return sum;
		}
	});
	
app.controller('myController',function($scope) {
			$scope.klm = ${listOfShortList};
		});

</script>

<%@ include file="footer.jsp"%>