package iohp.page.KW30000.service;

import java.sql.Date;

public class KW30000U1173chkVO {

	private String bzRgstNo; /* 사업자등록번호 */
	private String mgtNo; /* 관리번호 */
	private int seq; /* 순번 */
	private int rnum; /* 조회 순번 */
	private String nsptDd; /* 점검일자 */ 
	private String nsptItemNo; /* 점검항목번호 */
	private String nsptRsltYn; /* 점검결과 */
	private String nsptChkList; /* 점검사항 */
	private String wrkPlcMgtUniqNo; /* 사업장관리고유번호 */
	
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
	public String getWrkPlcMgtUniqNo() {
		return wrkPlcMgtUniqNo;
	}
	public void setWrkPlcMgtUniqNo(String wrkPlcMgtUniqNo) {
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	
	public KW30000U1173chkVO() {
	}
	
	public KW30000U1173chkVO(String bzRgstNo, String mgtNo, int seq, int rnum, String nsptDd, String nsptItemNo,
			String nsptRsltYn, String nsptChkList, String wrkPlcMgtUniqNo) {
		this.bzRgstNo = bzRgstNo;
		this.mgtNo = mgtNo;
		this.seq = seq;
		this.rnum = rnum;
		this.nsptDd = nsptDd;
		this.nsptItemNo = nsptItemNo;
		this.nsptRsltYn = nsptRsltYn;
		this.nsptChkList = nsptChkList;
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	
	@Override
	public String toString() {
		return "KW30000U1173chkVO [bzRgstNo=" + bzRgstNo + ", mgtNo=" + mgtNo + ", seq=" + seq + ", rnum=" + rnum
				+ ", nsptDd=" + nsptDd + ", nsptItemNo=" + nsptItemNo + ", nsptRsltYn=" + nsptRsltYn + ", nsptChkList="
				+ nsptChkList + ", wrkPlcMgtUniqNo=" + wrkPlcMgtUniqNo + "]";
	}

	
	
	}
