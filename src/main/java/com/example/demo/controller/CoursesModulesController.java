package com.example.demo.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.integration.CoursesModulesRestClient;
import com.example.demo.integration.CoursesRestClient;
import com.example.demo.integration.StaffRestClient;
import com.example.demo.integration.dto.CoursesModules;
import com.example.demo.integration.dto.Staffs;

//import net.bytebuddy.utility.RandomString;

@Controller
@RequestMapping("/aitiKaceModulesCoursesApiConsumption")
public class CoursesModulesController {
	
	
	
	@Autowired
	CoursesModulesRestClient coursesModulesRestClient;
	
	
	@Autowired
	StaffRestClient staffRestClient;
	
	
	
	@Autowired
	CoursesRestClient coursesRestClient;
	
	
	
	
	// EMAIL VERIFICATION FORM
	
	@RequestMapping("/index")
	public String homePage() {
		
		return "index";
		
	}
	
	
	
	
	
	// EMAIL VERIFICATION FORM
	
	@RequestMapping("/findEmailVerificationForm")
	public String showForgetPasswordForm() {
		
		return "emailVerification";
		
	}
	
	
	
	
	
	// SEND VERIFICATION LINK TO STAFF EMAIL
	
		@RequestMapping(value = "verifyEmail", method = RequestMethod.GET)
		public String processForgotPasswordForm(HttpServletRequest request, Model model) throws StaffNotFindException {
			
			String email = request.getParameter("email");		
		

			try {
				staffRestClient.getSiteURLByStaffEmail(email);
				model.addAttribute("message", "We have sent a reset password link to your email");
			}
			catch(Exception ex) {
				model.addAttribute("error", "Could not find any staff with email " + email);
			}
			
			model.addAttribute("pageTitle", "Forgot Password");
			return "emailVerification";

		}
		
		
		
		
		
		
		
	// RESET PASSWORD FORM
	
	@RequestMapping(value = "reset_password", method = RequestMethod.GET)
	public String resetPasswordForm(@Param(value = "token") String token, Model model) {
		
		
		
		Staffs findStaff = staffRestClient.getStaffDetails(token);
		model.addAttribute("findStaffDetails", findStaff);
		
		
		
		if(findStaff == null) {
		
			//model.addAttribute("token", findStaff);
			model.addAttribute("title", "Invalid token");
			
			return "message";
			
		}
	
		model.addAttribute("pageTitle", "Reset Your Password");
		return "resetPasswordForm";
		
	}
	
	
	

	
	

	
	@RequestMapping("/updateStaffPassword")
	public String updateStaffPassword(Staffs staff,  Model model) {
		
			
		staffRestClient.updateStaff(staff);
		model.addAttribute("message", "Your have successfully reset your password.");
			

		
		model.addAttribute("token", staff);
		return "message";
	}
	
	
	
	
	
	
	
	
	
	
	
	
//	@RequestMapping(value = "updateStaffPassword",  method = RequestMethod.POST)
//	public String updateStaffPassword(HttpServletRequest request, Model model) {
//		
//		String token = request.getParameter("token");
//		String password = request.getParameter("password");
//		
//		Staffs staff = staffRestClient.get(token);
//		
//		
//		if(staff == null) {
//			model.addAttribute("token", staff);
//			model.addAttribute("title", "Invalid token");
//			
//			return "message";
//			
//		}
//		else{
//			
//			staffRestClient.updateStaffPassword(staff, password);
//			model.addAttribute("message", "Your have successfully reset your password.");
//			
//		}
//		
//		return "message";
//	}
	
	
	
	

	
	
	
	

	
	
	
	
	
	
	// ADMIN AND LECTURER LOGIN METHOD
	
	
	@RequestMapping(value = "staffsLogin", method = RequestMethod.GET)
	public String staffsLogin(@RequestParam("email") String email, @RequestParam("password") String password) throws SQLException, ClassNotFoundException {
		
		
		String adminLecturerEmail = email;
		String adminLecturerPassword = password;
		
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		
		
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/automated_student_results_system", "root", "");
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("select email,password from staff_details where staff_details.email = '"+adminLecturerEmail+"' and staff_details.password = '"+adminLecturerPassword+"' ");


		
		if(rs.next()){
			
			return  "redirect: /Frontend_API/aitiKaceModulesApiConsumption/getAllModulesHomePage";
			
		}
		

		else {
			
			return "redirect: getAdminAndLecturerLoginErrorPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD";
			
		}


	}
	
	
	
	
	
	
	
	
	
	
	
	
	

//	@RequestMapping(value = "staffsLogin", method = RequestMethod.GET)
//	public String staffLognValidation(@RequestParam("email") String email, @RequestParam("password") String password) throws SQLException, ClassNotFoundException {
//		
//		
//		String adminLecturerEmail = email;
//		String adminLecturerPassword = password;
//		
//		//staffRestClient.userLogin(adminLecturerEmail, adminLecturerPassword);
//		
//		staffRestClient.userLogin(adminLecturerEmail, adminLecturerPassword);
//		
//		
//		
//		if(adminLecturerEmail.equals(email) && adminLecturerPassword.equals(password)) {
//			
//			return "redirect: /Frontend_API/aitiKaceModulesApiConsumption/getAllModulesHomePage";
//			
//		}
//		
//		else {
//			
//			return "redirect: getAdminAndLecturerLoginErrorPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD";
//			
//		}
//
//
//	}

	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
//  METHOD TO SAVE STAFFS
@RequestMapping("/saveStaffs")
public String saveStaffs(Staffs saveStaff) {
	
	
	staffRestClient.saveStaff(saveStaff);
	
	return "redirect: /Frontend_API/aitiKaceStaffsApiConsumption/getAllStaffs";
}

	
	







//METHOD TO COUNT ALL STAFFS
@RequestMapping("/countAllStaff")
public String countStaff(ModelMap modelMap) {

	String countAllStaff = staffRestClient.countStaff();
	modelMap.addAttribute("countAllStaffs", countAllStaff);

return "redirect: /Frontend_API/aitiKaceCsdResultsApiConsumption/getCourseModuleHomePage";
}



































	
	
	
//  METHOD TO SAVE COURSES AND MODULES
@RequestMapping("/saveCoursesModules")
public String saveCsdResults(CoursesModules addCoursesModules) {
	
	
	coursesModulesRestClient.saveCoursesModules(addCoursesModules);
	
	return "redirect: /Frontend_API/aitiKaceCsdResultsApiConsumption/getCourseModuleHomePage";
}


	
	
	
	
	//  METHODS TO RETRIEVE ALL STAFF NAME
	

//@RequestMapping(value = "/findAllStaffs", method = RequestMethod.GET)
//public String getAllStaff(Staffs getAllStaffNames, ModelMap modelMap) {
//	
//	Staffs[] findAllStaffName = coursesModulesRestClient.getAllStaffNames(getAllStaffNames);
//	modelMap.addAttribute("findAllStaffNames", findAllStaffName);
//	
//	return "staffNames";
//		
//}

	
	
	
	
//@RequestMapping(value = "/findAllStaffName", method = RequestMethod.GET)
//public String getAllStudentsInfoWithoutAction(Staffs getStaffName,  ModelMap modelMap) {
//	
//	
//	Staffs[] findAllStaffName = coursesModulesRestClient.getStaffName(getStaffName);
//	modelMap.addAttribute("findAllStaffName", findAllStaffName);
//	
//	return "courseModuleHomePage";
//	
//	
//}	
	


	
	
	
	
	
	





//	// ADMIN AND LECTURER LOGIN METHOD
//
//	@RequestMapping(value = "staffsLogin", method = RequestMethod.POST)
//	public String studentLoginAction(@RequestParam("email") String email, @RequestParam("password") String password) throws SQLException, ClassNotFoundException {
//		
//		
//		String adminLecturerEmail = email;
//		String adminLecturerPassword = password;
//		
//		//staffRestClient.userLogin(adminLecturerEmail, adminLecturerPassword);
//		
//		
//		
//		if(adminLecturerEmail.equals(email) && adminLecturerPassword.equals(password)) {
//			
//			return "redirect: /Frontend_API/aitiKaceModulesApiConsumption/getAllModulesHomePage";
//			
//		}
//		
//		else {
//			
//			return "redirect: getAdminAndLecturerLoginErrorPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD";
//			
//		}
//
//
//	}

	
	
	
	
	
	
	
	
	// ADMIN AND LECTURER LOGIN METHOD
//
//	@RequestMapping(value = "userLogin", method = RequestMethod.POST)
//	public String userLogin(@RequestParam("email") String email, @RequestParam("password") String password) throws SQLException, ClassNotFoundException {
//		
//		
//		String adminLecturerEmail = email;
//		String adminLecturerPassword = password;
//		
//		staffRestClient.userLogin(adminLecturerEmail, adminLecturerPassword);
//		
//		
//		
//		if(adminLecturerEmail.equalsIgnoreCase("admin2021@aiti-kace.com.gh") && adminLecturerPassword.equalsIgnoreCase("admin@2020")) {
//			
//			return "redirect: /Frontend_API/aitiKaceModulesApiConsumption/getAllModulesHomePage";
//			
//		}
//		
//		else {
//			
//			return "redirect: getAdminAndLecturerLoginErrorPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD";
//			
//		}
//
//
//	}
//	
	
}
