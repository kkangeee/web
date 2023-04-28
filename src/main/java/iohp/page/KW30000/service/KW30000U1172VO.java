package iohp.page.KW30000.service;

import java.sql.Date;

public class KW30000U1172VO {

	private String bzRgstNo; /* 사업자등록번호 */
	private int seq; /* 순번 */
	private int rnum; /* 순번 */
	private String prvdDt; /* 제공일시 */
	private String empeNm; /* 직원이름 */
	private String unitCoNm; /* 단위사업체명 */
	private String prcsNm; /* 공정명 */
	private String medcnNm; /* 의약품명 */
	private int qty; /* 수량 */
	private String prvdRsn; /* 제공사유 */
	private String rmk; /* 비고 */
	private String wrkPlcMgtUniqNo; /* 비고 */
	
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
	public String getPrvdDt() {
		return prvdDt;
	}
	public void setPrvdDt(String prvdDt) {
		this.prvdDt = prvdDt;
	}
	public String getEmpeNm() {
		return empeNm;
	}
	public void setEmpeNm(String empeNm) {
		this.empeNm = empeNm;
	}
	public String getUnitCoNm() {
		return unitCoNm;
	}
	public void setUnitCoNm(String unitCoNm) {
		this.unitCoNm = unitCoNm;
	}
	public String getPrcsNm() {
		return prcsNm;
	}
	public void setPrcsNm(String prcsNm) {
		this.prcsNm = prcsNm;
	}
	public String getMedcnNm() {
		return medcnNm;
	}
	public void setMedcnNm(String medcnNm) {
		this.medcnNm = medcnNm;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public String getPrvdRsn() {
		return prvdRsn;
	}
	public void setPrvdRsn(String prvdRsn) {
		this.prvdRsn = prvdRsn;
	}
	public String getRmk() {
		return rmk;
	}
	public void setRmk(String rmk) {
		this.rmk = rmk;
	}
	public String getWrkPlcMgtUniqNo() {
		return wrkPlcMgtUniqNo;
	}
	public void setWrkPlcMgtUniqNo(String wrkPlcMgtUniqNo) {
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	public KW30000U1172VO() {
	}
	
	public KW30000U1172VO(String bzRgstNo, int seq, int rnum, String prvdDt, String empeNm, String unitCoNm,
			String prcsNm, String medcnNm, int qty, String prvdRsn, String rmk, String wrkPlcMgtUniqNo) {
		this.bzRgstNo = bzRgstNo;
		this.seq = seq;
		this.rnum = rnum;
		this.prvdDt = prvdDt;
		this.empeNm = empeNm;
		this.unitCoNm = unitCoNm;
		this.prcsNm = prcsNm;
		this.medcnNm = medcnNm;
		this.qty = qty;
		this.prvdRsn = prvdRsn;
		this.rmk = rmk;
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	
	@Override
	public String toString() {
		return "KW30000U1172VO [bzRgstNo=" + bzRgstNo + ", seq=" + seq + ", rnum=" + rnum + ", prvdDt=" + prvdDt
				+ ", empeNm=" + empeNm + ", unitCoNm=" + unitCoNm + ", prcsNm=" + prcsNm + ", medcnNm=" + medcnNm
				+ ", qty=" + qty + ", prvdRsn=" + prvdRsn + ", rmk=" + rmk + ", wrkPlcMgtUniqNo=" + wrkPlcMgtUniqNo
				+ "]";
	}
	
	

	
	
	}
