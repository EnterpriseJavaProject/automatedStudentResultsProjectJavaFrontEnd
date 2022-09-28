package com.example.demo.integration;

import com.example.demo.integration.dto.Courses;

public interface CoursesRestClient {
	
	
	
	

		
		//  SAVE METHOD
		public void saveCoursesModules(Courses addCourses);
		
		
			
	//  GET ALL MODULES AND COURSES METHOD
		public Courses[] getAllCourses(Courses getAllCourses);
		
		
		
		
	//  FIND COURSE AND MODULE BY ID METHOD
		public Courses findCoursesById(int findCoursesById);
		
		
		

	//  UPDATE METHOD
		public Courses updateCourses(Courses updateCourses);
		

		
	//  DELETE METHOD
		public void deleteCourses(int deleteCourses);
		
		
		

		
		
		//  GET ALL COURSE NAME AND COURSE LEVEL
		public Courses[] getCourseNameAndCourseLevel();	
		
		
		
		
		public String[] findModulesUnderEachCourseById(int id);
		
		
		
		
}
