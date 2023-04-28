package iohp.page.KW30000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW30000U5200Service {
	
	public List<KW30000U5000VO> KW30000U5200select(SearchHndlr search) throws Exception;
	
	public int KW30000U5200selectCnt(SearchHndlr search) throws Exception;
	
	public int KW30000U5200delete(KW30000U5000VO kw30000u5200vo) throws Exception;

	public int KW30000U5200insertSave(KW30000U5000VO kw30000u5200vo) throws Exception;
	
	public int KW30000U5200updateSave(KW30000U5000VO kw30000u5200vo) throws Exception;
	
	public void KW30000U5200btnYn(KW30000U5000VO kw30000u5200vo) throws Exception;
}
