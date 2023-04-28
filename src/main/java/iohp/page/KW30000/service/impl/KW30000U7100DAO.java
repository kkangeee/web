package iohp.page.KW30000.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.PaginationHndlr;
import egovframework.com.cmm.SearchHndlr;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import iohp.customer.service.CustomerVO;
import iohp.page.KW30000.service.KW30000U7100VO;

@Repository("KW30000U7100DAO")
public class KW30000U7100DAO extends EgovComAbstractDAO {
	
	/* 조회 */
	/*
	 * public List<KW30000U7100VO> KW30000U7100pageList(KW30000U7100VO
	 * kw30000u7100vo) { return selectList("kw30000u1000.page7100", kw30000u7100vo);
	 * }
	 */ 
	
	/* 조회 */
	public List<KW30000U7100VO> KW30000U7100selectList(SearchHndlr search) throws Exception {
		return selectList("kw30000u7000.page7100selectList", search);
	}
	
	//총 게시글 개수 확인
		public int getBoardListCnt(SearchHndlr search) throws Exception {
			return selectOne("kw30000u7000.getBoardListCnt7100", search);
		}
	
	/* 삭제 */
	public int KW30000U7100delete(KW30000U7100VO kw30000u7100vo) {
		return delete("kw30000u7000.page7100delete", kw30000u7100vo);
	}
	
	/* 추가 */
	public int KW30000U7100insertSave(KW30000U7100VO kw30000u7100vo) { 
		return insert("kw30000u7000.page7100insertSave", kw30000u7100vo); 
	}

	/* 수정 */
	public int KW30000U7100updateSave(KW30000U7100VO kw30000u7100vo) { 
		return update("kw30000u7000.page7100updateSave", kw30000u7100vo); 
	}
	 
	
}
