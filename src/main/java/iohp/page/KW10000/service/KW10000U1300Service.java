package iohp.page.KW10000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW10000U1300Service { 
	
	//public List<kw10000_1300vo> KW10000U1300pageList(kw10000_1300vo kw10000_1300vo) throws Exception;
	
	public List<KW10000U1300VO> KW10000U1300select(SearchHndlr search) throws Exception;
	
	public int KW10000U1300selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW10000U1300delete(KW10000U1300VO kw10000u1300vo) throws Exception;

	public int KW10000U1300insertSave(KW10000U1300VO kw10000u1300vo) throws Exception;
	
	public int KW10000U1300updateSave(KW10000U1300VO kw10000u1300vo) throws Exception;
	 
	 
}
