package edu.bit.hbly.service;

import java.util.List;

import edu.bit.hbly.vo.ReplyVO;

public interface ReplyService {
	
	//댓글조회
	public List<ReplyVO> readReply(int boardNumber) throws Exception;

	//댓글 작성
	public void writeReply(ReplyVO ReplyVO) throws Exception;
	
	//댓글수정
	public void updateReply(ReplyVO ReplyVO) throws Exception;
	
	//댓글 삭제
	public void deleteReply(ReplyVO ReplyVO) throws Exception;
	
	//선택된 댓글 조회
	public ReplyVO selectReply(int boardReplyNumber) throws Exception;
	
	//게시판 아이디 체크
	public String replyIdCheck(int boardReplyNumber) throws Exception;
	
}
