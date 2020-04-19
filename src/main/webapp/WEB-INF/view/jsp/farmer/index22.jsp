<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="<%=request.getContextPath() %>/adminResources/image/favicon.ico">

<title>FARMER</title>
<!-- Bootstrap 4.1-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/bootstrap.min.css">

<!-- Data Table-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/adminResource/css/datatables.min.css" />

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
 <%--  <jsp:include page="menu.jsp"></jsp:include> --%>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <!-- <small>Control panel</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i> Home</a></li>
        <!-- <li class="breadcrumb-item active">Dashboard</li> -->
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
		  
	  <%-- <div class="row">
		  
        <div class="col-lg-6 col-12">
          <div class="box">
            <div class="box-header with-border">
              <h4 class="box-title">Monthly Sales</h4>
            </div>
            <div class="box-body">			  
              <div class="chart">
                <canvas id="chart_8" style="height:450px"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
		
		<div class="col-lg-6 col-12">			
          <div class="box">
            <div class="box-header with-border">
              <h4 class="box-title">Sales Analytics</h4>
            </div>
            <div class="box-body">	
			  <p class="m-t-30">Lorem ipsum dolor sit amet, ectetur adipiscing elit. viverra tellus. ipsumdolorsitda amet, ectetur adipiscing elit. Ectetur adipiscing elit. viverra tellus.ipsum dolor sit.</p>
			  <p>Lorem ipsum dolor sit amet, ectetur adipiscing elit. viverra tellus.</p>
              <div class="chart">
                <div id="morris-area-chart" style="height:365px;"></div>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
		</div>
		  
		  <div class="col-12 col-lg-4">
            <div class="box box-body p-0 bg-info">
			  <div class="p-15">
				  <div class="flexbox">
					<h6 class="text-uppercase">Total Leads</h6>
					<h6><i class="ion-android-arrow-dropup text-success font-size-18 mr-1"></i> %20</h6>
				  </div>

				  <ul class="list-inline my-10">
					<li class="br-1 px-10">
					  <h6 class="mb-0 text-bold">8952</h6>
					  <small>Growth</small>
					</li>

					<li class="br-1 px-10">
					  <h6 class="mb-0 text-bold">7458</h6>
					  <small>Last Month</small>
					</li>

					<li class="px-10">
					  <h6 class="mb-0 text-bold">3254</h6>
					  <small>Today</small>
					</li>
				  </ul>
			  </div>
              <div id="linearea">1,3,5,4,6,8,7,9,7,8,10,16,14,10</div>
            </div>
          </div>
		  
		  
          <div class="col-12 col-lg-4">
            <div class="box box-body p-0 bg-danger">
			  <div class="p-15">
				  <div class="flexbox">
					<h6 class="text-uppercase">Total Vendor</h6>
					<h6><i class="ion-android-arrow-dropdown text-white font-size-18 mr-1"></i> %20</h6>
				  </div>

				  <ul class="list-inline my-10">
					<li class="br-1 px-10">
					  <h6 class="mb-0 text-bold">8952</h6>
					  <small>Growth</small>
					</li>

					<li class="br-1 px-10">
					  <h6 class="mb-0 text-bold">7458</h6>
					  <small>Last Month</small>
					</li>

					<li class="px-10">
					  <h6 class="mb-0 text-bold">3254</h6>
					  <small>Today</small>
					</li>
				  </ul>
			  </div>              
			  <div id="baralc" class="text-center"></div>
            </div>
          </div> 
		  
		  <div class="col-12 col-lg-4">
			<div class="box box-body p-0 bg-success">
			  <div class="p-15">
				  <div class="flexbox">
					<h6 class="text-uppercase">Invoice</h6>
					<h6><i class="ion-android-arrow-dropup text-white font-size-18 mr-1"></i> %20</h6>
				  </div>

				  <ul class="list-inline my-10">
					<li class="br-1 px-10">
					  <h6 class="mb-0 text-bold">8952</h6>
					  <small>Growth</small>
					</li>

					<li class="br-1 px-10">
					  <h6 class="mb-0 text-bold">7458</h6>
					  <small>Last Month</small>
					</li>

					<li class="px-10">
					  <h6 class="mb-0 text-bold">3254</h6>
					  <small>Today</small>
					</li>
				  </ul>
			  </div>     

			  <div id="linechart">1,3,5,4,6,8,7,9,7,8,10,16,14,10</div>
			</div>
		  </div>
		  
		  
			<div class="col-md-12 col-lg-4">
				<div class="box">
					<div class="box-header with-border">
						<h4 class="box-title">Browser Stats</h4>
					</div>
					<div class="box-body p-0">
					  <div class="media-list media-list-hover media-list-divided">
						<a class="media media-single" href="#">
						  <span class="title">Google Chrome</span>
						  <span class="badge badge-pill badge-secondary">21.8%</span>
						</a>

						<a class="media media-single" href="#">
						  <span class="title">Mozila Firefox</span>
						  <span class="badge badge-pill badge-primary">21.8%</span>
						</a>

						<a class="media media-single" href="#">
						  <span class="title">Apple Safari</span>
						  <span class="badge badge-pill badge-info">21.8%</span>
						</a>

						<a class="media media-single" href="#">
						  <span class="title">Internet Explorer</span>
						  <span class="badge badge-pill badge-success">21.8%</span>
						</a>

						<a class="media media-single" href="#">
						  <span class="title">Opera mini</span>
						  <span class="badge badge-pill badge-danger">21.8%</span>
						</a>

						<a class="media media-single" href="#">
						  <span class="title">Mozila Firefox</span>
						  <span class="badge badge-pill badge-warning">21.8%</span>
						</a>
					  </div>
				   </div>
				</div>
			  </div>
			<div class="col-md-12 col-lg-4">
				<div class="box">
					<div class="box-header with-border">
					  <h4 class="box-title">CPU Load</h4>
					</div>
					<div class="box-body">
						<div>
							<div id="interactive" style="height: 215px;"></div>
						</div>
						<ul class="flexbox flex-justified text-center mt-35">
						  <li class="br-1">
							<div class="font-size-20">Usage</div>
							<small>60GB</small>
						  </li>

						  <li class="br-1">
							<div class="font-size-20">Space</div>
							<small>320 GB</small>
						  </li>

						  <li>
							<div class="font-size-20">CPU</div>
							<small>50%</small>
						  </li>
						</ul>
					</div>
				</div>
			</div>
		  
		  <div class="col-xl-4 col-lg-6">
			  <div class="box">
				<div class="box-header no-border" style="position: absolute;width: 100%;z-index: 9;">
					<ul class="list-inline pull-left">
						<li>
							<a href="#" class="text-white"><i class="fa fa-expand"></i></a>
						</li>
						<li>
							<a href="#" class="text-white"><i class="fa fa-heart-o"></i></a>
						</li>
					</ul>
					<span class="badge badge-dot pull-right badge-danger" data-toggle="tooltip" data-original-title="Label"></span>
                </div>
				<div class="box-body bg-img py-70" style="background-image: url(adminResources/image/5.jpg)" data-overlay="5">
					<blockquote class="blockquote blockquote-inverse no-border no-margin">
					  <p class="font-size-22">Donec vitae leo dignissim sodales.</p>
					  <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
					</blockquote>
				</div>
				<div class="box-body mb-5">
					<h4>volutpat metus commodo.</h4>
					<div class="flexbox">
						<div class="time">Few seconds ago</div>
						<ul class="flexbox">
							<li><a href="#">845 <i class="fa fa-comment-o"></i></a></li>
							<li><a href="#">85K <i class="fa fa-heart-o"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="box-footer p-0">
					<div class="media-list media-list-hover">
						<a href="#" class="media media-single">
							<img class="avatar pull-left mr-10" src="<%=request.getContextPath() %>/adminResources/image/2.jpg" alt="">
							<div>
								<h5 class="mb-0">Stevan Smith</h5>
								<p class="text-fade mb-0">Shared a photo on your wall</p>							
							</div>
						</a>
					</div>
				</div>
			  </div>
          </div>
		  
		  <div class="col-lg-8 col-12">
			<div class="box">
				<div class="box-header with-border">
					<h4 class="box-title">Order Status</h4>
				</div>
				<div class="box-body pt-0">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>Invoice</th>
									<th>User</th>
									<th>Order date</th>
									<th>Amount</th>
									<th class="text-center">Status</th>
									<th class="text-center">Tracking Number</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><a href="javascript:void(0)" class="btn-link"> Order #65845</a></td>
									<td>Johen Doe</td>
									<td><span class="text-muted"><i class="fa fa-clock-o"></i> Jng 26, 2017</span></td>
									<td>$45.00</td>
									<td class="text-center">
										<div class="label label-table label-success">Paid</div>
									</td>
									<td class="text-center">-</td>
								</tr>
								<tr>
									<td><a href="javascript:void(0)" class="btn-link"> Order #95425</a></td>
									<td>Maical Boy</td>
									<td><span class="text-muted"><i class="fa fa-clock-o"></i> Oct 24, 2017</span></td>
									<td>$245.30</td>
									<td class="text-center">
										<div class="label label-table label-info">Shipped</div>
									</td>
									<td class="text-center"><i class="fa fa-truck"></i> ABC85421952</td>
								</tr>
								<tr>
									<td><a href="javascript:void(0)" class="btn-link"> Order #53433</a></td>
									<td>Amanda Roc</td>
									<td><span class="text-muted"><i class="fa fa-clock-o"></i> Oct 24, 2017</span></td>
									<td>$38.00</td>
									<td class="text-center">
										<div class="label label-table label-info">Shipped</div>
									</td>
									<td class="text-center"><i class="fa fa-truck"></i> ABC85421952</td>
								</tr>
								<tr>
									<td><a href="javascript:void(0)" class="btn-link"> Order #8542</a></td>
									<td>Vedaran Doe</td>
									<td><span class="text-muted"><i class="fa fa-clock-o"></i> Oct 15, 2017</span></td>
									<td>$77.99</td>
									<td class="text-center">
										<div class="label label-table label-info">Shipped</div>
									</td>
									<td class="text-center"><i class="fa fa-truck"></i> ABC85421952</td>
								</tr>
								<tr>
									<td><a href="javascript:void(0)" class="btn-link"> Order #7458</a></td>
									<td>Sumakar Jack</td>
									<td><span class="text-muted"><i class="fa fa-clock-o"></i> Oct 12, 2017</span></td>
									<td>$18.00</td>
									<td class="text-center">
										<div class="label label-table label-success">Paid</div>
									</td>
									<td class="text-center">-</td>
								</tr>
								<tr>
									<td><a href="javascript:void(0)" class="btn-link"> Order #84562</a></td>
									<td>Karlos Potar</td>
									<td><span class="text-muted"><i class="fa fa-clock-o"></i> Jng 26, 2017</span></td>
									<td>$45.00</td>
									<td class="text-center">
										<div class="label label-table label-success">Paid</div>
									</td>
									<td class="text-center">-</td>
								</tr>
								<tr>
									<td><a href="javascript:void(0)" class="btn-link"> Order #845121</a></td>
									<td>Jil Clark</td>
									<td><span class="text-muted"><i class="fa fa-clock-o"></i> Oct 24, 2017</span></td>
									<td>$245.30</td>
									<td class="text-center">
										<div class="label label-table label-info">Shipped</div>
									</td>
									<td class="text-center"><i class="fa fa-truck"></i> ABC85421952</td>
								</tr>
								<tr>
									<td><a href="javascript:void(0)" class="btn-link">Order #95487</a></td>
									<td>Brethwth doe</td>
									<td><span class="text-muted"><i class="fa fa-clock-o"></i> Oct 17, 2017</span></td>
									<td>$658.00</td>
									<td class="text-center">
										<div class="label label-table label-danger">Refunded</div>
									</td>
									<td class="text-center">-</td>
								</tr>
								<tr>
									<td><a href="javascript:void(0)" class="btn-link">Order #123548</a></td>
									<td>Mical Doe</td>
									<td><span class="text-muted"><i class="fa fa-clock-o"></i> Oct 19, 2017</span></td>
									<td>$45.58</td>
									<td class="text-center">
										<div class="label label-table label-warning">Unpaid</div>
									</td>
									<td class="text-center">-</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		  </div>
		  
		  <div class="col-lg-4 col-12">
			  <div class="box bg-img box-inverse" style="background-image: url(adminResources/image/4.jpg);" data-overlay="5">			
				<div class="box-body">
				  <div class="p-5">
					  <h3 class="white">
						<span class="font-size-30">City, </span>Country
					  </h3>
					  <p class="weather-day-date mb-30">
						<span class="mr-5">MONDAY</span> May 11, 2017
					  </p>
					  <div class="mb-35 weather-icon">
						<canvas class="mr-40 text-top" id="icon1" width="90" height="90"></canvas>
						<div class="inline-block">
						  <span class="font-size-50">29°
							<span class="font-size-40">C</span>
						  </span>
						  <p class="text-left">DAY RAIN</p>
						</div>
					  </div>
					  <div class="row no-space">
						<div class="col-2">
						  <div>
							<div class="mb-10">TUE</div>
							<i class="wi-day-sunny font-size-30 mb-10"></i>
							<div>24°
							  <span class="font-size-12">C</span>
							</div>
						  </div>
						</div>
						<div class="col-2">
						  <div>
							<div class="mb-10">WED</div>
							<i class="wi-day-cloudy font-size-30 mb-10"></i>
							<div>21°
							  <span class="font-size-12">C</span>
							</div>
						  </div>
						</div>
						<div class="col-2">
						  <div>
							<div class="mb-10">THU</div>
							<i class="wi-day-sunny font-size-30 mb-10"></i>
							<div>25°
							  <span class="font-size-12">C</span>
							</div>
						  </div>
						</div>
						<div class="col-2">
						  <div>
							<div class="mb-10">FRI</div>
							<i class="wi-day-cloudy-gusts font-size-30 mb-10"></i>
							<div>20°
							  <span class="font-size-12">C</span>
							</div>
						  </div>
						</div>
						<div class="col-2">
						  <div>
							<div class="mb-10">SAT</div>
							<i class="wi-day-lightning font-size-30 mb-10"></i>
							<div>18°
							  <span class="font-size-12">C</span>
							</div>
						  </div>
						</div>
						<div class="col-2">
						  <div>
							<div class="mb-10">SUN</div>
							<i class="wi-day-storm-showers font-size-30 mb-10"></i>
							<div>14°
							  <span class="font-size-12">C</span>
							</div>
						  </div>
						</div>
					  </div>
					</div>
				</div>
				<!-- /.box-body -->
			  </div>
			  <!-- /.box --> 
			  <div class="box-group">
				<div class="box">
				  <div class="vertical-align h-160">
					<div class="vertical-align-middle font-size-30 text-center w-p100">
					  <span class="mr-10"><i class="fa fa-line-chart"></i></span>
					  <span class="countnm per">75</span>
					  <div class="font-size-16 mt-3 text-fade">More Profit</div>
					</div>
				  </div>
				</div>
				<div class="box bg-primary">
				  <div class="vertical-align text-center p-30 h-160">
					<div class="vertical-align-middle font-size-30">
					  <p>Today</p>
					  <p>Sale</p>
					</div>
				  </div>
				</div>
			  </div>
		</div>

	  </div> --%>
		
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
	
	<!-- Bootstrap 4.0-->
	<script src="<%=request.getContextPath() %>/adminResources/js/bootstrap.js"></script>	
	
	<!-- Slimscroll -->
	<script src="<%=request.getContextPath() %>/adminResources/js/jquery.slimscroll.js"></script>
	
	<!-- FastClick -->
	<script src="<%=request.getContextPath() %>/adminResources/js/fastclick.js"></script>
	
	<!-- Sparkline -->
	<script src="<%=request.getContextPath() %>/adminResources/js/jquery.sparkline.min.js"></script>
	
	<!-- Morris.js charts -->
	<script src="<%=request.getContextPath() %>/adminResources/js/raphael.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResources/js/morris.min.js"></script>	
	
	<!-- ChartJS -->
	<script src="<%=request.getContextPath() %>/adminResources/js/Chart.bundle.js"></script>
	
	<!-- FLOT CHARTS -->
	<script src="<%=request.getContextPath() %>/adminResources/js/jquery.flot.js"></script>
	
	<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
	<script src="<%=request.getContextPath() %>/adminResources/js/jquery.flot.resize.js"></script>
	
	<!-- weather for demo purposes -->
	<script src="<%=request.getContextPath() %>/adminResources/js/WeatherIcon.js"></script>
	
	<!-- SoftMaterial admin App -->
	<script src="<%=request.getContextPath() %>/adminResources/js/template.js"></script>
	
	<!-- SoftMaterial admin dashboard demo (This is only for demo purposes) -->
	<script src="<%=request.getContextPath() %>/adminResources/js/dashboard.js"></script>
	
	<!-- SoftMaterial admin for demo purposes -->
	<script src="<%=request.getContextPath() %>/adminResources/js/demo.js"></script>
	
	<script src="<%=request.getContextPath() %>/adminResources/js/statistic.js"></script>

	
</body>
</html>
