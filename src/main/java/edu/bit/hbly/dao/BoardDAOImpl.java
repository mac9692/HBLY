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

	//게시글 작성
	@Override
	public void write(BoardVO boardVO) throws Exception {
		sqlSession.insert("boardMapper.insert",boardVO);		
	}

	//게시글 목록 조회
	@Override
	public List<BoardVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("boardMapper.listPage", scri);
	}
	
	//게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception{
		return sqlSession.selectOne("boardMapper.listCount", scri);
	}

	//게시물 조회
	@Override
	public BoardVO read(int boardNumber) throws Exception {
		return sqlSession.selectOne("boardMapper.read",boardNumber);
	}

	//게시물 수정
	@Override
	public void update(BoardVO boardVO) throws Exception {
		sqlSession.update("boardMapper.update", boardVO);
		
	}

	//게시물 삭제
	@Override
	public void delete(int boardNumber) throws Exception {
		sqlSession.delete("boardMapper.delete",boardNumber);
		
	}
}
