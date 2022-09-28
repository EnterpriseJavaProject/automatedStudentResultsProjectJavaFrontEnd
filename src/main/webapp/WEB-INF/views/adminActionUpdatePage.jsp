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
<title>Admin Page</title>

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
   .fa {
   font-size: 30px;
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
  <a class="nav-link" href="${pageContext.request.contextPath }/aitiKaceAdminApiConsumption/getAllStudentInfo=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd">
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

      <a class="collapse-item" href="${pageContext.request.contextPath }/aitiKaceLecturersApiConsumption/getAllLecturersInfoWithoutAction=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd">LECTURER PROFILE</a>     
	  <a class="collapse-item" href="${pageContext.request.contextPath }/aitiKaceAdminApiConsumption/getAdminLoginPage=VIEW=AITI-KACE-ADMIN-LOGIN-PAGE=iDH-Fimbngv=SIDFF++Iobddcn=dbbdhsSDHD">UPDATE STUDENT</a>
<a class="collapse-item" href="#">VIEW RESULTS</a>
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
            <span aria-hidden="true">×</span>
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
              <div class="small text-gray-500">Admin · 1m</div>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
              <div class="status-indicator"></div>
            </div>
            <div>
              <div class="text-truncate">CYBER SECURITY7.4 has been created successfully</div>
              <div class="small text-gray-500">Admin · 1d</div>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
              <div class="status-indicator bg-warning"></div>
            </div>
            <div>
              <div class="text-truncate">Error Whiles logging in by Admin</div>
              <div class="small text-gray-500">Admin · 2d</div>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
              <div class="status-indicator bg-success"></div>
            </div>
            <div>
               <div class="text-truncate">CCNA1.8 has been crested successfully</div>
              <div class="small text-gray-500">Admin · 58m</div>
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
                                

                                
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" data-toggle="collapse" data-target="#coll">
                                        <a class="dashboard-stat bg-danger" href="#">



                                            <span class="number counter">
                                    				6                           
                                            </span>
                                            <span class="name">Registered Students</span>
                                            <span class="bg-icon"><i class="fa fa-users"></i></span>
                                        </a>
                                        <!-- /.dashboard-stat -->
                                    </div>
                                    
                                                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" data-toggle="collapse" data-target="#coll">
                                        <a class="dashboard-stat bg-warning" href="#">



                                            <span class="number counter">4</span>
                                            <span class="name">Registered Student Results</span>
                                            <span class="bg-icon"><i class="fa fa-file-text"></i></span>
                                        </a>
                                        <!-- /.dashboard-stat -->
                                    </div>
                                    
                                    
                                    
                                                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" data-toggle="collapse" data-target="#coll">
                                        <a class="dashboard-stat bg-success" href="#">



                                            <span class="number counter">8</span>
                                            <span class="name">Total Courses</span>
                                            <span class="bg-icon"><i class="fa fa-bank"></i></span>
                                        </a>
                                        <!-- /.dashboard-stat -->
                                    </div>
                                    
                                    
                                    
                                                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" data-toggle="collapse" data-target="#coll">
                                        <a class="dashboard-stat bg-primary" href="#">



                                            <span class="number counter">1</span>
                                            <span class="name">Total Admins</span>
                                            <span class="bg-icon"><i class="fa fa-users"></i></span>
                                        </a>
                                        <!-- /.dashboard-stat -->
                                    </div>

                                </div>
                                <!-- /.row -->







<br><br>
        
        
        <h1 class="h2 mb-0 text-gray-800 text-center">AITI-KACE STUDENTS DASHBOARD</h1>
        
   <br><br>

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            
       
       
       
       
       
       
           <div class="container">
		<button type="button" class="btn btn-info float-left" data-toggle="modal" data-target="#myModal">Add Student</button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
					<h4 class="modal-title text-primary">ADD NEW STUDENT</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>						
					</div>
					<div class="modal-body">




						<form action="${pageContext.request.contextPath }/aitiKaceStudentsApiConsumption/saveAitiKaceStudent=SaMEmE=HsuSGS-MlsjHS-DN-aDDF-Fdddde-sAmKoG=SmO-sLnINbds=LonCrshs-bBidbdd" method="post">

							<div class="modal-body">
							
						<div class="row">
   							 <div class="col">

								<div class="form-group">
					
									<input name="student_id" type="text" class="form-control checking_student_id" id="student_id" value="" placeholder="Student ID" required>
									<span class="error_student_id" id="student_id_error_message" style="color:red;"></span>
								</div>
								</div>
							<div class="col">	

								<div class="form-group">
									 <input name="student_name"
										type="text" class="form-control" id="student_name" value="" placeholder="Student Name" required>
										<span id ="student_name_error_message" style="color:red;"></span>
								</div>
							
							
					</div>
					
					
					
					
					
					
					
					
					</div>	
					
					

								<div class="form-group">
									<label>COURSE</label> 
									<select class="form-control" name="course">
										<option value="">Select Course</option>
										<option value="Certificate in Software Development">Certificate in Software Development</option>
										<option value="Cisco Certified Network Associate">Cisco Certified Network Associate</option>
										<option value="Cisco Certified Network Professionals">Cisco Certified Network Professionals</option>
										<option value="International Computer Driving Licence">International Computer Driving Licence</option>
										<option value="Cyber Security">Cyber Security</option>
										<option value="Network Information Security">Network Information Security</option>
										<option value="Certified Information System Auditor">Certified Information System Auditor</option>
										<option value="Big Data Analytics">Big Data Analytics</option>
										<option value="Web Technologies">Web Technologies</option>
										<option value="Java Programming">Java Programming</option>
										<option value="Computing Infrastructure Systems & Security">Computing Infrastructure Systems & Security</option>
									</select>
								</div>


					
					<div class="row">
    <div class="col">



								<div class="form-group">
								<label>COURSE LEVEL</label> <input name="course_level"
										type="text" class="form-control" id="course_level" value="" placeholder="CSD1.5" required>
										<span id ="course_level_error_message" style="color:red;"></span>
								</div>
							
						
						</div>
				
   <div class="col">
								
								<div class="form-group">
									<label>DATE OF BIRTH</label> <input name="date_of_birth" type="date"
										class="form-control checking_date_of_birth" id="date_of_birth" value="" placeholder="example@play.com" required>
										<span class="error_date_of_birth" id="date_of_birth_error_message" style="color:red;"></span>
								</div>


</div>
</div>


								<div class="form-group">
								<label>EMAIL</label> <input name="email" type="email"
										class="form-control checking_email" id="email" value="" placeholder="example@play.com" required>
										<span class="error_email" id ="email_error_message" style="color:red;"></span>
								</div>
								

				<div class="row">
    <div class="col">


								<div class="form-group">
								<label>PHONE NUMBER</label>	<input name="phone" type="text"
										class="form-control checking_phone" id="phone" value="" placeholder="0*************" required>
										<span class="error_phone" id ="phone_error_message" style="color:red;"></span>
								</div>
			</div>					
 <div class="col">
								<div class="form-group">
									<label>GENDER</label> 
									<select class="form-control" name="gender">
										<option>Select</option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>
									</select>
								</div>

</div>
</div>

		<div class="form-group">
									<label>ADDRESS</label> <input name="address"
										type="text" class="form-control" id="address" value="" placeholder="Tema Comm 1" required>
										<span id ="course_level_error_message" style="color:red;"></span>
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
    <h6 class="m-0 font-weight-bold text-primary">AITI-KACE STUDENTS DATATABLE</h6>
  </div>
  <div class="card-body">
    <div class="table-responsive">
    
    
    
    
    
    
    
    
<!---------------ADMIN DASHBOARD
          <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Total registered Admin</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">

                      
                      
                      //Class.forName("com.mysql.cj.jdbc.Driver");
					  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_results?useSSL=false", "root", "catalyst1006");                     

					  Statement stmt = conn.createStatement();
					  ResultSet rs = stmt.executeQuery("SELECT count(student_id)  FROM csd1_1 ORDER BY student_id");                     
                      out.println("<h4> Total Students: </h4>" + rs);

                      %>

                      </div>
                    </div>
                    <div class="col-auto">
                    <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
</div>
    
 -------->   
    
    
    <!-- 
    
	<div class="container">
		<button type="button" class="btn btn-info float-left" data-toggle="modal" data-target="#myModal">Add Student</button>

		<!-- Modal
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content
				<div class="modal-content">
					<div class="modal-header">
					<h4 class="modal-title text-primary">ADD NEW STUDENT</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>						
					</div>
					<div class="modal-body">




						<form action="addNewStudent" method="post">

							<div class="modal-body">

								<div class="form-group">
									<label>STUDENT ID</label> <input name="student_id" type="text"
										class="form-control" required>
								</div>

								<div class="form-group">
									<label>STUDENT NAME</label> <input name="student_name"
										type="text" class="form-control" required>
								</div>

								<div class="form-group">
									<label>COURSE</label> <input name="course" type="text"
										class="form-control" required>
								</div>

								<div class="form-group">
									<label>EMAIL</label> <input name="email" type="email"
										class="form-control" required>
								</div>


								<div class="form-group">
									<label>PHONE</label> <input name="phone" type="number"
										class="form-control" required>
								</div>

								<div class="form-group">
									<label>GENDER</label> 
									<select class="form-control" name="gender">
										<option>Select</option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>
									</select>
								</div>

								<div class="form-group">
									<label>PASSWORD</label> <input name="password" type="password"
										class="form-control" required>
								</div>

								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Close</button>
									<button type="submit" class="btn btn-primary">Add</button>
								</div>
							</div>

						</form>
						${result}



					</div>
				</div>

			</div>
		</div>

	</div>
    
    
     -->
    
   <!--  
    
     <div class="float-right">
		   <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search" action="home" method="GET">
      <div class="input-group">
        <input type="hidden" name="page" value="search" />
        <input type="text" name="theSearchName" class="form-control bg-light border-0 small" placeholder="Search for Student..." aria-label="Search" aria-describedby="basic-addon2" required>
        <div class="input-group-append">
          <button class="btn btn-primary" type="button">
            <i class="fas fa-search fa-sm"></i>
          </button>
        </div>
      </div>
    </form>
		
</div>
    
-->

		
			<!-- TABLE -->
			
			
			
			
	<table id="example" class="table table-striped table-bordered"  width="100%" cellspacing="0">
       
       
       
        <thead>
		<tr>
		
			<th>NO</th>
			<th>STUDENT ID</th>
			<th>STUDENT NAME</th>
			<th>COURSE</th>
			<th>COURSE LEVEL</th>
			<th>EMAIL</th>
			<th>PHONE</th>
			<th>GENDER</th>
			<th>ADDRESS</th>
			<th>DOB</th>
			<th>REG DATE</th>
			<th>COURSE START DATE</th>
			<th>COURSE END DATE</th>
			<th>UPDATE TIME</th>
			<th>ACTIONS</th>
			


		</tr>
	</thead>
	
	<tbody>
	
	
			<c:forEach items="${allAitiKaceStudents}" var="allAitiKaceStudents">

				<c:url value="getAitiKaceStudentById=SaMEmE=HsuSGS-MlsjHS-DN-aDDF-Fdddde-sAmKoG=SmO-sLnINbds=LonCrshs-bBidbdd" var="updateURL">
					<c:param name="id" value="${allAitiKaceStudents.id }"></c:param>
					<c:param name="student_id" value="${allAitiKaceStudents.student_id }"></c:param>
					<c:param name="student_name" value="${allAitiKaceStudents.student_name }"></c:param>
					<c:param name="course" value="${allAitiKaceStudents.course }"></c:param>
					<c:param name="course_level" value="${allAitiKaceStudents.course_level }"></c:param>
					<c:param name="email" value="${allAitiKaceStudents.email }"></c:param>
					<c:param name="phone" value="${allAitiKaceStudents.phone }"></c:param>
					<c:param name="gender" value="${allAitiKaceStudents.gender }"></c:param>
					<c:param name="address" value="${allAitiKaceStudents.address }"></c:param>
					<c:param name="date_of_birth" value="${allAitiKaceStudents.date_of_birth }"></c:param>
					<c:param name="course_start_date" value="${allAitiKaceStudents.course_start_date }"></c:param>
					<c:param name="course_end_date" value="${allAitiKaceStudents.course_end_date }"></c:param>


				</c:url>
	

	
					<c:url value="deleteAitiKaceStudentInfo=VIEw=dELetEsTudENTs-hBSIS=STUDENTS-GbsGhHS=PAGE-hGhgKg=VGSN=Vhanxjjj-hsdSBDSHNDHNNDH-Gh=yOPPJD" var="deleteURL">
					<c:param name="id" value="${allAitiKaceStudents.id }"></c:param>
				</c:url>


				<tr>
				
					<td>${allAitiKaceStudents.id }</td>
					<td>${allAitiKaceStudents.student_id }</td>
					<td>${allAitiKaceStudents.student_name }</td>
					<td>${allAitiKaceStudents.course }</td>
					<td>${allAitiKaceStudents.course_level }</td>
					<td>${allAitiKaceStudents.email }</td>
					<td>${allAitiKaceStudents.phone }</td>
					<td>${allAitiKaceStudents.gender }</td>
					<td>${allAitiKaceStudents.address }</td>
					<td>${allAitiKaceStudents.date_of_birth }</td>
					<td>${allAitiKaceStudents.reg_date }</td>
					<td>${allAitiKaceStudents.course_start_date }</td>
					<td>${allAitiKaceStudents.course_end_date }</td>
					<td>${allAitiKaceStudents.update_time }</td>
					
					<td><a href="${updateURL }"><i class="fa fa-edit color-primary" title="Edit Record"></i></a>
					<!-- 
					<td><a href="${updateURL }"><img src="${pageContext.request.contextPath }/resources/images/Update.png" width="50" height="50"></a></td>
					 -->
					<a href="${deleteURL }" onclick="if (!confirm('Are you sure you want to delete this student')) return false"><i class="fa fa-trash-alt color-danger" title="Delete Record"></i></a></td>

				</tr>

			</c:forEach>
	
	</tbody>
	
	
	     <tfoot>
            <tr>
			<th>NO</th>
			<th>STUDENT ID</th>
			<th>STUDENT NAME</th>
			<th>COURSE</th>
			<th>COURSE LEVEL</th>
			<th>EMAIL</th>
			<th>PHONE</th>
			<th>GENDER</th>
			<th>ADDRESS</th>
			<th>DOB</th>
			<th>REG DATE</th>
			<th>COURSE START DATE</th>
			<th>COURSE END DATE</th>
			<th>UPDATE TIME</th>
			<th>ACTIONS</th>
            </tr>
        </tfoot>
      
       
       
 
       
      </table>
			
			




    </div>
  </div>
</div>










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
    

    $('.checking_student_id').keyup(function (e) {

        var student_id = $('.checking_student_id').val();
        //alert(email);
        $.ajax({
            type: "POST",
            url: "getliveValidationOnStudentID",
            data: {
                "check_student_id_submit_btn": 1,
                "student_id": student_id,
            },
            success: function (response) {
                //alert(response);
                $('.error_student_id').text(response);
                
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
	
	
	if (student_id == ""){
        document.getElementById("student_id_error_message").innerHTML="** Student Id required";
        return false;
    }
	
	else if (student_name == ""){
        document.getElementById("student_name_error_message").innerHTML="** Student Name required";
        return false;
    }
	else if (nametype.test(student_name) == false){
        document.getElementById("student_name_error_message").innerHTML="** Student Name should be only Characters";
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
	}
	return true;


	
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


</div>

</body>
</html>