package iohp.page.KW20000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW20000.service.KW20000U1200VO;

@Repository("KW20000U1200DAO")
public class KW20000U1200DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW20000U1200VO> KW20000U1200pageList(KW20000U1200VO
	 * kw20000u1200vo) { return selectList("kw20000u2000.page1200", kw20000u1200vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW20000U1200VO> KW20000U1200selectList(SearchHndlr search) throws Exception {
		return selectList("kw20000u1000.page1200selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw20000u1000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW20000U1200delete(KW20000U1200VO kw20000u1200vo) {
		return delete("kw20000u1000.page1200delete", kw20000u1200vo);
	}
	
	/* 추가 */
	public int KW20000U1200insertSave(KW20000U1200VO kw20000u1200vo) { 
		return insert("kw20000u1000.page1200insertSave", kw20000u1200vo); 
	}

	/* 수정 */
	public int KW20000U1200updateSave(KW20000U1200VO kw20000u1200vo) { 
		return update("kw20000u1000.page1200updateSave", kw20000u1200vo); 
	}
	 
	
}
