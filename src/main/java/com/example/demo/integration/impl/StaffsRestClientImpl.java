package com.example.demo.integration.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.example.demo.integration.StaffRestClient;
import com.example.demo.integration.dto.Staffs;



@Component
public class StaffsRestClientImpl implements StaffRestClient {
	
	
	
	RestTemplate restTemplate = new RestTemplate();
	
	
	Staffs staffs = new Staffs();
	
	
	
	
	
	
	
	// GET SITE URL
	
	@Override
	public Staffs getStaffDetails(String token) {
		
		Staffs findStaffDetails = restTemplate.getForObject("http://localhost:9090/staffs/getStaffDetails?token=" + token,  Staffs.class);
		
		return findStaffDetails;
	}
	
	
	
	
	
	
	
	
	// GET SITE URL
	
	@Override
	public String getSiteURLByStaffEmail(String email) {
		
		String findSiteURL = restTemplate.getForObject("http://localhost:9090/staffs/sendResetPasswordLinkToStaffEmail?email=" + email,  String.class);
		
		return findSiteURL;
	}

	
	
	
	
	

	

	
	
	
	
	
	
	// VERIFICATION OF PASSWORD TOKEN FOR UPDATING STAFF PASSWORD

	@Override
	public Staffs getUpdateStaffPassword(String token) {
		
		Staffs staff = restTemplate.getForObject("http://localhost:9090/staffs/getUpdateStaffPassword?token=" + token,  Staffs.class);
		
		return staff;

	}
	
	
	
	
	
	
	
	
	
	
	
	 //  UPDATE STAFF PASWWORD

	@Override
	public void updateStaff(Staffs staff) {
		
		Map<String, Long> params = new HashMap<String, Long>();
		params.put("id", staff.getId());
		
		restTemplate.put("http://localhost:9090/staffs/updateStaffDetailsAfterResetPassword", staff , String.class);
		
	}

	
	
	
	
//	
//	@Override
//	public void updateStaffPassword(Staffs staff, String newPassword) {
//		
//		
//		Map<String, String> params = new HashMap<String, String>();
//		params.put("token", staff.getReset_password_token());
//		
//		restTemplate.put("http://localhost:9090/staffs/updateStaffPassword", staff , params);
//		
//	}
	

	

	
	// STAFF LOGIN
	
	@Override
	public Staffs[] userLogin(String email, String password) {
		
Staffs[] userLoginRole = restTemplate.getForObject("http://localhost:9090/staffs/userLogin?email='"+email+"'&password='"+password+"' ", Staffs[].class);


		return userLoginRole;
	}

	

	

	@Override
	public void saveStaff(Staffs saveStaff) {
		
		staffs.setId(saveStaff.getId());
		staffs.setStaff_id(saveStaff.getStaff_id());
		staffs.setName(saveStaff.getName());
		staffs.setEmail(saveStaff.getEmail());
		staffs.setPassword(saveStaff.getPassword());
		staffs.setReset_password_token(saveStaff.getReset_password_token());
		staffs.setContact(saveStaff.getContact());
		staffs.setDepartment(saveStaff.getDepartment());
		staffs.setBatch_id(saveStaff.getBatch_id());;
		staffs.setStatus(saveStaff.getStatus());
		staffs.setCreated_at(saveStaff.getCreated_at());
		staffs.setUpdated_at(saveStaff.getUpdated_at());
		
		restTemplate.postForObject("http://localhost:9090/staffs/saveStaff", saveStaff, Staffs.class);


	}

	
	
	
	
	@Override
	public Staffs[] getAllStaffs(Staffs getAllStaffs) {
		
		Staffs[] findAllstaffs = restTemplate.getForObject("http://localhost:9090/staffs/getAllStaffs",  Staffs[].class);
		
		return findAllstaffs;
	}

	
	
	
	
	@Override
	public Staffs findStaffById(Long findStaffById) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	
	
	@Override
	public Staffs[] findStaffByName(String findStaffByName) {
		// TODO Auto-generated method stub
		return null;
	}

	
	

	
	
	
	
	@Override
	public void deleteStaff(Long deleteStaff) {
		// TODO Auto-generated method stub

	}

	
	
	
	
	@Override
	public Staffs[] geStaffName(Staffs geStaffName) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	
	@Override
	public String countStaff() {
	
		String countAllStaffs = restTemplate.getForObject("http://localhost:9090/staffs/countStaff", String.class);
		
		return countAllStaffs;
	}


























//	@Override
//	public String userLogin(String email, String password) {
//		
//		String userLoginRole = restTemplate.getForObject("http://localhost:9090/staffs/userLogin/'"+email+"'/'"+password+"' ", Staffs[].class);
//		
//		return userLoginRole;
//	}
//	
	
	
	
//	
//	@Override
//	public Staffs[] userLogin(String email, String password) {
//		
//		Staffs[] userLoginRole = restTemplate.getForObject("http://localhost:9090/staffs/userLogin/'"+email+"'/'"+password+"' ", Staffs[].class);
//		
//		return userLoginRole;
//	}


	
	
	
	
	
	
	
	
	
	
}
