package edu.bit.hbly.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import edu.bit.hbly.dao.ReplyDAO;
import edu.bit.hbly.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDAO dao;
	
	//댓글 조회
	@Override
	public List<ReplyVO> readReply(int boardNumber) throws Exception {
		return dao.readReply(boardNumber);
	}

	//댓글 작성
	@Override
	public void writeReply(ReplyVO ReplyVO) throws Exception {
		dao.writeReply(ReplyVO);		
	}

	//댓글 수정
	@Override
	public void updateReply(ReplyVO ReplyVO) throws Exception {
		dao.updateReply(ReplyVO);
	}

	//댓글 삭제
	@Override
	public void deleteReply(ReplyVO ReplyVO) throws Exception {
		dao.deleteReply(ReplyVO);
	}

	//선택된 댓글 조회
	@Override
	public ReplyVO selectReply(int boardReplyNumber) throws Exception {
		return dao.selectReply(boardReplyNumber);
	}
	
	//게시판 ID 체크
	@Override
	public String replyIdCheck(int boardReplyNumber) throws Exception {
		return dao.replyIdCheck(boardReplyNumber);
	}	

}
