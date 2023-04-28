package iohp.page.KW30000.service;

import java.util.List;
import java.util.Map;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U1110Service {
	
	//public List<KW30000U1110VO> KW30000U1110pageList(KW30000U1110VO kw30000u1110vo) throws Exception;
	
	public List<KW30000U1110VO> KW30000U1110select(SearchHndlr search) throws Exception;
	
	public int KW30000U1110selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U1110delete(KW30000U1110VO kw30000u1110vo) throws Exception;

	public int KW30000U1110insertSave(KW30000U1110VO kw30000u1110vo) throws Exception;
	
	public int KW30000U1110updateSave(KW30000U1110VO kw30000u1110vo) throws Exception;
	
	public List<KW30000U1110VO> KW30000U1110popSelect(SearchHndlr search) throws Exception;
	
	public List<KW30000U1110VO> KW30000U1110upsert(KW30000U1110VO kw30000u1110vo) throws Exception;
	
	public List<KW30000U1110VO> KW30000U1110CertiPopSelect(SearchHndlr search) throws Exception;
	 
}
