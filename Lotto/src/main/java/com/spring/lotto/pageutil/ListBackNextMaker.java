package com.spring.lotto.pageutil;


//Pre, Nex 버튼의 링크를 만들기 위한 클래스
public class ListBackNextMaker {
	
	private ListBackNextCriteria listcriteria;
	private int total;
	
	private int numsOfPageLinks; // 페이지 번호 링크의 개수
	private int startPageNo; // 시작 페이지 링크 번호
	private int endPageNo; // 끝 페이지 링크 번호
	private boolean hasPrev; // 화면에 보이는 시작 페이지 번호보다 작은 숫자의 페이지가 있는 지
	private boolean hasNext; // 화면에 보이는 끝 페이지 번호보다 큰 숫자의 페이지가 있는 지

	public ListBackNextMaker() {
		this.numsOfPageLinks = 1;
	}

	public ListBackNextCriteria getListcriteria() {
		return listcriteria;
	}

	public void setCriteria(ListBackNextCriteria listcriteria) {
		this.listcriteria = listcriteria;
	}

	public int getTotalCount() {
		return total;
	}

	public void setTotalCount(int total) {
		this.total = total;
	}

	public int getNumsOfPageLinks() {
		return numsOfPageLinks;
	}

	public int getStartPageNo() {
		return startPageNo;
	}

	public int getEndPageNo() {
		return endPageNo;
	}

	public boolean isHasPrev() {
		return hasPrev;
	}

	public boolean isHasNext() {
		return hasNext;
	}

	// startPageNo, endPageNo, hasPrev, hasNext 값을 계산 및 세팅
	public void setPageData() {
		int totalLinkNo = (int) Math.ceil((double) total / listcriteria.getViewlistone());
		int temp = (int) Math.ceil((double) listcriteria.getPage() / numsOfPageLinks) * numsOfPageLinks;

		if (temp > totalLinkNo) {
			endPageNo = totalLinkNo;
		} else {
			endPageNo = temp;
		}
		// ↑ 밑에 페이지 번호 지정.. 12345 다음 / 이전 23456 다음

		startPageNo = ((endPageNo - 1) / numsOfPageLinks) * numsOfPageLinks + 1;

		if (startPageNo == 1) {
			hasPrev = false;
		} else {
			hasPrev = true;
		}
		if (endPageNo * listcriteria.getViewlistone() >= total) {
			hasNext = false;
		} else {
			hasNext = true;
		}
		// Math.ceil (올림)
		// Math.floor (버림
	}

}
