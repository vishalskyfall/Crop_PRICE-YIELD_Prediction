<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title> Contact</title>
<!-- Stylesheets -->
<link href="adminResources/css/bootstrap.css" rel="stylesheet">
<link href="adminResources/css/style.css" rel="stylesheet">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link href="adminResources/css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="adminResources/js/respond.js"></script><![endif]-->
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
                	<h1>Contact</h1>
                </div>
                <!--Bread Crumb -->
                <div class="breadcrumb-column col-md-6 col-sm-12 col-xs-12">
                    <ul class="bread-crumb clearfix">
                        <li><a href="index.html">Home</a></li>
                        <li class="active">Contact</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

	<!--Contact Section-->
    <section class="contact-section">
    	<div class="auto-container">
            <div class="contact-info-section">
                <div class="row clearfix">
                	<!--Contact Info Box-->
                	<div class="contact-info-box col-md-4 col-sm-6 col-xs-12">
                    	<div class="inner-box">
                        	<div class="icon-box"><span class="icon flaticon-location-pin"></span></div>
                            <h3>Address</h3>
                            <div class="text">L.D.College Of Engineering
													<br>Navarangpura<br>
													380 015</div>
                            <div class="large-icon"><span class="icon flaticon-location-pin"></span></div>
                        </div>
                    </div>
                    <!--Contact Info Box-->
                    <div class="contact-info-box col-md-4 col-sm-6 col-xs-12">
                    	<div class="inner-box">
                        	<div class="icon-box"><span class="icon flaticon-headphones"></span></div>
                            <h3>Call Us</h3>
                            <div class="text">92659 38890</div>
                            <div class="large-icon"><span class="icon flaticon-headphones"></span></div>
                        </div>
                    </div>
                    <!--Contact Info Box-->
                    <div class="contact-info-box col-md-4 col-sm-6 col-xs-12">
                    	<div class="inner-box">
                        	<div class="icon-box"><span class="icon flaticon-business-2"></span></div>
                            <h3>Mail Us</h3>
                            <div class="text">brahmbhattvishal6626@gmail.com</div>
                            <div class="large-icon"><span class="icon flaticon-business-2"></span></div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="contact-form-section">
            	<div class="row clearfix">
                	<!--Map Column-->
                	<div class="map-column col-md-5 col-sm-12 col-xs-12">
                    	
                        <div class="map-outer">
							<!--Map Canvas-->
                            <div class="map-canvas"
                                data-zoom="8"
                                data-lat="-37.817085"
                                data-lng="144.955631"
                                data-type="roadmap"
                                data-hue="#ffc400"
                                data-title="Envato"
                                data-content="Melbourne VIC 3000, Australia<br><a href='mailto:info@youremail.com'>info@youremail.com</a>">
                            </div>
                		</div>
                        
                    </div>
                    
                    <!--form column-->
                    <div class="form-column col-md-7 col-sm-12 col-xs-12">
                    	
                        <!-- Comment Form -->
                        <div class="contact-form">
                            <h2>SEND US MESSAGE</h2>
                            <!--Comment Form-->
                            <form method="get" action="/register" id="contact-form">
                                <div class="form-group">
                                	<input type="text" name="username" placeholder="Name *" required>
                                </div>
                                    
                                <div class="form-group">
                                    <input type="email" name="email" placeholder="Email *" required>
                                </div>
                                
                                <div class="form-group">
                                    <input type="text" name="subject" placeholder="Subject">
                                </div>
                                
                                <div class="form-group">
                                    <textarea name="message" placeholder="Comment *"></textarea>
                                </div>
                                
                                <div class="form-group">
                                    <button class="theme-btn btn-style-one" type="submit" name="submit-form">Post Comment</button>
                                </div>
                            </form>
                                
                        </div>
                        <!--End Comment Form --> 
                        
                    </div>
                </div>
            </div>
            
        </div>
    </section>
    <!--End Contact Section-->
    
    <!--Main Footer-->
   <jsp:include page="footer.jsp"></jsp:include>
    
</div>
<!--End pagewrapper-->

<!--Scroll to top-->
<div class="scroll-to-top scroll-to-target" data-target="html"><span class="fa fa-long-arrow-up"></span></div>

<script src="adminResources/js/jquery.js"></script> 
<script src="adminResources/js/bootstrap.min.js"></script>
<script src="adminResources/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="adminResources/js/jquery.fancybox.pack.js"></script>
<script src="adminResources/js/jquery.fancybox-media.js"></script>
<script src="adminResources/js/wow.js"></script>
<script src="adminResources/js/appear.js"></script>
<script src="adminResources/js/validate.js"></script>
<script src="adminResources/js/script.js"></script>

<!--Google Map APi Key-->
<script src="http://maps.google.com/maps/api/js?key="></script>
<script src="adminResources/js/map-script.js"></script>
<!--End Google Map APi-->
</body>
</html>