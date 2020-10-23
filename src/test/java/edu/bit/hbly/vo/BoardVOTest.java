package edu.bit.hbly.vo;

import static org.junit.Assert.*;

import java.util.Date;

import org.junit.Test;

public class BoardVOTest {

	@Test
	public void testBoardVO() {
		BoardVO boardVO = new BoardVO();
		
		System.out.println(boardVO);
		assertNotNull(boardVO);
	}
	
	public void testBoardVOAllArgs() {
		BoardVO boardVO = new BoardVO(1,"Çïºí¸®","±Â",new Date(),"qkseh1802@naver.com",10,"4");
		
		System.out.println(boardVO);
		assertNotNull(boardVO);
	}

}
