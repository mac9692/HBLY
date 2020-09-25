package edu.bit.hbly.vo;

import java.util.Date;

public class BoardVO {
	
	private int boardNumber;
	private String boardTitle;
	private String boardContent;
	private Date boardRegidate;
	private String userId;
	
	public int getBoardNumber() {
		return boardNumber;
	}
	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
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
	public Date getBoardRegidate() {
		return boardRegidate;
	}
	public void setBoardRegidate(Date boardRegidate) {
		this.boardRegidate = boardRegidate;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	

	
	
}
