package com.example.demo.integration.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.example.demo.integration.AitiKaceLecturersRestClient;
import com.example.demo.integration.dto.LecturerProfile;


@Component
public class AitiKaceLecturerRestClientImpl implements AitiKaceLecturersRestClient {
	
	
	
	RestTemplate restTemplate = new RestTemplate();
	
	
	
	
	LecturerProfile lecturerProfile = new LecturerProfile();
	
	
	
	
	
	
	
	
	
	
	
//  METHOD TO SAVE LECTURER

	@Override
	public void saveLecturer(LecturerProfile addLecturer) {
		
		lecturerProfile.setId(addLecturer.getId());
		lecturerProfile.setName(addLecturer.getName());
		lecturerProfile.setEmail(addLecturer.getEmail());
		lecturerProfile.setPhone(addLecturer.getPhone());
		lecturerProfile.setCourse_handle(addLecturer.getCourse_handle());
		lecturerProfile.setPassword(addLecturer.getPassword());
//		lecturerProfile.setReg_date(addLecturer.getReg_date());
//		lecturerProfile.setUpdate_time(addLecturer.getUpdate_time());
		
		
		restTemplate.postForObject("http://localhost:9090/lecturer/saveLecturer", addLecturer, LecturerProfile.class);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// METHOD TO RETRIEVE ALL LECTURER

	@Override
	public LecturerProfile[] findAllLecturers(LecturerProfile findAllLecturers) {
		
		
		LecturerProfile[] RetrieveAllLecturers = restTemplate.getForObject("http://localhost:9090/lecturer/getAllLecturer",  LecturerProfile[].class);
		
		return RetrieveAllLecturers;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	// RETRIEVE A SINGLE LECTURER RECORD
	
	@Override
	public LecturerProfile findLecturerById(Long findLecturerById) {
		
		
		LecturerProfile findLecturerByIdRetrival = restTemplate.getForObject("http://localhost:9090/lecturer/findLecturerById/" + findLecturerById,  LecturerProfile.class);
		
		return findLecturerByIdRetrival;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// METHOD TO UPDTAE LECTURER RECORD

	@Override
	public void updateLecturer(LecturerProfile updateLecturer) {
		
		
		Map<String, Long> params = new HashMap<String, Long>();
		params.put("id", updateLecturer.getId());
		
		restTemplate.put("http://localhost:9090/lecturer/updateLecturer", updateLecturer, params);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// METHOD TO DELETE AN LECTURER RECORD

	@Override
	public void deleteLecturer(Long deleteLecturer) {
		
		restTemplate.delete("http://localhost:9090/lecturer/delete/" + deleteLecturer);
		
		
	}

	
	
	
	
	
	
	
	
	
	
	
}
