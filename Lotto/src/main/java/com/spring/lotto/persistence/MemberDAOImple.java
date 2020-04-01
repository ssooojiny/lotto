package com.spring.lotto.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.lotto.domain.MemberVO;

@Repository
public class MemberDAOImple implements MemberDAO {
	
	private static final String NAMESPACE = "com.spring.lotto.MemberMapper";
	private static final Logger logger = LoggerFactory.getLogger(MemberDAOImple.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insert(MemberVO vo) {
		logger.info("MemberDAOImple insert() 호출");
		logger.info("pw : "+vo.getMember_pw());
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}

	@Override
	public MemberVO loginCheck(MemberVO vo) {
		logger.info("MemberDAOImple - loginCheck() 호출 \n" 
					  + "id : " + vo.getMember_id() +"\n"
					  + "pw : " + vo.getMember_pw());
		
		return sqlSession.selectOne(NAMESPACE + ".login", vo);
	}

	@Override
	public MemberVO select(String member_id) {
		logger.info("select(Member_id) 호출");
		logger.info("dao에서 member_id : " + member_id);
		
		return sqlSession.selectOne(NAMESPACE + ".select_by_member_id", member_id);
	}

	@Override
	public int update(MemberVO vo) {
		logger.info("update() 호출");
		return sqlSession.update(NAMESPACE + ".update", vo);
	}

	@Override
	public List<MemberVO> select() {
		logger.info("select() 호출");
		return sqlSession.selectList(NAMESPACE + ".select_all");
	} 
	

	   @Override
	   public int delete(String member_id) {
	       logger.info("delete() 호출");
	      return sqlSession.delete(NAMESPACE + ".delete", member_id);
	   }
	

}
