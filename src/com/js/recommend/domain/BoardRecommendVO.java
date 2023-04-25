
package com.js.recommend.domain;

public class BoardRecommendVO {
	private Long recId; /*개인 번호 pk*/
	private Long boardId;
	private Long userId;
	
	
	public BoardRecommendVO() {;}


	public Long getRecId() {
		return recId;
	}

	public void setRecId(Long recId) {
		this.recId = recId;
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
		BoardRecommendVO other = (BoardRecommendVO) obj;
		if (boardId == null) {
			if (other.boardId != null)
				return false;
		} else if (!boardId.equals(other.boardId))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "BoardRecommendVO [recId=" + recId + ", boardId=" + boardId + ", userId=" + userId + "]";
	}
}
