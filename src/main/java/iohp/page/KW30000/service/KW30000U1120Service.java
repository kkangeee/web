package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U1120Service {
	
	//public List<KW30000U1120VO> KW30000U1120pageList(KW30000U1120VO kw30000u1120vo) throws Exception;
	
	public List<KW30000U1120VO> KW30000U1120select(SearchHndlr search) throws Exception;
	
	public int KW30000U1120selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW30000U1120delete(KW30000U1120VO kw30000u1120vo) throws Exception;

	public int KW30000U1120insertSave(KW30000U1120VO kw30000u1120vo) throws Exception;
	
	public int KW30000U1120updateSave(KW30000U1120VO kw30000u1120vo) throws Exception;
	 
	 
}
