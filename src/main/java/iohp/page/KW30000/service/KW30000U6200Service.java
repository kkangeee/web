package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U6200Service {
	 
	//public List<KW30000U6100VO> KW30000U6200pageList(KW30000U6100VO kw30000u6100vo) throws Exception;
	
	public List<KW30000U6100VO> KW30000U6200select(SearchHndlr search) throws Exception;
	
	public int KW30000U6200selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U6200delete(KW30000U6100VO kw30000u6100vo) throws Exception;

	public int KW30000U6200insertSave(KW30000U6100VO kw30000u6100vo) throws Exception;
	
	public int KW30000U6200updateSave(KW30000U6100VO kw30000u6100vo) throws Exception;
	 
	 
}
