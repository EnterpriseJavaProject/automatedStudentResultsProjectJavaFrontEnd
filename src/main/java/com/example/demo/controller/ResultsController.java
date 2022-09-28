package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.integration.CoursesRestClient;
import com.example.demo.integration.ModulesRestClient;
import com.example.demo.integration.ResultsRestClient;
import com.example.demo.integration.dto.Results;

@Controller
@RequestMapping("/aitiKaceResultsApiConsumption")
public class ResultsController {
	
	
	
	
	
	@Autowired
	ModulesRestClient modulesRestClient;
	
	
	@Autowired
	CoursesRestClient coursesRestClient;
	
	
	@Autowired
	ResultsRestClient resultsRestClient;
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/retrieveAllResults", method = RequestMethod.GET)
	public String retrieveAllResults(Results getAllResults, ModelMap modelMap) {
		
	
	
	// GET ALL RESULTS
	
		Results[] findAllResults = resultsRestClient.getAllResults(getAllResults);
		modelMap.addAttribute("findAllResults", findAllResults);
		

		return "resultsHomePage";
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//  METHOD TO SAVE ALL RESULTS
@RequestMapping("/addAllResults")
public String saveAllResults(List<Results> addAllResults) {
	
	
	resultsRestClient.saveResults(addAllResults);
	
	return "resultsHomePage";
	
} 
	
//	@RequestMapping("/addAllResults")
//	public String saveAllResults(@RequestParam("name") String name, @RequestParam("student_id") String student_id, @RequestParam("course_name") String course_name, 
//			@RequestParam("module_name") String module_name, @RequestParam("staff_name") String staff_name, @RequestParam("marks") String marks, Results addAllResults) {		
//		
//	resultsRestClient.addAllResults(addAllResults);
//
//		return "resultsHomePage";
//		
//	}
	
//  METHOD TO SAVE ALL RESULTS
//@RequestMapping("/addAllResults")
//public String saveAllResults(@RequestParam("name") String name, @RequestParam("student_id") String student_id, @RequestParam("course_name") String course_name, 
//	@RequestParam("module_name") String module_name, @RequestParam("staff_name") String staff_name, @RequestParam("marks") String marks, List<Results> saveResults) {
//	
//	
//	resultsRestClient.addAllResults(saveResults);
//	
//	
//	return "resultsHomePage";
//	
//}     




	
	// UPLOAD ALL RESULTS
	
	@RequestMapping("/saveAllResults")
	public String addAllResults(Results getAllResults) {
		
		
	resultsRestClient.getAllResults(getAllResults);

		return "resultsHomePage";
		
	}
	
	
	
	

	
	
//	@RequestMapping(value = "/retrieveAllResults", method = RequestMethod.GET)
//	public String retrieveResults( ModelMap modelMap)  throws SQLException, ClassNotFoundException {
//		
//
//		
//		Class.forName("com.mysql.cj.jdbc.Driver");
//			
//			
//			
//			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
//			Statement stmt = conn.createStatement();
//			
//			ResultSet rs = stmt.executeQuery("SELECT students.student_id, students.name, modules.course_name, modules.module_name, modules.staff_name, results.marks, results.status, results.created_at, results.updated_at from students, modules, results, courses where students.course_id = modules.course_id AND students.student_id = results.student_id and courses.id = students.course_id and modules.id = results.module_id");
//			
//			
//			
//		if(rs.next()){
//			
//				
//				return "resultsHomePage";
//				
//			}
//			
//			else {
//				
//				return "redirect: errorStudentLoginPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD=nHDNDd-Hf-VDB=CNC-bdb=dndn=dndKH-Kls-Osbn";
//				
//			}
//		
//	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	
//	
//	@RequestMapping(value = "/getAllCoursesAndCourseLevel", method = RequestMethod.GET)
//	public String getAllCoursesAndCourseLevel(ModelMap modelMap) {
//		
//	
//	
//	// GET ALL COURSE NAMES AND COURSE LEVEL
//	
//	Courses[] findCourseNameAndCourseLevels = coursesRestClient.getCourseNameAndCourseLevel();
//	modelMap.addAttribute("findCourseNameAndCourseLevels", findCourseNameAndCourseLevels);
//		
//	
//
//
//		return "stduentLoginPage";
//		
//	}
//	
//	
	
	
	
	
	
	
	
	
	
	
	

}
