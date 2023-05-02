package com.js.message.domain;

import java.util.Arrays;
import java.util.List;

import org.json.JSONObject;

public class MessageDTO{
	private Long messageId;
	private Long sendUserId;
	private Long recieveUserId;
	private String userName;
	private boolean isSender;
	private String messageContents;
	private String messageUpdateDatetime;
	private String userProfileImage;
	
	public MessageDTO() {;}
	
	public String getUserProfileImage() {
		return userProfileImage;
	}
	
	public void setUserProfileImage(String userProfileImage) {
		this.userProfileImage = userProfileImage;
	}

	public Long getMessageId() {
		return messageId;
	}

	public void setMessageId(Long messageId) {
		this.messageId = messageId;
	}

	public Long getSendUserId() {
		return sendUserId;
	}

	public void setSendUserId(Long sendUserId) {
		this.sendUserId = sendUserId;
	}

	public Long getRecieveUserId() {
		return recieveUserId;
	}

	public void setRecieveUserId(Long recieveUserId) {
		this.recieveUserId = recieveUserId;
	}

	public String getMessageContents() {
		return messageContents;
	}

	public void setMessageContents(String messageContents) {
		this.messageContents = messageContents;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public boolean isSender() {
		return isSender;
	}

	public void setSender(boolean isSender) {
		this.isSender = isSender;
	}
	
	public String getMessageUpdateDatetime() {
		return messageUpdateDatetime;
	}

	public void setMessageUpdateDatetime(String messageUpdateDatetime) {
		this.messageUpdateDatetime = messageUpdateDatetime;
	}
	
	public List<String> getContentsByLine() {
		return Arrays.asList(messageContents.split("\\r\\n|\\n"));
	}
	
	public JSONObject toJSON() {
		return new JSONObject(this);
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((messageId == null) ? 0 : messageId.hashCode());
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
		MessageDTO other = (MessageDTO) obj;
		if (messageId == null) {
			
			if (other.messageId != null)
				return false;
		} else if (!messageId.equals(other.messageId))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "MessageDTO [messageId=" + messageId + ", sendUserId=" + sendUserId + ", recieveUserId=" + recieveUserId
				+ ", userName=" + userName + ", isSender=" + isSender + ", messageContents=" + messageContents
				+ ", messageUpdateDatetime=" + messageUpdateDatetime + ", userProfileImage=" + userProfileImage + "]";
	}

}
