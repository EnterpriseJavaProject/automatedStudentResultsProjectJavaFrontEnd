<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import = "javax.sql.DataSource" %>
 <%@ page import = "java.sql.*" %>
    
    
  






<%




	try{
		
		
		 String csdEmial = request.getParameter("email");
 
		  Class.forName("com.mysql.cj.jdbc.Driver");
		
		
		
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_project_trials", "root", "");
			Statement stmt = conn.createStatement();
			
		ResultSet rs = stmt.executeQuery("select * from java_project_trials.admission_table where java_project_trials.admission_table.email = '"+csdEmial+"' ");

	

if(rs.next()){
	
	out.println("**Email already exist");

}

	

	
	}
	catch(Exception e){
		
		out.println(e);
		
	}






%>








