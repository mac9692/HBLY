package edu.bit.hbly.vo;

import java.util.Date;

public class PolicyVO {
/*
	create table tbl_policy(
			policyNumber number not null Primary key,
			policyTitle varchar2(100) not null,
			policyContent varchar2(4000) not null,
			policyRegidate date default sysdate,
			userId  varchar2(50) not null

			);
*/
	private int policyNumber;
	private String policyTitle;
	private String policyContent;
	private Date policyRegidate;
	private String userId;
	
	public PolicyVO() {
		
	}
	
	public PolicyVO(int policyNumber, String policyTitle, String policyContent, Date policyRegidate, String userId) {
		super();
		this.policyNumber = policyNumber;
		this.policyTitle = policyTitle;
		this.policyContent = policyContent;
		this.policyRegidate = policyRegidate;
		this.userId = userId;
	}

	public int getPolicyNumber() {
		return policyNumber;
	}

	public void setPolicyNumber(int policyNumber) {
		this.policyNumber = policyNumber;
	}

	public String getPolicyTitle() {
		return policyTitle;
	}

	public void setPolicyTitle(String policyTitle) {
		this.policyTitle = policyTitle;
	}

	public String getPolicyContent() {
		return policyContent;
	}

	public void setPolicyContent(String policyContent) {
		this.policyContent = policyContent;
	}

	public Date getPolicyRegidate() {
		return policyRegidate;
	}

	public void setPolicyRegidate(Date policyRegidate) {
		this.policyRegidate = policyRegidate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
	
	
	
}
