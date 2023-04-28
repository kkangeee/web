package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U4320VO;

@Repository("KW30000U4320DAO")
public class KW30000U4320DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U4320VO> KW30000U4320pageList(KW30000U4320VO
	 * kw30000u4320vo) { return selectList("kw30000u4000.page4320", kw30000u4320vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U4320VO> KW30000U4320selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u4000.page4320selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u4000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U4320delete(KW30000U4320VO kw30000u4320vo) {
		return delete("kw30000u4000.page4320delete", kw30000u4320vo);
	}
	
	/* 추가 */
	public int KW30000U4320insertSave(KW30000U4320VO kw30000u4320vo) { 
		return insert("kw30000u4000.page4320insertSave", kw30000u4320vo); 
	}

	/* 수정 */
	public int KW30000U4320updateSave(KW30000U4320VO kw30000u4320vo) { 
		return update("kw30000u4000.page4320updateSave", kw30000u4320vo); 
	}
	 
	
}
