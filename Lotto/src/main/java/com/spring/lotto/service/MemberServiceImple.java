package com.spring.lotto.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.lotto.domain.MemberVO;
import com.spring.lotto.persistence.MemberDAO;

@Service
public class MemberServiceImple implements MemberService {

	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImple.class);

	@Autowired
	private MemberDAO dao;

	@Override
	public int create(MemberVO vo) {
		logger.info("create() 호출");
		return dao.insert(vo);
	}

	@Override
	public MemberVO loginCheck(MemberVO vo) {
		logger.info("MemberServiceImple - logincheck 호출");

		return dao.loginCheck(vo);
	}

	@Override
	public MemberVO read(String member_id) {
		logger.info("read(String member_id) 호출");
		logger.info("read에서 member_id : " + member_id);
		return dao.select(member_id);
	}

	@Override
	public int update(MemberVO vo) {
		logger.info("update()호출");
		return dao.update(vo);
	}

	@Override
	public List<MemberVO> read() {
		logger.info("List<MemberVO> read 호출");
		return dao.select();
	}

	@Override
	public int delete(String member_id) {
		logger.info("delete() 호출");
		return dao.delete(member_id);
	}

}
