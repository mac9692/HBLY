package edu.bit.hbly.service;

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

}
