package com.spring.lotto.domain;

import java.util.Date;

public class ReplyVO {
private int rno;
private int bno;
private String rtext;
private String replier;
private Date regdate;

public ReplyVO() {}

public ReplyVO(int rno, int bno, String rtext, String replier, Date regdate) {
   super();
   this.rno = rno;
   this.bno = bno;
   this.rtext = rtext;
   this.replier = replier;
   this.regdate = regdate;
}

public int getRno() {
   return rno;
}

public void setRno(int rno) {
   this.rno = rno;
}

public int getBno() {
   return bno;
}

public void setBno(int bno) {
   this.bno = bno;
}

public String getRtext() {
   return rtext;
}

public void setRtext(String rtext) {
   this.rtext = rtext;
}

public String getReplier() {
   return replier;
}

public void setReplier(String replier) {
   this.replier = replier;
}

public Date getRegdate() {
   return regdate;
}

public void setRegdate(Date regdate) {
   this.regdate = regdate;
}

}