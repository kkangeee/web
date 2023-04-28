package iohp.page.KW20000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW20000U1300Service { 
	
	//public List<kw20000u1300vo> KW20000U1300pageList(kw20000u1300vo kw20000u1300vo) throws Exception;
	
	public List<KW20000U1300VO> KW20000U1300select(SearchHndlr search) throws Exception;
	
	public int KW20000U1300selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW20000U1300delete(KW20000U1300VO kw20000u1300vo) throws Exception;

	public int KW20000U1300insertSave(KW20000U1300VO kw20000u1300vo) throws Exception;
	
	public int KW20000U1300updateSave(KW20000U1300VO kw20000u1300vo) throws Exception;
	 
	 
}
