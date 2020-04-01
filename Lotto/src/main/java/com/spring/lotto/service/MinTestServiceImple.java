package com.spring.lotto.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.lotto.domain.MinTestVO;
import com.spring.lotto.persistence.MinTestDAO;

@Service

public class MinTestServiceImple implements MinTestService {

	private static final Logger logger = LoggerFactory.getLogger(MinTestServiceImple.class);

	@Autowired
	private MinTestDAO dao;

	@Override
	public List<MinTestVO> read() {
		logger.info("test read() 호출");
		return dao.select();
	}

	@Override
	public List<MinTestVO> choice(int hit_select_number_choice) {
		logger.info("choice 호출");
		return dao.choice_select(hit_select_number_choice);
	}

	@Override
	public List<Integer> number_choice(int hit_select_number_choice) {
		logger.info("number_choice 호출");
		return dao.number_choice_select(hit_select_number_choice);
	}

	@Override
	public List<MinTestVO> low_choice(int low_hit_select_number_choice) {
		logger.info("low_choice 호출");
		return dao.low_choice_select(low_hit_select_number_choice);
	}

	@Override
	public String chekc_test(String test_number) {
		logger.info("chekc_test 호출");
		return dao.chekc_test(test_number);
	}

}