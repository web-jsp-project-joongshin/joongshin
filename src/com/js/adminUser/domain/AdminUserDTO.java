/*유저 기본 속성 정보 창고*/
package com.js.adminUser.domain;

public class AdminUserDTO {
	private Long userId;
	private String userEmail;
	private String userPassword;
	private String username;
	private String userAddress;
	private String userPhonenumber;
	private int adminPermissionLevel;	
	
	public AdminUserDTO() {;}
	
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserPhonenumber() {
		return userPhonenumber;
	}

	public void setUserPhonenumber(String userPhonenumber) {
		this.userPhonenumber = userPhonenumber;
	}

	public int getAdminPermissionLevel() {
		return adminPermissionLevel;
	}
	public void setAdminPermissionLevel(int adminPermissionLevel) {
		this.adminPermissionLevel = adminPermissionLevel;
	}
}
