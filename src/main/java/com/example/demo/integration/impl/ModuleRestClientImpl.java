package com.example.demo.integration.impl;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.example.demo.integration.ModulesRestClient;
import com.example.demo.integration.dto.Modules;
import com.example.demo.integration.dto.Staffs;



@Component
public class ModuleRestClientImpl implements ModulesRestClient {

	
	
	RestTemplate restTemplate = new RestTemplate();
	
	

	Modules modules = new Modules();



	@Override
	public void saveModules(Modules addModules) {
		
		modules.setId(addModules.getId());
		modules.setCourse_id(addModules.getCourse_id());
		modules.setBatch_id(addModules.getBatch_id());
		modules.setModule_name(addModules.getModule_name());
		modules.setStaff_name(addModules.getStaff_name());
		modules.setStatus(addModules.getStatus());
		modules.setModule_start_date(addModules.getModule_start_date());
		modules.setModule_end_date(addModules.getModule_end_date());
		modules.setCreated_at(addModules.getCreated_at());
		modules.setUpdated_at(addModules.getUpdated_at());
		
		
		restTemplate.postForObject("http://localhost:9090/modules/saveModules", addModules, Modules.class);
		
	}

	
	
	


	@Override
	public Modules[] getAllModules() {
		
		Modules[] findAllModules = restTemplate.getForObject("http://localhost:9090/modules/getAllModules",  Modules[].class);
		
		return findAllModules;
	}
	
	
	
	



	@Override
	public Modules[] findModulesUnderEachCourseById(int id) {
		
		Modules[] getModulesUnderEachCourseById = restTemplate.getForObject("http://localhost:9090/modules/findModulesUnderEachCourseById/" + id,  Modules[].class);
		
		return getModulesUnderEachCourseById;
	}
	
	
	
	
	
	
	
	

	@Override
	public void updateModules1(Modules updateModules) {
		
		Map<String, Long> params = new HashMap<String, Long>();
		params.put("id", updateModules.getId());
		
		restTemplate.put("http://localhost:9090/modules/updateModules", updateModules, params);
	}



	
	



	@Override
	public com.example.demo.integration.dto.Modules findModulesById(Long findModulesById) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public Modules updateModules(Modules updateModules) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public void deleteModules(int deleteModules) {
		// TODO Auto-generated method stub
		
	}






	@Override
	public Staffs[] getAllStaffNames(Staffs getAllStaffNames) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public Staffs[] getInstructors() {
		// TODO Auto-generated method stub
		return null;
	}





	@Override
	public String[] findAllModulesAndCourseLevel() {
		
		
		String[] findAllModulesAndCourseLevel = restTemplate.getForObject("http://localhost:9090/modules/findAllModulesAndCourseLevel",  String[].class);
		
		return findAllModulesAndCourseLevel;
	}





//	@Override
//	public Modules[] getCourseNameAndCourseLevel() {
//		
//		Modules[] getAllCourseNameAndCourseLevel = restTemplate.getForObject("http://localhost:9090/modules/getCourseNameAndCourseLevel",  Modules[].class); 
//		
//		return null;
//	}





	@Override
	public String[] getAllModuleName() {
		
		
		String[] findAllModules = restTemplate.getForObject("http://localhost:9090/modules/getAllModuleNames",  String[].class);
		
		return findAllModules;
	}





	@Override
	public String[] retrieveModuleNameAndCourseName(int id) {
		
		
		String[] getAllStudentResults = restTemplate.getForObject("http://localhost:9090/modules/retrieveModuleNameAndCourseName/" + id,  String[].class);
		
		return getAllStudentResults;
	}






	@Override
	public Optional<Modules> findById(Long id) {
		
		
		Modules findAllModulesById = restTemplate.getForObject("http://localhost:9090/modules/findModuleById/" + id,  Modules.class);

		return Optional.of(findAllModulesById);
		
	}





	
	
	
	
	
	

	
	
	
	
	
	
	

}
