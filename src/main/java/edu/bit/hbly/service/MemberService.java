package edu.bit.hbly.service;

import javax.servlet.http.HttpSession;

import edu.bit.hbly.vo.MemberVO;



public interface MemberService {
	//ȸ������
	public void signup(MemberVO vo) throws Exception;
	//�α���
	public MemberVO signin(MemberVO vo) throws Exception;
	//�α׾ƿ�
	public void signout(HttpSession session) throws Exception;
}
