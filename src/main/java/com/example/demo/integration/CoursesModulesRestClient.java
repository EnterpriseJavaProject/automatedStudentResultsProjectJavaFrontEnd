package com.example.demo.integration;

import com.example.demo.integration.dto.CoursesModules;
import com.example.demo.integration.dto.Staffs;

public interface CoursesModulesRestClient {
	
	
	
	

		
		//  SAVE METHOD
		public void saveCoursesModules(CoursesModules addCoursesModules);
		
		
		
			
	//  GET ALL MODULES AND COURSES METHOD
		public CoursesModules[] getAllCoursesModules(CoursesModules getAllCoursesModules);
		
		
		
		
	//  FIND COURSE AND MODULE BY ID METHOD
		public CoursesModules findCoursesModulesById(int findCoursesModulesById);
		
		
		

	//  UPDATE METHOD
		public void updateCoursesModules(CoursesModules updateCoursesModules);
		

		
	//  DELETE METHOD
		public void deleteCoursesModules(int deleteCoursesModules);
		
		
		
		
		
	//  RETRIEVAL OF STAFF NAME FROM STAFF
		//public Staffs[] getStaffName(Staffs getStaffName);
		
		
		
		public CoursesModules countCoursesModules();
	
		
		
		
		
		
		
		
		public Staffs[] getAllStaffNames(Staffs getAllStaffNames);
		
		
		
		
		
		public Staffs[] getInstructors();

}
