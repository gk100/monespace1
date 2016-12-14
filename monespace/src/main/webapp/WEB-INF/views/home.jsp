<%@ include file="header.jsp"%>
<div id="navbar">
  <nav class="navbar navbar-default col-lg-12" role="navigation" style="margin-top:-20px;background-color: #FFC107; border-color: #FFC107;">
    <div class="navbar-header col-md-offset-2">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" style="line-height: 20px; color:#0b0b3a; background-color: #FFC107; border-color: #FFC107;">Explore For Properties Here!</a>
    </div>
    <div class="collapse navbar-collapse" id="navbar-collapse-1">
      <ul class="nav navbar-nav">
<!--         <li class="active"><a href="#">Active Link</a></li> -->
<!--         <li><a href="#">Link</a></li> -->
        
        <!-- Dynamically Data Display -->
        <sec:authorize access="permitAll">
        <c:forEach items="${listDealsCategory}" var="d">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: #0b0b3a;">${d.dealsCategoryName} <b class="caret"></b></a> 
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
          <a href="#"> My Account <i class="fa fa-cog fa-lg" aria-hidden="true" data-toggle="tooltip" title="Manage Your Account ADMIN: ${username}!"></i><b class="caret"></b></a>
          <ul class="dropdown-menu">
<!--             <li class="kopie"><a href="#">Dropdown2</a></li> -->
            <li><a href="category">Type of Deals <i class="fa fa-database" aria-hidden="true"></i></a></li>
            <li><a href="subCategories">Type of Property <i class="fa fa-database" aria-hidden="true"></i></a></li>
            <li><a href="dealer">Dealer Profile <i class="fa fa-database" aria-hidden="true"></i></a></li>
            <li><a href="property">Property Details <i class="fa fa-database" aria-hidden="true"></i></a></li>
          </ul>
</li>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_DEALER')">
<li class="dropdown">
          <a href="#"><b>My Account <i class="fa fa-cog fa-lg" aria-hidden="true" data-toggle="tooltip" title="Manage Your Account Dealer: ${username}!"></i></b><b class="caret"></b></a>
          <ul class="dropdown-menu">
			<li><a href="dealer">My Profile <i class="fa fa-user" aria-hidden="true"></i></a></li>
            <li><a href="property">My Property Details <i class="fa fa-database" aria-hidden="true"></i></a></li>
          </ul>
</li>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_USER')">
<li class="dropdown">
		<a href="#"><b>My Account <i class="fa fa-cogs fa-lg" aria-hidden="true" data-toggle="tooltip" title="Manage Your Account User: ${username}!"></i></b><b class="caret"></b></a>
		<ul class="dropdown-menu">
			<li><a href="listOfShortList"><i class="fa fa fa-star fa-lg" aria-hidden="true"></i> Shortlist</a></li>
			<li><a href="wishList"><i class="fa fa-heart fa-lg" aria-hidden="true"></i> Wishlist</a></li>
			<li><a href="confirmedList"><i class="fa fa-list-ol fa-lg" aria-hidden="true"></i> Previous Deals</a></li>
		</ul>
</li>
</sec:authorize>

      </ul>
    </div>
    <!-- /.navbar-collapse -->
  </nav>
</div>

<!-- Top Carousel Starts -->

<div class="container1" style="margin-top:120px;">
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
                                <a class="btn btn-theme btn-sm btn-min-block" href="login" style="">Sign In!</a><a class="btn btn-theme btn-sm btn-min-block" href="registerForm" style="">Register</a>
                            </div>
                              
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
                             <a class="btn btn-theme btn-sm btn-min-block" href="login">Sign In!</a><a class="btn btn-theme btn-sm btn-min-block" href="registerForm">Register</a></div>
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
                                <a class="btn btn-theme btn-sm btn-min-block" href="login">Sign In!</a><a class="btn btn-theme btn-sm btn-min-block" href="registerForm">Register</a></div> 
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
                             <a class="btn btn-theme btn-sm btn-min-block" href="login">Sign In!</a><a class="btn btn-theme btn-sm btn-min-block" href="registerForm">Register</a></div>
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
            <img Style= "height:250px; width:400px;" src="resources/img/{{k.propertyId}}.jpg">
              <div class="caption">
              <span class="PropertyName"><strong>{{k.propertyName}}</strong></span><hr>
<!--            <h4>{{k.propertyId}}</h4> -->
                <h5>Starting at <b><i class="fa fa-inr" aria-hidden="true" style="color:green;"></i>{{k.propertyPrice}}</b></h5>
                <h5><i class="fa fa-map-marker fa-2x" aria-hidden="true" style="color:#F50057;"></i> {{k.propertyDescription}}</h5><hr>

                <div class="btn-group btn-group-justified">
                <a href="viewProperty-{{k.propertyId}}" class="btn btn-info btn-md btn-block" role="button" data-toggle="tooltip" title="View Property Detail!">  <i class="fa fa-eye" aria-hidden="true"></i> <i class="fa fa-lg fa-list-ol" aria-hidden="true"></i></a>
                <a href="viewPropertyContactDetail-{{k.propertyId}}" class="btn btn-info btn-md btn-block" role="button" data-toggle="tooltip" title="View Dealer Contact Detail!"><span class="glyphicon glyphicon-phone-alt"></span> / <i class="fa fa-phone fa-lg" aria-hidden="true"></i> / <i class="fa fa-mobile fa-lg" aria-hidden="true"></i></a>
                </div><br>
                <a href="addToWishList-{{k.propertyId}}" class="btn btn-danger btn-md btn-block" data-toggle="tooltip" title="Add Property to Wishlist!" role="button"><i class="fa fa-heart fa-lg" aria-hidden="true"></i></a>
<br>
                <a href="shortListProperty-{{k.propertyId}}" class="btn btn-warning btn-md" role="button" data-toggle="tooltip" title="Book Right Now!"><i class="fa fa-bolt fa-lg" aria-hidden="true"></i> <i class="fa fa-credit-card fa-lg" aria-hidden="true"></i></a>  	
            	<a href="addShortList-{{k.propertyId}}" class="btn btn-success btn-md pull-right" data-toggle="tooltip" title="Add Property to ShortList!" role="button"><i class="fa fa-star fa-lg" aria-hidden="true"></i></a>
            </div>
          </div>
        </div>
</div>
</div>

<!-- End -->

<!-- Angular Js script to fetch dynamic values -->
<script>
angular.module('myApp', []).controller('myController',function($scope) {
			$scope.klm = ${listViewProperty};
		});
</script>

<%@ include file="footer.jsp"%>