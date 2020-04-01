package com.spring.lotto.service;

import java.util.List;

import com.spring.lotto.domain.MinTestVO;

public interface MinTestService {
	public abstract List<MinTestVO> read();

	public abstract List<MinTestVO> choice(int hit_select_number_choice);

	public abstract List<Integer> number_choice(int hit_select_number_choice);

	public abstract List<MinTestVO> low_choice(int low_hit_select_number_choice);

	public abstract String chekc_test(String test_number);

}