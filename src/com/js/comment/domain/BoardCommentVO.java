/*유저 기본 속성 정보 창고*/
package com.js.comment.domain;

public class BoardCommentVO {
	private Long commentId;
	private Long boardId;
	private Long userId;
	private String commmentContents;
	
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

	public String getCommmentContents() {
		return commmentContents;
	}

	public void setCommmentContents(String commmentContents) {
		this.commmentContents = commmentContents;
	}

	@Override
	public String toString() {
		return "BoardCommentVO [commentId=" + commentId + ", boardId=" + boardId + ", userId=" + userId
				+ ", commmentContents=" + commmentContents + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((boardId == null) ? 0 : boardId.hashCode());
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
		if (boardId == null) {
			if (other.boardId != null)
				return false;
		} else if (!boardId.equals(other.boardId))
			return false;
		return true;
	}

	
}
