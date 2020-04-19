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

     <title>View Complaints</title>
  
	<!-- Bootstrap 4.1-->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/bootstrap.min.css">
	
	<!-- Data Table-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/adminResources/css/datatables.min.css"/>
	
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
       Manage Complaints
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i> Home</a></li>
        <li class="breadcrumb-item"><a href="#">Manage Complaints</a></li>
        <li class="breadcrumb-item active"><a href="/farmer/viewComplaint">View Complaints</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">		
        <div class="col-12">         
          <div class="box">
            				
			    
				         
         
            <div class="box-header with-border">
              <h3 class="box-title">View  Complaints</h3>
			  <!-- <div class="box-controls pull-right">
                 <button id="row-count" class="btn btn-xs btn-primary">Row count</button>
              </div> -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
				<div class="table-responsive">
				  <table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Id</th>
							<th>Complaint Date</th>
							<th>Complaint Subject</th>
							<th>Complaint Description</th>
							<th>Response</th>
							<th>Complaint Status</th>
							
							
							<!-- <th>Start date</th>
							<th>Salary</th> -->
						</tr>
					</thead>
					<tbody>
						<%@taglib uri="http://java.sun.com/jstl/core_rt"
															prefix="c"%>
							<c:forEach items="${complaintList}" var="complaint" varStatus="j">
							<tr>
								<td>${j.count}</td>
								<td>${complaint.complaintDate}</td>
								<td>${complaint.complaintSubject}</td>
								<td>${complaint.complaintDescription}</td>
								<td>${complaint.response}</td>
								<td><c:choose>
									   <c:when test="${complaint.complaintStatus =='Pending'}">
									   		<div class="label label-table label-warning">Pending </div>
									   </c:when> 
									   
									   <c:otherwise>
									   		<div class="label label-table label-info">Resolved</div>
									   	</c:otherwise>   
								</c:choose></td>
							</tr>
							
							
							
							</c:forEach>
						
						
						
					</tbody>
					<tfoot>
						<tr>
							<th>Id</th>
							<th>Complaint Date</th>
							<th>Complaint Subject</th>
							<th>Complaint Description</th>
							<th>Response</th>
							<th>Complaint Status</th>
						</tr>
					</tfoot>
				  </table>
				</div>
            </div>
            <!-- /.box-body -->
          </div></div></div>
          <!-- /.box -->
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
	
	<!-- This is data table -->
    <script src="<%=request.getContextPath() %>/adminResources/js/datatables.min.js"></script>
	
	<!-- SoftMaterial admin for Data Table -->
	<script src="<%=request.getContextPath() %>/adminResources/js/data-table.js"></script>
	<script src="<%=request.getContextPath() %>/adminResources/js/project-table.js"></script>
	

</body>
</html>