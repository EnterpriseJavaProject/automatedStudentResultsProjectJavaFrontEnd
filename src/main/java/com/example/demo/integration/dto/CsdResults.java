package com.example.demo.integration.dto;

public class CsdResults {
	
	
	
	private Long id;
	private String student_id;
	private String student_name;
	private String course_level;
	private String course;
	private String foc;
	private String html_css;
	private String javascript;
	private String software_engineering;
	private String oracle_database;
	private String python;
	private String registration_date;
	private String update_time;
	
	
	
	
	public CsdResults() {
		super();
		// TODO Auto-generated constructor stub
	}




	public CsdResults(Long id, String student_id, String student_name, String course_level, String course, String foc,
			String html_css, String javascript, String software_engineering, String oracle_database, String python,
			String registration_date, String update_time) {
		super();
		this.id = id;
		this.student_id = student_id;
		this.student_name = student_name;
		this.course_level = course_level;
		this.course = course;
		this.foc = foc;
		this.html_css = html_css;
		this.javascript = javascript;
		this.software_engineering = software_engineering;
		this.oracle_database = oracle_database;
		this.python = python;
		this.registration_date = registration_date;
		this.update_time = update_time;
	}




	public Long getId() {
		return id;
	}




	public void setId(Long id) {
		this.id = id;
	}




	public String getStudent_id() {
		return student_id;
	}




	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}




	public String getStudent_name() {
		return student_name;
	}




	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}




	public String getCourse_level() {
		return course_level;
	}




	public void setCourse_level(String course_level) {
		this.course_level = course_level;
	}




	public String getCourse() {
		return course;
	}




	public void setCourse(String course) {
		this.course = course;
	}




	public String getFoc() {
		return foc;
	}




	public void setFoc(String foc) {
		this.foc = foc;
	}




	public String getHtml_css() {
		return html_css;
	}




	public void setHtml_css(String html_css) {
		this.html_css = html_css;
	}




	public String getJavascript() {
		return javascript;
	}




	public void setJavascript(String javascript) {
		this.javascript = javascript;
	}




	public String getSoftware_engineering() {
		return software_engineering;
	}




	public void setSoftware_engineering(String software_engineering) {
		this.software_engineering = software_engineering;
	}




	public String getOracle_database() {
		return oracle_database;
	}




	public void setOracle_database(String oracle_database) {
		this.oracle_database = oracle_database;
	}




	public String getPython() {
		return python;
	}




	public void setPython(String python) {
		this.python = python;
	}




	public String getRegistration_date() {
		return registration_date;
	}




	public void setRegistration_date(String registration_date) {
		this.registration_date = registration_date;
	}




	public String getUpdate_time() {
		return update_time;
	}




	public void setUpdate_time(String update_time) {
		this.update_time = update_time;
	}




	@Override
	public String toString() {
		return "CsdResults [id=" + id + ", student_id=" + student_id + ", student_name=" + student_name
				+ ", course_level=" + course_level + ", course=" + course + ", foc=" + foc + ", html_css=" + html_css
				+ ", javascript=" + javascript + ", software_engineering=" + software_engineering + ", oracle_database="
				+ oracle_database + ", python=" + python + ", registration_date=" + registration_date + ", update_time="
				+ update_time + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
