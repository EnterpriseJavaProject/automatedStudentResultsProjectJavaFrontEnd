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

import com.example.demo.integration.AitiKaceAdminRestClient;
import com.example.demo.integration.AitiKaceStudentsRestClient;
import com.example.demo.integration.dto.AdminProfile;
import com.example.demo.integration.dto.StudentProfile;







@Controller
@RequestMapping("/aitiKaceAdminApiConsumption")
public class AitiKaceAdminController {
	
	
	
	
	@Autowired
	AitiKaceAdminRestClient aitiKaceAdminRestClient;
	
	
	@Autowired
	AitiKaceStudentsRestClient aitiKaceStudentsRestClient;
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	//  ADMIN HOMEPAGE
//  METHODS TO RETRIEVE ALL STUDENT RECORDS WITHOUT ACTIONS
	
@RequestMapping(value = "/getAllStudentInfo=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd", method = RequestMethod.GET)
public String getAllStudentsInfoWithoutAction(StudentProfile findAllStudentInfos,  ModelMap modelMap) {
	
	
	StudentProfile[] allAitiKaceStudentsObject = aitiKaceStudentsRestClient.findAllStudentInfos(findAllStudentInfos);
	modelMap.addAttribute("allAitiKaceStudents", allAitiKaceStudentsObject);
	
	return "adminActionHomePage";
	
	
}
	
	
	
	
	





//METHODS TO RETRIEVE ALL STUDENT RECORDS FOR ACTIONS

@RequestMapping(value = "/getAllStudentsInfoForAction=JhThoso=kOgssR-VcGh-DN-OSPS-OpBv-kHTTT=JK-Yo=hDGD-Nod", method = RequestMethod.GET)
public String getAllStudentsInfoForAction(StudentProfile findAllStudentInfos,  ModelMap modelMap) {


StudentProfile[] allAitiKaceStudentsObject = aitiKaceStudentsRestClient.findAllStudentInfos(findAllStudentInfos);
modelMap.addAttribute("allAitiKaceStudents", allAitiKaceStudentsObject);

return "adminActionUpdatePage";


}










//METHOD TO RETRIEVE A SINGLE STUDENT INFO FOR UPDATING

@RequestMapping(value = "/getAitiKaceStudentById=SaMEmE=HsuSGS-MlsjHS-DN-aDDF-Fdddde-sAmKoG=SmO-sLnINbds=LonCrshs-bBidbdd", method = RequestMethod.GET)
public String getAitiKaceStudentById(@RequestParam("id") Long findStudentInfoById) {
	
	
	aitiKaceStudentsRestClient.findStudentInfoById(findStudentInfoById);
	
	return "updateAitiKaceStudentInfo";
	
}







// METHOD TO ADD STUDENT INFO

@RequestMapping("/saveAitiKaceStudent=SaMEmE=HsuSGS-MlsjHS-DN-aDDF-Fdddde-sAmKoG=SmO-sLnINbds=LonCrshs-bBidbdd")
public String saveAitiKaceStudent(StudentProfile addStudentInfo) {
	
	
	aitiKaceStudentsRestClient.saveStudentInfo(addStudentInfo);
	
	return "redirect: getAllStudentInfo=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd";
}








//METHOD TO UPDTAE STUDENT INFO
@RequestMapping("/editAitiKaceStudentInfo=VIEw=aLlsTudENTs-hBSIS=STUDENTS-GbsGhHS=PAGE-hGhgKg=VGSN=Vhanxjjj-hsdSBDSHNDHNNDH-Gh=yOPPJD")
public String updateAitiKaceStudentInfo(StudentProfile updateStudentInfo) {
	
	
	aitiKaceStudentsRestClient.updateStudentInfo(updateStudentInfo);
	
	return "redirect: getAllStudentsInfoForAction=JhThoso=kOgssR-VcGh-DN-OSPS-OpBv-kHTTT=JK-Yo=hDGD-Nod";
}













//METHOD TO DELETE STUDENT INFO
@RequestMapping("/deleteAitiKaceStudentInfo=VIEw=dELetEsTudENTs-hBSIS=STUDENTS-GbsGhHS=PAGE-hGhgKg=VGSN=Vhanxjjj-hsdSBDSHNDHNNDH-Gh=yOPPJD")
public String deleteAitiKaceStudentInfo(@RequestParam("id") Long deleteStudentInfo) {
	
	
	aitiKaceStudentsRestClient.deleteStudentInfo(deleteStudentInfo);
	
	return "redirect: getAllStudentsInfoForAction=JhThoso=kOgssR-VcGh-DN-OSPS-OpBv-kHTTT=JK-Yo=hDGD-Nod";
}





























	
	
	
	
	
	
	
	//  ADMIN HOMEPAGE
//  METHODS TO RETRIEVE ALL ADMIN RECORDS WITHOUT ACTIONS
	
@RequestMapping(value = "/getAllAdminInfo=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd", method = RequestMethod.GET)
public String getAllAdminInfoWithoutAction(AdminProfile addAdmin,  ModelMap modelMap) {
	
	
	AdminProfile[] allAitiKaceAdminObject = aitiKaceAdminRestClient.findAllAdmins(addAdmin);
	modelMap.addAttribute("allAitiKaceAdmin", allAitiKaceAdminObject);
	
	return "";
	
	
}
	
	












	
//METHODS TO RETRIEVE ALL ADMIN RECORDS FOR ACTIONS(update, delete)

@RequestMapping(value = "/getAllAdminsInfoForAction=JhThoso=kOgssR-VcGh-DN-OSPS-OpBv-kHTTT=JK-Yo=hDGD-Nod", method = RequestMethod.GET)
public String getAllAdminsInfoForAction(AdminProfile findAllAdmins,  ModelMap modelMap) {


	AdminProfile[] allAitiKaceAdminsObject = aitiKaceAdminRestClient.findAllAdmins(findAllAdmins);
modelMap.addAttribute("allAitiKaceAdmins", allAitiKaceAdminsObject);

return "";


}	
	
	
	
	
	
	
	
	
	




	
	
	
//  METHOD TO SAVE ADMIN INFO
@RequestMapping("/saveAdmin=SaMEmE=HsuSGS-MlsjHS-DN-aDDF-Fdddde-sAmKoG=SmO-sLnINbds=LonCrshs-bBidbdd")
public String saveAdmin(AdminProfile addAdmin) {
	
	
	aitiKaceAdminRestClient.saveAdmin(addAdmin);
	
	return "";
}
	
	
	
	
	
	










// METHOD TO RETRIEVE A SINGLE ADMIN INFO FOR UPDATE

@RequestMapping(value = "/getAitiKaceAdminById=SaMEmE=HsuSGS-MlsjHS-DN-aDDF-Fdddde-sAmKoG=SmO-sLnINbds=LonCrshs-bBidbdd", method = RequestMethod.GET)
public String getAdminById(@RequestParam("id") String findAdminInfoById) {
	
	
	aitiKaceAdminRestClient.findAdminInfoById(findAdminInfoById);
	
	return "";
	
}














// METHOD TO UPDTAE ADMIN INFO
@RequestMapping("/editAitiKaceAdminInfo=VIEw=aLlAdmINs-hBSIS=adMIN-GbsGhHS=PAGE-hGhgKg=VGSN=Vhanxjjj-hsdSBDSHNDHNNDH-Gh=yOPPJD")
public String updateAdmin(AdminProfile updateAdmin) {
	
	
	aitiKaceAdminRestClient.updateAdmin(updateAdmin);
	
	return "";
}













// METHOD TO DELETE ADMIN INFO
@RequestMapping("/deleteAdminInfo=VIEw=aLlAdmINs-hBSIS=adMIN-GbsGhHS=PAGE-hGhgKg=VGSN=Vhanxjjj-hsdSBDSHNDHNNDH-Gh=yOPPJD")
public String deleteAdmin(@RequestParam("id") String deleteAdmin) {
	
	
	aitiKaceAdminRestClient.deleteAdmin(deleteAdmin);
	
	return "";
}













































//   ADMIN AND LECTURER LOGIN PAGE


@RequestMapping("/getAdminAndLecturerLoginPage=VIEW=AITI-KACE-ADMIN-LOGIN-PAGE=iDH-Fimbngv=SIDFF++Iobddcn=dbbdhsSDHD")
public String getAdminAndLecturerLoginPage() {

	return "adminAndLecturerLoginPage";

}



@RequestMapping("/getAdminAndLecturerLoginErrorPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD")
public String getAdminAndLecturerLoginErrorPage() {

	return "errorAdminAndLecturerLogin";
}




@RequestMapping("/getStudentLoginErrorPage")
public String getStudentLoginErrorPage() {

	return "errorStudentLogin";
}




@RequestMapping("/homePage")
public String homePage() {

	return "../../index";

}

@RequestMapping(value = "getAdminAndLecturerLogin=VIEW=adMIN-PAGE=iDH-MMihhds=SIDFF-djIhd=mOiJD=JDHD", method = RequestMethod.POST)
public String adminAndLecturerLoginAction(@RequestParam("username") String adminUsername, @RequestParam("password") String adminPassword) {

	String username1 = adminUsername;
	String password1 = adminPassword;

	if (username1.equalsIgnoreCase("aitiKace") && password1.equalsIgnoreCase("OpenforMe")) {

		return "redirect:/aitiKaceStudentsApiConsumption/getAllStudentInfo=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd";
	} 
	
	else if(username1.equalsIgnoreCase("admin") && password1.equalsIgnoreCase("admin@2020")) {
		
		return "redirect: getAllStudentInfo=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd";
	}
	
	
	else {

		return "redirect:getAdminAndLecturerLoginErrorPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD";
	}
	

}
	








@RequestMapping("/getLoginBackHomePage=GO=BACK-TO=HOME-PAGE=ODP-SDSHJD=SDJD-DJSJ=D=Z=O=-SJ-DDN-DD-DMNC")
public String loginBackHomePage() {

	return "index";

}





















//   ADMIN LOGIN PAGE


@RequestMapping("/getAdminLoginPage=VIEW=AITI-KACE-ADMIN-LOGIN-PAGE=iDH-Fimbngv=SIDFF++Iobddcn=dbbdhsSDHD")
public String getAdminLoginPage() {

	return "adminLoginPage";

}



@RequestMapping("/getAdminLoginErrorPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD")
public String getAdminLoginErrorPage() {

	return "errorAdminUpdateAuthentication";
}




@RequestMapping(value = "getAdminLogin=VIEW=adMIN-PAGE=iDH-MMihhds=SIDFF-djIhd=mOiJD=JDHD", method = RequestMethod.POST)
public String adminLoginAction(@RequestParam("username") String adminUsername, @RequestParam("password") String adminPassword) {

	String username1 = adminUsername;
	String password1 = adminPassword;

	if (username1.equalsIgnoreCase("admin") && password1.equalsIgnoreCase("admin@2020")) {

		return "redirect: getAllStudentsInfoForAction=JhThoso=kOgssR-VcGh-DN-OSPS-OpBv-kHTTT=JK-Yo=hDGD-Nod";
	} else {

		return "redirect:getAdminLoginErrorPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD";
	}

}











@RequestMapping("/getAdminActionHomePage=VIEW=aDmIN-PAGE=iDH-Fimbngv=SIDFF-hOmEPAge=nmHfKg=JDHD")
public String getAdminActionHomePage() {

	return "adminActionHomePage";
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






//EMAIL LIVE VALIDATION

@RequestMapping(value = "getliveValidationOnEmail", method = RequestMethod.POST)
public String getliveValidationOnEmail(@RequestParam("email") String email) throws SQLException, ClassNotFoundException  {
	
	String csdEmial = email;
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_project_trials", "root", "");
	Statement stmt = conn.createStatement();
	
ResultSet rs = stmt.executeQuery("select * from java_project_trials.admission_table where java_project_trials.admission_table.email = '"+csdEmial+"' ");

	
	
	if(rs.next()){

		return "liveValidationOnEmail";
	}
	
	else {
		
		return "liveValidationOnEmail";
	}
	

	
	
	
}







//PHONE NUMBER LIVE VAILDATION

@RequestMapping(value = "getliveValidationOnPhoneNUmber", method = RequestMethod.POST)
public String liveValidationOnPhoneNUmber(@RequestParam("phone") String phone) throws SQLException, ClassNotFoundException  {
	
	String csdPhone = phone;
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_project_trials", "root", "");
	Statement stmt = conn.createStatement();
	
ResultSet rs = stmt.executeQuery("select * from java_project_trials.admission_table where java_project_trials.admission_table.phone = '"+csdPhone+"' ");

	
	
	if(rs.next()){

		return "liveValidationOnPhone";
	}
	
	else {
		
		return "liveValidationOnPhone";
	}
	

	
	
	
}








}
