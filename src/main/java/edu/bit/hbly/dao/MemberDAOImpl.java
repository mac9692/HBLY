package edu.bit.hbly.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import edu.bit.hbly.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Inject
	private SqlSession sql;
	
	@Inject
	private BCryptPasswordEncoder passEncoder;
	
	//¸ÅÆÛ
	private static String namespace= "edu.bit.hbly.mappers.memberMapper";

	@Override
	public void signup(MemberVO vo) throws Exception {
		String userPassword = vo.getUserPassword();
		String encode = passEncoder.encode(userPassword);
		
		vo.setUserPassword(encode);
		
		sql.insert(namespace + ".signup",vo);
		sql.insert(namespace + ".getAuthorities", vo);
	}

	@Override
	public MemberVO signin(String userPassWord) {
		
		return sql.selectOne(namespace + ".signin", userPassWord);
	}

	
	@Override 
	public void modify(MemberVO vo) throws Exception {
		
		String userPassword =vo.getUserPassword();
		String encode = passEncoder.encode(userPassword);
		
		vo.setUserPassword(encode);
		
		sql.update(namespace +".modify", vo); 
	}

	
	@Override
	public void withdrawal(MemberVO vo) throws Exception {
		
		
		sql.delete(namespace + ".withdrawal", vo);
	}
	 

	
	
}
