package com.example.demo.integration;


import com.example.demo.integration.dto.Staffs;

public interface StaffRestClient {
	
	
	// GET SITE URL AND UPDATE TOKEN
	
	public  String getSiteURLByStaffEmail(String email);
	
	

	
	
	// GET STAFF DETAILS
	
	public  Staffs getStaffDetails(String token);
	

	
	 //  UPDATE STAFF PASWWORD
	public void updateStaff(Staffs staff);
	
	
	
	
	
	
	
	// VERIFICATION OF PASSWORD TOKEN FOR UPDATING STAFF PASSWORD
	
	public Staffs getUpdateStaffPassword(String token);
	
	
	
	
	
	// USERS LOGIN
	public Staffs[] userLogin(String email, String password);
	

	//  METHOD TO SAVE STAFF
	public void saveStaff(Staffs saveStaff);
	
	
	
		
	// METHOD TO RETRIEVE ALL STAFF
	public Staffs[] getAllStaffs(Staffs getAllStaffs);
	
	
	
	
	// RETRIEVE A SINGLE STAFF RECORD
	public Staffs findStaffById(Long findStaffById);
	
	
	
	
	// METHOD TO RETRIEVE ALL STAFF NAMES
	public Staffs[] findStaffByName(String findStaffByName);
	
	

	
	
	


	

	// METHOD TO UPDTAE STAFF RECORD
	//public void updateStaff(Staffs updateStaff);
	

	
	// METHOD TO DELETE AN STAFF RECORD
	public void deleteStaff(Long deleteStaff);

	
	
	
	
	
	
	
	
	
	
	
	
	
//  RETRIEVAL OF ALL STAFF NAME FROM STAFF
	public Staffs[] geStaffName(Staffs geStaffName);
	
	
	
	
	public String countStaff();
	
	

}
