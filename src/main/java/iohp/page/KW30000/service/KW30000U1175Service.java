package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U1175Service { 
	
	//public List<KW30000U1175VO> KW30000U1175pageList(KW30000U1175VO kw30000u1175vo) throws Exception;
	
	public List<KW30000U1175VO> KW30000U1175select(SearchHndlr search) throws Exception;
	
	public int KW30000U1175selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U1175delete(KW30000U1175VO kw30000u1175vo) throws Exception;

	public int KW30000U1175insertSave(KW30000U1175VO kw30000u1175vo) throws Exception;
	
	public int KW30000U1175updateSave(KW30000U1175VO kw30000u1175vo) throws Exception;
	 
	 
}
