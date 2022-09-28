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

 int ids = 4;
 String student_id = request.getParameter("student_id");
 String student_name = request.getParameter("student_name");
 String course = request.getParameter("course");
 String email = request.getParameter("email");
 String phone = request.getParameter("phone");
 String gender = request.getParameter("gender");

 
 
 

	try{
 
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/aiti_student_results", "root", "");
	
	PreparedStatement pstm = conn.prepareStatement("insert into csd1_1students values(?,?,?,?,?,?,?)");
	
	pstm.setString(1, student_id);
	pstm.setString(2, course);
	pstm.setString(3, email);
	pstm.setString(4, gender);
	pstm.setInt(5, ids++);
	pstm.setString(6, phone);
	pstm.setString(7, student_name);
	
	
	
	
	pstm.execute();
	
	response.sendRedirect("getCsd1_1ResultPage=VIEw=CSD1.1JJD-DN=STUDENTS-Ndgddh=RESULTS=ios-PAGE-AN-bdb=nnIh-BsPbV=dkdoeyrijfd-cnfs");
	
	}
	catch(Exception e){
	
		out.println(e);
		response.sendRedirect("getIdDulicateErrorPage");
		
	}






%>



</body>
</html>