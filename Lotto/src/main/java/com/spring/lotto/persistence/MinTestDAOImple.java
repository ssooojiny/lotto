package com.spring.lotto.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.lotto.domain.MinTestVO;

@Repository

public class MinTestDAOImple implements MinTestDAO {
   
   // NAMESPACE = com.spring.lotto.TestMapper 위치는 test-mappers 위치와 동일해야함
   // test-mappers에서 sql 작성 함
   private static final String NAMESPACE = "com.spring.lotto.TestMapper";
   private static final Logger logger = LoggerFactory.getLogger(MinTestDAO.class);
   
   @Autowired
   private SqlSession sqlSession;



   @Override
   public List<MinTestVO> select() {
      logger.info("test select() 호출");
      return sqlSession.selectList(NAMESPACE + ".select_all");
   }


   @Override
   public List<MinTestVO> choice_select(int hit_select_number_choice) {
      logger.info("choice_select() 호출");
      // MainController에서 hit_select_number_choice 값을 받아옴
      logger.info("hit_select_number_choice : " + hit_select_number_choice );
      // NAMESPACE 위치 test-mappers.xml
      // test-mappers.xml에 있는 select_choice 쿼리문 실행
      // test-mappers에 hit_select_number_choice 값을 던져줌
      return sqlSession.selectList(NAMESPACE + ".select_choice", hit_select_number_choice);
   }
   
   @Override
   public List<Integer> number_choice_select(int hit_select_number_choice) {
      logger.info("number_choice_select() 호출");
      // MainController에서 hit_select_number_choice 값을 받아옴
      logger.info("hit_select_number_choice : " + hit_select_number_choice );
      // NAMESPACE 위치 test-mappers.xml
      // test-mappers.xml에 있는 select_choice 쿼리문 실행
      // test-mappers에 hit_select_number_choice 값을 던져줌
      return sqlSession.selectList(NAMESPACE + ".number_choice_select", hit_select_number_choice);
   }


   @Override
   public List<MinTestVO> low_choice_select(int low_hit_select_number_choice) {
      logger.info("low_choice_select() 호출");
      logger.info("low_hit_select_number_choice : " + low_hit_select_number_choice );
      return sqlSession.selectList(NAMESPACE + ".low_select_choice", low_hit_select_number_choice);
   }


   @Override
   public String chekc_test(String test_number) {
      logger.info("TestDAOImple의 chekc_test 호출 ");
      logger.info("TestDAOImple의 chekc_test의 매개 변수로 " + test_number + "가 넘어 왔습니다.");
      return sqlSession.selectOne(NAMESPACE + ".test_number", test_number);
   }




}