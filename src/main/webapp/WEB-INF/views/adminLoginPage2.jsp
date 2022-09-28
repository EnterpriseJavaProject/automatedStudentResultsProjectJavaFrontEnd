<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link href="${pageContext.request.contextPath }/resources/css/style.css" type="text/css" rel="stylesheet">
</head>
<body>


 <div class="login-box">
    <form method="post" action="adminLogin">
    <img src="${pageContext.request.contextPath }/resources/images/user.png" class="avatar">
        <h1>Admin Login</h1>
            
            <input type="text" name="username" value="${param.username}" placeholder="Enter Admin Username" required="required">
          
            <input type="password" name="password" value="${param.password}" placeholder="Enter Password" required="required">
            <input type="submit" name="submit" value="Login">
            </form>
             <center><h1><a href="${pageContext.request.contextPath }/studentInfo/homePage">Back</a></h1></center>
 </div>  


</body>
</html>