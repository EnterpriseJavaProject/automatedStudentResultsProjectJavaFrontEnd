package com.example.demo.integration.impl;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.example.demo.integration.CoursesRestClient;
import com.example.demo.integration.dto.Courses;


@Component
public class CoursesRestClientImpl implements CoursesRestClient {

	
	
	
	RestTemplate restTemplate = new RestTemplate();
	
	
	Courses courses = new Courses();
	
	
	
	
	
	
	
	@Override
	public void saveCoursesModules(Courses addCourses) {
		
		
		courses.setId(addCourses.getId());
		courses.setCourse_name(addCourses.getCourse_name());
		courses.setStatus(addCourses.getStatus());
		courses.setCreated_at(addCourses.getCreated_at());
		courses.setUpdated_at(addCourses.getUpdated_at());
		
		
		restTemplate.postForObject("http://localhost:9090/courses/saveCourses", addCourses, Courses.class);

	}

	
	
	
	
	
	

	
	
	
	@Override
	public Courses[] getAllCourses(Courses getAllCourses) {
		
		Courses[] findAllCourses = restTemplate.getForObject("http://localhost:9090/courses/getAllCourse",  Courses[].class);
		
		return findAllCourses;
	}

	
	
	
	
	
	
	
	
	@Override
	public Courses findCoursesById(int findCoursesById) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Courses updateCourses(Courses updateCourses) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteCourses(int deleteCourses) {
		// TODO Auto-generated method stub

	}











	@Override
	public Courses[] getCourseNameAndCourseLevel() {

	Courses[] findAllCourseNameAndCourseLevel = restTemplate.getForObject("http://localhost:9090/courseBatch/getCourseNameAndCourseLevel",  Courses[].class); 
		
		return findAllCourseNameAndCourseLevel;
	}











	@Override
	public String[] findModulesUnderEachCourseById(int id) {
		
		String[] getModulesUnderEachCourseById = restTemplate.getForObject("http://localhost:9090/modules/findModulesUnderEachCourseById/" + id,   String[].class); 
		
		return getModulesUnderEachCourseById;
	}

	
	
	
	
	
	
	
	
	
	
	
}
