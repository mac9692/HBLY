package edu.bit.hbly.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import edu.bit.hbly.dao.ShopDAO;
import edu.bit.hbly.vo.CartListVO;
import edu.bit.hbly.vo.CartVO;
import edu.bit.hbly.vo.CategoryVO;
import edu.bit.hbly.vo.GoodsReplyListVO;
import edu.bit.hbly.vo.GoodsReplyVO;
import edu.bit.hbly.vo.GoodsViewVO;
import edu.bit.hbly.vo.OrderDetailsVO;
import edu.bit.hbly.vo.OrderListVO;
import edu.bit.hbly.vo.OrderVO;




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


	@Override
	public void orderInfo(OrderVO order) throws Exception {
		dao.orderInfo(order);
		
	}


	@Override
	public void orderInfo_Details(OrderDetailsVO orderDetails) throws Exception {
		dao.orderInfo_Details(orderDetails);
		
	}


	@Override
	public void cartAllDelete(String userId) throws Exception {
		dao.cartAllDelete(userId);
		
	}


	@Override
	public List<OrderVO> orderList(OrderVO order) throws Exception {
		return dao.orderList(order);
	}


	@Override
	public List<OrderListVO> orderView(OrderVO order) throws Exception {
		
		return dao.orderView(order);
	}


	@Override
	public List<CategoryVO> getCategoryList() throws Exception {		
		return dao.getCategoryList();
	}
	

}
