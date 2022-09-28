package com.example.demo.integration.impl;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.example.demo.integration.CourseBatchRestClient;
import com.example.demo.integration.dto.CourseBatch;
import com.example.demo.integration.dto.Courses;


@Component
public class CourseBatchRestClientImpl implements CourseBatchRestClient {

	
	
	
	RestTemplate restTemplate = new RestTemplate();
	
	
	CourseBatch courseBatch = new CourseBatch();
	
	
	
	
	
	
	
	@Override
	public void saveCourseBatch(CourseBatch addCourseBatch) {
		
		
		courseBatch.setId(addCourseBatch.getId());
		courseBatch.setCourse_name(addCourseBatch.getCourse_name());
		courseBatch.setCourse_id(addCourseBatch.getCourse_id());
		courseBatch.setCourse_level(addCourseBatch.getCourse_level());
		courseBatch.setCoordinator(addCourseBatch.getCoordinator());
		courseBatch.setCertificate_issuedate(addCourseBatch.getCertificate_issuedate());
		courseBatch.setCourse_start_date(addCourseBatch.getCourse_start_date());
		courseBatch.setCourse_end_date(addCourseBatch.getCourse_end_date());
		courseBatch.setStatus(addCourseBatch.getStatus());
		courseBatch.setCreated_at(addCourseBatch.getCreated_at());
		courseBatch.setUpdated_at(addCourseBatch.getUpdated_at());
		
		
		restTemplate.postForObject("http://localhost:9090/courseBatch/saveCourseBatch", addCourseBatch, Courses.class);

	}

	
	
	
	
	
	

	
	
	
	@Override
	public CourseBatch[] getAllCourseBatch(CourseBatch getAllCourseBatch) {
		
		CourseBatch[] findAllCourseBatch = restTemplate.getForObject("http://localhost:9090/courseBatch/getAllCourseBatches",  CourseBatch[].class);
		
		return findAllCourseBatch;
	}

	
	
	
	
	
	
	
	
	@Override
	public CourseBatch findCoursesById(int findCoursesById) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CourseBatch updateCourses(CourseBatch updateCourses) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteCourses(int deleteCourses) {
		// TODO Auto-generated method stub

	}











	@Override
	public CourseBatch[] getCourseNameAndCourseLevel() {

		CourseBatch[] findAllCourseNameAndCourseLevel = restTemplate.getForObject("http://localhost:9090/courseBatch/getCourseNameAndCourseLevel",  CourseBatch[].class); 
		
		return findAllCourseNameAndCourseLevel;
	}











	@Override
	public String[] findModulesUnderEachCourseById(int id) {
		
		String[] getModulesUnderEachCourseById = restTemplate.getForObject("http://localhost:9090/modules/findModulesUnderEachCourseById/" + id,   String[].class); 
		
		return getModulesUnderEachCourseById;
	}

	
	
	
	
	
	
	
	
	
	
	
}
