package edu.bit.hbly.vo;

import java.util.Date;



public class GoodsViewVO {
	
	private int goodsNumber;
	private String goodsName;
	private int goodsPrice;
	private int goodsStock;
	private String goodsDescribe;
	private String goodsImage;
	private Date goodsRegidate;
	private String categoryCode;
	
	private String categoryCodeRef;
	private String categoryName;
	
	private String goodsThumbImage;
	
	public GoodsViewVO() {
		
	}

	
	
	
	public GoodsViewVO(int goodsNumber, String goodsName, int goodsPrice, int goodsStock, String goodsDescribe,
			String goodsImage, Date goodsRegidate, String categoryCode, String categoryCodeRef, String categoryName,
			String goodsThumbImage) {
		super();
		this.goodsNumber = goodsNumber;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsStock = goodsStock;
		this.goodsDescribe = goodsDescribe;
		this.goodsImage = goodsImage;
		this.goodsRegidate = goodsRegidate;
		this.categoryCode = categoryCode;
		this.categoryCodeRef = categoryCodeRef;
		this.categoryName = categoryName;
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

	public Date getGoodsRegidate() {
		return goodsRegidate;
	}

	public void setGoodsRegidate(Date goodsRegidate) {
		this.goodsRegidate = goodsRegidate;
	}

	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	public String getCategoryCodeRef() {
		return categoryCodeRef;
	}

	public void setCategoryCodeRef(String categoryCodeRef) {
		this.categoryCodeRef = categoryCodeRef;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getGoodsThumbImage() {
		return goodsThumbImage;
	}

	public void setGoodsThumbImage(String goodsThumbImage) {
		this.goodsThumbImage = goodsThumbImage;
	}

	
	



}
