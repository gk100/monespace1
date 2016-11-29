<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>MonEspace!-Buy/Sell/Rent/Construct/Properties Portal</title>

<!--2) For Putting Logo on Tab -->

<link rel="apple-touch-icon" sizes="180x180" href="resources/img/favicons/apple-touch-icon.png">
<link rel="icon" type="image/png" href="resources/img/favicons/favicon-32x32.png" sizes="32x32">
<link rel="icon" type="image/png" href="resources/img/favicons/favicon-16x16.png" sizes="16x16">
<link rel="manifest" href="resources/img/favicons/manifest.json">
<link rel="mask-icon" href="resources/img/favicons/safari-pinned-tab.svg" color="#5bbad5">
<meta name="theme-color" content="#e3f2fd">

<!-- Logo End -->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
		
		<!-- Custom CSS -->
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="resources/css/my-style.css" />
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"/>	
		
		<!-- Custom Fonts -->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body ng-app="myApp" ng-controller="myController" background="resources/img/bg_site.png" style="background-position: top; background-repeat: no-repeat; zoom: 1; background-color: burlywood;">
<!-- <img background="resources/img/bg_site.png" style="background-position: top; background-repeat: no-repeat"/> -->
	
	<!-- Navbar Starts -->
	
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
<!-- 			<a class="navbar-brand" href="http://localhost:8085/monespace/" > -->
<!--                     <img src="resources/img/MonEspace!.png"  alt="Logo" >  -->
<!--                 </a> -->
			
			<a class="navbar-brand"  href="http://localhost:8080/monespace/">
 			<img src="resources/img/MonEspace!.png" style="height:100%;">
			</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a
					href="home">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Mumbai 
<!-- 					<span class="caret"></span> -->
</a> 
<!-- 					<ul class="dropdown-menu"> -->
<!-- 						<li><a href="#">Delhi</a></li> -->
<!-- 						<li><a href="#">Kolkata</a></li> -->
<!-- 						<li><a href="#">Chennai</a></li> -->
<!-- 					</ul></li> -->
				<li><a href="aboutUs"><span class="glyphicon glyphicon-info-sign"></span> About Us</a></li>
				<li><a href="contactUs"><span class="glyphicon glyphicon-earphone"></span> Contact Us</a></li>
				<sec:authorize access="isAuthenticated()">
				<sec:authentication property="principal.username" var="username"/>
				<li><a>Welcome ${username}!</a></li>
				</sec:authorize>
			</ul>
			<!-- 			<form class="form-inline center"> -->
			<!-- 				<input class="form-control" type="text" placeholder="Search"> -->
			<!-- 				<button class="btn btn-outline-success" type="submit">Search</button> -->
			<!-- 			</form> -->

			<ul class="nav navbar-nav navbar-right">
				<c:if test="${pageContext.request.userPrincipal.name==null}">
				<li><a href="registerForm"><span class="glyphicon glyphicon-user"></span> Sign Up!</a></li>
				</c:if>
				
				<c:if test="${pageContext.request.userPrincipal.name==null}">
				<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Sign In!</a></li>
				</c:if>
				
				<c:if test="${pageContext.request.userPrincipal.name!=null}">
				<li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Sign Out!</a></li>
				</c:if>		
			</ul>
		</div>
	</div>
	</nav>
<!-- 	<img src: resources/img/bg_site.png; style="background-position: top; background-repeat: no-repeat;" > -->
	<!-- Navbar Closed-->