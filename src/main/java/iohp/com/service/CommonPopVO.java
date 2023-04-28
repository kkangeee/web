package iohp.com.service;

import iohp.login.service.LoginVO;

public class CommonPopVO extends LoginVO{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1389709836826425030L;
	
	
	private String wrkPlcCd;
	private String wrkPlcNm;
	private String bzUniqNo;
	private String bzRgstNo;
	private String headNm;
	private String createTime;
	private String repFonNo;
	private String bzCoNm;
	
	public CommonPopVO() {}
	
	public CommonPopVO(String wrkPlcCd, String wrkPlcNm, String bzUniqNo, String bzRgstNo, String headNm,
			String createTime, String repFonNo, String bzCoNm) {
		this.wrkPlcCd = wrkPlcCd;
		this.wrkPlcNm = wrkPlcNm;
		this.bzUniqNo = bzUniqNo;
		this.bzRgstNo = bzRgstNo;
		this.headNm = headNm;
		this.createTime = createTime;
		this.repFonNo = repFonNo;
		this.bzCoNm = bzCoNm;
	}
	
	public String getWrkPlcCd() {
		return wrkPlcCd;
	}
	public void setWrkPlcCd(String wrkPlcCd) {
		this.wrkPlcCd = wrkPlcCd;
	}
	public String getWrkPlcNm() {
		return wrkPlcNm;
	}
	public void setWrkPlcNm(String wrkPlcNm) {
		this.wrkPlcNm = wrkPlcNm;
	}
	public String getBzUniqNo() {
		return bzUniqNo;
	}
	public void setBzUniqNo(String bzUniqNo) {
		this.bzUniqNo = bzUniqNo;
	}
	public String getBzRgstNo() {
		return bzRgstNo;
	}
	public void setBzRgstNo(String bzRgstNo) {
		this.bzRgstNo = bzRgstNo;
	}
	public String getHeadNm() {
		return headNm;
	}
	public void setHeadNm(String headNm) {
		this.headNm = headNm;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getRepFonNo() {
		return repFonNo;
	}
	public void setRepFonNo(String repFonNo) {
		this.repFonNo = repFonNo;
	}
	public String getBzCoNm() {
		return bzCoNm;
	}
	public void setBzCoNm(String bzCoNm) {
		this.bzCoNm = bzCoNm;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return "CommonPopVO [wrkPlcCd=" + wrkPlcCd + ", wrkPlcNm=" + wrkPlcNm + ", bzUniqNo=" + bzUniqNo + ", bzRgstNo="
				+ bzRgstNo + ", headNm=" + headNm + ", createTime=" + createTime + ", repFonNo=" + repFonNo
				+ ", bzCoNm=" + bzCoNm + "]";
	}
	
	
}
