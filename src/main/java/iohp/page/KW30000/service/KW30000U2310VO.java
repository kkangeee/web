package iohp.page.KW30000.service;

public class KW30000U2310VO {  

	private String bzRgstNo; /* 사업자등록번호 */
	private int seq; /* 순번 */ 
	private int rnum; /* 순번 */ 
	private String examYyyy; /* 검진연도 */
	private String nm; /* 이름 */
	private String unitCoNm; /* 단위사업체명 */
	private String prcsNm; /* 공정명 */
	private String gndr; /* 성별 */
	private String bdt; /* 생년월일 */
	private int age; /* 연령 */ 
	private int bldPres; /* 혈압 */ 
	private int wstCrcm; /* 허리둘레 */ 
	private int bldSgar; /* 혈당 */ 
	private int totChol; /* 총콜레스트롤 */ 
	private int hdl; /* HDL */ 
	private int ldl; /* LDL */ 
	private int nf; /* 중성지방 */ 
	private String jdgTp; /* 판정구분 */
	private String wrkFflSuitYn; /* 업무수행적합여부 */
	private String wrkPlcMgtUniqNo; /* 사업장관리고유번호 */
	private String createObjectId; /* 작성자 */
	
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
	public String getExamYyyy() {
		return examYyyy;
	}
	public void setExamYyyy(String examYyyy) {
		this.examYyyy = examYyyy;
	}
	public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public String getUnitCoNm() {
		return unitCoNm;
	}
	public void setUnitCoNm(String unitCoNm) {
		this.unitCoNm = unitCoNm;
	}
	public String getPrcsNm() {
		return prcsNm;
	}
	public void setPrcsNm(String prcsNm) {
		this.prcsNm = prcsNm;
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getBldPres() {
		return bldPres;
	}
	public void setBldPres(int bldPres) {
		this.bldPres = bldPres;
	}
	public int getWstCrcm() {
		return wstCrcm;
	}
	public void setWstCrcm(int wstCrcm) {
		this.wstCrcm = wstCrcm;
	}
	public int getBldSgar() {
		return bldSgar;
	}
	public void setBldSgar(int bldSgar) {
		this.bldSgar = bldSgar;
	}
	public int getTotChol() {
		return totChol;
	}
	public void setTotChol(int totChol) {
		this.totChol = totChol;
	}
	public int getHdl() {
		return hdl;
	}
	public void setHdl(int hdl) {
		this.hdl = hdl;
	}
	public int getLdl() {
		return ldl;
	}
	public void setLdl(int ldl) {
		this.ldl = ldl;
	}
	public int getNf() {
		return nf;
	}
	public void setNf(int nf) {
		this.nf = nf;
	}
	public String getJdgTp() {
		return jdgTp;
	}
	public void setJdgTp(String jdgTp) {
		this.jdgTp = jdgTp;
	}
	public String getWrkFflSuitYn() {
		return wrkFflSuitYn;
	}
	public void setWrkFflSuitYn(String wrkFflSuitYn) {
		this.wrkFflSuitYn = wrkFflSuitYn;
	}
	public String getWrkPlcMgtUniqNo() {
		return wrkPlcMgtUniqNo;
	}
	public void setWrkPlcMgtUniqNo(String wrkPlcMgtUniqNo) {
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
	}
	public String getCreateObjectId() {
		return createObjectId;
	}
	public void setCreateObjectId(String createObjectId) {
		this.createObjectId = createObjectId;
	}
	
	public KW30000U2310VO() {
	}
	
	public KW30000U2310VO(String bzRgstNo, int seq, int rnum, String examYyyy, String nm, String unitCoNm,
			String prcsNm, String gndr, String bdt, int age, int bldPres, int wstCrcm, int bldSgar, int totChol,
			int hdl, int ldl, int nf, String jdgTp, String wrkFflSuitYn, String wrkPlcMgtUniqNo,
			String createObjectId) {
		this.bzRgstNo = bzRgstNo;
		this.seq = seq;
		this.rnum = rnum;
		this.examYyyy = examYyyy;
		this.nm = nm;
		this.unitCoNm = unitCoNm;
		this.prcsNm = prcsNm;
		this.gndr = gndr;
		this.bdt = bdt;
		this.age = age;
		this.bldPres = bldPres;
		this.wstCrcm = wstCrcm;
		this.bldSgar = bldSgar;
		this.totChol = totChol;
		this.hdl = hdl;
		this.ldl = ldl;
		this.nf = nf;
		this.jdgTp = jdgTp;
		this.wrkFflSuitYn = wrkFflSuitYn;
		this.wrkPlcMgtUniqNo = wrkPlcMgtUniqNo;
		this.createObjectId = createObjectId;
	}
	
	@Override
	public String toString() {
		return "KW30000U2310VO [bzRgstNo=" + bzRgstNo + ", seq=" + seq + ", rnum=" + rnum + ", examYyyy=" + examYyyy
				+ ", nm=" + nm + ", unitCoNm=" + unitCoNm + ", prcsNm=" + prcsNm + ", gndr=" + gndr + ", bdt=" + bdt
				+ ", age=" + age + ", bldPres=" + bldPres + ", wstCrcm=" + wstCrcm + ", bldSgar=" + bldSgar
				+ ", totChol=" + totChol + ", hdl=" + hdl + ", ldl=" + ldl + ", nf=" + nf + ", jdgTp=" + jdgTp
				+ ", wrkFflSuitYn=" + wrkFflSuitYn + ", wrkPlcMgtUniqNo=" + wrkPlcMgtUniqNo + ", createObjectId="
				+ createObjectId + "]";
	}
	
	
	
	
	}
