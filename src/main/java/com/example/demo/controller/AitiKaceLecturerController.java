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

import com.example.demo.integration.AitiKaceLecturersRestClient;
import com.example.demo.integration.dto.LecturerProfile;





@Controller
@RequestMapping("/aitiKaceModulesCoursesApiConsumption")
public class AitiKaceLecturerController {
	
	
	
	
	@Autowired
	AitiKaceLecturersRestClient aitiKaceLecturersRestClient;
	
	
	
	
	
	
	
	
	

//  METHODS TO RETRIEVE ALL LECTURERS RECORDS FOR ACTIONS(update, delete)
	
@RequestMapping(value = "/getAllLecturersInfoWithoutAction=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd", method = RequestMethod.GET)
public String getAllLecturersInfoWithoutAction(LecturerProfile findAllLecturers,  ModelMap modelMap) {
	
	
	LecturerProfile[] allAitiKaceLecturesObject = aitiKaceLecturersRestClient.findAllLecturers(findAllLecturers);
	modelMap.addAttribute("allAitiKaceLecturers", allAitiKaceLecturesObject);
	
	return "adminLecturerProfile";
	
	
}
	
	












	
//METHODS TO RETRIEVE ALL LECTURERS RECORDS WITHOUT ACTIONS(update, delete)

@RequestMapping(value = "/getAllLecturersInfoForAction=JhThoso=kOgssR-VcGh-DN-OSPS-OpBv-kHTTT=JK-Yo=hDGD-Nod", method = RequestMethod.GET)
public String getAllLecturersInfoForAction(LecturerProfile findAllLecturers,  ModelMap modelMap) {


	LecturerProfile[] allAitiKaceLecturesObject = aitiKaceLecturersRestClient.findAllLecturers(findAllLecturers);
	modelMap.addAttribute("allAitiKaceLecturers", allAitiKaceLecturesObject);

return "";


}	
	
	
	
	
	
	
	
	
	




	
	
	
//  METHOD TO SAVE LECTURERS INFO
@RequestMapping("/saveLecturer=SaMEmE=HsuSGS-MlsjHS-DN-aDDF-Fdddde-sAmKoG=SmO-sLnINbds=LonCrshs-bBidbdd")
public String saveLecturer(LecturerProfile addLecturer) {
	
	
	aitiKaceLecturersRestClient.saveLecturer(addLecturer);
	
	return "redirect: getAllLecturersInfoWithoutAction=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd";
}
	
	
	
	
	
	










// METHOD TO RETRIEVE A SINGLE LECTURERS INFO FOR UPDATING

@RequestMapping(value = "/getAitiKaceLecturerById=SaMEmE=HsuSGS-MlsjHS-DN-aDDF-Fdddde-sAmKoG=SmO-sLnINbds=LonCrshs-bBidbdd", method = RequestMethod.GET)
public String getLecturerById(@RequestParam("id") Long findLecturerById) {
	
	
	aitiKaceLecturersRestClient.findLecturerById(findLecturerById);
	
	return "updateLecturerProfile";
	
}














// METHOD TO UPDTAE LECTURERS INFO
@RequestMapping("/editAitiKaceLecturerInfo=VIEw=aLlsTudENTs-hBSIS=STUDENTS-GbsGhHS=PAGE-hGhgKg=VGSN=Vhanxjjj-hsdSBDSHNDHNNDH-Gh=yOPPJD")
public String updateLecturer(LecturerProfile updateLecturer) {
	
	
	aitiKaceLecturersRestClient.updateLecturer(updateLecturer);
	
	return "redirect: getAllLecturersInfoWithoutAction=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd";
}













// METHOD TO DELETE LECTURERS INFO
@RequestMapping("/deleteLecturerInfo=VIEw=deLETeCtuRER-hBSIS=lEctUREr-GbsGhHS=PAGE-hGhgKg=VGSN=Vhanxjjj-hsdSBDSHNDHNNDH-Gh=yOPPJD")
public String deleteLecturer(@RequestParam("id") Long deleteLecturer) {
	
	
	aitiKaceLecturersRestClient.deleteLecturer(deleteLecturer);
	
	return "redirect: ";
}


















//METHOD TO ADD STUDENT RESULTS
@RequestMapping("/getAddStudentResultsPage=VIEW=aDd-KACE-stUDent-rESULts-PAGE=iDH-Fimbngv=SIDFF++Iobddcn=dbbdhsSDHD")
public String getAddStudentResultsPage() {

	return "addStudentResults";

}

















// ADMIN AND LECTURER LOGIN METHOD

@RequestMapping(value = "lecturersLoginPage=lOgiNlectURER=AITI-KACE-LECturER-NhfdG-LogHd-PAGE=nHDNDd-Hf-VDB=CNC-bdb=dndn=dndKH-Kls-Osbn", method = RequestMethod.POST)
public String studentLoginAction(@RequestParam("email") String email, @RequestParam("password") String password) throws SQLException, ClassNotFoundException {
	
	
	String adminLecturerEmail = email;
	String adminLecturerPassword = password;
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_project_trials", "root", "");
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("select email,password from lecturer_profile where lecturer_profile.email = '"+adminLecturerEmail+"' and lecturer_profile.password = '"+adminLecturerPassword+"' ");


	
	if(rs.next()){
		
		return "redirect:/aitiKaceStudentsApiConsumption/getAllStudentInfo=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd";
		
	}
	
	else if(adminLecturerEmail.equalsIgnoreCase("admin2021@aiti-kace.com.gh") && adminLecturerPassword.equalsIgnoreCase("admin@2020")) {
		
		return "redirect: /Frontend_API/aitiKaceAdminApiConsumption/getAllStudentInfo=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd";
		
	}

	else {
		
		return "redirect: getAdminAndLecturerLoginErrorPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD";
		
	}


}







@RequestMapping("/getNavBarAdminAndLecturerLoginPage=VIEW=gET-=AdMiN-LeturER=logIn=PAGE=iDH-Fimbngv=SIDFF-pAgE=JDHD")
public String getNavBarAdminAndLecturerLoginPage() {

	return "navBarAdminAndLecturerLogin";
}







	@RequestMapping("/getAdminAndLecturerLoginErrorPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD")
	public String getAdminAndLecturerLoginErrorPage() {

		return "errorAdminAndLecturerLogin";
	}


















//EMAIL LIVE VALIDATION

@RequestMapping(value = "getLecturerLiveValidationOnEmail", method = RequestMethod.POST)
public String getliveValidationOnEmail(@RequestParam("email") String email) throws SQLException, ClassNotFoundException  {
	
	String lecturerEmial = email;
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_project_trials", "root", "");
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("select * from java_project_trials.lecturer_profile where java_project_trials.lecturer_profile.email = '"+lecturerEmial+"' ");

	
	
	if(rs.next()){

		return "liveLecturerValidationOnEmail";
	}
	
	else {
		
		return "liveLecturerValidationOnEmail";
	}
	

	
	
	
}







//PHONE NUMBER LIVE VAILDATION

@RequestMapping(value = "getLecturerLiveValidationOnPhoneNUmber", method = RequestMethod.POST)
public String liveValidationOnPhoneNUmber(@RequestParam("phone") String phone) throws SQLException, ClassNotFoundException  {
	
	String lecturerPhone = phone;
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_project_trials", "root", "");
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("select * from java_project_trials.lecturer_profile where java_project_trials.lecturer_profile.phone = '"+lecturerPhone+"' ");

	
	
	if(rs.next()){

		return "liveLecturerValidationOnPhone";
	}
	
	else {
		
		return "liveLecturerValidationOnPhone";
	}
	

	
	
	
}




}
