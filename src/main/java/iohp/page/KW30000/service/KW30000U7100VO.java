package iohp.page.KW30000.service;

import org.springframework.web.multipart.MultipartFile;

public class KW30000U7100VO {

	private int rnum; /* 페이지 순번 */
	private int seq; /* 게시물아이디 */
	private int boardId; /* 게시판아이디 */
	private String bzRgstNo; /* 사업자등록번호 */
	private int cnt; /* 조회수 */
	private String subConEntrpNm; /* 하도급업체명 */
	private String ttl; /* 제목 */
	private String implDt; /* 회의실시일자 */
	private String wrtrNm; /* 작성자이름 */
	private String wrkPlcMgtUniqNo; /* 사업장관리고유번호 */
	private String content; /* 컨텐츠 */
	private String boardFileName; /* 첨부파일이름 */
	private String boardFile; /* 첨부파일 경로 */
	private MultipartFile uploadFile;/* 첨부파일 */
	private String boardImgName;  /* 이미지이름 */
	private String boardImg;  /* 이미지 경로*/
	private String createTimestamp;  /* 작성시간 */
	
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
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getBzRgstNo() {
		return bzRgstNo;
	}
	public void setBzRgstNo(String bzRgstNo) {
		this.bzRgstNo = bzRgstNo;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getSubConEntrpNm() {
		return subConEntrpNm;
	}
	public void setSubConEntrpNm(String subConEntrpNm) {
		this.subConEntrpNm = subConEntrpNm;
	}
	public String getTtl() {
		return ttl;
	}
	public void setTtl(String ttl) {
		this.ttl = ttl;
	}
	public String getImplDt() {
		return implDt;
	}
	public void setImplDt(String implDt) {
		this.implDt = implDt;
	}
	public String getWrtrNm() {
		return wrtrNm;
	}
	public void setWrtrNm(String wrtrNm) {
		this.wrtrNm = wrtrNm;
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
	public String getCreateTimestamp() {
		return createTimestamp;
	}
	public void setCreateTimestamp(String createTimestamp) {
		this.createTimestamp = createTimestamp;
	}
	
	public KW30000U7100VO() {
	}
	
	public KW30000U7100VO(int rnum, int seq, int boardId, String bzRgstNo, int cnt, String subConEntrpNm,
			String ttl, String implDt, String wrtrNm, String wrkPlcMgtUniqNo, String content, String boardFileName,
			String boardFile, MultipartFile uploadFile, String boardImgName, String boardImg, String createTimestamp) {
		this.rnum = rnum;
		this.seq = seq;
		this.boardId = boardId;
		this.bzRgstNo = bzRgstNo;
		this.cnt = cnt;
		this.subConEntrpNm = subConEntrpNm;
		this.ttl = ttl;
		this.implDt = implDt;
		this.wrtrNm = wrtrNm;
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
		this.content = content;
		this.boardFileName = boardFileName;
		this.boardFile = boardFile;
		this.uploadFile = uploadFile;
		this.boardImgName = boardImgName;
		this.boardImg = boardImg;
		this.createTimestamp = createTimestamp;
	}
	
	@Override
	public String toString() {
		return "KW30000U7100VO [rnum=" + rnum + ", seq=" + seq + ", boardId=" + boardId + ", bzRgstNo="
				+ bzRgstNo + ", cnt=" + cnt + ", subConEntrpNm=" + subConEntrpNm + ", ttl=" + ttl + ", implDt=" + implDt
				+ ", wrtrNm=" + wrtrNm + ", wrkPlcMgtUniqNo=" + wrkPlcMgtUniqNo + ", content=" + content
				+ ", boardFileName=" + boardFileName + ", boardFile=" + boardFile + ", uploadFile=" + uploadFile
				+ ", boardImgName=" + boardImgName + ", boardImg=" + boardImg + ", createTimestamp=" + createTimestamp
				+ "]";
	}
	
	
	

	
	
}
