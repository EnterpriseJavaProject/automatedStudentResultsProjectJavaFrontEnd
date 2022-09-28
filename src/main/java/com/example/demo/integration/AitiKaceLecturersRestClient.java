package com.example.demo.integration;

import com.example.demo.integration.dto.LecturerProfile;

public interface AitiKaceLecturersRestClient {
	
	
	
	
	//  METHOD TO SAVE LECTURER
	public void saveLecturer(LecturerProfile addLecturer);
	
	
	
		
	// METHOD TO RETRIEVE ALL LECTURER
	public LecturerProfile[] findAllLecturers(LecturerProfile findAllLecturers);
	
	
	
	
	// RETRIEVE A SINGLE LECTURER RECORD
	public LecturerProfile findLecturerById(Long findLecturerById);
	
	
	

	// METHOD TO UPDTAE LECTURER RECORD
	public void updateLecturer(LecturerProfile updateLecturer);
	

	
	// METHOD TO DELETE AN LECTURER RECORD
	public void deleteLecturer(Long deleteLecturer);

}
