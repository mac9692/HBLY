package edu.bit.hbly.vo;

public class CategoryVO {
/* 
		categoryName varchar2(20) not null,
		categoryCode VARCHAR2(30) not null,
		categoryCodeRef varchar2(30) null,
		level NUMBER
*/		
	private String categoryName;
	private String categoryCode;
	private String categoryCodeRef;
	private int level;
	
	
	public CategoryVO() {
		
	}
	
	
	public CategoryVO(String categoryName, String categoryCode, String categoryCodeRef, int level) {
		super();
		this.categoryName = categoryName;
		this.categoryCode = categoryCode;
		this.categoryCodeRef = categoryCodeRef;
		this.level = level;
	}
	
	
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
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
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
	
		
}
