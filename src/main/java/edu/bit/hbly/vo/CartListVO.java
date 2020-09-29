package edu.bit.hbly.vo;

import java.util.Date;

public class CartListVO {
	
	/*
	 * create table tbl_cart( 
	 * cartNumber number not null, 
	 * userId varchar2(50) not
	 * null, 
	 * goodsNumber number not null, 
	 * cartStock number not null, 
	 * addDate date
	 * default sysdate, 
	 * primary key(cartNumber, userId) );
	 */
	
	private int cartNumber;
	private String userId;
	private int goodsNumber;
	private int cartStock;
	private Date addDate;
	
	private int num;
	private String goodsName;
	private int goodsPrice;
	private String goodsThumbImage;
	
	
	
	public CartListVO() {
		
	}



	public CartListVO(int cartNumber, String userId, int goodsNumber, int cartStock, Date addDate, int num,
			String goodsName, int goodsPrice, String goodsThumbImage) {
		super();
		this.cartNumber = cartNumber;
		this.userId = userId;
		this.goodsNumber = goodsNumber;
		this.cartStock = cartStock;
		this.addDate = addDate;
		this.num = num;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsThumbImage = goodsThumbImage;
	}



	public int getCartNumber() {
		return cartNumber;
	}



	public void setCartNumber(int cartNumber) {
		this.cartNumber = cartNumber;
	}



	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public int getGoodsNumber() {
		return goodsNumber;
	}



	public void setGoodsNumber(int goodsNumber) {
		this.goodsNumber = goodsNumber;
	}



	public int getCartStock() {
		return cartStock;
	}



	public void setCartStock(int cartStock) {
		this.cartStock = cartStock;
	}



	public Date getAddDate() {
		return addDate;
	}



	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}



	public int getNum() {
		return num;
	}



	public void setNum(int num) {
		this.num = num;
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



	public String getGoodsThumbImage() {
		return goodsThumbImage;
	}



	public void setGoodsThumbImage(String goodsThumbImage) {
		this.goodsThumbImage = goodsThumbImage;
	}
	
	
	
}
