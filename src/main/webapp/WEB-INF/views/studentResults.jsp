<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import = "javax.sql.DataSource" %>
<%@ page import = "java.sql.*" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@page import="com.example.demo.integration.dto.Results"%>
 



<%! ResultSet rs; %>

<%


try{


	

	String aitKaceCourseName = request.getParameter("course_name");
	String aitKaceStudent_id = request.getParameter("student_id");
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
	Statement stmt = conn.createStatement();
	
	
	                   
rs = stmt.executeQuery(" select modules.course_name, students.name, students.student_id, students.contact, students.gender, students_results.module_name,  students_results.marks, students.date_of_birth from students_results, students, modules WHERE students_results.student_id = students.student_id and students_results.course_id = modules.course_id and students_results.module_id = modules.id and modules.course_name = '"+aitKaceCourseName+"'  AND students_results.student_id = '"+aitKaceStudent_id+"' ");

	        

									
	if(rs.next()){
		
		
		
		


%>


<!-- 
<img src="logo.png"  align="left"width="150" height="150">
<center><img src="dgi.png" width="150" height="150">
<img src="apj sir.png" align="right"  width="150" height="150"></center>
 -->
 
 
<center> <a href="#" class="logo"><img src="${pageContext.request.contextPath }/resources/images/aiti.png" width="500" height="70"></a> </center>
    <a href="${pageContext.request.contextPath }/aitiKaceAdminApiConsumption/getLoginBackHomePage=GO=BACK-TO=HOME-PAGE=ODP-SDSHJD=SDJD-DJSJ=D=Z=O=-SJ-DDN-DD-DMNC" style="text-decoration: none;"><img src="${pageContext.request.contextPath }/resources/images/back.png" width="25px" height="25px"></a>
    
  <!-- 
    <span style="float: right; font-size: 16px; color: blue;">TRANSCRIPT OF ACADEMIC RECORD</span>
   --> 
   
  <hr class="new1">
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{

  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);

  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Institution Name: AITI-KACE</th>
          <th>Student ID: <%= rs.getString(3)  %></th>
          <th>Student Name: <%= rs.getString(2)  %></th>
          <th><center>Course: <%= rs.getString(1)  %></center></th>
        </tr>
      </thead>
      <thead>
        <tr>
         
          <th>Phone: <%= rs.getString(4)  %></th>
          <th>Gender: <%= rs.getString(5)  %></th>
           <th><i style="font-weight: bolder;color:white;">RESULT STATUS:</i> 
           
           

           
           </th>
           
          <th><a titlt="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><center><img src="${pageContext.request.contextPath }/resources/images/download_icon.png" width="30" height="30"></center></a></th>
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}



</style>
<title>AITI-KACE CSD STUDENT RESULTS</title>
<head>
  <hr class="new1">
  
  
<link href="${pageContext.request.contextPath }/resources/css/my.css" type="text/css" rel="stylesheet">  

</head>
  <body>
  <table>
    <thead>
      <tr>
        <td colspan="3" style="color: black;"><%= rs.getString(1)  %></td>
        <td rowspan="2">Pass Marks</td>
        <td rowspan="2">Your Score</td>
        <td rowspan="2">Grades</td>
        
      </tr>
      <tr>
      <td colspan="2"> Modules </td>
        <td>Full Marks </td>
      </tr>
    </thead>
    <tbody>
    
    


  
      
      
       
           
           <c:forEach items="${findStudentFinalResults}" var="findStudentFinalResults">
       
       <tr>
				 		<td colspan="2">  ${findStudentFinalResults.module_name }  </td>
		
    

              
              
        <td>100%</td>
        <td>50%</td>
        
        
        <td>${findStudentFinalResults.marks }</td>
        
        
        <td> 
		<%	
        		int marks_grade = rs.getInt(7);
		
        		if(marks_grade >= 0 && marks_grade <= 39){
        			out.println("F9");
        		}else if(marks_grade >= 40 && marks_grade <= 49){
        			out.println("C+");
        		}else if(marks_grade >= 50 && marks_grade <= 59){
        			out.println("C");
        		}else if(marks_grade >= 60 && marks_grade <= 69){
        			out.println("B");
        		}else if(marks_grade >= 70 && marks_grade <= 79){
        			out.println("B+");
        		}else if(marks_grade >= 80 && marks_grade <= 89){
        			out.println("A");
        		}else if(marks_grade >= 90 && marks_grade <= 100){
        			out.println("A+");
        		}
    
        	%>
        
         </td>
        

         
      </tr>
   
   	</c:forEach>
                           <!-- CLOSING TAG FOR FOC TABLE ROW -->
      
      
    
      <!-- CLOSING TAG FOR PYTHON TABLE ROW -->
      
      
      
      
    <!--   <tr>
        <td>NAS151</td>
        <td colspan="2">Engg. Physics Lab</td>
        <td>Practical</td>
        <td>30</td>
        <td>15</td>
        <td> 21 </td>
      </tr>
    -->
    </tbody>


  </table>
    <hr class="new1">
    
    
    

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <i class="text-center">
            
            <img src="${pageContext.request.contextPath }/resources/images/sign.jpeg" width="150" height="50"> <br/>
            
            <hr>
            
            <span style="font-size: 16px; text-align: left;">Academic Secretary</span>
            
            </i>
           
           		<span style="font-size: 16px; float: right;">
           		
       			<img src="${pageContext.request.contextPath }/resources/images/sign.jpeg" width="150" height="50"> <br/>
       			
       		<hr>
       			Director of Studies
       			
       			</span>


    		
          </div>
          
    
    
    
  
 <!--   
    
       <div class="last_footer">
   
      			<img src="${pageContext.request.contextPath }/resources/images/sign.jpeg" width="150" height="50" align="right"> <br/>
  				
     			<img src="${pageContext.request.contextPath }/resources/images/sign.jpeg" width="150" height="50"> <br>
     			
     			
  				<span style="font-size: 16px; text-align: left;">Academic Secretary</span>
  				<span style="font-size: 16px; float: right;">Director of Studies</span>
  
  				
	</div>
    
 --> 
    
    
    
    
   
   <!-- 
   <div class="last_footer">
   
   			<div style="text-align: right;">
   				<img src="images/sign.jpeg" width="150" height="50">
  				<p style="font-size: 16px;">Director of Studies</p>
			</div>
			
   			<div style="margin-bottom: 100px;">
  				<img src="images/sign.jpeg" width="150" height="50">
  				<p style="font-size: 16px;">Academic Secretary</p>
			</div>
  

	</div>
	 -->
	
	
	
</body>
<%


	

}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	  
	}catch(Exception e){
		
		out.println(e.getMessage());
	} 


%>
    
