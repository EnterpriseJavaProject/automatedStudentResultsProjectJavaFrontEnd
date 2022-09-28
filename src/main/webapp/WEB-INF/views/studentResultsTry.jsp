<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "javax.sql.DataSource" %>
<%@ page import = "java.sql.*" %>

<%






try{


	
	String csdStudent_id = request.getParameter("student_id");
	//String password = request.getParameter("password");
	
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/aiti_student_result", "root", "");
	Statement stmt = conn.createStatement();
	
	
	        // THIS SQL STATEMENT IS FOR ONLY CSD STUDENTS
	                  
	        
ResultSet rs = stmt.executeQuery("select * from aiti_student_result.csd_student_info inner join aiti_student_result.csd_student_results where aiti_student_result.csd_student_info.student_id = aiti_student_result.csd_student_results.student_id and aiti_student_result.csd_student_info.student_id = '"+csdStudent_id+"' ");

									
	if(rs.next()){
		
		
		
		


%>


<!-- 
<img src="logo.png"  align="left"width="150" height="150">
<center><img src="dgi.png" width="150" height="150">
<img src="apj sir.png" align="right"  width="150" height="150"></center>
 -->
 
 
<center> <a href="#" class="logo"><img src="${pageContext.request.contextPath }/resources/images/aiti.png" width="500" height="70"></a> </center>
    <a href="${pageContext.request.contextPath }/aitiStudents/getStudentLoginPage=View=AITI-KACE-STUDENT-RESULTS-LOGIN-PAGE-SJ-DDN-DD-DMNC" style="text-decoration: none;"><img src="${pageContext.request.contextPath }/resources/images/back.png" width="25px" height="25px"></a>
    
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
          <th>institution Name: AITI-KACE</th>
          <th>Student ID: <%= rs.getString(1)  %></th>
          <th>Student Name: <%= rs.getString(7)  %></th>
          <th><center>Course: <%= rs.getString(2)  %></center></th>
        </tr>
      </thead>
      <thead>
        <tr>
         
          <th>Phone: <%= rs.getString(6)  %></th>
          <th>Gender: <%= rs.getString(4)  %></th>
           <th><i style="font-weight: bolder;color:white;">RESULT STATUS:</i> 
           
           <i style="font-weight: bolder;color:yellow;font-size: 20px;">
           		<%	
           		
        		int focResultStatus = rs.getInt(10);
           		int html_cssResultStatus = rs.getInt(11);
           		int javaScriptResultStatus = rs.getInt(13);
           		int seResultStatus = rs.getInt(15);
           		int databaseResultStatus = rs.getInt(9);
           		int pythonResultStatus = rs.getInt(14);
           
				if(focResultStatus >= 50 && html_cssResultStatus >= 50 && javaScriptResultStatus >= 50 && seResultStatus >= 50 && databaseResultStatus >= 50 && pythonResultStatus >= 50){
        		
					out.println("PASS");
					
        		}
				 else{
		            	
	            	  
	            	  out.println("FAIL");
	              }
        			
    
        	%>
           </i>
           
           
           
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
        <td colspan="3" style="color: white;">CERTIFICATE IN SOFTWARE DEVELOPMENT</td>
        <td rowspan="2">Pass Marks</td>
        <td rowspan="2">Your Score</td>
        <td rowspan="2">Grades</td>
        <td rowspan="2">Status</td>
        
      </tr>
      <tr>
      <td colspan="2"> Modules </td>
        <td>Full Marks </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td colspan="2">FUNDAMENTALS OF COMPUTING </td>
        <td>100%</td>
        <td>50%</td>
        <td><%= rs.getInt(10)  %>%</td>
        
        
        <td> 
		<%	
        		int foc1 = rs.getInt(10);
        		if(foc1 >= 0 && foc1 <= 39){
        			out.println("F9");
        		}else if(foc1 >= 40 && foc1 <= 49){
        			out.println("C");
        		}else if(foc1 >= 50 && foc1 <= 59){
        			out.println("B");
        		}else if(foc1 >= 60 && foc1 <= 69){
        			out.println("B+");
        		}else if(foc1 >= 70 && foc1 <= 79){
        			out.println("A");
        		}else if(foc1 >= 80 && foc1 <= 89){
        			out.println("A+");
        		}else if(foc1 >= 90 && foc1 <= 100){
        			out.println("A+");
        		}
    
        	%>
        
         </td>
        
        <td> <% int foc = rs.getInt(10);
        
             if( foc >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
              </td>
         
      </tr>
      
                           <!-- CLOSING TAG FOR FOC TABLE ROW -->
      
      
      <tr>
      <td colspan="2">HTML & CSS</td>
        <td>100%</td>
        <td>50%</td>
        <td><%= rs.getInt(11)  %>% </td>
        <td>
        		<%	
        		int html_css = rs.getInt(11);
        		if(html_css >= 0 && html_css <= 39){
        			out.println("F9");
        		}else if(html_css >= 40 && html_css <= 49){
        			out.println("C");
        		}else if(html_css >= 50 && html_css <= 59){
        			out.println("B");
        		}else if(html_css >= 60 && html_css <= 69){
        			out.println("B+");
        		}else if(html_css >= 70 && html_css <= 79){
        			out.println("A");
        		}else if(html_css >= 80 && html_css <= 89){
        			out.println("A+");
        		}else if(html_css >= 90 && html_css <= 100){
        			out.println("A+");
        		}
    
        	%>
        
        </td>
        <td>
        <% int html_css1 = rs.getInt(11);
        
             if( html_css1 >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
         </td>
      </tr>
      
      <!-- CLOSING TAG FOR HTML AND CSS TABLE ROW -->
      
      
      
      
      <tr>
      <td colspan="2">JAVASCRIPT </td>
        <td>100%</td>
        <td>50%</td>
        <td> <%= rs.getInt(13)  %>%</td>
        <td>         		<%	
        		int javascript = rs.getInt(13);
        		if(javascript >= 0 && javascript <= 39){
        			out.println("F9");
        		}else if(javascript >= 40 && javascript <= 49){
        			out.println("C");
        		}else if(javascript >= 50 && javascript <= 59){
        			out.println("B");
        		}else if(javascript >= 60 && javascript <= 69){
        			out.println("B+");
        		}else if(javascript >= 70 && javascript <= 79){
        			out.println("A");
        		}else if(javascript >= 80 && javascript <= 89){
        			out.println("A+");
        		}else if(javascript >= 90 && javascript <= 100){
        			out.println("A+");
        		}
    
        	%> </td>
        <td> 
        <% int javascript1 = rs.getInt(13);
        
             if( javascript1 >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
        </td>
      </tr>
      
      <!-- CLOSING TAG FOR JAVASCRIPT TABLE ROW -->
      
      
      
      <tr>
        <td colspan="2">SOFTWARE ENGINEERING </td>
        <td>100%</td>
        <td>50%</td>
        <td> <%= rs.getInt(15)  %>%</td>
        <td> <%	
        		int se = rs.getInt(15);
        		if(se >= 0 && se <= 39){
        			out.println("F9");
        		}else if(se >= 40 && se <= 49){
        			out.println("C");
        		}else if(se >= 50 && se <= 59){
        			out.println("B");
        		}else if(se >= 60 && se <= 69){
        			out.println("B+");
        		}else if(se >= 70 && se <= 79){
        			out.println("A");
        		}else if(se >= 80 && se <= 89){
        			out.println("A+");
        		}else if(se >= 90 && se <= 100){
        			out.println("A+");
        		}
    
        	%> </td>
        <td> <% int se1 = rs.getInt(15);
        
             if( se1 >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
        
        </td>
      </tr>
      
      <!-- CLOSING TAG FOR SOFTWARE ENEGNEERING TABLE ROW -->
      
      
      
      
      <tr>
      <td colspan="2">DATABASE TECHNOLOGY(ORACLE)</td>
        <td>100%</td>   
        <td>50%</td>
        <td> <%= rs.getInt(9)  %>% </td>
        <td> <%	
        		int database = rs.getInt(9);
        		if(database >= 0 && database <= 39){
        			out.println("F9");
        		}else if(database >= 40 && database <= 49){
        			out.println("C");
        		}else if(database >= 50 && database <= 59){
        			out.println("B");
        		}else if(database >= 60 && database <= 69){
        			out.println("B+");
        		}else if(database >= 70 && database <= 79){
        			out.println("A");
        		}else if(database >= 80 && database <= 89){
        			out.println("A+");
        		}else if(database >= 90 && database <= 100){
        			out.println("A+");
        		}
    
        	%> </td>
        <td> 
        <% int database1 = rs.getInt(9);
        
             if( database1 >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
        
         </td>
      </tr>
      
      <!-- CLOSING TAG FOR DATABASE TABLE ROW -->
      
      
      
      <tr>
        <td colspan="2">PYTHON</td>
        <td>100%</td>
        <td>50%</td>
        <td> <%= rs.getInt(14)  %>% </td>
        <td>  <%	
        		int python = rs.getInt(14);
        		if(python >= 0 && python <= 39){
        			out.println("F9");
        		}else if(python >= 40 && python <= 49){
        			out.println("C");
        		}else if(python >= 50 && python <= 59){
        			out.println("B");
        		}else if(python >= 60 && python <= 69){
        			out.println("B+");
        		}else if(python >= 70 && python <= 79){
        			out.println("A");
        		}else if(python >= 80 && python <= 89){
        			out.println("A+");
        		}else if(python >= 90 && python <= 100){
        			out.println("A+");
        		}
    
        	%> </td>
        <td> 
        <% int python1 = rs.getInt(14);
        
             if( python1 >= 50){
        	
            	 out.println("Pass");
            	
          
              }
              
              else{
            	
            	  
            	  out.println("Fail");
              }
             %>
         </td>
      </tr>
      
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
    
