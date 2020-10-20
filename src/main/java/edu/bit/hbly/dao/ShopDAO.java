package edu.bit.hbly.dao;

import java.util.List;

import edu.bit.hbly.vo.CartListVO;
import edu.bit.hbly.vo.CartVO;
import edu.bit.hbly.vo.CategoryVO;
import edu.bit.hbly.vo.GoodsReplyListVO;
import edu.bit.hbly.vo.GoodsReplyVO;
import edu.bit.hbly.vo.GoodsViewVO;
import edu.bit.hbly.vo.OrderDetailsVO;
import edu.bit.hbly.vo.OrderListVO;
import edu.bit.hbly.vo.OrderVO;

public interface ShopDAO {
	
	
//	카테고리별 상품리스트 : 1차분류
	public List<GoodsViewVO> list(int categoryCode, int categoryCodeRef) throws Exception;
	
//	카테고리별 상품리스트 : 2차분류
	public List<GoodsViewVO> list(int categoryCode) throws Exception;
	
	//상품 조회
	public GoodsViewVO goodsView(int goodsNumber) throws Exception;
	
	//상품 소감(댓글) 작성
	public void registerGoodsReply(GoodsReplyVO goodsReply) throws Exception;
	
	//상품 소감(댓글) 리스트
	public List<GoodsReplyListVO> goodsReplyList(int goodsNumber) throws Exception;
	
	//상품 소감(댓글) 삭제
	public void deleteGoodsReply(GoodsReplyVO goodsReply) throws Exception;
	
	//아이디 체크
	public String checkGoodsReplyUserId(int goodsReplyNumber) throws Exception;
	
	//상품 소감(댓글) 수정
	public void modifyGoodsReply(GoodsReplyVO goodsReply) throws Exception;
	
	//장바구니 담기
	public void addCart(CartListVO cart) throws Exception;
	
	//장바구니 리스트
	public List<CartListVO> cartList(String userId) throws Exception;
	
	//장바구니 삭제
	public void deleteCart(CartVO cart) throws Exception;
	
	//주문 정보
	public void orderInfo(OrderVO order) throws Exception;
	
	//주문 상세 정보
	public void orderInfo_Details(OrderDetailsVO orderDetails) throws Exception;
	
	//카트 비우기
	public void cartAllDelete(String userId) throws Exception;
	
	//주문 목록
	public List<OrderVO> orderList(OrderVO order) throws Exception;
	
	//특정 주문 목록
	public List<OrderListVO> orderView(OrderVO order) throws Exception;

	//카테고리 가져오기
	public List<CategoryVO> getCategoryList() throws Exception;
	
}
