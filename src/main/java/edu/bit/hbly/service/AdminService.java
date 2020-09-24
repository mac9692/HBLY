package edu.bit.hbly.service;

import java.util.List;

import edu.bit.hbly.vo.CategoryVO;
import edu.bit.hbly.vo.GoodsVO;
import edu.bit.hbly.vo.GoodsViewVO;



public interface AdminService {
	
	//移댄뀒怨좊━
	public List<CategoryVO> category() throws Exception;
	
	//상품등록
	public void register(GoodsVO vo) throws Exception;
	
	//?긽?뭹 紐⑸줉
	public List<GoodsViewVO> goodslist() throws Exception;
	
	//?긽?뭹 議고쉶
	public GoodsViewVO goodsView(int goodsNumber) throws Exception;
	
	//상품수정
	public void goodsModify(GoodsVO vo) throws Exception;
	
	//상품삭제
	public void goodsDelete(int goodsNumber) throws Exception;
}
