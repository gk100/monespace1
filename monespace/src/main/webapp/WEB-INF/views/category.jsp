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


<div class="w3-container w3-teal">
  <h2>Manage Category</h2>
</div>

	<form:form class="w3-container" method="POST" action="add/category" modelAttribute="dealsCategory">
  	<form:input path="dealsCategoryId" hidden="true" />
  
  <label class="w3-label w3-text-teal"><b>Type of Deal: </b></label>
  <form:input class="w3-input w3-border w3-light-grey" type="text" path="dealsCategoryName"/>

  <label class="w3-label w3-text-teal"><b>Category Description: </b></label>
  <form:input class="w3-input w3-border w3-light-grey" type="text" path="dealsCategoryDescription"/>
<br>
  <button><input type="submit" value="Submit"></button>
</form:form>

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
	
<div class="w3-container">

<div class="w3-responsive">
<table class="w3-table w3-striped w3-bordered w3-border">
			
				<tr>
					<th>Category Id </th>
					<th>Category Name </th>
					<th>Category Description </th>
					<th>EDIT | DELETE</th>
				</tr>
				<tr ng-repeat="d in deals | filter: test">
					<td>{{d.dealsCategoryId}}</td>
					<td>{{d.dealsCategoryName}}</td>
					<td>{{d.dealsCategoryDescription}}</td>
					<td><a href="editCategory-{{d.dealsCategoryId}}">EDIT |</a><a
						href="deleteCategory-{{d.dealsCategoryId}}">DELETE</a></td>
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