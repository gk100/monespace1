<%@ include file="header.jsp"%>
<head>
<title>Login</title>
</head>
<body>
	<form method="POST" action="perform_login" class="form-inline">

		<div class="container">
			<div class="col-lg-4 col-md-3 col-sm-2"></div>
			<div class="col-lg-4 col-md-6 col-sm-8">
				<div class="logo">
					<img src="resources/img/MonEspace.png" alt="Logo">
				</div>

				<div class="row loginbox">
					<div class="col-lg-12">
						<span class="singtext">Sign in </span>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="form-group">
							<label for="username">UserName:</label> <input type="text"
								class="form-control" id="username" name="username"
								placeholder="Please enter username" />
						</div>
					</div>
					<br>

					<div class="col-lg-12  col-md-12 col-sm-12">
						<div class="form-group">
							<label for="password">Password:</label> <input type="password"
								class="form-control" id="password" name="password"
								placeholder="Please enter password" />
						</div>
						<div class="col-lg-12  col-md-12 col-sm-12">
							<input type="submit" class="submitButton"></a>
						</div>
					</div>
				</div>
					<div class="row forGotPassword">
					<a href="home">Forgot Username / Password? </a>
				</div>
				<footer class="footer">
					<a href='aboutUs'>Terms of use</a> |  <a href='aboutUs'>Privacy Policy</a> |  <a
						href='contactUs'>Contact us</a> |  <a href='contactUs'>Feedback</a>
					<p>©2016<i>MonEspace!</i> All rights reserved</p>
				</footer>
				<!--footer Section ends-->
			</div>
			<div class="col-lg-4 col-md-3 col-sm-2"></div>
		</div>
	</form>
	<br>
	<br>



	<%@ include file="footer.jsp"%>
</body>