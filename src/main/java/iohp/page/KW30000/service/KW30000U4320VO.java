package iohp.page.KW30000.service;


public class KW30000U4320VO {

	private int rnum; /* 페이지 순번 */
	private String bzRgstNo; /* 사업자등록번호 */
	private String prcsNm; /* 공정명 */
	private int seq; /* 순번 */
	private String mtrlNm; /* 물질명 */
	private String sftyChkTgtYn; /* 안전검사대상여부 */
	private String sftyChkImplDd; /* 안전검사실시일자 */
	private String sftyChkLbl; /* 안전검사표 */
	private String wrkPlcMgtUniqNo; /* 사업장관리고유번호 */
	private String atchFilePath; /* 첨부파일경로 */
	private String atchFileNm; /* 첨부파일이름 */
	
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public String getBzRgstNo() {
		return bzRgstNo;
	}
	public void setBzRgstNo(String bzRgstNo) {
		this.bzRgstNo = bzRgstNo;
	}
	public String getPrcsNm() {
		return prcsNm;
	}
	public void setPrcsNm(String prcsNm) {
		this.prcsNm = prcsNm;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getMtrlNm() {
		return mtrlNm;
	}
	public void setMtrlNm(String mtrlNm) {
		this.mtrlNm = mtrlNm;
	}
	public String getSftyChkTgtYn() {
		return sftyChkTgtYn;
	}
	public void setSftyChkTgtYn(String sftyChkTgtYn) {
		this.sftyChkTgtYn = sftyChkTgtYn;
	}
	public String getSftyChkImplDd() {
		return sftyChkImplDd;
	}
	public void setSftyChkImplDd(String sftyChkImplDd) {
		this.sftyChkImplDd = sftyChkImplDd;
	}
	public String getSftyChkLbl() {
		return sftyChkLbl;
	}
	public void setSftyChkLbl(String sftyChkLbl) {
		this.sftyChkLbl = sftyChkLbl;
	}
	public String getWrkPlcMgtUniqNo() {
		return wrkPlcMgtUniqNo;
	}
	public void setWrkPlcMgtUniqNo(String wrkPlcMgtUniqNo) {
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	public String getAtchFilePath() {
		return atchFilePath;
	}
	public void setAtchFilePath(String atchFilePath) {
		this.atchFilePath = atchFilePath;
	}
	public String getAtchFileNm() {
		return atchFileNm;
	}
	public void setAtchFileNm(String atchFileNm) {
		this.atchFileNm = atchFileNm;
	}
	
	public KW30000U4320VO() {
	}
	
	public KW30000U4320VO(int rnum, String bzRgstNo, String prcsNm, int seq, String mtrlNm, String sftyChkTgtYn,
			String sftyChkImplDd, String sftyChkLbl, String wrkPlcMgtUniqNo, String atchFilePath, String atchFileNm) {
		this.rnum = rnum;
		this.bzRgstNo = bzRgstNo;
		this.prcsNm = prcsNm;
		this.seq = seq;
		this.mtrlNm = mtrlNm;
		this.sftyChkTgtYn = sftyChkTgtYn;
		this.sftyChkImplDd = sftyChkImplDd;
		this.sftyChkLbl = sftyChkLbl;
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
		this.atchFilePath = atchFilePath;
		this.atchFileNm = atchFileNm;
	}
	
	@Override
	public String toString() {
		return "KW30000U4320VO [rnum=" + rnum + ", bzRgstNo=" + bzRgstNo + ", prcsNm=" + prcsNm + ", seq=" + seq
				+ ", mtrlNm=" + mtrlNm + ", sftyChkTgtYn=" + sftyChkTgtYn + ", sftyChkImplDd=" + sftyChkImplDd
				+ ", sftyChkLbl=" + sftyChkLbl + ", wrkPlcMgtUniqNo=" + wrkPlcMgtUniqNo + ", atchFilePath="
				+ atchFilePath + ", atchFileNm=" + atchFileNm + "]";
	}
	
	
	
	
	
	
}