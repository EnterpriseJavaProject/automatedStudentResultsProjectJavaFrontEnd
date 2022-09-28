<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import = "javax.sql.DataSource" %>
 <%@ page import = "java.sql.*" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Results</title>
</head>
<body>




 <table>
 
	
 <tr>
 		<th>STUDENT NAME</th>
 		<th>STUDENT ID</th>
 		<th>MODULE NAME</th>
 		<th>COURSE NAME</th>
 		<th>STAFF NAME</th>
 		<th>MARKS</th>
 
</tr>


<%



String id = request.getParameter("id");



	try{
 
	
		
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
	
	PreparedStatement pstm = conn.prepareStatement("SELECT DISTINCT students.name, students.student_id, modules.module_name, modules.course_name, staffs.name from students,staffs, courses, modules where students.course_id = courses.id and courses.id = modules.course_id and modules.id = ? GROUP by students.student_id ORDER BY modules.id");

	
	pstm.setString(1, id);
	
	
	ResultSet rs = pstm.executeQuery();
	
	while(rs.next()) {
		
		rs.getString(1);
		rs.getString(2);
		rs.getString(3);
		rs.getString(4);
		rs.getString(5);
		
		
		
		%>
		
		
		
		<tr>
		
			<td> <%= rs.getString(1) %> </td>
			<td> <%= rs.getString(2) %> </td>
			<td> <%= rs.getString(3) %> </td>
			<td> <%= rs.getString(4) %></td>
			<td> <%= rs.getString(5) %></td>
			<td> <input type="text"> </td>
		
		</tr>
		
		
		<%
		
		
		
		

	}
	
	
	
	
	pstm.execute();
	
	
	}
	catch(Exception e){
		
		out.println(e);
	
		
	}






%>




 </table>





</body>
</html>