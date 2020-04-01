package com.spring.lotto.persistence;

import java.util.List;

import com.spring.lotto.domain.ReplyVO;

public interface ReplyDAO {
   int insert(ReplyVO vo);
   List<ReplyVO> select(int bno);
   int update(ReplyVO vo);
   int delete(int rno);
   int getBno(int rno);
}