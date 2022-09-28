package com.example.demo.integration;

import com.example.demo.integration.dto.StudentProfile;

public interface AitiKaceStudentsRestClient {
	
	
	// SENDING STUDENTS WELCOME EMAIL AFTER BEING ADMTITTED
	public StudentProfile sendingStudentsWelcomeEmailAfterBeingAdmitted(StudentProfile student);
	
	
	
	
	
	// LIVE STUDENT ID VALIDATION
	public String getliveValidationOnStudentID(String student_id);
	
	
	
	//  METHOD TO SAVE STUDENT INFO
	public void saveStudentInfo(StudentProfile addStudentInfo);
	
	
	
		
	// METHOD TO RETRIEVE ALL STUDENT INFOS
	public StudentProfile[] findAllStudentInfos(StudentProfile findAllStudentInfos);
	
	
	
	
	// RETRIEVE A SINGLE STUDENT INFO FOR UPDATE
	public StudentProfile findStudentInfoById(Long findStudentInfoById);
	
	
	

	// METHOD TO UPDTAE STUDENT INFO
	public void updateStudentInfo(StudentProfile updateStudentInfo);
	

	
	// METHOD TO DELETE STUDENT INFO
	public void deleteStudentInfo(Long deleteStudentInfo);
	
	
	
	
	
//  METHOD TO RETRIEVE ALL STUDENT NAMES
	public StudentProfile[] findAllStudentNames(StudentProfile retrieveAllStudentNames);
	
	
	
	
	
	// METHOD TO RETRIEVE ALL STUDENT NAME AND STUDENT ID FROM STUDENT TABLE
	
	public StudentProfile[] getStudentNameAndStudentID();
	
	
	
	
	
	
	
	
	
	public StudentProfile[] retrieveAllResults(Long id);
	
	
	
	
	

}
