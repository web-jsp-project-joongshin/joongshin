package com.js.message.domain;

public class MessageDTO{
	private Long messageId;
	private Long sendUserId;
	private Long recieveUserId;
	private String userName;
	private boolean isSender;
	private String messageContents;
	
	public MessageDTO() {;}

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

	@Override
	public String toString() {
		return "MessageDTO [messageId=" + messageId + ", sendUserId=" + sendUserId + ", recieveUserId=" + recieveUserId
				+ ", userName=" + userName + ", isSender=" + isSender + ", messageContents=" + messageContents + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (isSender ? 1231 : 1237);
		result = prime * result + ((messageContents == null) ? 0 : messageContents.hashCode());
		result = prime * result + ((messageId == null) ? 0 : messageId.hashCode());
		result = prime * result + ((recieveUserId == null) ? 0 : recieveUserId.hashCode());
		result = prime * result + ((sendUserId == null) ? 0 : sendUserId.hashCode());
		result = prime * result + ((userName == null) ? 0 : userName.hashCode());
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
		if (isSender != other.isSender)
			return false;
		if (messageContents == null) {
			if (other.messageContents != null)
				return false;
		} else if (!messageContents.equals(other.messageContents))
			return false;
		if (messageId == null) {
			if (other.messageId != null)
				return false;
		} else if (!messageId.equals(other.messageId))
			return false;
		if (recieveUserId == null) {
			if (other.recieveUserId != null)
				return false;
		} else if (!recieveUserId.equals(other.recieveUserId))
			return false;
		if (sendUserId == null) {
			if (other.sendUserId != null)
				return false;
		} else if (!sendUserId.equals(other.sendUserId))
			return false;
		if (userName == null) {
			if (other.userName != null)
				return false;
		} else if (!userName.equals(other.userName))
			return false;
		return true;
	}
}
