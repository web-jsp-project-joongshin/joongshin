/*
 VO(Value Object)는 비즈니스 로직에서 사용되는 값을 담는 객체이다.
 VO는 데이터베이스 테이블의 컬럼과 1:1로 매칭되며, 
 특정 비즈니스 로직을 처리하기 위해 여러 컬럼의 값을 묶어서 사용하는 경우가 많다. 
 VO는 데이터를 담기 위한 목적으로 사용되며, 데이터의 전달 목적으로 사용된다. 
 VO는 보통 읽기 전용(Read Only)이다. 
 * 
 * */

package com.js.board.domain;

public class BoardVO {
	private Long boardId;
	private String userId;
	private String boardTitle;
	private String boardContent;
	private String boardType;
	private String boardCreationDate;
	private String boardReplyDate;
	
	public BoardVO() {;}

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public String getBoardCreationDate() {
		return boardCreationDate;
	}

	public void setBoardCreationDate(String boardCreationDate) {
		this.boardCreationDate = boardCreationDate;
	}

	public String getBoardReplyDate() {
		return boardReplyDate;
	}

	public void setBoardReplyDate(String boardReplyDate) {
		this.boardReplyDate = boardReplyDate;
	}
	
	

	@Override
	public String toString() {
		return "BoardVO [boardId=" + boardId + ", userId=" + userId + ", boardTitle=" + boardTitle + ", boardContent="
				+ boardContent + ", boardType=" + boardType + ", boardCreationDate=" + boardCreationDate
				+ ", boardReplyDate=" + boardReplyDate + "]";
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
		BoardVO other = (BoardVO) obj;
		if (boardId == null) {
			if (other.boardId != null)
				return false;
		} else if (!boardId.equals(other.boardId))
			return false;
		return true;
	}

	
}
