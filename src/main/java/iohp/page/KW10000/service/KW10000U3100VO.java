package iohp.page.KW10000.service;

import iohp.login.service.LoginVO;

public class KW10000U3100VO extends LoginVO {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8040788742927845797L;
	
	private int rnum;			/**/
	private int seq;            /**/
	private String bzRgstNo;  /*사업자등록번호*/
	private String empeNo;    /*사번*/
	private String nm;      /*이름*/
	private String gndr;   /*성별*/
	private String bdt;   /*생년월일*/
	private String fonNo;	/*전화번호*/
	private String prcsNm;/*공정명*/
	private String unitCoNm; /*단위사업체명*/
	private String roleNm;	/*역할명*/
	private String empForm;	/*고용형태*/
	private String srvForm;	/*근무형태*/
	private String trsfInDd;	/*등록일*/
	private String endDd;	/*종료일*/
	
	private String roleCd;	/*역할코드*/
	private String prcsCd;	/*공정코드*/
	/*목록 받아 오기*/					
	private String searchUnitCoNm; /*단위사업체*/
	private String searchPrcsNm; /*공정명*/
	
	public KW10000U3100VO() {}
	
	public KW10000U3100VO(int rnum, int seq, String bzRgstNo, String empeNo, String nm, String gndr, String bdt,
			String fonNo, String prcsNm, String unitCoNm, String roleNm, String empForm, String srvForm,
			String trsfInDd, String endDd, String roleCd, String prcsCd, String searchUnitCoNm, String searchPrcsNm) {
		this.rnum = rnum;
		this.seq = seq;
		this.bzRgstNo = bzRgstNo;
		this.empeNo = empeNo;
		this.nm = nm;
		this.gndr = gndr;
		this.bdt = bdt;
		this.fonNo = fonNo;
		this.prcsNm = prcsNm;
		this.unitCoNm = unitCoNm;
		this.roleNm = roleNm;
		this.empForm = empForm;
		this.srvForm = srvForm;
		this.trsfInDd = trsfInDd;
		this.endDd = endDd;
		this.roleCd = roleCd;
		this.prcsCd = prcsCd;
		this.searchUnitCoNm = searchUnitCoNm;
		this.searchPrcsNm = searchPrcsNm;
	}

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

	public String getEmpeNo() {
		return empeNo;
	}

	public void setEmpeNo(String empeNo) {
		this.empeNo = empeNo;
	}

	public String getNm() {
		return nm;
	}

	public void setNm(String nm) {
		this.nm = nm;
	}

	public String getGndr() {
		return gndr;
	}

	public void setGndr(String gndr) {
		this.gndr = gndr;
	}

	public String getBdt() {
		return bdt;
	}

	public void setBdt(String bdt) {
		this.bdt = bdt;
	}

	public String getFonNo() {
		return fonNo;
	}

	public void setFonNo(String fonNo) {
		this.fonNo = fonNo;
	}

	public String getPrcsNm() {
		return prcsNm;
	}

	public void setPrcsNm(String prcsNm) {
		this.prcsNm = prcsNm;
	}

	public String getUnitCoNm() {
		return unitCoNm;
	}

	public void setUnitCoNm(String unitCoNm) {
		this.unitCoNm = unitCoNm;
	}

	public String getRoleNm() {
		return roleNm;
	}

	public void setRoleNm(String roleNm) {
		this.roleNm = roleNm;
	}

	public String getEmpForm() {
		return empForm;
	}

	public void setEmpForm(String empForm) {
		this.empForm = empForm;
	}

	public String getSrvForm() {
		return srvForm;
	}

	public void setSrvForm(String srvForm) {
		this.srvForm = srvForm;
	}

	public String getTrsfInDd() {
		return trsfInDd;
	}

	public void setTrsfInDd(String trsfInDd) {
		this.trsfInDd = trsfInDd;
	}

	public String getEndDd() {
		return endDd;
	}

	public void setEndDd(String endDd) {
		this.endDd = endDd;
	}

	public String getRoleCd() {
		return roleCd;
	}

	public void setRoleCd(String roleCd) {
		this.roleCd = roleCd;
	}

	public String getPrcsCd() {
		return prcsCd;
	}

	public void setPrcsCd(String prcsCd) {
		this.prcsCd = prcsCd;
	}

	public String getSearchUnitCoNm() {
		return searchUnitCoNm;
	}

	public void setSearchUnitCoNm(String searchUnitCoNm) {
		this.searchUnitCoNm = searchUnitCoNm;
	}

	public String getSearchPrcsNm() {
		return searchPrcsNm;
	}

	public void setSearchPrcsNm(String searchPrcsNm) {
		this.searchPrcsNm = searchPrcsNm;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "KW10000U3100VO [rnum=" + rnum + ", seq=" + seq + ", bzRgstNo=" + bzRgstNo + ", empeNo=" + empeNo
				+ ", nm=" + nm + ", gndr=" + gndr + ", bdt=" + bdt + ", fonNo=" + fonNo + ", prcsNm=" + prcsNm
				+ ", unitCoNm=" + unitCoNm + ", roleNm=" + roleNm + ", empForm=" + empForm + ", srvForm=" + srvForm
				+ ", trsfInDd=" + trsfInDd + ", endDd=" + endDd + ", roleCd=" + roleCd + ", prcsCd=" + prcsCd
				+ ", searchUnitCoNm=" + searchUnitCoNm + ", searchPrcsNm=" + searchPrcsNm + "]";
	}
	
}
