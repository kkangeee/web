package iohp.page.KW20000.service;

import org.springframework.web.multipart.MultipartFile;

import iohp.login.service.LoginVO;

public class KW20000U1500VO extends LoginVO {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1232471088999606779L;
	
	/* 게시판 공통 */
	private int rNum; /* 게시글 순서 */
	private int contentId; /* 게시판 구분 코드 */
	private int parentId; /* 상위게시물아이디 */
	private int boardId; /* 게시판아이디 */
	private String title; /* 게시글 제목 */
	private String secretYn; /* 비밀글여부 */
	private String secretPw; /* 비밀글 비밀번호 */
	private String topYn; /* 상단 노출여부 */
	private String delYn; /* 삭제여부 */
	private String cnt; /* 조회수 */
	private String displayUser; /* 작성자 */
	private String regDt; /* 작성일 */
	private String content; /* 공통&댓글 게시판 내용 */
	private String cate; /* 답변분야 */
	private int nextContentId; /* 다음 글 번호 */
	private String nextTitle;  /* 다음 글 제목 */
	private int preContentId; /* 이전 글 번호 */
	private String preTitle; /* 이전 글 제목 */

	/* Q&A 게시판 */
	private String agreement; /* 개인정보 동의 체크 */
	private String answerYn; /* 답변여부 */
	private String userPhone; /* 유저 전화번호 */
	private String email; /* 이메일 */
	private String email1; /* 선택 이메일 */
	private String email2; /* 직접입력 이메일 */
	private String nameSecretYn; /* 익명 여부 */

	/* 댓글 게시판 */
	private int rplyId;        /*댓글게시판 순번*/
	private int rplyContentId; /* 부모 게시판 번호 */
	private String rplyRegDt; /* 댓글 입력날짜 */
	private String rplyUser; /* 댓글 작성자 */
	private String rplySecretPw; /* 댓글 비밀번호 */
	private String rplyContent; /* 댓글 내용 */
	private String rplysecretPw; /* 댓글 비밀번호 */
	private String rplyParentId; /*댓글 게시판 부모 구분*/

	/* 파일업로드 관련 */
	private String boardFile;      /*첨부파일 경로*/
	private String boardFileName; /* 첨부파일이름 */
	private MultipartFile uploadFile;/* 첨부파일 */
	private String boardImgName; /* 이미지이름 */
	private String videoUrl; /* 동영상링크 */
	
	public KW20000U1500VO() {}
	
	public KW20000U1500VO(int rNum, int contentId, int parentId, int boardId, String title, String secretYn,
			String secretPw, String topYn, String delYn, String cnt, String displayUser, String regDt, String content,
			String cate, int nextContentId, String nextTitle, int preContentId, String preTitle, String agreement,
			String answerYn, String userPhone, String email, String email1, String email2, String nameSecretYn,
			int rplyId, int rplyContentId, String rplyRegDt, String rplyUser, String rplySecretPw, String rplyContent,
			String rplysecretPw2, String rplyParentId, String boardFile, String boardFileName, MultipartFile uploadFile,
			String boardImgName, String videoUrl) {
		this.rNum = rNum;
		this.contentId = contentId;
		this.parentId = parentId;
		this.boardId = boardId;
		this.title = title;
		this.secretYn = secretYn;
		this.secretPw = secretPw;
		this.topYn = topYn;
		this.delYn = delYn;
		this.cnt = cnt;
		this.displayUser = displayUser;
		this.regDt = regDt;
		this.content = content;
		this.cate = cate;
		this.nextContentId = nextContentId;
		this.nextTitle = nextTitle;
		this.preContentId = preContentId;
		this.preTitle = preTitle;
		this.agreement = agreement;
		this.answerYn = answerYn;
		this.userPhone = userPhone;
		this.email = email;
		this.email1 = email1;
		this.email2 = email2;
		this.nameSecretYn = nameSecretYn;
		this.rplyId = rplyId;
		this.rplyContentId = rplyContentId;
		this.rplyRegDt = rplyRegDt;
		this.rplyUser = rplyUser;
		this.rplySecretPw = rplySecretPw;
		this.rplyContent = rplyContent;
		rplysecretPw = rplysecretPw2;
		this.rplyParentId = rplyParentId;
		this.boardFile = boardFile;
		this.boardFileName = boardFileName;
		this.uploadFile = uploadFile;
		this.boardImgName = boardImgName;
		this.videoUrl = videoUrl;
	}
	
	public int getrNum() {
		return rNum;
	}
	public void setrNum(int rNum) {
		this.rNum = rNum;
	}
	public int getContentId() {
		return contentId;
	}
	public void setContentId(int contentId) {
		this.contentId = contentId;
	}
	public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSecretYn() {
		return secretYn;
	}
	public void setSecretYn(String secretYn) {
		this.secretYn = secretYn;
	}
	public String getSecretPw() {
		return secretPw;
	}
	public void setSecretPw(String secretPw) {
		this.secretPw = secretPw;
	}
	public String getTopYn() {
		return topYn;
	}
	public void setTopYn(String topYn) {
		this.topYn = topYn;
	}
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}
	public String getCnt() {
		return cnt;
	}
	public void setCnt(String cnt) {
		this.cnt = cnt;
	}
	public String getDisplayUser() {
		return displayUser;
	}
	public void setDisplayUser(String displayUser) {
		this.displayUser = displayUser;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public int getNextContentId() {
		return nextContentId;
	}
	public void setNextContentId(int nextContentId) {
		this.nextContentId = nextContentId;
	}
	public String getNextTitle() {
		return nextTitle;
	}
	public void setNextTitle(String nextTitle) {
		this.nextTitle = nextTitle;
	}
	public int getPreContentId() {
		return preContentId;
	}
	public void setPreContentId(int preContentId) {
		this.preContentId = preContentId;
	}
	public String getPreTitle() {
		return preTitle;
	}
	public void setPreTitle(String preTitle) {
		this.preTitle = preTitle;
	}
	public String getAgreement() {
		return agreement;
	}
	public void setAgreement(String agreement) {
		this.agreement = agreement;
	}
	public String getAnswerYn() {
		return answerYn;
	}
	public void setAnswerYn(String answerYn) {
		this.answerYn = answerYn;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public String getNameSecretYn() {
		return nameSecretYn;
	}
	public void setNameSecretYn(String nameSecretYn) {
		this.nameSecretYn = nameSecretYn;
	}
	public int getRplyId() {
		return rplyId;
	}
	public void setRplyId(int rplyId) {
		this.rplyId = rplyId;
	}
	public int getRplyContentId() {
		return rplyContentId;
	}
	public void setRplyContentId(int rplyContentId) {
		this.rplyContentId = rplyContentId;
	}
	public String getRplyRegDt() {
		return rplyRegDt;
	}
	public void setRplyRegDt(String rplyRegDt) {
		this.rplyRegDt = rplyRegDt;
	}
	public String getRplyUser() {
		return rplyUser;
	}
	public void setRplyUser(String rplyUser) {
		this.rplyUser = rplyUser;
	}
	public String getRplySecretPw() {
		return rplySecretPw;
	}
	public void setRplySecretPw(String rplySecretPw) {
		this.rplySecretPw = rplySecretPw;
	}
	public String getRplyContent() {
		return rplyContent;
	}
	public void setRplyContent(String rplyContent) {
		this.rplyContent = rplyContent;
	}
	public String getRplysecretPw() {
		return rplysecretPw;
	}
	public void setRplysecretPw(String rplysecretPw) {
		this.rplysecretPw = rplysecretPw;
	}
	public String getRplyParentId() {
		return rplyParentId;
	}
	public void setRplyParentId(String rplyParentId) {
		this.rplyParentId = rplyParentId;
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
	public String getVideoUrl() {
		return videoUrl;
	}
	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return "KW20000U1500VO [rNum=" + rNum + ", contentId=" + contentId + ", parentId=" + parentId + ", boardId="
				+ boardId + ", title=" + title + ", secretYn=" + secretYn + ", secretPw=" + secretPw + ", topYn="
				+ topYn + ", delYn=" + delYn + ", cnt=" + cnt + ", displayUser=" + displayUser + ", regDt=" + regDt
				+ ", content=" + content + ", cate=" + cate + ", nextContentId=" + nextContentId + ", nextTitle="
				+ nextTitle + ", preContentId=" + preContentId + ", preTitle=" + preTitle + ", agreement=" + agreement
				+ ", answerYn=" + answerYn + ", userPhone=" + userPhone + ", email=" + email + ", email1=" + email1
				+ ", email2=" + email2 + ", nameSecretYn=" + nameSecretYn + ", rplyId=" + rplyId + ", rplyContentId="
				+ rplyContentId + ", rplyRegDt=" + rplyRegDt + ", rplyUser=" + rplyUser + ", rplySecretPw="
				+ rplySecretPw + ", rplyContent=" + rplyContent + ", rplysecretPw=" + rplysecretPw + ", rplyParentId="
				+ rplyParentId + ", boardFile=" + boardFile + ", boardFileName=" + boardFileName + ", uploadFile="
				+ uploadFile + ", boardImgName=" + boardImgName + ", videoUrl=" + videoUrl + "]";
	}
	
}
