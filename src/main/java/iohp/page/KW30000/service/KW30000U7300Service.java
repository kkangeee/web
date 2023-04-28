package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U7300Service {
	 
	//public List<KW30000U7100VO> KW30000U7300pageList(KW30000U7100VO kw30000u7100vo) throws Exception;
	
	public List<KW30000U7100VO> KW30000U7300select(SearchHndlr search) throws Exception;
	
	public int KW30000U7300selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U7300delete(KW30000U7100VO kw30000u7100vo) throws Exception;

	public int KW30000U7300insertSave(KW30000U7100VO kw30000u7100vo) throws Exception;
	
	public int KW30000U7300updateSave(KW30000U7100VO kw30000u7100vo) throws Exception;
	 
	 
}
