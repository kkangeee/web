package iohp.page.KW90000.service;

import java.util.List;
import java.util.Map;

import egovframework.com.cmm.SearchHndlr;
import iohp.login.service.LoginVO;
import iohp.page.KW30000.service.KW30000U1110VO;

public interface KW90000U6100Service {
	 
	//public List<KW90000U1100VO> KW90000U1100pageList(KW90000U1100VO kw90000u1100vo) throws Exception;
	
	public List<LoginVO> KW90000U6100select(SearchHndlr search) throws Exception;
	
	public int KW90000U6100selectCnt(SearchHndlr search) throws Exception;  
	
	public List<LoginVO> KW90000U6100infoList(SearchHndlr search) throws Exception;
	
	public int KW90000U6100updateSave(LoginVO loginVo) throws Exception;
	
}
