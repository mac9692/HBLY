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

}
