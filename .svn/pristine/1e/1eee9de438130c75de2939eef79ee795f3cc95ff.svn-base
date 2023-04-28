package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U1175VO;

@Repository("KW30000U1175DAO")
public class KW30000U1175DAO extends EgovComAbstractDAO { 
	
	/* 조회 */
	/*
	 * public List<KW30000U1175VO> KW30000U1175pageList(KW30000U1175VO
	 * kw30000u1175vo) { return selectList("kw30000u1000.page1175", kw30000u1175vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U1175VO> KW30000U1175selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1175selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u1000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U1175delete(KW30000U1175VO kw30000u1175vo) {
		return delete("kw30000u1000.page1175delete", kw30000u1175vo);
	}
	
	/* 추가 */
	public int KW30000U1175insertSave(KW30000U1175VO kw30000u1175vo) { 
		return insert("kw30000u1000.page1175insertSave", kw30000u1175vo); 
	}

	/* 수정 */
	public int KW30000U1175updateSave(KW30000U1175VO kw30000u1175vo) { 
		return update("kw30000u1000.page1175updateSave", kw30000u1175vo); 
	}
	 
	
}
