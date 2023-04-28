package iohp.page.KW90000.service;

import java.util.List;
import java.util.Map;

import egovframework.com.cmm.SearchHndlr;

public interface KW90000U1100Service {
	 
	//public List<KW90000U1100VO> KW90000U1100pageList(KW90000U1100VO kw90000u1100vo) throws Exception;
	
	public List<KW90000U1100VO> KW90000U1100select(SearchHndlr search) throws Exception;
	
	public int KW90000U1100selectCnt(SearchHndlr search) throws Exception;  
	
	public int KW90000U1100delete(KW90000U1100VO kw90000u1100vo) throws Exception;

	public int KW90000U1100insertSave(KW90000U1100VO kw90000u1100vo) throws Exception;
	
	public int KW90000U1100updateSave(KW90000U1100VO kw90000u1100vo) throws Exception;
	 
	public List<Map<String, Object>> codeMngList(SearchHndlr search) throws Exception;
	 
}
