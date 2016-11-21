<%@ include file = "header.jsp" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<body >
	
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
	
	<div class="w3-container w3-teal">
  <h2>Manage Dealer Detail</h2>
	</div>

		<form:form class="w3-container" method="POST" action="add/dealer" modelAttribute="dealer">
		<form:input path="dealerId" hidden="true" />
		<table>
			<tr>
				<form:label class="w3-label w3-text-teal" path="dealerName">Name of Dealer: </form:label>
				<form:input class="w3-input w3-border w3-light-grey" path="dealerName"/>
				<br><br>
				<form:label class="w3-label w3-text-teal" path="dealerOrganisation">Name of Organization: </form:label>
				<form:input class="w3-input w3-border w3-light-grey" path="dealerOrganisation"/>
				<br><br>
				<form:label class="w3-label w3-text-teal" path="dealerAddress1">Address Line1: </form:label>
				<form:input class="w3-input w3-border w3-light-grey" path="dealerAddress1"/>
				<br><br>
				<form:label class="w3-label w3-text-teal" path="dealerAddress2">Address Line2: </form:label>
				<form:input class="w3-input w3-border w3-light-grey" path="dealerAddress2"/>
				<br><br>
				<form:label class="w3-label w3-text-teal" path="dealerContactNumber">Contact Number: </form:label>
				<form:input class="w3-input w3-border w3-light-grey" path="dealerContactNumber"/>
				<br><br>
				<form:label class="w3-label w3-text-teal" path="dealerMobileNumber">Mobile Number: </form:label>
				<form:input class="w3-input w3-border w3-light-grey" path="dealerMobileNumber"/>
				<br><br>
				<form:label class="w3-label w3-text-teal" path="dealerEmailId">Email-Id: </form:label>
				<form:input class="w3-input w3-border w3-light-grey" path="dealerEmailId"/>
<!-- 				<td colspan="2"> -->
				<br><input type="submit" value="Submit"/>
<!-- 				</td> -->
			</tr>
		</table>
	</form:form>
<div class="w3-container">
<div class="w3-responsive">
<table class="w3-table w3-striped w3-bordered w3-border">
			
				<tr>
					<th>Dealer Id </th>
					<th>Name of Dealer </th>
					<th>Name of Organization</th>
					<th>Address Line1 </th>
					<th>Address Line2 </th>
					<th>Contact Number </th>
					<th>Mobile Number </th>
					<th>Email-Id </th>
					<th>EDIT | DELETE</th>
				</tr>
				<tr ng-repeat="e in dealer | filter: test">
					<td>{{e.dealerId}}</td>
					<td>{{e.dealerName}}</td>
					<td>{{e.dealerOrganisation}}</td>
					<td>{{e.dealerAddress1}}</td>
					<td>{{e.dealerAddress2}}</td>
					<td>{{e.dealerContactNumber}}</td>
					<td>{{e.dealerMobileNumber}}</td>
					<td>{{e.dealerEmailId}}</td>
					<td><a href="editDealer-{{e.dealerId}}">EDIT |</a><a
						href="deleteDealer-{{e.dealerId}}">DELETE</a></td>
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