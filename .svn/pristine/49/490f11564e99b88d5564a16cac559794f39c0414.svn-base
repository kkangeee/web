package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U1150VO;

@Repository("KW30000U1150DAO")
public class KW30000U1150DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U1150VO> KW30000U1150pageList(KW30000U1150VO
	 * kw30000u1150vo) { return selectList("kw30000u1000.page1150", kw30000u1150vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000U1150VO> KW30000U1150selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1150selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u1000.getBoardListCnt", search);
		}
	
	/* 삭제 */
	public int KW30000U1150delete(KW30000U1150VO kw30000u1150vo) {
		return delete("kw30000u1000.page1150delete", kw30000u1150vo);
	}
	
	/* 추가 */
	public int KW30000U1150insertSave(KW30000U1150VO kw30000u1150vo) { 
		return insert("kw30000u1000.page1150insertSave", kw30000u1150vo); 
	}

	/* 수정 */
	public int KW30000U1150updateSave(KW30000U1150VO kw30000u1150vo) { 
		return update("kw30000u1000.page1150updateSave", kw30000u1150vo); 
	}
	 
	
}
