<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import = "javax.sql.DataSource" %>
<%@ page import = "java.sql.*" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<title>Course Batch Page</title>

					<!-- CSS LINKS -->
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/all.min.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/all.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.css" type="text/css" rel="stylesheet">


        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/animate-css/animate.min.css" media="screen" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/lobipanel/lobipanel.min.css" media="screen" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/toastr/toastr.min.css" media="screen" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/icheck/skins/line/blue.css" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/icheck/skins/line/red.css" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/icheck/skins/line/green.css" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/main.css" media="screen" >
        <script src="${pageContext.request.contextPath }/resources/jss/modernizr/modernizr.min.js"></script>









<link href="${pageContext.request.contextPath }/resources/css/datatables.min.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" type="text/css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/datatables.min.js"></script>

     <!-- JAVASCRIPT LINKS -->
<script type="text/javascript">window.$crisp=[];window.CRISP_WEBSITE_ID="f2335702-9774-4b1c-b0da-c92f58fbccc6";(function(){d=document;s=d.createElement("script");s.src="https://client.crisp.chat/l.js";s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})();</script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/42d3376bce.js" crossorigin="anonymous"></script>



<style>
.move{
text-align: center;
}
html{
    scroll-behavior: smooth;
     }
         
    .gotopbtn
{
position: fixed;
height: 10px;
bottom: 40px;
left:  200px;
}
</style>

</head>






<body id="page-top">


 <!-- Page Wrapper -->
  <div id="wrapper">

       







						<!-- NAV BAR/ SIDE BAR -->








<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

<!-- Sidebar - Brand -->
<a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
  <div class="sidebar-brand-icon rotate-n-15">
    <img class="img-profile rounded-circle" src="${pageContext.request.contextPath }/resources/images/aiti1.jpeg" width="50" height="50">
  </div>
  <div class="sidebar-brand-text mx-3"> AITI-KACE </div>
</a>

<!-- Divider -->
<hr class="sidebar-divider my-0">

<!-- Students and Admin Dashboard -->
<li class="nav-item active">
  <a class="nav-link" href="${pageContext.request.contextPath }/aitiKaceCsdResultsApiConsumption/getCourseModuleHomePage">
    <i class="fas fa-fw fa-tachometer-alt"></i>
    <span>Students Dashboard</span></a>
</li>

<br>











	<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseNine" aria-expanded="true" aria-controls="collapseNine">
  <i class="fas fa-fw fa-folder"></i>
    <span> ADMIN ACTIONS </span>
  </a>
  <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">

      <a class="collapse-item" href="${pageContext.request.contextPath }/aitiKaceCoursesApiConsumption/getAllCoursesHomePage"> COURSES</a>     
      
	  <a class="collapse-item" href="${pageContext.request.contextPath }/aitiKaceModulesApiConsumption/getAllModulesHomePage">MODULES</a>
	  
	  <a class="collapse-item" href="${pageContext.request.contextPath }/aitiKaceStudentsApiConsumption/getStudentsHomePage">STDUENTS</a>

	  
<a class="collapse-item" href="${pageContext.request.contextPath }/aitiKaceResultsApiConsumption/retrieveAllResults">VIEW RESULTS</a>
    </div>
  </div>
</li>


<!-- Divider -->
<hr class="sidebar-divider">



<!-- Sidebar Toggler (Sidebar) -->
<div class="text-center d-none d-md-inline">

  <button class="rounded-circle border-0" id="sidebarToggle"></button>
  
</div>

</ul>
<!-- End of Sidebar -->




  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>




  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">???</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="${pageContext.request.contextPath }/aitiKaceStudentsApiConsumption/getLoginBackHomePage=GO=BACK-TO=HOME-PAGE=ODP-SDSHJD=SDJD-DJSJ=D=Z=O=-SJ-DDN-DD-DMNC">Logout</a>
        </div>
      </div>
    </div>
  </div>




<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

<!-- Main Content -->
<div id="content">

  <!-- Topbar -->
  <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

    <!-- Sidebar Toggle (Topbar) -->
    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
      <i class="fa fa-bars"></i>
    </button>

    <!-- Topbar Search -->
    <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
      <div class="input-group">
        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" required>
        <div class="input-group-append">
          <button class="btn btn-primary" type="button">
            <i class="fas fa-search fa-sm"></i>
          </button>
        </div>
      </div>
    </form>
 
    <a href="#"><img src="${pageContext.request.contextPath }/resources/images/aiti.png" alt="" width="" height="50"></a>

    <!-- Topbar Navbar -->
    <ul class="navbar-nav ml-auto">

      <!-- Nav Item - Search Dropdown (Visible Only XS) -->
      <li class="nav-item dropdown no-arrow d-sm-none">
        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-search fa-fw"></i>
        </a>
        <!-- Dropdown - Messages -->
        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
          <form class="form-inline mr-auto w-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" required>
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>

      <!-- Nav Item - Alerts -->
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-bell fa-fw"></i>
          <!-- Counter - Alerts -->
          <span class="badge badge-danger badge-counter">3+</span>
        </a>
        <!-- Dropdown - Alerts -->
        <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
          <h6 class="dropdown-header">
            Alerts Center
          </h6>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="mr-3">
              <div class="icon-circle bg-primary">
                <i class="fas fa-file-alt text-white"></i>
              </div>
            </div>
            <div>
              <div class="small text-gray-500">December 12, 2019</div>
              <span class="font-weight-bold">Solomon Okyere results has been added successfully</span>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="mr-3">
              <div class="icon-circle bg-success">
                <i class="fas fa-donate text-white"></i>
              </div>
            </div>
            <div>
              <div class="small text-gray-500">December 7, 2019</div>
              Bismark Otu records has been updated successfully
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="mr-3">
              <div class="icon-circle bg-warning">
                <i class="fas fa-exclamation-triangle text-white"></i>
              </div>
            </div>
            <div>
              <div class="small text-gray-500">December 2, 2019</div>
              Oscar Opoku results has been added successfully
            </div>
          </a>
          <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
        </div>
      </li>

      <!-- Nav Item - Messages -->
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-envelope fa-fw"></i>
          <!-- Counter - Messages -->
          <span class="badge badge-danger badge-counter">7</span>
        </a>
        <!-- Dropdown - Messages -->
        <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
          <h6 class="dropdown-header">
            Message Center
          </h6>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
              <div class="status-indicator bg-success"></div>
            </div>
            <div class="font-weight-bold">
              <div class="text-truncate">Admin just login</div>
              <div class="small text-gray-500">Admin ??? 1m</div>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
              <div class="status-indicator"></div>
            </div>
            <div>
              <div class="text-truncate">CYBER SECURITY7.4 has been created successfully</div>
              <div class="small text-gray-500">Admin ??? 1d</div>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
              <div class="status-indicator bg-warning"></div>
            </div>
            <div>
              <div class="text-truncate">Error Whiles logging in by Admin</div>
              <div class="small text-gray-500">Admin ??? 2d</div>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
              <div class="status-indicator bg-success"></div>
            </div>
            <div>
               <div class="text-truncate">CCNA1.8 has been crested successfully</div>
              <div class="small text-gray-500">Admin ??? 58m</div>
            </div>
          </a>
          <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
        </div>
      </li>

      <div class="topbar-divider d-none d-sm-block"></div>

      <!-- Nav Item - User Information -->
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="mr-2 d-none d-lg-inline text-gray-600 small">
          
          </span>
          <img class="img-profile rounded-circle" src="${pageContext.request.contextPath }/resources/images/aiti1.jpeg">
        </a>
        <!-- Dropdown - User Information -->
        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
         
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
            <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
            Logout
          </a>
        </div>
      </li>

    </ul>

  </nav>
  <!-- End of Topbar -->









   <!-- Begin Page Content -->
        <div class="container-fluid">
        
        
        
        
        
                                <div class="row text-center">
                                




    
                                  <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12" data-toggle="collapse" data-target="#coll">
                                    <a class="dashboard-stat bg-primary" href="${pageContext.request.contextPath }/aitiKaceStudentsApiConsumption/getStudentsHomePage">



                                        <span class="number counter">
                                        
                                       
           <%

try{


Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
Statement stmt = conn.createStatement();

ResultSet rs = stmt.executeQuery("SELECT count(*) from students");
            
if(rs.next()){

%>                   				
                                              
  <%= rs.getString("count(*)")  %>
        
  <%

}
    
}catch(Exception e){

out.println(e.getMessage());
} 

%>           
                                        </span>
                                        <span class="name">Registered Students</span>
                                        <span class="bg-icon"><i class="fa fa-users"></i></span>
                                    </a>
                                    <!-- /.dashboard-stat -->
                                </div>
















                                
                                    <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12" data-toggle="collapse" data-target="#coll">
                                        <a class="dashboard-stat bg-danger" href="${pageContext.request.contextPath }/aitiKaceStaffsApiConsumption/getAllStaffs">



                                            <span class="number counter">

                
   <%

try{


Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
Statement stmt = conn.createStatement();

ResultSet rs = stmt.executeQuery("SELECT count(*) from staff_details");
								
if(rs.next()){
	
%>                   				
                                    				      
      <%= rs.getString("count(*)")  %>
            
      <%

}
			  
	}catch(Exception e){
		
		out.println(e.getMessage());
	} 

%>                              				
                                    				           
                                            </span>
                                            <span class="name">Registered Staffs</span>
                                            <span class="bg-icon"><i class="fa fa-users"></i></span>
                                        </a>
                                        <!-- /.dashboard-stat -->
                                    </div>
                                 
                                    





                                   <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12" data-toggle="collapse" data-target="#coll">
                                        <a class="dashboard-stat bg-warning" href="${pageContext.request.contextPath }/aitiKaceResultsApiConsumption/retrieveAllResults">



                                            <span class="number counter">
                                            
                                            
                                               <%

try{


Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
Statement stmt = conn.createStatement();

ResultSet rs = stmt.executeQuery("SELECT count(*) from students_results");
								
if(rs.next()){
	
%>                   				
                                    				      
      <%= rs.getString("count(*)")  %>
            
      <%

}
			  
	}catch(Exception e){
		
		out.println(e.getMessage());
	} 

%> 
                                            
                                            
                                            
                                            
                                            
                                            </span>
                                            <span class="name">Registered Results</span>
                                            <span class="bg-icon"><i class="fa fa-file-text"></i></span>
                                        </a>
                                        <!-- /.dashboard-stat -->
                                    </div>
                                    
                                    
                                    
                                     <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12" data-toggle="collapse" data-target="#coll">
                                        <a class="dashboard-stat bg-success" href="${pageContext.request.contextPath }/aitiKaceCoursesApiConsumption/getAllCoursesHomePage">



                                            <span class="number counter">
                                            
                                  
                                     <%

try{


Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
Statement stmt = conn.createStatement();

ResultSet rs = stmt.executeQuery("SELECT count(*) from courses");
								
if(rs.next()){
	
%>                   				
                                    				      
      <%= rs.getString("count(*)")  %>
            
      <%

}
			  
	}catch(Exception e){
		
		out.println(e.getMessage());
	} 

%>           
                                            
                                            
                                            
                                            
                                            
                                            </span>
                                            <span class="name">Total Courses</span>
                                            <span class="bg-icon"><i class="fa fa-bank"></i></span>
                                        </a>
                                        <!-- /.dashboard-stat -->
                                    </div>
                                    
                                    
                                    
                                      <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12" data-toggle="collapse" data-target="#coll">
                                        <a class="dashboard-stat bg-primary" href="${pageContext.request.contextPath }/aitiKaceModulesApiConsumption/getAllModulesHomePage">



                                            <span class="number counter">
                                            
                                           
               <%

try{


Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
Statement stmt = conn.createStatement();

ResultSet rs = stmt.executeQuery("SELECT count(*) from modules");
								
if(rs.next()){
	
%>                   				
                                    				      
      <%= rs.getString("count(*)")  %>
            
      <%

}
			  
	}catch(Exception e){
		
		out.println(e.getMessage());
	} 

%>           
                                            </span>
                                            <span class="name">Total Modules</span>
                                            <span class="bg-icon"><i class="fa fa-users"></i></span>
                                        </a>
                                        <!-- /.dashboard-stat -->
                                    </div>

    
                                
                                
                                    <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12" data-toggle="collapse" data-target="#coll">
                                        <a class="dashboard-stat bg-danger" href="${pageContext.request.contextPath }/aitiKaceCourseBatchApiConsumption/getAllCourseBatchHomePage">



                                            <span class="number counter">

                
   <%

try{


Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
Statement stmt = conn.createStatement();

ResultSet rs = stmt.executeQuery("SELECT count(*) from course_batch");
								
if(rs.next()){
	
%>                   				
                                    				      
      <%= rs.getString("count(*)")  %>
            
      <%

}
			  
	}catch(Exception e){
		
		out.println(e.getMessage());
	} 

%>                              				
                                    				           
                                            </span>
                                            <span class="name">Total Course Batch</span>
                                            <span class="bg-icon"><i class="fa fa-users"></i></span>
                                        </a>
                                        <!-- /.dashboard-stat -->
                                    </div>                     
                          


                                                   
                                </div>                             
                                
                                
                                
                              </div>  
                                
                                
                                
                                
                                
                                
                                
                                
                                <!-- /.row -->







<br><br>
        
        
        <h1 class="h2 mb-0 text-gray-800 text-center">AITI-KACE COURSES DASHBOARD</h1>
        
   <br><br>

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            
       
       
       
       
       
       

       
       
       
       
         <!-- ADD COURSES AND MODULES -->  
       
       
       
       
        <div class="container">
		<button type="button" class="btn btn-info float-left" data-toggle="modal" data-target="#courseAndModule">Add Course Batch</button>

		<!-- Modal -->
		<div class="modal fade" id="courseAndModule" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
					<h4 class="modal-title text-primary">ADD COURSE BATCH</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>						
					</div>
					<div class="modal-body">




						<form action="${pageContext.request.contextPath }/aitiKaceCourseBatchApiConsumption/saveCourseBatch" method="post">

			<div class="modal-body">
							
						<div class="row">
   							 <div class="col">
   							 
   							 
   							 
   							 	<div class="form-group">
									<label>COURSE NAME</label> 
									<select name="course_name" id="course_name" class="form-control" onchange="setCourseGroup(this.id, 'selectCourseGroup')" required="required">
										<option value="">Select Course</option>
										<option value="CERTIFICATE IN SOFTWARE DEVELOPMENT">CERTIFICATE IN SOFTWARE DEVELOPMENT</option>
										<option value="CISCO CERTIFIED NETWORK ASSOCIATE">CISCO CERTIFIED NETWORK ASSOCIATE</option>
										<option value="CISCO CERTIFIED NETWORK PROFESSIONALS">CISCO CERTIFIED NETWORK PROFESSIONALS</option>
										<option value="INTERNATIONAL COMPUTER DRIVING LICENCE">INTERNATIONAL COMPUTER DRIVING LICENCE</option>
										<option value="CYBER SECURITY">CYBER SECURITY</option>
										<option value="NETWORK INFORMATION SECURITY">NETWORK INFORMATION SECURITY</option>
										<option value="CERTIFIED INFORMATION SYSTEM AUDITOR">CERTIFIED INFORMATION SYSTEM AUDITOR</option>
										<option value="DIPLOMA IN BUSINESS COMPUTING">DIPLOMA IN BUSINESS COMPUTING</option>
										<option value="ADVANCED BIG DATA ANALYTICS">ADVANCED BIG DATA ANALYTICS</option>
										<option value="COMPUTING INFRASTRUCTURE SYSTEMS & SECURITY">COMPUTING INFRASTRUCTURE SYSTEMS & SECURITY</option>
									</select>
								</div>
   						
							</div>
			
			
										
							       <div class="form-group" hidden>
 			 <label>COURSE GROUP</label> 
  	<select name="course_id" id=selectCourseGroup class="form-control">
		<option value="">Select Course Group</option>
		
  	</select>	
   </div>
   
   				

				</div>

					
			


					
					<div class="row">
    <div class="col">



								<div class="form-group">
								<label>BATCH</label> <input name="course_level"
										type="text" class="form-control" id="course_level" value="" placeholder="CSD1.5" required>
										<span id ="course_level_error_message" style="color:red;"></span>
								</div>
							
							
					</div>
				
  							 <div class="col">
   							 
   							 
   							 
   							 	<div class="form-group">
									<label>COURSE COORDINATOR</label> 
      <select name="coordinator" class="form-control" id="default" required="required">
<option value="">Select Course Coordinator</option>

			<c:forEach items="${findAllInstructors}" var="findAllInstructors">			
				
<option value="${findAllInstructors.name }"> 
			
						${findAllInstructors.name }
					
											</option>
			
										</c:forEach>
										

 </select>
								</div>
   						
							</div>
							
							
</div>



					
 



			<div class="row">
    <div class="col">


								<div class="form-group">
									<label>COURSE START DATE</label> <input name="course_start_date" type="date"
										class="form-control checking_date_of_birth" id="course_start_date" value="" placeholder="example@play.com" required>
										<span class="error_date_of_birth" id="date_of_birth_error_message" style="color:red;"></span>
								</div>

</div>
  <div class="col">     



								<div class="form-group">
									<label>COURSE END DATE</label> <input name="course_end_date" type="date"
										class="form-control checking_date_of_birth" id="course_end_date" value="" placeholder="example@play.com" required>
										<span class="error_date_of_birth" id="date_of_birth_error_message" style="color:red;"></span>
								</div>

</div>
</div>
				
				
				
				
				
				
				
			<div class="row">
			
		
		    <div class="col">


								<div class="form-group">
									<label>CERTIFICATION DATE</label> <input name="certificate_issuedate" type="date"
										class="form-control checking_date_of_birth" id="course_start_date" value="" placeholder="example@play.com" required>
								</div>

</div>	
			
	
	
			
   							 <div class="col">



								<div class="form-group">
								<label>SELECT STATUS</label>
      <select name="status" class="form-control" required="required">
<option value="">Select Status</option>


<option value="Active">Active</option>
<option value="Deactivate">Deactivate</option>		     
        
        
 </select>



	</div>
	</div>
	
	
	
	
	
</div>
				
				
			
			
				
				
				
				
				
				
				
					
								<div class="modal-footer">
								    <button type="submit" class="btn btn-primary" onclick="return validate()" id="alert">Add</button>
									<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
								</div>
							</div>

						</form>
						${result}



					</div>
				</div>

			</div>
		</div>

	</div>
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
            
            

            
            
            
            
            
            
           
            
            
            
       
       			<button type="submit" name="btn_pdf" class="btn btn-primary"><i class="fas fa-download fa-sm text-white-50"></i>Generate</button>

          </div>











  <!-- Begin Page Content -->
  <div class="container-fluid">


<!-- DataTales Example -->
<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">AITI-KACE COURSES AND MODULE DATATABLE</h6>
  </div>
  <div class="card-body">
    <div class="table-responsive">
    
    
    
   
			<!-- TABLE -->
			
			
			
			
	<table id="example" class="table table-striped table-bordered"  width="100%" cellspacing="0">
       
       
       
        <thead>
		<tr>
		
	
			<th>COURSE NAME</th>
			<th>BATCH</th>
			<th>COURSE COORDINATOR</th>
			<th>START DATE</th>
			<th>END DATE</th>
			<th>STATUS</th>
			<th>CREATED AT</th>
			<th>UPDATED AT</th>
			<th>ACTION</th>


		</tr>
	</thead>
	
	<tbody>
	
	
<c:forEach items="${findAllCourseBatch}" var="findAllCourseBatch">

							
							
				<c:url value="findModulesUnderEachCourseById" var="viewModuleURL">
					<c:param name="id" value="${findAllCourseBatch.id }"></c:param>
				</c:url>
	

	
					<c:url value="deleteCoursesModules" var="deleteCoursesModulesURL">
					<c:param name="id" value="${findAllCourseBatch.id }"></c:param>
				</c:url>


				<tr>
				
					<td>${findAllCourseBatch.course_name }</td>
					<td>${findAllCourseBatch.course_level }</td>
					<td>${findAllCourseBatch.coordinator }</td>
					<td>${findAllCourseBatch.course_start_date }</td>
					<td>${findAllCourseBatch.course_end_date }</td>
					<td>${findAllCourseBatch.status }</td>
					<td>${findAllCourseBatch.created_at }</td>
					<td>${findAllCourseBatch.updated_at }</td>
					
					
					<td><a href="${viewModuleURL }">View Modules</a></td>
					<!-- 
					<td><a href="${updateURL }"><img src="${pageContext.request.contextPath }/resources/images/Update.png" width="50" height="50"></a></td>

					<a href="${deleteCoursesModulesURL }" onclick="if (!confirm('Are you sure you want to delete this student')) return false"><i class="fa fa-trash-alt color-danger" title="Delete Record"></i></a></td>
										 -->

				</tr>

			</c:forEach>
	
	</tbody>
	
	
	     <tfoot>
            <tr>
			<th>COURSE NAME</th>
			<th>BATCH</th>
			<th>COURSE COORDINATOR</th>
			<th>START DATE</th>
			<th>END DATE</th>
			<th>STATUS</th>
			<th>CREATED AT</th>
			<th>UPDATED AT</th>
			<th>ACTION</th>
            </tr>
        </tfoot>
      
       
       
 
       
      </table>
			
			










    </div>
  </div>
</div>








<br><br><br><br><br><br>








<script>

$(document).ready( function () {
    $('#examples').DataTable();
} );

</script>




<script>

$(document).ready( function () {
    $('#exampless').DataTable();
} );

</script>


<script>

$(document).ready( function () {
    $('#example').DataTable();
} );

</script>





</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->





<a class="gotopbtn" href="#"><img src="${pageContext.request.contextPath }/resources/images/arrow1.png" width="30px" height="30px"></a>





<!-- Footer -->
<footer class="sticky-footer bg-white">
<div class="container my-auto">
<div class="copyright text-center my-auto">
  <span>Copyright &copy; AITI-KACE 2021</span>
</div>
</div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->











<script>

$(document).ready(function () {
    

    $('.checking_staff_id').keyup(function (e) {

        var staff_id = $('.checking_staff_id').val();
   
        $.ajax({
            type: "POST",
            url: "getliveValidationOnStaffID",
            data: {
                "check_staff_id_submit_btn": 1,
                "staff_id": staff_id,
            },
            success: function (response) {
                //alert(response);
                $('.error_staff_id').text(response);
                
            }
        });

    });

});


</script>









<script>

$(document).ready(function () {
    

    $('.checking_email').keyup(function (e) {

        var email = $('.checking_email').val();
        //alert(email);
        $.ajax({
            type: "POST",
            url: "getliveValidationOnEmail",
            data: {
                "check_submit_btn": 1,
                "email": email,
            },
            success: function (response) {
                //alert(response);
                $('.error_email').text(response);
                
            }
        });

    });

});


</script>






<script>

$(document).ready(function () {
    

    $('.checking_phone').keyup(function (e) {

        var phone = $('.checking_phone').val();
        //alert(email);
        $.ajax({
            type: "POST",
            url: "getliveValidationOnPhoneNUmber",
            data: {
                "check_phone_submit_btn": 1,
                "phone": phone,
            },
            success: function (response) {
                //alert(response);
                $('.error_phone').text(response);
                
            }
        });

    });

});


</script>

















<script type="text/javascript">

function validate(){
	
	var student_id = document.getElementById("student_id").value;
	var student_name = document.getElementById("student_name").value;
	var email = document.getElementById("email").value;
	var phone = document.getElementById("phone").value;
	
	
	var nametype = /^[A-Z a-z]+$/;
    var emailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	

	
	else if (student_name == ""){
        document.getElementById("student_name_error_message").innerHTML="** Student Name required";
        return false;
    }
	
	else if (nametype.test(student_name) == false){
        document.getElementById("student_name_error_message").innerHTML="** Only Characters required";
        return false;
    }
	
	
	else if (email == ""){
        document.getElementById("email_error_message").innerHTML="** Email should required";
        return false;
    }
	else if  (emailformat.test(email)== false){
        document.getElementById("email_error_message").innerHTML="** Enter A Valid Email";
        return false;
    }
	
	
	else if (phone == ""){
        document.getElementById("phone_error_message").innerHTML="** Phone Number required";
        return false;
    }
	else if (isNaN(phone)){
		document.getElementById("phone_error_message").innerHTML="** Phone Number must be only digits";
        return false;
	}
	else if (phone.length<10){
		document.getElementById("phone_error_message").innerHTML="** Phone Number must be 10 digits";
        return false;
	}
	
	else if (phone.length>10){
		document.getElementById("phone_error_message").innerHTML="** Phone Number must be 10 digits";
        return false;
	}

	else if ((phone.charAt(0) != 0)){
		text = "Phone Number must with 0";
		document.getElementById("phone_error_message").innerHTML="** Phone Number must begin with 0";
        return false;
	}
	

	else {
		
		swal({
			  title: "Success!",
			  text: "STUDENT ADDED SUCCESSFULLY!",
			  icon: "success",
			  button: "Done",
			});
		
		return true;
	}
	


	
}
</script>
















<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


<script>



(function($) {
	  "use strict"; // Start of use strict

	  // Toggle the side navigation
	  $("#sidebarToggle, #sidebarToggleTop").on('click', function(e) {
	    $("body").toggleClass("sidebar-toggled");
	    $(".sidebar").toggleClass("toggled");
	    if ($(".sidebar").hasClass("toggled")) {
	      $('.sidebar .collapse').collapse('hide');
	    };
	  });

	  // Close any open menu accordions when window is resized below 768px
	  $(window).resize(function() {
	    if ($(window).width() < 768) {
	      $('.sidebar .collapse').collapse('hide');
	    };
	  });

	  // Prevent the content wrapper from scrolling when the fixed side navigation hovered over
	  $('body.fixed-nav .sidebar').on('mousewheel DOMMouseScroll wheel', function(e) {
	    if ($(window).width() > 768) {
	      var e0 = e.originalEvent,
	        delta = e0.wheelDelta || -e0.detail;
	      this.scrollTop += (delta < 0 ? 1 : -1) * 30;
	      e.preventDefault();
	    }
	  });

	  // Scroll to top button appear
	  $(document).on('scroll', function() {
	    var scrollDistance = $(this).scrollTop();
	    if (scrollDistance > 100) {
	      $('.scroll-to-top').fadeIn();
	    } else {
	      $('.scroll-to-top').fadeOut();
	    }
	  });

	  // Smooth scrolling using jQuery easing
	  $(document).on('click', 'a.scroll-to-top', function(e) {
	    var $anchor = $(this);
	    $('html, body').stop().animate({
	      scrollTop: ($($anchor.attr('href')).offset().top)
	    }, 1000, 'easeInOutExpo');
	    e.preventDefault();
	  });

	})(jQuery); // End of use strict




</script>













<script type="text/javascript">

function setCourseGroup(s1,s2) {
	
	var s1 = document.getElementById(s1);
	var s2 = document.getElementById(s2);

	
	s2.innerHTML = "";

	
	if(s1.value == "CERTIFICATE IN SOFTWARE DEVELOPMENT") {
		
    //var optionArray = url: "getAllAitiKaceStudentNames";
	var optionArray = ['1|1'];	
		
	}
	
	else if(s1.value == "INTERNATIONAL COMPUTER DRIVING LICENCE") {
		
		var optionArray = ['2|2'];
	}
	
	else if(s1.value == "DIPLOMA IN BUSINESS COMPUTING") {
		
		var optionArray = ['3|3'];
	}
	
	else if(s1.value == "CISCO CERTIFIED NETWORK ASSOCIATE") {
		
		var optionArray = ['4|4'];
	}
	
	
	if(s1.value == "CISCO CERTIFIED NETWORK PROFESSIONALS") {
		
	    //var optionArray = url: "getAllAitiKaceStudentNames";
		var optionArray = ['5|5'];	
			
		}
		
		else if(s1.value == "CYBER SECURITY") {
			
			var optionArray = ['6|6'];
		}
		
		else if(s1.value == "NETWORK INFORMATION SECURITY") {
			
			var optionArray = ['7|7'];
		}
		
	
		else if(s1.value == "CERTIFIED INFORMATION SYSTEM AUDITOR") {
			
			var optionArray = ['8|8'];
		}
	
	
		else if(s1.value == "COMPUTING INFRASTRUCTURE SYSTEMS & SECURITY") {
			
			var optionArray = ['9|9'];
		}
		

		else if(s1.value == "ADVANCED BIG DATA ANALYTICS") {
			
			var optionArray = ['10|10'];
		}

	
	for (var option in optionArray) {
		
		var pair = optionArray[option].split("|");
		var newOption = document.createElement("option");
		
		newOption.value = pair[0];
		
		newOption.innerHTML = pair[1];

        s2.options.add(newOption);
     
	}
	
}

</script>












</body>
</html>