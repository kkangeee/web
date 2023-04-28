package iohp.page.KW30000.service;

import org.springframework.web.multipart.MultipartFile;

public class KW30000U6300VO {

	private int rnum; /* 페이지 순번 */
	private int seq; /* 게시물아이디 */
	private String bzRgstNo; /* 사업자등록번호 */
	private String strDd; /* 시작일자 */
	private String chrgPrsnNm; /* 담당자이름 */
	private int oneTmsTgtTm; /* 1배목표시간 */
	private int oneTmsTgtDays; /* 1배목표일수 */
	private String oneTmsAchvExpctnDd; /* 1배달성예상일자 */
	private String title; /* 서식명 */
	private int cnt; /* 조회수 */
	private String prcsNm; /* 공정명 */  
	private String boardFileName; /* 첨부파일이름 */
	private String boardFile; /* 첨부파일 경로 */
	private MultipartFile uploadFile;/* 첨부파일 */
	private String wrkPlcMgtUniqNo; /* 사업장관리고유번호 */
	private String createTimestamp;  /* 작성시간 */
	private String createObjectId;  /* 작성자 id */
	
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getBzRgstNo() {
		return bzRgstNo;
	}
	public void setBzRgstNo(String bzRgstNo) {
		this.bzRgstNo = bzRgstNo;
	}
	public String getStrDd() {
		return strDd;
	}
	public void setStrDd(String strDd) {
		this.strDd = strDd;
	}
	public String getChrgPrsnNm() {
		return chrgPrsnNm;
	}
	public void setChrgPrsnNm(String chrgPrsnNm) {
		this.chrgPrsnNm = chrgPrsnNm;
	}
	public int getOneTmsTgtTm() {
		return oneTmsTgtTm;
	}
	public void setOneTmsTgtTm(int oneTmsTgtTm) {
		this.oneTmsTgtTm = oneTmsTgtTm;
	}
	public int getOneTmsTgtDays() {
		return oneTmsTgtDays;
	}
	public void setOneTmsTgtDays(int oneTmsTgtDays) {
		this.oneTmsTgtDays = oneTmsTgtDays;
	}
	public String getOneTmsAchvExpctnDd() {
		return oneTmsAchvExpctnDd;
	}
	public void setOneTmsAchvExpctnDd(String oneTmsAchvExpctnDd) {
		this.oneTmsAchvExpctnDd = oneTmsAchvExpctnDd;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getPrcsNm() {
		return prcsNm;
	}
	public void setPrcsNm(String prcsNm) {
		this.prcsNm = prcsNm;
	}
	public String getBoardFileName() {
		return boardFileName;
	}
	public void setBoardFileName(String boardFileName) {
		this.boardFileName = boardFileName;
	}
	public String getBoardFile() {
		return boardFile;
	}
	public void setBoardFile(String boardFile) {
		this.boardFile = boardFile;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public String getWrkPlcMgtUniqNo() {
		return wrkPlcMgtUniqNo;
	}
	public void setWrkPlcMgtUniqNo(String wrkPlcMgtUniqNo) {
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	public String getCreateTimestamp() {
		return createTimestamp;
	}
	public void setCreateTimestamp(String createTimestamp) {
		this.createTimestamp = createTimestamp;
	}
	public String getCreateObjectId() {
		return createObjectId;
	}
	public void setCreateObjectId(String createObjectId) {
		this.createObjectId = createObjectId;
	}
	
	public KW30000U6300VO() {
	}
	
	public KW30000U6300VO(int rnum, int seq, String bzRgstNo, String strDd, String chrgPrsnNm, int oneTmsTgtTm,
			int oneTmsTgtDays, String oneTmsAchvExpctnDd, String title, int cnt, String prcsNm, String boardFileName,
			String boardFile, MultipartFile uploadFile, String wrkPlcMgtUniqNo, String createTimestamp,
			String createObjectId) {
		this.rnum = rnum;
		this.seq = seq;
		this.bzRgstNo = bzRgstNo;
		this.strDd = strDd;
		this.chrgPrsnNm = chrgPrsnNm;
		this.oneTmsTgtTm = oneTmsTgtTm;
		this.oneTmsTgtDays = oneTmsTgtDays;
		this.oneTmsAchvExpctnDd = oneTmsAchvExpctnDd;
		this.title = title;
		this.cnt = cnt;
		this.prcsNm = prcsNm;
		this.boardFileName = boardFileName;
		this.boardFile = boardFile;
		this.uploadFile = uploadFile;
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
		this.createTimestamp = createTimestamp;
		this.createObjectId = createObjectId;
	}
	
	@Override
	public String toString() {
		return "KW30000U6300VO [rnum=" + rnum + ", seq=" + seq + ", bzRgstNo=" + bzRgstNo + ", strDd="
				+ strDd + ", chrgPrsnNm=" + chrgPrsnNm + ", oneTmsTgtTm=" + oneTmsTgtTm + ", oneTmsTgtDays="
				+ oneTmsTgtDays + ", oneTmsAchvExpctnDd=" + oneTmsAchvExpctnDd + ", title=" + title + ", cnt=" + cnt
				+ ", prcsNm=" + prcsNm + ", boardFileName=" + boardFileName + ", boardFile=" + boardFile
				+ ", uploadFile=" + uploadFile + ", wrkPlcMgtUniqNo=" + wrkPlcMgtUniqNo + ", createTimestamp="
				+ createTimestamp + ", createObjectId=" + createObjectId + "]";
	}
	

	
	

}
