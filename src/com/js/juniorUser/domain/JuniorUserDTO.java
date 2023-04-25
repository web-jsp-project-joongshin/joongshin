/*유저 기본 속성 정보 창고*/
package com.js.juniorUser.domain;

public class JuniorUserDTO {
	private Long userId;
	private int juniorYears;
	private String resume;
	private String userEmail;
	private String userPassword;
	private String username;
	private String userAddress;
	private String userPhoneumber;
	
	
	
	public JuniorUserDTO() {;}
	
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public int getJuniorYears() {
		return juniorYears;
	}
	public void setJuniorYears(int juniorYears) {
		this.juniorYears = juniorYears;
	}
	public String getResume() {
		return resume;
	}
	public void setResume(String resume) {
		this.resume = resume;
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
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + juniorYears;
		result = prime * result + ((resume == null) ? 0 : resume.hashCode());
		result = prime * result + ((userAddress == null) ? 0 : userAddress.hashCode());
		result = prime * result + ((userEmail == null) ? 0 : userEmail.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		result = prime * result + ((userPassword == null) ? 0 : userPassword.hashCode());
		result = prime * result + ((userPhoneumber == null) ? 0 : userPhoneumber.hashCode());
		result = prime * result + ((username == null) ? 0 : username.hashCode());
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
		if (juniorYears != other.juniorYears)
			return false;
		if (resume == null) {
			if (other.resume != null)
				return false;
		} else if (!resume.equals(other.resume))
			return false;
		if (userAddress == null) {
			if (other.userAddress != null)
				return false;
		} else if (!userAddress.equals(other.userAddress))
			return false;
		if (userEmail == null) {
			if (other.userEmail != null)
				return false;
		} else if (!userEmail.equals(other.userEmail))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		if (userPassword == null) {
			if (other.userPassword != null)
				return false;
		} else if (!userPassword.equals(other.userPassword))
			return false;
		if (userPhoneumber == null) {
			if (other.userPhoneumber != null)
				return false;
		} else if (!userPhoneumber.equals(other.userPhoneumber))
			return false;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "JuniorUserDTO [userId=" + userId + ", juniorYears=" + juniorYears + ", resume=" + resume
				+ ", userEmail=" + userEmail + ", userPassword=" + userPassword + ", username=" + username
				+ ", userAddress=" + userAddress + ", userPhoneumber=" + userPhoneumber + "]";
	}
	
	
	
	
	
}
