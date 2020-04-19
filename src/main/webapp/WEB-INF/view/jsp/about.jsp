<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title> About</title>
<!-- Stylesheets -->
<link href="<%=request.getContextPath() %>/adminResources/css/bootstrap.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/adminResources/css/revolution-slider.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/adminResources/css/style.css" rel="stylesheet">
<link rel="shortcut icon"href="<%=request.getContextPath() %>/adminResources/image/favicon.ico" type="image/x-icon">
<link rel="icon"href="<%=request.getContextPath() %>/adminResources/image/favicon.ico" type="image/x-icon">
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
   <jsp:include page="header.jsp"></jsp:include>
    <!--End Main Header -->
   
   	<!--Page Title-->
    <section class="page-title" style="background-image:url(adminResources/image/6.jpg);">
    	<div class="auto-container">
        	<div class="row clearfix">
            	<!--Title -->
            	<div class="title-column col-md-6 col-sm-12 col-xs-12">
                	<h1>About</h1>
                </div>
                <!--Bread Crumb -->
                <div class="breadcrumb-column col-md-6 col-sm-12 col-xs-12">
                    <ul class="bread-crumb clearfix">
                        <li><a href="/">Home</a></li>
                        <li class="active">About Us</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

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
								<div class="title-text">Have a look at our Predicted
									Prices of Crops.!</div>
							</div>
							<div class="dark-text">We are providing excellent
								prediction of future crop pricing with different algorithms with
								65 to 85 % of accuracy.</div>
							<div class="text">
								With <b>Random-Forest</b>, <b>Decision-Tree</b>, <b>Gradient-Boost</b>
								Algorithms we're providing 80% of accuracy in Price prediction
								of crops. Also We are providing Yield Prediction for Government
								use with this algorithms. We're using <b>data.gov.in</b> website
								for predicting prices as well as Yield.
							</div>

						</div>
					</div>

				</div>
				<!--image box-->
				<div class="floated-img-up">
					<img
						src="<%=request.getContextPath() %>/adminResources/image/welcome-up-img.png"
						alt="" />
				</div>
				<div class="floated-img-down">
					<img
						src="<%=request.getContextPath() %>/adminResources/image/welcome-down-img.png"
						alt="" />
				</div>
			</div>
		</section>
    <!--End Welcome Section-->

	<%-- <!-- <!--Shop Banner-->
    <section class="shop-banner style-two" style="background-image:url(adminResources/image/1.jpg);">
    	<div class="auto-container">
        	<h3>Unlock your potential <br> with good <span>nutrition</span></h3>
            <div class="sale-percent"><span>Sale! <br> Upto</span>50% <span>off</span></div>
            <a href="#" class="theme-btn btn-style-one">Shop Now</a>
        </div>
    </section>
    End Shop Banner
    
    Farmer Section
    <section class="farmer-section">
    	<div class="auto-container">
        	Side Image
        	<div class="side-image">
            	<img src="<%=request.getContextPath() %>/adminResources/image/farmer-side-img.png" alt="" />
            </div>
        	Sec Title Two
            <div class="sec-title-two">
                <h2>Our Farmers</h2>
                <div class="title-text">Farm Workers</div>
            </div>
		
        	<div class="three-item-carousel owl-carousel owl-theme">
            
            	Farmer Box Two
            	<div class="farmer-box-two">
                	<div class="inner-box">
                    	<div class="image-box">
                        	<img src="<%=request.getContextPath() %>/adminResources/image/farmer-3.jpg" alt="" />
                            <div class="overlay-box">
                            	<div class="inner">
                                	<div class="content">
                                    	<div class="text">Downtown farmer's market envie sac lait bayou. Cajun pecan pie bisque sac lait bisque macque choux.</div>
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
                        <div class="lower-box">
                        	<div class="designation">Founder</div>
                            <h3>John Capone</h3>
                        </div>
                    </div>
                </div>
                
                Farmer Box Two
            	<div class="farmer-box-two">
                	<div class="inner-box">
                    	<div class="image-box">
                        	<img src="<%=request.getContextPath() %>/adminResources/image/farmer-4.jpg" alt="" />
                            <div class="overlay-box">
                            	<div class="inner">
                                	<div class="content">
                                    	<div class="text">Downtown farmer's market envie sac lait bayou. Cajun pecan pie bisque sac lait bisque macque choux.</div>
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
                        <div class="lower-box">
                        	<div class="designation">Local Farmer</div>
                            <h3>Marlyn Leend</h3>
                        </div>
                    </div>
                </div>
                
                Farmer Box Two
            	<div class="farmer-box-two">
                	<div class="inner-box">
                    	<div class="image-box">
                        	<img src="<%=request.getContextPath() %>/adminResources/image/farmer-5.jpg" alt="" />
                            <div class="overlay-box">
                            	<div class="inner">
                                	<div class="content">
                                    	<div class="text">Downtown farmer's market envie sac lait bayou. Cajun pecan pie bisque sac lait bisque macque choux.</div>
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
                        <div class="lower-box">
                        	<div class="designation">Farmer</div>
                            <h3>Jessie Mekrin</h3>
                        </div>
                    </div>
                </div>
                
                Farmer Box Two
            	<div class="farmer-box-two">
                	<div class="inner-box">
                    	<div class="image-box">
                        	<img src="<%=request.getContextPath() %>/adminResources/image/farmer-3.jpg" alt="" />
                            <div class="overlay-box">
                            	<div class="inner">
                                	<div class="content">
                                    	<div class="text">Downtown farmer's market envie sac lait bayou. Cajun pecan pie bisque sac lait bisque macque choux.</div>
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
                        <div class="lower-box">
                        	<div class="designation">Founder</div>
                            <h3>John Capone</h3>
                        </div>
                    </div>
                </div>
                
                Farmer Box Two
            	<div class="farmer-box-two">
                	<div class="inner-box">
                    	<div class="image-box">
                        	<img src="<%=request.getContextPath() %>/adminResources/image/farmer-4.jpg" alt="" />
                            <div class="overlay-box">
                            	<div class="inner">
                                	<div class="content">
                                    	<div class="text">Downtown farmer's market envie sac lait bayou. Cajun pecan pie bisque sac lait bisque macque choux.</div>
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
                        <div class="lower-box">
                        	<div class="designation">Local Farmer</div>
                            <h3>Marlyn Leend</h3>
                        </div>
                    </div>
                </div>
                
                Farmer Box Two
            	<div class="farmer-box-two">
                	<div class="inner-box">
                    	<div class="image-box">
                        	<img src="<%=request.getContextPath() %>/adminResources/image/farmer-5.jpg" alt="" />
                            <div class="overlay-box">
                            	<div class="inner">
                                	<div class="content">
                                    	<div class="text">Downtown farmer's market envie sac lait bayou. Cajun pecan pie bisque sac lait bisque macque choux.</div>
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
                        <div class="lower-box">
                        	<div class="designation">Farmer</div>
                            <h3>Jessie Mekrin</h3>
                        </div>
                    </div>
                </div>
                
            </div>
        
        </div>
    </section>
    End Farmer Section
    
    Testimonial Section
    <section class="testimonial-section" style="background-image:url(adminResources/image/2.jpg);">
    	<div class="auto-container">
        	<div class="single-item-carousel owl-carousel owl-theme">
                Testimonial Block
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
                
                Testimonial Block
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
                
                Testimonial Block
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
    End Testimonial Section
    
    Blog Section
    <section class="blog-section">
    	<div class="auto-container">
        	Sec Title Two
            <div class="sec-title-two">
                <h2>Our Blog</h2>
                <div class="title-text">Latest News</div>
            </div>
            
            <div class="row clearfix">
            	New Blog
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
                
                New Blog Two
                <div class="column col-md-6 col-sm-12 col-xs-12">
                
                    <div class="news-style-two">
                        <div class="inner-box">
                            <div class="clearfix">
                            	
                                Image Column
                                <div class="image-column pull-right col-md-6 col-sm-6 col-xs-12">
                                	<div class="image-box">
                                    	<a href="blog-single.html"><img src="<%=request.getContextPath() %>/adminResources/image/news-2.jpg" alt="" /></a>
                                    </div>
                                </div>
                                Content Column
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
                            	Image Column
                                <div class="image-column col-md-6 col-sm-6 col-xs-12">
                                	<div class="image-box">
                                    	<a href="blog-single.html"><img src="<%=request.getContextPath() %>/adminResources/image/news-3.jpg" alt="" /></a>
                                    </div>
                                </div>
                                Content Box / Right Column
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
     --><!--End Blog Section-->
     --%>
    <!--Main Footer-->
    <jsp:include page="footer.jsp"></jsp:include>
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