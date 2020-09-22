package edu.bit.hbly.dao;

import java.util.List;

import edu.bit.hbly.vo.CategoryVO;
import edu.bit.hbly.vo.GoodsVO;
import edu.bit.hbly.vo.GoodsViewVO;



public interface AdminDAO {
	
	
	//카테고리
	public List<CategoryVO> category() throws Exception;
	
	//��ǰ���
	public void register(GoodsVO vo) throws Exception;
	
	//?��?�� 목록
	public List<GoodsVO> goodslist() throws Exception;
	
	//?��?�� 조회
	public GoodsViewVO goodsView(int goodsNumber) throws Exception;
	
	//��ǰ����
	public void goodsModify(GoodsVO vo) throws Exception;
	
	//��ǰ����
	public void goodsDelete(int goodsNumber) throws Exception;
}