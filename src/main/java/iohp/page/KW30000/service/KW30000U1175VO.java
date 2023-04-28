package iohp.page.KW30000.service;

import java.sql.Date;

public class KW30000U1175VO {  

	private String bzRgstNo; /* 사업자등록번호 */
	private int seq; /* 순번 */ 
	private int rnum; /* 순번 */ 
	private String ocurDd; /* 발생일자 */
	private String wrkrNm; /* 근로자이름 */
	private String unitCoNm; /* 단위사업체명 */
	private String prcsNm; /* 공정명 */
	private String ocurDtl; /* 발생경위 */
	private String frstAidDtl; /* 응급처치내역 */
	private String trnsfHsptlNm; /* 이송병원명 */
	private String pstPrgsStus; /* 추후진행현황 */
	private String rmk; /* 비고 */
	private String wrkPlcMgtUniqNo; /* 사업장관리고유번호 */
	
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
	public String getOcurDd() {
		return ocurDd;
	}
	public void setOcurDd(String ocurDd) {
		this.ocurDd = ocurDd;
	}
	public String getWrkrNm() {
		return wrkrNm;
	}
	public void setWrkrNm(String wrkrNm) {
		this.wrkrNm = wrkrNm;
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
	public String getOcurDtl() {
		return ocurDtl;
	}
	public void setOcurDtl(String ocurDtl) {
		this.ocurDtl = ocurDtl;
	}
	public String getFrstAidDtl() {
		return frstAidDtl;
	}
	public void setFrstAidDtl(String frstAidDtl) {
		this.frstAidDtl = frstAidDtl;
	}
	public String getTrnsfHsptlNm() {
		return trnsfHsptlNm;
	}
	public void setTrnsfHsptlNm(String trnsfHsptlNm) {
		this.trnsfHsptlNm = trnsfHsptlNm;
	}
	public String getPstPrgsStus() {
		return pstPrgsStus;
	}
	public void setPstPrgsStus(String pstPrgsStus) {
		this.pstPrgsStus = pstPrgsStus;
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
	public KW30000U1175VO() {
	}
	
	public KW30000U1175VO(String bzRgstNo, int seq, int rnum, String ocurDd, String wrkrNm, String unitCoNm,
			String prcsNm, String ocurDtl, String frstAidDtl, String trnsfHsptlNm, String pstPrgsStus, String rmk,
			String wrkPlcMgtUniqNo) {
		this.bzRgstNo = bzRgstNo;
		this.seq = seq;
		this.rnum = rnum;
		this.ocurDd = ocurDd;
		this.wrkrNm = wrkrNm;
		this.unitCoNm = unitCoNm;
		this.prcsNm = prcsNm;
		this.ocurDtl = ocurDtl;
		this.frstAidDtl = frstAidDtl;
		this.trnsfHsptlNm = trnsfHsptlNm;
		this.pstPrgsStus = pstPrgsStus;
		this.rmk = rmk;
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	
	@Override
	public String toString() {
		return "KW30000U1175VO [bzRgstNo=" + bzRgstNo + ", seq=" + seq + ", rnum=" + rnum + ", ocurDd=" + ocurDd
				+ ", wrkrNm=" + wrkrNm + ", unitCoNm=" + unitCoNm + ", prcsNm=" + prcsNm + ", ocurDtl=" + ocurDtl
				+ ", frstAidDtl=" + frstAidDtl + ", trnsfHsptlNm=" + trnsfHsptlNm + ", pstPrgsStus=" + pstPrgsStus
				+ ", rmk=" + rmk + ", wrkPlcMgtUniqNo=" + wrkPlcMgtUniqNo + "]";
	}
	
	
	
	
	
	}
