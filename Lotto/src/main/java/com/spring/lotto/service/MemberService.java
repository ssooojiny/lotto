package com.spring.lotto.service;

import java.util.List;

import com.spring.lotto.domain.MemberVO;

public interface MemberService {

	int create(MemberVO vo);

	MemberVO loginCheck(MemberVO vo);

	MemberVO read(String member_id);

	List<MemberVO> read();

	int update(MemberVO vo);

	int delete(String member_id);

}
