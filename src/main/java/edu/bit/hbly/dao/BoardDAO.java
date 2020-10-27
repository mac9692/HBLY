package edu.bit.hbly.dao;

import java.util.List;

import edu.bit.hbly.vo.BoardVO;
import edu.bit.hbly.vo.Criteria;
import edu.bit.hbly.vo.SearchCriteria;

public interface BoardDAO {
	
	//寃뚯떆湲� �옉�꽦
	public void write(BoardVO boardVO) throws Exception;
	
	// 寃뚯떆臾� 紐⑸줉 議고쉶
	public List<BoardVO> list(SearchCriteria scri) throws Exception;
	
	//寃뚯떆臾� 珥� 媛��닔
	public int listCount(SearchCriteria scri) throws Exception;
	
	// 寃뚯떆臾� 議고쉶
	public BoardVO read(int boardNumber) throws Exception;
	
	// 寃뚯떆臾� �닔�젙
	public void update(BoardVO boardVO) throws Exception;
		

	// 게시물 삭제
	public void delete(BoardVO boardVO) throws Exception;

	
	//寃뚯떆�뙋 議고쉶�닔
	public void boardHit(int boardNumber) throws Exception;
	

	//게시판 아이디 체크
	public String boardIdCheck(int boardNumber) throws Exception;

}
