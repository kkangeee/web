package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U4730VO;

@Repository("KW30000U4730DAO")
public class KW30000U4730DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U4730VO> KW30000U4730pageList(KW30000U4730VO
	 * kw30000u4730vo) { return selectList("kw30000u4000.page4730", kw30000u4730vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U4730VO> KW30000U4730selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u4000.page4730selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u4000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U4730delete(KW30000U4730VO kw30000u4730vo) {
		return delete("kw30000u4000.page4730delete", kw30000u4730vo);
	}
	
	/* 추가 */
	public int KW30000U4730insertSave(KW30000U4730VO kw30000u4730vo) { 
		return insert("kw30000u4000.page4730insertSave", kw30000u4730vo); 
	}

	/* 수정 */
	public int KW30000U4730updateSave(KW30000U4730VO kw30000u4730vo) { 
		return update("kw30000u4000.page4730updateSave", kw30000u4730vo); 
	}
	 
	
}
