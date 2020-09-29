package edu.bit.hbly.vo;

import java.util.Date;

public class OrderListVO {
	private String orderId;
	private String userId;
	private String orderRec;
	private String userAddress1;
	private String userAddress2;
	private String userAddress3;
	private String orderPhoneNumber;
	private int amount;
	private Date orderDate;
	private String delivery;
	
	private int orderDetailsNumber;
	private int goodsNumber;
	private int cartStock;
	
	private String goodsName;
	private String goodsThumbImage;
	private int goodsPrice;

	public OrderListVO() {
		
	}

	public OrderListVO(String orderId, String userId, String orderRec, String userAddress1, String userAddress2,
			String userAddress3, String orderPhoneNumber, int amount, Date orderDate, String delivery,
			int orderDetailsNumber, int goodsNumber, int cartStock, String goodsName, String goodsThumbImage,
			int goodsPrice) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.orderRec = orderRec;
		this.userAddress1 = userAddress1;
		this.userAddress2 = userAddress2;
		this.userAddress3 = userAddress3;
		this.orderPhoneNumber = orderPhoneNumber;
		this.amount = amount;
		this.orderDate = orderDate;
		this.delivery = delivery;
		this.orderDetailsNumber = orderDetailsNumber;
		this.goodsNumber = goodsNumber;
		this.cartStock = cartStock;
		this.goodsName = goodsName;
		this.goodsThumbImage = goodsThumbImage;
		this.goodsPrice = goodsPrice;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getOrderRec() {
		return orderRec;
	}

	public void setOrderRec(String orderRec) {
		this.orderRec = orderRec;
	}

	public String getUserAddress1() {
		return userAddress1;
	}

	public void setUserAddress1(String userAddress1) {
		this.userAddress1 = userAddress1;
	}

	public String getUserAddress2() {
		return userAddress2;
	}

	public void setUserAddress2(String userAddress2) {
		this.userAddress2 = userAddress2;
	}

	public String getUserAddress3() {
		return userAddress3;
	}

	public void setUserAddress3(String userAddress3) {
		this.userAddress3 = userAddress3;
	}

	public String getOrderPhoneNumber() {
		return orderPhoneNumber;
	}

	public void setOrderPhoneNumber(String orderPhoneNumber) {
		this.orderPhoneNumber = orderPhoneNumber;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}

	public int getOrderDetailsNumber() {
		return orderDetailsNumber;
	}

	public void setOrderDetailsNumber(int orderDetailsNumber) {
		this.orderDetailsNumber = orderDetailsNumber;
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

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsThumbImage() {
		return goodsThumbImage;
	}

	public void setGoodsThumbImage(String goodsThumbImage) {
		this.goodsThumbImage = goodsThumbImage;
	}

	public int getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	
}
