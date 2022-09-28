package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.integration.CoursesModulesRestClient;
import com.example.demo.integration.CoursesRestClient;
import com.example.demo.integration.ModulesRestClient;
import com.example.demo.integration.dto.Courses;
import com.example.demo.integration.dto.Modules;
import com.example.demo.integration.dto.Staffs;

@Controller
@RequestMapping("/aitiKaceCoursesApiConsumption")
public class CoursesController {

	
	
	@Autowired
	ModulesRestClient modulesRestClient;
	
	
	
	@Autowired
	CoursesRestClient coursesRestClient;
	
	
	@Autowired
	CoursesModulesRestClient coursesModulesRestClient;
	
	
	
	
	
	@RequestMapping(value = "/getAllInstructorNames", method = RequestMethod.GET)
	public String getAllInstructors(ModelMap modelMap) {
		
		
	//Staffs[] retrieveOfAllInstructors = coursesModulesRestClient.getInstructors();
	//modelMap.addAttribute("retrieveOfAllInstructors", retrieveOfAllInstructors);
	
	Staffs[] findAllInstructors = coursesModulesRestClient.getInstructors();
	modelMap.addAttribute("findAllInstructors", findAllInstructors);
	
	
		return "course";
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/getAllCoursesHomePage", method = RequestMethod.GET)
	public String getAllStudentsInfoWithoutAction(Courses getAllCourses,Staffs getAllStaffNames,  ModelMap modelMap) {
		
		
		
	//   RETRIEVAL OF ALL COURSES
		
		Courses[] findAllCourses = coursesRestClient.getAllCourses(getAllCourses);
		modelMap.addAttribute("findAllCourses", findAllCourses);
		

		Staffs[] findAllInstructors = coursesModulesRestClient.getInstructors();
		modelMap.addAttribute("findAllInstructors", findAllInstructors);
			
		return "courses";
		
		
	}	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//  METHOD TO SAVE COURSES 
@RequestMapping("/saveCourses")
public String saveCourses(Courses addCourses) {
	
	
	coursesRestClient.saveCoursesModules(addCourses);
	
	return "redirect: /Frontend_API/aitiKaceCsdResultsApiConsumption/getCourseModuleHomePage";
}	
	
	
	
















// METHOD TO RETRIEVE A SINGLE CSD RESULTS FOR UPDATING

@RequestMapping("/findModulesUnderEachCourseById")
public String findModulesUnderEachCourseById(@RequestParam("id") int id, ModelMap modelMap) {
	
	
	Modules[] getAllModulesUnderEachCourseById = modulesRestClient.findModulesUnderEachCourseById(id);
	modelMap.addAttribute("getAllModulesUnderEachCourseById", getAllModulesUnderEachCourseById);
	
	return "showAllModulesUnderEachCourse";
	
}





// METHOD TO UPDTAE CSD RESULTS
@RequestMapping("/getModulesUnderEachCourseById")
public String updateCsdResults(Modules updateModules, ModelMap modelMap) {
	
	
//	Modules[] getAllModulesUnderEachCourse = modulesRestClient.getCourseNameAndCourseLevel();
//	ModelMap modelMap1 = new ModelMap();
//	modelMap1.addAttribute("getAllModulesUnderEachCourse", getAllModulesUnderEachCourse);
	
	
	return "updateCsd1_1StudentResult";
	
}

	
	
	
	
}
