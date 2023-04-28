package iohp.page.KW60000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.page.KW60000.service.KW60000VO;

 
@Repository("KW60000U5100DAO")
public class KW60000U5100DAO extends EgovComAbstractDAO {
	
	public List<KW60000VO> selectkw60000U5100List(SearchHndlr search) throws Exception {
		return selectList("KW60000U5100.selectKW60000U5100List", search);
	}
	
	public KW60000VO kw60000U5100View(int contentId) {
		return selectOne("KW60000U5100.KW60000U5100View", contentId);
	}
														
	public void kw60000U5100Insert(KW60000VO kw60000U5100VO) {		
		insert("KW60000U5100.KW60000U5100Insert", kw60000U5100VO);
	}
	
	public KW60000VO kw60000U5100UpdateForm(int contentId) {
		return selectOne("KW60000U5100.KW60000U5100UpdateForm", contentId);
	}
	
	public void kw60000U5100Update(KW60000VO kw60000U5100VO) {
		update("KW60000U5100.KW60000U5100Update", kw60000U5100VO);
	}
	
	public void kw60000U5100Delete(int contentId) {
		delete("KW60000U5100.KW60000U5100Delete", contentId);
	}
	
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("KW60000U5100.getBoardListCnt", search);
	}

	public void cntUpdate(int contentId) {	
		update("KW60000U5100.cntUpdate", contentId);
	}
	
	
	
}
