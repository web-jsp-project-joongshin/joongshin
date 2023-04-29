package com.js.juniorUser.domain;

public class JuniorUserVO {
	private Long userId;
	private int userCareerYears;
	private String userResume;
	
	public JuniorUserVO() {;}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public int getUserCareerYears() {
		return userCareerYears;
	}

	public void setUserCareerYears(int userCareerYears) {
		this.userCareerYears = userCareerYears;
	}

	public String getUserResume() {
		return userResume;
	}

	public void setUserResume(String userResume) {
		this.userResume = userResume;
	}

	@Override
	public String toString() {
		return "JuniorUserVO [userId=" + userId + ", userCareerYears=" + userCareerYears + ", userResume=" + userResume
				+ "]";
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
		JuniorUserVO other = (JuniorUserVO) obj;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}

}
