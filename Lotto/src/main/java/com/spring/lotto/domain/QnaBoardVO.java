package com.spring.lotto.domain;

import java.util.Date;

public class QnaBoardVO {
private int qna_bno;
private String qna_title;
private String qna_content;
private String qna_userid;
private Date qna_regdate;

public QnaBoardVO () {}

public QnaBoardVO(int qna_bno, String qna_title, String qna_content, String qna_userid, Date qna_regdate) {
   super();
   this.qna_bno = qna_bno;
   this.qna_title = qna_title;
   this.qna_content = qna_content;
   this.qna_userid = qna_userid;
   this.qna_regdate = qna_regdate;
}

public int getQna_bno() {
   return qna_bno;
}

public void setQna_bno(int qna_bno) {
   this.qna_bno = qna_bno;
}

public String getQna_title() {
   return qna_title;
}

public void setQna_title(String qna_title) {
   this.qna_title = qna_title;
}

public String getQna_content() {
   return qna_content;
}

public void setQna_content(String qna_content) {
   this.qna_content = qna_content;
}

public String getQna_userid() {
   return qna_userid;
}

public void setQna_userid(String qna_userid) {
   this.qna_userid = qna_userid;
}

public Date getQna_regdate() {
   return qna_regdate;
}

public void setQna_regdate(Date qna_regdate) {
   this.qna_regdate = qna_regdate;
}

}