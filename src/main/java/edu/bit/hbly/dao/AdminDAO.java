package edu.bit.hbly.dao;

import java.util.List;

import edu.bit.hbly.vo.CategoryVO;
import edu.bit.hbly.vo.GoodsReplyListVO;
import edu.bit.hbly.vo.GoodsVO;
import edu.bit.hbly.vo.GoodsViewVO;
import edu.bit.hbly.vo.OrderListVO;
import edu.bit.hbly.vo.OrderVO;



public interface AdminDAO {
	
	
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
	
	//주문 목록
	public List<OrderVO> orderList() throws Exception;
	
	//특정 주문 목록
	public List<OrderListVO> orderView(OrderVO order) throws Exception;
	
	//배송 상태
	public void delivery(OrderVO order) throws Exception;
	
	//상품 수량 조절
	public void changeStock(GoodsVO goods) throws Exception;
	
	//모든 소감(댓글) 보기
	public List<GoodsReplyListVO> allGoodsReply() throws Exception;
	
	//소감(댓글) 삭제
	public void deleteGoodsReply(int goodsReplyNumber) throws Exception;
}
