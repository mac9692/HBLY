package edu.bit.hbly.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import edu.bit.hbly.dao.MemberDAO;
import edu.bit.hbly.vo.MemberVO;


@Service
public class MemberServiceImpl implements MemberService{
	
	@Inject
	private MemberDAO dao;

	@Override
	public void signUp(MemberVO vo) throws Exception{
		
		dao.signup(vo);
	}

	@Override
	public MemberVO signin(String userPassword) throws Exception {
		
		return dao.signin(userPassword);
	}

	
	@Override 
	public void modify(MemberVO vo) throws Exception {
	 
		dao.modify(vo); 
	
	}

	@Override
	public void withdrawal(MemberVO vo) throws Exception {
		
		dao.withdrawal(vo);
	}

	@Override
	public MemberVO getUserByIdAndLoginType(String userId, String login_Type) {
		
		return dao.getUserByIdAndLoginType(userId, login_Type);
	
	}

	
	
	

	

}
