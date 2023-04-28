package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U2200VO;

@Repository("KW30000U2200DAO")
public class KW30000U2200DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U2200VO> KW30000U2200pageList(KW30000U2200VO
	 * kw30000u2200vo) { return selectList("kw30000u1000.page2200", kw30000u2200vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U2200VO> KW30000U2200selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u2000.page2200selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u2000.getBoardListCnt2200", search);
		}
	
	/* 삭제 */
	public int KW30000U2200delete(KW30000U2200VO kw30000u2200vo) {
		return delete("kw30000u2000.page2200delete", kw30000u2200vo);
	}
	
	/* 추가 */
	public int KW30000U2200insertSave(KW30000U2200VO kw30000u2200vo) { 
		return insert("kw30000u2000.page2200insertSave", kw30000u2200vo); 
	}

	/* 수정 */
	public int KW30000U2200updateSave(KW30000U2200VO kw30000u2200vo) { 
		return update("kw30000u2000.page2200updateSave", kw30000u2200vo); 
	}
	
	// 총 팝업 게시글 개수 확인
	public int getBoardPopListCnt(SearchHndlr search) throws Exception {
		System.out.println("dad in:::::::::::::::" + search);
		return selectOne("kw30000u2000.getBoardListCnt2200Pop", search);
	}
	
	/* 팝업 조회 */
	public List<KW30000U2200VO> KW30000U2200chkPopList(SearchHndlr search) throws Exception {
		return selectList("kw30000u2000.page2200chkPopList", search);
	}
	
}
