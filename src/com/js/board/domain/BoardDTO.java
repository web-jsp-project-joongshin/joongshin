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
		private String boardRegisterDate;
		private String boardUpdateDate;
		private Long boardReadCount;
		private Long memberId;
		private String memberName;
		
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
	
		public String getBoardRegisterDate() {
			return boardRegisterDate;
		}
	
		public void setBoardRegisterDate(String boardRegisterDate) {
			this.boardRegisterDate = boardRegisterDate;
		}
	
		public String getBoardUpdateDate() {
			return boardUpdateDate;
		}
	
		public void setBoardUpdateDate(String boardUpdateDate) {
			this.boardUpdateDate = boardUpdateDate;
		}
	
		public Long getBoardReadCount() {
			return boardReadCount;
		}
	
		public void setBoardReadCount(Long boardReadCount) {
			this.boardReadCount = boardReadCount;
		}
	
		public Long getMemberId() {
			return memberId;
		}
	
		public void setMemberId(Long memberId) {
			this.memberId = memberId;
		}
	
		public String getMemberName() {
			return memberName;
		}
	
		public void setMemberName(String memberName) {
			this.memberName = memberName;
		}
	
		@Override
		public String toString() {
			return "BoardDTO [boardId=" + boardId + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
					+ ", boardRegisterDate=" + boardRegisterDate + ", boardUpdateDate=" + boardUpdateDate
					+ ", boardReadCount=" + boardReadCount + ", memberId=" + memberId + ", memberName=" + memberName + "]";
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
