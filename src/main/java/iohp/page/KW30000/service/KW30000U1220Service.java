package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U1220Service { 
	
	//public List<kw30000_1200vo> KW30000U1220pageList(kw30000_1200vo kw30000_1200vo) throws Exception;
	
	public List<KW30000_1200VO> KW30000U1220select(SearchHndlr search) throws Exception;
	
	public int KW30000U1220selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U1220delete(KW30000_1200VO kw30000_1200vo) throws Exception;

	public int KW30000U1220insertSave(KW30000_1200VO kw30000_1200vo) throws Exception;
	
	public int KW30000U1220updateSave(KW30000_1200VO kw30000_1200vo) throws Exception;
	 
	 
}
