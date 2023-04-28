package iohp.page.KW30000.service;

import java.sql.Date;

public class KW30000U1171VO {

	private String bzRgstNo; /* 사업자등록번호 */
	private int seq; /* 순번 */
	private int rnum; /* 순번 */
	private String medcnNm; /* 의약품명 */ 
	private String use; /* 용도 */
	private String rcptDd; /* 입고일자 */
	private int rcptQty; /* 입고수량 */
	private int useQnty; /* 사용량 */
	private int stckQnty; /* 재고량 */
	private String uom; /* 단위 */
	private String vlidTermStrDd; /* 유효기간시작일자 */
	private String vlidTermEndDd; /* 유효기간종료일자 */
	private String duseDd; /*  폐기일자 */
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
	public String getMedcnNm() {
		return medcnNm;
	}
	public void setMedcnNm(String medcnNm) {
		this.medcnNm = medcnNm;
	}
	public String getUse() {
		return use;
	}
	public void setUse(String use) {
		this.use = use;
	}
	public String getRcptDd() {
		return rcptDd;
	}
	public void setRcptDd(String rcptDd) {
		this.rcptDd = rcptDd;
	}
	public int getRcptQty() {
		return rcptQty;
	}
	public void setRcptQty(int rcptQty) {
		this.rcptQty = rcptQty;
	}
	public int getUseQnty() {
		return useQnty;
	}
	public void setUseQnty(int useQnty) {
		this.useQnty = useQnty;
	}
	public int getStckQnty() {
		return stckQnty;
	}
	public void setStckQnty(int stckQnty) {
		this.stckQnty = stckQnty;
	}
	public String getUom() {
		return uom;
	}
	public void setUom(String uom) {
		this.uom = uom;
	}
	public String getVlidTermStrDd() {
		return vlidTermStrDd;
	}
	public void setVlidTermStrDd(String vlidTermStrDd) {
		this.vlidTermStrDd = vlidTermStrDd;
	}
	public String getVlidTermEndDd() {
		return vlidTermEndDd;
	}
	public void setVlidTermEndDd(String vlidTermEndDd) {
		this.vlidTermEndDd = vlidTermEndDd;
	}
	public String getDuseDd() {
		return duseDd;
	}
	public void setDuseDd(String duseDd) {
		this.duseDd = duseDd;
	}
	public String getWrkPlcMgtUniqNo() {
		return wrkPlcMgtUniqNo;
	}
	public void setWrkPlcMgtUniqNo(String wrkPlcMgtUniqNo) {
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	
	public KW30000U1171VO() {
	}
	public KW30000U1171VO(String bzRgstNo, int seq, int rnum, String medcnNm, String use, String rcptDd, int rcptQty,
			int useQnty, int stckQnty, String uom, String vlidTermStrDd, String vlidTermEndDd, String duseDd,
			String wrkPlcMgtUniqNo) {
		this.bzRgstNo = bzRgstNo;
		this.seq = seq;
		this.rnum = rnum;
		this.medcnNm = medcnNm;
		this.use = use;
		this.rcptDd = rcptDd;
		this.rcptQty = rcptQty;
		this.useQnty = useQnty;
		this.stckQnty = stckQnty;
		this.uom = uom;
		this.vlidTermStrDd = vlidTermStrDd;
		this.vlidTermEndDd = vlidTermEndDd;
		this.duseDd = duseDd;
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	@Override
	public String toString() {
		return "KW30000U1171VO [bzRgstNo=" + bzRgstNo + ", seq=" + seq + ", rnum=" + rnum + ", medcnNm=" + medcnNm
				+ ", use=" + use + ", rcptDd=" + rcptDd + ", rcptQty=" + rcptQty + ", useQnty=" + useQnty
				+ ", stckQnty=" + stckQnty + ", uom=" + uom + ", vlidTermStrDd=" + vlidTermStrDd + ", vlidTermEndDd="
				+ vlidTermEndDd + ", duseDd=" + duseDd + ", wrkPlcMgtUniqNo=" + wrkPlcMgtUniqNo + "]";
	}
	
	

	
	}
