package edu.bit.hbly.vo;

import java.util.Date;

public class ReplyVO {
	
	private int boardNumber;
	private int boardReplyNumber;
	private String userId;
	private String boardReplyContent;
	private Date boardReplyRegidate;
	
	public int getBoardNumber() {
		return boardNumber;
	}
	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}
	public int getBoardReplyNumber() {
		return boardReplyNumber;
	}
	public void setBoardReplyNumber(int boardReplyNumber) {
		this.boardReplyNumber = boardReplyNumber;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getBoardReplyContent() {
		return boardReplyContent;
	}
	public void setBoardReplyContent(String boardReplyContent) {
		this.boardReplyContent = boardReplyContent;
	}
	public Date getBoardReplyRegidate() {
		return boardReplyRegidate;
	}
	public void setBoardReplyRegidate(Date boardReplyRegidate) {
		this.boardReplyRegidate = boardReplyRegidate;
	}
	
	@Override
	public String toString() {
		return "ReplyVO [boardNumber=" + boardNumber + ", boardReplyNumber=" + boardReplyNumber + ", userId=" + userId
				+ ", boardReplyContent=" + boardReplyContent + ", boardReplyRegidate=" + boardReplyRegidate + "]";
	}

	

}
