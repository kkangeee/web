package iohp.page.KW30000.service;

import java.sql.Date;

public class KW30000U1173VO {

	private String bzRgstNo; /* 사업자등록번호 */
	private String mgtNo; /* 관리번호 */
	private int seq; /* 순번 */
	private int rnum; /* 조회 순번 */
	private String nsptDd; /* 점검일자 */ 
	private String nsptPrsnNm; /* 점검자이름 */
	private String nsptPos; /* 점검위치 */
	private String abnmYn; /* 이상여부 */
	private String wrkPlcMgtUniqNo; /* 사업장관리고유번호 */
	private String nsptItemNo; /* 점검항목번호 */
	private String nsptRsltYn; /* 점검결과 */
	private String nsptChkList; /* 점검사항 */
	
	private String cdDtl1; /* 팝업창 점검사항 */
	private String cdDtl2; /* 팝업창 점검사항 */
	
	public String getBzRgstNo() {
		return bzRgstNo;
	}
	public void setBzRgstNo(String bzRgstNo) {
		this.bzRgstNo = bzRgstNo;
	}
	public String getMgtNo() {
		return mgtNo;
	}
	public void setMgtNo(String mgtNo) {
		this.mgtNo = mgtNo;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public String getNsptDd() {
		return nsptDd;
	}
	public void setNsptDd(String nsptDd) {
		this.nsptDd = nsptDd;
	}
	public String getNsptPrsnNm() {
		return nsptPrsnNm;
	}
	public void setNsptPrsnNm(String nsptPrsnNm) {
		this.nsptPrsnNm = nsptPrsnNm;
	}
	public String getNsptPos() {
		return nsptPos;
	}
	public void setNsptPos(String nsptPos) {
		this.nsptPos = nsptPos;
	}
	public String getAbnmYn() {
		return abnmYn;
	}
	public void setAbnmYn(String abnmYn) {
		this.abnmYn = abnmYn;
	}
	public String getWrkPlcMgtUniqNo() {
		return wrkPlcMgtUniqNo;
	}
	public void setWrkPlcMgtUniqNo(String wrkPlcMgtUniqNo) {
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	public String getNsptItemNo() {
		return nsptItemNo;
	}
	public void setNsptItemNo(String nsptItemNo) {
		this.nsptItemNo = nsptItemNo;
	}
	public String getNsptRsltYn() {
		return nsptRsltYn;
	}
	public void setNsptRsltYn(String nsptRsltYn) {
		this.nsptRsltYn = nsptRsltYn;
	}
	public String getNsptChkList() {
		return nsptChkList;
	}
	public void setNsptChkList(String nsptChkList) {
		this.nsptChkList = nsptChkList;
	}
	public String getCdDtl1() {
		return cdDtl1;
	}
	public void setCdDtl1(String cdDtl1) {
		this.cdDtl1 = cdDtl1;
	}
	public String getCdDtl2() {
		return cdDtl2;
	}
	public void setCdDtl2(String cdDtl2) {
		this.cdDtl2 = cdDtl2;
	}
	
	public KW30000U1173VO() {
	}
	
	public KW30000U1173VO(String bzRgstNo, String mgtNo, int seq, int rnum, String nsptDd, String nsptPrsnNm,
			String nsptPos, String abnmYn, String wrkPlcMgtUniqNo, String nsptItemNo, String nsptRsltYn,
			String nsptChkList, String cdDtl1, String cdDtl2) {
		this.bzRgstNo = bzRgstNo;
		this.mgtNo = mgtNo;
		this.seq = seq;
		this.rnum = rnum;
		this.nsptDd = nsptDd;
		this.nsptPrsnNm = nsptPrsnNm;
		this.nsptPos = nsptPos;
		this.abnmYn = abnmYn;
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
		this.nsptItemNo = nsptItemNo;
		this.nsptRsltYn = nsptRsltYn;
		this.nsptChkList = nsptChkList;
		this.cdDtl1 = cdDtl1;
		this.cdDtl2 = cdDtl2;
	}
	
	@Override
	public String toString() {
		return "KW30000U1173VO [bzRgstNo=" + bzRgstNo + ", mgtNo=" + mgtNo + ", seq=" + seq + ", rnum=" + rnum
				+ ", nsptDd=" + nsptDd + ", nsptPrsnNm=" + nsptPrsnNm + ", nsptPos=" + nsptPos + ", abnmYn=" + abnmYn
				+ ", wrkPlcMgtUniqNo=" + wrkPlcMgtUniqNo + ", nsptItemNo=" + nsptItemNo + ", nsptRsltYn=" + nsptRsltYn
				+ ", nsptChkList=" + nsptChkList + ", cdDtl1=" + cdDtl1 + ", cdDtl2=" + cdDtl2 + "]";
	}

	
	
	
	}
