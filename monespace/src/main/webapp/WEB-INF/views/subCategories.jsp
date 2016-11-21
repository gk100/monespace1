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

<div class="w3-container w3-teal">
  <h2>Manage Sub Category</h2>
</div>
	<form:form class="w3-container" method="POST" action="add/subCategories" modelAttribute="propertyDealsSubCategory">
	<form:input path="propertyDealsSubCategoryId" hidden="true"/>
	
	<label class="w3-label w3-text-teal"><b>Type of Deal: </b></label>
	<form:select class="w3-input w3-border w3-light-grey" path="dealsCategory.dealsCategoryName" items= "${listCategory}" itemValue="dealsCategoryName" itemLabel= "dealsCategoryName"></form:select>
	<br><br>
	
	<label class="w3-label w3-text-teal">SubCategory: </label>
	<form:input class="w3-input w3-border w3-light-grey" type="text" path="propertyType"/>
	
	<br><td colspan="2"><input type="submit" value="Submit" /></td>
	</form:form>
	
	
	<%-- <c:forEach items="${listDealsCategories}" var="DealsCategory">
					<tr>
						<td><c:out value="${DealsCategory.dealsCategoryId}"></c:out></td>
						<td><c:out value="${DealsCategory.dealsCategoryname}"></c:out></td>
					</tr>
		</c:forEach> --%>
<div class="w3-container">
<div class="w3-responsive">
<table class="w3-table w3-striped w3-bordered w3-border">
			
				<tr>
					<th>SubCategory Id </th>
					<th>Category Id </th>
					<th>SubCategory Name </th>
					<th>EDIT | DELETE</th>
				</tr>
				<tr ng-repeat="p in propertydeals | filter: test">
					<td>{{p.propertyDealsSubCategoryId}}</td>
					<td>{{p.dealsCategoryId}}</td>
					<td>{{p.propertyType}}</td>
					<td><a href="editSubCategory-{{p.propertyDealsSubCategoryId}}">EDIT |</a><a href="deleteSubCategory-{{p.propertyDealsSubCategoryId}}">DELETE</a></td>
				</tr>
			
</table>
</div>
</div>
	<script>
		angular.module('myApp', []).controller(
				'myController', function($scope) {
					$scope.propertydeals = ${listSubCategory}
				});
	</script>

<%@ include file="footer.jsp"%>