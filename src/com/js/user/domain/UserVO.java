/*유저 기본 속성 정보 창고*/
package com.js.user.domain;

public class UserVO {
	private Long userId;
	private String userEmail;
	private String userPassword;
	private String username;
	private String userAddress;
	private String userPhoneumber;
	
	public UserVO() {;}

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

	public String getUserPhoneumber() {
		return userPhoneumber;
	}

	public void setUserPhoneumber(String userPhoneumber) {
		this.userPhoneumber = userPhoneumber;
	}

	@Override
	public String toString() {
		return "MemberVO [userId=" + userId + ", userIdentification="  + ", userEmail=" + userEmail
				+ ", userPassword=" + userPassword + ", username=" + username + ", userAddress=" + userAddress
				+ ", userPhoneumber=" + userPhoneumber + "]";
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
		UserVO other = (UserVO) obj;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}

	
	
	
	

	
}
