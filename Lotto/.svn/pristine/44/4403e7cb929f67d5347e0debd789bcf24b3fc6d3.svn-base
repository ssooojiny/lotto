package com.spring.lotto.pageutil;

//-> paging 처리에 필요한 #{start}와 #{end} 번호를 알 수 있음
public class PageCriteriaList {

	private int page; // 현재 페이지 번호
	private int numsPerPage; // 한 페이지의 회차리스트 개수

	public PageCriteriaList() {
		this.page = 1;
		this.numsPerPage = 20;

	}

	public PageCriteriaList(int page, int numsPerPage) {
		this.page = page;
		this.numsPerPage = numsPerPage;
	}

	// getter/setter
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getNumsPerPage() {
		return numsPerPage;
	}

	public void setNumsPerPage(int numsPerPage) {
		this.numsPerPage = numsPerPage;
	}

	// 현재 보여지는 페이지의 시작 글 일련번호(rn)
	public int getStart() {
		return (this.page - 1) * this.numsPerPage + 1;
	}

	// 현재 보여지는 페이지의 마지막 글 일련번호(rn)
	public int getEnd() {
		return this.page * this.numsPerPage;
	}

}
