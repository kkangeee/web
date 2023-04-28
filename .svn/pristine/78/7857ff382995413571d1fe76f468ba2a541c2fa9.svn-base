package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U1171VO;

@Repository("KW30000U1171DAO")
public class KW30000U1171DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U1171VO> KW30000U1171pageList(KW30000U1171VO
	 * kw30000u1171vo) { return selectList("kw30000u1000.page1171", kw30000u1171vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U1171VO> KW30000U1171selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1171selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u1000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U1171delete(KW30000U1171VO kw30000u1171vo) {
		return delete("kw30000u1000.page1171delete", kw30000u1171vo);
	}
	
	/* 추가 */
	public int KW30000U1171insertSave(KW30000U1171VO kw30000u1171vo) { 
		return insert("kw30000u1000.page1171insertSave", kw30000u1171vo); 
	}

	/* 수정 */
	public int KW30000U1171updateSave(KW30000U1171VO kw30000u1171vo) { 
		return update("kw30000u1000.page1171updateSave", kw30000u1171vo); 
	}
	 
	
}
