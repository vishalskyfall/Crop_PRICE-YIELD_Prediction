<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>FARMER</title>
<!-- Stylesheets -->
<link href="<%=request.getContextPath() %>/adminResources/css/bootstrap.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/adminResources/css/revolution-slider.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/adminResources/css/style.css" rel="stylesheet">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/adminResources/image/favicon.ico" type="image/x-icon">
<link rel="icon" href="<%=request.getContextPath() %>/adminResources/image/favicon.ico" type="image/x-icon">
<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link href="<%=request.getContextPath() %>/adminResources/css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="<%=request.getContextPath() %>/adminResources/js/respond.js"></script><![endif]-->
</head>

<body>

<div class="page-wrapper">
 	
    <!-- Preloader -->
    <div class="preloader"></div>
 	
    <!-- Main Header-->
    
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
								<a href="index.html"><img
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
										<li class="dropdown"><a href="/">Home</a>
											 <ul>
												<li><a href="/">Homepage</a></li>
												<!--<li><a href="index-2.html">Homepage Two</a></li>
												<li><a href="index-3.html">Homepage Three</a></li>
												<li class="dropdown"><a href="#">Headers Style</a>
													<ul>
														<li><a href="index.html">Header Style One</a></li>
														<li><a href="index-2.html">Header Style Two</a></li>
														<li><a href="index-3.html">Header Style Three</a></li>
													</ul></li> -->
											</ul></li>
										<li class="dropdown"><a href="#">About Us</a>
											<ul>
												<li><a href="/about">About Us</a></li>
												<!-- <li><a href="our-team.html">Our Team</a></li>
												<li><a href="error-page.html">Error Page</a></li> -->
											</ul></li>
										<li class="dropdown"><a href="#">Manage Complaint</a>
											<ul>
												<li><a href="/loadComplaint">Add Complaint</a></li>
												<li><a href="/farmer/viewComplaint">View Complaint</a></li>
												<!-- <li><a href="gallery.html">Gallery Masonry</a></li>
												<li><a href="project-fullwidth.html">Gallery Full
														Width</a></li> -->
											</ul></li>
										 <li class="dropdown"><a href="#">Manage Feedback</a>
											<ul>
												<li><a href="/loadFeedback">Add Feedback</a></li>
												<li><a href="/farmer/viewFeedback">View Feedback</a></li>
											</ul></li>
										<li class="dropdown"><a href="#">Future Suggestions</a>
											<ul>
												<li><a href="/loadPrices">Future Price Prediction of Crops</a></li>
												<li><a href="/loadYield">Future Yield Prediction Of Crops</a></li>

											</ul></li>
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
    
    
   <%--  <jsp:include page="header.jsp"></jsp:include> --%>
    <!--End Main Header -->
    
    <!--Main Slider-->
    <section class="main-slider" data-start-height="850" data-slide-overlay="yes">
    	
        <div class="tp-banner-container">
            <div class="tp-banner">
                <ul>
                	<%-- 
                    <li data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-thumb="images/image-1.jpg"  data-saveperformance="off"  data-title="Awesome Title Here">
                    <img src="<%=request.getContextPath() %>/adminResources/image/image-1.jpg"  alt=""  data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat"> 
                    
                    <div class="tp-caption sft sfb tp-resizeme"
                    data-x="center" data-hoffset="0"
                    data-y="center" data-voffset="-50"
                    data-speed="1500"
                    data-start="0"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
                    data-endeasing="Power4.easeIn"><h3>Healthy & Affordable</h3></div>
                    
                    <div class="tp-caption sfb sfb tp-resizeme"
                    data-x="center" data-hoffset="0"
                    data-y="center" data-voffset="25"
                    data-speed="1500"
                    data-start="500"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
                    data-endeasing="Power4.easeIn"><h2>Organic Fruit, Vegetables and Meat</h2></div>
                    
                    <div class="tp-caption sfb sfb tp-resizeme"
                    data-x="center" data-hoffset="0"
                    data-y="center" data-voffset="110"
                    data-speed="1500"
                    data-start="1000"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
                    data-endeasing="Power4.easeIn"><a href="#" class="theme-btn btn-style-one">Start Today</a></div>
                    
                    </li> --%>
                    
                    <li data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-thumb="images/image-2.jpg"  data-saveperformance="off"  data-title="Awesome Title Here">
                    <img src="<%=request.getContextPath() %>/adminResources/image/image-2.jpg"  alt=""  data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat"> 
                    
                    <div class="tp-caption sft sfb tp-resizeme"
                    data-x="center" data-hoffset="0"
                    data-y="center" data-voffset="-120"
                    data-speed="1500"
                    data-start="0"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
					data-endeasing="Power4.easeIn"><%-- <figure class="content-image"><img src="<%=request.getContextPath() %>/adminResources/image/content-image-1.png" alt=""></figure> --%> </div>
                    
                    <div class="tp-caption sfb sfb tp-resizeme"
                    data-x="center" data-hoffset="0"
                    data-y="center" data-voffset="60"
                    data-speed="1500"
                    data-start="500"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
                    data-endeasing="Power4.easeIn"><h2 class="text-center">Dashboard <br> Click on above Drop-Down's to Explore</h2></div>
                    
                  <!--   <div class="tp-caption sfb sfb tp-resizeme"
                    data-x="center" data-hoffset="0"
                    data-y="center" data-voffset="160"
                    data-speed="1500"
                    data-start="1000"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
                    data-endeasing="Power4.easeIn"><a href="#" class="theme-btn btn-style-one">SHOP NOW</a> &ensp;&ensp; <a href="#" class="theme-btn btn-style-two">KNOW MORE</a></div>
                     -->
                    </li>
                    
                   <%--  <li data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-thumb="images/image-3.jpg"  data-saveperformance="off"  data-title="Awesome Title Here">
                    <img src="<%=request.getContextPath() %>/adminResources/image/image-3.jpg"  alt=""  data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat"> 
                    
                    <div class="tp-caption sft sfb tp-resizeme"
                    data-x="center" data-hoffset="0"
                    data-y="center" data-voffset="-80"
                    data-speed="1500"
                    data-start="0"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
                    data-endeasing="Power4.easeIn"><div class="green_text">We Grow Best Food</div></div>
                    
                    <div class="tp-caption sfb sfb tp-resizeme"
                    data-x="center" data-hoffset="0"
                    data-y="center" data-voffset="20"
                    data-speed="1500"
                    data-start="500"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
                    data-endeasing="Power4.easeIn"><h2 class="text-center">A Huge Variety of Freshest <br> Fruits and Vegetables</h2></div>
                    
                    <div class="tp-caption sfb sfb tp-resizeme"
                    data-x="center" data-hoffset="0"
                    data-y="center" data-voffset="140"
                    data-speed="1500"
                    data-start="1000"
                    data-easing="easeOutExpo"
                    data-splitin="none"
                    data-splitout="none"
                    data-elementdelay="0.01"
                    data-endelementdelay="0.3"
                    data-endspeed="1200"
                    data-endeasing="Power4.easeIn"><a href="#" class="theme-btn btn-style-one">LEARN MORE</a></div>
                    
                    </li> --%>
                    
                </ul>
                
            	<div class="tp-bannertimer"></div>
            </div>
        </div>
    </section>
    <!--End Main Slider-->
    
    <!--Welcome Section-->
    <section class="welcome-section">
    	<div class="auto-container">
        	<div class="clearfix">
            	<!--Content Column-->
            	<div class="content-column">
                	<div class="inner-box">
                    	<!--Sec Title-->
                    	<div class="sec-title">
                        	<h2>Welcome to Farmer's Edge</h2>
                            <div class="title-text">Have a look at our Predicted Prices of Crops.!</div>
                        </div>
                        <div class="dark-text">We are providing excellent prediction of future crop pricing with different algorithms with 65 to 85 % of accuracy.</div>
                        <div class="text">With <b>Random-Forest</b>, <b>Decision-Tree</b>, <b>Gradient-Boost</b> Algorithms we're providing 80% of accuracy in Price prediction of crops. Also We are providing Yield Prediction for Government use with this algorithms. We're using <b>data.gov.in</b> website for predicting prices as well as Yield. </div>
                       <%--  <span class="signature">
                        	<img src="<%=request.getContextPath() %>/adminResources/image/signature.png" alt="" />
                        </span> --%>
                    </div>
                </div>
                
            </div>
            <!--image box-->
            <div class="floated-img-up">
                <img src="<%=request.getContextPath() %>/adminResources/image/welcome-up-img.png" alt="" />
            </div>
            <div class="floated-img-down">
                <img src="<%=request.getContextPath() %>/adminResources/image/welcome-down-img.png" alt="" />
            </div>
        </div>
    </section>
    <section class="product-section">
			<div class="auto-container">

				<!--Sec Title Two-->
				<div class="sec-title-two">
					<h2>Crops</h2>
					<div class="title-text">Prediction with 65 to 80% of
						accuracy...</div>
				</div>
				<!--Sortable Gallery-->
				<div class="mixitup-gallery">

					<!--Filter-->
					<div class="filters clearfix">
						<ul class="filter-tabs filter-btns text-center">
							<li class="filter active" data-role="button" data-filter="all">All</li>
							<li class="filter" data-role="button" data-filter=".rabi">Rabi</li>
							<li class="filter" data-role="button" data-filter=".kharif">Kharif</li>
							<li class="filter" data-role="button" data-filter=".summer">Summer</li>
						</ul>
					</div>


					<div class="filter-list row clearfix">

						<!--Shop Item-->
					
						<div class="shop-item col-md-4 col-sm-6 col-xs-12 mix mix_all kharif">
							<!-- anhiya all k kharif k biju nakhvamu. -->
							<div class="inner-box">
								<div class="image-box">
									<img
										src="<%=request.getContextPath() %>/adminResources/image/groundnut.jpg"
										alt="">
									<div class="overlay-box">
										<div class="lower-box">
											<h3>
												<a href="#">GroundNut</a>
											</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="shop-item col-md-4 col-sm-6 col-xs-12 mix mix_all kharif">
							<!-- anhiya all k kharif k biju nakhvamu. -->
							<div class="inner-box">
								<div class="image-box">
									<img
										src="<%=request.getContextPath() %>/adminResources/image/castor.jpg"
										alt="">
									<div class="overlay-box">
										<div class="lower-box">
											<h3>
												<a href="#">Castor</a>
											</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
							
						<div class="shop-item col-md-4 col-sm-6 col-xs-12 mix mix_all kharif">
							<!-- anhiya all k kharif k biju nakhvamu. -->
							<div class="inner-box">
								<div class="image-box">
									<img
										src="<%=request.getContextPath() %>/adminResources/image/cotton.jpg"
										alt="">
									<div class="overlay-box">
										<div class="lower-box">
											<h3>
												<a href="#">Cotton</a>
											</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
							
						
						
						<div class="shop-item col-md-4 col-sm-6 col-xs-12 mix mix_all rabi">
							<!-- anhiya all k kharif k biju nakhvamu. -->
							<div class="inner-box">
								<div class="image-box">
									<img
										src="<%=request.getContextPath() %>/adminResources/image/wheat.jpg"
										alt="">
									<div class="overlay-box">
										<div class="lower-box">
											<h3>
												<a href="#">Wheat</a>
											</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="shop-item col-md-4 col-sm-6 col-xs-12 mix mix_all rabi">
							<!-- anhiya all k kharif k biju nakhvamu. -->
							<div class="inner-box">
								<div class="image-box">
									<img
										src="<%=request.getContextPath() %>/adminResources/image/onion.jpg"
										alt="">
									<div class="overlay-box">
										<div class="lower-box">
											<h3>
												<a href="#">Onion</a>
											</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="shop-item col-md-4 col-sm-6 col-xs-12 mix mix_all summer">
							<!-- anhiya all k kharif k biju nakhvamu. -->
							<div class="inner-box">
								<div class="image-box">
									<img
										src="<%=request.getContextPath() %>/adminResources/image/rice.jpg"
										alt="">
									<div class="overlay-box">
										<div class="lower-box">
											<h3>
												<a href="#">Rice</a>
											</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="shop-item col-md-4 col-sm-6 col-xs-12 mix mix_all summer">
							<!-- anhiya all k kharif k biju nakhvamu. -->
							<div class="inner-box">
								<div class="image-box">
									<img
										src="<%=request.getContextPath() %>/adminResources/image/drychillies.jpg"
										alt="">
									<div class="overlay-box">
										<div class="lower-box">
											<h3>
												<a href="#">Dry-Chillies</a>
											</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="shop-item col-md-4 col-sm-6 col-xs-12 mix mix_all rabi">
							<!-- anhiya all k kharif k biju nakhvamu. -->
							<div class="inner-box">
								<div class="image-box">
									<img
										src="<%=request.getContextPath() %>/adminResources/image/maize.jpg"
										alt="">
									<div class="overlay-box">
										<div class="lower-box">
											<h3>
												<a href="#">Maize</a>
											</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="shop-item col-md-4 col-sm-6 col-xs-12 mix mix_all summer">
							<!-- anhiya all k kharif k biju nakhvamu. -->
							<div class="inner-box">
								<div class="image-box">
									<img
										src="<%=request.getContextPath() %>/adminResources/image/ladisfinger.jpg"
										alt="">
									<div class="overlay-box">
										<div class="lower-box">
											<h3>
												<a href="#">Ladis-Finger</a>
											</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
						
					
						

					</div>

				</div>
				<!--End Sortable Gallery-->
			</div>
		</section>
    <!--End Welcome Section-->
    <%-- 
    <!--Shop Banner-->
    <section class="shop-banner" style="background-image:url(images/1.jpg);">
    	<div class="auto-container">
        	<h3>Unlock your potential <br> with good <span>nutrition</span></h3>
            <div class="sale-percent"><span>Sale! <br> Upto</span>50% <span>off</span></div>
            <a href="#" class="theme-btn btn-style-one">Shop Now</a>
        </div>
    </section>
    <!--End Shop Banner-->
    
    <!--Product Section-->
    <section class="product-section">
    	<div class="auto-container">
        
        	<!--Sec Title Two-->
            <div class="sec-title-two">
                <h2>Our Products</h2>
                <div class="title-text">We deliver to your door</div>
            </div>
        	<!--Sortable Gallery-->
            <div class="mixitup-gallery">
            
                <!--Filter-->
                <div class="filters clearfix">
                    <ul class="filter-tabs filter-btns text-center">
                        <li class="filter active" data-role="button" data-filter="all">All</li>
                        <li class="filter" data-role="button" data-filter=".vegetable">Vegetables</li>
                        <li class="filter" data-role="button" data-filter=".juice">Juices</li>
                        <li class="filter" data-role="button" data-filter=".fruits">Dry Fruits</li>
                        <li class="filter" data-role="button" data-filter=".bread">Breads</li>
                        <li class="filter" data-role="button" data-filter=".others">Others</li>
                    </ul>
                </div>
                
                <div class="filter-list row clearfix">
                
                    <!--Shop Item-->
                    <div class="shop-item col-md-4 col-sm-6 col-xs-12 mix mix_all all">
                        <div class="inner-box">
                            <div class="image-box"><img src="<%=request.getContextPath() %>/adminResources/image/1.jpg" alt="">
                                <div class="overlay-box">
									<div class="option-box">
                                        <a href="#" class="cart-btn"><span class="flaticon-shopping-cart-1"></span></a>
                                        <a href="#" class="like-btn"><span class="flaticon-heart-1"></span></a>
                                    </div>
                                    <!--lower box-->
                                    <div class="lower-box">
                                    	<div class="rating">
                                        	<span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                        </div>
                                        <h3><a href="#">kiwi juice</a></h3>
                                        <span class="price">$ 3.50</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!--Shop Item-->
                    <div class="shop-item col-md-4 col-sm-6 col-xs-12 mix mix_all bread vegetable">
                        <div class="inner-box">
                            <div class="image-box"><img src="<%=request.getContextPath() %>/adminResources/image/2.jpg" alt="">
                                <div class="overlay-box">
									<div class="option-box">
                                        <a href="#" class="cart-btn"><span class="flaticon-shopping-cart-1"></span></a>
                                        <a href="#" class="like-btn"><span class="flaticon-heart-1"></span></a>
                                    </div>
                                    <!--lower box-->
                                    <div class="lower-box">
                                    	<div class="rating">
                                        	<span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                        </div>
                                        <h3><a href="#">pomegranate</a></h3>
                                        <span class="price">$ 10.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!--Shop Item-->
                    <div class="shop-item col-md-4 col-sm-6 col-xs-12 mix mix_all bread fruits">
                        <div class="inner-box">
                            <div class="image-box"><img src="<%=request.getContextPath() %>/adminResources/image/3.jpg" alt="">
                                <div class="overlay-box">
									<div class="option-box">
                                        <a href="#" class="cart-btn"><span class="flaticon-shopping-cart-1"></span></a>
                                        <a href="#" class="like-btn"><span class="flaticon-heart-1"></span></a>
                                    </div>
                                    <!--lower box-->
                                    <div class="lower-box">
                                    	<div class="rating">
                                        	<span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                        </div>
                                        <h3><a href="#">mixed dry fruits</a></h3>
                                        <span class="price">$ 15.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!--Shop Item-->
                    <div class="shop-item col-md-4 col-sm-6 col-xs-12 mix mix_all juice bread">
                        <div class="inner-box">
                            <div class="image-box"><img src="<%=request.getContextPath() %>/adminResources/image/4.jpg" alt="">
                                <div class="overlay-box">
									<div class="option-box">
                                        <a href="#" class="cart-btn"><span class="flaticon-shopping-cart-1"></span></a>
                                        <a href="#" class="like-btn"><span class="flaticon-heart-1"></span></a>
                                    </div>
                                    <!--lower box-->
                                    <div class="lower-box">
                                    	<div class="rating">
                                        	<span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                        </div>
                                        <h3><a href="#">fresh beet juice</a></h3>
                                        <span class="price">$ 8.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!--Shop Item-->
                    <div class="shop-item col-md-4 col-sm-6 col-xs-12 mix mix_all fruits juice">
                        <div class="inner-box">
                            <div class="image-box"><img src="<%=request.getContextPath() %>/adminResources/image/5.jpg" alt="">
                                <div class="overlay-box">
									<div class="option-box">
                                        <a href="#" class="cart-btn"><span class="flaticon-shopping-cart-1"></span></a>
                                        <a href="#" class="like-btn"><span class="flaticon-heart-1"></span></a>
                                    </div>
                                    <!--lower box-->
                                    <div class="lower-box">
                                    	<div class="rating">
                                        	<span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                        </div>
                                        <h3><a href="#">wheat bread</a></h3>
                                        <span class="price">$ 5.75</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!--Shop Item-->
                    <div class="shop-item col-md-4 col-sm-6 col-xs-12 mix mix_all vegetable fruits">
                        <div class="inner-box">
                            <div class="image-box"><img src="<%=request.getContextPath() %>/adminResources/image/6.jpg" alt="">
                                <div class="overlay-box">
									<div class="option-box">
                                        <a href="#" class="cart-btn"><span class="flaticon-shopping-cart-1"></span></a>
                                        <a href="#" class="like-btn"><span class="flaticon-heart-1"></span></a>
                                    </div>
                                    <!--lower box-->
                                    <div class="lower-box">
                                    	<div class="rating">
                                        	<span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                        </div>
                                        <h3><a href="#">peach fruit</a></h3>
                                        <span class="price">$ 11.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                </div>
                
            </div>
            <!--End Sortable Gallery-->
        </div>
    </section>
    <!--End product Section-->
    
    <!--Gallery Section / Full Width Gallery-->
    <div class="gallery-section full-width-gallery gray-bg">
    	
        <!--Sec Title Two-->
        <div class="sec-title-two">
            <h2>Our Gallery</h2>
            <div class="title-text">Feature Works</div>
        </div>
        
        <!--Gallery Item-->
        <div class="masonry-container clearfix">
        
            <!--Gallery Item-->
            <div class="gallery-item masonry-item col-lg-3 col-sm-6 col-xs-12">
                <div class="inner-box">
                    <div class="image-box">
                        <img src="<%=request.getContextPath() %>/adminResources/image/1.jpg" alt="" />
                        <!--Overlay Box-->
                        <div class="overlay-box">
                            <div class="inner">
                                <div class="content">
                                    <div class="options-box">
                                        <a class="lightbox-image" href="<%=request.getContextPath() %>/adminResources/image/1.jpg" title="Image Caption Here" data-fancybox-group="example-gallery"><span class="fa fa-expand"></span></a>
                                        <a href="#"><span class="flaticon-link"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!--Gallery Item-->
            <div class="gallery-item masonry-item col-lg-3 col-sm-6 col-xs-12">
                <div class="inner-box">
                    <div class="image-box">
                        <img src="<%=request.getContextPath() %>/adminResources/image/2.jpg" alt="" />
                        <!--Overlay Box-->
                        <div class="overlay-box">
                            <div class="inner">
                                <div class="content">
                                    <div class="options-box">
                                        <a class="lightbox-image" href="<%=request.getContextPath() %>/adminResources/image/2.jpg" title="Image Caption Here" data-fancybox-group="example-gallery"><span class="fa fa-expand"></span></a>
                                        <a href="#"><span class="flaticon-link"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
        	<!--Gallery Item-->
            <div class="gallery-item masonry-item col-lg-3 col-sm-6 col-xs-12">
                <div class="inner-box">
                    <div class="image-box">
                        <img src="<%=request.getContextPath() %>/adminResources/image/3.jpg" alt="" />
                        <!--Overlay Box-->
                        <div class="overlay-box">
                            <div class="inner">
                                <div class="content">
                                    <div class="options-box">
                                        <a class="lightbox-image" href="<%=request.getContextPath() %>/adminResources/image/3.jpg" title="Image Caption Here" data-fancybox-group="example-gallery"><span class="fa fa-expand"></span></a>
                                        <a href="#"><span class="flaticon-link"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!--Gallery Item-->
            <div class="gallery-item masonry-item col-lg-6 col-sm-12 col-xs-12">
                <div class="inner-box">
                    <div class="image-box">
                        <img src="<%=request.getContextPath() %>/adminResources/image/6.jpg" alt="" />
                        <!--Overlay Box-->
                        <div class="overlay-box">
                            <div class="inner">
                                <div class="content">
                                    <div class="options-box">
                                        <a class="lightbox-image" href="<%=request.getContextPath() %>/adminResources/image/6.jpg" title="Image Caption Here" data-fancybox-group="example-gallery"><span class="fa fa-expand"></span></a>
                                        <a href="#"><span class="flaticon-link"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!--Gallery Item-->
            <div class="gallery-item masonry-item col-lg-3 col-sm-6 col-xs-12">
                <div class="inner-box">
                    <div class="image-box">
                        <img src="<%=request.getContextPath() %>/adminResources/image/4.jpg" alt="" />
                        <!--Overlay Box-->
                        <div class="overlay-box">
                            <div class="inner">
                                <div class="content">
                                    <div class="options-box">
                                        <a class="lightbox-image" href="<%=request.getContextPath() %>/adminResources/image/4.jpg" title="Image Caption Here" data-fancybox-group="example-gallery"><span class="fa fa-expand"></span></a>
                                        <a href="#"><span class="flaticon-link"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            
        
        </div>
        
    </div>
    <!--End Gallery Section-->
    
    <!--Farmer Section-->
    <section class="farmer-section">
    	<div class="auto-container">
        	<!--Side Image-->
        	<div class="side-image">
            	<img src="<%=request.getContextPath() %>/adminResources/image/farmer-side-img.png" alt="" />
            </div>
        	<!--Sec Title Two-->
            <div class="sec-title-two">
                <h2>Our Farmers</h2>
                <div class="title-text">Farm Workers</div>
            </div>
            
            <div class="two-item-carousel owl-carousel owl-theme">
            	<!--Farmer Box-->
            	<div class="farmer-box">
                	<div class="inner-box">
                    	<div class="row clearfix">
                        	<!--Image Column-->
                        	<div class="image-column col-md-4 col-sm-4 col-xs-12">
                            	<div class="image">
                                	<img src="<%=request.getContextPath() %>/adminResources/image/farmer-1.png" alt="" />
                                </div>
                            </div>
                            <!--Content Column-->
                            <div class="content-column col-md-8 col-sm-8 col-xs-12">
                            	<div class="title">Founder</div>
                                <h3>John Capone</h3>
                                <div class="text">Downtown farmer's market envie sac a lait bayou. Cajun pecan pie bisque sac a lait bisque macque choux.Beignet etoufee file jambalaya jambalaya sugar cane praline. </div>
                                <ul class="social-icon-one">
                                	<li><a href="#"><span class="fa fa-facebook"></span></a></li>
                                    <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                                    <li><a href="#"><span class="fa fa-google-plus"></span></a></li>
                                    <li><a href="#"><span class="fa fa-skype"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!--Farmer Box-->
            	<div class="farmer-box">
                	<div class="inner-box">
                    	<div class="row clearfix">
                        	<!--Image Column-->
                        	<div class="image-column col-md-4 col-sm-4 col-xs-12">
                            	<div class="image">
                                	<img src="<%=request.getContextPath() %>/adminResources/image/farmer-2.png" alt="" />
                                </div>
                            </div>
                            <!--Content Column-->
                            <div class="content-column col-md-8 col-sm-8 col-xs-12">
                            	<div class="title">Local Farmer</div>
                                <h3>Marlyn Leend</h3>
                                <div class="text">Downtown farmer's market envie sac a lait bayou. Cajun pecan pie bisque sac a lait bisque macque choux.Beignet etoufee file jambalaya jambalaya sugar cane praline. </div>
                                <ul class="social-icon-one">
                                	<li><a href="#"><span class="fa fa-facebook"></span></a></li>
                                    <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                                    <li><a href="#"><span class="fa fa-google-plus"></span></a></li>
                                    <li><a href="#"><span class="fa fa-skype"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!--Farmer Box-->
            	<div class="farmer-box">
                	<div class="inner-box">
                    	<div class="row clearfix">
                        	<!--Image Column-->
                        	<div class="image-column col-md-4 col-sm-4 col-xs-12">
                            	<div class="image">
                                	<img src="<%=request.getContextPath() %>/adminResources/image/farmer-1.png" alt="" />
                                </div>
                            </div>
                            <!--Content Column-->
                            <div class="content-column col-md-8 col-sm-8 col-xs-12">
                            	<div class="title">Founder</div>
                                <h3>John Capone</h3>
                                <div class="text">Downtown farmer's market envie sac a lait bayou. Cajun pecan pie bisque sac a lait bisque macque choux.Beignet etoufee file jambalaya jambalaya sugar cane praline. </div>
                                <ul class="social-icon-one">
                                	<li><a href="#"><span class="fa fa-facebook"></span></a></li>
                                    <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                                    <li><a href="#"><span class="fa fa-google-plus"></span></a></li>
                                    <li><a href="#"><span class="fa fa-skype"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!--Farmer Box-->
            	<div class="farmer-box">
                	<div class="inner-box">
                    	<div class="row clearfix">
                        	<!--Image Column-->
                        	<div class="image-column col-md-4 col-sm-4 col-xs-12">
                            	<div class="image">
                                	<img src="<%=request.getContextPath() %>/adminResources/image/farmer-2.png" alt="" />
                                </div>
                            </div>
                            <!--Content Column-->
                            <div class="content-column col-md-8 col-sm-8 col-xs-12">
                            	<div class="title">Local Farmer</div>
                                <h3>Marlyn Leend</h3>
                                <div class="text">Downtown farmer's market envie sac a lait bayou. Cajun pecan pie bisque sac a lait bisque macque choux.Beignet etoufee file jambalaya jambalaya sugar cane praline. </div>
                                <ul class="social-icon-one">
                                	<li><a href="#"><span class="fa fa-facebook"></span></a></li>
                                    <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                                    <li><a href="#"><span class="fa fa-google-plus"></span></a></li>
                                    <li><a href="#"><span class="fa fa-skype"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            
        </div>
    </section>
    <!--End Farmer Section-->
    
    <!--Testimonial Section-->
    <section class="testimonial-section" style="background-image:url(images/2.jpg);">
    	<div class="auto-container">
        	<div class="single-item-carousel owl-carousel owl-theme">
                <!--Testimonial Block-->
                <div class="testimonial-block">
                    <div class="inner-box">
                        <div class="image">
                            <img src="<%=request.getContextPath() %>/adminResources/image/author-1.jpg" alt="" />
                        </div>
                        <div class="text"><span class="quote-icon flaticon-left-quote"></span>Mardi Gras gumbo Lafayette zydeco bonjour lagniappe canaille bread pudding Lafayette. Trail ride bayou zydeco boiled crawfish trail ride turducken. Sauce piquante fried catfish Thibideaux praline Acadiana hot sauce Thibideaux crawfish. Boudin food Lafayette fried catfish bread pudding bread pudding fried chicken coffee.<span class="quote-icon flaticon-right-quotation-sign"></span></div>
                        <h3>Nickey Carlis</h3>
                        <div class="author-post">CEO / Founder</div>
                    </div>
                </div>
                
                <!--Testimonial Block-->
                <div class="testimonial-block">
                    <div class="inner-box">
                        <div class="image">
                            <img src="<%=request.getContextPath() %>/adminResources/image/author-1.jpg" alt="" />
                        </div>
                        <div class="text"><span class="quote-icon flaticon-left-quote"></span>Mardi Gras gumbo Lafayette zydeco bonjour lagniappe canaille bread pudding Lafayette. Trail ride bayou zydeco boiled crawfish trail ride turducken. Sauce piquante fried catfish Thibideaux praline Acadiana hot sauce Thibideaux crawfish. Boudin food Lafayette fried catfish bread pudding bread pudding fried chicken coffee.<span class="quote-icon flaticon-right-quotation-sign"></span></div>
                        <h3>Nickey Carlis</h3>
                        <div class="author-post">CEO / Founder</div>
                    </div>
                </div>
                
                <!--Testimonial Block-->
                <div class="testimonial-block">
                    <div class="inner-box">
                        <div class="image">
                            <img src="<%=request.getContextPath() %>/adminResources/image/author-1.jpg" alt="" />
                        </div>
                        <div class="text"><span class="quote-icon flaticon-left-quote"></span>Mardi Gras gumbo Lafayette zydeco bonjour lagniappe canaille bread pudding Lafayette. Trail ride bayou zydeco boiled crawfish trail ride turducken. Sauce piquante fried catfish Thibideaux praline Acadiana hot sauce Thibideaux crawfish. Boudin food Lafayette fried catfish bread pudding bread pudding fried chicken coffee.<span class="quote-icon flaticon-right-quotation-sign"></span></div>
                        <h3>Nickey Carlis</h3>
                        <div class="author-post">CEO / Founder</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Testimonial Section-->
    
    <!--Blog Section-->
    <section class="blog-section">
    	<div class="auto-container">
        	<!--Sec Title Two-->
            <div class="sec-title-two">
                <h2>Our Blog</h2>
                <div class="title-text">Latest News</div>
            </div>
            
            <div class="row clearfix">
            	<!--New Blog-->
            	<div class="column col-md-6 col-sm-12 col-xs-12">
                	<div class="news-style-one">
                        <div class="inner-box">
                            <div class="image-box">
                                <a href="blog-single.html"><img src="<%=request.getContextPath() %>/adminResources/image/news-1.jpg" alt="" /></a>
                            </div>
                            <div class="lower-box">
                                <div class="title">Organic Food / Healthy Diet</div>
                                <h3><a href="blog-single.html">Health Benefits of a Raw Food & Healthy Diet</a></h3>
                                <div class="text">Sugar cane ca c'est bon fishing praline King Cake canaille sauce piquante. Couillon envie make a roux trail ride hunting alligator fishing etoufee. Tasso levee tasso cayenne tasso boucherie cajun alligator mirliton. </div>
                                <a href="blog-single.html" class="read-more">Read More</a>
                            </div>
                        </div>
                	</div>
                </div>
                
                <!--New Blog Two-->
                <div class="column col-md-6 col-sm-12 col-xs-12">
                
                    <div class="news-style-two">
                        <div class="inner-box">
                            <div class="clearfix">
                            	
                                <!--Image Column-->
                                <div class="image-column pull-right col-md-6 col-sm-6 col-xs-12">
                                	<div class="image-box">
                                    	<a href="blog-single.html"><img src="<%=request.getContextPath() %>/adminResources/image/news-2.jpg" alt="" /></a>
                                    </div>
                                </div>
                                <!--Content Column-->
                                <div class="content-column pull-left col-md-6 col-sm-6 col-xs-12">
                                	<div class="content-box">
                                        <div class="inner">
                                            <div class="title">Health Tips</div>
                                            <h3><a href="blog-single.html">Organic Foods and its Advantages</a></h3>
                                            <div class="text">Couillon envie make a roux trail ride hunting alligator fishing etoufee...</div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    
                    <div class="news-style-two">
                        <div class="inner-box">
                            <div class="clearfix">
                            	<!--Image Column-->
                                <div class="image-column col-md-6 col-sm-6 col-xs-12">
                                	<div class="image-box">
                                    	<a href="blog-single.html"><img src="<%=request.getContextPath() %>/adminResources/image/news-3.jpg" alt="" /></a>
                                    </div>
                                </div>
                                <!--Content Box / Right Column-->
                                <div class="column-column right-column col-md-6 col-sm-6 col-xs-12">
                                	<div class="content-box">
                                        <div class="inner">
                                            <div class="title">Health Tips</div>
                                            <h3><a href="blog-single.html">Organic Foods and its Advantages</a></h3>
                                            <div class="text">Couillon envie make a roux trail ride hunting alligator fishing etoufee...</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                
            </div>
            
        </div>
    </section>
    <!--End Blog Section-->
    
    <!--Subscribe Style One-->
    <section class="subscribe-style-one">
    	<div class="auto-container">
        	<div class="subscribe-inner" style="background-image:url(images/3.jpg);">
                <div class="row clearfix">
                    <div class="col-md-7 col-sm-12">
                        <h2>Subscribe to our special offers</h2>
                        <div class="text">Sign up today for our newsletter and receive 15% OFF on your first purchase.</div>
                    </div>
                    <div class="col-md-5 col-sm-12">
                        <form method="post" action="contact.html">
                            <div class="form-group">
                                <input type="email" name="email" value="" placeholder="Type Your Email" required>
                                <button type="submit" class="theme-btn btn-style-one">SUBMIT</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section> --%>
	<!--End Subscribe Style One-->
    
    <!--Main Footer-->
   <jsp:include page="footer2.jsp"></jsp:include>
    
</div>
<!--End pagewrapper-->

<!--Scroll to top-->
<div class="scroll-to-top scroll-to-target" data-target="html"><span class="fa fa-long-arrow-up"></span></div>

<script src="<%=request.getContextPath() %>/adminResources/js/jquery.js"></script> 
<script src="<%=request.getContextPath() %>/adminResources/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/adminResources/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="<%=request.getContextPath() %>/adminResources/js/revolution.min.js"></script>
<script src="<%=request.getContextPath() %>/adminResources/js/jquery.fancybox.pack.js"></script>
<script src="<%=request.getContextPath() %>/adminResources/js/jquery.fancybox-media.js"></script>
<script src="<%=request.getContextPath() %>/adminResources/js/owl.js"></script>
<script src="<%=request.getContextPath() %>/adminResources/js/wow.js"></script>
<script src="<%=request.getContextPath() %>/adminResources/js/appear.js"></script>
<script src="<%=request.getContextPath() %>/adminResources/js/isotope.js"></script>
<script src="<%=request.getContextPath() %>/adminResources/js/mixitup.js"></script>
<script src="<%=request.getContextPath() %>/adminResources/js/script.js"></script>
</body>
</html>