package edu.bit.hbly.service;

import javax.servlet.http.HttpSession;

import edu.bit.hbly.vo.MemberVO;



public interface MemberService {
	
	//회원가입
	public void signup(MemberVO vo) throws Exception;
	
}
