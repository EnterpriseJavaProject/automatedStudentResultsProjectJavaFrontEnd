package com.example.demo.integration;

import java.util.Optional;

import com.example.demo.integration.dto.Modules;
import com.example.demo.integration.dto.Staffs;

public interface ModulesRestClient {
	

	
	
	
	//   RETRIEVAL OF ALL MODULES UNDER EACH COURSE
	public Modules[] findModulesUnderEachCourseById(int id);
	
	
//	
//	
//	//   RETRIEVAL OF ALL MODULES UNDER EACH COURSE
//	public void getAllModulesUnderEachCourse(Modules getAllModulesUnderEachCourse);
//
//		
	
	
	
		//  SAVE METHOD
		public void saveModules(Modules addModules);
		

		
		
			
	//  GET ALL MODULES AND COURSES METHOD
		public Modules[] getAllModules();
		
		
		
		
	//  FIND COURSE AND MODULE BY ID METHOD
		public Modules findModulesById(Long findModulesById);
		
		
		

	//  UPDATE METHOD
		public void updateModules1(Modules updateModules);
		
		
		
		
		//  UPDATE METHOD
		public Modules updateModules(Modules updateModules);
		

		
	//  DELETE METHOD
		public void deleteModules(int deleteModules);
		
		
		
		
		
	//  RETRIEVAL OF STAFF NAME FROM STAFF
		//public Staffs[] getStaffName(Staffs getStaffName);
		
	
		
		
		
		
		
		
		
		public Staffs[] getAllStaffNames(Staffs getAllStaffNames);
		
		
		
		
		
		public Staffs[] getInstructors();
		
		
		
		
		
		public String[] findAllModulesAndCourseLevel();
		
		
		
		// METHOD TO RETRIEVE ALL COURSE NAME UNDER MODULE TABLE
		
		//public Modules[] getCourseNameAndCourseLevel();
		
		
		
		
		public String[] getAllModuleName();
		
		
		
		public String[] retrieveModuleNameAndCourseName(int id);
		
		
		
		
		
		
		
		
		
		
		
		
		public Optional<Modules> findById(Long id);
		
		
		
		
		
		
		

}
