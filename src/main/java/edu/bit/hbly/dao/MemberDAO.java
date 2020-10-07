package edu.bit.hbly.dao;

import edu.bit.hbly.vo.MemberVO;

public interface MemberDAO {
	
	//member sign up
	public void signup(MemberVO vo) throws Exception;
	//member sign up - id(email) check
	public void checkId(String userId);
	//member sign up - nickname check
	public void checkNickname(String userNickname);
	
	//member sign in
	public MemberVO signin(MemberVO vo) throws Exception;


}
