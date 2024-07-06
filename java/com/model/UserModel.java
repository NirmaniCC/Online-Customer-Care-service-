package com.model;

public class UserModel {
	
	private String userId;
    private String username;
    private String fullName;
    private String email;
    private String mobile;
    private String registrationDate;

	public UserModel(String userId, String username, String fullName, String email, String mobile,
			String registrationDate) {
		super();
		this.userId = userId;
		this.username = username;
		this.fullName = fullName;
		this.email = email;
		this.mobile = mobile;
		this.registrationDate = registrationDate;
	}

	public UserModel() {
		// TODO Auto-generated constructor stub
	}

	public String getUserId() {
		return userId;
	}

	public String getUsername() {
		return username;
	}

	public String getFullName() {
		return fullName;
	}

	public String getEmail() {
		return email;
	}

	public String getMobile() {
		return mobile;
	}

	public String getRegistrationDate() {
		return registrationDate;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public void setRegistrationDate(String registrationDate) {
		this.registrationDate = registrationDate;
	}

	

}
