package iohp.page.KW30000.service.impl;

import java.util.List; 

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000_1200VO;

@Repository("KW30000U1220_2DAO")
public class KW30000U1220_2DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<kw30000_1200vo> KW30000U1220_2pageList(kw30000_1200vo
	 * kw30000_1200vo) { return selectList("kw30000u1000.page1220_2", kw30000_1200vo);
	 * }
	 */
	
	/* 조회 */
	public List<KW30000_1200VO> KW30000U1220_2selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.pageSelectList", search);
	}
	
	//총 게시글 개수 확인
	public int getBoardListCnt(SearchHndlr search) throws Exception {
		return selectOne("kw30000u1000.getBoardListCnt", search);
	}
	
	/* 삭제 */
	public int KW30000U1220_2delete(KW30000_1200VO kw30000_1200vo) {
		return delete("kw30000u1000.pageDelete", kw30000_1200vo);
	}
	
	/* 추가 */
	public int KW30000U1220_2insertSave(KW30000_1200VO kw30000_1200vo) { 
		return insert("kw30000u1000.pageInsertSave", kw30000_1200vo); 
	}

	/* 수정 */
	public int KW30000U1220_2updateSave(KW30000_1200VO kw30000_1200vo) { 
		return update("kw30000u1000.pageUpdateSave", kw30000_1200vo); 
	}
	 
	
}
