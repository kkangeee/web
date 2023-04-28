package iohp.page.KW10000.service;

import iohp.login.service.LoginVO;

public class KW10000U1200VO extends LoginVO{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7039326550542831021L;
	/**
	 * 
	 */
	private int rnum;
	private String wrkPlcNm;     	/* 사업장명 */
	private String plcNoAdd;         /* 우편번호  */
	private String strtNmAdd;        /* 도로명 주소 */
	private String strtNmDtlAdd;     /* 도로명 상세주소  */
	private String wrkPlcCd;    	/* 사업자등록번호  */
	private String headNm; 			/* 대표자명  */
	private String bzItem;     		/* 업종 형태 */
	private int employCnt; 			/* 직원수 */
	/*넘겨줄값*/
	private String searchNo;
	private String searchNm;
	private String searchPlcCd;
	
	public KW10000U1200VO() {}
	
	public KW10000U1200VO(int rnum, String wrkPlcNm, String plcNoAdd, String strtNmAdd, String strtNmDtlAdd,
			String wrkPlcCd, String headNm, String bzItem, int employCnt, String searchNo, String searchNm,
			String searchPlcCd) {
		this.rnum = rnum;
		this.wrkPlcNm = wrkPlcNm;
		this.plcNoAdd = plcNoAdd;
		this.strtNmAdd = strtNmAdd;
		this.strtNmDtlAdd = strtNmDtlAdd;
		this.wrkPlcCd = wrkPlcCd;
		this.headNm = headNm;
		this.bzItem = bzItem;
		this.employCnt = employCnt;
		this.searchNo = searchNo;
		this.searchNm = searchNm;
		this.searchPlcCd = searchPlcCd;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public String getWrkPlcNm() {
		return wrkPlcNm;
	}

	public void setWrkPlcNm(String wrkPlcNm) {
		this.wrkPlcNm = wrkPlcNm;
	}

	public String getPlcNoAdd() {
		return plcNoAdd;
	}

	public void setPlcNoAdd(String plcNoAdd) {
		this.plcNoAdd = plcNoAdd;
	}

	public String getStrtNmAdd() {
		return strtNmAdd;
	}

	public void setStrtNmAdd(String strtNmAdd) {
		this.strtNmAdd = strtNmAdd;
	}

	public String getStrtNmDtlAdd() {
		return strtNmDtlAdd;
	}

	public void setStrtNmDtlAdd(String strtNmDtlAdd) {
		this.strtNmDtlAdd = strtNmDtlAdd;
	}

	public String getWrkPlcCd() {
		return wrkPlcCd;
	}

	public void setWrkPlcCd(String wrkPlcCd) {
		this.wrkPlcCd = wrkPlcCd;
	}

	public String getHeadNm() {
		return headNm;
	}

	public void setHeadNm(String headNm) {
		this.headNm = headNm;
	}

	public String getBzItem() {
		return bzItem;
	}

	public void setBzItem(String bzItem) {
		this.bzItem = bzItem;
	}

	public int getEmployCnt() {
		return employCnt;
	}

	public void setEmployCnt(int employCnt) {
		this.employCnt = employCnt;
	}

	public String getSearchNo() {
		return searchNo;
	}

	public void setSearchNo(String searchNo) {
		this.searchNo = searchNo;
	}

	public String getSearchNm() {
		return searchNm;
	}

	public void setSearchNm(String searchNm) {
		this.searchNm = searchNm;
	}

	public String getSearchPlcCd() {
		return searchPlcCd;
	}

	public void setSearchPlcCd(String searchPlcCd) {
		this.searchPlcCd = searchPlcCd;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "KW10000U1200VO [rnum=" + rnum + ", wrkPlcNm=" + wrkPlcNm + ", plcNoAdd=" + plcNoAdd + ", strtNmAdd="
				+ strtNmAdd + ", strtNmDtlAdd=" + strtNmDtlAdd + ", wrkPlcCd=" + wrkPlcCd + ", headNm=" + headNm
				+ ", bzItem=" + bzItem + ", employCnt=" + employCnt + ", searchNo=" + searchNo + ", searchNm="
				+ searchNm + ", searchPlcCd=" + searchPlcCd + "]";
	}
	
}
