package edu.bit.hbly.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import edu.bit.hbly.vo.MemberVO;




@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sql;
	
	//mapper
	private static String namespace= "edu.bit.hbly.mappers.memberMapper";
	
	//1.sign up
	
	//member sign up
	@Override
	public void signup(MemberVO vo) throws Exception {
		sql.insert(namespace + ".signup",vo);
	}
	
	@Override
	public void checkId(String userId) {
		sql.selectOne(namespace + ".checkId",userId);
	}


	@Override
	public void checkNickname(String userNickname) {
		sql.selectOne(namespace + ".checkNickname",userNickname);
	}
	
	
	//2.sign in
	
	//member sign in
	@Override
	public MemberVO signin(MemberVO vo) throws Exception {
	
		return sql.selectOne(namespace + ".signin",vo);
	}



	
	

}
