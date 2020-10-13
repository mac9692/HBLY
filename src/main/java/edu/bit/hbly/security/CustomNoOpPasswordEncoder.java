package edu.bit.hbly.security;

import org.springframework.security.crypto.password.PasswordEncoder;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomNoOpPasswordEncoder implements PasswordEncoder{
	
	
	@Override
	//어떻게 암호화 진행할것인지
	public String encode(CharSequence rawPassword) {
		// TODO Auto-generated method stub
		log.warn("before encode : "+rawPassword);
		return rawPassword.toString();
	}
	
	
	//암호화된것을 어떻게 매칭 시킬것인지
	@Override
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		// TODO Auto-generated method stub
		log.warn("matches: "+rawPassword.toString()+":"+encodedPassword);
		return rawPassword.toString().equals(encodedPassword);
	}
	
	

}
