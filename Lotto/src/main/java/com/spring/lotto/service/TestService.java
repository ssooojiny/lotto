package com.spring.lotto.service;

import java.util.List;

import com.spring.lotto.domain.StatVO;
import com.spring.lotto.domain.TestVO;
import com.spring.lotto.domain.WinVO;
import com.spring.lotto.pageutil.ListBackNextCriteria;
import com.spring.lotto.pageutil.PageCriteriaList;

public interface TestService {
	public abstract List<TestVO> read();

	public abstract int update_win(int lotto_number);

	public abstract int update_lose(int lotto_number);

	public abstract List<WinVO> read_win();

	public abstract List<WinVO> read_lose();

	public abstract int getTotalNums();

	// selectlist.jsp 페이지 설정
	public abstract List<TestVO> read(PageCriteriaList criteria);

	public abstract int getTotalNumsOfRecords();

	public abstract List<StatVO> listbacknext_s(ListBackNextCriteria listcriteria);

	public abstract int getTotalNums_w();

	public abstract List<StatVO> select_won(int selval);

}
