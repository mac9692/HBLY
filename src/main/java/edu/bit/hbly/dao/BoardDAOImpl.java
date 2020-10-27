package edu.bit.hbly.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import edu.bit.hbly.vo.BoardVO;
import edu.bit.hbly.vo.Criteria;
import edu.bit.hbly.vo.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Inject
	private SqlSession sqlSession;

	//寃뚯떆湲� �옉�꽦
	@Override
	public void write(BoardVO boardVO) throws Exception {
		sqlSession.insert("boardMapper.insert",boardVO);		
	}

	//寃뚯떆湲� 紐⑸줉 議고쉶
	@Override
	public List<BoardVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("boardMapper.listPage", scri);
	}
	
	//寃뚯떆臾� 珥� 媛��닔
	@Override
	public int listCount(SearchCriteria scri) throws Exception{
		return sqlSession.selectOne("boardMapper.listCount", scri);
	}

	//寃뚯떆臾� 議고쉶
	@Override
	public BoardVO read(int boardNumber) throws Exception {
		return sqlSession.selectOne("boardMapper.read",boardNumber);
	}

	//寃뚯떆臾� �닔�젙
	@Override
	public void update(BoardVO boardVO) throws Exception {
		sqlSession.update("boardMapper.update", boardVO);	
	}

	//寃뚯떆臾� �궘�젣
	@Override
	public void delete(BoardVO boardVO) throws Exception {
		sqlSession.delete("boardMapper.delete",boardVO);		
	}

	//寃뚯떆�뙋 議고쉶�닔
	@Override
	public void boardHit(int boardNumber) throws Exception {
		sqlSession.update("boardMapper.boardHit", boardNumber);
	}


	//게시판 아이디 체크
	@Override
	public String boardIdCheck(int boardNumber) throws Exception {		
		return sqlSession.selectOne("boardMapper.boardIdCheck", boardNumber);
	}




}
