 <%@page import="com.cropPrediction.utils.*"%>
<aside class="main-sidebar">
    <!-- sidebar-->
    <section class="sidebar">
      
      <!-- sidebar menu-->
      <ul class="sidebar-menu" data-widget="tree">
         <li class="user-profile treeview" >
          <a href="#">
			<img src="/adminResources/image/user5-128x128.jpg" alt="user">
            <span style="color: #33282F"><%=BaseMethod.getUser() %></span>
            
            <span style="color: #33282F" class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
		  <ul class="treeview-menu">
            <li><a href="javascript:void()"><i class="fa fa-user mr-5"></i>My Profile </a></li>
			<!-- <li><a href="javascript:void()"><i class="fa fa-money mr-5"></i>My Balance</a></li>
			<li><a href="javascript:void()"><i class="fa fa-envelope-open mr-5"></i>Inbox</a></li>
			<li><a href="javascript:void()"><i class="fa fa-cog mr-5"></i>Account Setting</a></li>
			 --><li><a href="/logout"><i class="fa fa-power-off mr-5"></i>Logout</a></li>
          </ul>
        </li>
        <!-- <li class="header nav-small-cap">Admin Panel</li>(Personal) -->
        <li class="active">
          <a href="/">
            <i class="fa fa-home"></i> <span>Dashboard</span>
            <span class="pull-right-container">
             <!--  <i class="fa fa-angle-right pull-right"></i> -->
            </span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-globe"></i>
            <span>Manage Country</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/admin/loadCountry"><i class="fa fa-circle-thin"></i>Add Country</a></li>
            <li><a href="/admin/viewCountry"><i class="fa fa-circle-thin"></i>View Country</a></li>
            <!-- <li><a href="pages/app/app-ticket.html"><i class="fa fa-circle-thin"></i>Support Ticket</a></li>
			<li><a href="pages/app/calendar.html"><i class="fa fa-circle-thin"></i>Calendar</a></li>
            <li><a href="pages/app/profile.html"><i class="fa fa-circle-thin"></i>Profile</a></li>
            <li><a href="pages/app/userlist-grid.html"><i class="fa fa-circle-thin"></i>Userlist Grid</a></li>
			<li><a href="pages/app/userlist.html"><i class="fa fa-circle-thin"></i>Userlist</a></li> -->
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-flag"></i> <span>Manage State</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/admin/loadState"><i class="fa fa-circle-thin"></i>Add State</a></li>
            <li><a href="/admin/viewState"><i class="fa fa-circle-thin"></i>View State</a></li>
            <!-- <li><a href="pages/mailbox/read-mail.html"><i class="fa fa-circle-thin"></i>Read</a></li> -->
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-flag-o"></i>
            <span>Manage District</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/admin/loadDistrict"><i class="fa fa-circle-thin"></i>Add District</a></li>
            <li><a href="/admin/viewDistrict"><i class="fa fa-circle-thin"></i>View District</a></li>
           <!--  <li><a href="pages/UI/buttons.html"><i class="fa fa-circle-thin"></i>Buttons</a></li>			
            <li><a href="pages/UI/bootstrap-switch.html"><i class="fa fa-circle-thin"></i>Bootstrap Switch</a></li>
            <li><a href="pages/UI/cards.html"><i class="fa fa-circle-thin"></i>User Card</a></li>
            <li><a href="pages/UI/color-utilities.html"><i class="fa fa-circle-thin"></i>Color</a></li>
            <li><a href="pages/UI/date-paginator.html"><i class="fa fa-circle-thin"></i>Date Paginator</a></li>
            <li><a href="pages/UI/dropdown.html"><i class="fa fa-circle-thin"></i>Dropdown</a></li>
            <li><a href="pages/UI/dropdown-grid.html"><i class="fa fa-circle-thin"></i>Dropdown Grid</a></li>
            <li><a href="pages/UI/general.html"><i class="fa fa-circle-thin"></i>General</a></li>
            <li><a href="pages/UI/icons.html"><i class="fa fa-circle-thin"></i>Icons</a></li>
            <li><a href="pages/UI/media-advanced.html"><i class="fa fa-circle-thin"></i>Advanced Medias</a></li>
			<li><a href="pages/UI/modals.html"><i class="fa fa-circle-thin"></i>Modals</a></li>
			<li><a href="pages/UI/nestable.html"><i class="fa fa-circle-thin"></i>Nestable</a></li>
            <li><a href="pages/UI/notification.html"><i class="fa fa-circle-thin"></i>Notification</a></li>
            <li><a href="pages/UI/portlet-draggable.html"><i class="fa fa-circle-thin"></i>Draggable Portlets</a></li>
            <li><a href="pages/UI/ribbons.html"><i class="fa fa-circle-thin"></i>Ribbons</a></li>
            <li><a href="pages/UI/sliders.html"><i class="fa fa-circle-thin"></i>Sliders</a></li>
            <li><a href="pages/UI/sweatalert.html"><i class="fa fa-circle-thin"></i>Sweet Alert</a></li>
            <li><a href="pages/UI/tab.html"><i class="fa fa-circle-thin"></i>Tabs</a></li>
            <li><a href="pages/UI/timeline.html"><i class="fa fa-circle-thin"></i>Timeline</a></li>
            <li><a href="pages/UI/timeline-horizontal.html"><i class="fa fa-circle-thin"></i>Horizontal Timeline</a></li> -->
          </ul>
        </li>
       <!--  <li class="header nav-small-cap">FORMS, TABLE & LAYOUTS</li> -->
		<li class="treeview">
          <a href="#">
            <i class="fa fa-home"></i>
            <span>Manage Village</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/admin/loadVillage"><i class="fa fa-circle-thin"></i>Add Village</a></li>
            <li><a href="/admin/viewVillage"><i class="fa fa-circle-thin"></i>View Village</a></li>
           <!--  <li><a href="pages/widgets/list.html"><i class="fa fa-circle-thin"></i>List</a></li>
            <li><a href="pages/widgets/social.html"><i class="fa fa-circle-thin"></i>Social</a></li>
            <li><a href="pages/widgets/statistic.html"><i class="fa fa-circle-thin"></i>Statistic</a></li>
            <li><a href="pages/widgets/weather.html"><i class="fa fa-circle-thin"></i>Weather</a></li>
            <li><a href="pages/widgets/widgets.html"><i class="fa fa-circle-thin"></i>Widgets</a></li> -->
          </ul>
        </li>
          <!-- <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Manage Dataset</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/admin/loadDataset"><i class="fa fa-circle-thin"></i>Add Dataset</a></li>
            <li><a href="/admin/viewDataset"><i class="fa fa-circle-thin"></i>View Dataset</a></li>
            <li><a href="pages/forms/editor-markdown.html"><i class="fa fa-circle-thin"></i>Markdown</a></li>
            <li><a href="pages/forms/editors.html"><i class="fa fa-circle-thin"></i>Editors</a></li>
            <li><a href="pages/forms/form-validation.html"><i class="fa fa-circle-thin"></i>Form Validation</a></li>
            <li><a href="pages/forms/form-wizard.html"><i class="fa fa-circle-thin"></i>Form Wizard</a></li>
            <li><a href="pages/forms/general.html"><i class="fa fa-circle-thin"></i>General Elements</a></li>
            <li><a href="pages/forms/mask.html"><i class="fa fa-circle-thin"></i>Formatter</a></li>
            <li><a href="pages/forms/xeditable.html"><i class="fa fa-circle-thin"></i>Xeditable Editor</a></li>
          </ul>
        </li> -->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-users"></i>
            <span>Manage Farmers</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <!-- <li><a href="pages/layout/boxed.html"><i class="fa fa-circle-thin"></i>Add Farmers</a></li> -->
            <li><a href="/admin/viewFarmer"><i class="fa fa-circle-thin"></i>View Farmers</a></li>
          <!--   <li><a href="pages/layout/collapsed-sidebar.html"><i class="fa fa-circle-thin"></i>Collapsed Sidebar</a></li> -->
          </ul>
        </li>		
		<!-- <li class="treeview">
          <a href="#">
            <i class="fa fa-tree"></i>
            <span>Manage Crops</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/admin/loadCrop"><i class="fa fa-circle-thin"></i>Add Crop</a></li>
            <li><a href="/admin/viewCrop"><i class="fa fa-circle-thin"></i>View Crops</a></li>
            <li><a href="pages/box/color.html"><i class="fa fa-circle-thin"></i>Color</a></li>
			<li><a href="pages/box/group.html"><i class="fa fa-circle-thin"></i>Group</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="	fa fa-file-photo-o"></i>
            <span>Manage Photos</span>(Satellite part)
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/charts/chartjs.html"><i class="fa fa-circle-thin"></i>Add Photos</a></li>
            <li><a href="pages/charts/flot.html"><i class="fa fa-circle-thin"></i>View Photos</a></li>
            <li><a href="pages/charts/inline.html"><i class="fa fa-circle-thin"></i>Inline charts</a></li>
            <li><a href="pages/charts/morris.html"><i class="fa fa-circle-thin"></i>Morris</a></li>
            <li><a href="pages/charts/peity.html"><i class="fa fa-circle-thin"></i>Peity</a></li>
          </ul>
        </li>
       -->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-table"></i> <span>Manage Complaint</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/admin/viewComplaint"><i class="fa fa-circle-thin"></i>View Complaint</a></li>
            <!-- <li><a href="pages/tables/data.html"><i class="fa fa-circle-thin"></i>Data tables</a></li>
            <li><a href="pages/tables/editable-tables.html"><i class="fa fa-circle-thin"></i>Editable Tables</a></li>
            <li><a href="pages/tables/table-color.html"><i class="fa fa-circle-thin"></i>Table Color</a></li> -->
          </ul>
        </li>
		<!-- <li>
          <a href="pages/email/index.html">
            <i class="fa fa-envelope-open-o"></i> <span>Emails</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
        </li>
		<li class="header nav-small-cap">EXTRA COMPONENTS</li> -->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-comments"></i> <span>Manage Feedback</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/admin/viewFeedback"><i class="fa fa-circle-thin"></i>View Feedback</a></li>
           <!--  <li><a href="pages/map/map-vector.html"><i class="fa fa-circle-thin"></i>Vector Map</a></li> -->
          </ul>
        </li>
			
			
			 <li class="treeview">
          <a href="#">
            <i class="fa fa-power-off"></i> <span>LOGOUT</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/logout"><i class="fa  fa-power-off"></i>Logout</a></li>
         </ul>
        </li>
			
			<!-- <li class="treeview">
          <a href="#">
            <i class="fa fa-plug"></i> <span>Extension</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/extension/fullscreen.html"><i class="fa fa-circle-thin"></i>Fullscreen</a></li>
          </ul>
        </li>        
		<li class="treeview">
          <a href="#">
            <i class="fa fa-file"></i> <span>Sample Pages</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/samplepage/blank.html"><i class="fa fa-circle-thin"></i>Blank</a></li>
            <li><a href="pages/samplepage/coming-soon.html"><i class="fa fa-circle-thin"></i>Coming Soon</a></li>
            <li><a href="pages/samplepage/custom-scroll.html"><i class="fa fa-circle-thin"></i>Custom Scrolls</a></li>
			<li><a href="pages/samplepage/faq.html"><i class="fa fa-circle-thin"></i>FAQ</a></li>
			<li><a href="pages/samplepage/gallery.html"><i class="fa fa-circle-thin"></i>Gallery</a></li>
			<li><a href="pages/samplepage/invoice.html"><i class="fa fa-circle-thin"></i>Invoice</a></li>
			<li><a href="pages/samplepage/lightbox.html"><i class="fa fa-circle-thin"></i>Lightbox Popup</a></li>
			<li><a href="pages/samplepage/pace.html"><i class="fa fa-circle-thin"></i>Pace</a></li>
			<li><a href="pages/samplepage/pricing.html"><i class="fa fa-circle-thin"></i>Pricing</a></li>
            <li class="treeview">
              <a href="#"><i class="fa fa-circle-thin"></i>Authentication 
                <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
              </a>
              <ul class="treeview-menu">
                <li><a href="pages/samplepage/login.html"><i class="fa fa-circle"></i>Login</a></li>
                <li><a href="pages/samplepage/register.html"><i class="fa fa-circle"></i>Register</a></li>
                <li><a href="pages/samplepage/lockscreen.html"><i class="fa fa-circle"></i>Lockscreen</a></li>
                <li><a href="pages/samplepage/user-pass.html"><i class="fa fa-circle"></i>Recover password</a></li>				  
              </ul>
            </li>            
			<li class="treeview">
              <a href="#"><i class="fa fa-circle-thin"></i>Error Pages 
                <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
              </a>
              <ul class="treeview-menu">
                <li><a href="pages/samplepage/404.html"><i class="fa fa-circle"></i>404</a></li>
                <li><a href="pages/samplepage/500.html"><i class="fa fa-circle"></i>500</a></li>
                <li><a href="pages/samplepage/maintenance.html"><i class="fa fa-circle"></i>Maintenance</a></li>		  
              </ul>
            </li> 
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-share"></i> <span>Multilevel</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#">Level One</a></li>
            <li class="treeview">
              <a href="#">Level One
                <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
              </a>
              <ul class="treeview-menu">
                <li><a href="#">Level Two</a></li>
                <li class="treeview">
                  <a href="#">Level Two
                    <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="#">Level Three</a></li>
                    <li><a href="#">Level Three</a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li><a href="#">Level One</a></li>
          </ul>
        </li>         -->
        
         
      </ul>
      
    </section>
    <br>
        </aside>