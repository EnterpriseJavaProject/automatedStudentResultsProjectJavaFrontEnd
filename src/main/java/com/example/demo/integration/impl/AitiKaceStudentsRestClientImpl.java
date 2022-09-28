package com.example.demo.integration.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.example.demo.integration.AitiKaceStudentsRestClient;
import com.example.demo.integration.dto.StudentProfile;


@Component
public class AitiKaceStudentsRestClientImpl implements AitiKaceStudentsRestClient {
	
	
	
	
	
	RestTemplate restTemplate = new RestTemplate();
	
	
	
	
	StudentProfile studentProfile = new StudentProfile();
	
	
	
	
	
	// SENDING STUDENTS WELCOME EMAIL AFTER BEING ADMTITTED

	@Override
	public StudentProfile sendingStudentsWelcomeEmailAfterBeingAdmitted(StudentProfile student) {
		
		StudentProfile sendStudentEmail = restTemplate.getForObject("http://localhost:9090/students/sendingStudentsWelcomeEmailAfterBeingAdmitted",  StudentProfile.class);
		
		return sendStudentEmail;
		
	}
	
	
	
	
	
	
	

	@Override
	public String getliveValidationOnStudentID(String student_id) {
		
		String getliveStudentID = restTemplate.postForObject("http://localhost:9090/student/getliveValidationOnStudentID", student_id,  String.class);
		
		return getliveStudentID;
	}

	
	
	
	
	
	
	
	
	//  METHOD TO SAVE STUDENT INFO

	@Override
	public void saveStudentInfo(StudentProfile addStudentInfo) {
		
		studentProfile.setId(addStudentInfo.getId());
		studentProfile.setStudent_id(addStudentInfo.getStudent_id());
		studentProfile.setName(addStudentInfo.getName());
		studentProfile.setBatch_id(addStudentInfo.getBatch_id());
		studentProfile.setEmail(addStudentInfo.getEmail());
		studentProfile.setFees(addStudentInfo.getFees());
		studentProfile.setContact(addStudentInfo.getContact());
		studentProfile.setGender(addStudentInfo.getGender());
		studentProfile.setDate_of_birth(addStudentInfo.getDate_of_birth());
		studentProfile.setStatus(addStudentInfo.getStatus());
		studentProfile.setCreated_at(addStudentInfo.getCreated_at());
		studentProfile.setUpdated_at(addStudentInfo.getUpdated_at());

		
		
		restTemplate.postForObject("http://localhost:9090/students/saveStudent", addStudentInfo, StudentProfile.class);

		
	}

	
	
	
	
	
	
	
	
	// METHOD TO RETRIEVE ALL STUDENT INFOS
	
	@Override
	public StudentProfile[] findAllStudentInfos(StudentProfile findAllStudentInfos) {
		
		StudentProfile[] RetrieveAllCsdStudentResults = restTemplate.getForObject("http://localhost:9090/students/getAllStudent",  StudentProfile[].class);
		
		return RetrieveAllCsdStudentResults;
	}

	
	
	
	
	
	
	
	
	
	
	// RETRIEVE A SINGLE STUDENT INFO
	
	@Override
	public StudentProfile findStudentInfoById(Long findStudentInfoById) {
		
		StudentProfile RetrieveStudentInfoById = restTemplate.getForObject("http://localhost:9090/students/findStudentById/" + findStudentInfoById,  StudentProfile.class);
		
		return RetrieveStudentInfoById;
	}

	
	
	
	
	
	
	
	
	
	
	// METHOD TO UPDTAE LSTUDENT INFO
	
	@Override
	public void updateStudentInfo(StudentProfile updateStudentInfo) {
		
		
		Map<String, Long> params = new HashMap<String, Long>();
		params.put("id", updateStudentInfo.getId());
		
		restTemplate.put("http://localhost:9090/students/updateStudent", updateStudentInfo, params);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	// METHOD TO DELETE STUDENT INFO

	@Override
	public void deleteStudentInfo(Long deleteStudentInfo) {
		
		
		restTemplate.delete("http://localhost:9090/students/delete/" + deleteStudentInfo);
		
	}








//  METHOD TO RETRIEVE ALL STUDENT NAMES
	@Override
	public StudentProfile[] findAllStudentNames(StudentProfile retrieveAllStudentNames) {
		
		
		StudentProfile[] findAllStudentNames = restTemplate.getForObject("http://localhost:9090/students/retrieveAllStudentNames", StudentProfile[].class);
		
		return findAllStudentNames;
	}









	@Override
	public StudentProfile[] getStudentNameAndStudentID() {
	
		StudentProfile[] getAllCourseNameAndCourseLevel = restTemplate.getForObject("http://localhost:9090/students/getStudentNameAndStudentID",  StudentProfile[].class); 
		
		return getAllCourseNameAndCourseLevel;
	}






                                                                                                                                                                


	@Override
	public StudentProfile[] retrieveAllResults(Long id) {
		
		StudentProfile[] findAllResults = restTemplate.getForObject("http://localhost:9090/students/retrieveStudentsUnderModule/" + id,  StudentProfile[].class); 
		
		return findAllResults;
	}

















	
	
	
	
	
}
