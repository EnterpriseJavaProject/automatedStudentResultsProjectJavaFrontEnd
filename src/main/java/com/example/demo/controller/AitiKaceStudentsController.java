package com.example.demo.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.integration.AitiKaceStudentsRestClient;
import com.example.demo.integration.CourseBatchRestClient;
import com.example.demo.integration.CoursesRestClient;
import com.example.demo.integration.ModulesRestClient;
import com.example.demo.integration.ResultsRestClient;
import com.example.demo.integration.dto.CourseBatch;
import com.example.demo.integration.dto.Courses;
import com.example.demo.integration.dto.Modules;
import com.example.demo.integration.dto.Results;
import com.example.demo.integration.dto.StudentProfile;






@Controller
@RequestMapping("/aitiKaceStudentsApiConsumption")
public class AitiKaceStudentsController {
	
	
	
	
	@Autowired
	AitiKaceStudentsRestClient aitiKaceStudentsRestClient;
	
	
	
	
	@Autowired
	ModulesRestClient modulesRestClient;
	
	
	
	
	@Autowired
	CoursesRestClient coursesRestClient;
	
	
	@Autowired
	CourseBatchRestClient courseBatchRestClient;
	
	
	@Autowired
	ResultsRestClient resultsRestClient;
	
	
	
	
	
	
	//  ADMIN HOMEPAGE
//  METHODS TO RETRIEVE ALL STUDENT RECORDS WITHOUT ACTIONS
	
@RequestMapping(value = "/getStudentsHomePage", method = RequestMethod.GET)
public String getAllStudentsInfoWithoutAction(StudentProfile findAllStudentInfos,  ModelMap modelMap) {
	
	
	StudentProfile[] allAitiKaceStudentsObject = aitiKaceStudentsRestClient.findAllStudentInfos(findAllStudentInfos);
	modelMap.addAttribute("allAitiKaceStudents", allAitiKaceStudentsObject);
	

	
	//CourseBatch[] findAllCourseNameAndCourseLevel = courseBatchRestClient.getCourseNameAndCourseLevel();
	//modelMap.addAttribute("findAllCourseNameAndCourseLevel", findAllCourseNameAndCourseLevel);
	
	return "csd1_2";
	
	
}









	
	
	
	@RequestMapping(value = "/getStudentNameAndStudentIDPage", method = RequestMethod.GET)
	public String getAllStudentsInfoWithoutAction(ModelMap modelMap) {		
		
		
	// GET ALL COURSE NAMES AND COURSE LEVEL

		StudentProfile[] findStudentNameAndStudentID = aitiKaceStudentsRestClient.getStudentNameAndStudentID();
	modelMap.addAttribute("findStudentNameAndStudentID", findStudentNameAndStudentID);
	

//	Staffs[] retrieveOfAllInstructors = coursesModulesRestClient.getInstructors();
//	modelMap.addAttribute("retrieveOfAllInstructors", retrieveOfAllInstructors);


		return "addResultsHomePage";
		
	}	
	
	
	
	
	
	
//	@RequestMapping(value = "/getStudentLoginPage", method = RequestMethod.GET)
//	public String findAllCourseNameAndCourseLevel(ModelMap modelMap) {
//
//	
//		
//	// GET ALL COURSE NAMES AND COURSE LEVEL
//	
//	Modules[] getAllCourseNameAndCourseLevel = modulesRestClient.getCourseNameAndCourseLevel();
//	modelMap.addAttribute("getAllCourseNameAndCourseLevel", getAllCourseNameAndCourseLevel);
//		
//	
//	
//		return "studentLoginPage";
//		
//	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	












	
//METHODS TO RETRIEVE ALL STUDENT RECORDS FOR ACTIONS

@RequestMapping(value = "/getAllStudentsInfoForAction=JhThoso=kOgssR-VcGh-DN-OSPS-OpBv-kHTTT=JK-Yo=hDGD-Nod", method = RequestMethod.GET)
public String getAllStudentsInfoForAction(StudentProfile findAllStudentInfos,  ModelMap modelMap) {


StudentProfile[] allAitiKaceStudentsObject = aitiKaceStudentsRestClient.findAllStudentInfos(findAllStudentInfos);
modelMap.addAttribute("allAitiKaceStudents", allAitiKaceStudentsObject);

return "adminActionUpdatePage";


}	
	
	
	
	
	
	
	






//METHOD TO RETRIEVE ALL STUDENT NAMES
@RequestMapping(value = "/getAllAitiKaceStudentNames", method = RequestMethod.GET)
public String findAllStudentNames(StudentProfile retrieveAllStudentNames,  ModelMap modelMap) {
	
	
	StudentProfile[] findnRetrieveAllStudentNames = aitiKaceStudentsRestClient.findAllStudentNames(retrieveAllStudentNames);
	modelMap.addAttribute("findnRetrieveAllStudentNames", findnRetrieveAllStudentNames);
	
	return "addStudentResults";
}
	



  //  METHOD TO SAVE STUDENT INFO
@RequestMapping("/saveStudents")
public String saveAitiKaceStudent(StudentProfile addStudentInfo) {
	
	
	aitiKaceStudentsRestClient.saveStudentInfo(addStudentInfo);
	
	//aitiKaceStudentsRestClient.sendingStudentsWelcomeEmailAfterBeingAdmitted(addStudentInfo);
	
	return "redirect: /Frontend_API/aitiKaceCsdResultsApiConsumption/getCourseModuleHomePage";
}
	
	
	
	
	
	










// METHOD TO RETRIEVE A SINGLE STUDENT INFO FOR UPDATING

//@RequestMapping(value = "/getAitiKaceStudentById=SaMEmE=HsuSGS-MlsjHS-DN-aDDF-Fdddde-sAmKoG=SmO-sLnINbds=LonCrshs-bBidbdd/{id}", method = RequestMethod.GET)
//public String getAitiKaceStudentById(@RequestParam("id") Long findStudentInfoById) {
//	
//	
//	aitiKaceStudentsRestClient.findStudentInfoById(findStudentInfoById);
//	
//	return "updateAitiKaceStudentInfo";
//	
//}














// METHOD TO UPDTAE STUDENT INFO
//@RequestMapping("/editAitiKaceStudentInfo=VIEw=aLlsTudENTs-hBSIS=STUDENTS-GbsGhHS=PAGE-hGhgKg=VGSN=Vhanxjjj-hsdSBDSHNDHNNDH-Gh=yOPPJD")
//public String updateCsd1_1Student(StudentProfile updateStudentInfo) {
//	
//	
//	aitiKaceStudentsRestClient.updateStudentInfo(updateStudentInfo);
//	
//	return "redirect: /aitiKaceAdminApiConsumption/getAllStudentsInfoForAction=JhThoso=kOgssR-VcGh-DN-OSPS-OpBv-kHTTT=JK-Yo=hDGD-Nod";
//}













// METHOD TO DELETE STUDENT INFO
//@RequestMapping("/deleteAitiKaceStudentInfo=VIEw=dELetEsTudENTs-hBSIS=STUDENTS-GbsGhHS=PAGE-hGhgKg=VGSN=Vhanxjjj-hsdSBDSHNDHNNDH-Gh=yOPPJD")
//public String deleteAitiKaceStudentInfo(@RequestParam("id") Long deleteStudentInfo) {
//	
//	
//	aitiKaceStudentsRestClient.deleteStudentInfo(deleteStudentInfo);
//	
//	return "redirect: /aitiKaceAdminApiConsumption/getAllStudentsInfoForAction=JhThoso=kOgssR-VcGh-DN-OSPS-OpBv-kHTTT=JK-Yo=hDGD-Nod";
//}













































@RequestMapping("/getAdminLoginPage=VIEW=AITI-KACE-STUDENT-ADMIN-LOGIN-PAGE=iDH-Fimbngv=SIDFF++Iobddcn=dbbdhsSDHD")
public String getAdminLoginPage() {

	return "adminLoginPage";

}



@RequestMapping("/getAdminLoginErrorPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD")
public String getAdminLoginErrorPage() {

	return "errorAdminLogin";
}




@RequestMapping("/getStudentLoginPage=View=AITI-KACE-STUDENT-RESULTS-LOGIN-PAGE-SJ-DDN-DD-DMNC")
public String getStudentLoginPage(ModelMap modelMap) {

	
	
//	Modules[] getAllCourseNameAndCourseLevel = modulesRestClient.getCourseNameAndCourseLevel();
//	modelMap.addAttribute("getAllCourseNameAndCourseLevel", getAllCourseNameAndCourseLevel);
	
	Courses[] getAllCourseNameAndCourseLevel = coursesRestClient.getCourseNameAndCourseLevel();
	modelMap.addAttribute("getAllCourseNameAndCourseLevel", getAllCourseNameAndCourseLevel);	
	
	
	return "stduentLoginPage";

}






//
//@RequestMapping(value="callAllModules", method = RequestMethod.GET)
//public String getCallAllModules (@RequestParam("course_name") String course_name,  @RequestParam("student_id") String student_id)  {
//	
//
//	return "getAllModules";
//}
//
//
//






//
//@RequestMapping("getAllModuleNames")
//public String getAllModules( @RequestParam("course_name") String course_name,  @RequestParam("student_id") String student_id) throws SQLException, ClassNotFoundException {
//	
//	
//	String aitKaceCourseName = course_name;
//	String aitKaceStudent_id = student_id;
//	
//	Class.forName("com.mysql.cj.jdbc.Driver");
//	
//	
//	
//	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
//	Statement stmt = conn.createStatement();
//	
//	ResultSet rs = stmt.executeQuery("SELECT modules.course_name, students.name, students.student_id, students.contact, students.gender, modules.module_name, results.marks,courses.course_name from students, modules, results, courses WHERE students.course_id = modules.course_id AND students.student_id = results.student_id and courses.id = students.course_id and modules.id = results.module_id and modules.course_name = '"+aitKaceCourseName+"'  AND students.student_id = '"+aitKaceStudent_id+"' ");
//	
//	
//if(rs.next()){
//		
//		return "studentResults";
//		
//	}
//	
//	else {
//		
//		return "redirect: errorStudentLoginPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD=nHDNDd-Hf-VDB=CNC-bdb=dndn=dndKH-Kls-Osbn";
//		
//	}
//
//
//
//}
//
//







//@RequestMapping(value = "studentResultsSearch", method = RequestMethod.GET)
//@ModelAttribute("getAllModules")
//public String getCallAllModules ()  {
//	
//	
//
//	modulesRestClient.getAllModuleName();
//	
//	
//	return "studentResults";
//}










//METHOD TO REDIRECT THE STUDENT TO THE RESULTS PAGE IF THE STUDENT ID IS CORRECT

@RequestMapping(value = "studentResultsSearch", method = RequestMethod.POST)
public String studentLoginAction(@RequestParam("student_id") String student_id, @RequestParam("course_name") String course_name ,ModelMap modelMap) throws SQLException, ClassNotFoundException {
	
	
	Courses[] findCourseNameAndCourseLevel = coursesRestClient.getCourseNameAndCourseLevel();
	modelMap.addAttribute("findCourseNameAndCourseLevel", findCourseNameAndCourseLevel);
	
	Results[] findStudentFinalResults = resultsRestClient.searchStudentFinalResults(student_id);
	modelMap.addAttribute("findStudentFinalResults", findStudentFinalResults);
	
	
	
	
//	String[] getAllModules = modulesRestClient.getAllModuleName();
//	modelMap.addAttribute("getAllModules", getAllModules);
//	
	
	
	
	
	String aitKaceStudent_id = student_id;
	String aitKaceCourseName = course_name;
	
	
Class.forName("com.mysql.cj.jdbc.Driver");
	
	
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
	Statement stmt = conn.createStatement();
	
	
	ResultSet rs = stmt.executeQuery(" select modules.course_name, students.name, students.student_id, students.contact, students.gender, students_results.module_name,  students_results.marks, students.date_of_birth from students_results, students, modules WHERE students_results.student_id = students.student_id and students_results.course_id = modules.course_id and students_results.module_id = modules.id and modules.course_name = '"+aitKaceCourseName+"'  AND students_results.student_id = '"+aitKaceStudent_id+"' ");

	
	
	
if(rs.next()){
	


		return "studentResults";
		
	}
	
	else {
		
		return "redirect: errorStudentLoginPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD=nHDNDd-Hf-VDB=CNC-bdb=dndn=dndKH-Kls-Osbn";
		
	}
	
	
	


}





























@RequestMapping("/errorStudentLoginPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD=nHDNDd-Hf-VDB=CNC-bdb=dndn=dndKH-Kls-Osbn")
public String getStudentLoginErrorPage(ModelMap modelMap) {

	
	Courses[] getAllCourseNameAndCourseLevel = coursesRestClient.getCourseNameAndCourseLevel();
	modelMap.addAttribute("getAllCourseNameAndCourseLevel", getAllCourseNameAndCourseLevel);
	
	
	return "errorStudentLogin";
}




@RequestMapping("/homePage")
public String homePage() {

	return "../../index";

}

@RequestMapping(value = "adminLogin", method = RequestMethod.POST)
public String adminLoginAction(@RequestParam("username") String adminUsername, @RequestParam("password") String adminPassword) {

	String username1 = adminUsername;
	String password1 = adminPassword;

	if (username1.equalsIgnoreCase("admin") && password1.equalsIgnoreCase("admin@2020")) {

		return "redirect:getAllStudentInfo=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd";
	} else {

		return "redirect:getAdminLoginErrorPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD";
	}

}
	








@RequestMapping("/getLoginBackHomePage=GO=BACK-TO=HOME-PAGE=ODP-SDSHJD=SDJD-DJSJ=D=Z=O=-SJ-DDN-DD-DMNC")
public String loginBackHomePage() {

	return "index";

}







































//STUDENT ID LIVE VAILDATION

@RequestMapping(value = "getliveValidationOnStudentID", method = RequestMethod.POST)
public String getliveValidationOnStudentID(@RequestParam("student_id") String student_id) throws SQLException, ClassNotFoundException  {
	
	String csdStudent_id = student_id;
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_project_trials", "root", "");
	Statement stmt = conn.createStatement();
	
ResultSet rs = stmt.executeQuery("select * from java_project_trials.admission_table where java_project_trials.admission_table.student_id = '"+csdStudent_id+"' ");

	
	
	if(rs.next()){

		return "liveValidationOnStudentId";
	}
	
	else {
		
		return "liveValidationOnStudentId";
	}
	

	
	
	
}





//
////EMAIL LIVE VALIDATION
//
//@RequestMapping(value = "getliveValidationOnEmail", method = RequestMethod.POST)
//public String getliveValidationOnEmail(@RequestParam("email") String email) throws SQLException, ClassNotFoundException  {
//	
//	String csdEmial = email;
//	
//	
//	Class.forName("com.mysql.cj.jdbc.Driver");
//	
//	
//	
//	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
//	Statement stmt = conn.createStatement();
//	
//ResultSet rs = stmt.executeQuery("select * from java_project_trials.admission_table where java_project_trials.admission_table.email = '"+csdEmial+"' ");
//
//	
//	
//	if(rs.next()){
//
//		return "liveValidationOnEmail";
//	}
//	
//	else {
//		
//		return "liveValidationOnEmail";
//	}
//	
//
//	
//	
//	
//}
//
//
//
//
//
//
//
////PHONE NUMBER LIVE VAILDATION
//
//@RequestMapping(value = "getliveValidationOnPhoneNUmber", method = RequestMethod.POST)
//public String liveValidationOnPhoneNUmber(@RequestParam("phone") String phone) throws SQLException, ClassNotFoundException  {
//	
//	String csdPhone = phone;
//	
//	
//	Class.forName("com.mysql.cj.jdbc.Driver");
//	
//	
//	
//	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
//	Statement stmt = conn.createStatement();
//	
//ResultSet rs = stmt.executeQuery("select * from java_project_trials.admission_table where java_project_trials.admission_table.phone = '"+csdPhone+"' ");
//
//	
//	
//	if(rs.next()){
//
//		return "liveValidationOnPhone";
//	}
//	
//	else {
//		
//		return "liveValidationOnPhone";
//	}
//	
//
//	
//	
//	
//}






}
