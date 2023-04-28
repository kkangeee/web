package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U4610VO;

@Repository("KW30000U4610DAO")
public class KW30000U4610DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U4610VO> KW30000U4610pageList(KW30000U4610VO
	 * kw30000u4610vo) { return selectList("kw30000u4000.page4610", kw30000u4610vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U4610VO> KW30000U4610selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u4000.page4610selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u4000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U4610delete(KW30000U4610VO kw30000u4610vo) {
		return delete("kw30000u4000.page4610delete", kw30000u4610vo);
	}
	
	/* 추가 */
	public int KW30000U4610insertSave(KW30000U4610VO kw30000u4610vo) { 
		return insert("kw30000u4000.page4610insertSave", kw30000u4610vo); 
	}

	/* 수정 */
	public int KW30000U4610updateSave(KW30000U4610VO kw30000u4610vo) { 
		return update("kw30000u4000.page4610updateSave", kw30000u4610vo); 
	}
	 
	
}
