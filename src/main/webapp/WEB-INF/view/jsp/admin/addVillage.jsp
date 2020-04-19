<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="<%=request.getContextPath() %>/adminResources/image/favicon.ico">

<title>Add Village</title>
<!-- Bootstrap 4.1-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/bootstrap.min.css">

<!-- Data Table-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/adminResources/css/datatables.min.css" />

<!-- Bootstrap extend-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/bootstrap-extend.css">

<!-- Bootstrap switch-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/switch.css">

<!-- Theme style -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/master_style.css">

<!-- SoftMaterial admin skins -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/_all-skins.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>

<body class="hold-transition skin-purple-light sidebar-mini">
	<div class="wrapper">

		<jsp:include page="header.jsp"></jsp:include>
  
  <!-- Left side column. contains the logo and sidebar -->
  <jsp:include page="menu.jsp"></jsp:include>
	
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Add Village
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="breadcrumb-item"><a href="#">Manage Village</a></li>
        <li class="breadcrumb-item active"><a href="/admin/loadVillage"> Add Village</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
     
     <!-- Basic Forms -->
      <div class="box">
       <!--  <div class="box-header with-border">
          <h6 class="box-subtitle">Bootstrap Form Validation check the <a class="text-warning" href="http://reactiveraven.github.io/jqBootstrapValidation/">official website </a></h6>
			
			<ul class="box-controls pull-right">
			  <li><a class="box-btn-close" href="#"></a></li>
			  <li><a class="box-btn-slide" href="#"></a></li>	
			  <li><a class="box-btn-fullscreen" href="#"></a></li>
			</ul>
        </div> -->
        <!-- /.box-header -->
        
         <div class="box-header with-border">
			<h3 class="box-title">Add Village</h3>
				<div class="box-controls pull-right">
												<!-- <button id="row-count" class="btn btn-xs btn-primary">Row
													count</button> -->
					</div>
				</div>
        <div class="box-body">
          <div class="row">
            <div class="col">
            	<f:form novalidate="novalidate"  action="/admin/addVillage" modelAttribute="villageVO"  >
			
				<f:hidden path="id"/>
			<div class="form-group" style="margin-bottom: 3.429rem;">
			 <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
				<div class="col-lg-12 col-12">
											<div class="form-group" style="margin-bottom: 3.429rem;">

												<h5>
													Country Name <span class="text-danger">*</span>
												</h5>
												<div class="controls">
													<f:select path="countryVO.id" name="country" id="country"
														required="required" class="form-control" onchange="fn()"
														data-validation-required-message="select country is required">
														<option selected >Choose Country</option>

														<c:forEach items="${countryList}" var="country">
															<f:option value="${country.id}">
											${country.countryName}
										</f:option>
														</c:forEach>

													</f:select>
												</div>
											</div>
											<div class="form-group" style="margin-bottom: 3.429rem;">

												<h5>
													State Name <span class="text-danger">*</span>
												</h5>
												<div class="controls">
													<f:select path="stateVO.id" name="state" id="state"
														required="required" class="form-control" onchange="fn1()"
														data-validation-required-message="select state is required">
														<option selected disabled>Choose State</option>
		
														<%-- <c:forEach items="${stateList}" var="state">
															<f:option value="${state.id}">
											${state.stateName}
										</f:option>
														</c:forEach> --%>

													</f:select>
												</div>
											</div>
											<div class="form-group" style="margin-bottom: 3.429rem;">

												<h5>
													District Name<span class="text-danger">*</span>
												</h5>
												<div class="controls">
													<f:select path="districtVO.id" name="district" id="district"
														required="required" class="form-control"
														data-validation-required-message="select district is required">
														<option selected disabled>Choose District</option>

														<%-- <c:forEach items="${districtList}" var="district">
															<f:option value="${district.id}">
											${district.districtName}
										</f:option> 
														</c:forEach>--%>

													</f:select>
												</div>
											</div>
											<div class="form-group" style="margin-bottom: 3.429rem;">
							<h5>Village Name<span class="text-danger">*</span></h5>
							<div class="controls">
								<f:input path="villageName" placeholder="Village Name" type="text" name="text" class="form-control" required="required" data-validation-required-message="village name is required"></f:input> </div>
							<!-- <div class="form-control-feedback"><small>Add <code>required</code> attribute to field for required validation.</small></div> -->
						</div>
						
						<div class="form-group" style="margin-bottom: 3.429rem;">
							<h5>Village Description <span class="text-danger">*</span></h5>
							<div class="controls">
								<f:textarea path="villageDescription" name="textarea" id="textarea" class="form-control" required="required" placeholder="Village Description" data-validation-required-message="village description is required"></f:textarea>
							</div>
						</div>
						<!-- 
						<div class="form-group">
							<h5>Email Field <span class="text-danger">*</span></h5>
							<div class="controls">
								<input type="email" name="email" class="form-control" required data-validation-required-message="This field is required"> </div>
						</div>
						<div class="form-group">
							<h5>Password Input Field <span class="text-danger">*</span></h5>
							<div class="controls">
								<input type="password" name="password" class="form-control" required data-validation-required-message="This field is required"> </div>
						</div>
						<div class="form-group">
							<h5>Repeat Password Input Field <span class="text-danger">*</span></h5>
							<div class="controls">
								<input type="password" name="password2" data-validation-match-match="password" class="form-control" required> </div>
						</div>
						<div class="form-group">
							<h5>File Input Field <span class="text-danger">*</span></h5>
							<div class="controls">
								<input type="file" name="file" class="form-control" required> </div>
						</div>
						<div class="form-group">
							<h5>Input with Icon <span class="text-danger">*</span></h5>
							<div class="controls">
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Addon To Right" data-validation-required-message="This field is required"> <span class="input-group-addon" id="basic-addon1"><i class="fa fa-dollar"></i></span> </div>
							</div>
						</div>
						<div class="form-group">
							<h5>Maximum Character Length <span class="text-danger">*</span></h5>
							<div class="controls">
								<input type="text" name="maxChar" class="form-control" required data-validation-required-message="This field is required" maxlength="10">
							</div>
							<div class="form-control-feedback"><small>Add <code>maxlength='10'</code> attribute for maximum number of characters to accept. </small></div>
						</div>
						<div class="form-group">
							<h5>Minimum Character Length <span class="text-danger">*</span></h5>
							<div class="controls">
								<input type="text" name="minChar" class="form-control" required data-validation-required-message="This field is required" minlength="6">
							</div>
							<div class="form-control-feedback"><small>Add <code>minlength="6"</code> attribute for minimum number of characters to accept.</small></div>
						</div>
        			</div>
					<div class="col-lg-4 col-12">
						<div class="form-group">
							<h5>Only Numbers <span class="text-danger">*</span></h5>
							<div class="input-group"> <span class="input-group-addon">$</span>
								<input type="number" name="onlyNum" class="form-control" required data-validation-required-message="This field is required"> <span class="input-group-addon">.00</span> </div>
						</div>
						<div class="form-group">
							<h5>Maximum Number <span class="text-danger">*</span></h5>
							<input type="number" name="maxNum" class="form-control" required data-validation-required-message="This field is required" max="25">
							<div class="form-control-feedback"> <small><i>Must be lower than 25</i></small> - <small>Add <code>max</code> attribute for maximum number to accept. Also use <code>data-validation-max-message</code> attribute for max failure message</small> </div>
						</div>
						<div class="form-group">
							<h5>Minimum Number <span class="text-danger">*</span></h5>
							<div class="controls">
								<input type="number" name="minNum" class="form-control" required data-validation-required-message="This field is required" min="10">
							</div>
							<div class="form-control-feedback"><small><i>Must be higher than 10</i></small> - <small>Add <code>min</code> attribute for minimum number to accept. Also use <code>data-validation-min-message</code> attribute for min failure message</small></div>
						</div>
						<div class="form-group">
							<h5>Text Input Range <span class="text-danger">*</span></h5>
							<div class="controls">
								<input type="text" name="text" class="form-control" required data-validation-required-message="This field is required" minlength="10" maxlength="20" placeholder="Enter number between 10 &amp; 20"> </div>
						</div>
						<div class="form-group">
							<h5>Input with Button <span class="text-danger">*</span></h5>
							<div class="controls">
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Search" required> <span class="input-group-btn">
									  <button class="btn btn-info" type="button">Go!</button>
									</span> </div>
							</div>
						</div>
						<div class="form-group">
							<h5>No Characters, Only Numbers <span class="text-danger">*</span></h5>
							<div class="controls">
								<input type="text" name="noChar" class="form-control" required data-validation-containsnumber-regex="(\d)+" data-validation-containsnumber-message="No Characters Allowed, Only Numbers"> </div>
						</div>
						<div class="form-group">
							<h5>Pattern <span class="text-danger">*</span> <small><i>Must start with 'a' and end with 'z'</i></small></h5>
							<div class="controls">
								<input type="text" name="pattern" pattern="a.*z" data-validation-pattern-message="Must start with 'a' and end with 'z'" class="form-control" required>
								<div class="form-control-feedback"><small>Add <code>pattern</code> attribute to set input pattern. Also use <code>data-validation-pattern-message</code> attribute for pattern failure message</small></div>
							</div>
						</div>
        			</div>
					<div class="col-lg-4 col-12">
						<div class="form-group">
							<h5>Enter URL <span class="text-danger">*</span></h5>
							<div class="controls">
								<input type="text" class="form-control" placeholder="Add URL" data-validation-regex-regex="((http[s]?|ftp[s]?):\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*" data-validation-regex-message="Only Valid URL's">
								<div class="form-control-feedback"><small>Add <code>data-validation-regex-regex</code> attribute for regular expression. Also use <code>data-validation-regex-message</code> attribute for regex failure message</small></div>
							</div>
						</div>
						<div class="form-group">
							<h5>Enter Email Address <span class="text-danger">*</span></h5>
							<div class="controls">
								<input type="text" class="form-control" placeholder="Email Address" data-validation-regex-regex="([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})" data-validation-regex-message="Enter Valid Email"> </div>
						</div>
						<div class="form-group">
							<h5>Enter Date <span class="text-danger">*</span></h5>
							<div class="controls">
								<input type="date" name="date" class="form-control" required data-validation-required-message="This field is required"> </div>
							<div class="form-control-feedback"><small>Add <code>required</code> attribute to field for required validation.</small></div>

						</div>
						<div class="form-group">
							<h5>Basic Select <span class="text-danger">*</span></h5>
							<div class="controls">
								<select name="select" id="select" required class="form-control">
									<option value="">Select Your City</option>
									<option value="1">India</option>
									<option value="2">USA</option>
									<option value="3">UK</option>
									<option value="4">Canada</option>
									<option value="5">Dubai</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<h5>Textarea <span class="text-danger">*</span></h5>
							<div class="controls">
								<textarea name="textarea" id="textarea" class="form-control" required placeholder="Textarea text"></textarea>
							</div>
						</div>
        			</div>
        		  </div>
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<h5>Checkbox <span class="text-danger">*</span></h5>
								<div class="controls">
									<input type="checkbox" id="checkbox_1" required value="single">
									<label for="checkbox_1">Check this custom checkbox</label>
								</div>								
							</div>
							<div class="form-group">
								<h5>Checkbox Group <span class="text-danger">*</span></h5>
								<div class="controls">
									<fieldset>
										<input type="checkbox" id="checkbox_2" required value="x">
										<label for="checkbox_2">I am unchecked Checkbox</label>
									</fieldset>
									<fieldset>
										<input type="checkbox" id="checkbox_3" value="y">
										<label for="checkbox_3">I am unchecked too</label>
									</fieldset>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<h5>Select Max 2 Checkbox<span class="text-danger">*</span></h5>
								<div class="controls">
									<fieldset>
										<input type="checkbox" id="checkbox_4" data-validation-maxchecked-maxchecked="2" data-validation-maxchecked-message="Don't be greedy!" required>
										<label for="checkbox_4">I am unchecked Checkbox</label>
									</fieldset>
									<fieldset>
										<input type="checkbox" id="checkbox_5">
										<label for="checkbox_5">I am unchecked too</label>
									</fieldset>
									<fieldset>
										<input type="checkbox" id="checkbox_6">
										<label for="checkbox_6">You can check me</label>
									</fieldset>
								</div> <small>Select any 2 options</small>
							</div>
							<div class="form-group">
								<h5>Minimum 2 Checkbox selection<span class="text-danger">*</span></h5>
								<div class="controls">
									<fieldset>
										<input type="checkbox" id="checkbox_7" value="1" data-validation-minchecked-minchecked="2" data-validation-minchecked-message="Choose at least two" name="styled_min_checkbox" required>
										<label for="checkbox_7">I am unchecked Checkbox</label>
									</fieldset>
									<fieldset>
										<input type="checkbox" id="checkbox_8" value="2">
										<label for="checkbox_8">I am unchecked too</label>
									</fieldset>
									<fieldset>
										<input type="checkbox" id="checkbox_9" value="3">
										<label for="checkbox_9">You can check me</label>
									</fieldset>
								</div> <small>Select any 2 options</small>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<h5>Radio Buttons <span class="text-danger">*</span></h5>
								<fieldset class="controls">
									<input name="group1" type="radio" id="radio_1" value="1" required>
									<label for="radio_1">Check Me</label>
								</fieldset>
								<fieldset>
									<input name="group1" type="radio" id="radio_2" value="2">
									<label for="radio_2">Or Me</label>									
								</fieldset>
							</div>
							<div class="form-group">
								<h5>Inline Radio Buttons <span class="text-danger">*</span></h5>
								<div class="controls">
									<fieldset>
										<input name="group2" type="radio" id="radio_3" value="Yes" required>
										<label for="radio_3">Check Me</label>
									</fieldset>
									<fieldset>
										<input name="group2" type="radio" id="radio_4" value="No">
										<label for="radio_4">Or Me</label>
									</fieldset>
								</div>
							</div>
						</div>
					</div> -->
					<div class="text-xs-right bt-1 pt-10">
						<button type="submit" class="btn btn-info">Submit</button>
					</div>
				</f:form>
            	
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->
      
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
   <jsp:include page="footer.jsp"></jsp:include>
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-light">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="nav-item"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li class="nav-item"><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-cog fa-spin"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-danger"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Admin Birthday</h4>

                <p>Will be July 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-warning"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Jhone Updated His Profile</h4>

                <p>New Email : jhone_doe@demo.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-info"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Disha Joined Mailing List</h4>

                <p>disha@demo.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-success"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Code Change</h4>

                <p>Execution time 15 Days</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Web Design
                <span class="label label-danger pull-right">40%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 40%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Data
                <span class="label label-success pull-right">75%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 75%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Order Process
                <span class="label label-warning pull-right">89%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 89%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Development 
                <span class="label label-primary pull-right">72%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 72%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <input type="checkbox" id="report_panel" class="chk-col-grey" >
			<label for="report_panel" class="control-sidebar-subheading ">Report panel usage</label>

            <p>
              general settings information
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <input type="checkbox" id="allow_mail" class="chk-col-grey" >
			<label for="allow_mail" class="control-sidebar-subheading ">Mail redirect</label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <input type="checkbox" id="expose_author" class="chk-col-grey" >
			<label for="expose_author" class="control-sidebar-subheading ">Expose author name</label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <input type="checkbox" id="show_me_online" class="chk-col-grey" >
			<label for="show_me_online" class="control-sidebar-subheading ">Show me as online</label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <input type="checkbox" id="off_notifications" class="chk-col-grey" >
			<label for="off_notifications" class="control-sidebar-subheading ">Turn off notifications</label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">              
              <a href="javascript:void(0)" class="text-red margin-r-5"><i class="fa fa-trash-o"></i></a>
              Delete chat history
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  
  <!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script src="<%=request.getContextPath() %>/adminResources/js/jquery-3.3.1.js"></script>
	
	<!-- popper -->
	<script src="<%=request.getContextPath() %>/adminResources/js/popper.min.js"></script>
	
	<!-- Bootstrap 4.1-->
	<script src="<%=request.getContextPath() %>/adminResources/js/bootstrap.min.js"></script>
	
	<!-- SlimScroll -->
	<script src="<%=request.getContextPath() %>/adminResources/js/jquery.slimscroll.min.js"></script>
	
	<!-- FastClick -->
	<script src="<%=request.getContextPath() %>/adminResources/js/fastclick.js"></script>
	
	<!-- SoftMaterial admin App -->
	<script src="<%=request.getContextPath() %>/adminResources/js/template.js"></script>
	
	<!-- SoftMaterial admin for demo purposes -->
	<script src="<%=request.getContextPath() %>/adminResources/js/demo.js"></script>
	
	<!-- Form validator JavaScript -->
    <script src="<%=request.getContextPath() %>/adminResources/js/validation.js"></script>
    <script src="<%=request.getContextPath() %>/adminResources/js/form-validation.js"></script>
        <script>
		function fn1() {
			var x = document.getElementById("state");
			var y = document.getElementById("district");

			var htp = new XMLHttpRequest();
			htp.onreadystatechange = function() {
				if (htp.readyState == 4) {
					y.innerHTML = "";
					var op = JSON.parse(htp.responseText);
					for (var i = 0; i < op.length; i++) {
						var o = document.createElement("option");
						o.text = op[i].districtName;
						o.value = op[i].id;

						y.options.add(o);
					}
					 	 	

				}

			}
			htp.open("get", "/admin/listDistrict?id=" + x.value, true);
			htp.send();
		}
	    
		function fn() {
			var x = document.getElementById("country");
			var y = document.getElementById("state");

			var htp = new XMLHttpRequest();
			htp.onreadystatechange = function() {
				if (htp.readyState == 4) {
					y.innerHTML = "";
					var op = JSON.parse(htp.responseText);
					for (var i = 0; i < op.length; i++) {
						var o = document.createElement("option");
						o.text = op[i].stateName;
						o.value = op[i].id;

						y.options.add(o);
					}
					 	 	

				}

			}
			htp.open("get", "/admin/listState?id=" + x.value, true);
			htp.send();
		}
		
		</script>
</body>
</html>