package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U2310Service { 
	
	//public List<kw30000u2310vo> KW30000U2310pageList(kw30000u2310vo kw30000u2310vo) throws Exception;
	
	public List<KW30000U2310VO> KW30000U2310select(SearchHndlr search) throws Exception;
	
	public int KW30000U2310selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U2310delete(KW30000U2310VO kw30000u2310vo) throws Exception;

	public int KW30000U2310insertSave(KW30000U2310VO kw30000u2310vo) throws Exception;
	
	public int KW30000U2310updateSave(KW30000U2310VO kw30000u2310vo) throws Exception;
	 
	 
}
