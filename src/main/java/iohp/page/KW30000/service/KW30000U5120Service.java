package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U5120Service {
	
	public List<KW30000U5000VO> KW30000U5120select(SearchHndlr search) throws Exception;
	
	public int KW30000U5120selectCnt(SearchHndlr search) throws Exception;  
}
