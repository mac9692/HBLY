package edu.bit.hbly.vo;

import static org.junit.Assert.*;

import java.util.Date;

import org.junit.Test;

public class MemberVOTest {

	@Test
	public void testMemberVO() {
		MemberVO memberVo = new MemberVO();
		
		System.out.println(memberVo);
		assertNotNull(memberVo);
	}
	
	public void testMemberVOAllArgs() {
		MemberVO memberVo = new MemberVO("qkseh1802@naver.com","1234","김재욱","940614","M","재욱짱","010-9268-8474","12345","송부로길","407동",new Date(),9,"normal");
		
		System.out.println(memberVo);
		assertNotNull(memberVo);
	}

}
