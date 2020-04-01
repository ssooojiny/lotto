package com.spring.lotto.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.lotto.domain.ReplyVO;

@Repository
public class ReplyDAOImple implements ReplyDAO {
   private static final Logger logger = LoggerFactory.getLogger(ReplyDAOImple.class);
   private static final String NAMESPACE = "com.spring.lotto.ReplyMapper";
   
   @Autowired
   private SqlSession sqlSession;
   
   @Override
   public int insert(ReplyVO vo) {
      logger.info("insert() 호출");
      return sqlSession.insert(NAMESPACE + ".insert", vo);
   }

   @Override
   public List<ReplyVO> select(int bno) {
      logger.info("select() 호출 : bno = " + bno);
      return sqlSession.selectList(NAMESPACE + ".select_by_bno", bno);
   }

   @Override
   public int update(ReplyVO vo) {
      logger.info("update() 호출");
      return sqlSession.update(NAMESPACE + ".update", vo);
   }

   @Override
   public int delete(int rno) {
      logger.info("delete() 호출 : rno = " + rno);
      return sqlSession.delete(NAMESPACE + ".delete", rno);
   }

   @Override
   public int getBno(int rno) {
      logger.info("getBno() 호출 : rno = " + rno);
      return sqlSession.selectOne(NAMESPACE + ".get_bno", rno);
   }

}