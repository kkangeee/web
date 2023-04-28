package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.page.KW30000.service.KW30000U1310VO;

@Repository("KW30000U5400DAO")
public class KW30000U5400DAO extends EgovComAbstractDAO {
	
	
	/* 조회 */
	public List<KW30000U1310VO> KW30000U5400selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u5000.page5400selectList", search);
	}
	
	public KW30000U1310VO kw30000U5400View(int contentId) {
		return selectOne("kw30000u5000.KW30000U5400View", contentId);
	}
														
	public void kw30000U5400Insert(KW30000U1310VO kw30000U1310VO) {		
		insert("kw30000u5000.KW30000U5400Insert", kw30000U1310VO);
	}
	
	public KW30000U1310VO kw30000U5400UpdateForm(int contentId) {
		return selectOne("kw30000u5000.KW30000U5400UpdateForm", contentId);
	}
	
	public void kw30000U5400Update(KW30000U1310VO kw30000U1310VO) {
		update("kw30000u5000.KW30000U5400Update", kw30000U1310VO);
	}
	
	public void kw30000U5400Delete(int contentId) {
		delete("kw30000u5000.KW30000U5400Delete", contentId);
	}
	
	//총 게시글 개수 확인
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("kw30000u5000.getBoardListCnt5400", search);
	}
	
	//조회수 증가
	public void cntUpdate(int contentId) {	
		update("kw30000u5000.cntUpdate5400", contentId);
	}
	 
	
}




