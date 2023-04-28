package iohp.page.KW30000.service;

import java.sql.Date;

public class KW30000U1130VO /* extend BaseVO */ {

	private String bzRgstNo; /* 사업자등록번호 */
	private int seq; /* 순번 */
	private int rnum; /* 순번 */
	private String empeNo; /* 사번 */
	private String empeNm; /* 위원명 */
	private String deptNm; /* 부서명 */
	private String prcsNm; /* 공정명 */
	private String pstn; /* 직위 */
	private String cmsnrTp; /* 위원구분 */
	private String rgstDd; /* 등록일자 */
	private String endDd; /* 종료일자 */
	private String mbrId; /* 로그인아이디 */
	
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
	public String getEmpeNo() {
		return empeNo;
	}
	public void setEmpeNo(String empeNo) {
		this.empeNo = empeNo;
	}
	public String getEmpeNm() {
		return empeNm;
	}
	public void setEmpeNm(String empeNm) {
		this.empeNm = empeNm;
	}
	public String getDeptNm() {
		return deptNm;
	}
	public void setDeptNm(String deptNm) {
		this.deptNm = deptNm;
	}
	public String getPrcsNm() {
		return prcsNm;
	}
	public void setPrcsNm(String prcsNm) {
		this.prcsNm = prcsNm;
	}
	public String getPstn() {
		return pstn;
	}
	public void setPstn(String pstn) {
		this.pstn = pstn;
	}
	public String getCmsnrTp() {
		return cmsnrTp;
	}
	public void setCmsnrTp(String cmsnrTp) {
		this.cmsnrTp = cmsnrTp;
	}
	public String getRgstDd() {
		return rgstDd;
	}
	public void setRgstDd(String rgstDd) {
		this.rgstDd = rgstDd;
	}
	public String getEndDd() {
		return endDd;
	}
	public void setEndDd(String endDd) {
		this.endDd = endDd;
	}
	public String getMbrId() {
		return mbrId;
	}
	public void setMbrId(String mbrId) {
		this.mbrId = mbrId;
	}
	
	public KW30000U1130VO() {
	}
	
	public KW30000U1130VO(String bzRgstNo, int seq, int rnum, String empeNo, String empeNm, String deptNm,
			String prcsNm, String pstn, String cmsnrTp, String rgstDd, String endDd, String mbrId) {
		this.bzRgstNo = bzRgstNo;
		this.seq = seq;
		this.rnum = rnum;
		this.empeNo = empeNo;
		this.empeNm = empeNm;
		this.deptNm = deptNm;
		this.prcsNm = prcsNm;
		this.pstn = pstn;
		this.cmsnrTp = cmsnrTp;
		this.rgstDd = rgstDd;
		this.endDd = endDd;
		this.mbrId = mbrId;
	}
	
	@Override
	public String toString() {
		return "KW30000U1130VO [bzRgstNo=" + bzRgstNo + ", seq=" + seq + ", rnum=" + rnum + ", empeNo=" + empeNo
				+ ", empeNm=" + empeNm + ", deptNm=" + deptNm + ", prcsNm=" + prcsNm + ", pstn=" + pstn + ", cmsnrTp="
				+ cmsnrTp + ", rgstDd=" + rgstDd + ", endDd=" + endDd + ", mbrId=" + mbrId + "]";
	}

	
	
	
	}
