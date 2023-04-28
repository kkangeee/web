package iohp.page.KW30000.service;

import java.sql.Date;
 
public class KW30000U1160VO {

	private String bzRgstNo; /* 사업자등록번호 */ 
	private int seq; /* 순번 */
	private int rnum; /* 순번 */
	private String frstSysTp; /* 응급체계구분 */
	private String instNm; /* 기관명 */
	private String location; /* 소재지 */
	private int mvngDstnc; /* 이동거리 */
	private int reqmnTmMm; /* 소요시간분 */
	private String frctCanYn; /* 골절가능여부 */
	private String adctCanYn; /* 중독가능여부 */
	private String burnCanYn; /* 화상가능여부 */
	private String chemMtrlCanYn; /* 화학물질가능여부 */
	private String othrCanYn; /* 기타가능여부 */
	private String fonNo; /* 연락처 */
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
	public String getFrstSysTp() {
		return frstSysTp;
	}
	public void setFrstSysTp(String frstSysTp) {
		this.frstSysTp = frstSysTp;
	}
	public String getInstNm() {
		return instNm;
	}
	public void setInstNm(String instNm) {
		this.instNm = instNm;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getMvngDstnc() {
		return mvngDstnc;
	}
	public void setMvngDstnc(int mvngDstnc) {
		this.mvngDstnc = mvngDstnc;
	}
	public int getReqmnTmMm() {
		return reqmnTmMm;
	}
	public void setReqmnTmMm(int reqmnTmMm) {
		this.reqmnTmMm = reqmnTmMm;
	}
	public String getFrctCanYn() {
		return frctCanYn;
	}
	public void setFrctCanYn(String frctCanYn) {
		this.frctCanYn = frctCanYn;
	}
	public String getAdctCanYn() {
		return adctCanYn;
	}
	public void setAdctCanYn(String adctCanYn) {
		this.adctCanYn = adctCanYn;
	}
	public String getburnCanYn() {
		return burnCanYn;
	}
	public void setburnCanYn(String burnCanYn) {
		this.burnCanYn = burnCanYn;
	}
	public String getChemMtrlCanYn() {
		return chemMtrlCanYn;
	}
	public void setChemMtrlCanYn(String chemMtrlCanYn) {
		this.chemMtrlCanYn = chemMtrlCanYn;
	}
	public String getOthrCanYn() {
		return othrCanYn;
	}
	public void setOthrCanYn(String othrCanYn) {
		this.othrCanYn = othrCanYn;
	}
	public String getFonNo() {
		return fonNo;
	}
	public void setFonNo(String fonNo) {
		this.fonNo = fonNo;
	}
	public String getWrkPlcMgtUniqNo() {
		return wrkPlcMgtUniqNo;
	}
	public void setWrkPlcMgtUniqNo(String wrkPlcMgtUniqNo) {
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	
	public KW30000U1160VO() {
	}
	
	public KW30000U1160VO(String bzRgstNo, int seq, int rnum, String frstSysTp, String instNm, String location,
			int mvngDstnc, int reqmnTmMm, String frctCanYn, String adctCanYn, String burnCanYn, String chemMtrlCanYn,
			String othrCanYn, String fonNo, String wrkPlcMgtUniqNo) {
		this.bzRgstNo = bzRgstNo;
		this.seq = seq;
		this.rnum = rnum;
		this.frstSysTp = frstSysTp;
		this.instNm = instNm;
		this.location = location;
		this.mvngDstnc = mvngDstnc;
		this.reqmnTmMm = reqmnTmMm;
		this.frctCanYn = frctCanYn;
		this.adctCanYn = adctCanYn;
		this.burnCanYn = burnCanYn;
		this.chemMtrlCanYn = chemMtrlCanYn;
		this.othrCanYn = othrCanYn;
		this.fonNo = fonNo;
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	
	@Override
	public String toString() {
		return "KW30000U1160VO [bzRgstNo=" + bzRgstNo + ", seq=" + seq + ", rnum=" + rnum + ", frstSysTp=" + frstSysTp
				+ ", instNm=" + instNm + ", location=" + location + ", mvngDstnc=" + mvngDstnc + ", reqmnTmMm="
				+ reqmnTmMm + ", frctCanYn=" + frctCanYn + ", adctCanYn=" + adctCanYn + ", burnCanYn=" + burnCanYn
				+ ", chemMtrlCanYn=" + chemMtrlCanYn + ", othrCanYn=" + othrCanYn + ", fonNo=" + fonNo
				+ ", wrkPlcMgtUniqNo=" + wrkPlcMgtUniqNo + "]";
	}
	
	

	
	
	}
