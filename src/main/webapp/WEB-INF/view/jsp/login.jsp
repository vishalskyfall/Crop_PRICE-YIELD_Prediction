<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<!-- Stylesheets -->
<link
	href="<%=request.getContextPath() %>/adminResources/css/bootstrap.css"
	rel="stylesheet">
<link href="<%=request.getContextPath() %>/adminResources/css/style.css"
	rel="stylesheet">
<link rel="shortcut icon"
	href="<%=request.getContextPath() %>/adminResources/image/favicon.ico"
	type="image/x-icon">
<link rel="icon"
	href="<%=request.getContextPath() %>/adminResources/image/favicon.ico"
	type="image/x-icon">
<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link
	href="<%=request.getContextPath() %>/adminResources/css/responsive.css"
	rel="stylesheet">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="<%=request.getContextPath() %>/adminResources/js/respond.js"></script><![endif]-->
</head>

<body>

	<div class="page-wrapper">

		<!-- Preloader -->
		<div class="preloader"></div>

		<!-- Main Header-->
	 <jsp:include page="header.jsp"></jsp:include>
		<!--End Main Header -->
		<!--Page Title-->
		<section class="page-title"
			style="background-image:url(adminResources/image/6.jpg);">
			<div class="auto-container">
				<div class="row clearfix">
					<!--Title -->
					<div class="title-column col-md-6 col-sm-12 col-xs-12">
						<h1>Login</h1>
					</div>
					<!--Bread Crumb -->
					<div class="breadcrumb-column col-md-6 col-sm-12 col-xs-12">
						<ul class="bread-crumb clearfix">
							<li><a href="/">Home</a></li>
							<li class="active">Login</li>
						</ul>
					</div>
				</div>
			</div>
		</section>



		<!--Contact Section-->
		<section class="contact-section">
			<div class="auto-container">
				<div class="contact-info-section">


					<div class="contact-form-section">
					<div class="box-body">
						<div class="row">
								<div class="col-sm-4" >
								</div>
							<!--Map Column-->


							<!--form column-->
							<div class=" col-md-4 col-sm-12 col-xs-12">

								<!-- Comment Form -->
								<div class="contact-form">
									<h2>Sign in to start your session</h2>
									<!--Comment Form-->
									<form action="/j_spring_security_check" method="post">
										<div class="form-group">
											<input name="username" type="text" class="form-control" placeholder="Username" >
										</div>
										<div class="form-group">
											<input name="password" type="password" class="form-control" placeholder="Password">
										</div>

										<div class="col-12">
											<div class="fog-pwd text-right">
												<a href="javascript:void(0)"><i class="ion ion-locked"></i>
													Forgot Password?</a><br>
											</div>
										</div>
										<div class="form-group">
											<button class="theme-btn btn-style-one" type="submit"
												name="submit-form">SIGN IN</button>
												<!-- <input type="submit" class="theme-btn btn-style-one" value="Submit" name="submit-form"/> -->
												<!-- <button type="submit" class="btn btn-danger btn-block margin-top-10">SIGN IN</button> -->
										</div>
									</form>


									<div class="text-center">
										<p class="mb-0">
											Don't have an account? <a href="/register"
												class="text-info ml-5">&nbsp&nbsp&nbsp&nbsp Sign Up</a>
										</p>
									</div>

								</div>
								<!--End Comment Form -->

							</div>
							<div class="col-sm-4" >
								</div>
						</div>
						</div>
					</div>

				</div>
				</div>
		</section>

		<!--Main Footer-->
		<jsp:include page="footer.jsp"></jsp:include>

	</div>
	<!--End pagewrapper-->

	<!--Scroll to top-->
	<div class="scroll-to-top scroll-to-target" data-target="html">
		<span class="fa fa-long-arrow-up"></span>
	</div>

	<script
		src="<%=request.getContextPath() %>/adminResources/js/jquery.js"></script>
	<script
		src="<%=request.getContextPath() %>/adminResources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath() %>/adminResources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script
		src="<%=request.getContextPath() %>/adminResources/js/jquery.fancybox.pack.js"></script>
	<script
		src="<%=request.getContextPath() %>/adminResources/js/jquery.fancybox-media.js"></script>
	<script src="<%=request.getContextPath() %>/adminResources/js/wow.js"></script>
	<script
		src="<%=request.getContextPath() %>/adminResources/js/appear.js"></script>
	<script
		src="<%=request.getContextPath() %>/adminResources/js/validate.js"></script>
	<script
		src="<%=request.getContextPath() %>/adminResources/js/script.js"></script>

	<!--Google Map APi Key-->
	<script src="http://maps.google.com/maps/api/js?key="></script>
	<script
		src="<%=request.getContextPath() %>/adminResources/js/map-script.js"></script>
	<!--End Google Map APi-->
</body>
</html>