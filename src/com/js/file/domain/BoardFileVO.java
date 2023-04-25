/*유저 기본 속성 정보 창고*/
package com.js.file.domain;

public class BoardFileVO {
	private Long tag_id;
	private Long board_id;
	private String file_name;
	private String file_origin_name;
	private String tbl_board_attachment_file;
	private Long file_size;
	private String file_image;
	
	public BoardFileVO() {;}

	public Long getTag_id() {
		return tag_id;
	}

	public void setTag_id(Long tag_id) {
		this.tag_id = tag_id;
	}

	public Long getBoard_id() {
		return board_id;
	}

	public void setBoard_id(Long board_id) {
		this.board_id = board_id;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getFile_origin_name() {
		return file_origin_name;
	}

	public void setFile_origin_name(String file_origin_name) {
		this.file_origin_name = file_origin_name;
	}

	public String getTbl_board_attachment_file() {
		return tbl_board_attachment_file;
	}

	public void setTbl_board_attachment_file(String tbl_board_attachment_file) {
		this.tbl_board_attachment_file = tbl_board_attachment_file;
	}

	public Long getFile_size() {
		return file_size;
	}

	public void setFile_size(Long file_size) {
		this.file_size = file_size;
	}

	public String getFile_image() {
		return file_image;
	}

	public void setFile_image(String file_image) {
		this.file_image = file_image;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((board_id == null) ? 0 : board_id.hashCode());
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
		BoardFileVO other = (BoardFileVO) obj;
		if (board_id == null) {
			if (other.board_id != null)
				return false;
		} else if (!board_id.equals(other.board_id))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "BoardFileVO [tag_id=" + tag_id + ", board_id=" + board_id + ", file_name=" + file_name
				+ ", file_origin_name=" + file_origin_name + ", tbl_board_attachment_file=" + tbl_board_attachment_file
				+ ", file_size=" + file_size + ", file_image=" + file_image + "]";
	}
	
	
}
