package edu.bit.hbly.dao;

import java.util.List;

import edu.bit.hbly.vo.ReplyVO;

public interface ReplyDAO {
	
	//댓글조회
	public List<ReplyVO> readReply(int boardNumber) throws Exception;
	
	//댓글작성
	public void writeReply(ReplyVO ReplyVO) throws Exception;
	
	//댓글수정
	public void updateReply(ReplyVO ReplyVO) throws Exception;
	
	//댓글삭제
	public void deleteReply(ReplyVO ReplyVO) throws Exception;
	
	//선택된 댓글 조회
	public ReplyVO selectReply(int boardReplyNumber) throws Exception;
	
	//댓글 아이디 체크
	public String replyIdCheck(int boardReplyNumber) throws Exception;

}
