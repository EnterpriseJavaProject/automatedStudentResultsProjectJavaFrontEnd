package com.example.demo.integration.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.example.demo.integration.AitiKaceCsdResultsRestClient;
import com.example.demo.integration.dto.CsdResults;


@Component
public class AitiKaceCsdResultsRestClientImpl implements AitiKaceCsdResultsRestClient {
	
	
	
	
	
	RestTemplate restTemplate = new RestTemplate();
	
	
	
	
	CsdResults csdResults = new CsdResults();
	
	
	
	
	
	
	
	
	
	
	
	
	//  METHOD TO SAVE CSD RESULTS

	@Override
	public void saveCsdResults(CsdResults saveCsdResults) {
		
		
		csdResults.setId(saveCsdResults.getId());
		csdResults.setStudent_name(saveCsdResults.getStudent_name());
		csdResults.setStudent_id(saveCsdResults.getStudent_id());
		csdResults.setCourse_level(saveCsdResults.getCourse_level());
		csdResults.setCourse(saveCsdResults.getCourse());
		csdResults.setFoc(saveCsdResults.getFoc());
		csdResults.setHtml_css(saveCsdResults.getHtml_css());
		csdResults.setJavascript(saveCsdResults.getJavascript());
		csdResults.setSoftware_engineering(saveCsdResults.getSoftware_engineering());
		csdResults.setOracle_database(saveCsdResults.getOracle_database());
		csdResults.setPython(saveCsdResults.getPython());
		csdResults.setRegistration_date(saveCsdResults.getRegistration_date());
		csdResults.setUpdate_time(saveCsdResults.getUpdate_time());
		
		
		restTemplate.postForObject("http://localhost:9090/csdResults/saveResults", saveCsdResults, CsdResults.class);

		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	//   METHOD TO RETRIEVE A CSD STUDENT ID FROM THE STUDENT TABLE
	
	

	@Override
	public CsdResults findcsdStudentId(CsdResults findcsdStudentId) {
		
		CsdResults findcsdStudentIdRetrival = restTemplate.getForObject("http://localhost:9090/csdResults/saveResults",  CsdResults.class);
		
		return findcsdStudentIdRetrival;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//   METHOD TO RETRIEVE ALL CSD RESULTS
	

	@Override
	public CsdResults[] findAllCsdResults(CsdResults findAllCsdResults) {
		
		
		CsdResults[] findAllCsdStudentResults = restTemplate.getForObject("http://localhost:9090/csdResults/getAllResults",  CsdResults[].class);
		
		return findAllCsdStudentResults;
	}

	
	
	
	
	
	
	
	
	
	
	
	// METHOD TO RETRIVE A SINGLE CSD RESULTS
	
	
	@Override
	public CsdResults findCsdResultById(String findCsdResultById) {
		
		
		CsdResults findCsdResultByIdRetrival = restTemplate.getForObject("http://localhost:9090/csdResults/findResultsById/" + findCsdResultById,  CsdResults.class);
		
		return findCsdResultByIdRetrival;
	}
	
	
	
	
	
	
	
	
	
	
	
	//  METHOD TO UPDATE CSD RESULTS
	

	@Override
	public void updateCsdResults(CsdResults updateCsdResults) {
		
		
		Map<String, Long> params = new HashMap<String, Long>();
		params.put("id", updateCsdResults.getId());
		
		restTemplate.put("http://localhost:9090/csdResults/updateResults", updateCsdResults, params);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	//  METHOD TO DELETE CSD RESULTS
	

	@Override
	public void deleteCsdResults(String deleteCsdResults) {
		
		
		restTemplate.delete("http://localhost:9090/csdResults/delete/" + deleteCsdResults);
		
	}
	
	
	
	
	
	
	
	

}
