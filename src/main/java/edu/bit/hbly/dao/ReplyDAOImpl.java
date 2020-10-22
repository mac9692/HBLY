package edu.bit.hbly.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import edu.bit.hbly.vo.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {

	@Inject
	private SqlSession sql;
	
	//댓글조회
	@Override
	public List<ReplyVO> readReply(int boardNumber) throws Exception {
		return sql.selectList("replyMapper.readReply", boardNumber);
	}

	//댓글작성
	@Override
	public void writeReply(ReplyVO ReplyVO) throws Exception {
		sql.insert("replyMapper.writeReply", ReplyVO);		
	}

	//댓글수정
	@Override
	public void updateReply(ReplyVO ReplyVO) throws Exception {
		sql.update("replyMapper.updateReply", ReplyVO);
	}

	//댓글삭제
	@Override
	public void deleteReply(ReplyVO ReplyVO) throws Exception {
		sql.delete("replyMapper.deleteReply", ReplyVO);
	}

	//선택된 댓글 조회
	@Override
	public ReplyVO selectReply(int boardReplyNumber) throws Exception {
		return sql.selectOne("replyMapper.selectReply", boardReplyNumber);
	}
	
	//댓글 아이디 체크
	@Override
	public String replyIdCheck(int boardReplyNumber) throws Exception {		
		return sql.selectOne("replyMapper.replyIdCheck", boardReplyNumber);
	}

}
