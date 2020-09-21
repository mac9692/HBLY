package edu.bit.hbly.vo;

import java.util.Date;



public class GoodsVO {
	/*
	 goodsNumber number not null,
	    goodsName varchar2(50) not null,
	    goodsPrice number not null,
	    goodsStock number null,
	    goodsDescribe varchar2(500) null,
	    goodsImage varchar2(200) null,
	    goodsDate date default sysdate,
	    categoryCode varchar2(30) not null,
	    primary key(goodsNum)
	    */
	private int goodsNumber;
	private String goodsName;
	private int goodsPrice;
	private int goodsStock;
	private String goodsDescribe;
	private String goodsImage;
	private Date goodsDate;
	private String categoryCode;
	private String  goodsThumbImage;
	
	public GoodsVO() {
		
	}

	

	public GoodsVO(int goodsNumber, String goodsName, int goodsPrice, int goodsStock, String goodsDescribe,
			String goodsImage, Date goodsDate, String categoryCode, String goodsThumbImage) {
		super();
		this.goodsNumber = goodsNumber;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsStock = goodsStock;
		this.goodsDescribe = goodsDescribe;
		this.goodsImage = goodsImage;
		this.goodsDate = goodsDate;
		this.categoryCode = categoryCode;
		this.goodsThumbImage = goodsThumbImage;
	}



	public int getGoodsNumber() {
		return goodsNumber;
	}

	public void setGoodsNumber(int goodsNumber) {
		this.goodsNumber = goodsNumber;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public int getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public int getGoodsStock() {
		return goodsStock;
	}

	public void setGoodsStock(int goodsStock) {
		this.goodsStock = goodsStock;
	}

	public String getGoodsDescribe() {
		return goodsDescribe;
	}

	public void setGoodsDescribe(String goodsDescribe) {
		this.goodsDescribe = goodsDescribe;
	}

	public String getGoodsImage() {
		return goodsImage;
	}

	public void setGoodsImage(String goodsImage) {
		this.goodsImage = goodsImage;
	}

	public Date getGoodsDate() {
		return goodsDate;
	}

	public void setGoodsDate(Date goodsDate) {
		this.goodsDate = goodsDate;
	}

	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	public String getGoodsThumbImage() {
		return goodsThumbImage;
	}

	public void setGoodsThumbImage(String goodsThumbImage) {
		this.goodsThumbImage = goodsThumbImage;
	}
	
	
	
}