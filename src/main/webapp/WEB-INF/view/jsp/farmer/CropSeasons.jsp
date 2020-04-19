<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon"
	href="<%=request.getContextPath() %>/adminResources/image/favicon.ico">

<title>Crop Seasons</title>
<!-- Bootstrap 4.1-->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/adminResources/css/bootstrap.min.css">

<!-- Data Table-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/adminResources/css/datatables.min.css" />

<!-- Bootstrap extend-->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/adminResources/css/bootstrap-extend.css">

<!-- Bootstrap switch-->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/adminResources/css/switch.css">

<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/adminResources/css/master_style.css">

<!-- SoftMaterial admin skins -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/adminResources/css/_all-skins.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
<!-- 		
<script type="text/javascript">
	
	
window.onload = function(){
		var year="${priceVO.getYear()}";
		var district="${priceVO.getDistrict()}";
		var variety="${priceVO.getVariety()}";
		$.ajax({
			url:'http://127.0.0.1:5000/?Year='+year+'&District='+district+'&Variety='+variety,
			type:"GET",
			 success:function(response)
			{	
				//document.write(response);
				 document.getElementById("price1").innerHTML=response[0];
				 document.getElementById("price2").innerHTML=response[1];
				 document.getElementById("price3").innerHTML=response[2];
				// p.innerHTML=response;
				//onsuccess(response);
			}
			/* error:function(){
				onerror();
			} 
		 */
		});
	}
	/* function onsuccess(response){
		var id="${videoVO.getId()}"
		$.ajax({
			
			url:"/client/predictprices?id="+id+"&link="+response
		});
	} */
	

</script> -->
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
				<h1>Seasons </h1>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/"><i
							class="fa fa-dashboard"></i> Home</a></li>
					<!-- <li class="breadcrumb-item"><a href="#"> Future Prices Of
							Crops</a></li>
					<li class="breadcrumb-item active"><a href="/farmer/Price">
							Future Prices</a></li> -->
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">

				<!-- Basic Forms -->
				<div class="box">
					<!--  <div class="box-header with-border">
          <h6 class="box-subtitle">Bootstrap Form Validation check the <a class="text-warning" href="http://reactiveraven.github.io/jqBootstrapValidation/">official website </a></h6>
			
			<ul class="box-controls pull-right">
			  
			  <li><a class="box-btn-slide" href="#"></a></li>	
			  <li><a class="box-btn-fullscreen" href="#"></a></li>
			</ul>
        </div> -->

					
					<!-- /.box-header -->
					
							
								
						
		
		  <!--Pale background color!-->
		  <!-- <div class="col">
			  <h3 class="page-header">Pale Background Color
			  	
			  </h3>
		  </div>
		 --> 
		 <div class="box-header with-border">
            <h3 class="box-title"> Select Season </h3>
            <div class="box-controls pull-right">
              <!-- <button id="row-count" class="btn btn-xs btn-primary">Row
                          count</button> -->
            </div>
          </div>
          <form novalidate="novalidate" action="/seasons">
		 <div class="box-body">
<div class="row">
         <div class="col-sm-4">
                  <div class="form-group" style="margin-bottom: 3.429rem;">

            <div class="box bg-pale-info">
              <div class="box-header">
                <h4 class="box-title"><strong>RABI</strong></h4>
                <div class="box-tools pull-right">					
					<ul class="box-controls">
					  
					</ul>
				</div>
              </div>

              <div class="box-body" style="color: black;">
               Rabi crops or rabi harvest are agricultural crops that are sown in winter and harvested in the spring.
               The rabi crops are sown around mid-November and harvesting begins in April / May.
               <br><br><b>Maize,Wheat,Onion</b>
              </div>
            </div>
          </div>
          </div>

           <div class="col-sm-4">
                  <div class="form-group" style="margin-bottom: 3.429rem;">

            <div class="box bg-pale-warning">
              <div class="box-header">
                <h4 class="box-title"><strong>KHARIF</strong></h4>
                <div class="box-tools pull-right">					
					<ul class="box-controls">
					  
					</ul>
				</div>
              </div>

              <div class="box-body" style="color: black;">
              Kharif crops, monsoon crops or autumn crops are domesticated plants like rice that are cultivated and harvested in 
              India which lasts from June to November. Season is popularly considered to start in June and to end in October.
              <br><br><b>Cotton, Ground-Nut,Castor</b>
              </div>
            </div>
          </div>
          </div>
			
		   <div class="col-sm-4">
		   
                  <div class="form-group" style="margin-bottom: 3.429rem;" > <!-- onclick="location.href='/seasons?name='summer'';" style="cursor:pointer;" -->

            <div class="box bg-pale-danger">
              <div class="box-header">
               <h4 class="box-title"><strong>Summer(ZAID)</strong></h4>
                <div class="box-tools pull-right">					
					<ul class="box-controls">
					  
					</ul>
				</div>
              </div>

              <div class="box-body" style="color: black;">
                Summer(Zaid) crops are summer season crops grown on the sub-continent on dry lands which do not have to wait for monsoons. 
                They grow in the long duration between Rabi and Kharif crop season, mainly from March to June.
                <br><br><b>Rice, Ladis-Finger, Dry-Chillies</b>
              </div>
            </div>  
          </div>
          </div>
        
		
		</div>
		
		
<div class="row">
         <div class="col-sm-4">
                  <div class="form-group" style="margin-bottom: 3.429rem;">
                  <input type="hidden" name="season"  value="rabi">
                  <div class="col-sm-4">
										<a href="/seasons?season=rabi"><button type="button" class="btn btn-info">Crops With Prices</button></a>
				  </div>
				</div>
		</div>
		 <div class="col-sm-4">
                  <div class="form-group" style="margin-bottom: 3.429rem;">
                  <input type="hidden" name="season" value="kharif">
                  <div class="col-sm-4">
									<a href="/seasons?season=kharif">	<button type="button" class="btn btn-warning">Crops With Prices</button></a>
				  </div>
				</div>
		</div>
		 <div class="col-sm-4">
                  <div class="form-group" style="margin-bottom: 3.429rem;">
                  <input type="hidden" name="season"  value="summer">
                  <div class="col-sm-4">
									<a href="/seasons?season=summer">	<button type="button" class="btn btn-danger">Crops With Prices</button></a>
				  </div>
				</div>
		</div>
</div>
		
		</div>
							<!-- /.col -->
						<!-- </div> -->
						<!-- /.row -->
						</form>
					</div>
						
					<!-- /.box-body -->
			
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
				<li class="nav-item"><a href="#control-sidebar-home-tab"
					data-toggle="tab"><i class="fa fa-home"></i></a></li>
				<li class="nav-item"><a href="#control-sidebar-settings-tab"
					data-toggle="tab"><i class="fa fa-cog fa-spin"></i></a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Home tab content -->
				<div class="tab-pane" id="control-sidebar-home-tab">
					<h3 class="control-sidebar-heading">Recent Activity</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-birthday-cake bg-danger"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Admin Birthday</h4>

									<p>Will be July 24th</p>
								</div>
						</a></li>
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-user bg-warning"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Jhone Updated His
										Profile</h4>

									<p>New Email : jhone_doe@demo.com</p>
								</div>
						</a></li>
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-envelope-o bg-info"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Disha Joined
										Mailing List</h4>

									<p>disha@demo.com</p>
								</div>
						</a></li>
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-file-code-o bg-success"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Code Change</h4>

									<p>Execution time 15 Days</p>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

					<h3 class="control-sidebar-heading">Tasks Progress</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Web Design <span class="label label-danger pull-right">40%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-danger"
										style="width: 40%"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Update Data <span class="label label-success pull-right">75%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-success"
										style="width: 75%"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Order Process <span class="label label-warning pull-right">89%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-warning"
										style="width: 89%"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Development <span class="label label-primary pull-right">72%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-primary"
										style="width: 72%"></div>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

				</div>
				<!-- /.tab-pane -->
				<!-- Stats tab content -->
				<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
					Content</div>
				<!-- /.tab-pane -->
				<!-- Settings tab content -->
				<div class="tab-pane" id="control-sidebar-settings-tab">
					<form method="post">
						<h3 class="control-sidebar-heading">General Settings</h3>

						<div class="form-group">
							<input type="checkbox" id="report_panel" class="chk-col-grey">
							<label for="report_panel" class="control-sidebar-subheading ">Report
								panel usage</label>

							<p>general settings information</p>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<input type="checkbox" id="allow_mail" class="chk-col-grey">
							<label for="allow_mail" class="control-sidebar-subheading ">Mail
								redirect</label>

							<p>Other sets of options are available</p>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<input type="checkbox" id="expose_author" class="chk-col-grey">
							<label for="expose_author" class="control-sidebar-subheading ">Expose
								author name</label>

							<p>Allow the user to show his name in blog posts</p>
						</div>
						<!-- /.form-group -->

						<h3 class="control-sidebar-heading">Chat Settings</h3>

						<div class="form-group">
							<input type="checkbox" id="show_me_online" class="chk-col-grey">
							<label for="show_me_online" class="control-sidebar-subheading ">Show
								me as online</label>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<input type="checkbox" id="off_notifications"
								class="chk-col-grey"> <label for="off_notifications"
								class="control-sidebar-subheading ">Turn off
								notifications</label>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label class="control-sidebar-subheading"> <a
								href="javascript:void(0)" class="text-red margin-r-5"><i
									class="fa fa-trash-o"></i></a> Delete chat history
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
	<script
		src="<%=request.getContextPath() %>/adminResources/js/jquery-3.3.1.js"></script>

	<!-- popper -->
	<script
		src="<%=request.getContextPath() %>/adminResources/js/popper.min.js"></script>

	<!-- Bootstrap 4.1-->
	<script
		src="<%=request.getContextPath() %>/adminResources/js/bootstrap.min.js"></script>

	<!-- SlimScroll -->
	<script
		src="<%=request.getContextPath() %>/adminResources/js/jquery.slimscroll.min.js"></script>

	<!-- FastClick -->
	<script
		src="<%=request.getContextPath() %>/adminResources/js/fastclick.js"></script>

	<!-- SoftMaterial admin App -->
	<script
		src="<%=request.getContextPath() %>/adminResources/js/template.js"></script>

	<!-- SoftMaterial admin for demo purposes -->
	<script src="<%=request.getContextPath() %>/adminResources/js/demo.js"></script>

	<!-- Form validator JavaScript -->
	<script
		src="<%=request.getContextPath() %>/adminResources/js/validation.js"></script>


		
	<script
		src="<%=request.getContextPath() %>/adminResources/js/form-validation.js"></script>
</body>

</html>