package edu.bit.hbly.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import edu.bit.hbly.dao.MemberDAO;
import edu.bit.hbly.vo.MemberVO;



@Service
public class MemberServiceImpl implements MemberService{

	@Inject
	private MemberDAO dao;
	
	//회원가입
	@Override
	public void signup(MemberVO vo) throws Exception {
		dao.signup(vo);
		
	}
	
	


}
