package edu.bit.hbly.controller;

import static org.junit.Assert.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.fasterxml.jackson.databind.ObjectMapper;

import edu.bit.hbly.MemberController;
import edu.bit.hbly.vo.MemberVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/spring-security.xml"
	,"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class MemberControllerTest {
	
	@Setter(onMethod_= {@Autowired})
	private WebApplicationContext ctx;
	private MockMvc mockMvc;
	ObjectMapper mapper;
	
	@Autowired
	MemberController memberController;
	
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
		mapper = new ObjectMapper();
	}

	@Test
	public void testSignup() throws Exception{
		mockMvc.perform(get("/member/signup"))
		.andExpect(status().isOk())
		.andDo(print())
		.andExpect(forwardedUrl("/WEB-INF/views/member/signup.jsp"));
	}
	
	@Test
	public void testSignupPost() throws Exception{
		
		mockMvc.perform(MockMvcRequestBuilders.post("/member/signup")
				.param("userId", "test@naver.com")
				.param("userPassword", "1234")
				.param("userName", "김쟁구")
				.param("userBirth", "0614")
				.param("userGender", "M")
				.param("userNickname", "재욱")
				.param("userPhoneNumber", "010-9268-8474")
				.param("userAddress1", "12345")
				.param("userAddress2", "강남")
				.param("userAddress3", "102호")
				.param("userRegidate", "1011")
				.param("verify", "9"))
		.andDo(print())
		.andReturn();
	}
	
	
	
	@Test
	public void testSignin() throws Exception{
		mockMvc.perform(get("/member/signin"))
		.andExpect(status().isOk())
		.andDo(print())
		.andExpect(forwardedUrl("/WEB-INF/views/member/signin.jsp"));
	}
	
	@Test
	public void testSigninPost() throws Exception{
		mockMvc.perform(MockMvcRequestBuilders.post("/member/signin")
				.param("userId", "testid@naver.com")
				.param("userPassword", "1234"))
		.andExpect(status().isMethodNotAllowed())
		.andDo(print())
		.andReturn();
		
	}
	
	
	
	@Test
	public void testIdInqury() throws Exception{
		mockMvc.perform(get("/member/idInqury"))
		.andExpect(status().isOk())
		.andDo(print())
		.andExpect(forwardedUrl("/WEB-INF/views/member/idInqury.jsp"));
	}
	
	@Test
	public void testIdInquryPost() throws Exception{
		mockMvc.perform(MockMvcRequestBuilders.post("/member/idInqury")
				.param("userName", "testname")
				.param("userPhoneNumber", "testPhoneNumber"))
		.andExpect(status().isOk())
		.andDo(print())
		.andReturn();
	}
	
	@Test
	public void testPwInqury() throws Exception{
		mockMvc.perform(get("/member/pwInqury"))
		.andExpect(status().isOk())
		.andDo(print())
		.andExpect(forwardedUrl("/WEB-INF/views/member/pwInqury.jsp"));
	}
	
	@Test
	public void testPwInquryPost() throws Exception{
		mockMvc.perform(MockMvcRequestBuilders.post("/member/pwInqury")
				.param("userId", "testId"))
		.andExpect(status().isMethodNotAllowed())
		.andDo(print())
		.andReturn();
	}
	
	@Test
	public void testPwInquryModifyPost() throws Exception{
		mockMvc.perform(MockMvcRequestBuilders.post("/member/pwInquryModify")
				.param("userPassword", "testPassword"))
		.andExpect(status().isOk())
		.andDo(print())
		.andReturn();
	}
	
	
	@Test
	public void testModify() throws Exception{
		mockMvc.perform(get("/member/modify"))
		.andExpect(status().isOk())
		.andDo(print())
		.andExpect(forwardedUrl("/WEB-INF/views/member/modify.jsp"));
	}
	
	@Test
	public void testModifyPost() throws Exception{
		mockMvc.perform(MockMvcRequestBuilders.post("/member/modify")
				.param("userId", "testId")
				.param("userPassword", "1234")
				.param("userNickname", "testnick")
				.param("userAddress1", "12345")
				.param("userAddress2", "테스트주소")
				.param("userAddress3", "테스주소2"))
		.andDo(print())
		.andReturn();
	}
	
	@Test
	public void testWithdrawal() throws Exception{
		mockMvc.perform(get("/member/withdrawal"))
		.andExpect(status().isOk())
		.andDo(print())
		.andExpect(forwardedUrl("/WEB-INF/views/member/withdrawal.jsp"));
	}
	
	
	@Test
	public void testCheckId() throws Exception{
		mockMvc.perform(get("/member/checkId").param("userId", "test@naver.com"))
		.andExpect(status().isOk())
		.andDo(print())
		.andReturn();
	}
	
	@Test
	public void testCheckNickname() throws Exception{
		mockMvc.perform(get("/member/checkNickname").param("userNickname", "testuser"))
		.andExpect(status().isOk())
		.andDo(print());
	}
	
	@Test
	public void testMypage() throws Exception{
		mockMvc.perform(get("/member/mypage"))
		.andExpect(status().isOk())
		.andDo(print())
		.andExpect(forwardedUrl("/WEB-INF/views/member/mypage.jsp"));
	}
	

}
