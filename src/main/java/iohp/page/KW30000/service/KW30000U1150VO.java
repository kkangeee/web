package iohp.page.KW30000.service;

import java.sql.Date;

public class KW30000U1150VO {

	private String bzRgstNo; /* 사업자등록번호 */
	private int seq; /* 순번 */
	private int rnum; /* 순번 */
	private String meetDt; /* 회의일시 */
	private String meetNm; /* 회의명 */
	private String meetTp; /* 회의구분 */
	private String mntsDocRgstPos; /* 회의록등록위치 */
	private String postDocMntsDocRgstPos; /* 게시용회의록등록위치 */
	private String sgnrRgstPos; /* 서명지등록위치 */
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
	public String getMeetDt() {
		return meetDt;
	}
	public void setMeetDt(String meetDt) {
		this.meetDt = meetDt;
	}
	public String getMeetNm() {
		return meetNm;
	}
	public void setMeetNm(String meetNm) {
		this.meetNm = meetNm;
	}
	public String getMeetTp() {
		return meetTp;
	}
	public void setMeetTp(String meetTp) {
		this.meetTp = meetTp;
	}
	public String getMntsDocRgstPos() {
		return mntsDocRgstPos;
	}
	public void setMntsDocRgstPos(String mntsDocRgstPos) {
		this.mntsDocRgstPos = mntsDocRgstPos;
	}
	public String getPostDocMntsDocRgstPos() {
		return postDocMntsDocRgstPos;
	}
	public void setPostDocMntsDocRgstPos(String postDocMntsDocRgstPos) {
		this.postDocMntsDocRgstPos = postDocMntsDocRgstPos;
	}
	public String getSgnrRgstPos() {
		return sgnrRgstPos;
	}
	public void setSgnrRgstPos(String sgnrRgstPos) {
		this.sgnrRgstPos = sgnrRgstPos;
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
	public KW30000U1150VO() {
	}
	
	public KW30000U1150VO(String bzRgstNo, int seq, int rnum, String meetDt, String meetNm, String meetTp,
			String mntsDocRgstPos, String postDocMntsDocRgstPos, String sgnrRgstPos, String rmk,
			String wrkPlcMgtUniqNo) {
		this.bzRgstNo = bzRgstNo;
		this.seq = seq;
		this.rnum = rnum;
		this.meetDt = meetDt;
		this.meetNm = meetNm;
		this.meetTp = meetTp;
		this.mntsDocRgstPos = mntsDocRgstPos;
		this.postDocMntsDocRgstPos = postDocMntsDocRgstPos;
		this.sgnrRgstPos = sgnrRgstPos;
		this.rmk = rmk;
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	@Override
	public String toString() {
		return "KW30000U1150VO [bzRgstNo=" + bzRgstNo + ", seq=" + seq + ", rnum=" + rnum + ", meetDt=" + meetDt
				+ ", meetNm=" + meetNm + ", meetTp=" + meetTp + ", mntsDocRgstPos=" + mntsDocRgstPos
				+ ", postDocMntsDocRgstPos=" + postDocMntsDocRgstPos + ", sgnrRgstPos=" + sgnrRgstPos + ", rmk=" + rmk
				+ ", wrkPlcMgtUniqNo=" + wrkPlcMgtUniqNo + "]";
	}
	
	
	
	
	}
