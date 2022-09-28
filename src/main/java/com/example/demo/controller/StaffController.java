package com.example.demo.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.integration.StaffRestClient;
import com.example.demo.integration.dto.Staffs;




@Controller
@RequestMapping("/aitiKaceStaffsApiConsumption")
public class StaffController {
	
	
	
	
	
	
	
	@Autowired
	StaffRestClient staffRestClient;
	


// // EMAIL VERIFICATION
	
// @RequestMapping(value = "/findEmailVerificationForm", method = RequestMethod.GET)
// public String emialVerificaton(Staffs getAllStaffs,  ModelMap modelMap) {
	

// 	return "emailVerification";
	
	
// }



	
	
	
	
//  METHODS TO RETRIEVE ALL STUDENT RECORDS WITHOUT ACTIONS
	
@RequestMapping(value = "/getAllStaffs", method = RequestMethod.GET)
public String getAllStaffs(Staffs getAllStaffs,  ModelMap modelMap) {
	
	
	
	Staffs[] retrievaAllStaffs = staffRestClient.getAllStaffs(getAllStaffs);
	modelMap.addAttribute("retrievaAllStaffs", retrievaAllStaffs);

	
	return "getAllStaffs";
	
	
}
	
	
	
	


	//STAFF ID LIVE VAILDATION

	@RequestMapping(value = "getliveValidationOnStaffID", method = RequestMethod.POST)
	public String getliveValidationOnStaffID(@RequestParam("staff_id") String staff_id) throws SQLException, ClassNotFoundException  {
		
		String aitiKaceStaff_id = staff_id;
		
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		
		
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
		Statement stmt = conn.createStatement();
		
	ResultSet rs = stmt.executeQuery("select * from staffs where staffs.staff_id = '"+aitiKaceStaff_id+"' ");

		
		
		if(rs.next()){

			return "liveValidationOnStudentId";
		}
		
		else {
			
			return "liveValidationOnStudentId";
		}
		

		
		
		
	}






	//EMAIL LIVE VALIDATION

	@RequestMapping(value = "getliveValidationOnEmail", method = RequestMethod.POST)
	public String getliveValidationOnEmail(@RequestParam("email") String email) throws SQLException, ClassNotFoundException  {
		
		String csdEmial = email;
		
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		
		
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
		Statement stmt = conn.createStatement();
		
	ResultSet rs = stmt.executeQuery("select * from automated_student_results_system.staffs where automated_student_results_system.staffs.email = '"+csdEmial+"' ");

		
		
		if(rs.next()){

			return "liveValidationOnEmail";
		}
		
		else {
			
			return "liveValidationOnEmail";
		}
		

		
		
		
	}







	//PHONE NUMBER LIVE VAILDATION

	@RequestMapping(value = "getliveValidationOnPhoneNUmber", method = RequestMethod.POST)
	public String liveValidationOnPhoneNUmber(@RequestParam("phone") String phone) throws SQLException, ClassNotFoundException  {
		
		String csdPhone = phone;
		
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		
		
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("select * from automated_student_results_system.staffs where automated_student_results_system.staffs.contact = '"+csdPhone+"' ");

		
		
		if(rs.next()){

			return "liveValidationOnPhone";
		}
		
		else {
			
			return "liveValidationOnPhone";
		}
		

		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	

}
