package edu.bit.hbly.service;

import edu.bit.hbly.vo.MemberVO;

public interface MemberService {
	
	//회원가입
	public void signUp(MemberVO vo) throws Exception;
	
	//로그인
	public MemberVO signin(String userPassword) throws Exception;
	
	//회원정보 수정
	public void modify(MemberVO vo) throws Exception;
	
	//회원탈퇴
	public void withdrawal(MemberVO vo) throws Exception;

}
