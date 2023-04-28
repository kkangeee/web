package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U2320VO;

@Repository("KW30000U2320DAO")
public class KW30000U2320DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U2320VO> KW30000U2320pageList(KW30000U2320VO
	 * kw30000u2320vo) { return selectList("kw30000u2000.page2320", kw30000u2320vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U2320VO> KW30000U2320selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u2000.page2320selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u2000.getBoardListCnt2320", search);
		}
	
	/* 삭제 */
	public int KW30000U2320delete(KW30000U2320VO kw30000u2320vo) {
		return delete("kw30000u2000.page2320delete", kw30000u2320vo);
	}
	
	/* 추가 */
	public int KW30000U2320insertSave(KW30000U2320VO kw30000u2320vo) { 
		return insert("kw30000u2000.page2320insertSave", kw30000u2320vo); 
	}

	/* 수정 */
	public int KW30000U2320updateSave(KW30000U2320VO kw30000u2320vo) { 
		return update("kw30000u2000.page2320updateSave", kw30000u2320vo); 
	}
	 
	
}
