package iohp.page.KW30000.service;

import org.springframework.web.multipart.MultipartFile;

import iohp.login.service.LoginVO;

public class KW30000U4610VO extends LoginVO {

	private static final long serialVersionUID = 7521448603289277547L;
	private String bzRgstNo; /* 사업자등록번호 */
	private int seq; /* 순번 */
	private int rnum; /* 페이지 순번 */
	private String nsptDt; /* 점검일시 */
	private String nsptPrsnNm; /* 점검자이름 */
	private String prcsNm; /* 공정명 */
	private String mprvNeedYn; /* 개선필요여부 */
	private String mprvActnYn; /* 개선조치여부 */
	private String mprvNeedDtl; /* 개선필요사항 */
	private String mprvActnDtl; /* 개선조치사항 */
	private String actnLmt; /* 조치기한 */
	private String othrDtl; /* 기타사항 */
	private String wrkPlcMgtUniqNo; /* 사업장관리고유번호 */
	private String boardFile; /* 첨부파일경로 */
	private String boardFileName; /* 첨부파일이름 */
	
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
	public String getNsptDt() {
		return nsptDt;
	}
	public void setNsptDt(String nsptDt) {
		this.nsptDt = nsptDt;
	}
	public String getNsptPrsnNm() {
		return nsptPrsnNm;
	}
	public void setNsptPrsnNm(String nsptPrsnNm) {
		this.nsptPrsnNm = nsptPrsnNm;
	}
	public String getPrcsNm() {
		return prcsNm;
	}
	public void setPrcsNm(String prcsNm) {
		this.prcsNm = prcsNm;
	}
	public String getMprvNeedYn() {
		return mprvNeedYn;
	}
	public void setMprvNeedYn(String mprvNeedYn) {
		this.mprvNeedYn = mprvNeedYn;
	}
	public String getMprvActnYn() {
		return mprvActnYn;
	}
	public void setMprvActnYn(String mprvActnYn) {
		this.mprvActnYn = mprvActnYn;
	}
	public String getMprvNeedDtl() {
		return mprvNeedDtl;
	}
	public void setMprvNeedDtl(String mprvNeedDtl) {
		this.mprvNeedDtl = mprvNeedDtl;
	}
	public String getMprvActnDtl() {
		return mprvActnDtl;
	}
	public void setMprvActnDtl(String mprvActnDtl) {
		this.mprvActnDtl = mprvActnDtl;
	}
	public String getActnLmt() {
		return actnLmt;
	}
	public void setActnLmt(String actnLmt) {
		this.actnLmt = actnLmt;
	}
	public String getOthrDtl() {
		return othrDtl;
	}
	public void setOthrDtl(String othrDtl) {
		this.othrDtl = othrDtl;
	}
	public String getWrkPlcMgtUniqNo() {
		return wrkPlcMgtUniqNo;
	}
	public void setWrkPlcMgtUniqNo(String wrkPlcMgtUniqNo) {
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	public String getBoardFile() {
		return boardFile;
	}
	public void setBoardFile(String boardFile) {
		this.boardFile = boardFile;
	}
	public String getBoardFileName() {
		return boardFileName;
	}
	public void setBoardFileName(String boardFileName) {
		this.boardFileName = boardFileName;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public KW30000U4610VO() {
	}
	
	public KW30000U4610VO(String bzRgstNo, int seq, int rnum, String nsptDt, String nsptPrsnNm, String prcsNm,
			String mprvNeedYn, String mprvActnYn, String mprvNeedDtl, String mprvActnDtl, String actnLmt,
			String othrDtl, String wrkPlcMgtUniqNo, String boardFile, String boardFileName) {
		this.bzRgstNo = bzRgstNo;
		this.seq = seq;
		this.rnum = rnum;
		this.nsptDt = nsptDt;
		this.nsptPrsnNm = nsptPrsnNm;
		this.prcsNm = prcsNm;
		this.mprvNeedYn = mprvNeedYn;
		this.mprvActnYn = mprvActnYn;
		this.mprvNeedDtl = mprvNeedDtl;
		this.mprvActnDtl = mprvActnDtl;
		this.actnLmt = actnLmt;
		this.othrDtl = othrDtl;
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
		this.boardFile = boardFile;
		this.boardFileName = boardFileName;
	}
	
	@Override
	public String toString() {
		return "KW30000U4610VO [bzRgstNo=" + bzRgstNo + ", seq=" + seq + ", rnum=" + rnum + ", nsptDt=" + nsptDt
				+ ", nsptPrsnNm=" + nsptPrsnNm + ", prcsNm=" + prcsNm + ", mprvNeedYn=" + mprvNeedYn + ", mprvActnYn="
				+ mprvActnYn + ", mprvNeedDtl=" + mprvNeedDtl + ", mprvActnDtl=" + mprvActnDtl + ", actnLmt=" + actnLmt
				+ ", othrDtl=" + othrDtl + ", wrkPlcMgtUniqNo=" + wrkPlcMgtUniqNo + ", boardFile=" + boardFile
				+ ", boardFileName=" + boardFileName + "]";
	}

	
	
	

}
