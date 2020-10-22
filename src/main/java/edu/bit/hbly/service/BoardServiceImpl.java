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
	
	//게시글 작성
	@Override
	public void write(BoardVO boardVO) throws Exception {
		dao.write(boardVO);		
	}

	//게시물 목록 조회
	@Override
	public List<BoardVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}
	
	//게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception{
		return dao.listCount(scri);
	}

	//게시물 조회
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public BoardVO read(int boardNumber) throws Exception {
			dao.boardHit(boardNumber);
		return dao.read(boardNumber);
	}

	//게시물 수정
	@Override
	public void update(BoardVO boardVO) throws Exception {
		dao.update(boardVO);		
	}

	//게시물 삭제
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
