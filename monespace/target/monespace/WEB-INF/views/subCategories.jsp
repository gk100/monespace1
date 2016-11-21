<%@ include file = "header.jsp" %>
<body ng-app="getPropertyDealsSubCategory" ng-controller="PropertyDealsSubCategoryController">
	
	<!-- Search Bar -->
		<div class="container">
			<div class="row">
<!-- 				<h2>Slider Search box</h2> -->
        			<div class="search">
					<input type="text" ng-model="test" />
 					<br><button type="submit" class="btn btn-primary btn-sm">Search</button>
					</div>
			</div>
		</div>
		<br>
	<!-- Search Bar ends -->
	
	<h1>Property Deals Details</h1>
	<form:form method="POST" action="add/subCategories" modelAttribute="propertyDealsSubCategory">
		
			
				<label>SubCategory</label>
				<form:input path="propertyDealsSubCategoryId" hidden="true"/>
				<form:input path="propertyType"/>
				
				<label>CATEGORY</label>
<form:select path="dealsCategory.dealsCategoryName" items= "${listCategory}" itemValue="dealsCategoryName" itemLabel= "dealsCategoryName"></form:select>
				<td colspan="2"><input type="submit" value="Submit" /></td>
	</form:form>
	
	
	<%-- <c:forEach items="${listDealsCategories}" var="DealsCategory">
					<tr>
						<td><c:out value="${DealsCategory.dealsCategoryId}"></c:out></td>
						<td><c:out value="${DealsCategory.dealsCategoryname}"></c:out></td>
					</tr>
		</c:forEach> --%>
	<div>
		<table>
			<tbody>
				<tr>
					<th>Sub_Category_Id</th>
					<th>Category_Id</th>
					<th>Sub_Category_Name</th>
					<th>EDIT|DELETE</th>
				</tr>
				<tr ng-repeat="p in propertydeals | filter: test">
					<td>{{p.propertyDealsSubCategoryId}}</td>
					<td>{{p.dealsCategoryId}}</td>
					<td>{{p.propertyType}}</td>
					<td><a href="editSubCategory-{{p.propertyDealsSubCategoryId}}">EDIT |</a><a href="deleteSubCategory-{{p.propertyDealsSubCategoryId}}">DELETE</a></td>
				</tr>
			</tbody>
		</table>
	</div>
	<script>
		angular.module('getPropertyDealsSubCategory', []).controller(
				'PropertyDealsSubCategoryController', function($scope) {
					$scope.propertydeals = ${listSubCategory}
				});
	</script>

<%@ include file="footer.jsp"%>
</body>
</html>