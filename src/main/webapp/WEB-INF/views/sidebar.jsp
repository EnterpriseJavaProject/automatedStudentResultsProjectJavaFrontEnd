<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    
    
    
    
    
    
    
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


		<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/amcharts/plugins/export/export.css" type="text/css" media="all" />
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/bootstrap.min.css" media="screen" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/font-awesome.min.css" media="screen" >
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
left:  230px;
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
  <a class="nav-link" href="#">
    <i class="fas fa-fw fa-tachometer-alt"></i>
    <span>Students Dashboard</span></a>
</li>

<br>

<!-----------Admin Profile------------->
<li class="nav-item active">
  <a class="nav-link" href="#">
    <i class="fas fa-fw fa-folder"></i>
    <span>Admin Profile</span></a>
</li>

<!-- Divider -->
<hr class="sidebar-divider">
<br>



<br>

<!-----------------------RESULTS TABLE FOR ALL THE COURSES-------------------->
<div class="sidebar-heading">
<big>RESULTS TABLE</big>
</div>
<br>
<!-- RESULTS TABLE FOR ALL CCNA STUDENTS -->


<!-- RESULTS TABLE FOR ALL CSD STUDENTS -->
<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
  <i class="fas fa-fw fa-table"></i>
    <span> CSD RESULTS TABLE</span>
  </a>
  <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>CSD:</big></h6>
      <a class="collapse-item" href="${pageContext.request.contextPath }/aitiStudents/getCsd1_1Page=VIEw=CSD1.1-JJD-DN=STUDENTS-Hjdi=OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfs">CSD1.1</a>
      <a class="collapse-item" href="${pageContext.request.contextPath }/aitiStudents/getCsd1_2Page=VIEw=CSD1.2-hBSIS=STUDENTS-GbsGhHS=PAGE-hGhgKg=VGSN=Vhanxjjj-hsdSBDSHNDHNNDH-Gh=yOPPJD">CSD1.2</a>
      <a class="collapse-item" href="${pageContext.request.contextPath }/aitiStudents/getCsd1_3Page=VIEW=CSD1.3-NDHDHSU=STUDENTS=Nsusjfhf=PAGE-YnDHsjdi=VGSN=Vhanxjjj-NIdJUDdii=BuGlHSUJS">CSD1.3</a>
      <a class="collapse-item" href="${pageContext.request.contextPath }/aitiStudents/getCsd1_4Page=VIEW=CSD1.4-idh=dbd-ioaio=STUDENTS=ns=DAK-BDCH=PAGE-YnDHsjdi=VGSN=Vhanxjjj=Hsjhsggadyh">CSD1.4</a>
      <a class="collapse-item" href="${pageContext.request.contextPath }/aitiStudents/getCsd1_5Page=VIEW=CSD1.5=Bjsdj=STUDENTS-dh=SBCHD-Polas=hdOD=PAGE-Bisdh-Naop=S=dbdb-DHsdb-BDBKD=bdjs">CSD1.5</a>
      <a class="collapse-item" href="${pageContext.request.contextPath }/aitiStudents/getCsd1_6Page=VIEW=CSD1.6-BBJssd=STUDENTS=oBiLL=PAGE=Losj=Jhs-sbs-Madl=jMKOOS=DHD-hdf=dndjdh=gD=K-D">CSD1.6</a>
      <a class="collapse-item" href="${pageContext.request.contextPath }/aitiStudents/getCsd1_7Page=VIEW=CSD1.7-BBJssd=STUDENTS=DGjdjk=Ojdn-HSDB=hdbd-Nd-bsDBddh=dbbd-BDB=DBD-ndDKKD=Ouytdvbd">CSD1.7</a>
    </div>
  </div>
</li>

<br>







<li class="nav-item">
  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
  <i class="fas fa-fw fa-table"></i>
    <span>CCNA RESULTS TABLE</span>
  </a>
  <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>CCNA:</big></h6>
      <a class="collapse-item" href="ccna1.1.jsp">CCNA 1.1</a>
      <a class="collapse-item" href="#">CCNA 1.2</a>
      <a class="collapse-item" href="#">CCNA 1.3</a>
      <a class="collapse-item" href="#">CCNA 1.4</a>
      <a class="collapse-item" href="#">CCNA 1.5</a>
      <a class="collapse-item" href="#">CCNA 1.6</a>
      <a class="collapse-item" href="#">CCNA 1.7</a>
    </div>
  </div>
</li>


<br>


<!-- RESULTS TABLE FOR ALL CCNP STUDENTS -->
<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">  <i class="fas fa-fw fa-table"></i>
    <span>CCNP RESULTS TABLE</span>
  </a>
  <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>CCNP:</big></h6>
      <a class="collapse-item" href="#">CCNP 1.1</a>
      <a class="collapse-item" href="#">CCNP 1.2</a>
      <a class="collapse-item" href="#">CCNP 1.3</a>
      <a class="collapse-item" href="#">CCNP 1.4</a>
      <a class="collapse-item" href="#">CCNP 1.5</a>
      <a class="collapse-item" href="#">CCNP 1.6</a>
      <a class="collapse-item" href="#">CCNP 1.7</a>
    </div>
  </div>
</li>


<br>




<!-- RESULTS TABLE FOR ALL ICDL STUDENTS -->
<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
  <i class="fas fa-fw fa-table"></i>
    <span>ICDL RESULTS TABLE</span>
  </a>
  <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>ICDL:</big></h6>
      <a class="collapse-item" href="icdl1.1 results.php">ICDL 1.1</a>
      <a class="collapse-item" href="#">ICDL 1.2</a>
      <a class="collapse-item" href="#">ICDL 1.3</a>
      <a class="collapse-item" href="#">ICDL 1.4</a>
      <a class="collapse-item" href="#">ICDL 1.5</a>
      <a class="collapse-item" href="#">ICDL 1.6</a>
      <a class="collapse-item" href="#">ICDL 1.7</a>
    </div>
  </div>
</li>

<br>


<!-- RESULTS TABLE FOR ALL CYBER SECURITY STUDENTS -->
<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
  <i class="fas fa-fw fa-table"></i>
    <span>CYBER SECURITY RESULTS TABLE</span>
  </a>
  <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>CYBER SECURITY:</big></h6>
      <a class="collapse-item" href="cyber_security1.1 results.php">CYBER SECURITY 1.1</a>
      <a class="collapse-item" href="#">CYBER SECURITY 1.2</a>
      <a class="collapse-item" href="#">CYBER SECURITY 1.3</a>
      <a class="collapse-item" href="#">CYBER SECURITY 1.4</a>
      <a class="collapse-item" href="#">CYBER SECURITY 1.5</a>
      <a class="collapse-item" href="#">CYBER SECURITY 1.6</a>
      <a class="collapse-item" href="#">CYBER SECURITY 1.7</a>
    </div>
  </div>
</li>

<br>



<!-- RESULTS TABLE FOR ALL CISA STUDENTS -->
<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
  <i class="fas fa-fw fa-table"></i>
    <span>CISA  RESULTS TABLE</span>
  </a>
  <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>CISA:</big></h6>
      <a class="collapse-item" href="cisa1.1 results.php">CISA  1.1</a>
      <a class="collapse-item" href="#">CISA  1.2</a>
      <a class="collapse-item" href="#">CISA  1.3</a>
      <a class="collapse-item" href="#">CISA  1.4</a>
      <a class="collapse-item" href="#">CISA  1.5</a>
      <a class="collapse-item" href="#">CISA  1.6</a>
      <a class="collapse-item" href="#">CISA  1.7</a>
    </div>
  </div>
</li>

<br>


<!-- RESULTS TABLE FOR ALL NIS STUDENTS -->
<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSix" aria-expanded="true" aria-controls="collapseSix">
  <i class="fas fa-fw fa-table"></i>
    <span>NIS RESULTS TABLE</span>
  </a>
  <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>NIS:</big></h6>
      <a class="collapse-item" href="#">NIS 1.1</a>
      <a class="collapse-item" href="#">NIS 1.2</a>
      <a class="collapse-item" href="#">NIS 1.3</a>
      <a class="collapse-item" href="#">NIS 1.4</a>
      <a class="collapse-item" href="#">NIS 1.5</a>
      <a class="collapse-item" href="#">NIS 1.6</a>
      <a class="collapse-item" href="#">NIS 1.7</a>
    </div>
  </div>
</li>


<br>

<!-- RESULTS TABLE FOR ALL DBC STUDENTS -->
<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="true" aria-controls="collapseSeven">
  <i class="fas fa-fw fa-table"></i>
    <span>DBC RESULTS TABLE</span>
  </a>
  <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>DBC:</big></h6>
      <a class="collapse-item" href="#">DBC 1.1</a>
      <a class="collapse-item" href="#">DBC 1.2</a>
      <a class="collapse-item" href="#">DBC 1.3</a>
      <a class="collapse-item" href="#">DBC 1.4</a>
      <a class="collapse-item" href="#">DBC 1.5</a>
      <a class="collapse-item" href="#">DBC 1.6</a>
      <a class="collapse-item" href="#">DBC 1.7</a>
    </div>
  </div>
</li>



<!-- Divider -->
<hr class="sidebar-divider d-none d-md-block">

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
          <a class="btn btn-primary" href="${pageContext.request.contextPath }/aitiStudents/getAdminLoginPage=VIEW=AITI-KACE-STUDENT-ADMIN-LOGIN-PAGE=iDH-Fimbngv=SIDFF++Iobddcn=dbbdhsSDHD">Logout</a>
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

    <!-- Topbar Search
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
 -->
    <a href="#"><img src="${pageContext.request.contextPath }/resources/images/aiti.png" alt="" width="100%" height="50"></a>

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
              <span class="font-weight-bold">A new monthly report is ready to download!</span>
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
              $290.29 has been deposited into your account!
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
              Spending Alert: We've noticed unusually high spending for your account.
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
              <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
              <div class="small text-gray-500">Emily Fowler · 58m</div>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
              <div class="status-indicator"></div>
            </div>
            <div>
              <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
              <div class="small text-gray-500">Jae Chun · 1d</div>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
              <div class="status-indicator bg-warning"></div>
            </div>
            <div>
              <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
              <div class="small text-gray-500">Morgan Alvarez · 2d</div>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
              <div class="status-indicator bg-success"></div>
            </div>
            <div>
              <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
              <div class="small text-gray-500">Chicken the Dog · 2w</div>
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
  </div>
    
    
    </div>
    
    

  
  

  
  