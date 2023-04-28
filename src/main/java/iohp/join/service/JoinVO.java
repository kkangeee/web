package iohp.join.service;

public class JoinVO {

	private String bzRgstNo; /* 사업자등록번호 */
	private String mbrId; /* 회원ID */
	private String pswd; /* 비밀번호 */
	private String mbrNm; /* 회원이름 */
	private String bzCoNm; /* 사업자명 */
	private String bdt; /* 생년월일 */
	private String fonNo; /* 연락처 */
	private String gndrTp; /* 남여구분 */
	private String mbrTp; /* 회원구분 */
	private String roleAuthId; /* 역할권한ID */
	private String mbrAprvYn; /* 회원승인여부 */
	private String mbrSeq; /* 회원순번 */
	
	public JoinVO() {
	}
	
	public JoinVO(String bzRgstNo, String mbrId, String pswd, String mbrNm, String bzCoNm, String bdt, String fonNo,
			String gndrTp, String mbrTp, String roleAuthId, String mbrAprvYn, String mbrSeq) {
		this.bzRgstNo = bzRgstNo;
		this.mbrId = mbrId;
		this.pswd = pswd;
		this.mbrNm = mbrNm;
		this.bzCoNm = bzCoNm;
		this.bdt = bdt;
		this.fonNo = fonNo;
		this.gndrTp = gndrTp;
		this.mbrTp = mbrTp;
		this.roleAuthId = roleAuthId;
		this.mbrAprvYn = mbrAprvYn;
		this.mbrSeq = mbrSeq;
	}
	
	public String getBzRgstNo() {
		return bzRgstNo;
	}
	public void setBzRgstNo(String bzRgstNo) {
		this.bzRgstNo = bzRgstNo;
	}
	public String getMbrId() {
		return mbrId;
	}
	public void setMbrId(String mbrId) {
		this.mbrId = mbrId;
	}
	public String getPswd() {
		return pswd;
	}
	public void setPswd(String pswd) {
		this.pswd = pswd;
	}
	public String getMbrNm() {
		return mbrNm;
	}
	public void setMbrNm(String mbrNm) {
		this.mbrNm = mbrNm;
	}
	public String getBzCoNm() {
		return bzCoNm;
	}
	public void setBzCoNm(String bzCoNm) {
		this.bzCoNm = bzCoNm;
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
	public String getGndrTp() {
		return gndrTp;
	}
	public void setGndrTp(String gndrTp) {
		this.gndrTp = gndrTp;
	}
	public String getMbrTp() {
		return mbrTp;
	}
	public void setMbrTp(String mbrTp) {
		this.mbrTp = mbrTp;
	}
	public String getRoleAuthId() {
		return roleAuthId;
	}
	public void setRoleAuthId(String roleAuthId) {
		this.roleAuthId = roleAuthId;
	}
	public String getMbrAprvYn() {
		return mbrAprvYn;
	}
	public void setMbrAprvYn(String mbrAprvYn) {
		this.mbrAprvYn = mbrAprvYn;
	}
	public String getMbrSeq() {
		return mbrSeq;
	}
	public void setMbrSeq(String mbrSeq) {
		this.mbrSeq = mbrSeq;
	}

	@Override
	public String toString() {
		return "JoinVO [bzRgstno=" + bzRgstNo + ", mbrId=" + mbrId + ", pswd=" + pswd + ", mbrNm=" + mbrNm + ", bzCoNm="
				+ bzCoNm + ", bdt=" + bdt + ", fonNo=" + fonNo + ", gndrTp=" + gndrTp + ", mbrTp=" + mbrTp
				+ ", roleAuthId=" + roleAuthId + ", mbrAprvYn=" + mbrAprvYn + ", mbrSeq=" + mbrSeq + "]";
	}

	/*
	 * @Override public String toString() { return "CustomerVO [boardCd=" + boardCd
	 * + ", boardTitle=" + boardTitle + ", boardCont=" + boardCont + ", topNotiYn="
	 * + topNotiYn + ", useYn=" + useYn + ", regId=" + regId + ", regDt=" + regDt +
	 * ", modId=" + modId + ", modDt=" + modDt + ", boardCnt=" + boardCnt +
	 * ", boardSeq=" + boardSeq + "]"; }
	 */

//	public String toStringDefault() {
//		return ToStringBuilder.reflectionToString(this, ToStringStyle.DEFAULT_STYLE);
//	}
//
//	public String toStringJson() {
//		return ToStringBuilder.reflectionToString(this, ToStringStyle.JSON_STYLE);
//	}
//
//	public String toStringMultiline() {
//		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
//	}
//
//	public String toStringNoClass() {
//		return ToStringBuilder.reflectionToString(this, ToStringStyle.NO_CLASS_NAME_STYLE);
//	}
//
//	public String toStringNoFieldName() {
//		return ToStringBuilder.reflectionToString(this, ToStringStyle.NO_FIELD_NAMES_STYLE);
//	}
//
//	public String toStringShortPrefix() {
//		return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
//	}
//
//	public String toStringSimple() {
//		return ToStringBuilder.reflectionToString(this, ToStringStyle.SIMPLE_STYLE);
//	}

}
