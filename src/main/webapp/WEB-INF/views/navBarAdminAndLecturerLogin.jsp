
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin/Lecturer Login</title>



					<!-- CSS LINKS 

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

-->

<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<link href="${pageContext.request.contextPath }/resources/css/all.min.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/dataTables.bootstrap4.min.css" type="text/css" rel="stylesheet">

     <!-- JAVASCRIPT LINKS -->
<script type="text/javascript">window.$crisp=[];window.CRISP_WEBSITE_ID="f2335702-9774-4b1c-b0da-c92f58fbccc6";(function(){d=document;s=d.createElement("script");s.src="https://client.crisp.chat/l.js";s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})();</script>

<style>
  .social-icons{
    margin: 30px auto;
    text-align: center;
}
.social-icons img{
    width: 30px;
    margin: 0 12px;
    box-shadow: 0 0 20px 0 #7f7f7f3d;
    cursor: pointer;
    border-radius: 50%;
}


.heading_5{
    font-size: 40px;
}



   .eye_visibility{
   		position: absolute;
   		right: 110px;
   		transform: translate(0, -50%);
   		top: 70%;
   		cursor: pointer;
   
   }
   .fa {
   font-size: 30px;
   color: black;
   }
   



</style>

</head>
<body>





<div class="container">

<!-- Outer Row -->
<div class="row justify-content-center">

  <div class="col-xl-6 col-lg-6 col-md-6">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">

          <div class="col-lg-12">

            <div class="p-5">
  <a href="${pageContext.request.contextPath }/aitiKaceAdminApiConsumption/getLoginBackHomePage=GO=BACK-TO=HOME-PAGE=ODP-SDSHJD=SDJD-DJSJ=D=Z=O=-SJ-DDN-DD-DMNC"><img src="${pageContext.request.contextPath }/resources/images/back.png" width="30px" height="30px"></a>
 
              <div class="text-center">
              <img src="${pageContext.request.contextPath }/resources/images/aiti.png" alt="">
              <br><br>
                <h1 class="h4 text-gray-900 mb-4"> ADMIN AND LECTURER LOGIN </h1>
              </div>


              <div class="social-icons">
              		<a href="https://www.facebook.com/KofiAnnanICT/"><img src="${pageContext.request.contextPath }/resources/images/fb1.png"></a>
              		<a href="https://www.linkedin.com/company/aiti-kace/mycompany/"><img src="${pageContext.request.contextPath }/resources/images/linkedin.png"></a>
                    <a href="https://twitter.com/AITIKACE"><img src="${pageContext.request.contextPath }/resources/images/twitter.jpg"></a>
                    <!-- <img src="images/whatsapp icon.jpg"> -->
                    <!-- <img src="images/instagram2.jpeg"> -->
                </div>


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
             
              
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

</div>

</div>







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


<script src="https://kit.fontawesome.com/42d3376bce.js" crossorigin="anonymous"></script>
</body>
</html>