package com.js.comment.domain;

public class CommentCriteria {
	private int offset;
	private int rowCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;

	public CommentCriteria(int page, int total) {
	//	한 페이지에 출력되는 게시글의 개수
		rowCount = 5;
	//	한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 5;
		
		offset = (page - 1) * rowCount;
		endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		prev = startPage > 1;
		next = false;
		endPage = endPage > realEndPage ? realEndPage == 0 ? 1 : realEndPage : endPage;
		next = endPage < realEndPage;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}
}














