package com.spring.lotto.domain;

public class MinTestVO {
   private String hit_ep;
   private String cnt;
   private int hit_number;
   private String hit_number1;
   private String hit_number2;
   private String hit_number3;
   private String hit_number4;
   private String hit_number5;
   private String hit_number6;
   private String hit_bouns;
   
   public MinTestVO() {}

   public MinTestVO(String hit_ep, String cnt, int hit_number, String hit_number1, String hit_number2, String hit_number3, String hit_number4,
         String hit_number5, String hit_number6, String hit_bouns) {

      this.hit_ep = hit_ep;
      this.cnt = cnt;
      this.hit_number = hit_number;
      this.hit_number1 = hit_number1;
      this.hit_number2 = hit_number2;
      this.hit_number3 = hit_number3;
      this.hit_number4 = hit_number4;
      this.hit_number5 = hit_number5;
      this.hit_number6 = hit_number6;
      this.hit_bouns = hit_bouns;
   }

   public String getHit_ep() {
      return hit_ep;
   }

   public void setHit_ep(String hit_ep) {
      this.hit_ep = hit_ep;
   }
   
   
   public String getCnt() {
      return cnt;
   }

   public void setCnt(String cnt) {
      this.cnt = cnt;
   }

   public int getHit_number() {
      return hit_number;
   }
   
   public void setHit_number(int hit_number) {
      this.hit_number = hit_number;
   }
   

   public String getHit_number1() {
      return hit_number1;
   }

   public void setHit_number1(String hit_number1) {
      this.hit_number1 = hit_number1;
   }

   public String getHit_number2() {
      return hit_number2;
   }

   public void setHit_number2(String hit_number2) {
      this.hit_number2 = hit_number2;
   }

   public String getHit_number3() {
      return hit_number3;
   }

   public void setHit_number3(String hit_number3) {
      this.hit_number3 = hit_number3;
   }

   public String getHit_number4() {
      return hit_number4;
   }

   public void setHit_number4(String hit_number4) {
      this.hit_number4 = hit_number4;
   }

   public String getHit_number5() {
      return hit_number5;
   }

   public void setHit_number5(String hit_number5) {
      this.hit_number5 = hit_number5;
   }

   public String getHit_number6() {
      return hit_number6;
   }

   public void setHit_number6(String hit_number6) {
      this.hit_number6 = hit_number6;
   }

   public String getHit_bouns() {
      return hit_bouns;
   }

   public void setHit_bonus(String hit_bouns) {
      this.hit_bouns = hit_bouns;
   }



}