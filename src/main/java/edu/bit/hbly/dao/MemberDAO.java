package edu.bit.hbly.dao;

import edu.bit.hbly.vo.MemberVO;

public interface MemberDAO {
	
	//ȸ������
	public void signup(MemberVO vo) throws Exception;
	
	
	//�α���
	public MemberVO signin(MemberVO vo) throws Exception;
}
