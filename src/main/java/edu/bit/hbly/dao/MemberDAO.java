package edu.bit.hbly.dao;

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
	
	//member sign up - id(email) check
	public int checkId(String userId) throws Exception;
	
	//member sign up - nickname check
	public int checkNickname(String userNickname) throws Exception;
}
