package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U1174VO;

@Repository("KW30000U1174DAO")
public class KW30000U1174DAO extends EgovComAbstractDAO { 
	
	/* 조회 */
	/*
	 * public List<KW30000U1174VO> KW30000U1174pageList(KW30000U1174VO
	 * kw30000u1174vo) { return selectList("kw30000u1000.page1174", kw30000u1174vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U1174VO> KW30000U1174selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1174selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u1000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U1174delete(KW30000U1174VO kw30000u1174vo) {
		return delete("kw30000u1000.page1174delete", kw30000u1174vo);
	}
	
	/* 추가 */
	public int KW30000U1174insertSave(KW30000U1174VO kw30000u1174vo) { 
		return insert("kw30000u1000.page1174insertSave", kw30000u1174vo); 
	}

	/* 수정 */
	public int KW30000U1174updateSave(KW30000U1174VO kw30000u1174vo) { 
		return update("kw30000u1000.page1174updateSave", kw30000u1174vo); 
	}
	 
	
}
