<%@ include file="header.jsp"%>


<div class="panel panel-info" class="col-sm-10">
	<div class="panel-heading"><h4><b>Contact Details:</b></h4></div>
		<div class="panel-body">
		<h4>{{klm.dealerName}}</h4>
		<h4>{{klm.dealerOrganisation}}</h4>
		<h4>{{klm.dealerContactNumber}}</h4>
		<h4>{{klm.dealerMobileNumber}}</h4>
		<h4>{{klm.dealerEmailId}}</h4>
		<h4>{{klm.propertyContactDetails1}}</h4>
		<h4>{{klm.propertyContactDetails1}}</h4>
		</div>
</div>		
	<a href=home><button name="Submit" type="submit" class="btn btn-lg col-md-offset-9" 
	Style= "background-color:#FFAB00; 
			border-color:#FFAB00; 
			border-radius:6px;
			border-style: groove;
			box-sizing:content-box;
			color:#0b0b3a; 
			box-shadow: 3px 3px 1px #888;
			margin-bottom: 10px; 
			padding: 10px 16px; 
			font-size: 18px; 
			line-height: 0;"><i class="fa fa-lg fa-hand-o-left" aria-hidden="true" style="line-height: 0;"></i> Back To Home <i class="fa fa-lg fa-home" aria-hidden="true" style="line-height: 0;"></i></button></a><br>


<script>
angular.module('myApp', []).controller('myController',function($scope) {
			$scope.klm = ${listViewProperty};
		});

</script>
<%@ include file="footer.jsp"%>