package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U2100Service {
	 
	//public List<KW30000U2100VO> KW30000U2100pageList(KW30000U2100VO kw30000u2100vo) throws Exception;
	
	public List<KW30000U2100VO> KW30000U2100select(SearchHndlr search) throws Exception;
	
	public int KW30000U2100selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U2100delete(KW30000U2100VO kw30000u2100vo) throws Exception;

	public int KW30000U2100insertSave(KW30000U2100VO kw30000u2100vo) throws Exception;
	
	public int KW30000U2100updateSave(KW30000U2100VO kw30000u2100vo) throws Exception;
	 
	 
}