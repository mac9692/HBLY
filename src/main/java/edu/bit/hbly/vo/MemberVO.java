package edu.bit.hbly.vo;

import java.util.Date;

import lombok.Builder;

@Builder
public class MemberVO {
	/*
		create table tbl_member(
		userId varchar2(50) not null,
		userPassword varchar2(100) not null,
		userName varchar2(30) not null,
		userBirth char(8) not null,
		userGender char(1) not null
		CONSTRAINT tbl_member_userGender_ck check(userGender in('M','F')),
		userNickname varchar2(30) not null,
		userPhoneNumber varchar2(20) not null,
		userAddress1 varchar2(20) not null,
		userAddress2 varchar2(50) not null,
		userAddress3 varchar2(50) not null,
		userRegidate date default sysdate,
		verify number default 0,
		primary key(userId)
		);
	 */
	
	private String userId;
	private String userPassword;
	private String userName;
	private String userBirth;
	private String userGender;
	private String userNickname;
	private String userPhoneNumber;
	private String userAddress1;
	private String userAddress2;
	private String userAddress3;
	private Date userRegidate;
	private int verify;
	private String login_Type;
	

	
	public MemberVO() {
		super();
	}


	public MemberVO(String userId, String userPassword, String userName, String userBirth, String userGender,
			String userNickname, String userPhoneNumber, String userAddress1, String userAddress2, String userAddress3,
			Date userRegidate, int verify, String login_Type) {

		super();
		this.userId = userId;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userBirth = userBirth;
		this.userGender = userGender;
		this.userNickname = userNickname;
		this.userPhoneNumber = userPhoneNumber;
		this.userAddress1 = userAddress1;
		this.userAddress2 = userAddress2;
		this.userAddress3 = userAddress3;
		this.userRegidate = userRegidate;
		this.verify = verify;
		this.login_Type = login_Type;
	}
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getUserPhoneNumber() {
		return userPhoneNumber;
	}
	public void setUserPhoneNumber(String userPhoneNumber) {
		this.userPhoneNumber = userPhoneNumber;
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
	public Date getUserRegidate() {
		return userRegidate;
	}
	public void setUserRegidate(Date userRegidate) {
		this.userRegidate = userRegidate;
	}
	public int getVerify() {
		return verify;
	}
	public void setVerify(int verify) {
		this.verify = verify;
	}
	
	public String getLogin_Type() {
		return login_Type;
	}

	public void setLogin_Type(String login_Type) {
		this.login_Type = login_Type;
	}


	public String getAuthorities() {
		
		String authorities = "ROLE_USER";
		
		if(getVerify()==9)
			authorities="ROLE_ADMIN";
		
		return authorities;
	}
	
	

}
