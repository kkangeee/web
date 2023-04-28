package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U6300VO;

@Repository("KW30000U6300DAO")
public class KW30000U6300DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U6300VO> KW30000U6300pageList(KW30000U6300VO
	 * kw30000u6300vo) { return selectList("kw30000u1000.page6300", kw30000u6300vo);
	 * }
	 */ 
	
	/* 조회 */
	public List<KW30000U6300VO> KW30000U6300selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u6000.page6300selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u6000.getBoardListCnt6300", search);
		}
	
	/* 삭제 */
	public int KW30000U6300delete(KW30000U6300VO kw30000u6300vo) {
		return delete("kw30000u6000.page6300delete", kw30000u6300vo);
	}
	
	/* 추가 */
	public int KW30000U6300insertSave(KW30000U6300VO kw30000u6300vo) { 
		return insert("kw30000u6000.page6300insertSave", kw30000u6300vo); 
	}

	/* 수정 */
	public int KW30000U6300updateSave(KW30000U6300VO kw30000u6300vo) { 
		return update("kw30000u6000.page6300updateSave", kw30000u6300vo); 
	}
	 
	
}
