package iohp.page.KW30000.service;

import org.springframework.web.multipart.MultipartFile;

import iohp.login.service.LoginVO;

public class KW30000U4720VO extends LoginVO {

	private static final long serialVersionUID = 7521448603289277547L;
	private String bzRgstNo; /* 사업자등록번호 */
	private int seq; /* 순번 */
	private int rnum; /* 페이지 순번 */
	private String riskEvalTp; /* 위험성평가구분 */
	private String restrNm; /* 등록자이름 */
	private String rgstDd; /* 등록일자 */
	private String boardFile; /* 첨부파일경로 */
	private String boardFileName; /* 첨부파일이름 */
	private String koshaStrNo; /* 안전보건공단개시번호 */
	private String klwcWrkPlcMgtNo; /* 근로복지공단사업장관리번호 */
	private String unitCoNm; /* 단위사업체명 */
	private String prcsNm; /* 공정명 */
	private String dtlWrkNm; /* 세부작업명 */
	private String dngrClss; /* 위험분류 */
	private String dngrOcurSttnRslt; /* 위험발생상황결과 */
	private String crntSftyHlthActn; /* 현재안전보건조치 */
	private String crntRisk; /* 현재위험성 */
	private String decrsActn; /* 감소대책 */
	private String mprvAftRisk; /* 개선후위험성 */
	private String mprvSchDd; /* 개선예정일자 */
	private String mprvCmpltDd; /* 개선완료일자 */
	private String mprvChrgPrsn; /* 개선담당자 */
	
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
	public String getRiskEvalTp() {
		return riskEvalTp;
	}
	public void setRiskEvalTp(String riskEvalTp) {
		this.riskEvalTp = riskEvalTp;
	}
	public String getRestrNm() {
		return restrNm;
	}
	public void setRestrNm(String restrNm) {
		this.restrNm = restrNm;
	}
	public String getRgstDd() {
		return rgstDd;
	}
	public void setRgstDd(String rgstDd) {
		this.rgstDd = rgstDd;
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
	public String getKoshaStrNo() {
		return koshaStrNo;
	}
	public void setKoshaStrNo(String koshaStrNo) {
		this.koshaStrNo = koshaStrNo;
	}
	public String getKlwcWrkPlcMgtNo() {
		return klwcWrkPlcMgtNo;
	}
	public void setKlwcWrkPlcMgtNo(String klwcWrkPlcMgtNo) {
		this.klwcWrkPlcMgtNo = klwcWrkPlcMgtNo;
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
	public String getDtlWrkNm() {
		return dtlWrkNm;
	}
	public void setDtlWrkNm(String dtlWrkNm) {
		this.dtlWrkNm = dtlWrkNm;
	}
	public String getDngrClss() {
		return dngrClss;
	}
	public void setDngrClss(String dngrClss) {
		this.dngrClss = dngrClss;
	}
	public String getDngrOcurSttnRslt() {
		return dngrOcurSttnRslt;
	}
	public void setDngrOcurSttnRslt(String dngrOcurSttnRslt) {
		this.dngrOcurSttnRslt = dngrOcurSttnRslt;
	}
	public String getCrntSftyHlthActn() {
		return crntSftyHlthActn;
	}
	public void setCrntSftyHlthActn(String crntSftyHlthActn) {
		this.crntSftyHlthActn = crntSftyHlthActn;
	}
	public String getCrntRisk() {
		return crntRisk;
	}
	public void setCrntRisk(String crntRisk) {
		this.crntRisk = crntRisk;
	}
	public String getDecrsActn() {
		return decrsActn;
	}
	public void setDecrsActn(String decrsActn) {
		this.decrsActn = decrsActn;
	}
	public String getMprvAftRisk() {
		return mprvAftRisk;
	}
	public void setMprvAftRisk(String mprvAftRisk) {
		this.mprvAftRisk = mprvAftRisk;
	}
	public String getMprvSchDd() {
		return mprvSchDd;
	}
	public void setMprvSchDd(String mprvSchDd) {
		this.mprvSchDd = mprvSchDd;
	}
	public String getMprvCmpltDd() {
		return mprvCmpltDd;
	}
	public void setMprvCmpltDd(String mprvCmpltDd) {
		this.mprvCmpltDd = mprvCmpltDd;
	}
	public String getMprvChrgPrsn() {
		return mprvChrgPrsn;
	}
	public void setMprvChrgPrsn(String mprvChrgPrsn) {
		this.mprvChrgPrsn = mprvChrgPrsn;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public KW30000U4720VO() {
	}
	
	public KW30000U4720VO(String bzRgstNo, int seq, int rnum, String riskEvalTp, String restrNm, String rgstDd,
			String boardFile, String boardFileName, String koshaStrNo, String klwcWrkPlcMgtNo, String unitCoNm,
			String prcsNm, String dtlWrkNm, String dngrClss, String dngrOcurSttnRslt, String crntSftyHlthActn,
			String crntRisk, String decrsActn, String mprvAftRisk, String mprvSchDd, String mprvCmpltDd,
			String mprvChrgPrsn) {
		this.bzRgstNo = bzRgstNo;
		this.seq = seq;
		this.rnum = rnum;
		this.riskEvalTp = riskEvalTp;
		this.restrNm = restrNm;
		this.rgstDd = rgstDd;
		this.boardFile = boardFile;
		this.boardFileName = boardFileName;
		this.koshaStrNo = koshaStrNo;
		this.klwcWrkPlcMgtNo = klwcWrkPlcMgtNo;
		this.unitCoNm = unitCoNm;
		this.prcsNm = prcsNm;
		this.dtlWrkNm = dtlWrkNm;
		this.dngrClss = dngrClss;
		this.dngrOcurSttnRslt = dngrOcurSttnRslt;
		this.crntSftyHlthActn = crntSftyHlthActn;
		this.crntRisk = crntRisk;
		this.decrsActn = decrsActn;
		this.mprvAftRisk = mprvAftRisk;
		this.mprvSchDd = mprvSchDd;
		this.mprvCmpltDd = mprvCmpltDd;
		this.mprvChrgPrsn = mprvChrgPrsn;
	}
	
	@Override
	public String toString() {
		return "KW30000U4720VO [bzRgstNo=" + bzRgstNo + ", seq=" + seq + ", rnum=" + rnum + ", riskEvalTp=" + riskEvalTp
				+ ", restrNm=" + restrNm + ", rgstDd=" + rgstDd + ", boardFile=" + boardFile + ", boardFileName="
				+ boardFileName + ", koshaStrNo=" + koshaStrNo + ", klwcWrkPlcMgtNo=" + klwcWrkPlcMgtNo + ", unitCoNm="
				+ unitCoNm + ", prcsNm=" + prcsNm + ", dtlWrkNm=" + dtlWrkNm + ", dngrClss=" + dngrClss
				+ ", dngrOcurSttnRslt=" + dngrOcurSttnRslt + ", crntSftyHlthActn=" + crntSftyHlthActn + ", crntRisk="
				+ crntRisk + ", decrsActn=" + decrsActn + ", mprvAftRisk=" + mprvAftRisk + ", mprvSchDd=" + mprvSchDd
				+ ", mprvCmpltDd=" + mprvCmpltDd + ", mprvChrgPrsn=" + mprvChrgPrsn + "]";
	}
	
	
	
	
}
