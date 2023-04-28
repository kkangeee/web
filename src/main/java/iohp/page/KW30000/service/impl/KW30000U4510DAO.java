package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U4510VO;

@Repository("KW30000U4510DAO")
public class KW30000U4510DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U4510VO> KW30000U4510pageList(KW30000U4510VO
	 * kw30000u4510vo) { return selectList("kw30000u4000.page4510", kw30000u4510vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U4510VO> KW30000U4510selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u4000.page4510selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u4000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U4510delete(KW30000U4510VO kw30000u4510vo) {
		return delete("kw30000u4000.page4510delete", kw30000u4510vo);
	}
	
	/* 추가 */
	public int KW30000U4510insertSave(KW30000U4510VO kw30000u4510vo) { 
		return insert("kw30000u4000.page4510insertSave", kw30000u4510vo); 
	}

	/* 수정 */
	public int KW30000U4510updateSave(KW30000U4510VO kw30000u4510vo) { 
		return update("kw30000u4000.page4510updateSave", kw30000u4510vo); 
	}
	 
	
}
