<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>AITI-KACE</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/styleIndex.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/bootstrap.min.css" media="screen" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/font-awesome.min.css" media="screen" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/animate-css/animate.min.css" media="screen" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/prism/prism.css" media="screen" > <!-- USED FOR DEMO HELP - YOU CAN REMOVE IT -->
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/main.css" media="screen" >
        <script src="${pageContext.request.contextPath }/resources/jss/modernizr/modernizr.min.js"></script>
        
   <style>
   
   .eye_visibility{
   		position: absolute;
   		right: 20px;
   		transform: translate(0, -50%);
   		top: 40%;
   		cursor: pointer;
   
   }
   .fa {
   font-size: 20px;
   }
   				html{
    scroll-behavior: smooth;
     }
         
    .gotopbtn
{
position: fixed;
height: 10px;
bottom: 40px;
left:  50px;
}
   
   </style>     
        
    </head>
	<body>

		<!-- Header -->
			<header id="header">
				<div class="inner">
					<a href="#" class="logo"><img src="${pageContext.request.contextPath }/resources/images/aiti.png" width="340" height="70"></a>
					<nav id="nav">
						<a href="#">Home</a>
						<a href="${pageContext.request.contextPath }/aitiKaceStudentsApiConsumption/getStudentLoginPage=View=AITI-KACE-STUDENT-RESULTS-LOGIN-PAGE-SJ-DDN-DD-DMNC">Student</a>
						

						<a href="${pageContext.request.contextPath }/aitiKaceLecturersApiConsumption/getNavBarAdminAndLecturerLoginPage=VIEW=gET-=AdMiN-LeturER=logIn=PAGE=iDH-Fimbngv=SIDFF-pAgE=JDHD">Admin/Lecturer</a>


						
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>


  
  


		<!-- Banner -->
<section style="background: -webkit-linear-gradient(left, #1bc3e9, #25b7c4);background: linear-gradient(to right, #1bc3e9, #25b7c4);padding: 8em 0 9em 0;background-size: cover;background-position: bottom;background-attachment: fixed;background-repeat: no-repeat;text-align: center;position: relative;">
<!-- background-image: url(${pageContext.request.contextPath }/resources/images/pic1.jpeg) -->
<br>
				<div class="inner">
					<header>
					<h1>AITI-KACE AUTOMATED STUDENT RESULTS PROCESSING SYSTEM</h1>
					</header>

<br><br><br>
					<div class="flex ">

						<div>
							<h3 style="color:white;">THIS LOGIN IS FOR ONLY ADMIN AND LECTURERS</h3>
						
						
						
						
		<button type="button" style="background-color: #15b1e9;" class="" data-toggle="modal" data-target="#myModal"><i style="color:white;font-weight:bolder;font-style:italic;">Admin/Lecturer</i></button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
					<h4 class="modal-title text-primary">ADMIN AND LECTURER LOGIN</h4>
					<!--	<button type="button" class="close" data-dismiss="modal">&times;</button>	-->					
					</div>
					<div class="modal-body">




						 <form class="user" action="${pageContext.request.contextPath }/aitiKaceModulesCoursesApiConsumption/staffsLogin" method="GET">

            <div class="form-group">
                  <input type="email" name="email" class="form-control form-control-user" value="${param.email}" placeholder="Enter Email..." required>
                </div>
                
                
                <div class="form-group">
                  <input type="password" name="password" class="form-control form-control-user" id="password" value="${param.password}" placeholder="Password" required>
                  <span class="eye_visibility"><i class="fas fa-eye" aria-hidden="true" id="eye" onclick="toggle()"></i></span>
                </div>
               
                
                <button type="submit" name="login_btn" class="btn btn-primary text-light text-center btn-outline-success btn-user btn-block">Login</button>
                <hr>
               
                <a href="${pageContext.request.contextPath }/aitiKaceModulesCoursesApiConsumption/findEmailVerificationForm" target="_blank"> Forget Password  </a>
                
                <!-- <p class="text-center">Register for a course? <a href="Select_Course.php">Register Now!</a></p>

                <p class="text-center">Check your Results? <a href="check_results.php">Check Now!</a></p>
                 -->
            </form>
						${result}



					</div>
				</div>

			</div>
		</div>
						
						</div>










						<div>
							<h3 style="text-align:center;color:white;">CLICK HERE TO SEARCH YOUR RESULTS</h3>
						
						
						
						
		<button type="button" style="background-color: #15b1e9;" class="" data-toggle="modal" data-target="#myModal"><i style="color:white;font-weight:bolder;font-style:italic;">Student</i></button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
					<h4 class="modal-title text-primary">ADMIN AND LECTURER LOGIN</h4>
					<!--	<button type="button" class="close" data-dismiss="modal">&times;</button>	-->					
					</div>
					<div class="modal-body">




						 <form class="user" action="${pageContext.request.contextPath }/aitiKaceLecturersApiConsumption/lecturersLoginPage=lOgiNlectURER=AITI-KACE-LECturER-NhfdG-LogHd-PAGE=nHDNDd-Hf-VDB=CNC-bdb=dndn=dndKH-Kls-Osbn" method="POST">

            <div class="form-group">
                  <input type="email" name="email" class="form-control form-control-user" value="${param.email}" placeholder="Enter Email..." required>
                </div>
                
                
                <div class="form-group">
                  <input type="password" name="password" class="form-control form-control-user" id="password" value="${param.password}" placeholder="Password" required>
                  <span class="eye_visibility"><i class="fas fa-eye" aria-hidden="true" id="eye" onclick="toggle()"></i></span>
                </div>
               
                
                <button type="submit" name="login_btn" class="btn btn-primary btn-user btn-block">Login</button>
                <hr>
                
                <!-- <p class="text-center">Register for a course? <a href="Select_Course.php">Register Now!</a></p>

                <p class="text-center">Check your Results? <a href="check_results.php">Check Now!</a></p>
                 -->
            </form>
						${result}



					</div>
				</div>

			</div>
		</div>
						
						</div>
			

					</div>

				</div>
			</section>




<h4 style="bottom: 40px; text-align:center;">All Right Reserved @ AITI-KACE</h4>
		

       <a class="gotopbtn" href="#"><img src="${pageContext.request.contextPath }/resources/images/arrow1.png" width="30px" height="30px"></a>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath }/resources/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath }/resources/js/skel.min.js"></script>
			<script src="${pageContext.request.contextPath }/resources/js/util.js"></script>
			<script src="${pageContext.request.contextPath }/resources/js/main.js"></script>








<script>
var state = false;

 function toggle(){
	 
	 if(state){
		 document.getElementById(
				 "password").
				 setAttribute("type",
						 "password");
		 document.getElementById(
				 "eye").style.color='#7a797e';
		 state = false;
	 }
	 
	 else{
		 document.getElementById(
		 "password").
		 setAttribute("type",
				 "text");
 		 document.getElementById(
		 "eye").style.color='#5887ef';
 		 state = true;
	 }
 }

</script>




        <!-- ========== COMMON JS FILES ========== -->
        <script src="${pageContext.request.contextPath }/resources/jss/jquery/jquery-2.2.4.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/jquery-ui/jquery-ui.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/bootstrap/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/pace/pace.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/lobipanel/lobipanel.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/iscroll/iscroll.js"></script>
<script src="https://kit.fontawesome.com/42d3376bce.js" crossorigin="anonymous"></script>
        <!-- ========== PAGE JS FILES ========== -->

        <!-- ========== THEME JS ========== -->
        <script src="${pageContext.request.contextPath }/resources/jss/main.js"></script>
        <script>
            $(function(){

            });
        </script>

        <!-- ========== ADD custom.js FILE BELOW WITH YOUR CHANGES ========== -->
<script type="text/javascript">window.$crisp=[];window.CRISP_WEBSITE_ID="f2335702-9774-4b1c-b0da-c92f58fbccc6";(function(){d=document;s=d.createElement("script");s.src="https://client.crisp.chat/l.js";s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})();</script>




	</body>
</html>