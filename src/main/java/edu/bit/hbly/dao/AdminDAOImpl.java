package edu.bit.hbly.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import edu.bit.hbly.vo.CategoryVO;
import edu.bit.hbly.vo.GoodsReplyListVO;
import edu.bit.hbly.vo.GoodsVO;
import edu.bit.hbly.vo.GoodsViewVO;
import edu.bit.hbly.vo.OrderListVO;
import edu.bit.hbly.vo.OrderVO;




@Repository
public class AdminDAOImpl implements AdminDAO {

	@Inject
	private SqlSession sql;
	
	//mapper
	private static String namespace= "edu.bit.hbly.mappers.adminMapper";

	@Override
	public List<CategoryVO> category() throws Exception {
		
		return sql.selectList(namespace + ".category");
	}

	@Override
	public void register(GoodsVO vo) throws Exception {
		sql.insert(namespace + ".register",vo);
		
	}

	@Override
	public List<GoodsViewVO> goodslist() throws Exception {
		
		return sql.selectList(namespace + ".goodslist");
	}

	@Override
	public GoodsViewVO goodsView(int goodsNumber) throws Exception {
		
		return sql.selectOne(namespace+".goodsView",goodsNumber);
	}

	@Override
	public void goodsModify(GoodsVO vo) throws Exception {
		
		sql.update(namespace + ".goodsModify", vo);
		
	}

	@Override
	public void goodsDelete(int goodsNumber) throws Exception {
		sql.delete(namespace + ".goodsDelete",goodsNumber);
		
	}

	@Override
	public List<OrderVO> orderList() throws Exception {
		return sql.selectList(namespace + ".orderList");
	}

	@Override
	public List<OrderListVO> orderView(OrderVO order) throws Exception {
		return sql.selectList(namespace + ".orderView", order);
	}

	@Override
	public void delivery(OrderVO order) throws Exception {
		sql.update(namespace + ".delivery", order);
		
	}

	@Override
	public void changeStock(GoodsVO goods) throws Exception {
		sql.update(namespace + ".changeStock", goods);
		
	}

	@Override
	public List<GoodsReplyListVO> allGoodsReply() throws Exception {
		return sql.selectList(namespace + ".allGoodsReply");
	}

	@Override
	public void deleteGoodsReply(int goodsReplyNumber) throws Exception {
		sql.delete(namespace + ".deleteReply", goodsReplyNumber);
		
	}
}
