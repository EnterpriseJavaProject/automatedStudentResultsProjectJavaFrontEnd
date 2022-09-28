<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import = "javax.sql.DataSource" %>
<%@ page import = "java.sql.*" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
 
 
 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/styleIndex.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/bootstrap.css" media="screen" >
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/font-awesome.min.css" media="screen" >
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/animate-css/animate.min.css" media="screen" >
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/prism/prism.css" media="screen" > <!-- USED FOR DEMO HELP - YOU CAN REMOVE IT -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/main.css" media="screen" >

</head>
<body>


    <div class="container">







        <div class="row justify-content-center">
            <div class="card shadow-lg my-5">
              <div class="card-body p-0">
                <div class="row">
                    <div class="p-5">
                      <div class="text-center">
                        <h4 class="text-primary">RESET YOUR PASSWORD</h4>
                      </div>
                      
                      
            
                    
                    
                      <form class="user" action="${pageContext.request.contextPath }/aitiKaceModulesCoursesApiConsumption/updateStaffPassword" method="POST">
                      
                      
              
                        
                        
           
                       
                      <input type="hidden" name="id" value="${findStaffDetails.id}"  class="form-control form-control-user" autocomplete="off" placeholder="Enter Password" required>
    
                     <input type="hidden" name="staff_id" value="${findStaffDetails.staff_id}"  class="form-control form-control-user" autocomplete="off" placeholder="Enter Password" required>

                     <input type="hidden" name="batch_id" value="${findStaffDetails.batch_id}"  class="form-control form-control-user" autocomplete="off" placeholder="Enter Password" required>
    
                         <input type="hidden" name="name" value="${findStaffDetails.name}"  class="form-control form-control-user" autocomplete="off" placeholder="Enter Password" required>

                         <input type="hidden" name="email" value="${findStaffDetails.email}"  class="form-control form-control-user" autocomplete="off" placeholder="Enter Password" required>

                         <input type="hidden" name="contact" value="${findStaffDetails.contact}"  class="form-control form-control-user" autocomplete="off" placeholder="Enter Password" required>
 
                         <input type="hidden" name="department" value="${findStaffDetails.department}"  class="form-control form-control-user" autocomplete="off" placeholder="Enter Password" required>

                         <input type="hidden" name="status" value="${findStaffDetails.status}"  class="form-control form-control-user" autocomplete="off" placeholder="Enter Password" required>


                        <div class="form-group">
                <label>PASSWORD</label>
                         <input type="password" name="password" id="password" class="form-control form-control-user" autocomplete="off" placeholder="Enter Password" required>
                         <span id="error_password" style="color: red;" ></span>                
                        </div>
                        
        
                        <div class="form-group">
                <label>CONFIRM PASSWORD</label>
                         <input type="password" name="confirmPassword" id="password" class="form-control form-control-user" oninput="checkPasswordMatch(this);" autocomplete="off" placeholder="Confirm Password" required>
                         <span id="error_password" style="color: red;" ></span>                
                        </div>
        
        <button type="submit" class="btn btn-primary text-center  btn-user btn-block" onclick="return clickMe()">Login</button>
                        <hr>
   
   
   

              
              
                    </form>
                     
          
                     
                    </div>
                  </div>
                </div>
            </div>
        </div>
        

   
   
   

             

   
   
   
   
   
   
   
   
   
   
   
   
   


    </div>

   
<script type="text/javascript">
	function checkPasswordMatch(fieldConfirmPassword){
		if(fieldConfirmPassword.value != $("#password").val()) {
			fieldConfirmPassword.setCustomValidity("Password do not match!");
		}
		else{
			fieldConfirmPassword.setCustomValidity("");
		}
	}
</script>


</body>
</html>