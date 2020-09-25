package edu.bit.hbly.dao;

import java.util.List;

import edu.bit.hbly.vo.ReplyVO;

public interface ReplyDAO {
	
	//댓글조회
	public List<ReplyVO> readReply(int boardNumber) throws Exception;

}
