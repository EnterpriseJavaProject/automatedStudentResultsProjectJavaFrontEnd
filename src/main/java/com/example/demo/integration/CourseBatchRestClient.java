package com.example.demo.integration;

import com.example.demo.integration.dto.CourseBatch;

public interface CourseBatchRestClient {
	
	
	
	

		
		//  SAVE METHOD
		public void saveCourseBatch(CourseBatch addCourses);
		
		
			
	//  GET ALL MODULES AND COURSES METHOD
		public CourseBatch[] getAllCourseBatch(CourseBatch getAllCourseBatch);
		
		
		
		
	//  FIND COURSE AND MODULE BY ID METHOD
		public CourseBatch findCoursesById(int findCoursesById);
		
		
		

	//  UPDATE METHOD
		public CourseBatch updateCourses(CourseBatch updateCourses);
		

		
	//  DELETE METHOD
		public void deleteCourses(int deleteCourses);
		
		
		

		
		
		//  GET ALL COURSE NAME AND COURSE LEVEL
		public CourseBatch[] getCourseNameAndCourseLevel();	
		
		
		
		
		public String[] findModulesUnderEachCourseById(int id);
		
		
		
		
}
