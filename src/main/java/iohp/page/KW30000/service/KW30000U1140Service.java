package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U1140Service {
	
	//public List<KW30000U1140VO> KW30000U1140pageList(KW30000U1140VO kw30000u1140vo) throws Exception;
	
	public List<KW30000U1140VO> KW30000U1140select(SearchHndlr search) throws Exception;
	
	public int KW30000U1140selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U1140delete(KW30000U1140VO kw30000u1140vo) throws Exception;

	public int KW30000U1140insertSave(KW30000U1140VO kw30000u1140vo) throws Exception;
	
	public int KW30000U1140updateSave(KW30000U1140VO kw30000u1140vo) throws Exception;
	 
	 
}
