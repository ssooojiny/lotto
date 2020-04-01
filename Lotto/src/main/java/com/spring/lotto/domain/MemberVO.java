package com.spring.lotto.domain;

public class MemberVO {

	private String member_name;
	private String member_id;
	private String member_pw;
	private String member_nickname;
	private String member_phone;
	private String member_ad;
	
	public MemberVO() {}

	public MemberVO(String member_name, String member_id, String member_pw, String member_nickname, String member_phone,
			String member_ad) {
		super();
		this.member_name = member_name;
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_nickname = member_nickname;
		this.member_phone = member_phone;
		this.member_ad = member_ad;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}

	public String getMember_nickname() {
		return member_nickname;
	}

	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public String getMember_ad() {
		return member_ad;
	}

	public void setMember_ad(String member_ad) {
		this.member_ad = member_ad;
	}
	
	
}
