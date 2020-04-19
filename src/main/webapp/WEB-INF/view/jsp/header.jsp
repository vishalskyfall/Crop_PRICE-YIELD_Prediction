<%@page import="com.cropPrediction.utils.*"%>
<header class="main-header">
			<!-- Header Top -->
			<div class="header-top">
				<div class="auto-container">
					<div class="clearfix">

						<!--Top Left-->
						<div class="top-left">
							<ul class="link-nav clearfix">
								<li><a href="#"><span class="icon flaticon-headphones"></span>Call
										Us: 92659 38890</a></li>
								<li><a href="#"><span class="icon flaticon-interface"></span>Mail
										Us: brahmbhattvishal6626@gmail.com</a></li>
							</ul>
						</div>

						<!--Top Right-->
						<div class="top-right">
							<ul class="link-nav">
								<li><a href="/login"><span class="icon flaticon-user"></span>Login
										/ Sign Up</a></li>
							</ul>

						</div>

					</div>

				</div>
			</div>
			<!-- Header Top End -->

			<!-- Main Box -->
			<div class="main-box">
				<div class="auto-container">
					<div class="outer-container clearfix">
						<!--Logo Box-->
						<div class="logo-box">
							<div class="logo">
								<a href="#"><img
									src="<%=request.getContextPath() %>/adminResources/image/logo.png"
									alt=""></a>
							</div>
						</div>

						<!--Nav Outer-->
						<div class="nav-outer clearfix">
							<!-- Main Menu -->
							<nav class="main-menu">
								<div class="navbar-header">
									<!-- Toggle Button -->
									<button type="button" class="navbar-toggle"
										data-toggle="collapse" data-target=".navbar-collapse">
										<span class="icon-bar"></span> <span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
								</div>

								<div class="navbar-collapse collapse clearfix">
									<ul class="navigation clearfix">
										<li ><a href="/">Home</a>
											<!--  <ul>
												<li><a href="/">Homepage</a></li>
												<li><a href="index-2.html">Homepage Two</a></li>
												<li><a href="index-3.html">Homepage Three</a></li>
												<li class="dropdown"><a href="#">Headers Style</a>
													<ul>
														<li><a href="index.html">Header Style One</a></li>
														<li><a href="index-2.html">Header Style Two</a></li>
														<li><a href="index-3.html">Header Style Three</a></li>
													</ul></li>
											</ul></li> -->
										<li class=""><a href="/about">About Us</a>
											
										<!-- <li class="dropdown"><a href="#">Manage Complaint</a>
											<ul>
												<li><a href="/loadComplaint">Add Complaint</a></li>
												<li><a href="/farmer/viewComplaint">View Complaint</a></li>
												<li><a href="gallery.html">Gallery Masonry</a></li>
												<li><a href="project-fullwidth.html">Gallery Full
														Width</a></li>
											</ul></li>
										 <li class="dropdown"><a href="#">Manage Feedback</a>
											<ul>
												<li><a href="/loadFeedback">Add Feedback</a></li>
												<li><a href="/farmer/viewFeedback">View Feedback</a></li>
											</ul></li>
										<li class="dropdown"><a href="#">Future Suggestions</a>
											<ul>
												<li><a href="/loadPrices">Future Price Prediction of Crops</a></li>
												<li><a href="/viewDataset">Future Yield Prediction Of Crops</a></li>

											</ul></li> -->
										<li class=""><a href="/contact">Contact Us</a></li>
										
										<li class=""><a href="/logout">Logout</a></li>
									</ul>
								</div>
							</nav>
							<!-- Main Menu End-->

							<!--Right Info-->


						</div>
						<!--Nav Outer End-->

					</div>
				</div>
			</div>

		</header>
