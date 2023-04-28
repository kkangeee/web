package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U4220VO;

@Repository("KW30000U4220DAO")
public class KW30000U4220DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U4220VO> KW30000U4220pageList(KW30000U4220VO
	 * kw30000u4220vo) { return selectList("kw30000u4000.page4220", kw30000u4220vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U4220VO> KW30000U4220selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u4000.page4220selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u4000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U4220delete(KW30000U4220VO kw30000u4220vo) {
		return delete("kw30000u4000.page4220delete", kw30000u4220vo);
	}
	
	/* 추가 */
	public int KW30000U4220insertSave(KW30000U4220VO kw30000u4220vo) { 
		return insert("kw30000u4000.page4220insertSave", kw30000u4220vo); 
	}

	/* 수정 */
	public int KW30000U4220updateSave(KW30000U4220VO kw30000u4220vo) { 
		return update("kw30000u4000.page4220updateSave", kw30000u4220vo); 
	}
	 
	
}
