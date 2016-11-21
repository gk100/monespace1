<%@ include file="header.jsp"%>
<body ng-app="getDealsCategory" ng-controller="DealsCategoryController">
	
	<!-- Search Bar -->
		<div class="container">
			<div class="row">
<!-- 				<h2>Search box</h2> -->
        			<div class="search">
					<input type="text" ng-model="test" />
<!-- 					<input type="text" class="form-control input-sm" maxlength="64" placeholder="Search" /> -->
 					<br><button type="submit" class="btn btn-primary btn-sm">Search</button>
					</div>
			</div>
		</div>
		<br>
	<!-- Search Bar ends -->
	
	<h2>Customer Information</h2>

	<div class="container">
	<div class="row">
	<div class="col-xs-12 col-sm-12 col-md-12">
	<form:form method="POST" action="add/category"
		modelAttribute="dealsCategory">
		
		<!--  -->
		
		<form:input path="dealsCategoryId" hidden="true" />
		<table>
			<div class="form-group">
				<td><form:label path="dealsCategoryName">Type of Deal</form:label></td>
				<td><form:input path="dealsCategoryName"/></td>
			</div>
			<div class="form-group">
				<td><form:label path="dealsCategoryDescription">Category Description</form:label></td>
				<td><form:input path="dealsCategoryDescription" /></td>
			</div>
				<td colspan="2"><input type="submit" value="Submit" /></td>
		</table>
	</form:form>
	</div>
	</div>
	</div>
	
	
<!-- <div class="container"> -->
<!--   <h2>Category</h2> -->
<!--   <input path="dealsCategoryId" hidden="true" /> -->
<!--   <form> -->
<!--     <div class="form-group"> -->
<!--       <label for="dealsCategoryName">Category Name:</label> -->
<!--       <input type="text" class="form-control" id="dealsCategoryName" placeholder="Category Name"> -->
<!--     </div> -->
<!--     <div class="form-group"> -->
<!--       <label for="dealsCategoryDescription">Category Description:</label> -->
<!--       <input type="text" class="form-control" id="dealsCategoryDescription" placeholder="Enter Category Description"> -->
<!--     </div> -->
<!--     <button type="submit" class="btn btn-default">Submit</button> -->
<!--   </form> -->
<!-- </div> -->

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
	<div>
		<table>
			<tbody>
				<tr>
					<th>DEALSCATEGORYID</th>
					<th>DEALSCATEGORYDESCRIPTION</th>
					<th>DEALSCATEGORYNAME</th>
					<th>EDIT|DELETE</th>
				</tr>
				<tr ng-repeat="d in deals | filter: test">
					<td>{{d.dealsCategoryId}}</td>
					<td>{{d.dealsCategoryName}}</td>
					<td>{{d.dealsCategoryDescription}}</td>
					<td><a href="editCategory-{{d.dealsCategoryId}}">EDIT |</a><a
						href="deleteCategory-{{d.dealsCategoryId}}">DELETE</a></td>
				</tr>
			</tbody>
		</table>
		<br> <br>
	</div>
	<script>
						angular.module('getDealsCategory', []).controller(
								'DealsCategoryController', function($scope) {
									$scope.deals = ${listDealsCategory}
								});
	</script>
<%@ include file="footer.jsp"%>

</body>
</html>