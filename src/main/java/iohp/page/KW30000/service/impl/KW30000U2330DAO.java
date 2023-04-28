package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U2330VO;

@Repository("KW30000U2330DAO")
public class KW30000U2330DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U2330VO> KW30000U2330pageList(KW30000U2330VO
	 * kw30000u2330vo) { return selectList("kw30000u2000.page2330", kw30000u2330vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U2330VO> KW30000U2330selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u2000.page2330selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u2000.getBoardListCnt2330", search);
		}
	
	/* 삭제 */
	public int KW30000U2330delete(KW30000U2330VO kw30000u2330vo) {
		return delete("kw30000u2000.page2330delete", kw30000u2330vo);
	}
	
	/* 추가 */
	public int KW30000U2330insertSave(KW30000U2330VO kw30000u2330vo) { 
		return insert("kw30000u2000.page2330insertSave", kw30000u2330vo); 
	}

	/* 수정 */
	public int KW30000U2330updateSave(KW30000U2330VO kw30000u2330vo) { 
		return update("kw30000u2000.page2330updateSave", kw30000u2330vo); 
	}
	 
	
}
