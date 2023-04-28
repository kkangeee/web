package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U1174Service { 
	
	//public List<KW30000U1174VO> KW30000U1174pageList(KW30000U1174VO kw30000u1174vo) throws Exception;
	
	public List<KW30000U1174VO> KW30000U1174select(SearchHndlr search) throws Exception;
	
	public int KW30000U1174selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U1174delete(KW30000U1174VO kw30000u1174vo) throws Exception;

	public int KW30000U1174insertSave(KW30000U1174VO kw30000u1174vo) throws Exception;
	
	public int KW30000U1174updateSave(KW30000U1174VO kw30000u1174vo) throws Exception;
	 
	 
}
