/*유저 기본 속성 정보 창고*/
package com.js.comment.domain;

public class BoardCommentVO {
	private Long commentId;
	private Long boardId;
	private Long userId;
	private String commentComments;
	private String commentRegisterDate;
	
	public BoardCommentVO() {;}

	public Long getCommentId() {
		return commentId;
	}

	public void setCommentId(Long commentId) {
		this.commentId = commentId;
	}

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getCommentComments() {
		return commentComments;
	}

	public void setCommentComments(String commentComments) {
		this.commentComments = commentComments;
	}

	public String getCommentRegisterDate() {
		return commentRegisterDate;
	}

	public void setCommentRegisterDate(String commentRegisterDate) {
		this.commentRegisterDate = commentRegisterDate;
	}

	@Override
	public String toString() {
		return "BoardCommentVO [commentId=" + commentId + ", boardId=" + boardId + ", userId=" + userId
				+ ", commentComments=" + commentComments + ", commentRegisterDate=" + commentRegisterDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((commentId == null) ? 0 : commentId.hashCode());
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
		BoardCommentVO other = (BoardCommentVO) obj;
		if (commentId == null) {
			if (other.commentId != null)
				return false;
		} else if (!commentId.equals(other.commentId))
			return false;
		return true;
	}


}
