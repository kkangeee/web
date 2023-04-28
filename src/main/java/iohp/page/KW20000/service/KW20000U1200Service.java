package iohp.page.KW20000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW20000U1200Service { 
	
	//public List<kw20000u1200vo> KW20000U1200pageList(kw20000u1200vo kw20000u1200vo) throws Exception;
	
	public List<KW20000U1200VO> KW20000U1200select(SearchHndlr search) throws Exception;
	
	public int KW20000U1200selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW20000U1200delete(KW20000U1200VO kw20000u1200vo) throws Exception;

	public int KW20000U1200insertSave(KW20000U1200VO kw20000u1200vo) throws Exception;
	
	public int KW20000U1200updateSave(KW20000U1200VO kw20000u1200vo) throws Exception;
	 
	 
}
