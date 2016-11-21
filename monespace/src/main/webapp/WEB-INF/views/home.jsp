<%@ include file="header.jsp"%>
<div id="navbar">
  <nav class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">We Offer you...</a>
    </div>
    <div class="collapse navbar-collapse" id="navbar-collapse-1">
      <ul class="nav navbar-nav">
<!--         <li class="active"><a href="#">Active Link</a></li> -->
<!--         <li><a href="#">Link</a></li> -->
        
        <!-- Dynamically Data Display -->
        <sec:authorize access="permitAll">
        <c:forEach items="${listDealsCategory}" var="d">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">${d.dealsCategoryName} <b class="caret"></b></a> 
          <ul class="dropdown-menu">
            <c:forEach items="${d.propertyDealsSubCategory}" var="k">
            <li class="kopie"><a href="#">${k.propertyType}</a></li>
          </c:forEach>
          </ul>
        </li>
        </c:forEach>
		</sec:authorize>
<!-- <li class="dropdown"> -->
<!--           <a href="category">Category -->
<!--           </a> -->
<!-- </li> -->

<!-- <li class="dropdown"> -->
<!--           <a href="subCategories">Subcategory -->
<!--           </a> -->

<!-- </li> -->
<!-- <li class="dropdown"> -->
<!--           <a href="dealer">Dealer -->
<!--           </a> -->
<!-- </li> -->
<!-- <li class="dropdown"> -->
<!--           <a href="property">Property -->
<!--           </a> -->
<!-- </li> -->

<sec:authorize access="hasRole('ROLE_ADMIN')">
<li class="dropdown">
          <a href="#">Manage Database <b class="caret"></b></a>
          <ul class="dropdown-menu">
<!--             <li class="kopie"><a href="#">Dropdown2</a></li> -->
            <li><a href="category">Type of Deals</a></li>
            <li><a href="subCategories">Type of Property</a></li>
            <li><a href="dealer">Dealer Profile</a></li>
            <li><a href="property">Property Details</a></li>
          </ul>
</li>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_DEALER')">
<li class="dropdown">
          <a href="#">Manage My Profile and Properties<b class="caret"></b></a>
          <ul class="dropdown-menu">
			<li><a href="dealer">My Profile</a></li>
            <li><a href="property">My Property Details</a></li>
          </ul>
</li>
</sec:authorize>




      </ul>
    </div>
    <!-- /.navbar-collapse -->
  </nav>
</div>

<!-- Top Carousel Starts -->

<div class="container1">
    <div class="row">
		<!-- Carousel -->
    	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
			  	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
			    <div class="item active">
			    	<img src="resources/img/project1.jpg">
                    <!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
<!--                             <h2> -->
<!--                             	<span>Welcome to the <strong>Report Center</strong></span> -->
<!--                             </h2> -->
<!--                             <br> -->
<!--                             <h3> -->
<!--                             	<span>Get all of your reports in one location..</span> -->
<!--                             </h3> -->
                            <br><br><br><br><br><br>
                            <div class="">
                                <a class="btn btn-theme btn-sm btn-min-block" href="login">Login</a><a class="btn btn-theme btn-sm btn-min-block" href="registerForm">Register</a></div>
                              
                        </div>
                    </div><!-- /header-text -->
			    </div>
			    <div class="item">
<!-- 			    	<img src="/Style%20Library/Images/bg%202.jpg"> -->
			    	<img src="resources/img/project2.jpg">
			    	<!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
<!--                             <h2> -->
<!--                                 <span>Department Reports</span> -->
<!--                             </h2> -->
<!--                             <br> -->
<!--                             <h3> -->
<!--                             	<span>Manage your business more effective.</span> -->
<!--                             </h3> -->
                            <br><br><br><br><br><br>
                            <div class="">
                             <a class="btn btn-theme btn-sm btn-min-block" href="login">Login</a><a class="btn btn-theme btn-sm btn-min-block" href="registerForm">Register</a></div>
                        </div>
                    </div><!-- /header-text -->
			    </div>
			    <div class="item">
			    	<img src="resources/img/project1.jpg">
<!-- 			    	<img src="/Style%20Library/Images/bg%202.jpg"> -->
			    	<!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
<!--                             <h2> -->
<!--                                 <span>Client Reports</span> -->
<!--                             </h2> -->
<!--                             <br> -->
<!--                             <h3> -->
<!--                             	<span>Client specific reports, SLA, and more...</span> -->
<!--                             </h3> -->
                            <br><br><br><br><br><br>
                            <div class="">
                                <a class="btn btn-theme btn-sm btn-min-block" href="login">Login</a><a class="btn btn-theme btn-sm btn-min-block" href="registerForm">Register</a></div> 
                        </div>
                    </div><!-- /header-text -->
			    </div>
			    <div class="item">
			    	<img src="resources/img/project2.jpg">
<!-- 			    	<img src="/Style%20Library/Images/bg%202.jpg"> -->
			    	<!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
<!--                             <h2> -->
<!--                                 <span>Department Reports</span> -->
<!--                             </h2> -->
<!--                             <br> -->
<!--                             <h3> -->
<!--                             	<span>Manage your business more effective.</span> -->
<!--                             </h3> -->
                            <br><br><br><br><br><br>
                            <div class="">
                             <a class="btn btn-theme btn-sm btn-min-block" href="login">Login</a><a class="btn btn-theme btn-sm btn-min-block" href="registerForm">Register</a></div>
                        </div>
                    </div><!-- /header-text -->
			    </div>
			</div>
			<!-- Controls --
			<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		    	<span class="fa fa-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		    	<span class="fa fa-chevron-right"></span>
			</a>
		</div><!-- /carousel -->
	</div>
</div>

<!-- Carousel Ends -->
  
 <!-- media slider -->
 <div class="container">
  <div class="row">
    <h2>Featured Projects in Mumbai</h2>
  </div>
  <div class='row'>
    <div class='col-md-12'>
      <div class="carousel slide media-carousel" id="media">
        <div class="carousel-inner">
          <div class="item  active">
            <div class="row">
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company2.jpg"></a>
              </div>          
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company2.jpg"></a>
              </div>
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company2.jpg"></a>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company2.jpg"></a>
              </div>          
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company2.jpg"></a>
              </div>
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company2.png"></a>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company2.png"></a>
              </div>          
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company2.jpg"></a>
              </div>
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company2.png"></a>
              </div>      
            </div>
          </div>
        </div>
        <a data-slide="prev" href="#media" class="left carousel-control"></a>
        <a data-slide="next" href="#media" class="right carousel-control"></a>
      </div>                          
    </div>
  </div>
</div>
 
 <!--End -->
 
<!-- Dynamic Property View -->

<hr>
<div class="container" >
      <div class="row">
         <div ng-repeat="k in klm" class="col-xs-18 col-sm-6 col-md-3" >
          <div class="thumbnail">
            <img src="resources/img/{{k.propertyId}}.jpg">
              <div class="caption">
              <span class="PropertyName"><strong>{{k.propertyName}}</strong></span>
                <h4>{{k.propertyId}}</h4>
                <h5>{{k.propertyPrice}}</h5>
                <h5>{{k.propertyDescription}}</h5>
<!--                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, soluta, eligendi doloribus sunt minus amet sit debitis repellat. Consectetur, culpa itaque odio similique suscipit</p> -->
                <a href="" class="btn btn-default btn-xs pull-right" role="button"><i class="glyphicon glyphicon-edit"></i></a>
                <a href="viewProperty-{{k.propertyId}}" class="btn btn-info btn-xs" role="button">More Details</a>
                <a href="" class="btn btn-default btn-xs" role="button">Button</a>
            </div>
          </div>
        </div>
</div>
</div>

<!-- End -->

<!-- Angular Js script to fetch dynamic values -->
<script>
angular.module('myApp', []).controller('myController',function($scope) {
			$scope.klm = ${listViewproperty};
		});

</script>
<%@ include file="footer.jsp"%>