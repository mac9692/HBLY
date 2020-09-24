package edu.bit.hbly.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import edu.bit.hbly.dao.ShopDAO;
import edu.bit.hbly.vo.CartListVO;
import edu.bit.hbly.vo.CartVO;
import edu.bit.hbly.vo.GoodsReplyListVO;
import edu.bit.hbly.vo.GoodsReplyVO;
import edu.bit.hbly.vo.GoodsViewVO;




@Service
public class ShopServiceImpl implements ShopService{

	@Inject
	private ShopDAO dao;


	@Override
	public List<GoodsViewVO> list(int categoryCode, int level) throws Exception {
		
		int categoryCodeRef = 0;
		
		if(level == 1) {
			categoryCodeRef = categoryCode;
			return dao.list(categoryCode, categoryCodeRef);
		}else {
			return dao.list(categoryCode);
		}
	}


	@Override
	public GoodsViewVO goodsView(int goodsNumber) throws Exception {
		return dao.goodsView(goodsNumber);
	}


	@Override
	public void registerGoodsReply(GoodsReplyVO goodsReply) throws Exception {
		dao.registerGoodsReply(goodsReply);
		
	}


	@Override
	public List<GoodsReplyListVO> goodsReplyList(int goodsNumber) throws Exception {
		return dao.goodsReplyList(goodsNumber);
	}


	@Override
	public void deleteGoodsReply(GoodsReplyVO goodsReply) throws Exception {
		dao.deleteGoodsReply(goodsReply);
		
	}


	@Override
	public String checkGoodsReplyUserId(int goodsReplyNumber) throws Exception {
		
		return dao.checkGoodsReplyUserId(goodsReplyNumber);
	}


	@Override
	public void modifyGoodsReply(GoodsReplyVO goodsReply) throws Exception {
		dao.modifyGoodsReply(goodsReply);
		
	}


	@Override
	public void addCart(CartListVO cart) throws Exception {
		dao.addCart(cart);
		
	}


	@Override
	public List<CartListVO> cartList(String userId) throws Exception {
		return dao.cartList(userId);
	}


	@Override
	public void deleteCart(CartVO cart) throws Exception {
		dao.deleteCart(cart);
		
	}
}
