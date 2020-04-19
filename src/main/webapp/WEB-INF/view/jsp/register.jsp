<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Register/Sign Up</title>
<!-- Stylesheets -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/bootstrap.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/adminResources/css/style.css"
	rel="stylesheet">
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/adminResources/image/favicon.ico"
	type="image/x-icon">
<link rel="icon"
	href="<%=request.getContextPath()%>/adminResources/image/favicon.ico"
	type="image/x-icon">
<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link
	href="<%=request.getContextPath()%>/adminResources/css/responsive.css"
	rel="stylesheet">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="<%=request.getContextPath()%>/adminResources/js/respond.js"></script><![endif]-->
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
			style="background-image:url(<%=request.getContextPath()%>/adminResources/image/6.jpg);">
			<div class="auto-container">
				<div class="row clearfix">
					<!--Title -->
					<div class="title-column col-md-6 col-sm-12 col-xs-12">
						<h1>Register</h1>
					</div>
					<!--Bread Crumb -->
					<div class="breadcrumb-column col-md-6 col-sm-12 col-xs-12">
						<ul class="bread-crumb clearfix">
							<li><a href="/">Home</a></li>
							<li class="active">Register</li>
						</ul>
					</div>
				</div>
			</div>
		</section>

		<!--Contact Section-->
		<section class="contact-section">
			<!-- 	<div class="auto-container">
            <div class="contact-info-section">
                
            
            <div class="contact-form-section" >
            	<div class="row clearfix" align="center">
                	Map Column
                
                    
                    form column
                    <div class="form col-md-7 col-sm-12 col-xs-12" > -->


			<div class="container h-p100">
				<div class="row align-items-center justify-content-md-center h-p100">

					<div class="col-lg-12 col-md-8 col-12">
						<!-- Comment Form -->
						<div class="contact-form">
							<h2>Register a new membership</h2>
							<!--Comment Form-->

							<div class="p-40 mt-10 bg-white content-bottom">


								<div
									class="row align-items-center justify-content-md-center h-p100">
									<f:form action="/registerFarmer" method="post"
										modelAttribute="registerVO">
										<div
											class="row align-items-center justify-content-md-center h-p100">
											<div class="col-lg-6 col-md-8 col-12">
												<div class="form-group">
													<f:input path="name" type="text" name="firstname"
														required="required"
														data-validation-required-message="FirstName is required"
														class="form-control" placeholder="Full Name"></f:input>
												</div>
												<div class="form-group">
													<f:input path="aadharNumber" required="required"
														data-validation-required-message="AdharNo is required"
														type="text" class="form-control"
														placeholder="AdharCard No"></f:input>
												</div>
												<div class="form-group">
													<f:input type="email" path="loginVO.username"
														class="form-control" placeholder="Email"></f:input>
												</div>
												<div class="form-group">
													<f:input path="mobileNumber" type="text"
														placeholder="Mobile NO" class="form-control"
														required="required"
														data-validation-containsnumber-regex="(\d)+"
														data-validation-containsnumber-message="Only Numbers"></f:input>
												</div>

												<div class="form-group">
													<fieldset class="controls">
														<f:radiobutton path="gender" value="male" name="radio"
															id="male" required="required" />
														<label for="male">Male</label>
													</fieldset>
													&nbsp&nbsp&nbsp&nbsp
													<fieldset>
														<f:radiobutton path="gender" value="female" name="radio"
															id="female" required="required" />
														<label for="female">Female</label>
													</fieldset>
												</div>
											</div>
											<div class="col-lg-6 col-md-8 col-12">


												<div class="row">
													<div class="col-sm-4"></div>
												</div>
												<div class="form-group">
													<div class="input-group mb-3">
														<%@taglib uri="http://java.sun.com/jstl/core_rt"
															prefix="c"%>
														<div class="input-group-prepend">
															<span class="input-group-text bg-info border-info"><i
																class=" ti-home"></i></span>
														</div>
														<f:select path="countryVO.id" name="country"
															id="country" class="form-control"
															data-validation-required-message="select country is required" onchange="fncountry()" >
															<option selected disabled>Choose Country</option>
															<c:forEach items="${countryList}" var="country">
																<f:option value="${country.id}">${country.countryName}</f:option>
															</c:forEach>
														</f:select>
														<%-- 														<f:select path="countryVO.id" name="select" id="select" onchange="fncountry()"
												required="required" class="form-control"
												data-validation-required-message="select country is required">

												<c:forEach items="${countryList}" var="country">
													<f:option value="${country.id}">
											${country.countryName}
										</f:option>
												</c:forEach>

											</f:select> --%>
													</div>
												</div>
												<div class="form-group">
													<div class="input-group mb-3">
														<div class="input-group-prepend"></div>
														<f:select path="stateVO.id" name="state" id="state"
															 required="required"
															class="form-control"
															data-validation-required-message="select state is required" onchange="fnstate()">
															<option selected disabled>Choose State</option>

															<%-- <c:forEach items="${stateList}" var="state">
													<f:option value="${state.id}">
											${state.stateName}
										</f:option> 
												</c:forEach>--%>

														</f:select>
													</div>
												</div>
												<div class="form-group">
													<div class="input-group mb-3">
														<div class="input-group-prepend"></div>
														<f:select path="districtVO.id" name="district"
															id="district" onchange="fndistrict()" 
															class="form-control"
															data-validation-required-message="select district is required">
															<option selected disabled>Choose District</option>


															<%-- <c:forEach items="${districtList}" var="district">
													<f:option value="${district.id}">
											${district.districtName}
										</f:option>
												</c:forEach> --%>

														</f:select>
													</div>
												</div>
												<div class="form-group">
													<div class="input-group mb-3">

														<f:select path="villageVO.id" name="village" id="village"
														 class="form-control"
															data-validation-required-message="select village is required">
															<option selected disabled>Choose Village</option>

															<%-- <c:forEach items="${villageList}" var="village">
													<f:option value="${village.id}">
											${village.villageName}
										</f:option>
												</c:forEach> --%>

														</f:select>
													</div>
												</div>




												<div class="form-group">
													<f:textarea path="address" id="textarea"
														class="form-control" required="required"
														placeholder="Address Line"></f:textarea>
												</div>



											</div>
										</div>
										<div class="text-center">
											<div class="checkbox">
												<input type="checkbox" id="basic_checkbox_1"> <label
													for="basic_checkbox_1">I agree to the <a href="#"
													class="text-warning"><b>Terms</b></a></label>
											</div>
											<div class="form-group">
												<button class="theme-btn btn-style-one" type="submit"
													name="submit-form">Register</button>
											</div>
											<br>
											<p class="mb-0">
												Already have an account?<a href="/login"
													class="text-danger m-l-5"> Sign In</a>
											</p>
										</div>
									</f:form>



								</div>

							</div>
							<!--End Comment Form -->

						</div>
					</div>
				</div>
			</div>
			<!--   </div>
            
        </div> -->
		</section>
		<!--End Contact Section-->

		<!--Main Footer-->
		<jsp:include page="footer.jsp"></jsp:include>

	</div>
	<!--End pagewrapper-->

	<!--Scroll to top-->
	<div class="scroll-to-top scroll-to-target" data-target="html">
		<span class="fa fa-long-arrow-up"></span>
	</div>

	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.fancybox.pack.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.fancybox-media.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/wow.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/appear.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/validate.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/script.js"></script>

	<script>
		function fncountry() {
			var x = document.getElementById("country");
			var y = document.getElementById("state");
			console.log(x.value);
			
			var htp = new XMLHttpRequest();
			htp.open("get", "/admin/listState?id=" + x.value, true);
			htp.send();
			htp.onreadystatechange = function() {
				if (htp.readyState == 4) {
					y.innerHTML = "";
					var op = JSON.parse(htp.responseText);
					console.log(op);
					for (var i = 0; i < op.length; i++) {
						var o = document.createElement("option");
						o.text = op[i].stateName;
						o.value = op[i].id;

						y.options.add(o);
						
					}
					 	 	

				}

			}
			
			
		}

		function fnstate() {
			var y = document.getElementById("state");
			var z = document.getElementById("district");

			var htp = new XMLHttpRequest();
			htp.onreadystatechange = function() {
				if (htp.readyState == 4) {
					z.innerHTML = "";
					var op = JSON.parse(htp.responseText);
					console.log(op);
					for (var i = 0; i < op.length; i++) {
						var o = document.createElement("option");
						o.text = op[i].districtName;
						o.value = op[i].id;

						z.options.add(o);
					}
					
				}

			}
			htp.open("get", "/admin/listDistrict?id=" + y.value, true);
			htp.send();
		}
		function fndistrict() {
			var z = document.getElementById("district");
			var zz = document.getElementById("village");

			var htp = new XMLHttpRequest();
			htp.onreadystatechange = function() {
				if (htp.readyState == 4) {
					zz.innerHTML = "";
					var op = JSON.parse(htp.responseText);
					for (var i = 0; i < op.length; i++) {
						var o = document.createElement("option");
						o.text = op[i].villageName;
						o.value = op[i].id;

						zz.options.add(o);
					}

				}

			}
			htp.open("get", "/admin/listVillage?id=" + z.value, true);
			htp.send();
		}
	</script>



	<!--Google Map APi Key-->
	<script src="http://maps.google.com/maps/api/js?key="></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/map-script.js"></script>
	<!--End Google Map APi-->
</body>
</html>