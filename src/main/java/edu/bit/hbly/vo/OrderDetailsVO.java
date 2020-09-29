package edu.bit.hbly.vo;

public class OrderDetailsVO {
	/*
	orderDetailsNumber number not null,
	orderId varchar2(50) not null,
	goodsNumber number not null,
	cartStock number not null,
	primary key(orderDetailsNumber)
	*/
	
	private int orderDetailsNumber;
	private String orderId;
	private int goodsNumber;
	private int cartStock;
	
	public OrderDetailsVO() {
		
	}

	public OrderDetailsVO(int orderDetailsNumber, String orderId, int goodsNumber, int cartStock) {
		super();
		this.orderDetailsNumber = orderDetailsNumber;
		this.orderId = orderId;
		this.goodsNumber = goodsNumber;
		this.cartStock = cartStock;
	}

	public int getOrderDetailsNumber() {
		return orderDetailsNumber;
	}

	public void setOrderDetailsNumber(int orderDetailsNumber) {
		this.orderDetailsNumber = orderDetailsNumber;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
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
	
	
	
}
