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

	//kakao
	public MemberVO getUserByIdAndLoginType(String userId, String login_Type);
	
	
}
