package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U2310VO;

@Repository("KW30000U2310DAO")
public class KW30000U2310DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U2310VO> KW30000U2310pageList(KW30000U2310VO
	 * kw30000u2310vo) { return selectList("kw30000u2000.page2310", kw30000u2310vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U2310VO> KW30000U2310selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u2000.page2310selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u2000.getBoardListCnt2310", search);
		}
	
	/* 삭제 */
	public int KW30000U2310delete(KW30000U2310VO kw30000u2310vo) {
		return delete("kw30000u2000.page2310delete", kw30000u2310vo);
	}
	
	/* 추가 */
	public int KW30000U2310insertSave(KW30000U2310VO kw30000u2310vo) { 
		return insert("kw30000u2000.page2310insertSave", kw30000u2310vo); 
	}

	/* 수정 */
	public int KW30000U2310updateSave(KW30000U2310VO kw30000u2310vo) { 
		return update("kw30000u2000.page2310updateSave", kw30000u2310vo); 
	}
	 
	
}
