package edu.bit.hbly.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import edu.bit.hbly.mapper.UserMapper;
import edu.bit.hbly.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Inject
	private UserMapper userMapper;
	@Inject
	private SqlSession sql;
	
	@Inject
	private BCryptPasswordEncoder passEncoder;
	
	//����
	private static String namespace= "edu.bit.hbly.mappers.memberMapper";

	@Override
	public void signup(MemberVO vo) throws Exception {
		String userPassword = vo.getUserPassword();
		String encode = passEncoder.encode(userPassword);
		
		vo.setUserPassword(encode);
		
		//social login
		if(null==vo.getLogin_Type()) {
			vo.setLogin_Type("NORMAL");
		}
		
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
//		if(!(vo.getUserPassword()==null)) {
			sql.update(namespace +".modify", vo); 
		}
	

	
	@Override
	public void withdrawal(MemberVO vo) throws Exception {
		
		String userId = vo.getUserId();
		String userPassword = vo.getUserPassword();
		
		sql.delete(namespace + ".withdrawalAuthority", userId);
		sql.delete(namespace + ".withdrawal", vo);
	}

	@Override
	public MemberVO getUserByIdAndLoginType(String userId,String login_Type) {
		   System.out.println(userId+" : "+login_Type);
	       return userMapper.readUserByIdAndLoginType(userId, login_Type);  
	   }
	 
	@Override
	public int checkId(String userId) {
		return sql.selectOne(namespace + ".checkId",userId);
	}


	@Override
	public int checkNickname(String userNickname) {
		return sql.selectOne(namespace + ".checkNickname",userNickname);
	}
	
}

