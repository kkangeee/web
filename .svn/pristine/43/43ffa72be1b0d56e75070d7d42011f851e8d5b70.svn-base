package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U1130VO;

@Repository("KW30000U1130DAO")
public class KW30000U1130DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U1130VO> KW30000U1130pageList(KW30000U1130VO
	 * kw30000u1130vo) { return selectList("kw30000u1000.page1130", kw30000u1130vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U1130VO> KW30000U1130selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1130selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u1000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U1130delete(KW30000U1130VO kw30000u1130vo) {
		return delete("kw30000u1000.page1130delete", kw30000u1130vo);
	}
	
	/* 추가 */
	public int KW30000U1130insertSave(KW30000U1130VO kw30000u1130vo) { 
		return insert("kw30000u1000.page1130insertSave", kw30000u1130vo); 
	}

	/* 수정 */
	public int KW30000U1130updateSave(KW30000U1130VO kw30000u1130vo) { 
		return update("kw30000u1000.page1130updateSave", kw30000u1130vo); 
	}
	 
	
}
