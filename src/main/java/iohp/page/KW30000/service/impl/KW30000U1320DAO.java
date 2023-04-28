package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U1310VO;

@Repository("KW30000U1320DAO")
public class KW30000U1320DAO extends EgovComAbstractDAO {
	
	
	/* 조회 */
	public List<KW30000U1310VO> KW30000U1320selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u1000.page1320selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u1000.getBoardListCnt1320", search);
		}
	
	/* 삭제 */
	public int KW30000U1320delete(KW30000U1310VO kw30000u1310vo) {
		return delete("kw30000u1000.page1320delete", kw30000u1310vo);
	}
	
	/* 추가 */
	public int KW30000U1320insertSave(KW30000U1310VO kw30000u1310vo) { 
		return insert("kw30000u1000.page1320insertSave", kw30000u1310vo); 
	}

	/* 수정 */
	public int KW30000U1320updateSave(KW30000U1310VO kw30000u1310vo) { 
		return update("kw30000u1000.page1320updateSave", kw30000u1310vo); 
	}
	 
	
}
