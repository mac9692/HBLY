package edu.bit.hbly.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import edu.bit.hbly.dao.BoardDAO;
import edu.bit.hbly.vo.BoardVO;
import edu.bit.hbly.vo.Criteria;
import edu.bit.hbly.vo.SearchCriteria;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	//寃뚯떆湲� �옉�꽦
	@Override
	public void write(BoardVO boardVO) throws Exception {
		dao.write(boardVO);		
	}

	//寃뚯떆臾� 紐⑸줉 議고쉶
	@Override
	public List<BoardVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}
	
	//寃뚯떆臾� 珥� 媛��닔
	@Override
	public int listCount(SearchCriteria scri) throws Exception{
		return dao.listCount(scri);
	}

	//寃뚯떆臾� 議고쉶
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public BoardVO read(int boardNumber) throws Exception {
			dao.boardHit(boardNumber);
		return dao.read(boardNumber);
	}

	//寃뚯떆臾� �닔�젙
	@Override
	public void update(BoardVO boardVO) throws Exception {
		dao.update(boardVO);		
	}

	//寃뚯떆臾� �궘�젣
	@Override
	public void delete(BoardVO boardVO) throws Exception {
		dao.delete(boardVO);		
	}
	
	//게시판 ID 체크
	@Override
	public String boardIdCheck(int boardNumber) throws Exception {
		// TODO Auto-generated method stub
		return dao.boardIdCheck(boardNumber);
	}	


}
