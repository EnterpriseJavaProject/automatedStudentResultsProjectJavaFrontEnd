package com.example.demo.integration.dto;

public class Users {
	

	private int id;
	private String usertype;
	private int staff_id;
	private String email;
	private String password;
	private String status;
	private String created_at;
	private String updated_at;
	
	
	
	public Users() {
		
		// TODO Auto-generated constructor stub
	}



	public Users(int id, String usertype, int staff_id, String email, String password, String status, String created_at,
			String updated_at) {
		super();
		this.id = id;
		this.usertype = usertype;
		this.staff_id = staff_id;
		this.email = email;
		this.password = password;
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



	public String getUsertype() {
		return usertype;
	}



	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}



	public int getStaff_id() {
		return staff_id;
	}



	public void setStaff_id(int staff_id) {
		this.staff_id = staff_id;
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
		return "Users [id=" + id + ", usertype=" + usertype + ", staff_id=" + staff_id + ", email=" + email
				+ ", password=" + password + ", status=" + status + ", created_at=" + created_at + ", updated_at="
				+ updated_at + "]";
	}



	
	
	
	
	
	

}
