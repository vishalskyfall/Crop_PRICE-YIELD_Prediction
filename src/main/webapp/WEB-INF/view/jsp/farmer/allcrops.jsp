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

<title>Crops</title>
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

<style type="text/css">
.container:hover {
  opacity: 0.5;
}

.container:hover .text {
	opacity: 1;
	 background-color: #666EE8;
	color: black;
}

.text {
 transition: .5s ease;
  color: white;
  font-size: 16px;
}
</style>
		
<script type="text/javascript">
	
	
window.onload = function(){
		/* var year="${priceVO.getYear()}";
		var district="${priceVO.getDistrict()}";
		var variety="${priceVO.getVariety()}"; */
		var a=document.getElementById("rabi");
		var b=document.getElementById("kharif");
		var c=document.getElementById("summer");
		 a.style.display='none';
		 b.style.display='none';
		 c.style.display='none';
		var season="${priceVO.getSeason()}";
		
		if(season == "rabi")
			{
			 a.style.display='';
			 b.style.display='none';
			 c.style.display='none';
			}
		else if(season =="kharif")
			{
			b.style.display='';
			 a.style.display='none';
			 c.style.display='none';
			}
		else if(season =="summer")
			{
			c.style.display='';
			 a.style.display='none';
			 b.style.display='none';
			}
		
		
		
		/* $.ajax({
			url:'http://127.0.0.1:5000/?Year='+2019+'&District='+0+'&Variety='+1+'&crop='+season,
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
		 });
			*/
		 
	}
	/* function onsuccess(response){
		var id="${videoVO.getId()}"
		$.ajax({
			
			url:"/client/predictprices?id="+id+"&link="+response
		});
	} */
	

</script>
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
				<h1>Crops </h1>
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
            <h3 class="box-title"> Initial Future Prices Click For More... </h3>
            <div class="box-controls pull-right">
              <!-- <button id="row-count" class="btn btn-xs btn-primary">Row
                          count</button> -->
            </div>
          </div>
          <form novalidate="novalidate" action="/predictprices">
		 <div class="box-body">
<div class="row" id="rabi">
         <div class="col-sm-4">
                  <div class="form-group" style="margin-bottom: 3.429rem;">
			<div class="container">
            <div class="box bg-pale-info"style="background-image:linear-gradient(rgba(255,255,255,0.35), rgba(255,255,255,0.35)),url(<%=request.getContextPath() %>/adminResources/image/maize2.jpg); " >
              <div class="box-header" >
                <h4 class="box-title" style="color: white;"><strong>MAIZE</strong></h4>
                <div class="box-tools pull-right">					
					<ul class="box-controls">
					  
					</ul>
				</div>
              </div>
	<%-- <img src="<%=request.getContextPath() %>/adminResources/image/maize.jpg" alt=""> --%>
              <div class="box-body " style="color: white;"  >
              <div class="text">
              <b> Maize or Indian corn  is an annual plant culti­vated for the grains during the rainy season. It forms a staple food in some parts of India. Roots are of fibrous adventitious type.</b>
              </div>
              </div>
            </div>
            </div>
          </div>
          </div>

           <div class="col-sm-4">
                  <div class="form-group" style="margin-bottom: 3.429rem;">
		<div class="container">
            <div class="box bg-pale-warning"style="background-image:linear-gradient(rgba(255,255,255,0.35), rgba(255,255,255,0.35)),url(<%=request.getContextPath() %>/adminResources/image/wheat2.jpg); " >
              <div class="box-header">
                <h4 class="box-title" ><strong>WHEAT</strong></h4>
                <div class="box-tools pull-right">					
					<ul class="box-controls">
					  
					</ul>
				</div>
              </div>

               <div class="box-body" style="color:black;">
                <div class="text">
           <b>   Wheat is mainly a rabi (winter) season crop in India. Wheat is grown in a variety of soils of India. Soils with a clay loam or loam texture, good structure and moderate water holding capacity are ideal for wheat cultivation.
           </b></div>
           </div>
            </div>
            </div>
          </div>
          </div>
			
		   <div class="col-sm-4">
                  <div class="form-group" style="margin-bottom: 3.429rem;">
<div class="container">
           <div class="box bg-pale-danger"style="background-image:linear-gradient(rgba(255,255,255,0.35), rgba(255,255,255,0.35)),url(<%=request.getContextPath() %>/adminResources/image/onion2.jpg); " >
              <div class="box-header">
               <h4 class="box-title" style="color: white;"><strong>ONION</strong></h4>
                <div class="box-tools pull-right">					
					<ul class="box-controls">
					  
					</ul>
				</div>
              </div>

              <div class="box-body"> <div class="text">
              <b> India is the second largest onion growing country in the world. Indian onions are famous for their pungency and are available round the year. Indian onions has two crop cycles, first harvesting starts in November to January and the second harvesting from January to May.
              </b>
              </div>
              </div>
              </div>
            </div>  
          </div>
          </div>
         
          
          <div class="box-body">
					<div class="row">
								<div class="col-sm-4" >
								<a href="loadMaize"><label class="badge badge-xl badge-primary">Click for more...</label></a>
								</div>
								<div class="col-sm-4" >
								<a href="/loadWheat"><label class="badge badge-xl badge-primary">Click for more...</label></a>
								</div>
								<div class="col-sm-4" >
								<a href="/loadOnion"><label class="badge badge-xl badge-primary">Click for more...</label></a>
								</div>
								
						</div>
						<!-- <div class="row">
								<div class="col-sm-4 " >
								<span class="badge badge-xl badge-warning" id="price1"></span>
								</div>
								<div class="col-sm-4" >
								<span class="badge badge-xl badge-warning" id="price2"></span>
								</div>
								<div class="col-sm-4" >
								<span class="badge badge-xl badge-warning" id="price3"></span>
								</div>
								
						</div> -->
					</div>
           </div>
          <div class="row" id="kharif">
          	   <div class="col-sm-4" onclick="location.href='/predictprices';" style="cursor:pointer;">
                  <div class="form-group" style="margin-bottom: 3.429rem;">
<div class="container">
           <div class="box bg-pale-info"style="background-image:linear-gradient(rgba(255,255,255,0.35), rgba(255,255,255,0.35)),url(<%=request.getContextPath() %>/adminResources/image/cotton2.jpg); " >
              <div class="box-header">
               <h4 class="box-title"style="color: white;"><strong>COTTON</strong></h4>
                <div class="box-tools pull-right">					
					<ul class="box-controls">
					  
					</ul>
				</div>
              </div>

              <div class="box-body" >
              <div class="text">
              <b> Cotton is the most important fibre crop not only of India but of the entire world. It provides the basic raw material (cotton fibre) to cotton textile industry.
               Here the rainfall occurs after September and cotton is sown in October. The irrigated crop is sown in January-February.
               </b></div>
               </div>
            </div>  
            </div>
          </div>
          </div>
          	   <div class="col-sm-4">
                  <div class="form-group" style="margin-bottom: 3.429rem;">
<div class="container">
             <div class="box bg-pale-warning"style="background-image:linear-gradient(rgba(255,255,255,0.35), rgba(255,255,255,0.35)),url(<%=request.getContextPath() %>/adminResources/image/groundnut.jpg); " >
              <div class="box-header">
               <h4 class="box-title"style="color: white;"><strong>GROUND-NUT</strong></h4>
                <div class="box-tools pull-right">					
					<ul class="box-controls">
					  
					</ul>
				</div>
              </div>

              <div class="box-body"> 
               <div class="text">
            <b>
               Groundnut is the major oil seed crop in India and it plays a major role in bridging the vegetable 
               oil deficit in the country. Groundnuts in India are available throughout the year due to a two-crop 
               cycle harvested in March and October.Ground Nuts are important protein crops in India grown mostly under 
               rain-fed conditions.</b></div></div>
            </div>  
            </div>
          </div>
          </div>
          	   <div class="col-sm-4">
                  <div class="form-group" style="margin-bottom: 3.429rem;">
<div class="container">
            <div class="box bg-pale-danger"style="background-image:linear-gradient(rgba(255,255,255,0.35), rgba(255,255,255,0.35)),url(<%=request.getContextPath() %>/adminResources/image/castor2.jpg); " >
              <div class="box-header">
               <h4 class="box-title" style="color: white;"><strong>CASTOR</strong></h4>
                <div class="box-tools pull-right">					
					<ul class="box-controls">
					  
					</ul>
				</div>
              </div>

              <div class="box-body" > <div class="text">
                Castor is a perennial crop but is grown as an annual for economic purpose. 
                The crop duration is 4-5 months. In India, it is sown in July/August and
                 harvesting commences around December /January.</div>
            </div></div>
            </div>  
          </div>
          </div>
          <div class="box-body">
						<div class="row">
								<div class="col-sm-4" >
								<a href="/loadCotton"><label class="badge badge-xl badge-primary">Click for more...</label></a>
								</div>
								<div class="col-sm-4" >
								<a href="/loadGroundNut"><label class="badge badge-xl badge-primary">Click for more...</label></a>
								</div>
								<div class="col-sm-4" >
								<a href="/loadBajara"><label class="badge badge-xl badge-primary">Click for more...</label></a>
								</div>
								
						</div>
						<!-- <div class="row">
								<div class="col-sm-4 " >
								<span class="badge badge-xl badge-warning" id="price1"></span>
								</div>
								<div class="col-sm-4" >
								<span class="badge badge-xl badge-warning" id="price2"></span>
								</div>
								<div class="col-sm-4" >
								<span class="badge badge-xl badge-warning" id="price3"></span>
								</div>
								
						</div> -->
					</div>
          </div>
          <div class="row" id="summer">
          	   <div class="col-sm-4" >
                  <div class="form-group" style="margin-bottom: 3.429rem;">
<div class="container">
             <div class="box bg-pale-info"style="background-image:linear-gradient(rgba(255,255,255,0.35), rgba(255,255,255,0.35)),url(<%=request.getContextPath() %>/adminResources/image/rice2.jpg); " >
              <div class="box-header">
               <h4 class="box-title"style="color: white;"><strong>RICE</strong></h4>
                <div class="box-tools pull-right">					
					<ul class="box-controls">
					  
					</ul>
				</div>
              </div>

               <div class="box-body" style="color:white;"> <div class="text">
               <b>Rice is one of the chief grains of India. Moreover, this country has the 
               largest area under rice cultivation, as it is one of the principal food crops. 
                Rice is mainly grown in rain fed areas that receive heavy annual rainfall. 
                </b>
               </div></div>
            </div> 
            </div> 
          </div>
          </div>
          	   <div class="col-sm-4" >
                  <div class="form-group" style="margin-bottom: 3.429rem;">
<div class="container">
             <div class="box bg-pale-warning"style="background-image:linear-gradient(rgba(255,255,255,0.35), rgba(255,255,255,0.35)),url(<%=request.getContextPath() %>/adminResources/image/ladisfinger.jpg); " >
              <div class="box-header">
               <h4 class="box-title"><strong>Ladis Finger</strong></h4>
                <div class="box-tools pull-right">					
					<ul class="box-controls">
					  
					</ul>
				</div>
              </div>

              <div class="box-body" style="color: black;"> <div class="text">
             <b>  Ladies finger is a very popular vegetable grown in India. Commonly known as Bhindi, it thrives well in summer.
               Though summer is the best season to grow ladies finger, it makes a good winter crop too. 
               If the temperature drops below 15 degrees during the night, the entire crop can be prone to cold injury.
               </b>
               </div></div>
            </div>  
            </div>
          </div>
          </div>
          	   <div class="col-sm-4" >
                  <div class="form-group" style="margin-bottom: 3.429rem;">
<div class="container">
            <div class="box bg-pale-danger"style="background-image:linear-gradient(rgba(255,255,255,0.35), rgba(255,255,255,0.35)),url(<%=request.getContextPath() %>/adminResources/image/drychillies.jpg); " >
              <div class="box-header">
               <h4 class="box-title" style="color: white;"><strong>Dry_Chillies</strong></h4>
                <div class="box-tools pull-right">					
					<ul class="box-controls">
					  
					</ul>
				</div>
              </div>

              <div class="box-body" style="color: white;"> <div class="text">
           <b>  Chilli is considered as one of the most important commercial spice crops and is widely
used universal spice, named as wonder spice. Different varieties are cultivated for varied
uses like vegetable, pickles, spice and condiments.
Chilli sowing in India starts in the month of July and continues till August-September.</b>
 </div></div>
            </div>
            </div>  
          </div>
          </div>
          <div class="box-body">
						<div class="row">
								<div class="col-sm-4" >
								<a href="/loadRice"><label class="badge badge-xl badge-primary">Click for more...</label></a>
								</div>
								<div class="col-sm-4" >
								<a href="/loadLadyF"><label class="badge badge-xl badge-primary">Click for more...</label></a>
								</div>
								<div class="col-sm-4" >
								<a href="/loadDryChillies"><label class="badge badge-xl badge-primary">Click for more...</label></a>
								</div>
								
						</div>
						<!-- <div class="row">
								<div class="col-sm-4 " >
								<span class="badge badge-xl badge-warning" id="price1"></span>
								</div>
								<div class="col-sm-4" >
								<span class="badge badge-xl badge-warning" id="price2"></span>
								</div>
								<div class="col-sm-4" >
								<span class="badge badge-xl badge-warning" id="price3"></span>
								</div>
								
						</div> -->
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