package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U4740VO;

@Repository("KW30000U4740DAO")
public class KW30000U4740DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U4740VO> KW30000U4740pageList(KW30000U4740VO
	 * kw30000u4740vo) { return selectList("kw30000u4000.page4740", kw30000u4740vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U4740VO> KW30000U4740selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u4000.page4740selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u4000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U4740delete(KW30000U4740VO kw30000u4740vo) {
		return delete("kw30000u4000.page4740delete", kw30000u4740vo);
	}
	
	/* 추가 */
	public int KW30000U4740insertSave(KW30000U4740VO kw30000u4740vo) { 
		return insert("kw30000u4000.page4740insertSave", kw30000u4740vo); 
	}

	/* 수정 */
	public int KW30000U4740updateSave(KW30000U4740VO kw30000u4740vo) { 
		return update("kw30000u4000.page4740updateSave", kw30000u4740vo); 
	}
	 
	
}
