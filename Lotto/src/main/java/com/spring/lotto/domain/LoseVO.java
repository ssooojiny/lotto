package com.spring.lotto.domain;

public class LoseVO {
	
	private int lotto_number_l;
	private int choice_number_l;
	
	public LoseVO() {}

	public LoseVO(int lotto_number_l, int choice_number_l) {
		super();
		this.lotto_number_l = lotto_number_l;
		this.choice_number_l = choice_number_l;
	}

	public int getLotto_number_l() {
		return lotto_number_l;
	}

	public void setLotto_number_l(int lotto_number_l) {
		this.lotto_number_l = lotto_number_l;
	}

	public int getChoice_number_l() {
		return choice_number_l;
	}

	public void setChoice_number_l(int choice_number_l) {
		this.choice_number_l = choice_number_l;
	}
	
	
	
}
