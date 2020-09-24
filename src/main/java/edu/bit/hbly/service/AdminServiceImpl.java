package edu.bit.hbly.service;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Service;

import edu.bit.hbly.dao.AdminDAO;
import edu.bit.hbly.vo.CategoryVO;
import edu.bit.hbly.vo.GoodsVO;
import edu.bit.hbly.vo.GoodsViewVO;



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

	

	

}
