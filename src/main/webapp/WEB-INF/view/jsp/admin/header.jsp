 <%@page import="com.cropPrediction.utils.*"%>
 <header class="main-header" >
    <!-- Logo -->
    <a href="#" class="logo" style="background-color: #FFFFFF">
      <!-- mini logo -->
	 <%--  <b class="logo-mini">
		  <span class="light-logo"><img src="<%=request.getContextPath() %>/adminResources/image/logo.png" alt="logo"></span>
		  <span class="dark-logo"><img src="<%=request.getContextPath() %>/adminResources/image/logo.png" alt="logo"></span>
	  </b> --%>
      <!-- logo-->
      <span class="logo-lg">
		  <img src="<%=request.getContextPath() %>/adminResources/image/logo.png" alt="logo" class="light-logo">
	  	 <%--  <img src="<%=request.getContextPath() %>/adminResources/image/logo-dark-text.png" alt="logo" class="dark-logo"> --%>
	  </span>
    </a>
    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" style="background-color:#FFFFFF">
	  	
      <!-- Sidebar toggle button-->
		  
		
     <%--  <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
		  
			  <!-- User Account-->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="<%=request.getContextPath() %>/adminResources/image/user5-128x128.jpg" class="user-image rounded-circle" alt="User Image">
            </a>
            <ul class="dropdown-menu scale-up">

              <li class="user-header">
                <img src="<%=request.getContextPath() %>/adminResources/image/user5-128x128.jpg" class="float-left rounded-circle" alt="User Image">

                <p>
                  <%=BaseMethod.getUser() %>
                  <small class="mb-5"></small>
                  <a href="#" class="btn btn-danger btn-sm btn-rounded">View Profile</a>
                </p>
              </li>
             
              <li class="user-body">
                <div class="row no-gutters">
                  <div class="col-12 text-left">
                    <a href="#"><i class="ion ion-person"></i> My Profile</a>
                  </div>
                <!--   <div class="col-12 text-left">
                    <a href="#"><i class="ion ion-email-unread"></i> Inbox</a>
                  </div>
                  <div class="col-12 text-left">
                    <a href="#"><i class="ion ion-settings"></i> Setting</a>
                  </div>
				<div role="separator" class="divider col-12"></div>
				  <div class="col-12 text-left">
                    <a href="#"><i class="ti-settings"></i> Account Setting</a>
                  </div> -->
				<div role="separator" class="divider col-12"></div>
				  <div class="col-12 text-left">
                    <a href="/logout"><i class="fa fa-power-off"></i> Logout</a>
                  </div>				
                </div>
               <!--  /.row -->
              </li>
            </ul>
          </li>
         <!--  Control Sidebar Toggle Button 
         <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-cog fa-spin"></i></a>
          </li>-->
        </ul>
      </div> --%>
    </nav>
  </header>