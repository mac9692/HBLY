package edu.bit.hbly.service;

import java.util.List;

import edu.bit.hbly.vo.ReplyVO;

public interface ReplyService {
	
	public List<ReplyVO> readReply(int boardNumber) throws Exception;

}
