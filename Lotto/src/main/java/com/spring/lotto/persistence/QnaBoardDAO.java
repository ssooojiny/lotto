package com.spring.lotto.persistence;

import java.util.List;

import com.spring.lotto.domain.QnaBoardVO;
import com.spring.lotto.pageutil.PageCriteria;

public interface QnaBoardDAO {
    public abstract List<QnaBoardVO> select();
     public abstract QnaBoardVO select(int qna_bno);
     public abstract int insert(QnaBoardVO vo);
     public abstract int update(QnaBoardVO vo);
     public abstract int delete(int qna_bno);
     public abstract List<QnaBoardVO> select(String qna_userid);
     public abstract List<QnaBoardVO> selectByTitleOrContent(String keyword);
     public abstract List<QnaBoardVO> select(PageCriteria criteria);
     public abstract int getTotalNumsOfRecords();
}