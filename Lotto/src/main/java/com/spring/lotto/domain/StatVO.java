package com.spring.lotto.domain;

public class StatVO {

	
	private int year;
	private int ep;
	private String date_won;
	private int won_pe1;	private int won_pe2;
	private int won_pe3;	private int won_pe4;
	private int won_pe5;	private Long won_mo1;
	private Long won_mo2;	private Long won_mo3;
	private Long won_mo4;	private Long won_mo5;
	private int hit1;	private int hit2;
	private int hit3;	private int hit4;
	private int hit5;	private int hit6;	private int hit_b;
	
	//생성자
	public StatVO() {}

	public StatVO(int year, int ep, String date_won, int won_pe1, int won_pe2, int won_pe3, int won_pe4, int won_pe5,
			Long won_mo1, Long won_mo2, Long won_mo3, Long won_mo4, Long won_mo5, int hit1, int hit2, int hit3,
			int hit4, int hit5, int hit6, int hit_b) {
		super();
		this.year = year;
		this.ep = ep;
		this.date_won = date_won;
		this.won_pe1 = won_pe1;
		this.won_pe2 = won_pe2;
		this.won_pe3 = won_pe3;
		this.won_pe4 = won_pe4;
		this.won_pe5 = won_pe5;
		this.won_mo1 = won_mo1;
		this.won_mo2 = won_mo2;
		this.won_mo3 = won_mo3;
		this.won_mo4 = won_mo4;
		this.won_mo5 = won_mo5;
		this.hit1 = hit1;
		this.hit2 = hit2;
		this.hit3 = hit3;
		this.hit4 = hit4;
		this.hit5 = hit5;
		this.hit6 = hit6;
		this.hit_b = hit_b;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getEp() {
		return ep;
	}

	public void setEp(int ep) {
		this.ep = ep;
	}

	public String getDate_won() {
		return date_won;
	}

	public void setDate_won(String date_won) {
		this.date_won = date_won;
	}

	public int getWon_pe1() {
		return won_pe1;
	}

	public void setWon_pe1(int won_pe1) {
		this.won_pe1 = won_pe1;
	}

	public int getWon_pe2() {
		return won_pe2;
	}

	public void setWon_pe2(int won_pe2) {
		this.won_pe2 = won_pe2;
	}

	public int getWon_pe3() {
		return won_pe3;
	}

	public void setWon_pe3(int won_pe3) {
		this.won_pe3 = won_pe3;
	}

	public int getWon_pe4() {
		return won_pe4;
	}

	public void setWon_pe4(int won_pe4) {
		this.won_pe4 = won_pe4;
	}

	public int getWon_pe5() {
		return won_pe5;
	}

	public void setWon_pe5(int won_pe5) {
		this.won_pe5 = won_pe5;
	}

	public Long getWon_mo1() {
		return won_mo1;
	}

	public void setWon_mo1(Long won_mo1) {
		this.won_mo1 = won_mo1;
	}

	public Long getWon_mo2() {
		return won_mo2;
	}

	public void setWon_mo2(Long won_mo2) {
		this.won_mo2 = won_mo2;
	}

	public Long getWon_mo3() {
		return won_mo3;
	}

	public void setWon_mo3(Long won_mo3) {
		this.won_mo3 = won_mo3;
	}

	public Long getWon_mo4() {
		return won_mo4;
	}

	public void setWon_mo4(Long won_mo4) {
		this.won_mo4 = won_mo4;
	}

	public Long getWon_mo5() {
		return won_mo5;
	}

	public void setWon_mo5(Long won_mo5) {
		this.won_mo5 = won_mo5;
	}

	public int getHit1() {
		return hit1;
	}

	public void setHit1(int hit1) {
		this.hit1 = hit1;
	}

	public int getHit2() {
		return hit2;
	}

	public void setHit2(int hit2) {
		this.hit2 = hit2;
	}

	public int getHit3() {
		return hit3;
	}

	public void setHit3(int hit3) {
		this.hit3 = hit3;
	}

	public int getHit4() {
		return hit4;
	}

	public void setHit4(int hit4) {
		this.hit4 = hit4;
	}

	public int getHit5() {
		return hit5;
	}

	public void setHit5(int hit5) {
		this.hit5 = hit5;
	}

	public int getHit6() {
		return hit6;
	}

	public void setHit6(int hit6) {
		this.hit6 = hit6;
	}

	public int getHit_b() {
		return hit_b;
	}

	public void setHit_b(int hit_b) {
		this.hit_b = hit_b;
	}

	
}