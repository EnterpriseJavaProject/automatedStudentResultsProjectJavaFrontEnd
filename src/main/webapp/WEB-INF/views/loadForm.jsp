<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




<h1>WELCOME TO JAVA ENTERPRISE</h1>






						<form:form action="" method="GET" modelAttribute="csd1_1StudentIdRetrival">

							<div class="modal-body">
							
						

								<div class="form-group">
								
									<label>STUDENT ID</label> 
									
									<form:input path="student_id" readonly="readonly" class="form-control" value="${csd1_1StudentIdRetrival.student_id }" />
									
								</div>
								
			
							</div>

						</form:form>





</body>
</html>



























  
  
  
  
  
  
  
  
  
  
  

	
	
	
	
	
	
	
	
	
	
	
	
	
