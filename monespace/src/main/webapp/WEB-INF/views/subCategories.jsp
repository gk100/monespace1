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
		<h2><b>Manage Sub Category</b></h2>

				<form:form method="POST" action="add/subCategories" modelAttribute="propertyDealsSubCategory">
				<form:input path="propertyDealsSubCategoryId" hidden="true"/>
			
			<div class="form-group">
			<div class="col-xs-6">
				<label for="dealsCategory.dealsCategoryName"><b>Type of Deal: </b></label>
				<form:select class="form-control input border light-grey" path="dealsCategory.dealsCategoryName" items= "${listCategory}" itemValue="dealsCategoryName" itemLabel= "dealsCategoryName"></form:select>
			</div>
			<div class="col-xs-6">
				<label for="propertyType">SubCategory: </label>
				<form:input class="form-control input border light-grey" type="text" path="propertyType" placeholder="Enter Subcategory"/>
			</div>
				<button type="submit" class="btn btn-success" data-toggle="tooltip" title="Submit Category From Here!">Submit</button>
			
			</div>
			</form:form>
	</div>
</div>
<hr>
	
	<%-- <c:forEach items="${listDealsCategories}" var="DealsCategory">
					<tr>
						<td><c:out value="${DealsCategory.dealsCategoryId}"></c:out></td>
						<td><c:out value="${DealsCategory.dealsCategoryname}"></c:out></td>
					</tr>
		</c:forEach> --%>
<div class="container">
<div class="table-responsive">
<table class="table table-bordered">
			<thead>
				<tr>
					<th>#</th>
<!-- 				<th>Category Id </th> -->
					<th>SubCategory Name </th>
					<th>
					<a href="" class="btn btn-info btn-sm btn-warning"><span class="glyphicon glyphicon-edit"></span> EDIT</a>
					</th>
					<th>	
					<a href="" class="btn btn-info btn-sm btn-danger"><span class="glyphicon glyphicon-trash"></span> DELETE</a>
					</th>
				</tr>
				</thead>
				<tr ng-repeat="p in propertydeals | filter: test">
					<td>{{p.propertyDealsSubCategoryId}}</td>
<!-- 				<td>{{p.dealsCategoryId}}</td> -->
					<td>{{p.propertyType}}</td>
					<td>
					<a href="editSubCategory-{{p.propertyDealsSubCategoryId}}">
					<span class="glyphicon glyphicon-edit"></span> </a>
					</td>
					<td>
					<a href="deleteSubCategory-{{p.propertyDealsSubCategoryId}}">
					<span class="glyphicon glyphicon-trash"></span> </a>
					</td>
				</tr>
			
</table>
</div>
</div>
<br>
	<script>
		angular.module('myApp', []).controller(
				'myController', function($scope) {
					$scope.propertydeals = ${listSubCategory}
				});
	</script>

<%@ include file="footer.jsp"%>