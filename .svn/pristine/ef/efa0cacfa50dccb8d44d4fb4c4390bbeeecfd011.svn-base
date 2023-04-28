package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U4800VO;

@Repository("KW30000U4800DAO")
public class KW30000U4800DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U4800VO> KW30000U4800pageList(KW30000U4800VO
	 * kw30000u4800vo) { return selectList("kw30000u4000.page4800", kw30000u4800vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U4800VO> KW30000U4800selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u4000.page4800selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u4000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U4800delete(KW30000U4800VO kw30000u4800vo) {
		return delete("kw30000u4000.page4800delete", kw30000u4800vo);
	}
	
	/* 추가 */
	public int KW30000U4800insertSave(KW30000U4800VO kw30000u4800vo) { 
		return insert("kw30000u4000.page4800insertSave", kw30000u4800vo); 
	}

	/* 수정 */
	public int KW30000U4800updateSave(KW30000U4800VO kw30000u4800vo) { 
		return update("kw30000u4000.page4800updateSave", kw30000u4800vo); 
	}
	 
	
}
