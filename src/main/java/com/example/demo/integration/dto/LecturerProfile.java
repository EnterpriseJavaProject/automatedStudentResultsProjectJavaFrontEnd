package com.example.demo.integration.dto;




public class LecturerProfile {
	

	private Long id;
	private String name;
	private String phone;
	private String email;
	private String password;
	private String course_handle;
	private String reg_date;
	private String update_time;
	
	
	
	
	public LecturerProfile() {
		super();
		// TODO Auto-generated constructor stub
	}




	public LecturerProfile(Long id, String name, String phone, String email, String password, String course_handle,
			String reg_date, String update_time) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.password = password;
		this.course_handle = course_handle;
		this.reg_date = reg_date;
		this.update_time = update_time;
	}




	public Long getId() {
		return id;
	}




	public void setId(Long id) {
		this.id = id;
	}




	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public String getPhone() {
		return phone;
	}




	public void setPhone(String phone) {
		this.phone = phone;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public String getCourse_handle() {
		return course_handle;
	}




	public void setCourse_handle(String course_handle) {
		this.course_handle = course_handle;
	}




	public String getReg_date() {
		return reg_date;
	}




	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}




	public String getUpdate_time() {
		return update_time;
	}




	public void setUpdate_time(String update_time) {
		this.update_time = update_time;
	}




	@Override
	public String toString() {
		return "LecturerProfile [id=" + id + ", name=" + name + ", phone=" + phone + ", email=" + email + ", password="
				+ password + ", course_handle=" + course_handle + ", reg_date=" + reg_date + ", update_time="
				+ update_time + "]";
	}





	
	
	
	
	
	
	
	

}
	