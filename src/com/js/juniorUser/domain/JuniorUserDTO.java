/*유저 기본 속성 정보 창고*/
package com.js.juniorUser.domain;

public class JuniorUserDTO {
	
	private Long userId;
	private String userEmail;
	private String userPassword;
	private String userName;
	private String userAddress;
	private String userPhonenumber;
	private String userResume;
	
	public JuniorUserDTO() {;}

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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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

	public String getUserResume() {
		return userResume;
	}

	public void setUserResume(String userResume) {
		this.userResume = userResume;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		JuniorUserDTO other = (JuniorUserDTO) obj;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "JuniorUserDTO [userId=" + userId + ", userEmail=" + userEmail + ", userPassword=" + userPassword
				+ ", userName=" + userName + ", userAddress=" + userAddress + ", userPhonenumber=" + userPhonenumber
				+ ", userResume=" + userResume + "]";
	}
	
	
	
	
	
}
