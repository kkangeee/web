package iohp.page.KW10000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW10000U2100Service { 
	
	//public List<kw10000_2100vo> KW10000U2100pageList(kw10000_2100vo kw10000_2100vo) throws Exception;
	
	public List<KW10000U2100VO> KW10000U2100select(SearchHndlr search) throws Exception;
	
	public List<KW10000U2100VO> KW10000U2100popSelect(SearchHndlr search) throws Exception;
	
	public List<KW10000U2100VO> KW10000U2100UnitCoNm(SearchHndlr search) throws Exception;
	
	public List<KW10000U2100VO> KW10000U2100PrcsNm(SearchHndlr search) throws Exception;
	
	public int KW10000U2100selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW10000U2100delete(KW10000U2100VO kw10000u2100vo) throws Exception;

	public int KW10000U2100insertSave(KW10000U2100VO kw10000u2100vo) throws Exception;
	
	public int KW10000U2100updateSave(KW10000U2100VO kw10000u2100vo) throws Exception;
	 
	 
}
