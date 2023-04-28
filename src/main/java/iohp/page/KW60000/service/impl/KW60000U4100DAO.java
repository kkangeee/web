package iohp.page.KW60000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW60000.service.KW60000VO;

 
@Repository("KW60000U4100DAO")
public class KW60000U4100DAO extends EgovComAbstractDAO {
	
	public List<KW60000VO> selectkw60000U4100List(SearchHndlr search) throws Exception {
		return selectList("KW60000U4100.selectKW60000U4100List", search);
	}
	
	public KW60000VO kw60000U4100View(int contentId) {
		return selectOne("KW60000U4100.KW60000U4100View", contentId);
	}
														
	public void kw60000U4100Insert(KW60000VO kw60000U4100VO) {		
		insert("KW60000U4100.KW60000U4100Insert", kw60000U4100VO);
	}
	
	public KW60000VO kw60000U4100UpdateForm(int contentId) {
		return selectOne("KW60000U4100.KW60000U4100UpdateForm", contentId);
	}
	
	public void kw60000U4100Update(KW60000VO kw60000U4100VO) {
		update("KW60000U4100.KW60000U4100Update", kw60000U4100VO);
	}
	
	public void kw60000U4100Delete(int contentId) {
		delete("KW60000U4100.KW60000U4100Delete", contentId);
	}
	
	//총 게시글 개수 확인
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("KW60000U4100.getBoardListCnt", search);
	}
	
	//조회수 증가
	public void cntUpdate(int contentId) {	
		update("KW60000U4100.cntUpdate", contentId);
	}
	
	
	
}
