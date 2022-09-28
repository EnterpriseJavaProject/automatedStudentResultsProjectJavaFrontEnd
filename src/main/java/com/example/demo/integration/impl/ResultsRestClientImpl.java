package com.example.demo.integration.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.example.demo.integration.ResultsRestClient;
import com.example.demo.integration.dto.Results;




@Component
public class ResultsRestClientImpl implements ResultsRestClient {

	
	
	RestTemplate restTemplate = new RestTemplate();
	
	
	
	Results results = new Results();
	
	
	

	

	
	
	
	
	
	
	
//	@Override
//	public void saveResults(Results saveResults) {
//		
//		results.setId(saveResults.getId());
//		results.setStudentname(saveResults.getStudentname());
//		results.setStudentid(saveResults.getStudentid());
//		results.setStaffname(saveResults.getStaffname());
//		results.setStatus(saveResults.getStatus());
//		results.setCourse_id(saveResults.getCourse_id());
//		results.setModulename(saveResults.getModulename());
//		results.setMarks(((Results) saveResults).getMarks());
//		results.setCreated_at(((Results) saveResults).getCreated_at());
//		results.setUpdated_at(((Results) saveResults).getUpdated_at());
//		
//		
//		restTemplate.postForObject("http://localhost:9090/studentResults/saveResults", saveResults, Results.class);
//	}






	
	
	




	@Override
	public Results[] getAllResults(Results getAllResults) {
		
		Results[] findAllResults = restTemplate.getForObject("http://localhost:9090/studentResults/getAllResults",  Results[].class);
		
		return findAllResults;
	}

	
	
	
	
	
	@Override
	public Results findResultsById(Long findResultsById) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Results updateResults(Results updateResults) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteResults(Long deleteResults) {
		// TODO Auto-generated method stub

	}








	@Override
	public Results[] retrieveAllStudentsUnderResults(Long id) {
		
		Results[] retrieveOnlyMarks = restTemplate.getForObject("http://localhost:9090/studentResults/retrieveAllStudentsUnderResults/" + id,  Results[].class); 
		
		return retrieveOnlyMarks;
	}








	@Override
	public Long insertIntoStudentNameIDandCourseIdIntoResults(Long id) {
		
	Long insert = restTemplate.getForObject("http://localhost:9090/studentResults/updateModuleIdUnderResultsTable/" + id,  Long.class); 

	return insert;

	}



	@SuppressWarnings("unchecked")
	@Override
	public List<Results> saveResults(List<Results> addAllResults) {
		
		
		Map<String, Long> params = new HashMap<String, Long>();
		
		params.putAll((Map<? extends String, ? extends Long>) addAllResults);
		
		restTemplate.put("http://localhost:9090/studentResults/saveResults", addAllResults, Results.class);
		
		return addAllResults;
	}



	
	
	

	// METHOD TO SEARCH FOR STUDENT RESULTS

	@Override
	public Results[] searchStudentFinalResults(String searchStudentFinalResults) {
	
		Results[] findStudentFinalResults = restTemplate.getForObject("http://localhost:9090/studentResults/searchStudentFinalResults/" + searchStudentFinalResults,  Results[].class); 

		return findStudentFinalResults;
	}






}
