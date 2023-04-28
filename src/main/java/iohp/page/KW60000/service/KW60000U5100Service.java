package iohp.page.KW60000.service;

import java.util.List;

import egovframework.com.cmm.SearchHndlr;

public interface KW60000U5100Service {

	KW60000VO kw60000U5100View(int contentId) throws Exception;

	void kw60000U5100Insert(KW60000VO kw60000u5100vo) throws Exception;

	KW60000VO kw60000U5100UpdateForm(int contentId) throws Exception;

	void kw60000U5100Update(KW60000VO kw60000u5100vo) throws Exception;

	void kw60000U5100Delete(int contentId) throws Exception;

	int getBoardListCnt(SearchHndlr search) throws Exception;

	List<KW60000VO> selectList(SearchHndlr search) throws Exception;
	
}
