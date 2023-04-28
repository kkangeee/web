package iohp.page.KW20000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

/*
 * 경고표지 관리
 */
public interface KW20000U1500Service {

	public List<KW20000U1500VO> kw20000u1500selectList(SearchHndlr search) throws Exception;    
	public int getBoardListCnt(SearchHndlr search) throws Exception;             					
	public KW20000U1500VO kw20000u1500View(int contentId) throws Exception;                
	public void kw20000u1500Insert(KW20000U1500VO kw20000u1500VO) throws Exception;              
	public KW20000U1500VO kw20000u1500UpdateForm(int contentId) throws Exception;            
	public void kw20000u1500Update(KW20000U1500VO kw20000u1500VO) throws Exception;             
	public void kw20000u1500Delete(int contentId) throws Exception;                      
							
}
