package iohp.page.KW30000.service;

import org.springframework.web.multipart.MultipartFile;

import iohp.login.service.LoginVO;

public class KW30000U4800VO extends LoginVO {

	private static final long serialVersionUID = 7521448603289277547L;
	private String bzRgstNo; /* 사업자등록번호 */
	private int seq; /* 순번 */
	private int rnum; /* 페이지 순번 */
	private String tgtPplNm; /* 대상자이름 */
	private String dept; /* 부서 */
	private String pstnCls; /* 직급 */
	private String eduStrDd; /* 교육개시일자 */
	private String eduEndDd; /* 교육종료일자 */
	private String wrkPlcMgtUniqNo; /* 사업장관리고유번호 */
	private String atchFilePath; /* 첨부파일경로 */
	private String atchFileNm; /* 첨부파일이름 */
	
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
	public String getTgtPplNm() {
		return tgtPplNm;
	}
	public void setTgtPplNm(String tgtPplNm) {
		this.tgtPplNm = tgtPplNm;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getPstnCls() {
		return pstnCls;
	}
	public void setPstnCls(String pstnCls) {
		this.pstnCls = pstnCls;
	}
	public String getEduStrDd() {
		return eduStrDd;
	}
	public void setEduStrDd(String eduStrDd) {
		this.eduStrDd = eduStrDd;
	}
	public String getEduEndDd() {
		return eduEndDd;
	}
	public void setEduEndDd(String eduEndDd) {
		this.eduEndDd = eduEndDd;
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public KW30000U4800VO() {
	}
	
	public KW30000U4800VO(String bzRgstNo, int seq, int rnum, String tgtPplNm, String dept, String pstnCls,
			String eduStrDd, String eduEndDd, String wrkPlcMgtUniqNo, String atchFilePath, String atchFileNm) {
		this.bzRgstNo = bzRgstNo;
		this.seq = seq;
		this.rnum = rnum;
		this.tgtPplNm = tgtPplNm;
		this.dept = dept;
		this.pstnCls = pstnCls;
		this.eduStrDd = eduStrDd;
		this.eduEndDd = eduEndDd;
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
		this.atchFilePath = atchFilePath;
		this.atchFileNm = atchFileNm;
	}
	
	@Override
	public String toString() {
		return "KW30000U4800VO [bzRgstNo=" + bzRgstNo + ", seq=" + seq + ", rnum=" + rnum + ", tgtPplNm=" + tgtPplNm
				+ ", dept=" + dept + ", pstnCls=" + pstnCls + ", eduStrDd=" + eduStrDd + ", eduEndDd=" + eduEndDd
				+ ", wrkPlcMgtUniqNo=" + wrkPlcMgtUniqNo + ", atchFilePath=" + atchFilePath + ", atchFileNm="
				+ atchFileNm + "]";
	}
	
	
	
	
	

	

}
