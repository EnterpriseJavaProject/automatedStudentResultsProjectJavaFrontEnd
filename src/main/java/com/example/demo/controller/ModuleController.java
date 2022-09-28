package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.integration.AitiKaceStudentsRestClient;
import com.example.demo.integration.CourseBatchRestClient;
import com.example.demo.integration.CoursesModulesRestClient;
import com.example.demo.integration.CoursesRestClient;
import com.example.demo.integration.ModulesRestClient;
import com.example.demo.integration.ResultsRestClient;
import com.example.demo.integration.dto.Courses;
import com.example.demo.integration.dto.Modules;
import com.example.demo.integration.dto.Results;
import com.example.demo.integration.dto.Staffs;

@Controller
@RequestMapping("/aitiKaceModulesApiConsumption")
public class ModuleController {
	
	
	
	@Autowired
	ModulesRestClient modulesRestClient;
	
	
	@Autowired
	CoursesRestClient coursesRestClient;
	
	
	@Autowired
	CoursesModulesRestClient coursesModulesRestClient;
	
	
	@Autowired
	AitiKaceStudentsRestClient aitiKaceStudentsRestClient;
	
	
	@Autowired
	ResultsRestClient resultsRestClient;
	
	
	@Autowired
	CourseBatchRestClient courseBatchRestClient;
	
	
	
           



	@RequestMapping(value = "/getAllModulesHomePage", method = RequestMethod.GET)
	public String getAllStudentsInfoWithoutAction(Long id, ModelMap modelMap) {
		

		
		Modules[] getAllModules = modulesRestClient.getAllModules();
		modelMap.addAttribute("getAllModules", getAllModules);
		
		
	// GET ALL COURSE NAMES AND COURSE LEVEL
		Courses[] findCourseNameAndCourseLevel = coursesRestClient.getCourseNameAndCourseLevel();
		modelMap.addAttribute("findCourseNameAndCourseLevel", findCourseNameAndCourseLevel);
		


	Staffs[] retrieveOfAllInstructors = coursesModulesRestClient.getInstructors();
	modelMap.addAttribute("retrieveOfAllInstructors", retrieveOfAllInstructors);


		return "modules";
		
	}	
	
	




	
//  METHOD TO SAVE  MODULES
@RequestMapping("/saveModules")
public String saveCsdResults(Modules addModules) {
	
	
	modulesRestClient.saveModules(addModules);
	
	return "redirect: /Frontend_API/aitiKaceCsdResultsApiConsumption/getCourseModuleHomePage";
}
	
	
	
	




//@RequestMapping("/showAllStudentResults")
//public String showAllStudentResults(Modules addModules) {
//	
//	return "saveAllResults";
//	
//}





@RequestMapping("/showAllStudentResults" )
public String insertIntoStudentNameIDandCourseIdIntoResults(@RequestParam("id") Long id, ModelMap modelMap) {

	
	resultsRestClient.insertIntoStudentNameIDandCourseIdIntoResults(id);
	
	Results[] retrieveAllStudentsUnderResults = resultsRestClient.retrieveAllStudentsUnderResults(id);
	modelMap.addAttribute("retrieveAllStudentsUnderResults", retrieveAllStudentsUnderResults);
	
	return "try";
	
}



@RequestMapping("/updateStudentResults" )
public String updateStudentResults(@RequestParam("id") Long id, ModelMap modelMap) {

	Results[] updateStudentResults = resultsRestClient.retrieveAllStudentsUnderResults(id);
	modelMap.addAttribute("updateStudentResults", updateStudentResults);

	//resultsRestClient.insertIntoStudentNameIDandCourseIdIntoResults(id);
	
	return "updateResults";
	
}


//@RequestMapping("/retrieveAllStudentsUnderResults" )
//public String retrieveAllStudentsUnderResults(@RequestParam("id") Long id, ModelMap modelMap) {
//
//	
//
//
//	
//	return "try";
//	
//}












//METHOD TO SAVE  RESULTS
@RequestMapping("/saveResults")
public String saveResults(List<Results> addAllResults) {


	resultsRestClient.saveResults(addAllResults);

return "redirect: Frontend_API/aitiKaceModulesApiConsumption/getAllModulesHomePage";

}









//@RequestMapping("/showAllStudentResults" )
//public String showAllStudentResults(@RequestParam("id") Long id, ModelMap modelMap) {
//	
//	StudentProfile[] retrieveAllResults = aitiKaceStudentsRestClient.retrieveAllResults(id);
//	modelMap.addAttribute("retrieveAllResults", retrieveAllResults);
//	
//
//	Results[] retrieveAllStudentsUnderResults = resultsRestClient.retrieveAllStudentsUnderResults(id);
//	modelMap.addAttribute("retrieveOnlyMarks", retrieveAllStudentsUnderResults);
//	
//	return "redirect: ";
//	
//}





//@ModelAttribute("retrieveModuleNameAndCourseName")
////@RequestMapping("/showAllStudentResults/{id}")
//public String showAllStudentResults(@PathVariable("id") int id, ModelMap modelMap) {
//	
//	 modulesRestClient.retrieveModuleNameAndCourseName(id);
//	//modelMap.addAttribute("retrieveModuleNameAndCourseName", retrieveModuleNameAndCourseName);
//	
//	
//	return "saveAllResults";
//	
//}












	

	
	
	
	
	
	
//	@RequestMapping(value = "/getAllInstructors", method = RequestMethod.GET)
//	public String getAllInstructors(ModelMap modelMap) {
//		
//	
//	Staffs[] retrieveOfAllInstructors = coursesModulesRestClient.getInstructors();
//	modelMap.addAttribute("retrieveOfAllInstructors", retrieveOfAllInstructors);
//	
//	
//		return "courses";
//		
//	}
//	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/getStudentLoginPage=View=AITI-KACE-STUDENT-RESULTS-LOGIN-PAGE-SJ-DDN-DD-DMNC", method = RequestMethod.GET)
	public String findAllCourseNameAndCourseLevel(ModelMap modelMap) {

	
		
	// GET ALL COURSE NAMES AND COURSE LEVEL
	
		Courses[] findCourseNameAndCourseLevel = coursesRestClient.getCourseNameAndCourseLevel();
		modelMap.addAttribute("findCourseNameAndCourseLevel", findCourseNameAndCourseLevel);
		
	
	
		return "studentLoginPage";
		
	}
	
	
	
	
	
	
	
	
	
//	
//	@RequestMapping(value = "/getAllModulesHomePage", method = RequestMethod.GET)
//	public String getAllStudentsInfoWithoutAction(Modules getAllModules,Courses getCourseNameAndCourseLevel, ModelMap modelMap) {
//		
//		
//		//   RETRIEVAL OF ALL MODULES
//		
//		Modules[] findAllModules = modulesRestClient.getAllModules(getAllModules);
//		modelMap.addAttribute("findAllModules", findAllModules);
//		
//		
//		// GET ALL COURSE NAMES AND COURSE LEVEL
//		
//		Courses[] findCourseNameAndCourseLevel = coursesRestClient.getCourseNameAndCourseLevel();
//		modelMap.addAttribute("findCourseNameAndCourseLevel", findCourseNameAndCourseLevel);
//		
//		
//		
//		//  RETRIEVAL OF ONLY INSTRUCTORS NAMES
//		
//		Staffs[] retrieveOfAllStaffName = coursesModulesRestClient.getInstructors();
//		modelMap.addAttribute("retrieveOfAllStaffName", retrieveOfAllStaffName);
//		
//		
//		
//	//  RETRIEVAL OF ONLY COURSE NAMES AND COURSE LEVEL
//		String[] getAllModulesAndCourseLevel = modulesRestClient.findAllModulesAndCourseLevel();
//		modelMap.addAttribute("getAllModulesAndCourseLevel", getAllModulesAndCourseLevel);
//		
//		
//		return "modules";
//		
//		
//	}	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	

}
