package iohp.page.KW20000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.page.KW20000.service.KW20000U1300VO;

@Repository("KW20000U1300DAO")
public class KW20000U1300DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW20000U1300VO> KW20000U1300pageList(KW20000U1300VO
	 * kw20000u1300vo) { return selectList("kw20000u1000.page1300", kw20000u1300vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW20000U1300VO> KW20000U1300selectList(SearchHndlr search) throws Exception {
		return selectList("kw20000u1000.page1300selectList", search);
	}
	
	//총 게시글 개수 확인
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("kw20000u1000.getBoardListCnt", search);
	}
	
	/* 삭제 */
	public int KW20000U1300delete(KW20000U1300VO kw20000u1300vo) {
		return delete("kw20000u1000.page1300delete", kw20000u1300vo);
	}
	
	/* 추가 */
	public int KW20000U1300insertSave(KW20000U1300VO kw20000u1300vo) { 
		return insert("kw20000u1000.page1300insertSave", kw20000u1300vo); 
	}

	/* 수정 */
	public int KW20000U1300updateSave(KW20000U1300VO kw20000u1300vo) { 
		return update("kw20000u1000.page1300updateSave", kw20000u1300vo); 
	}
	 
	
}
