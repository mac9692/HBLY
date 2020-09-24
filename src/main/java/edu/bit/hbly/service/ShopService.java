package edu.bit.hbly.service;

import java.util.List;

import edu.bit.hbly.vo.CartListVO;
import edu.bit.hbly.vo.CartVO;
import edu.bit.hbly.vo.GoodsReplyListVO;
import edu.bit.hbly.vo.GoodsReplyVO;
import edu.bit.hbly.vo.GoodsViewVO;



public interface ShopService {
	
	//카테고리별 상품 리스트
	public List<GoodsViewVO> list(int categoryCode,int level) throws Exception;
	
	//상품 조회
	public GoodsViewVO goodsView(int goodsNumber) throws Exception;
	
	//상품 소감(댓글) 작성
	public void registerGoodsReply(GoodsReplyVO goodsReply) throws Exception;
	
	//상품 소감(댓글) 리스트
	public List<GoodsReplyListVO> goodsReplyList(int goodsNumber) throws Exception;
	
	//상품 소감(댓글) 삭제
	public void deleteGoodsReply(GoodsReplyVO goodsReply) throws Exception;
	
	//상품 소감(댓글) 아이디 체크
	public String checkGoodsReplyUserId(int goodsReplyNumber) throws Exception;
	
	//상품 소감(댓글) 수정
	public void modifyGoodsReply(GoodsReplyVO goodsReply) throws Exception;
	
	//장바구니 담기
	public void addCart(CartListVO cart) throws Exception;
	
	//장바구니 리스트
	public List<CartListVO> cartList(String userId) throws Exception;
	
	//장바구니 삭제
	public void deleteCart(CartVO cart) throws Exception;
}
