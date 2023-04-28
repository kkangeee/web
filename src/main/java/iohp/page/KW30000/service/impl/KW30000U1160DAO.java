package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U1160VO;

@Repository("KW30000U1160DAO")
public class KW30000U1160DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U1160VO> KW30000U1160pageList(KW30000U1160VO
	 * kw30000u1160vo) { return selectList("kw30000u1000.page1160", kw30000u1160vo);
	 * }
	 */ 
	
	/* 조회 */
	public List<KW30000U1160VO> KW30000U1160selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1160selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u1000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U1160delete(KW30000U1160VO kw30000u1160vo) {
		return delete("kw30000u1000.page1160delete", kw30000u1160vo);
	}
	
	/* 추가 */
	public int KW30000U1160insertSave(KW30000U1160VO kw30000u1160vo) { 
		return insert("kw30000u1000.page1160insertSave", kw30000u1160vo); 
	}

	/* 수정 */
	public int KW30000U1160updateSave(KW30000U1160VO kw30000u1160vo) { 
		return update("kw30000u1000.page1160updateSave", kw30000u1160vo); 
	}
	 
	
}
