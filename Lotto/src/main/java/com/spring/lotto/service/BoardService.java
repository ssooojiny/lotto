package com.spring.lotto.service;

import java.util.List;

import com.spring.lotto.domain.BoardVO;
import com.spring.lotto.pageutil.PageCriteria;

// CRUD(CREATE, READ, UPDATE, DELETE)
public interface BoardService {
	public abstract int create(BoardVO vo);

	public abstract List<BoardVO> read();

	public abstract List<BoardVO> read(PageCriteria criteria);

	public abstract BoardVO read(int bno);

	public abstract int update(BoardVO vo);

	public abstract int delete(int bno);

	public abstract int getTotalNumsOfRecords();
}