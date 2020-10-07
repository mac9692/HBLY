package edu.bit.hbly.service;

import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;

import edu.bit.hbly.vo.MemberVO;



public interface MemberService {
	
	//member sign up
	public void signup(MemberVO vo) throws Exception;
	//member sign up - id(email) check
	public void checkId(String userId) throws Exception;
	//member sign up - nickname check
	public void checkNickname(String userNickname) throws Exception;
	//member sign up - phonenumber check / certification cellphone
	public ResponseEntity<String> certificationCellphone(String jsonData) throws Exception;
	
	
	//member sign in
	public MemberVO signin(MemberVO vo) throws Exception;
	//member sign out
	public void signout(HttpSession session) throws Exception;





	
}
