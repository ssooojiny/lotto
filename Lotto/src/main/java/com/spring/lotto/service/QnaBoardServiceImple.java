package com.spring.lotto.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.lotto.domain.QnaBoardVO;
import com.spring.lotto.pageutil.PageCriteria;
import com.spring.lotto.persistence.QnaBoardDAO;

@Service
public class QnaBoardServiceImple implements QnaBoardService {

	private static final Logger logger = LoggerFactory.getLogger(QnaBoardServiceImple.class);

	@Autowired
	private QnaBoardDAO dao;

	@Override
	public int create(QnaBoardVO vo) {
		logger.info("create() 호출");
		return dao.insert(vo);
	}

	@Override
	public List<QnaBoardVO> read() {
		logger.info("read() 호출");
		return dao.select();
	}

	@Override
	public List<QnaBoardVO> read(PageCriteria criteria) {
		logger.info("read(criteria) 호출");
		return dao.select(criteria);
	}

	@Override
	public QnaBoardVO read(int qna_bno) {
		logger.info("read() 호출 bno = " + qna_bno);
		return dao.select(qna_bno);
	}

	@Override
	public int update(QnaBoardVO vo) {
		logger.info("update() 호출");
		return dao.update(vo);
	}

	@Override
	public int delete(int qna_bno) {
		logger.info("delete() 호출");
		return dao.delete(qna_bno);
	}

	@Override
	public int getTotalNumsOfRecords() {
		logger.info("getTotalNumsOfRecords() 호출");
		return dao.getTotalNumsOfRecords();
	}

}