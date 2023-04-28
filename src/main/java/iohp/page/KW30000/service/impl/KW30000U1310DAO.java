package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U1310VO;

@Repository("KW30000U1310DAO")
public class KW30000U1310DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U1310VO> KW30000U1310pageList(KW30000U1310VO
	 * kw30000u1310vo) { return selectList("kw30000u1000.page1310", kw30000u1310vo);
	 * }
	 */ 
	
	/* 조회 */
	public List<KW30000U1310VO> KW30000U1310selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1310selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u1000.getBoardListCnt1310", search);
		}
	
	/* 삭제 */
	public int KW30000U1310delete(KW30000U1310VO kw30000u1310vo) {
		return delete("kw30000u1000.page1310delete", kw30000u1310vo);
	}
	
	/* 추가 */
	public int KW30000U1310insertSave(KW30000U1310VO kw30000u1310vo) { 
		return insert("kw30000u1000.page1310insertSave", kw30000u1310vo); 
	}

	/* 수정 */
	public int KW30000U1310updateSave(KW30000U1310VO kw30000u1310vo) { 
		return update("kw30000u1000.page1310updateSave", kw30000u1310vo); 
	}
	 
	
}
