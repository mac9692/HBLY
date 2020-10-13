package edu.bit.hbly.dao;

import edu.bit.hbly.vo.MemberVO;

public interface MemberDAO {
	
	//회원가입
	public void signup(MemberVO vo) throws Exception;
	
	//로그인
	public MemberVO signin(String userPassword) throws Exception;
	
	//회원정보수정
	public void modify(MemberVO vo) throws Exception;
	
	//회원탈퇴
	public void withdrawal(MemberVO vo) throws Exception;

	//kakao
	public MemberVO getUserByIdAndLoginType(String userId, String login_Type);
	
	
}
