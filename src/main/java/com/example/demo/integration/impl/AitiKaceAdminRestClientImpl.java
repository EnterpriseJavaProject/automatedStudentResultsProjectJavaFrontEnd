package com.example.demo.integration.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.example.demo.integration.AitiKaceAdminRestClient;
import com.example.demo.integration.dto.AdminProfile;




@Component
public class AitiKaceAdminRestClientImpl implements AitiKaceAdminRestClient {
	
	
	
	RestTemplate restTemplate = new RestTemplate();
	
	
	
	
	AdminProfile adminProfile = new AdminProfile();
	
	
	
	
	
	
	
	
	
	
	
	//  METHOD TO SAVE ADMIN

	@Override
	public void saveAdmin(AdminProfile addAdmin) {
		

		adminProfile.setId(addAdmin.getId());
		adminProfile.setName(addAdmin.getName());
		adminProfile.setEmail(addAdmin.getEmail());
		adminProfile.setPassword(addAdmin.getPassword());
		
		restTemplate.postForObject("http://localhost:9090/admin/saveAdmin", addAdmin, AdminProfile.class);

	}
	
	
	
	
	
	
	
	
	
	
	
	//   METHOD TO RETRIEVE ALL ADMIN INFO
	

	@Override
	public AdminProfile[] findAllAdmins(AdminProfile findAllAdmins) {
		
		
		AdminProfile[] retrieveAllAdmin = restTemplate.getForObject("http://localhost:9090/admin/getAllAdmin", AdminProfile[].class);

		return retrieveAllAdmin;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	//    METHOD TO UPDATE AN ADMIN INFO
	
	

	@Override
	public void updateAdmin(AdminProfile updateAdmin) {

		
		Map<String, Long> params = new HashMap<String, Long>();
		params.put("id", updateAdmin.getId());
		
		restTemplate.put("http://localhost:9090/admin/updateAdmin", updateAdmin, params);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	//   METHOD TO DELETE DELETE
	

	@Override
	public void deleteAdmin(String deleteAdmin) {

		restTemplate.delete("http://localhost:9090/admin/delete/" + deleteAdmin);

		
	}









//   METHOD TO RETRIEVE A SINGLE ADMIN FOR UPDATE

	@Override
	public AdminProfile findAdminInfoById(String findAdminInfoById) {
		
		
		AdminProfile RetrieveAdminInfoById = restTemplate.getForObject("http://localhost:9090/admin/getAsingleAdminInfo",  AdminProfile.class);
		
		return RetrieveAdminInfoById;
		
	}

	
	
	
	
	
}
