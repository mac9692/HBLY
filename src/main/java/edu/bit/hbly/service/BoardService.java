package edu.bit.hbly.service;

import java.util.List;

import edu.bit.hbly.vo.BoardVO;
import edu.bit.hbly.vo.Criteria;
import edu.bit.hbly.vo.SearchCriteria;

public interface BoardService {
	
	//게시글 작성
	public void write(BoardVO boardVO) throws Exception;
	
	// 게시물 목록 조회
	public List<BoardVO> list(SearchCriteria scri) throws Exception;
	
	//게시물 총 갯수
	public int listCount(SearchCriteria scri) throws Exception;
	
	// 게시물 목록 조회
	public BoardVO read(int boardNumber) throws Exception;

	// 게시물 수정
	public void update(BoardVO boardVO) throws Exception;
		
	// 게시물 삭제
	public void delete(int boardNumber) throws Exception;
	
	public int updateLike(int boardNumber) throws Exception;
	
	public int updateHate(int boardNumber) throws Exception;
}
