package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U4510Service {
	
	//public List<KW30000U4510VO> KW30000U4510pageList(KW30000U4510VO kw30000u4510vo) throws Exception;
	
	public List<KW30000U4510VO> KW30000U4510select(SearchHndlr search) throws Exception;
	
	public int KW30000U4510selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U4510delete(KW30000U4510VO kw30000u4510vo) throws Exception;

	public int KW30000U4510insertSave(KW30000U4510VO kw30000u4510vo) throws Exception;
	
	public int KW30000U4510updateSave(KW30000U4510VO kw30000u4510vo) throws Exception;
	 
	 
}
