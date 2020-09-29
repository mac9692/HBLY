package edu.bit.hbly.vo;

import java.sql.Date;

public class GoodsReplyVO {
	
/*	create table tbl_reply_goods(
			goodsNumber number not null,
			userId varchar2(50) not null,
			goodsReplyNumber number not null,
			goodsReplyContent varchar2(2000) not null,
			goodsReplyRegidate date default sysdate,
			primary key(goodsNumber,goodsReplyNumber)
			);*/
	
	private int goodsNumber;
	private String userId;
	private int goodsReplyNumber;
	private String goodsReplyContent;
	private Date goodsReplyRegidate;
	
	public GoodsReplyVO() {
		
	}

	public GoodsReplyVO(int goodsNumber, String userId, int goodsReplyNumber, String goodsReplyContent,
			Date goodsReplyRegidate) {
		super();
		this.goodsNumber = goodsNumber;
		this.userId = userId;
		this.goodsReplyNumber = goodsReplyNumber;
		this.goodsReplyContent = goodsReplyContent;
		this.goodsReplyRegidate = goodsReplyRegidate;
	}

	public int getGoodsNumber() {
		return goodsNumber;
	}

	public void setGoodsNumber(int goodsNumber) {
		this.goodsNumber = goodsNumber;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getGoodsReplyNumber() {
		return goodsReplyNumber;
	}

	public void setGoodsReplyNumber(int goodsReplyNumber) {
		this.goodsReplyNumber = goodsReplyNumber;
	}

	public String getGoodsReplyContent() {
		return goodsReplyContent;
	}

	public void setGoodsReplyContent(String goodsReplyContent) {
		this.goodsReplyContent = goodsReplyContent;
	}

	public Date getGoodsReplyRegidate() {
		return goodsReplyRegidate;
	}

	public void setGoodsReplyRegidate(Date goodsReplyRegidate) {
		this.goodsReplyRegidate = goodsReplyRegidate;
	}
	
	
}
