<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<title>Update Student Results</title>

					<!-- CSS LINKS -->
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/all.min.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/all.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/dataTables.bootstrap4.min.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/dataTables.bootstrap4.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/my.css" type="text/css" rel="stylesheet">


     <!-- JAVASCRIPT LINKS -->
<script type="text/javascript">window.$crisp=[];window.CRISP_WEBSITE_ID="f2335702-9774-4b1c-b0da-c92f58fbccc6";(function(){d=document;s=d.createElement("script");s.src="https://client.crisp.chat/l.js";s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})();</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/42d3376bce.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/datatables-demo.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/dataTables.bootstrap4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.dataTables.js"></script>

 
<style>
.move{
text-align: center;
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
            <span aria-hidden="true">�</span>
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
              <div class="small text-gray-500">Admin � 1m</div>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
              <div class="status-indicator"></div>
            </div>
            <div>
              <div class="text-truncate">CYBER SECURITY7.4 has been created successfully</div>
              <div class="small text-gray-500">Admin � 1d</div>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
              <div class="status-indicator bg-warning"></div>
            </div>
            <div>
              <div class="text-truncate">Error Whiles logging in by Admin</div>
              <div class="small text-gray-500">Admin � 2d</div>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
              <div class="status-indicator bg-success"></div>
            </div>
            <div>
               <div class="text-truncate">CCNA1.8 has been crested successfully</div>
              <div class="small text-gray-500">Admin � 58m</div>
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

          <!-- Page Heading 
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800 text-center">AITI STUDENTS RESULTS TABLE</h1>
          </div>
			-->

  <!-- Begin Page Content -->
  <div class="container-fluid">


<!-- DataTales Example -->
<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">COURSE AND MODULES</h6>
  </div>
  <div class="card-body">
    <div class="table-responsive">
     

		
			<!-- TABLE -->
			
			   
<div class="container">
       <a href="${pageContext.request.contextPath }/Frontend_API/aitiKaceCoursesApiConsumption/aitiKaceCoursesApiConsumption"><img src="${pageContext.request.contextPath }/resources/images/back.png" width="20px" height="20px"></a>

      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title text-center">UPDATE STUDENT RESULTS</h4>
        </div>
        <div class="modal-body">


	<form:form action="updateCsd1_1StudentResults" method="GET" modelAttribute="getAllModulesUnderEachCourseById">

							<div class="modal-body">
							
				<input type="hidden" name="id" value="${getAllModulesUnderEachCourseById.id}" />
							
								<div class="form-group">
									<label>COURSE</label>
									
<form:input path="course_name"  readonly="readonly" class="form-control" value="${getAllModulesUnderEachCourseById.course_name}" />

								</div>





								<div class="form-group">
									<label>MODULES</label> 
									
		<form:select path="module_name" class="form-control" required="required">
<option value="">Select Modules</option>

			<c:forEach items="${getAllModulesUnderEachCourseById}" var="getAllModulesUnderEachCourseById">			
				
<option value="${getAllModulesUnderEachCourseById.module_name }----${getAllModulesUnderEachCourseById.staff_name }"> 
			
		${getAllModulesUnderEachCourseById.module_name }-----${getAllModulesUnderEachCourseById.staff_name }
					
											</option>
			
										</c:forEach>
										
 </form:select>
									
										
								</div>



								<div class="modal-footer">
								<button type="submit"  class="btn btn-primary text-light text-center btn-outline-success" onclick="return validate()" id="alert">Update</button>
								</div>
								
							</div>

						</form:form>
						${result}



		     </div>
      </div>

</div>
			
			
			
			
			
			
			
	


    </div>
  </div>
</div>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

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


















<script type="text/javascript">

function validate(){
	
	var student_id = document.getElementById("student_id").value;
	var foc = document.getElementById("foc").value;
	var html_css = document.getElementById("html_css").value;
	var javascript = document.getElementById("javascript").value;
	var se = document.getElementById("se").value;
	var database_tec = document.getElementById("database_tec").value;
	var python = document.getElementById("python").value;
	
	
	
	
	
	if (student_id == ""){
        document.getElementById("student_id_error_message").innerHTML="** Student Id should not be empty";
        return false;
    }
	
	
	if (foc == ""){
        document.getElementById("foc_error_message").innerHTML="** FUNDAMENTALS OF COMPUTING should not be empty";
        return false;
    }
	if(isNaN(foc)){
		document.getElementById("foc_error_message").innerHTML="** FUNDAMENTALS OF COMPUTING must be only digits";
        return false;
	}
	if(foc.length>4){
		document.getElementById("foc_error_message").innerHTML="** FUNDAMENTALS OF COMPUTING must be 3 digits";
        return false;
	}

	
	
	
	if (html_css == ""){
        document.getElementById("html_css_error_message").innerHTML="** HTML / CSS should not be empty";
        return false;
    }
	if(isNaN(html_css)){
		document.getElementById("html_css_error_message").innerHTML="** HTML / CSS must be only digits";
        return false;
	}
	if(html_css.length>4){
		document.getElementById("html_css_error_message").innerHTML="** HTML / CSS must be 3 digits";
        return false;
	}

	
	
	if (javascript == ""){
        document.getElementById("javascript_error_message").innerHTML="** JAVASCRIPT should not be empty";
        return false;
    }
	if(isNaN(javascript)){
		document.getElementById("javascript_error_message").innerHTML="** JAVASCRIPT must be only digits";
        return false;
	}
	if(javascript.length>4){
		document.getElementById("javascript_error_message").innerHTML="** JAVASCRIPT must be 3 digits";
        return false;
	}
	
	
	
	if (se == ""){
        document.getElementById("se_error_message").innerHTML="** SOFTWARE ENGINEERING should not be empty";
        return false;
    }
	if(isNaN(se)){
		document.getElementById("se_error_message").innerHTML="** SOFTWARE ENGINEERING must be only digits";
        return false;
	}
	if(se.length>4){
		document.getElementById("se_error_message").innerHTML="** SOFTWARE ENGINEERING must be 3 digits";
        return false;
	}
	
	
	
	if (database_tec == ""){
        document.getElementById("database_tec_error_message").innerHTML="** DATABASE should not be empty";
        return false;
    }
	if(isNaN(database_tec)){
		document.getElementById("database_tec_error_message").innerHTML="** DATABASE must be only digits";
        return false;
	}
	if(database_tec.length>4){
		document.getElementById("database_tec_error_message").innerHTML="** DATABASE must be 3 digits";
        return false;
	}
	
	
	
	if (python == ""){
        document.getElementById("python_error_message").innerHTML="** PYTHON should not be empty";
        return false;
    }
	if(isNaN(python)){
		document.getElementById("python_error_message").innerHTML="** PYTHON must be only digits";
        return false;
	}
	if(python.length>4){
		document.getElementById("python_error_message").innerHTML="** PYTHON must be 3 digits";
        return false;
	}
	
	

else{
		
		swal({
			  title: "Success!",
			  text: "CSD1.1 STUDENT RESULTS UPDATED SUCCESSFULLY!",
			  icon: "success",
			  button: "Done",
			});
	}
	
}

</script>










     <!-- JAVASCRIPT LINKS -->
<script type="text/javascript">window.$crisp=[];window.CRISP_WEBSITE_ID="f2335702-9774-4b1c-b0da-c92f58fbccc6";(function(){d=document;s=d.createElement("script");s.src="https://client.crisp.chat/l.js";s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})();</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/42d3376bce.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/datatables-demo.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/dataTables.bootstrap4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.dataTables.js"></script>

</body>

</html>
