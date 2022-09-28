<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "javax.sql.DataSource" %>
<%@ page import = "java.sql.*" %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>
</head>
<body>



<%




String student_id = request.getParameter("student_id");
String course_level = request.getParameter("course_level");



try{

Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/aiti_student_result", "root", "");
Statement stmt = conn.createStatement();




PreparedStatement pstm = conn.prepareStatement("select student_id,student_name,course_level,foc,html_css,javascript,se,database_tec,python from csd_student_info, csd_student_results where student_id = ? and course_level = ?");

pstm.setString(1, student_id);
pstm.setString(2, course_level);




           
ResultSet rs = pstm.executeQuery();


						
if(rs.next()){
	
	
	out.println(rs.getString(1) + rs.getString(2) + rs.getString(3) + rs.getInt(4) + rs.getInt(5) + rs.getInt(6) + rs.getInt(7) + rs.getInt(8) + rs.getInt(9) );
}





}catch(Exception e){
	
	out.println(e.getMessage());
} 


%>






</body>
</html>