package edu.bit.hbly.service;

import java.util.List;

import edu.bit.hbly.vo.CartListVO;
import edu.bit.hbly.vo.CartVO;
import edu.bit.hbly.vo.GoodsReplyListVO;
import edu.bit.hbly.vo.GoodsReplyVO;
import edu.bit.hbly.vo.GoodsViewVO;



public interface ShopService {
	
	//ī�װ��� ��ǰ ����Ʈ
	public List<GoodsViewVO> list(int categoryCode,int level) throws Exception;
	
	//��ǰ ��ȸ
	public GoodsViewVO goodsView(int goodsNumber) throws Exception;
	
	//��ǰ �Ұ�(���) �ۼ�
	public void registerGoodsReply(GoodsReplyVO goodsReply) throws Exception;
	
	//��ǰ �Ұ�(���) ����Ʈ
	public List<GoodsReplyListVO> goodsReplyList(int goodsNumber) throws Exception;
	
	//��ǰ �Ұ�(���) ����
	public void deleteGoodsReply(GoodsReplyVO goodsReply) throws Exception;
	
	//��ǰ �Ұ�(���) ���̵� üũ
	public String checkGoodsReplyUserId(int goodsReplyNumber) throws Exception;
	
	//��ǰ �Ұ�(���) ����
	public void modifyGoodsReply(GoodsReplyVO goodsReply) throws Exception;
	
	//��ٱ��� ���
	public void addCart(CartListVO cart) throws Exception;
	
	//��ٱ��� ����Ʈ
	public List<CartListVO> cartList(String userId) throws Exception;
	
	//��ٱ��� ����
	public void deleteCart(CartVO cart) throws Exception;
}
