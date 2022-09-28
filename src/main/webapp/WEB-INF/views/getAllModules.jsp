<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "javax.sql.DataSource" %>
 <%@ page import = "java.sql.*" %>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<%



	String aitKaceCourseName = request.getParameter("course_name");
 	String aitKaceStudent_id = request.getParameter("student_id");



 
 
 

	try{
 
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
	
	PreparedStatement pstm = conn.prepareStatement("select modules.course_name, students.name, students.student_id, students.contact, students.gender, modules.module_name, results.marks from students, modules, results, courses WHERE students.course_id = modules.course_id AND students.student_id = results.student_id and courses.id = students.course_id and modules.id = results.module_id and modules.course_name = ?  AND students.student_id = ?");

	
	
	pstm.setString(1, aitKaceCourseName);
	pstm.setString(2, aitKaceStudent_id);
	
	
	
	
	
	pstm.execute();
	
	response.sendRedirect("getAllModuleNames");
	
	}
	catch(Exception e){
		
		out.println(e);
		response.sendRedirect(" errorStudentLoginPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD=nHDNDd-Hf-VDB=CNC-bdb=dndn=dndKH-Kls-Osbn");
		
	}






%>





</body>
</html>