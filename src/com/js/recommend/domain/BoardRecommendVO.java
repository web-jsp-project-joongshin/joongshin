
package com.js.recommend.domain;

public class BoardRecommendVO {
	private int recId; /*개인 번호 pk*/
	private int boardId;
	private int userId;
	
	
	public BoardRecommendVO() {
		
	}
	
	public int getRecId() {
		return recId;
	}



	public int getBoardId() {
		return boardId;
	}



	public int getUserId() {
		return userId;
	}



	@Override
	public String toString() {
		return "BoardRecommendVO [recId=" + recId + ", boardId=" + boardId + ", userId=" + userId + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + recId;
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
		if (recId != other.recId)
			return false;
		return true;
	}
	
	
	
	
}
