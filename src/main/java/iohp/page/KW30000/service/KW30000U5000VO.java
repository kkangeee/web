package iohp.page.KW30000.service;

import org.springframework.web.multipart.MultipartFile;

import iohp.login.service.LoginVO;

public class KW30000U5000VO extends LoginVO {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7521448603289277547L;
	private int seq; /* 순번 */
	private int rNum; /* 페이지 순번 */
	private int cnt; /* 조회수 */
	private int contentId; /* 게시판 아이디 */
	private String bzRgstNo; /* 사업자등록번호 */
	private int eduYear; /* 교육연도 */
	private String eduKnd; /* 교육종류 */
	private String eduMth; /* 교육방법 */
	private String eduSbjtNm; /* 교육과목명 */
	private String eduImplStrDd; /* 교육실시개시일자& 교육기간으로도 씀 */
	private String eduImplEndDd; /* 교육실시종료일자 */
	private String eduTm; /* 교육시간 */
	private String tgtPrcsNm; /* 대상공정명 */
	private int tgtPplCnt; /* 대상인원 */
	private int cmpltnPplCnt; /* 이수인원 */
	private String tchrNm; /* 강사명 */
	private String tchrAflt; /* 강사소속 */
	private String wrkPlcMgtUniqNo; /* 사업장관리고유번호 */
	private String content; /* 컨텐츠 */
	private String createObjectId; /* 작성자 */
	private int tgtPplEmpeNo; /* 대상자 사번 */
	private String tgtPplNm; /* 대상자 이름 */
	private String prcsNm; /* 공정명 */
	private String pstnCls; /* 직급 */
	private String eduSbjtSeq; /* 교육과목 순번 */
	private String cmpltnYn; /* 이수여부 */
	private String wrkPlcMgtUniqNm; /* 단위사업체명 */

	/* 파일업로드 관련 */
	private MultipartFile uploadFile;/* 첨부파일 */
	private String boardFile; /* 파일경로 */
	private String boardFileName; /* 파일명 */
	private String boardImgName; /* 이미지명 */
	private String boardImg; /* 이미지경로 */
	private String atchFilePath;
	private String atchFileNm;
	
	/*상세페이지 관련*/
	private int nextContentId;
	private String nextEduSbjtNm;
	private int preContentId;
	private String preEduSbjtNm;
	//교육승인여부
	private String outEduYn;
	//첨부파일 확인여부
	private String atchFileYn;
	//외부교육기관명
	private String eduInstNm;
	//상태값 변경
	private int csv;
	
	public KW30000U5000VO() {}
	
	public KW30000U5000VO(int seq, int rNum, int cnt, int contentId, String bzRgstNo, int eduYear, String eduKnd,
			String eduMth, String eduSbjtNm, String eduImplStrDd, String eduImplEndDd, String eduTm, String tgtPrcsNm,
			int tgtPplCnt, int cmpltnPplCnt, String tchrNm, String tchrAflt, String wrkPlcMgtUniqNo, String content,
			String createObjectId, int tgtPplEmpeNo, String tgtPplNm, String prcsNm, String pstnCls, String eduSbjtSeq,
			String cmpltnYn, String wrkPlcMgtUniqNm, MultipartFile uploadFile, String boardFile, String boardFileName,
			String boardImgName, String boardImg, String atchFilePath, String atchFileNm, int nextContentId,
			String nextEduSbjtNm, int preContentId, String preEduSbjtNm, String outEduYn, String atchFileYn,
			String eduInstNm, int csv) {
		this.seq = seq;
		this.rNum = rNum;
		this.cnt = cnt;
		this.contentId = contentId;
		this.bzRgstNo = bzRgstNo;
		this.eduYear = eduYear;
		this.eduKnd = eduKnd;
		this.eduMth = eduMth;
		this.eduSbjtNm = eduSbjtNm;
		this.eduImplStrDd = eduImplStrDd;
		this.eduImplEndDd = eduImplEndDd;
		this.eduTm = eduTm;
		this.tgtPrcsNm = tgtPrcsNm;
		this.tgtPplCnt = tgtPplCnt;
		this.cmpltnPplCnt = cmpltnPplCnt;
		this.tchrNm = tchrNm;
		this.tchrAflt = tchrAflt;
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
		this.content = content;
		this.createObjectId = createObjectId;
		this.tgtPplEmpeNo = tgtPplEmpeNo;
		this.tgtPplNm = tgtPplNm;
		this.prcsNm = prcsNm;
		this.pstnCls = pstnCls;
		this.eduSbjtSeq = eduSbjtSeq;
		this.cmpltnYn = cmpltnYn;
		this.wrkPlcMgtUniqNm = wrkPlcMgtUniqNm;
		this.uploadFile = uploadFile;
		this.boardFile = boardFile;
		this.boardFileName = boardFileName;
		this.boardImgName = boardImgName;
		this.boardImg = boardImg;
		this.atchFilePath = atchFilePath;
		this.atchFileNm = atchFileNm;
		this.nextContentId = nextContentId;
		this.nextEduSbjtNm = nextEduSbjtNm;
		this.preContentId = preContentId;
		this.preEduSbjtNm = preEduSbjtNm;
		this.outEduYn = outEduYn;
		this.atchFileYn = atchFileYn;
		this.eduInstNm = eduInstNm;
		this.csv = csv;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getrNum() {
		return rNum;
	}

	public void setrNum(int rNum) {
		this.rNum = rNum;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public int getContentId() {
		return contentId;
	}

	public void setContentId(int contentId) {
		this.contentId = contentId;
	}

	public String getBzRgstNo() {
		return bzRgstNo;
	}

	public void setBzRgstNo(String bzRgstNo) {
		this.bzRgstNo = bzRgstNo;
	}

	public int getEduYear() {
		return eduYear;
	}

	public void setEduYear(int eduYear) {
		this.eduYear = eduYear;
	}

	public String getEduKnd() {
		return eduKnd;
	}

	public void setEduKnd(String eduKnd) {
		this.eduKnd = eduKnd;
	}

	public String getEduMth() {
		return eduMth;
	}

	public void setEduMth(String eduMth) {
		this.eduMth = eduMth;
	}

	public String getEduSbjtNm() {
		return eduSbjtNm;
	}

	public void setEduSbjtNm(String eduSbjtNm) {
		this.eduSbjtNm = eduSbjtNm;
	}

	public String getEduImplStrDd() {
		return eduImplStrDd;
	}

	public void setEduImplStrDd(String eduImplStrDd) {
		this.eduImplStrDd = eduImplStrDd;
	}

	public String getEduImplEndDd() {
		return eduImplEndDd;
	}

	public void setEduImplEndDd(String eduImplEndDd) {
		this.eduImplEndDd = eduImplEndDd;
	}

	public String getEduTm() {
		return eduTm;
	}

	public void setEduTm(String eduTm) {
		this.eduTm = eduTm;
	}

	public String getTgtPrcsNm() {
		return tgtPrcsNm;
	}

	public void setTgtPrcsNm(String tgtPrcsNm) {
		this.tgtPrcsNm = tgtPrcsNm;
	}

	public int getTgtPplCnt() {
		return tgtPplCnt;
	}

	public void setTgtPplCnt(int tgtPplCnt) {
		this.tgtPplCnt = tgtPplCnt;
	}

	public int getCmpltnPplCnt() {
		return cmpltnPplCnt;
	}

	public void setCmpltnPplCnt(int cmpltnPplCnt) {
		this.cmpltnPplCnt = cmpltnPplCnt;
	}

	public String getTchrNm() {
		return tchrNm;
	}

	public void setTchrNm(String tchrNm) {
		this.tchrNm = tchrNm;
	}

	public String getTchrAflt() {
		return tchrAflt;
	}

	public void setTchrAflt(String tchrAflt) {
		this.tchrAflt = tchrAflt;
	}

	public String getWrkPlcMgtUniqNo() {
		return wrkPlcMgtUniqNo;
	}

	public void setWrkPlcMgtUniqNo(String wrkPlcMgtUniqNo) {
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreateObjectId() {
		return createObjectId;
	}

	public void setCreateObjectId(String createObjectId) {
		this.createObjectId = createObjectId;
	}

	public int getTgtPplEmpeNo() {
		return tgtPplEmpeNo;
	}

	public void setTgtPplEmpeNo(int tgtPplEmpeNo) {
		this.tgtPplEmpeNo = tgtPplEmpeNo;
	}

	public String getTgtPplNm() {
		return tgtPplNm;
	}

	public void setTgtPplNm(String tgtPplNm) {
		this.tgtPplNm = tgtPplNm;
	}

	public String getPrcsNm() {
		return prcsNm;
	}

	public void setPrcsNm(String prcsNm) {
		this.prcsNm = prcsNm;
	}

	public String getPstnCls() {
		return pstnCls;
	}

	public void setPstnCls(String pstnCls) {
		this.pstnCls = pstnCls;
	}

	public String getEduSbjtSeq() {
		return eduSbjtSeq;
	}

	public void setEduSbjtSeq(String eduSbjtSeq) {
		this.eduSbjtSeq = eduSbjtSeq;
	}

	public String getCmpltnYn() {
		return cmpltnYn;
	}

	public void setCmpltnYn(String cmpltnYn) {
		this.cmpltnYn = cmpltnYn;
	}

	public String getWrkPlcMgtUniqNm() {
		return wrkPlcMgtUniqNm;
	}

	public void setWrkPlcMgtUniqNm(String wrkPlcMgtUniqNm) {
		this.wrkPlcMgtUniqNm = wrkPlcMgtUniqNm;
	}

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
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

	public String getBoardImgName() {
		return boardImgName;
	}

	public void setBoardImgName(String boardImgName) {
		this.boardImgName = boardImgName;
	}

	public String getBoardImg() {
		return boardImg;
	}

	public void setBoardImg(String boardImg) {
		this.boardImg = boardImg;
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

	public int getNextContentId() {
		return nextContentId;
	}

	public void setNextContentId(int nextContentId) {
		this.nextContentId = nextContentId;
	}

	public String getNextEduSbjtNm() {
		return nextEduSbjtNm;
	}

	public void setNextEduSbjtNm(String nextEduSbjtNm) {
		this.nextEduSbjtNm = nextEduSbjtNm;
	}

	public int getPreContentId() {
		return preContentId;
	}

	public void setPreContentId(int preContentId) {
		this.preContentId = preContentId;
	}

	public String getPreEduSbjtNm() {
		return preEduSbjtNm;
	}

	public void setPreEduSbjtNm(String preEduSbjtNm) {
		this.preEduSbjtNm = preEduSbjtNm;
	}

	public String getOutEduYn() {
		return outEduYn;
	}

	public void setOutEduYn(String outEduYn) {
		this.outEduYn = outEduYn;
	}

	public String getAtchFileYn() {
		return atchFileYn;
	}

	public void setAtchFileYn(String atchFileYn) {
		this.atchFileYn = atchFileYn;
	}

	public String getEduInstNm() {
		return eduInstNm;
	}

	public void setEduInstNm(String eduInstNm) {
		this.eduInstNm = eduInstNm;
	}

	public int getCsv() {
		return csv;
	}

	public void setCsv(int csv) {
		this.csv = csv;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "KW30000U5000VO [seq=" + seq + ", rNum=" + rNum + ", cnt=" + cnt + ", contentId=" + contentId
				+ ", bzRgstNo=" + bzRgstNo + ", eduYear=" + eduYear + ", eduKnd=" + eduKnd + ", eduMth=" + eduMth
				+ ", eduSbjtNm=" + eduSbjtNm + ", eduImplStrDd=" + eduImplStrDd + ", eduImplEndDd=" + eduImplEndDd
				+ ", eduTm=" + eduTm + ", tgtPrcsNm=" + tgtPrcsNm + ", tgtPplCnt=" + tgtPplCnt + ", cmpltnPplCnt="
				+ cmpltnPplCnt + ", tchrNm=" + tchrNm + ", tchrAflt=" + tchrAflt + ", wrkPlcMgtUniqNo="
				+ wrkPlcMgtUniqNo + ", content=" + content + ", createObjectId=" + createObjectId + ", tgtPplEmpeNo="
				+ tgtPplEmpeNo + ", tgtPplNm=" + tgtPplNm + ", prcsNm=" + prcsNm + ", pstnCls=" + pstnCls
				+ ", eduSbjtSeq=" + eduSbjtSeq + ", cmpltnYn=" + cmpltnYn + ", wrkPlcMgtUniqNm=" + wrkPlcMgtUniqNm
				+ ", uploadFile=" + uploadFile + ", boardFile=" + boardFile + ", boardFileName=" + boardFileName
				+ ", boardImgName=" + boardImgName + ", boardImg=" + boardImg + ", atchFilePath=" + atchFilePath
				+ ", atchFileNm=" + atchFileNm + ", nextContentId=" + nextContentId + ", nextEduSbjtNm=" + nextEduSbjtNm
				+ ", preContentId=" + preContentId + ", preEduSbjtNm=" + preEduSbjtNm + ", outEduYn=" + outEduYn
				+ ", atchFileYn=" + atchFileYn + ", eduInstNm=" + eduInstNm + ", csv=" + csv + "]";
	}
	
}
