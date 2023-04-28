package iohp.page.KW10000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW10000U1200Service {
	
	/**
	 * 기본정보관리 사업장정비
	 * 
	 * @param KW10000U1200VO
	 * @return List<KW10000U1200VO> 	 	
	*/
	
	public List<KW10000U1200VO> KW10000U1200List(SearchHndlr search) throws Exception;

	public int KW10000U1200selectCnt(SearchHndlr search) throws Exception;          
	
}