package edu.bit.hbly.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import edu.bit.hbly.vo.CartListVO;
import edu.bit.hbly.vo.CartVO;
import edu.bit.hbly.vo.CategoryVO;
import edu.bit.hbly.vo.GoodsReplyListVO;
import edu.bit.hbly.vo.GoodsReplyVO;
import edu.bit.hbly.vo.GoodsViewVO;
import edu.bit.hbly.vo.OrderDetailsVO;
import edu.bit.hbly.vo.OrderListVO;
import edu.bit.hbly.vo.OrderVO;





@Repository
public class ShopDAOImpl implements ShopDAO {

	@Inject
	private SqlSession sql;
	
	//mapper
	private static String namespace= "edu.bit.hbly.mappers.shopMapper";

	
	
//	카테고리별 상품리스트 : 1차분류
	@Override
	public List<GoodsViewVO> list(int categoryCode, int categoryCodeRef) throws Exception {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("categoryCode", categoryCode);
		map.put("categoryCodeRef", categoryCodeRef);
		
		return sql.selectList(namespace + ".list_1", map);
	}

//	카테고리별 상품리스트 : 2차분류
	@Override
	public List<GoodsViewVO> list(int categoryCode) throws Exception {
		return sql.selectList(namespace + ".list_2", categoryCode);
	}

	
	//상품 조회
	@Override
	public GoodsViewVO goodsView(int goodsNumber) throws Exception {
		return sql.selectOne("edu.bit.hbly.mappers.adminMapper" + ".goodsView",goodsNumber);
	}
	
	//상품 소감(댓글) 작성
	@Override
	public void registerGoodsReply(GoodsReplyVO goodsReply) throws Exception {
		sql.insert(namespace + ".registerGoodsReply", goodsReply);
		
	}
	//상품 소감(댓글) 리스트
	@Override
	public List<GoodsReplyListVO> goodsReplyList(int goodsNumber) throws Exception {
		
		return sql.selectList(namespace + ".goodsReplyList", goodsNumber);
	}

	@Override
	public void deleteGoodsReply(GoodsReplyVO goodsReply) throws Exception {
		
		sql.delete(namespace + ".deleteGoodsReply", goodsReply);
	}

	@Override
	public String checkGoodsReplyUserId(int goodsReplyNumber) throws Exception {
		
		return sql.selectOne(namespace + ".checkGoodsReplyUserId", goodsReplyNumber);
	}

	@Override
	public void modifyGoodsReply(GoodsReplyVO goodsReply) throws Exception {
		sql.update(namespace + ".modifyGoodsReply",goodsReply);
		
	}

	@Override
	public void addCart(CartListVO cart) throws Exception {
		sql.insert(namespace + ".addCart", cart);
		
	}

	@Override
	public List<CartListVO> cartList(String userId) throws Exception {
		return sql.selectList(namespace + ".cartList", userId);
	}

	@Override
	public void deleteCart(CartVO cart) throws Exception {
		sql.delete(namespace + ".deleteCart", cart);
		
	}

	@Override
	public void orderInfo(OrderVO order) throws Exception {
		sql.insert(namespace + ".orderInfo", order);
		
	}

	@Override
	public void orderInfo_Details(OrderDetailsVO orderDetails) throws Exception {
		sql.insert(namespace + ".orderInfo_Details", orderDetails);
		
	}

	@Override
	public void cartAllDelete(String userId) throws Exception {
		sql.delete(namespace + ".cartAllDelete", userId);
		
	}

	@Override
	public List<OrderVO> orderList(OrderVO order) throws Exception {
		return sql.selectList(namespace + ".orderList", order);
	}

	@Override
	public List<OrderListVO> orderView(OrderVO order) throws Exception {
		
		return sql.selectList(namespace + ".orderView", order);
	}

	@Override
	public List<CategoryVO> getCategoryList() throws Exception {

		return sql.selectList(namespace+".getCategoryList");
	}
	
	
	
	
	
	

}
