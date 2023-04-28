package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U4610Service {
	
	//public List<KW30000U4610VO> KW30000U4610pageList(KW30000U4610VO kw30000u4610vo) throws Exception;
	
	public List<KW30000U4610VO> KW30000U4610select(SearchHndlr search) throws Exception;
	
	public int KW30000U4610selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U4610delete(KW30000U4610VO kw30000u4610vo) throws Exception;

	public int KW30000U4610insertSave(KW30000U4610VO kw30000u4610vo) throws Exception;
	
	public int KW30000U4610updateSave(KW30000U4610VO kw30000u4610vo) throws Exception;
	 
	 
}
