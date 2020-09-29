package edu.bit.hbly.security;

import javax.inject.Inject;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import edu.bit.hbly.vo.CustomUser;
import edu.bit.hbly.vo.MemberVO;
import edu.bit.mapper.MemberMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CustomUserDetailsService implements UserDetailsService {
	
	@Inject
	private MemberMapper memberMapper;
	
	@Override
	public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {
		log.warn("Load Member By userId: "+userId);
		
		MemberVO vo = memberMapper.readUser(userId);
		
		log.warn("queried by MemberVO Mapper: "+vo);
		
		
		return vo == null ? null : new CustomUser(vo);
	}
	
	
	

}
