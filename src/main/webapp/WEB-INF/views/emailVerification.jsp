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
    <title>Email Verification</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/styleIndex.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/bootstrap.min.css" media="screen" >
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/font-awesome.min.css" media="screen" >
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/animate-css/animate.min.css" media="screen" >
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/prism/prism.css" media="screen" > <!-- USED FOR DEMO HELP - YOU CAN REMOVE IT -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/main.css" media="screen" >
</head>
<body>
    <h1 style="text-align: center;color: blue;">We will send you a verification link to your email</h1>





            <!-- Modal content-->
            <div class="modal-content">
            
            
            
            
                <div class="modal-header">
                
                
                
                <h4 class="modal-title text-primary">We will be sending a reset password link to your email</h4>
                <!--	<button type="button" class="close" data-dismiss="modal">&times;</button>	-->			
                <div th:if="${error != null }">
                	<p class="text-danger">${error}</p>
                </div>		
                
                 <div th:if="${message != null }">
                	<p class="text-danger">${message}</p>
                </div> 
                </div>
                <div class="modal-body">




                     <form class="user" action="${pageContext.request.contextPath }/aitiKaceModulesCoursesApiConsumption/verifyEmail" method="GET">

        <div class="form-group">
              <input type="email" name="email" class="form-control form-control-user" value="${param.email}" placeholder="Enter Email..." required>
            </div>
            
            
            <button type="submit" name="send_btn" class="btn btn-primary btn-user btn-block">Send</button>
            <hr>
            
            <!-- <p class="text-center">Register for a course? <a href="Select_Course.php">Register Now!</a></p>

            <p class="text-center">Check your Results? <a href="check_results.php">Check Now!</a></p>
             -->
        </form>
                    ${result}



        </div>
    </div>

</body>
</html>