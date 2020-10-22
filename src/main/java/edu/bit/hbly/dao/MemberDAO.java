package edu.bit.hbly.dao;

import java.util.List;

import edu.bit.hbly.vo.MemberVO;



public interface MemberDAO {
	
	//ȸ������
	public void signup(MemberVO vo) throws Exception;
	
	//�α���
	public MemberVO signin(String userPassword) throws Exception;
	
	//ȸ����������
	public void modify(MemberVO vo) throws Exception;
	
	//ȸ��Ż��
	public void withdrawal(MemberVO vo) throws Exception;

	//kakao
	public MemberVO getUserByIdAndLoginType(String userId, String login_Type);
	
	
	//member sign up - id(email) check
	public int checkId(String userId) throws Exception;
	
	//member sign up - nickname check
	public int checkNickname(String userNickname) throws Exception;


	//member idInqury - Name&PhoneNumber check(Ajax)
	public List<MemberVO> checkNamePhoneNumber(MemberVO memberVO);
	
	//member pwInqury
	public int pwInqurySuccess(MemberVO memberVO);
}
