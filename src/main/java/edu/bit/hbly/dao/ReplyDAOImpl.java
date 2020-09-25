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

}
