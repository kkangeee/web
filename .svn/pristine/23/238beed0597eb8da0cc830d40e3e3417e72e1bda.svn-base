package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U1140VO;

@Repository("KW30000U1140DAO")
public class KW30000U1140DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U1140VO> KW30000U1140pageList(KW30000U1140VO
	 * kw30000u1140vo) { return selectList("kw30000u1000.page1140", kw30000u1140vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U1140VO> KW30000U1140selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1140selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u1000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U1140delete(KW30000U1140VO kw30000u1140vo) {
		return delete("kw30000u1000.page1140delete", kw30000u1140vo);
	}
	
	/* 추가 */
	public int KW30000U1140insertSave(KW30000U1140VO kw30000u1140vo) { 
		return insert("kw30000u1000.page1140insertSave", kw30000u1140vo); 
	}

	/* 수정 */
	public int KW30000U1140updateSave(KW30000U1140VO kw30000u1140vo) { 
		return update("kw30000u1000.page1140updateSave", kw30000u1140vo); 
	}
	 
	
}
