package edu.bit.hbly.service;


import org.springframework.http.ResponseEntity;

import edu.bit.hbly.vo.MemberVO;

public interface MemberService {

	//ȸ������
	public void signUp(MemberVO vo) throws Exception;
	
	//�α���
	public MemberVO signin(String userPassword) throws Exception;
	
	//ȸ������ ����
	public void modify(MemberVO vo) throws Exception;
	
	//ȸ��Ż��
	public void withdrawal(MemberVO vo) throws Exception;
	
	//kakao
	public MemberVO getUserByIdAndLoginType(String userId, String login_Type);
	

	//member sign up - id check
	public int checkId(String userId) throws Exception;
	
	//member sign up - nickname check
	public int checkNickname(String userNickname) throws Exception;
	
	//member sign up - phonenumber check / certification cellphone
	public ResponseEntity<String> certificationCellphone(String jsonData) throws Exception;
	
	

}
