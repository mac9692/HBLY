package edu.bit.hbly.vo;

import java.util.Collection;
import java.util.Collections;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Getter
@Setter
public class CustomUser extends User{
	
	private MemberVO member;

	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
		// TODO Auto-generated constructor stub
	}
	
	
	public CustomUser(MemberVO memberVO) {
		super(memberVO.getUserId(), memberVO.getUserPassword(),
				Collections.singletonList(new SimpleGrantedAuthority(memberVO.getAuthorities())));

		this.member = memberVO;
	}

}
