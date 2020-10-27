package edu.bit.hbly.vo;

import static org.junit.Assert.*;

import java.util.Date;

import org.junit.Test;

public class GoodsVOTest {

	@Test
	public void test() {
		GoodsVO goodsVO = new GoodsVO();
		
		System.out.println(goodsVO);
		assertNotNull(goodsVO);
	}
	
	public void testGoodsVOAllArgs() {
		GoodsVO goodsVO = new GoodsVO(1,"테스트상품",1000,10,"굿","사진",new Date(),"101","사진1");
				
			System.out.println(goodsVO);
			assertNotNull(goodsVO);
				
	}

}
