package com.spring.lotto.service;

import java.util.List;

import com.spring.lotto.domain.QnaBoardVO;
import com.spring.lotto.pageutil.PageCriteria;

public interface QnaBoardService {
	public abstract int create(QnaBoardVO vo);

	public abstract List<QnaBoardVO> read();

	public abstract List<QnaBoardVO> read(PageCriteria criteria);

	public abstract QnaBoardVO read(int qna_bno);

	public abstract int update(QnaBoardVO vo);

	public abstract int delete(int qna_bno);

	public abstract int getTotalNumsOfRecords();
}