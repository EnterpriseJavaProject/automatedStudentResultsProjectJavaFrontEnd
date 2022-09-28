<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import = "javax.sql.DataSource" %>
 <%@ page import = "java.sql.*" %>
    
    
    




<%




	try{
		
		
		 String aitiKaceStaff_id = request.getParameter("staff_id");
 
		  Class.forName("com.mysql.cj.jdbc.Driver");
		
		
		
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
			Statement stmt = conn.createStatement();
			
		ResultSet rs = stmt.executeQuery("select * from staffs where staffs.staff_id = '"+aitiKaceStaff_id+"' ");

			
	

if(rs.next()){
	
	out.println("**Staff ID already exist");

}

	

	
	}
	catch(Exception e){
		
		out.println(e);
		
	}






%>





