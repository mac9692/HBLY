package edu.bit.hbly.service;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import edu.bit.hbly.vo.MemberVO;
import edu.bit.mapper.MemberMapper;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@NoArgsConstructor
@Service
public class MemberService {
	
	@Inject
	private BCryptPasswordEncoder passEncoder;
	
	@Inject
	private MemberMapper memberMapper;
	
	
	public void signUp(MemberVO memberVO) {
		String userPassword = memberVO.getUserPassword();
		String encode = passEncoder.encode(userPassword);
		
		memberVO.setUserPassword(encode);
		
		memberMapper.insertUser(memberVO);
		memberMapper.insertAuthorities(memberVO);
	}
	
	public MemberVO getUser(String userPassword) {
		log.info("readUser ..");
		return memberMapper.readUser(userPassword);
	}

}
