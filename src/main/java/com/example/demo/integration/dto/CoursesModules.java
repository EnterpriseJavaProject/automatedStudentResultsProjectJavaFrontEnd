package com.example.demo.integration.dto;




public class CoursesModules {
	
	
	
	private int id;
	private String course_name;
	private String course_level;
	private String module_name;
	private String module_code;
	private String name;
	private String course_start_date;
	private String course_end_date;
	private String certificate_issuedate;
	private String status;
	private String created_at;
	private String updated_at;
	
	
	
	
	
	public CoursesModules() {


	}





	public CoursesModules(int id, String course_name, String course_level, String module_name, String module_code,
			String name, String course_start_date, String course_end_date, String certificate_issuedate, String status,
			String created_at, String updated_at) {
		super();
		this.id = id;
		this.course_name = course_name;
		this.course_level = course_level;
		this.module_name = module_name;
		this.module_code = module_code;
		this.name = name;
		this.course_start_date = course_start_date;
		this.course_end_date = course_end_date;
		this.certificate_issuedate = certificate_issuedate;
		this.status = status;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}





	public int getId() {
		return id;
	}





	public void setId(int id) {
		this.id = id;
	}





	public String getCourse_name() {
		return course_name;
	}





	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}





	public String getCourse_level() {
		return course_level;
	}





	public void setCourse_level(String course_level) {
		this.course_level = course_level;
	}





	public String getModule_name() {
		return module_name;
	}





	public void setModule_name(String module_name) {
		this.module_name = module_name;
	}





	public String getModule_code() {
		return module_code;
	}





	public void setModule_code(String module_code) {
		this.module_code = module_code;
	}





	public String getName() {
		return name;
	}





	public void setName(String name) {
		this.name = name;
	}





	public String getCourse_start_date() {
		return course_start_date;
	}





	public void setCourse_start_date(String course_start_date) {
		this.course_start_date = course_start_date;
	}





	public String getCourse_end_date() {
		return course_end_date;
	}





	public void setCourse_end_date(String course_end_date) {
		this.course_end_date = course_end_date;
	}





	public String getCertificate_issuedate() {
		return certificate_issuedate;
	}





	public void setCertificate_issuedate(String certificate_issuedate) {
		this.certificate_issuedate = certificate_issuedate;
	}





	public String getStatus() {
		return status;
	}





	public void setStatus(String status) {
		this.status = status;
	}





	public String getCreated_at() {
		return created_at;
	}





	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}





	public String getUpdated_at() {
		return updated_at;
	}





	public void setUpdated_at(String updated_at) {
		this.updated_at = updated_at;
	}





	@Override
	public String toString() {
		return "CoursesModules [id=" + id + ", course_name=" + course_name + ", course_level=" + course_level
				+ ", module_name=" + module_name + ", module_code=" + module_code + ", name=" + name
				+ ", course_start_date=" + course_start_date + ", course_end_date=" + course_end_date
				+ ", certificate_issuedate=" + certificate_issuedate + ", status=" + status + ", created_at="
				+ created_at + ", updated_at=" + updated_at + "]";
	}









	
	
	
	
	
	
	
	
	

}
