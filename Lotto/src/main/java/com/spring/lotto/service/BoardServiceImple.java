package com.spring.lotto.service;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.lotto.domain.BoardVO;
import com.spring.lotto.pageutil.PageCriteria;
import com.spring.lotto.persistence.BoardDAO;

//@Component
@Service
//스프링 프레임워크에게 서비스 계층(Service/Business layer)의
// 컴퍼넌트임을 알려주는 어노테이션

public class BoardServiceImple implements BoardService {
	private static final Logger logger = LoggerFactory.getLogger(BoardServiceImple.class);

	@Autowired
	private BoardDAO dao;

	@Override
	public int create(BoardVO vo) {
		logger.info("create() 호출");
		return dao.insert(vo);
	}

	@Override
	public List<BoardVO> read() {
		logger.info("read() 호출");
		return dao.select();
	}

	@Override
	public List<BoardVO> read(PageCriteria criteria) {
		logger.info("read(criteria) 호출");
		return dao.select(criteria);
	}

	@Override
	public BoardVO read(int bno) {
		logger.info("read() 호출 bno = " + bno);
		return dao.select(bno);
	}

	@Override
	public int update(BoardVO vo) {
		logger.info("update() 호출");
		return dao.update(vo);
	}

	@Override
	public int delete(int bno) {
		logger.info("delete() 호출");
		return dao.delete(bno);
	}

	@Override
	public int getTotalNumsOfRecords() {
		logger.info("getTotalNumsOfRecords() 호출");
		return dao.getTotalNumsOfRecords();
	}

} // end BoardServiceImple