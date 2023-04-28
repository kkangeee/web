package iohp.page.KW20000.service.impl;


import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.page.KW20000.service.KW20000U1500VO;

@Repository("KW20000U1500DAO")
public class KW20000U1500DAO extends EgovComAbstractDAO {

	public List<KW20000U1500VO> kw20000u1500selectList(SearchHndlr search) throws Exception {
		return selectList("kw20000u1500.kw20000u1500selectList", search);
	}
	
	public KW20000U1500VO kw20000u1500View(int contentId) {
		return selectOne("kw20000u1500.kw20000u1500View", contentId);
	}
														
	public void kw20000u1500Insert(KW20000U1500VO kw20000u1500VO) {		
		insert("kw20000u1500.kw20000u1500Insert", kw20000u1500VO);
	}
	
	public KW20000U1500VO kw20000u1500UpdateForm(int contentId) {
		return selectOne("kw20000u1500.kw20000u1500UpdateForm", contentId);
	}
	
	public void kw20000u1500Update(KW20000U1500VO kw20000u1500VO) {
		update("kw20000u1500.kw20000u1500Update", kw20000u1500VO);
	}
	
	public void kw20000u1500Delete(int contentId) {
		delete("kw20000u1500.kw20000u1500Delete", contentId);
	}
	
	//총 게시글 개수 확인
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("kw20000u1500.getBoardListCnt", search);
	}
	
	//조회수 증가
	public void cntUpdate(int contentId) {	
		update("kw20000u1500.cntUpdate", contentId);
	}
	

}
