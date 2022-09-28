package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.integration.AitiKaceCsdResultsRestClient;
import com.example.demo.integration.CoursesModulesRestClient;
import com.example.demo.integration.CoursesRestClient;
import com.example.demo.integration.ModulesRestClient;
import com.example.demo.integration.StaffRestClient;
import com.example.demo.integration.dto.Courses;
import com.example.demo.integration.dto.CsdResults;
import com.example.demo.integration.dto.Modules;
import com.example.demo.integration.dto.Staffs;





@Controller
@RequestMapping("/aitiKaceCsdResultsApiConsumption")
public class AitiKaceCsdResultsController {
	
	
	
	
	@Autowired
	AitiKaceCsdResultsRestClient aitiKaceCsdResultsRestClient;
	
	
	
	@Autowired
	CoursesModulesRestClient coursesModulesRestClient;
	

	@Autowired
	CoursesRestClient coursesRestClient;
	
	
	@Autowired
	StaffRestClient staffRestClient;
	
	
	
	@Autowired
	ModulesRestClient modulesRestClient;
	

	
	
	
	
//  METHODS TO RETRIEVE ALL STUDENT RECORDS WITHOUT ACTIONS
	
@RequestMapping(value = "/getCourseModuleHomePage", method = RequestMethod.GET)
public String getAllStudentsInfoWithoutAction(Long id, ModelMap modelMap) {
	
	//Modules[] getAllModulesAndCourseLevel = modulesRestClient.getCourseNameAndCourseLevel();
	//modelMap.addAttribute("getAllModules", getAllModulesAndCourseLevel);
	
	
// GET ALL COURSE NAMES AND COURSE LEVEL

Courses[] findCourseNameAndCourseLevel = coursesRestClient.getCourseNameAndCourseLevel();
modelMap.addAttribute("findCourseNameAndCourseLevel", findCourseNameAndCourseLevel);
	


Staffs[] retrieveOfAllInstructors = coursesModulesRestClient.getInstructors();
modelMap.addAttribute("retrieveOfAllInstructors", retrieveOfAllInstructors);


	return "modules";
	
}	
	
	
	
	
	
	
	
	
	
	
//	
//	
////  METHODS TO RETRIEVE ALL STUDENT RECORDS WITHOUT ACTIONS
//	
//@RequestMapping(value = "/getCourseModuleHomePage", method = RequestMethod.GET)
//public String getAllStudentsInfoWithoutAction(Staffs getAllStaffs,  ModelMap modelMap) {
//	
//	
////	CoursesModules[] findAllCoursesModules = coursesModulesRestClient.getAllCoursesModules(getAllCoursesModules);
////	modelMap.addAttribute("findAllCoursesModules", findAllCoursesModules);
//	
//	Staffs[] retrievaAllStaffs = staffRestClient.getAllStaffs(getAllStaffs);
//	modelMap.addAttribute("retrievaAllStaffs", retrievaAllStaffs);
//	
//	
//	Modules[] getAllModulesAndCourseLevel = modulesRestClient.getCourseNameAndCourseLevel();
//	modelMap.addAttribute("getAllModules", getAllModulesAndCourseLevel);
//	
//	
//	Courses[] getAlllCourseNameAndCourseLevel = coursesRestClient.getCourseNameAndCourseLevel();
//	modelMap.addAttribute("getCourseNameAndCourseLevel", getAlllCourseNameAndCourseLevel);
//	
//	//   RETRIEVAL OF ONLY INSTRUCTORS NAMES
//	
////	Staffs[] retrieveOfAllStaffName = coursesModulesRestClient.getInstructors();
////	modelMap.addAttribute("retrieveOfAllStaffName", retrieveOfAllStaffName);
//	
//	
//	//   RETRIEVAL OF ALL STAFF NAMES 
////	
////	Staffs[] findAllStaffName = coursesModulesRestClient.getAllStaffNames(getAllStaffNames);
////	modelMap.addAttribute("findAllStaffNames", findAllStaffName);
////	
//	
//	return "redirect: /Frontend_API/aitiKaceModulesApiConsumption/getAllModulesHomePage";
//	
//	
//}
//
//	
//	
////METHOD TO SAVE  MODULES
//@RequestMapping("/saveStaffs")
//public String saveCsdResults(Staffs saveStaff) {
//
//
//staffRestClient.saveStaff(saveStaff);
//
//return "redirect: /Frontend_API/aitiKaceCsdResultsApiConsumption/getCourseModuleHomePage";
//}	
//	
//	
//	
//	
//	
////@RequestMapping(value = "/findAllStaffs", method = RequestMethod.GET)
////public String getAllStaff(Staffs getAllStaffNames, ModelMap modelMap) {
////	
////	Staffs[] findAllStaffName = coursesModulesRestClient.getAllStaffNames(getAllStaffNames);
////	modelMap.addAttribute("findAllStaffNames", findAllStaffName);
////	
////	return "courseModuleHomePage";
////		
////}
////	
	
	
	
	
	
	
	
	
	
	

//  METHODS TO RETRIEVE ALL CSD RESULTS WITHOUT ACTIONS
	
@RequestMapping(value = "/getAllCsdResults=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd", method = RequestMethod.GET)
public String getAllCsdResultsWithoutAction(CsdResults findAllCsdResults,  ModelMap modelMap) {
	
	
	CsdResults[] allAitiKaceCsdResultsObject = aitiKaceCsdResultsRestClient.findAllCsdResults(findAllCsdResults);
	modelMap.addAttribute("allAitiKaceCsdResults", allAitiKaceCsdResultsObject);
	
	return "";
	
	
}
	
	












	
//METHODS TO RETRIEVE ALL CSD RESULTS FOR ACTIONS(update, delete)

@RequestMapping(value = "/getAllCsdResultsForAction=JhThoso=kOgssR-VcGh-DN-OSPS-OpBv-kHTTT=JK-Yo=hDGD-Nod", method = RequestMethod.GET)
public String getAllCsdResultsForAction(CsdResults findAllCsdResults,  ModelMap modelMap) {


	CsdResults[] allAitiKaceCsdResultsObject = aitiKaceCsdResultsRestClient.findAllCsdResults(findAllCsdResults);
modelMap.addAttribute("allAitiKaceCsdResults", allAitiKaceCsdResultsObject);

return "";


}	
	
	
	
	
	
	
	
	
	




	
	
	
//  METHOD TO SAVE CSD RESULTS
@RequestMapping("/saveCsdResults=SaMEmE=HsuSGS-MlsjHS-DN-aDDF-Fdddde-sAmKoG=SmO-sLnINbds=LonCrshs-bBidbdd")
public String saveCsdResults(CsdResults saveCsdResults) {
	
	
	aitiKaceCsdResultsRestClient.saveCsdResults(saveCsdResults);
	
	return "redirect: ";
}
	
	
	
	
	
	










// METHOD TO RETRIEVE A SINGLE CSD RESULTS FOR UPDATING

@RequestMapping(value = "/getAitiKaceCsdResultsById=SaMEmE=HsuSGS-MlsjHS-DN-aDDF-Fdddde-sAmKoG=SmO-sLnINbds=LonCrshs-bBidbdd", method = RequestMethod.GET)
public String getCsdResultsById(@RequestParam("id") String findCsdResultById) {
	
	
	aitiKaceCsdResultsRestClient.findCsdResultById(findCsdResultById);
	
	return "";
	
}














// METHOD TO UPDTAE CSD RESULTS
@RequestMapping("/editAitiKaceCsdResults=VIEw=aLlsTudENTs-hBSIS=STUDENTS-GbsGhHS=PAGE-hGhgKg=VGSN=Vhanxjjj-hsdSBDSHNDHNNDH-Gh=yOPPJD")
public String updateCsdResults(CsdResults updateCsdResults) {
	
	
	aitiKaceCsdResultsRestClient.updateCsdResults(updateCsdResults);
	
	return "redirect: ";
}













// METHOD TO DELETE CSD RESULTS
@RequestMapping("/deleteCsdResults=VIEw=aLlAdmINs-hBSIS=adMIN-GbsGhHS=PAGE-hGhgKg=VGSN=Vhanxjjj-hsdSBDSHNDHNNDH-Gh=yOPPJD")
public String deleteCsdResults(@RequestParam("id") String deleteCsdResults) {
	
	
	aitiKaceCsdResultsRestClient.deleteCsdResults(deleteCsdResults);
	
	return "redirect: ";
}










}
