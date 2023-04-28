	/*
	 * DTO는 주로 데이터 전송을 위해 사용되고, VO는 데이터 조회를 위해 사용된다. 
	 * 그러나 구현 방법에 따라서 DTO와 VO가 혼용되어 사용되기도 한다.
	 * 그니까 dto는 쿼리를 조인하거나 해서 기본 db의 구조와 다를때 select문을 확인하기 위해 존재한다고 생각하는것 
	 */	
	package com.js.board.domain;
	
	public class BoardDTO {
		private Long boardId;
		private String boardTitle;
		private String boardContent;
		private String boardCreationDate;
		private String boardReplyDate;
		private Long boardReadCount;
		private Long userId;
		private String userName;
		private String boardStatus;
		
		public BoardDTO() {;}
		
		public Long getBoardId() {
			return boardId;
		}
	
		public void setBoardId(Long boardId) {
			this.boardId = boardId;
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
	
	
		public Long getBoardReadCount() {
			return boardReadCount;
		}
	
		public void setBoardReadCount(Long boardReadCount) {
			this.boardReadCount = boardReadCount;
		}
	
		public Long getUserId() {
			return userId;
		}
	
		public void setUserId(Long userId) {
			this.userId = userId;
		}
	
		public String getUserName() {
			return userName;
		}
	
		public void setuserName(String userName) {
			this.userName = userName;
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

		public void setUserName(String userName) {
			this.userName = userName;
		}
		
		public String getBoardStatus() {
			return boardStatus;
		}

		public void setBoardStatus(String boardStatus) {
			this.boardStatus = boardStatus;
		}

		

		@Override
		public String toString() {
			return "BoardDTO [boardId=" + boardId + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
					+ ", boardCreationDate=" + boardCreationDate + ", boardReplyDate=" + boardReplyDate
					+ ", boardReadCount=" + boardReadCount + ", userId=" + userId + ", userName=" + userName
					+ ", boardStatus=" + boardStatus + "]";
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
			BoardDTO other = (BoardDTO) obj;
			if (boardId == null) {
				if (other.boardId != null)
					return false;
			} else if (!boardId.equals(other.boardId))
				return false;
			return true;
		}
	}
