package edu.bit.hbly.controller;

import static org.junit.Assert.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.handler;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.web.configurers.UrlAuthorizationConfigurer.StandardInterceptUrlRegistry;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import edu.bit.hbly.ShopController;
import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/spring-security.xml"
	,"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class ShopControllerTest {
	
	@Setter(onMethod_ = {@Autowired})
	
	private WebApplicationContext ctx;
	private MockMvc mockMvc;
	
	
	@Autowired
	ShopController shopController;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}

	
	
	@Test
	public void testGoodsReplyList() throws Exception{
		mockMvc.perform(get("/shop/view/replyList")
				.param("goodsNumber", "1"))
		
		.andDo(print())
		.andExpect(forwardedUrl("/WEB-INF/views/shop/goodsReplyList.jsp"));
	
	}
	
	

}
