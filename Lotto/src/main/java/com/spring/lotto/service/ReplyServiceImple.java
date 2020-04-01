package com.spring.lotto.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.lotto.domain.ReplyVO;
import com.spring.lotto.persistence.ReplyDAO;

@Service
public class ReplyServiceImple implements ReplyService {
	private static final Logger logger = LoggerFactory.getLogger(ReplyServiceImple.class);

	@Autowired
	private ReplyDAO ReplyDao;

	@Override
	public int create(ReplyVO vo) {
		logger.info("댓글 입력 성공");
		return ReplyDao.insert(vo);
	}

	@Override
	public List<ReplyVO> read(int bno) {
		logger.info("댓글 호출 성공");
		return ReplyDao.select(bno);
	}

	@Override
	public int update(ReplyVO vo) {
		logger.info("댓글 수정 성공");
		return ReplyDao.update(vo);
	}

	@Override
	public int delete(int rno) {
		logger.info("댓글 삭제 성공");
		return ReplyDao.delete(rno);
	}

}