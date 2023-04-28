package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U1220_2Service { 
	
	//public List<kw30000_1200vo> KW30000U1220_2pageList(kw30000_1200vo kw30000_1200vo) throws Exception;
	
	public List<KW30000_1200VO> KW30000U1220_2select(SearchHndlr search) throws Exception;
	
	public int KW30000U1220_2selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U1220_2delete(KW30000_1200VO kw30000_1200vo) throws Exception;

	public int KW30000U1220_2insertSave(KW30000_1200VO kw30000_1200vo) throws Exception;
	
	public int KW30000U1220_2updateSave(KW30000_1200VO kw30000_1200vo) throws Exception;
	 
	 
}
