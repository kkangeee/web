package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U1150Service {
	
	//public List<KW30000U1150VO> KW30000U1150pageList(KW30000U1150VO kw30000u1150vo) throws Exception;
	
	public List<KW30000U1150VO> KW30000U1150select(SearchHndlr search) throws Exception;
	
	public int KW30000U1150selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U1150delete(KW30000U1150VO kw30000u1150vo) throws Exception;

	public int KW30000U1150insertSave(KW30000U1150VO kw30000u1150vo) throws Exception;
	
	public int KW30000U1150updateSave(KW30000U1150VO kw30000u1150vo) throws Exception;
	 
	 
}
