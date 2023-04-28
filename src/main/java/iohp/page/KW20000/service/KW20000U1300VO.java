package iohp.page.KW20000.service;

import iohp.login.service.LoginVO;

public class KW20000U1300VO extends LoginVO{

	private static final long serialVersionUID = 7039326550542831021L;
	
	private String bzRgstNo;     	/* 사업자등록번호 */
	private int seq;     	/* 순번 */
	private int rnum;     	/* 조회 */
	private String prdtNm;     	/* 제품명 */
	private String spplCmp;     	/* 공급사 */
	private String rcptDd;     	/* 입고일자 */
	private int rcptQnty;     	/* 입고량 */
	private String unit;     	/* 단위 */
	private String issDd;     	/* 출고일자 */
	private int issQnty;     	/* 출고량 */
	private int stckQnty;     	/* 재고량 */
	private String wrkPlcMgtUniqNo;     	/* 사업장관리고유번호 */
	
	public String getBzRgstNo() {
		return bzRgstNo;
	}
	public void setBzRgstNo(String bzRgstNo) {
		this.bzRgstNo = bzRgstNo;
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
	public String getPrdtNm() {
		return prdtNm;
	}
	public void setPrdtNm(String prdtNm) {
		this.prdtNm = prdtNm;
	}
	public String getSpplCmp() {
		return spplCmp;
	}
	public void setSpplCmp(String spplCmp) {
		this.spplCmp = spplCmp;
	}
	public String getRcptDd() {
		return rcptDd;
	}
	public void setRcptDd(String rcptDd) {
		this.rcptDd = rcptDd;
	}
	public int getRcptQnty() {
		return rcptQnty;
	}
	public void setRcptQnty(int rcptQnty) {
		this.rcptQnty = rcptQnty;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getIssDd() {
		return issDd;
	}
	public void setIssDd(String issDd) {
		this.issDd = issDd;
	}
	public int getIssQnty() {
		return issQnty;
	}
	public void setIssQnty(int issQnty) {
		this.issQnty = issQnty;
	}
	public int getStckQnty() {
		return stckQnty;
	}
	public void setStckQnty(int stckQnty) {
		this.stckQnty = stckQnty;
	}
	public String getWrkPlcMgtUniqNo() {
		return wrkPlcMgtUniqNo;
	}
	public void setWrkPlcMgtUniqNo(String wrkPlcMgtUniqNo) {
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public KW20000U1300VO() {
	}
	
	public KW20000U1300VO(String bzRgstNo, int seq, int rnum, String prdtNm, String spplCmp, String rcptDd,
			int rcptQnty, String unit, String issDd, int issQnty, int stckQnty, String wrkPlcMgtUniqNo) {
		this.bzRgstNo = bzRgstNo;
		this.seq = seq;
		this.rnum = rnum;
		this.prdtNm = prdtNm;
		this.spplCmp = spplCmp;
		this.rcptDd = rcptDd;
		this.rcptQnty = rcptQnty;
		this.unit = unit;
		this.issDd = issDd;
		this.issQnty = issQnty;
		this.stckQnty = stckQnty;
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	
	@Override
	public String toString() {
		return "KW20000U1300VO [bzRgstNo=" + bzRgstNo + ", seq=" + seq + ", rnum=" + rnum + ", prdtNm=" + prdtNm
				+ ", spplCmp=" + spplCmp + ", rcptDd=" + rcptDd + ", rcptQnty=" + rcptQnty + ", unit=" + unit
				+ ", issDd=" + issDd + ", issQnty=" + issQnty + ", stckQnty=" + stckQnty + ", wrkPlcMgtUniqNo="
				+ wrkPlcMgtUniqNo + "]";
	}
	
	
	
	

}
