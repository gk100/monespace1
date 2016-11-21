<%@ include file="header.jsp"%>
<body>
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
        <c:forEach items="${listDealsCategory}" var="d">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">${d.dealsCategoryName} <b class="caret"></b></a> 
          <ul class="dropdown-menu">
            <c:forEach items="${d.propertyDealsSubCategory}" var="k">
            <li class="kopie"><a href="#">${k.propertyType}</a></li>
 		 
<!--             <li class="dropdown dropdown-submenu"> -->
<!--               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown Link 4</a> -->
<!--               <ul class="dropdown-menu"> -->
<!--                 <li class="kopie"><a href="#">Dropdown Link 4</a></li> -->
<!--                 <li><a href="#">Dropdown Submenu Link 4.1</a></li> -->
<!--                 <li><a href="#">Dropdown Submenu Link 4.2</a></li> -->
<!--                 <li><a href="#">Dropdown Submenu Link 4.3</a></li> -->
<!--                 <li><a href="#">Dropdown Submenu Link 4.4</a></li> -->
<!--               </ul> -->
<!--             </li> -->
<!--             <li class="dropdown dropdown-submenu"> -->
<!--               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown Link 5</a> -->
<!--               <ul class="dropdown-menu"> -->
<!--                 <li class="kopie"><a href="#">Dropdown Link 5</a></li> -->
<!--                 <li><a href="#">Dropdown Submenu Link 5.1</a></li> -->
<!--                 <li><a href="#">Dropdown Submenu Link 5.2</a></li> -->
<!--                 <li><a href="#">Dropdown Submenu Link 5.3</a></li> -->
<!--                 <li class="dropdown dropdown-submenu"> -->
<!--                   <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown Submenu Link 5.4</a> -->
<!--                   <ul class="dropdown-menu"> -->
<!--                     <li class="kopie"><a href="#">Dropdown Submenu Link 5.4</a></li> -->
<!--                     <li><a href="#">Dropdown Submenu Link 5.4.1</a></li> -->
<!--                     <li><a href="#">Dropdown Submenu Link 5.4.2</a></li> -->
<!--                   </ul> -->
<!--                 </li> -->
<!--               </ul> -->
<!--             </li> -->
          </c:forEach>
          </ul>
        </li>
        </c:forEach>




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



<li class="dropdown">
          <a href="#">Manage Database <b class="caret"></b></a>
          <ul class="dropdown-menu">
<!--             <li class="kopie"><a href="#">Dropdown2</a></li> -->
            <li><a href="category">Category</a></li>
            <li><a href="subCategories">Subcategory</a></li>
            <li><a href="dealer">Dealer</a></li>
            <li><a href="property">Property</a></li>
          </ul>
</li>
            
            
<!--         <li class="dropdown"> -->
<!--           <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown2 <b class="caret"></b></a> -->
<!--           <ul class="dropdown-menu"> -->
<!--             <li class="kopie"><a href="#">Dropdown2</a></li> -->
<!--             <li><a href="#">Dropdown2 Link 1</a></li> -->
<!--             <li><a href="#">Dropdown2 Link 2</a></li> -->
<!--             <li><a href="#">Dropdown2 Link 3</a></li> -->
<%--             <c:forEach items="${listDealsCategory}" var="k"> --%>
<!--             <li class="dropdown dropdown-submenu"> -->
<%--               <a href="#" class="dropdown-toggle" data-toggle="dropdown">${k.dealsCategoryName}</a> --%>
<!--               <ul class="dropdown-menu"> -->
<%--                 <li class="kopie"><a href="#">${k.dealsCategoryName}</a></li> --%>
<%--                 <c:forEach items="${listDealsCategories}" var="g"> --%>
<!--                 <li><a href="#">Dropdown2 Submenu Link 4.1</a></li> -->
<!--                 <li><a href="#">Dropdown2 Submenu Link 4.2</a></li> -->
<!--                 <li><a href="#">Dropdown2 Submenu Link 4.3</a></li> -->
<!--                 <li><a href="#">Dropdown2 Submenu Link 4.4</a></li> -->
<!--               </ul> -->
<!--             </li> -->
<%--             </c:forEach> --%>
<!--             <li class="dropdown dropdown-submenu"> -->
<!--               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown2 Link 5</a> -->
<!--               <ul class="dropdown-menu"> -->
<!--                 <li class="kopie"><a href="#">Dropdown Link 5</a></li> -->
<!--                 <li><a href="#">Dropdown2 Submenu Link 5.1</a></li> -->
<!--                 <li><a href="#">Dropdown2 Submenu Link 5.2</a></li> -->
<!--                 <li><a href="#">Dropdown2 Submenu Link 5.3</a></li> -->
<!--                 <li class="dropdown dropdown-submenu"> -->
<!--                   <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown Submenu Link 5.4</a> -->
<!--                   <ul class="dropdown-menu"> -->
<!--                     <li class="kopie"><a href="#">Dropdown2 Submenu Link 5.4</a></li> -->
<!--                     <li><a href="#">Dropdown2 Submenu Link 5.4.1</a></li> -->
<!--                     <li><a href="#">Dropdown2 Submenu Link 5.4.2</a></li> -->
<!--                   </ul> -->
<!--                 </li> -->
<!--               </ul> -->
<!--             </li> -->
<!--           </ul> -->
<!--         </li> -->
      </ul>
    </div>
    <!-- /.navbar-collapse -->
  </nav>
</div>

<!-- <h2> -->
<!-- 		<b>Welcom to Homepage!</b> -->
<!-- 	</h2> -->


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
			    	<img src="resources/img/project3.jpg">
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
			    	<img src="resources/img/project2.1.jpg">
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

	
<!-- <div class="jumbotron"> -->
<!--   <div class="container text-center"> -->
<!--     <h1>My Portfolio</h1> -->
<!--     <p>Some text that represents "Me"...</p> -->
<!--   </div> -->
<!-- </div> -->
 
  
 <!-- media slider -->
 <div class="container">
<!--   <div class="row"> -->
    <h2>Featured Projects in Mumbai</h2>
<!--   </div> -->
  <div class='row'>
    <div class='col-md-12'>
      <div class="carousel slide media-carousel" id="media">
        <div class="carousel-inner">
          <div class="item  active">
            <div class="row">
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company4.jpg"></a>
              </div>          
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company1.jpg"></a>
              </div>
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company3.jpg"></a>
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
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company.png"></a>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company.png"></a>
              </div>          
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company4.jpg"></a>
              </div>
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="resources/img/Company.png"></a>
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
 
 <!--  -->


<div class="container-fluid bg-3 text-center">
  <h3>Featured Properties in Mumbai</h3><br>
  <div class="row">
    <div class="col-sm-3">
      <p>Property 1</p>
      <img src="resources/img/properties/property4.jpg" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3">
      <p>Property 2</p>
      <img src="resources/img/BlankImage.png" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3">
      <p>Property 3</p>
      <img src="resources/img/BlankImage.png" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3">
      <p>Property 4</p>
      <img src="resources/img/BlankImage.png" class="img-responsive" style="width:100%" alt="Image">
    </div>
  </div>
</div><br>

<div class="container-fluid bg-3 text-center">
  <div class="row">
    <div class="col-sm-3">
      <p>Some text..</p>
      <img src="resources/img/BlankImage.png" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3">
      <p>Some text..</p>
      <img src="resources/img/BlankImage.png" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3">
      <p>Some text..</p>
      <img src="resources/img/BlankImage.png" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3">
      <p>Some text..</p>
      <img src="resources/img/BlankImage.png" class="img-responsive" style="width:100%" alt="Image">
    </div>
  </div>
</div><br><br>


<%@ include file="footer.jsp"%>
</body>