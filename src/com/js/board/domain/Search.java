package com.js.board.domain;

public class Search {
	private String type;
	private String keyword;
	
	public Search(String type, String keyword) {
		this.type = type;
		this.keyword = keyword;

		
	}
	
	public String[] getTypes() {
		return type == null ? new String[]{} : type.split("&");
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

}
