<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="<%=request.getContextPath() %>/adminResources/image\/favicon.ico">

    <title>Admin Reply Complaint</title>
  
	<!-- Bootstrap 4.1-->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/bootstrap.min.css">
	
	<!-- Bootstrap extend-->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/bootstrap-extend.css">	
	
	<!-- Theme style -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/master_style.css">

	<!-- SoftMaterial admin skins -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/_all-skins.css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://adminResources/js/html5shiv.min.js"></script>
	<script src="https://adminResources/js/respond.min.js"></script>
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
        Add Complaints
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="breadcrumb-item"><a href="#">Complaints</a></li>
        <li class="breadcrumb-item active"><a href="/loadComplaints">Add Complaints</a></li>
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
        <div class="box-body">
          <div class="row">
            <div class="col">
            	<f:form novalidate="novalidate"  action="/admin/addReply"  method="post" enctype="multipart/form-data" modelAttribute="complaintVO">
			<f:hidden path="id"/>
			<f:hidden path="complaintSubject"/>
			<f:hidden path="complaintDescription"/>
			<f:hidden path="complaintDate"/>
			<f:hidden path="complaintFileName"/>	
			<f:hidden path="complaintFileLink"/>
			<%-- <f:hidden path="loginVO"/>	 --%>
			
				  <div class="row">
					<div class="col-lg-12 col-16">	
					<div class="form-group" style="margin-bottom: 3.429rem;">
							<h5>Subject <span class="text-danger">*</span></h5>
							<div class="controls">
							<!-- <div class="form-control-feedback"><small>Add <code>required</code> attribute to field for required validation.</small></div> -->
								<f:input path="complaintSubject" placeholder="Complaint Subject"  class="form-control" required="required" data-validation-required-message="complaints name is required"></f:input> </div>
						</div>					
						
						<div class="form-group" style="margin-bottom: 3.429rem;">
							<h5>Description <span class="text-danger">*</span></h5>
							<div class="controls">
								<f:textarea path="complaintDescription"  id="textarea" class="form-control" required="required" data-validation-required-message="Complaint description is required"  placeholder="Complaint Description"></f:textarea>
							</div>
						</div>
						
						
						<div class="form-group" style="margin-bottom: 3.429rem;">
							<h5>Response <span class="text-danger">*</span></h5>
							<div class="controls">
								<f:textarea path="response"  id="textarea" class="form-control" required="required" data-validation-required-message="Complaint Response is required"  placeholder="Complaint Response"></f:textarea>
							</div>
						</div>
						
						
						
						<!-- <div class="form-group">
							<h5>Upload File/Image <span class="text-danger">*</span></h5>
							<div class="controls">
							<input type="file" name="file" class="form-control"/>
						</div> -->
						</div>
						</div>
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
</body>
</html>