package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U1172VO;

@Repository("KW30000U1172DAO")
public class KW30000U1172DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U1172VO> KW30000U1172pageList(KW30000U1172VO
	 * kw30000u1172vo) { return selectList("kw30000u1000.page1172", kw30000u1172vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U1172VO> KW30000U1172selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1172selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u1000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U1172delete(KW30000U1172VO kw30000u1172vo) {
		return delete("kw30000u1000.page1172delete", kw30000u1172vo);
	}
	
	/* 추가 */
	public int KW30000U1172insertSave(KW30000U1172VO kw30000u1172vo) { 
		return insert("kw30000u1000.page1172insertSave", kw30000u1172vo); 
	}

	/* 수정 */
	public int KW30000U1172updateSave(KW30000U1172VO kw30000u1172vo) { 
		return update("kw30000u1000.page1172updateSave", kw30000u1172vo); 
	}
	 
	
}
