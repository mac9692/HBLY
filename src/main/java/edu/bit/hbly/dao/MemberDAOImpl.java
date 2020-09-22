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
	
	
	//ȸ������
	@Override
	public void signup(MemberVO vo) throws Exception {
		sql.insert(namespace + ".signup",vo);
		
	}

	//�α���
	@Override
	public MemberVO signin(MemberVO vo) throws Exception {
	
		return sql.selectOne(namespace + ".signin",vo);
	}
	
	

}
