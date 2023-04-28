package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U1210Service { 
	
	//public List<kw30000_1200vo> KW30000U1210pageList(kw30000_1200vo kw30000_1200vo) throws Exception;
	
	public List<KW30000_1200VO> KW30000U1210select(SearchHndlr search) throws Exception;
	
	public int KW30000U1210selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U1210delete(KW30000_1200VO kw30000_1200vo) throws Exception;

	public int KW30000U1210insertSave(KW30000_1200VO kw30000_1200vo) throws Exception;
	
	public int KW30000U1210updateSave(KW30000_1200VO kw30000_1200vo) throws Exception;
	 
	 
}
