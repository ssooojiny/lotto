package com.spring.lotto.service;

import java.util.List;

import com.spring.lotto.domain.ReplyVO;

public interface ReplyService {
	int create(ReplyVO vo);

	List<ReplyVO> read(int bno);

	int update(ReplyVO vo);

	int delete(int rno);
}