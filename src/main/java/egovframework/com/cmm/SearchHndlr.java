package egovframework.com.cmm;

public class SearchHndlr extends Criteria {

	private String searchType;
	private String keyword;
	private String plnLrgClss;
	private String plnMidClss;
	private String plnSmlClss;
	private String tableNm;
	private String contentType;
	private int rplyCount;
	
	private String comSearchVal1;
	private String comSearchVal2;
	private String comSearchVal3;
	
	/*넘겨줄값*/
	private String searchBzRgstNo;
	private String searchMbrId;
	
	/*검색 조건*/
	/*comboBox*/
	private String comSearchValA;
	private String comSearchValB;
	private String comSearchValC;
	private String comSearchValD;
	private String MgtNo;
	
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getPlnLrgClss() {
		return plnLrgClss;
	}
	public void setPlnLrgClss(String plnLrgClss) {
		this.plnLrgClss = plnLrgClss;
	}
	public String getPlnMidClss() {
		return plnMidClss;
	}
	public void setPlnMidClss(String plnMidClss) {
		this.plnMidClss = plnMidClss;
	}
	public String getPlnSmlClss() {
		return plnSmlClss;
	}
	public void setPlnSmlClss(String plnSmlClss) {
		this.plnSmlClss = plnSmlClss;
	}
	public String getTableNm() {
		return tableNm;
	}
	public void setTableNm(String tableNm) {
		this.tableNm = tableNm;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public int getRplyCount() {
		return rplyCount;
	}
	public void setRplyCount(int rplyCount) {
		this.rplyCount = rplyCount;
	}
	public String getComSearchVal1() {
		return comSearchVal1;
	}
	public void setComSearchVal1(String comSearchVal1) {
		this.comSearchVal1 = comSearchVal1;
	}
	public String getComSearchVal2() {
		return comSearchVal2;
	}
	public void setComSearchVal2(String comSearchVal2) {
		this.comSearchVal2 = comSearchVal2;
	}
	public String getComSearchVal3() {
		return comSearchVal3;
	}
	public void setComSearchVal3(String comSearchVal3) {
		this.comSearchVal3 = comSearchVal3;
	}
	public String getSearchBzRgstNo() {
		return searchBzRgstNo;
	}
	public void setSearchBzRgstNo(String searchBzRgstNo) {
		this.searchBzRgstNo = searchBzRgstNo;
	}
	public String getMbrId() {
		return searchMbrId;
	}
	public void setSearchMbrId(String searchMbrId) {
		this.searchMbrId = searchMbrId;
	}	
	public String getComSearchValA() {
		return comSearchValA;
	}
	public void setComSearchValA(String comSearchValA) {
		this.comSearchValA = comSearchValA;
	}
	public String getComSearchValB() {
		return comSearchValB;
	}
	public void setComSearchValB(String comSearchValB) {
		this.comSearchValB = comSearchValB;
	}
	public String getComSearchValC() {
		return comSearchValC;
	}
	public void setComSearchValC(String comSearchValC) {
		this.comSearchValC = comSearchValC;
	}
	public String getComSearchValD() {
		return comSearchValD;
	}
	public void setComSearchValD(String comSearchValD) {
		this.comSearchValD = comSearchValD;
	}
	public String getMgtNo() {
		return MgtNo;
	}
	public void setMgtNo(String mgtNo) {
		this.MgtNo = mgtNo;
	}
	
	public SearchHndlr() {
	}
	
	public SearchHndlr(String searchType, String keyword, String plnLrgClss, String plnMidClss, String plnSmlClss,
			String tableNm, String contentType, int rplyCount, String comSearchVal1, String comSearchVal2,
			String comSearchVal3, String searchBzRgstNo, String searchMbrId, String comSearchValA, String comSearchValB,
			String comSearchValC, String comSearchValD, String mgtNo) {
		this.searchType = searchType;
		this.keyword = keyword;
		this.plnLrgClss = plnLrgClss;
		this.plnMidClss = plnMidClss;
		this.plnSmlClss = plnSmlClss;
		this.tableNm = tableNm;
		this.contentType = contentType;
		this.rplyCount = rplyCount;
		this.comSearchVal1 = comSearchVal1;
		this.comSearchVal2 = comSearchVal2;
		this.comSearchVal3 = comSearchVal3;
		this.searchBzRgstNo = searchBzRgstNo;
		this.searchMbrId = searchMbrId;
		this.comSearchValA = comSearchValA;
		this.comSearchValB = comSearchValB;
		this.comSearchValC = comSearchValC;
		this.comSearchValD = comSearchValD;
		this.MgtNo = mgtNo;
	}
	
	@Override
	public String toString() {
		return "SearchHndlr [searchType=" + searchType + ", keyword=" + keyword + ", plnLrgClss=" + plnLrgClss
				+ ", plnMidClss=" + plnMidClss + ", plnSmlClss=" + plnSmlClss + ", tableNm=" + tableNm
				+ ", contentType=" + contentType + ", rplyCount=" + rplyCount + ", comSearchVal1=" + comSearchVal1
				+ ", comSearchVal2=" + comSearchVal2 + ", comSearchVal3=" + comSearchVal3 + ", searchBzRgstNo="
				+ searchBzRgstNo + ", searchMbrId=" + searchMbrId + ", comSearchValA=" + comSearchValA + ", comSearchValB=" + comSearchValB
				+ ", comSearchValC=" + comSearchValC + ", comSearchValD=" + comSearchValD + ", MgtNo=" + MgtNo + "]";
	}
	
	
	
}
