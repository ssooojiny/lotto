package com.spring.lotto.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.lotto.domain.QnaBoardVO;
import com.spring.lotto.pageutil.PageCriteria;
@Repository
public class QnaBoardDAOImple implements QnaBoardDAO {
   
   private static final String NAMESPACE = "com.spring.lotto.QnaBoardMapper"; // board-mapper.xml에 있는 namespace와 동일
    private static final Logger logger = LoggerFactory.getLogger(QnaBoardDAOImple.class);
    
    // MyBatis SqlSession을 사용하기 위해서
    // 스프링 프레임워크가 생성한bean 객체를 주입(injection)받음
    @Autowired
    private SqlSession sqlSession;

   @Override
   public List<QnaBoardVO> select() {
      logger.info("select() 호출");
      return sqlSession.selectList(NAMESPACE + ".select_all");
   }

   @Override
   public QnaBoardVO select(int qna_bno) {
      logger.info("select() 호출 : bno = " + qna_bno);
      return sqlSession.selectOne(NAMESPACE + ".select_by_qna_bno", qna_bno);
   }

   @Override
   public int insert(QnaBoardVO vo) {
      logger.info("insert() 호출");
      return sqlSession.insert(NAMESPACE + ".insert", vo);
   }

   @Override
   public int update(QnaBoardVO vo) {
      logger.info("update() 호출 : bno = " + vo.getQna_bno());
      return sqlSession.update(NAMESPACE + ".update", vo);
   }

   @Override
   public int delete(int qna_bno) {
      logger.info("delete() 호출 : bno = " + qna_bno);
      return sqlSession.delete(NAMESPACE + ".delete", qna_bno);
   }

   @Override
   public List<QnaBoardVO> select(String qna_userid) {
      logger.info("select() 호출 : qna_userid = " + qna_userid);
        qna_userid = "%" + qna_userid + "%";
      return sqlSession.selectList(NAMESPACE + ".select_by_qna_userid", qna_userid);
   }
   
   @Override
   public List<QnaBoardVO> selectByTitleOrContent(String keyword) {
      logger.info("selectByTitleOrContent() 호출 : keyword = " + keyword);
      keyword = "%" + keyword + "%";
      return sqlSession.selectList(NAMESPACE + ".select_by_qna_title_qna_content", keyword);
   }
   
   @Override
   public List<QnaBoardVO> select(PageCriteria criteria) {
      logger.info("select(creiteria) 호출 ");
      return sqlSession.selectList(NAMESPACE + ".paging", criteria);
   }
   
   @Override
   public int getTotalNumsOfRecords() {
      logger.info("getTotalNumsOfRecords() 호출");
      return sqlSession.selectOne(NAMESPACE + ".total_count");
   }

}