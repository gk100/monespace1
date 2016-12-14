<!DOCTYPE html>
<html lang="en">
<head>
<title>MonEspace!-Buy/Sell/Rent/Construct/Properties Portal</title>

<!--2) For Putting Logo on Tab -->
		<link rel="apple-touch-icon" sizes="180x180" href="resources/img/favicons/apple-touch-icon.png">
		<link rel="icon" type="image/png" href="resources/img/favicons/favicon-32x32.png" sizes="32x32">
		<link rel="icon" type="image/png" href="resources/img/favicons/favicon-16x16.png" sizes="16x16">
		<link rel="manifest" href="resources/img/favicons/manifest.json">
		<link rel="mask-icon" href="resources/img/favicons/safari-pinned-tab.svg" style= "color: #5bbad5;">
		<meta name="theme-color" content="#e3f2fd">
<!-- Logo End -->

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="">
		<meta name="author" content="">

<!-- Custom CSS -->
		<link href="resources/css/my-style.css" rel="stylesheet">
		<link href="resources/css/full-slider.css" rel="stylesheet">
<!--    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css"> -->
   
<!-- Bootstrap Core CSS -->
		<link href="resources/css/bootstrap.css" rel="stylesheet">
		<link href="resources/css/bootstrap.min.css" rel="stylesheet">
		<link href="resources/font-awesome/css/font-awesome.css"  rel="stylesheet">
		<link href="resources/font-awesome/css/font-awesome.min.css"  rel="stylesheet">	

</head>

<body style= "background-color: #BBDEFB;">

 <!-- Navigation Bar Starts-->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" Style= "background-color: #0D47A1; border-color: #0D47A1;">
	<div class="container">
<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
        	<button type="button" class="navbar-toggle" Style= "background-color: #0D47A1; border-color: #fff;" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            	<span class="sr-only" style="color:white;">Toggle navigation</span>
                <span class="icon-bar" style="color:white;"></span>
                <span class="icon-bar" style="color:white;"></span>
                <span class="icon-bar" style="color:white;"></span>
            </button>
                <a class="navbar-brand" href="http://localhost:8080/monespace/">
                	<img src="resources/img/MonEspace!.png" style="height:100%;">
               </a>
        </div>
<!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        	<ul class="nav navbar-nav">
            	<li>
                	<a href="aboutUs"><span class="glyphicon glyphicon-info-sign"></span><strong> AboutUs!</strong></a>
                </li>
                <li>
                    <a href="home"><span class="glyphicon glyphicon-home"></span><b> Home!</b></a>
                </li>
                <li>
                    <a href="contactUs"><span class="glyphicon glyphicon-earphone"></span><b> ContactUs!</b></a>
                </li>
            </ul>
         </div>
 <!-- /.navbar-collapse Ends-->
	</div>
<!-- /.container Ends-->
</nav>

<!-- Full Page Image Background Carousel Header Starts-->
<header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="resources/img/bg-Mumbai.jpg" data-slide-to="0" class="active"></li>
            <li data-target="resources/img/bg-Delhi.jpg" data-slide-to="1"></li>
            <li data-target="resources/img/bg-Kolkata.jpg" data-slide-to="2"></li>
            <li data-target="resources/img/bg-Mumbai1.jpg" data-slide-to="3"></li>
            <li data-target="resources/img/bg-Chennai.jpg" data-slide-to="4"></li>
            <li data-target="resources/img/bg-Banguluru.jpg" data-slide-to="5"></li>
       </ol>

<!-- Wrapper for Slides -->
        <div class="carousel-inner">
            <div class="item active">
                <!-- Set the first background image using inline CSS below. -->
                <div class="fill" style="background-image:url('resources/img/bg-Mumbai.jpg');"></div>
                <div class="carousel-caption">
                    <h1><i><b>Mumbai</b></i></h1>
                    <h2><i>We Help You Find Your Own Space to Live!...to Enjoy Life!</i></h2>
                </div>
            </div>
            <div class="item">
                <!-- Set the second background image using inline CSS below. -->
                <div class="fill" style="background-image:url('resources/img/bg-Delhi.jpg');"></div>
                <div class="carousel-caption">
                    <h1><i><b>Delhi</b></i></h1>
                      <h2><i>We Help You Find Your Own Space to Live!...to Enjoy Life!</i></h2>
                </div>
            </div>
            <div class="item">
                <!-- Set the third background image using inline CSS below. -->
                <div class="fill" style="background-image:url('resources/img/bg-Kolkata.jpg');"></div>
                <div class="carousel-caption">
                   <h1><i><b>Kolkata</b></i></h1>
                      <h2><i>We Help You Find Your Own Space to Live!...to Enjoy Life!</i></h2>
                </div>
            </div>
            <div class="item">
                <!-- Set the third background image using inline CSS below. -->
                <div class="fill" style="background-image:url('resources/img/bg-Mumbai1.jpg');"></div>
                <div class="carousel-caption">
                    <h1><i><b>Mumbai</b></i></h1>
                      <h2><i>We Help You Find Your Own Space to Live!...to Enjoy Life!</i></h2>
                </div>
            </div>
            <div class="item">
                <!-- Set the third background image using inline CSS below. -->
                <div class="fill" style="background-image:url('resources/img/bg-Chennai.jpg');"></div>
                <div class="carousel-caption">
                    <h1><i><b>Chennai</b></i></h1>
                     <h2><i>We Help You Find Your Own Space to Live!...to Enjoy Life!</i></h2>
                </div>
            </div>
             <div class="item">
                <!-- Set the third background image using inline CSS below. -->
                <div class="fill" style="background-image:url('resources/img/bg-Banguluru.jpg');"></div>
                <div class="carousel-caption">
                    <h1><i><b>Banguluru</b></i></h1>
                      <h2><i>We Help You Find Your Own Space to Live!...to Enjoy Life!</i></h2>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

        <!-- Footer -->
        <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"> Copyright <i><b>Mon Espace!</b></i> Plugin 2016. All right reserved. </p>
        </div>
    </div>
    <!--/.footer-bottom--> 
    </div>
    <!-- /.container -->
    
    <!-- jQuery -->
    <script src="resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 2500 //changes the speed
    })
    </script>

</body>

</html>
