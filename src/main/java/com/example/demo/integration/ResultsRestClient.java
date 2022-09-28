package com.example.demo.integration;

import java.util.List;


import com.example.demo.integration.dto.Results;

public interface ResultsRestClient {
	
	
	
	
	//  SAVE ALL METHOD	
	public List<Results> saveResults(List<Results> addAllResults);
	
	
	
	// SAVE A SINGLE RESULTS
	//public Results saveResults(Results saveResults);
	
	
	
		
//  GET ALL MODULES AND COURSES METHOD
	public Results[] getAllResults(Results getAllResults);
	
	
	
	
//  FIND COURSE AND MODULE BY ID METHOD
	public Results findResultsById(Long findResultsById);
	
	
	

//  UPDATE METHOD
	public Results updateResults(Results updateResults);
	

	
//  DELETE METHOD
	public void deleteResults(Long deleteResults);




	
	// FIND STUDENT MARKS
	
	  public Results[] retrieveAllStudentsUnderResults(Long id);

	
	
	  
	  
	  
		// METHOD TO INSERT INTO RESULTS TABLE AND SELECT FROM STUDENT TBALE
	  public Long insertIntoStudentNameIDandCourseIdIntoResults(Long id);

	  
	  
	  
	  
	  
		
		// METHOD TO SEARCH FOR STUDENT RESULTS
		public Results[] searchStudentFinalResults(String searchStudentFinalResults);
		
		
		
		
		

}
