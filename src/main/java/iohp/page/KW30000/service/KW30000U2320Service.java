package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U2320Service { 
	
	//public List<kw30000u2320vo> KW30000U2320pageList(kw30000u2320vo kw30000u2320vo) throws Exception;
	
	public List<KW30000U2320VO> KW30000U2320select(SearchHndlr search) throws Exception;
	
	public int KW30000U2320selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U2320delete(KW30000U2320VO kw30000u2320vo) throws Exception;

	public int KW30000U2320insertSave(KW30000U2320VO kw30000u2320vo) throws Exception;
	
	public int KW30000U2320updateSave(KW30000U2320VO kw30000u2320vo) throws Exception;
	 
	 
}
