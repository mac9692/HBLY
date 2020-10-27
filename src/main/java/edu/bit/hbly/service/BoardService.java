package edu.bit.hbly.service;

import java.util.List;

import edu.bit.hbly.vo.BoardVO;
import edu.bit.hbly.vo.Criteria;
import edu.bit.hbly.vo.SearchCriteria;

public interface BoardService {
	
	//野껊슣�뻻疫뀐옙 占쎌삂占쎄쉐
	public void write(BoardVO boardVO) throws Exception;
	
	// 野껊슣�뻻�눧占� 筌뤴뫖以� 鈺곌퀬�돳
	public List<BoardVO> list(SearchCriteria scri) throws Exception;
	
	//野껊슣�뻻�눧占� �룯占� 揶쏉옙占쎈땾
	public int listCount(SearchCriteria scri) throws Exception;
	
	// 野껊슣�뻻�눧占� 筌뤴뫖以� 鈺곌퀬�돳
	public BoardVO read(int boardNumber) throws Exception;

	// 野껊슣�뻻�눧占� 占쎈땾占쎌젟
	public void update(BoardVO boardVO) throws Exception;
		
	public void delete(BoardVO boardVO) throws Exception;
	
	//寃뚯떆�뙋 �븘�씠�뵒 泥댄겕
	public String boardIdCheck(int boardNumber) throws Exception;
	

}
