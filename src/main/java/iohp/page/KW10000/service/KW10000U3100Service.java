package iohp.page.KW10000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW10000U3100Service { 
	
	//public List<kw10000_3100vo> KW10000U3100pageList(kw10000_3100vo kw10000_3100vo) throws Exception;
	
	public List<KW10000U3100VO> KW10000U3100select(SearchHndlr search) throws Exception;
	
	public List<KW10000U3100VO> KW10000U3100popSelect(SearchHndlr search) throws Exception;
	
	public int KW10000U3100selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW10000U3100delete(KW10000U3100VO kw10000u3100vo) throws Exception;

	public int KW10000U3100insertSave(KW10000U3100VO kw10000u3100vo) throws Exception;
	
	public int KW10000U3100updateSave(KW10000U3100VO kw10000u3100vo) throws Exception;

	List<KW10000U3100VO> KW10000U3100selectUnitCoNm(SearchHndlr search) throws Exception;

	List<KW10000U3100VO> KW10000U3100selectPrcsNm(SearchHndlr search) throws Exception;
	 
	 
}
