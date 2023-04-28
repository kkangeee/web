package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U4740Service {
	
	//public List<KW30000U4740VO> KW30000U4740pageList(KW30000U4740VO kw30000u4740vo) throws Exception;
	
	public List<KW30000U4740VO> KW30000U4740select(SearchHndlr search) throws Exception;
	
	public int KW30000U4740selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U4740delete(KW30000U4740VO kw30000u4740vo) throws Exception;

	public int KW30000U4740insertSave(KW30000U4740VO kw30000u4740vo) throws Exception;
	
	public int KW30000U4740updateSave(KW30000U4740VO kw30000u4740vo) throws Exception;
	 
	 
}
