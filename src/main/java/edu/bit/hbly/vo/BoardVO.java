
package edu.bit.hbly.vo;

import java.util.Date;

public class BoardVO {
	
	private int boardNumber;
	private String boardTitle;
	private String boardContent;
	private Date boardRegidate;
	private String userId;
	private int boardHit;
	private String categoryCode;
	private int boardLikeCount;
	private int boardHateCount;
		
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public int getBoardHit() {
		return boardHit;
	}
	public void setBoardHit(int boardHit) {
		this.boardHit = boardHit;
	}
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
	public int getBoardLikeCount() {
		return boardLikeCount;
	}
	public void setBoardLikeCount(int boardLikeCount) {
		this.boardLikeCount = boardLikeCount;
	}
	public int getBoardHateCount() {
		return boardHateCount;
	}
	public void setBoardHateCount(int boardHateCount) {
		this.boardHateCount = boardHateCount;
	}
	
	
}
