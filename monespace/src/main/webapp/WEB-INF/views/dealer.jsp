<%@ include file = "header.jsp" %>
	
	<!-- Search Bar -->
		<div class="container">
			<div class="row">
<!-- 				<h2>Slider Search box</h2> -->
        			<div class="search">
					<input type="text" ng-model="test" />
 					<br><button style="position: absolute; height: 30px;" type="submit" class="btn btn-primary btn-sm">Search</button>
					</div>
			</div>
		</div>
		<br>
	<!-- Search Bar ends -->
	
<div class="container" style="margin-top:10px;">
	<div class="responsive">
  <h2>Manage Dealer Detail</h2>
	

		<form:form method="POST" action="add/dealer" modelAttribute="dealer">
		<form:input path="dealerId" hidden="true" />
		
			<div class="form-group">
			<div class="col-xs-6">
				<form:label path="dealerName">Name of Dealer: </form:label>
				<form:input class="form-control input border light-grey" path="dealerName"/>
			</div>
			<div class="col-xs-6">
				<form:label path="dealerOrganisation">Name of Organization: </form:label>
				<form:input class="form-control input border light-grey" path="dealerOrganisation"/>
				</div>
			<div class="col-xs-6">
				<form:label path="dealerAddress1">Address Line1: </form:label>
				<form:input class="form-control input border light-grey" path="dealerAddress1"/>
			</div>
				<div class="col-xs-6">
				<form:label  path="dealerAddress2">Address Line2: </form:label>
				<form:input class="form-control input border light-grey" path="dealerAddress2"/>
				</div>
				<div class="col-xs-6">
				<form:label path="dealerContactNumber">Contact Number: </form:label>
				<form:input class="form-control input border light-grey" path="dealerContactNumber"/>
				</div>
				<div class="col-xs-6">
				<form:label path="dealerMobileNumber">Mobile Number: </form:label>
				<form:input class="form-control input border light-grey" path="dealerMobileNumber"/>				
				</div>
				<div class="col-xs-6">
				<form:label path="dealerEmailId">Email-Id: </form:label>
				<form:input class="form-control input border light-grey" path="dealerEmailId"/>
				
				
<!-- 				<td colspan="2"> -->				
				<button type="submit" class="btn btn-success" data-toggle="tooltip" title="Submit Dealer From Here!">Submit</button>
<!-- 				<input type="submit" value="Submit"/> -->
				</div>
				</div>
<!-- 				</td> -->
			
		
	</form:form>
</div>
</div>

<hr>

<div class="container">
<div class="table-responsive">
<table class="table table-bordered">
			<thead>
				<tr>
					<th>#</th>
					<th>Name of Dealer</th>
					<th>Oraganisation</th>
<!-- 				<th>Name of Organization</th> -->
					<th>Address</th>
<!-- 				<th>Address Line1 </th>
					<th>Address Line2 </th> -->
					<th>Contact Number</th>
					<th>Mobile Number</th>
					<th>Email-Id</th>
					<th>
					<a class="btn btn-info btn-sm btn-warning" data-toggle="tooltip" title="Edit Dealer Database!">
					<span class="glyphicon glyphicon-edit"></span>EDIT</a>
					</th>
					<th>
					<a class="btn btn-info btn-sm btn-danger" data-toggle="tooltip" title="Delete Dealer Database!">
					<span class="glyphicon glyphicon-trash"></span> DELETE</a>
					</th>
				</tr>
			</thead>
				<tr ng-repeat="e in dealer | filter: test">
					<td>{{e.dealerId}}</td>
					<td>{{e.dealerName}}</td>
					<td>{{e.dealerOrganisation}}</td>
					<td>{{e.dealerAddress1}}, {{e.dealerAddress2}}</td>
<!-- 					<td>{{e.dealerAddress2}}</td> -->
					<td>{{e.dealerContactNumber}}</td>
					<td>{{e.dealerMobileNumber}}</td>
					<td>{{e.dealerEmailId}}</td>
					<td><a href="editDealer-{{e.dealerId}}"data-toggle="tooltip" title="Click to Edit Dealer Database!">
					<span class="glyphicon glyphicon-edit"></span></a>
					</td>
					<td>
					<a href="deleteDealer-{{e.dealerId}}" data-toggle="tooltip" title="Click to Delete Dealer Database!">
					<span class="glyphicon glyphicon-trash"></span></a></td>
				</tr>
</table>
</div>
</div>
	<script>
		angular.module('myApp',[]).controller(
				'myController', function($scope) {
					$scope.dealer = ${dealerListJson}
				});
	</script>
<%@ include file="footer.jsp"%>