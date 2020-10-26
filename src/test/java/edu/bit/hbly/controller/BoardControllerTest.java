package edu.bit.hbly.controller;

import static org.junit.Assert.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/spring-security.xml"
	,"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class BoardControllerTest {
	
	@Setter(onMethod_ = {@Autowired})
	
	private WebApplicationContext ctx;
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
		
	}

	@Test
	public void testBoardWrite() throws Exception{
		mockMvc.perform(get("/board/writeView"))
		.andExpect(status().isOk())
		.andDo(print())
		.andExpect(forwardedUrl("/WEB-INF/views/board/writeView.jsp"));
	}
	
	@Test
	public void testBoardList() throws Exception{
		mockMvc.perform(get("/board/list"))
		.andExpect(status().isOk())
		.andDo(print())
		.andExpect(forwardedUrl("/WEB-INF/views/board/list.jsp"));
	}
	
	@Test
	public void testBoardRead() throws Exception{
		mockMvc.perform(get("/board/readView"))
		.andExpect(status().isOk())
		.andDo(print())
		.andExpect(forwardedUrl("/WEB-INF/views/board/readView.jsp"));
	}
	
	@Test
	public void testBoardUpdate() throws Exception{
		mockMvc.perform(get("/board/updateView"))
		.andExpect(status().isOk())
		.andDo(print())
		.andExpect(forwardedUrl("/WEB-INF/views/board/updateView.jsp"));
	}
	
	@Test
	public void testBoardReplyUpdate() throws Exception{
		mockMvc.perform(get("/board/replyUpdateView"))
		.andExpect(status().isOk())
		.andDo(print())
		.andExpect(forwardedUrl("/WEB-INF/views/board/replyUpdateView.jsp"));
	}
	
	@Test
	public void testBoardReplyDelete() throws Exception{
		mockMvc.perform(get("/board/replyDeleteView"))
		.andExpect(status().isOk())
		.andDo(print())
		.andExpect(forwardedUrl("/WEB-INF/views/board/replyDeleteView.jsp"));
	}
	
	
	

}
