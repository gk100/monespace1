<%@ include file="header.jsp"%>	
	<!-- Search Bar -->
		<div class="container">
			<div class="row">
<!-- 				<h2>Search box</h2> -->
        			<div class="search">
					<input type="text" ng-model="test" />
<!-- 					<input type="text" class="form-control input-sm" maxlength="64" placeholder="Search" /> -->
 					<br><button style="position: absolute; height: 30px;" type="submit" class="btn btn-primary btn-sm">Search</button>
					</div>
			</div>
		</div>
		<br>
	<!-- Search Bar ends -->
	
<!-- 	<h2>Customer Information</h2> -->

<!--  -->

<!-- <div class="w3-container w3-teal"> -->
<!--   <h2>Category</h2> -->
<!-- </div> -->

<!-- <form class="w3-container"> -->
<!--   <label class="w3-label w3-text-teal"><b>First Name</b></label> -->
<!--   <input class="w3-input w3-border w3-light-grey" type="text"> -->

<!--   <label class="w3-label w3-text-teal"><b>Last Name</b></label> -->
<!--   <input class="w3-input w3-border w3-light-grey" type="text"> -->
<!-- <br> -->
<!--   <button class="w3-btn w3-blue-grey">Register</button> -->
<!-- </form> -->


<div class="container">
	<div class="responsive">
<h2><b>Manage Category</b></h2>

<form:form method="POST" action="add/category" modelAttribute="dealsCategory">
<form:input path="dealsCategoryId" hidden="true" />
  
<div class="form-group">
  	<div class="col-xs-6">
  		<label for="dealsCategoryName"><b>Type of Deal: </b></label>
  		<form:input class="form-control input border light-grey " type="text" path="dealsCategoryName" placeholder="Enter type of Deal i.e. Buy, Sell, etc."/>
	</div>
	<div class="col-xs-6">
  		<label><b>Category Description: </b></label>
  		<form:input class="form-control input border light-grey" type="text" path="dealsCategoryDescription" placeholder="Enter Description about the Deal"/>
  	</div>
  	</div>
 		<button type="submit" class="btn btn-success" data-toggle="tooltip" title="Submit Category From Here!">Submit</button>
</form:form>
		
	</div>
</div>
<br>
<!-- fetching list through JSTL -->
	<!-- 	<div> -->
	<!-- 		<table> -->
	<!-- 			<tbody> -->
	<!-- 				<tr> -->
	<!-- 					<th>DEALSCATEGORYID</th> -->
	<!-- 					<th>DEALSCATEGORYDESCRIPTION</th> -->
	<!-- 					<th>DEALSCATEGORYNAME</th> -->
	<!-- 				</tr> -->
	<%-- 				<c:forEach items="${listDealsCategories}" var="DealsCategory"> --%>
	<!-- 					<tr> -->
	<%-- 						<td><c:out value="${DealsCategory.dealsCategoryId}"></c:out></td> --%>
	<%-- 						<td><c:out value="${DealsCategory.dealsCategoryname}"></c:out></td> --%>
	<%-- 						<td><c:out value="${DealsCategory.dealsCategoryDescription}"></c:out></td> --%>
	<!-- 					</tr> -->
	<%-- 				</c:forEach> --%>
	<!-- 				</tbody> -->
	<!-- 		</table> -->
	<!-- 		<br> <br> -->
	<!-- 	</div> -->
	
<div class="container">

<div class="responsive">
<table class="table table-bordered">
			<thead>
				<tr>
					<th>Category Id </th>
					<th>Category Name </th>
					<th>Category Description </th>
					<th>
					<a class="btn btn-info btn-sm" data-toggle="tooltip" title="Edit Category!">
					<span class="glyphicon glyphicon-edit"></span>EDIT</a>
					</th>
					<th>
					<a class="btn btn-info btn-sm btn-danger" data-toggle="tooltip" title="Delete Category!">
					<span class="glyphicon glyphicon-trash"></span> DELETE</a>
					</th>
				</tr>
			</thead>
				<tr ng-repeat="d in deals | filter: test">
					<td>{{d.dealsCategoryId}}</td>
					<td>{{d.dealsCategoryName}}</td>
					<td>{{d.dealsCategoryDescription}}</td>
					<td>
					<a href="editCategory-{{d.dealsCategoryId}}" data-toggle="tooltip" title="Click to Edit Category!">
					<span class="glyphicon glyphicon-edit"></span></a>
					</td>
					<td>
					<a href="deleteCategory-{{d.dealsCategoryId}}" data-toggle="tooltip" title="Click to Delete Category!">
					<span class="glyphicon glyphicon-trash"></span></a>
					</td>
				</tr>
			
		</table>
		<br> <br>
	</div>
	</div>
	<script>
						angular.module('myApp', []).controller(
								'myController', function($scope) {
									$scope.deals = ${listDealsCategory}
								});
	</script>
<%@ include file="footer.jsp"%>