package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U1240VO;

@Repository("KW30000U1240DAO")
public class KW30000U1240DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U1240VO> KW30000U1240pageList(KW30000U1240VO
	 * kw30000u1240vo) { return selectList("kw30000u1000.page1240", kw30000u1240vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U1240VO> KW30000U1240selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1240selectList", search);
	}
	
	//총 게시글 개수 확인
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("kw30000u1000.getBoardListCnt", search);
	}
	
	/* 삭제 */
	public int KW30000U1240delete(KW30000U1240VO kw30000u1240vo) {
		return delete("kw30000u1000.page1240delete", kw30000u1240vo);
	}
	
	/* 추가 */
	public int KW30000U1240insertSave(KW30000U1240VO kw30000u1240vo) { 
		return insert("kw30000u1000.page1240insertSave", kw30000u1240vo); 
	}

	/* 수정 */
	public int KW30000U1240updateSave(KW30000U1240VO kw30000u1240vo) { 
		return update("kw30000u1000.page1240updateSave", kw30000u1240vo); 
	}
	 
	
}
