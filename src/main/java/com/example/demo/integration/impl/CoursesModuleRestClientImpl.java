package com.example.demo.integration.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.example.demo.integration.CoursesModulesRestClient;
import com.example.demo.integration.dto.CoursesModules;
import com.example.demo.integration.dto.Staffs;



@Component
public class CoursesModuleRestClientImpl implements CoursesModulesRestClient {
	
	
	
	RestTemplate restTemplate = new RestTemplate();
	
	
	
	CoursesModules coursesModules = new CoursesModules();
	
	
	
	
	
	
	
	
	
	

	@Override
	public void saveCoursesModules(CoursesModules addCoursesModules) {
		
		coursesModules.setId(addCoursesModules.getId());
		coursesModules.setCourse_name(addCoursesModules.getCourse_name());
		coursesModules.setCourse_level(addCoursesModules.getCourse_level());
		coursesModules.setModule_name(addCoursesModules.getModule_name());
		coursesModules.setModule_code(addCoursesModules.getModule_code());
		coursesModules.setName(addCoursesModules.getName());
		coursesModules.setCourse_start_date(addCoursesModules.getCourse_start_date());
		coursesModules.setCourse_end_date(addCoursesModules.getCourse_end_date());
		coursesModules.setCertificate_issuedate(addCoursesModules.getCertificate_issuedate());
		coursesModules.setStatus(addCoursesModules.getStatus());
		coursesModules.setCreated_at(addCoursesModules.getCreated_at());
		coursesModules.setUpdated_at(addCoursesModules.getUpdated_at());

		restTemplate.postForObject("http://localhost:9090/coursesModules/saveCoursesModules", addCoursesModules, CoursesModules.class);

	}
	
	
	
	

	@Override
	public CoursesModules[] getAllCoursesModules(CoursesModules getAllCoursesModules) {
		
		CoursesModules[] findAllCoursesModules = restTemplate.getForObject("http://localhost:9090/coursesModules/getAllCoursesModules",  CoursesModules[].class);

		
		return findAllCoursesModules;
	}
	
	
	
	

	@Override
	public CoursesModules findCoursesModulesById(int findCoursesModulesById) {
		
		CoursesModules RetrieveCoursesModulesById = restTemplate.getForObject("http://localhost:9090/coursesModules/findCoursesModulesById/" + findCoursesModulesById,  CoursesModules.class);

		
		return RetrieveCoursesModulesById;
	}
	
	
	
	

	@Override
	public void updateCoursesModules(CoursesModules updateCoursesModules) {
	
		Map<String, Integer> params = new HashMap<String, Integer>();
		params.put("id", updateCoursesModules.getId());
		
		restTemplate.put("http://localhost:9090/coursesModules/updateCoursesModules", updateCoursesModules, params);

	}
	
	
	
	

	@Override
	public void deleteCoursesModules(int deleteCoursesModules) {
		
		restTemplate.delete("http://localhost:9090/coursesModules/deleteCoursesModules/" + deleteCoursesModules);

	}
	
	
	
	

//	@Override
//	public Staffs[] getStaffName(Staffs getStaffName) {
//		
//		Staffs[] findAllStaffNames = restTemplate.getForObject("http://localhost:9090/staffs/geStaffName", Staffs[].class);
//		
//		return findAllStaffNames;
//	}

	
	
	
	
	@Override
	public CoursesModules countCoursesModules() {
		
		CoursesModules countAllCoursesModules = restTemplate.getForObject("http://localhost:9090/coursesModules/countCoursesModules", CoursesModules.class);
		
		return countAllCoursesModules;
	}





	@Override
	public Staffs[] getAllStaffNames(Staffs getAllStaffNames) {
		
		Staffs[] findAllStaffNames = restTemplate.getForObject("http://localhost:9090/staffs/getAllStaffs",  Staffs[].class);

		
		
		return findAllStaffNames;
	}





	@Override
	public Staffs[] getInstructors() {
	
		
		Staffs[] getInstructors = restTemplate.getForObject("http://localhost:9090/staffs/getInstructors",  Staffs[].class);

		
		return getInstructors;
	}
	
	
	
	

}
