package edu.bit.hbly.service;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Service;

import edu.bit.hbly.dao.AdminDAO;
import edu.bit.hbly.vo.CategoryVO;
import edu.bit.hbly.vo.GoodsReplyListVO;
import edu.bit.hbly.vo.GoodsVO;
import edu.bit.hbly.vo.GoodsViewVO;
import edu.bit.hbly.vo.OrderListVO;
import edu.bit.hbly.vo.OrderVO;



@Service
public class AdminServiceImpl implements AdminService{

	@Inject
	private AdminDAO dao;

	@Override
	public List<CategoryVO> category() throws Exception {
		
		return dao.category();
	}

	@Override
	public void register(GoodsVO vo) throws Exception {
		dao.register(vo);
		
	}

	@Override
	public List<GoodsViewVO> goodslist() throws Exception {
		return dao.goodslist();
	}

	@Override
	public GoodsViewVO goodsView(int goodsNumber) throws Exception {
		
		return dao.goodsView(goodsNumber);
	}

	@Override
	public void goodsModify(GoodsVO vo) throws Exception {
		dao.goodsModify(vo);
		
	}

	@Override
	public void goodsDelete(int goodsNumber) throws Exception {
		dao.goodsDelete(goodsNumber);
		
	}

	@Override
	public List<OrderVO> orderList() throws Exception {
		
		return dao.orderList();
	}

	@Override
	public List<OrderListVO> orderView(OrderVO order) throws Exception {
		
		return dao.orderView(order);
	}

	@Override
	public void delivery(OrderVO order) throws Exception {
		dao.delivery(order);
		
	}

	@Override
	public void changeStock(GoodsVO goods) throws Exception {
		dao.changeStock(goods);
		
	}

	@Override
	public List<GoodsReplyListVO> allGoodsReply() throws Exception {
		return dao.allGoodsReply();
	}

	@Override
	public void deleteGoodsReply(int goodsReplyNumber) throws Exception {
		dao.deleteGoodsReply(goodsReplyNumber);
	}

	

	

}
