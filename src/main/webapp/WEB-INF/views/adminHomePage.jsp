<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
    
     
    <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Student Result Management System | Dashboard</title>
        
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
        
        <script type="text/javascript">window.$crisp=[];window.CRISP_WEBSITE_ID="f2335702-9774-4b1c-b0da-c92f58fbccc6";(function(){d=document;s=d.createElement("script");s.src="https://client.crisp.chat/l.js";s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})();</script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/42d3376bce.js" crossorigin="anonymous"></script>

    </head>
    <body class="top-navbar-fixed">
        <div class="main-wrapper">
        
             
              
              <%@ include file="topbar.jsp" %>
        
              
            <div class="content-wrapper">
                <div class="content-container">

					<%@ include file="leftbar.jsp" %>


                    <div class="main-page">
                        <div class="container-fluid">
                            <div class="row page-title-div">
                                <div class="col-sm-6">
                                    <h2 class="title">Dashboard</h2>
                                  
                                </div>
                                <!-- /.col-sm-6 -->
                            </div>
                            <!-- /.row -->
                      
                        </div>
                        <!-- /.container-fluid -->

                        <section class="section">
                            <div class="container-fluid">
                                <div class="row">
                                

                                
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" data-toggle="collapse" data-target="#coll">
                                        <a class="dashboard-stat bg-primary" href="#">



                                            <span class="number counter">100</span>
                                            <span class="name">Registered Students</span>
                                            <span class="bg-icon"><i class="fa fa-users"></i></span>
                                        </a>
                                        <!-- /.dashboard-stat -->
                                    </div>
                                    <!-- /.col-lg-3 col-md-3 col-sm-6 col-xs-12 -->

                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                        <a class="dashboard-stat bg-danger" href="manage-subjects.php">


                                            <span class="number counter">200</span>
                                            <span class="name">Subjects Listed</span>
                                            <span class="bg-icon"><i class="fa fa-ticket"></i></span>
                                        </a>
                                        <!-- /.dashboard-stat -->
                                    </div>
                                    <!-- /.col-lg-3 col-md-3 col-sm-6 col-xs-12 -->

                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                        <a class="dashboard-stat bg-warning" href="manage-classes.php">



                                            <span class="number counter">300</span>
                                            <span class="name">Total classes listed</span>
                                            <span class="bg-icon"><i class="fa fa-bank"></i></span>
                                        </a>
                                        <!-- /.dashboard-stat -->
                                    </div>
                                    <!-- /.col-lg-3 col-md-3 col-sm-6 col-xs-12 -->

                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                        <a class="dashboard-stat bg-success" href="manage-results.php">



                                            <span class="number counter">400</span>
                                            <span class="name">Results Declared</span>
                                            <span class="bg-icon"><i class="fa fa-file-text"></i></span>
                                        </a>
                                        <!-- /.dashboard-stat -->
                                    </div>
                                    <!-- /.col-lg-3 col-md-3 col-sm-6 col-xs-12 -->

                                </div>
                                <!-- /.row -->
                            </div>
                            <!-- /.container-fluid -->
                        </section>
                        <!-- /.section -->

                    </div>
                    <!-- /.main-page -->

                    
                </div>
                <!-- /.content-container -->
            </div>
            <!-- /.content-wrapper -->

        </div>
        <!-- /.main-wrapper -->


  
        
        
        
        
        
        
        
             <!-- ========== COMMON JS FILES ========== -->
        <script src="${pageContext.request.contextPath }/resources/jss/jquery/jquery-2.2.4.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/jquery-ui/jquery-ui.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/bootstrap/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/pace/pace.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/lobipanel/lobipanel.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/iscroll/iscroll.js"></script>

        <!-- ========== PAGE JS FILES ========== -->
        <script src="${pageContext.request.contextPath }/resources/jss/prism/prism.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/waypoint/waypoints.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/counterUp/jquery.counterup.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/amcharts/amcharts.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/amcharts/serial.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/amcharts/plugins/export/export.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/amcharts/plugins/export/export.css" type="text/css" media="all" />
        <script src="${pageContext.request.contextPath }/resources/jss/amcharts/themes/light.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/toastr/toastr.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/icheck/icheck.min.js"></script>

        <!-- ========== THEME JS ========== -->
        <script src="${pageContext.request.contextPath }/resources/jss/main.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/production-chart.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/traffic-chart.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/task-list.js"></script> 
        
        
        
        
        
             <script>
            $(function(){

                // Counter for dashboard stats
                $('.counter').counterUp({
                    delay: 10,
                    time: 1000
                });

                // Welcome notification
                toastr.options = {
                  "closeButton": true,
                  "debug": false,
                  "newestOnTop": false,
                  "progressBar": false,
                  "positionClass": "toast-top-right",
                  "preventDuplicates": false,
                  "onclick": null,
                  "showDuration": "300",
                  "hideDuration": "1000",
                  "timeOut": "5000",
                  "extendedTimeOut": "1000",
                  "showEasing": "swing",
                  "hideEasing": "linear",
                  "showMethod": "fadeIn",
                  "hideMethod": "fadeOut"
                }
                toastr["success"]( "Welcome to student Result Management System!");

            });
        </script>   
        
        
        
    </body>
</html>