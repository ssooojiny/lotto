package com.spring.lotto.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.lotto.domain.StatVO;
import com.spring.lotto.domain.TestVO;
import com.spring.lotto.domain.WinVO;
import com.spring.lotto.pageutil.ListBackNextCriteria;
import com.spring.lotto.pageutil.PageCriteriaList;
import com.spring.lotto.persistence.TestDAO;

@Service
public class TestServiceImple implements TestService {

	private static final Logger logger = LoggerFactory.getLogger(TestServiceImple.class);

	@Autowired
	private TestDAO dao;

	@Override
	public int update_win(int lotto_number) {
		logger.info("testService - update_win 나와잇!");
		logger.info("testService - int i = " + lotto_number);
		return dao.update_win(lotto_number);
	}

	@Override
	public int update_lose(int lotto_number) {
		logger.info("testService - update_lose 나와잇!");
		logger.info("testService - int i = " + lotto_number);
		return dao.update_lose(lotto_number);
	}

	@Override
	public List<WinVO> read_win() {
		logger.info("testServiceimple에서 read_win 호출하쥐");
		return dao.select_win();
	}

	@Override
	public List<WinVO> read_lose() {
		logger.info("testServiceimple에서 read_lose 호출하쥐");
		return dao.select_lose();
	}

	@Override
	public int getTotalNums() {
		logger.info("getTotalNums() 호출...");
		return dao.getTotalNums();
	}

	// selectlist.jsp 페이지 설정
	@Override
	public List<TestVO> read(PageCriteriaList criteria) {
		logger.info("read (criteria) 호출 ");
		return dao.select(criteria);
	}

	// selectlist.jsp 페이지 설정
	@Override
	public int getTotalNumsOfRecords() {
		logger.info("getTotalNumsOfRecords() 호출");
		return dao.getTotalNumsOfRecords();
	}

	@Override
	public List<TestVO> read() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StatVO> select_won(int selval) {
		return dao.select_won(selval);
	}

	@Override
	public List<StatVO> listbacknext_s(ListBackNextCriteria listcriteria) {
		logger.info("ListBackNext() 호출...");
		return dao.listbacknext_s(listcriteria);
	}

	@Override
	public int getTotalNums_w() {
		logger.info("getTotalNums() 호출...");
		return dao.getTotalNums_w();
	}

}
