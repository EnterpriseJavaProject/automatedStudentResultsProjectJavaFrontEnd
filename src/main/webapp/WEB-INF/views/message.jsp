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
    <title>Invalid token</title>

</head>
<body>

          			 <h1>${title}</h1>
          			 
          			 
                	<h3>${message}</h3>
   

${token}
	<br><br>

<a href="${pageContext.request.contextPath }/aitiKaceModulesCoursesApiConsumption/index" target="_blank"> HomePage  </a>
	

</body>
</html>